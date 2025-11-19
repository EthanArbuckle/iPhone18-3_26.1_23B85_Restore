@interface STConcretePublicAgentService
- (STPublicAgentServiceDelegate)delegate;
- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6;
- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)fetchAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6;
- (void)fetchHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7;
- (void)requestConfigurationWithReplyHandler:(id)a3;
@end

@implementation STConcretePublicAgentService

- (void)fetchHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(STConcretePublicAgentService *)self delegate];
  [v17 fetchHistoryDuringInterval:v16 webApplication:v15 profileIdentifier:v14 clientBundleURLWrapper:v13 replyHandler:v12];
}

- (void)fetchAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePublicAgentService *)self delegate];
  [v14 fetchAllWebApplicationHistory:v13 profileIdentifier:v12 clientBundleURLWrapper:v11 replyHandler:v10];
}

- (void)deleteAllWebApplicationHistory:(id)a3 profileIdentifier:(id)a4 clientBundleURLWrapper:(id)a5 replyHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(STConcretePublicAgentService *)self delegate];
  [v14 deleteAllWebApplicationHistory:v13 profileIdentifier:v12 clientBundleURLWrapper:v11 replyHandler:v10];
}

- (void)deleteWebHistoryDuringInterval:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(STConcretePublicAgentService *)self delegate];
  [v17 deleteWebHistoryDuringInterval:v16 webApplication:v15 profileIdentifier:v14 clientBundleURLWrapper:v13 replyHandler:v12];
}

- (void)deleteWebHistoryForURL:(id)a3 webApplication:(id)a4 profileIdentifier:(id)a5 clientBundleURLWrapper:(id)a6 replyHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(STConcretePublicAgentService *)self delegate];
  [v17 deleteWebHistoryForURL:v16 webApplication:v15 profileIdentifier:v14 clientBundleURLWrapper:v13 replyHandler:v12];
}

- (void)requestConfigurationWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = [(STConcretePublicAgentService *)self delegate];
  [v5 requestConfigurationWithReplyHandler:v4];
}

- (STPublicAgentServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end