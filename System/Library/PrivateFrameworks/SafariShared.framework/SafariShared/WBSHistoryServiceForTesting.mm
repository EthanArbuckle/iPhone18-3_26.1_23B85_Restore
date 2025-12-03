@interface WBSHistoryServiceForTesting
- (WBSHistoryServiceForTesting)init;
- (id)connectWithClass:(Class)class;
@end

@implementation WBSHistoryServiceForTesting

- (WBSHistoryServiceForTesting)init
{
  v7.receiver = self;
  v7.super_class = WBSHistoryServiceForTesting;
  v2 = [(WBSHistoryService *)&v7 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    v5 = v2;
  }

  return v2;
}

- (id)connectWithClass:(Class)class
{
  v4 = [class alloc];
  endpoint = [(NSXPCListener *)self->_listener endpoint];
  v6 = [v4 initWithListenerEndpoint:endpoint];

  return v6;
}

@end