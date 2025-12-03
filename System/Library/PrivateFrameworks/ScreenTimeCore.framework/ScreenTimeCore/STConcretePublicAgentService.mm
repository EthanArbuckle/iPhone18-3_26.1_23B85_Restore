@interface STConcretePublicAgentService
- (STPublicAgentServiceDelegate)delegate;
- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)fetchAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)fetchHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler;
- (void)requestConfigurationWithReplyHandler:(id)handler;
@end

@implementation STConcretePublicAgentService

- (void)fetchHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  delegate = [(STConcretePublicAgentService *)self delegate];
  [delegate fetchHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)fetchAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  historyCopy = history;
  delegate = [(STConcretePublicAgentService *)self delegate];
  [delegate fetchAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteAllWebApplicationHistory:(id)history profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  historyCopy = history;
  delegate = [(STConcretePublicAgentService *)self delegate];
  [delegate deleteAllWebApplicationHistory:historyCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryDuringInterval:(id)interval webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  delegate = [(STConcretePublicAgentService *)self delegate];
  [delegate deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)deleteWebHistoryForURL:(id)l webApplication:(id)application profileIdentifier:(id)identifier clientBundleURLWrapper:(id)wrapper replyHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  delegate = [(STConcretePublicAgentService *)self delegate];
  [delegate deleteWebHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy clientBundleURLWrapper:wrapperCopy replyHandler:handlerCopy];
}

- (void)requestConfigurationWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(STConcretePublicAgentService *)self delegate];
  [delegate requestConfigurationWithReplyHandler:handlerCopy];
}

- (STPublicAgentServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end