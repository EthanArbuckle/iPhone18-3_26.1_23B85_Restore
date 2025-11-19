@interface SMBPiston
- (SMBPiston)init;
- (SMBSocket)sock;
- (id)getShare:(unsigned int)a3;
- (int)getPeerAddress:(sockaddr_storage *)a3 withLength:(unsigned int *)a4;
- (void)dealloc;
- (void)disconnect;
- (void)init;
- (void)logoff:(smb_login_out *)a3 callBack:(id)a4;
- (void)setEventHandler:(id)a3;
- (void)setOption:(const char *)a3 toValue:(unsigned int)a4;
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

- (void)logoff:(smb_login_out *)a3 callBack:(id)a4
{
  piston_logoff(self, a3, a4);
  WeakRetained = objc_loadWeakRetained(&self->_sock);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_sock);
    [v6 closeSocket];

    objc_storeWeak(&self->_sock, 0);
  }
}

- (int)getPeerAddress:(sockaddr_storage *)a3 withLength:(unsigned int *)a4
{
  if (!a3 || !a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  v5 = *a4;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  bzero(a3, v5);
  v8 = [(SMBPiston *)self sock];

  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  v9 = [(SMBPiston *)self sock];
  v10 = [v9 getServerAddress];

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    return 22;
  }

  v11 = *v10;
  if (*a4 >= v11)
  {
    *a4 = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getPeerAddress:withLength:];
    }

    v11 = *a4;
  }

  memcpy(a3, v10, v11);
  if (*a4 >= 5)
  {
    v13 = [(SMBPiston *)self sock];
    *a3->__ss_pad1 = [v13 port];
  }

  return 0;
}

- (id)getShare:(unsigned int)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  [(SMBPiston *)self share_list_lock];
  v5 = [(NSMutableDictionary *)self->_shareList objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    if ([(NSMutableDictionary *)self->_shareList count]== 1)
    {
      v8 = [(NSMutableDictionary *)self->_shareList keyEnumerator];
      v7 = 0;
      while (1)
      {
        v9 = v7;
        v7 = [v8 nextObject];

        if (!v7)
        {
          break;
        }

        v10 = [(NSMutableDictionary *)self->_shareList objectForKey:v7];
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
      v8 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBPiston getShare:];
    }

    v7 = 0;
    v6 = 0;
  }

LABEL_13:
  [(SMBPiston *)self share_list_unlock];

  return v6;
}

- (void)setEventHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sock);
  [WeakRetained setEventHandler:v4];
}

- (void)setOption:(const char *)a3 toValue:(unsigned int)a4
{
  v7 = strnlen(a3, 0xFFuLL);
  if (v7 <= 12)
  {
    if (v7 != 7)
    {
      if (v7 != 9)
      {
        if (v7 == 11 && !strcmp(a3, "debug_level"))
        {
          piston_log_level = a4;
        }

        return;
      }

      if (strcmp(a3, "ntlm_only"))
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
    if (strcmp(a3, v9))
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
    if (!strcmp(a3, "signing_required"))
    {
      v8 = self->session.option_flags | 0x100;
    }

    else
    {
      if (strcmp(a3, "validate_neg_off"))
      {
        return;
      }

      v8 = self->session.option_flags | 8;
    }

    goto LABEL_25;
  }

  if (v7 == 17 && !strcmp(a3, "protocol_vers_map"))
  {
    if ((a4 & 2) != 0)
    {
      self->session.option_flags |= 2uLL;
    }

    if ((a4 & 0x1000) != 0)
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