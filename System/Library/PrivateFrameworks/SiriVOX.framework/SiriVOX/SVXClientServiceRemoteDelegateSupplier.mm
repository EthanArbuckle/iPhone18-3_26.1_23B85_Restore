@interface SVXClientServiceRemoteDelegateSupplier
- (id)remoteServiceDelegateWithConnection:(id)connection errorHandler:(id)handler;
@end

@implementation SVXClientServiceRemoteDelegateSupplier

- (id)remoteServiceDelegateWithConnection:(id)connection errorHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  handlerCopy = handler;
  if (connectionCopy)
  {
    v8 = [connectionCopy remoteObjectProxyWithErrorHandler:handlerCopy];
    goto LABEL_7;
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[SVXClientServiceRemoteDelegateSupplier remoteServiceDelegateWithConnection:errorHandler:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_error_impl(&dword_2695B9000, v9, OS_LOG_TYPE_ERROR, "%s %@ is already invalidated.", &v13, 0x16u);
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (handlerCopy)
  {
LABEL_5:
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriVOXErrorDomain" code:6 userInfo:0];
    handlerCopy[2](handlerCopy, v10);
  }

LABEL_6:
  v8 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

@end