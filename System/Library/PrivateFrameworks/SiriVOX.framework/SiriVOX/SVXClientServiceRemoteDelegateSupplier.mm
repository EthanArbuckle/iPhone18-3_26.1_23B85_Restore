@interface SVXClientServiceRemoteDelegateSupplier
- (id)remoteServiceDelegateWithConnection:(id)a3 errorHandler:(id)a4;
@end

@implementation SVXClientServiceRemoteDelegateSupplier

- (id)remoteServiceDelegateWithConnection:(id)a3 errorHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 remoteObjectProxyWithErrorHandler:v7];
    goto LABEL_7;
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[SVXClientServiceRemoteDelegateSupplier remoteServiceDelegateWithConnection:errorHandler:]";
    v15 = 2112;
    v16 = self;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s %@ is already invalidated.", &v13, 0x16u);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    v7[2](v7, v10);
  }

LABEL_6:
  v8 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

@end