@interface STConcreteAskService
- (STAskServiceDelegate)delegate;
- (void)respondToAskForTimeRequestWithIdentifier:(id)identifier answer:(int64_t)answer completionHandler:(id)handler;
@end

@implementation STConcreteAskService

- (void)respondToAskForTimeRequestWithIdentifier:(id)identifier answer:(int64_t)answer completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  delegate = [(STConcreteAskService *)self delegate];
  [delegate respondToAskForTimeRequestWithIdentifier:identifierCopy answer:answer completionHandler:handlerCopy];
}

- (STAskServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end