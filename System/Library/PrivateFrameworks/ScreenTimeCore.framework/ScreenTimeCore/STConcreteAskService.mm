@interface STConcreteAskService
- (STAskServiceDelegate)delegate;
- (void)respondToAskForTimeRequestWithIdentifier:(id)a3 answer:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation STConcreteAskService

- (void)respondToAskForTimeRequestWithIdentifier:(id)a3 answer:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(STConcreteAskService *)self delegate];
  [v10 respondToAskForTimeRequestWithIdentifier:v9 answer:a4 completionHandler:v8];
}

- (STAskServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end