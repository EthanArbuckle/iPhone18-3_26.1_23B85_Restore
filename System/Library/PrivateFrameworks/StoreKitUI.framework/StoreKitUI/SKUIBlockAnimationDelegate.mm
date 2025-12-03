@interface SKUIBlockAnimationDelegate
- (SKUIBlockAnimationDelegate)initWithCompletionHandler:(id)handler;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation SKUIBlockAnimationDelegate

- (SKUIBlockAnimationDelegate)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBlockAnimationDelegate initWithCompletionHandler:];
  }

  v9.receiver = self;
  v9.super_class = SKUIBlockAnimationDelegate;
  v5 = [(SKUIBlockAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  block = self->_block;
  if (block)
  {
    block[2](block, stop, finished);
    v6 = self->_block;
    self->_block = 0;
  }
}

- (void)initWithCompletionHandler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBlockAnimationDelegate initWithCompletionHandler:]";
}

@end