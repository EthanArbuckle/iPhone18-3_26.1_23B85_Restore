@interface SMBPiston
- (SMBPiston)init;
- (SMBSocket)sock;
- (id)getShare:(unsigned int)share;
- (int)getPeerAddress:(sockaddr_storage *)address withLength:(unsigned int *)length;
- (void)dealloc;
- (void)disconnect;
- (void)init;
- (void)logoff:(smb_login_out *)logoff callBack:(id)back;
- (void)setEventHandler:(id)handler;
- (void)setOption:(const char *)option toValue:(unsigned int)value;
@end

@implementation SMBPiston

- (SMBPiston)init
{
  v8.tv_sec = 0;
  v8.tv_nsec = 0;
  v7.receiver = self;
  v7.super_class = SMBPiston;
  v2 = [(SMBPiston *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if (pthread_mutex_init(&v2->state_mutex, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v3->free_state_mutex = 1;
      if (pthread_mutex_init(&v3->session.session_credits_lock, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v3->free_credit_mutex = 1;
        if (pthread_cond_init(&v3->session.session_credits_wait_cond, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SMBPiston init];
          }

          goto LABEL_21;
        }

        v3->free_credit_cond = 1;
        if (!pthread_mutex_init(&v3->session.session_lock, 0))
        {
          v3->free_session_mutex = 1;
          v3->session.option_flags = 251662338;
          *&v3->session.gss_context = 0u;
          v3->session.gss_in_token = 0u;
          v3->session.gss_out_token = 0u;
          v3->session.smb3_encrypt_ciper = 1;
          v3->session.smb3_signing_algorithm = 1;
          v8 = xmmword_2642C04F0;
          if (gethostuuid(v3->session.client_guid, &v8))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SMBPiston init];
            }

            *v3->session.client_guid = random();
            *&v3->session.client_guid[4] = random();
            *&v3->session.client_guid[8] = random();
            *&v3->session.client_guid[12] = random();
          }

          v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
          shareList = v3->_shareList;
          v3->_shareList = v4;

          if (!pthread_mutex_init(&v3->share_list_mutex, 0))
          {
            v3->free_share_list_mutex = 1;
            return v3;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_20:
          [SMBPiston init];
        }
      }
    }

LABEL_21:

    return 0;
  }

  return v3;
}

- (void)dealloc
{
  [(SMBPiston *)self disconnect];
  v3.receiver = self;
  v3.super_class = SMBPiston;
  [(SMBPiston *)&v3 dealloc];
}

- (void)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_sock);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_sock);
    [v4 closeSocket];

    objc_storeWeak(&self->_sock, 0);
  }

  [(SMBPiston *)self share_list_lock];
  if ([(NSMutableDictionary *)self->_shareList count])
  {
    [(NSMutableDictionary *)self->_shareList removeAllObjects];
  }

  [(SMBPiston *)self share_list_unlock];
  session_model_infop = self->session.session_model_infop;
  if (session_model_infop)
  {
    free(session_model_infop);
  }

  self->session.session_model_infop = 0;
  piston_gss_reset(&self->session);
  smb_reset_sig(&self->session);
  if (self->free_state_mutex)
  {
    pthread_mutex_destroy(&self->state_mutex);
    self->free_state_mutex = 0;
  }

  if (self->free_credit_mutex)
  {
    pthread_mutex_destroy(&self->session.session_credits_lock);
    self->free_credit_mutex = 0;
  }

  if (self->free_credit_cond)
  {
    pthread_cond_destroy(&self->session.session_credits_wait_cond);
    self->free_credit_cond = 0;
  }

  if (self->free_session_mutex)
  {
    pthread_mutex_destroy(&self->session.session_lock);
    self->free_session_mutex = 0;
  }

  if (self->free_share_list_mutex)
  {
    pthread_mutex_destroy(&self->share_list_mutex);
    self->free_share_list_mutex = 0;
  }
}

- (void)logoff:(smb_login_out *)logoff callBack:(id)back
{
  piston_logoff(self, logoff, back);
  WeakRetained = objc_loadWeakRetained(&self->_sock);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_sock);
    [v6 closeSocket];

    objc_storeWeak(&self->_sock, 0);
  }
}

- (int)getPeerAddress:(sockaddr_storage *)address withLength:(unsigned int *)length
{
  if (!address || !length)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  v5 = *length;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  bzero(address, v5);
  sock = [(SMBPiston *)self sock];

  if (!sock)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  sock2 = [(SMBPiston *)self sock];
  getServerAddress = [sock2 getServerAddress];

  if (!getServerAddress)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  v11 = *getServerAddress;
  if (*length >= v11)
  {
    *length = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    v11 = *length;
  }

  memcpy(address, getServerAddress, v11);
  if (*length >= 5)
  {
    sock3 = [(SMBPiston *)self sock];
    *address->__ss_pad1 = [sock3 port];
  }

  return 0;
}

- (id)getShare:(unsigned int)share
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  [(SMBPiston *)self share_list_lock];
  v5 = [(NSMutableDictionary *)self->_shareList objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    nextObject = 0;
    keyEnumerator = 0;
  }

  else
  {
    if ([(NSMutableDictionary *)self->_shareList count]== 1)
    {
      keyEnumerator = [(NSMutableDictionary *)self->_shareList keyEnumerator];
      nextObject = 0;
      while (1)
      {
        v9 = nextObject;
        nextObject = [keyEnumerator nextObject];

        if (!nextObject)
        {
          break;
        }

        v10 = [(NSMutableDictionary *)self->_shareList objectForKey:nextObject];
        if (v10)
        {
          v6 = v10;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SMBPiston getShare:v6];
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      keyEnumerator = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getShare:];
    }

    nextObject = 0;
    v6 = 0;
  }

LABEL_13:
  [(SMBPiston *)self share_list_unlock];

  return v6;
}

- (void)setEventHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_sock);
  [WeakRetained setEventHandler:handlerCopy];
}

- (void)setOption:(const char *)option toValue:(unsigned int)value
{
  v7 = strnlen(option, 0xFFuLL);
  if (v7 <= 12)
  {
    if (v7 != 7)
    {
      if (v7 != 9)
      {
        if (v7 == 11 && !strcmp(option, "debug_level"))
        {
          piston_log_level = value;
        }

        return;
      }

      if (strcmp(option, "ntlm_only"))
      {
        return;
      }

      v8 = self->session.option_flags | 0x100000;
LABEL_25:
      self->session.option_flags = v8;
      return;
    }

    v9 = "minauth";
LABEL_17:
    if (strcmp(option, v9))
    {
      return;
    }

    v8 = self->session.option_flags | 0x200000;
    goto LABEL_25;
  }

  if (v7 == 13)
  {
    v9 = "kerberos_only";
    goto LABEL_17;
  }

  if (v7 == 16)
  {
    if (!strcmp(option, "signing_required"))
    {
      v8 = self->session.option_flags | 0x100;
    }

    else
    {
      if (strcmp(option, "validate_neg_off"))
      {
        return;
      }

      v8 = self->session.option_flags | 8;
    }

    goto LABEL_25;
  }

  if (v7 == 17 && !strcmp(option, "protocol_vers_map"))
  {
    if ((value & 2) != 0)
    {
      self->session.option_flags |= 2uLL;
    }

    if ((value & 0x1000) != 0)
    {
      v8 = self->session.option_flags | 0x1000;
      goto LABEL_25;
    }
  }
}

- (SMBSocket)sock
{
  WeakRetained = objc_loadWeakRetained(&self->_sock);

  return WeakRetained;
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getPeerAddress:withLength:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getPeerAddress:withLength:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getPeerAddress:withLength:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getPeerAddress:withLength:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getPeerAddress:withLength:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getShare:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sharename];
  [v1 cStringUsingEncoding:4];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getShare:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end