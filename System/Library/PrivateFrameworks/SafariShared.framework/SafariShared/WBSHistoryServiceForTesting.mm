@interface WBSHistoryServiceForTesting
- (WBSHistoryServiceForTesting)init;
- (id)connectWithClass:(Class)a3;
@end

@implementation WBSHistoryServiceForTesting

- (WBSHistoryServiceForTesting)init
{
  v7.receiver = self;
  v7.super_class = WBSHistoryServiceForTesting;
  v2 = [(WBSHistoryService *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    v5 = v2;
  }

  return v2;
}

- (id)connectWithClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [(NSXPCListener *)self->_listener endpoint];
  v6 = [v4 initWithListenerEndpoint:v5];

  return v6;
}

@end