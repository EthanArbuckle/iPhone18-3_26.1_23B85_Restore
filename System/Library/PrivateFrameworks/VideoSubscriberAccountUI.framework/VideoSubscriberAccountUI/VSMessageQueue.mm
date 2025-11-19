@interface VSMessageQueue
- (VSMessageQueue)init;
- (VSMessageQueueDelegate)delegate;
- (id)removeAllMessages;
- (void)addMessage:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation VSMessageQueue

- (VSMessageQueue)init
{
  v6.receiver = self;
  v6.super_class = VSMessageQueue;
  v2 = [(VSMessageQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    messages = v2->_messages;
    v2->_messages = v3;
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will notify new delegate of messages.", v6, 2u);
  }

  [v4 didAddMessagesToMessageQueue:self];
}

- (void)addMessage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will add message %@ to queue %@", &v9, 0x16u);
  }

  v6 = [(VSMessageQueue *)self messages];
  [v6 addObject:v4];

  v7 = [(VSMessageQueue *)self delegate];
  [v7 didAddMessagesToMessageQueue:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)removeAllMessages
{
  v2 = [(VSMessageQueue *)self messages];
  v3 = [v2 copy];
  [v2 removeAllObjects];

  return v3;
}

- (VSMessageQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end