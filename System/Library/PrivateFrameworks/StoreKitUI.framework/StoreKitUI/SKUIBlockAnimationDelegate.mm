@interface SKUIBlockAnimationDelegate
- (SKUIBlockAnimationDelegate)initWithCompletionHandler:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation SKUIBlockAnimationDelegate

- (SKUIBlockAnimationDelegate)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBlockAnimationDelegate initWithCompletionHandler:];
  }

  v9.receiver = self;
  v9.super_class = SKUIBlockAnimationDelegate;
  v5 = [(SKUIBlockAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  block = self->_block;
  if (block)
  {
    block[2](block, a3, a4);
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