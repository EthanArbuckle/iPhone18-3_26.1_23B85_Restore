@interface _MFNTLMAuthenticator
- (id)responseForServerData:(id)a3;
- (void)dealloc;
- (void)setAuthenticationState:(int)a3;
@end

@implementation _MFNTLMAuthenticator

- (void)dealloc
{
  if (self->_ntlmGeneratorRef)
  {
    NtlmGeneratorRelease();
  }

  v3.receiver = self;
  v3.super_class = _MFNTLMAuthenticator;
  [(MFSASLAuthenticator *)&v3 dealloc];
}

- (void)setAuthenticationState:(int)a3
{
  v9.receiver = self;
  v9.super_class = _MFNTLMAuthenticator;
  [(MFSASLAuthenticator *)&v9 setAuthenticationState:?];
  if (a3 == 1)
  {
    v5 = vm_imap_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      v6 = "start NTLM authentication";
LABEL_11:
      _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, v6, v8, 2u);
    }
  }

  else
  {
    if (self->_ntlmGeneratorRef)
    {
      NtlmGeneratorRelease();
      self->_ntlmGeneratorRef = 0;
    }

    self->_ntlmError = 0;
    v5 = vm_imap_log();
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (a3 == 4)
    {
      if (v7)
      {
        *v8 = 0;
        v6 = "NTLM authentication succeeded";
        goto LABEL_11;
      }
    }

    else if (v7)
    {
      *v8 = 0;
      v6 = "NTLM authentication failed";
      goto LABEL_11;
    }
  }
}

- (id)responseForServerData:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_ntlmError)
  {
    goto LABEL_25;
  }

  if (self->_ntlmGeneratorRef)
  {
    v6 = [(MFSASLAuthenticator *)self account];
    v7 = [v6 domain];
    v8 = [v6 username];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_288159858;
    }

    v10 = [v6 password];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &stru_288159858;
    }

    v12 = vm_imap_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = &stru_288159858;
      }

      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "NTLM - respond to server challenge; user = %@; domain = %@", buf, 0x16u);
    }

    ntlmGeneratorRef = self->_ntlmGeneratorRef;
    self->_ntlmError = NtlmCreateClientResponse();

    if (!self->_ntlmError)
    {
      goto LABEL_25;
    }

LABEL_22:
    v19 = vm_imap_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_MFNTLMAuthenticator *)&self->_ntlmError responseForServerData:v19];
    }

    goto LABEL_25;
  }

  if ([v4 length])
  {
    v15 = vm_imap_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "*** Unexpected server response during NTLM authentication", buf, 2u);
    }
  }

  v16 = NtlmGeneratorCreate();
  self->_ntlmError = v16;
  if (v16)
  {
    goto LABEL_22;
  }

  v17 = self->_ntlmGeneratorRef;
  ClientRequest = NtlmCreateClientRequest();
  self->_ntlmError = ClientRequest;
  if (ClientRequest)
  {
    goto LABEL_22;
  }

LABEL_25:

  v20 = *MEMORY[0x277D85DE8];

  return 0;
}

- (void)responseForServerData:(int *)a1 .cold.1(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "*** Error %ld occurred during NTLM authentication", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end