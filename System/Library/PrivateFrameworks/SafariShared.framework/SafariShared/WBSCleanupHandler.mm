@interface WBSCleanupHandler
- (WBSCleanupHandler)initWithBlock:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WBSCleanupHandler

- (WBSCleanupHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSCleanupHandler;
  v5 = [(WBSCleanupHandler *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

- (void)invalidate
{
  block = self->_block;
  self->_block = 0;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
  }

  v4.receiver = self;
  v4.super_class = WBSCleanupHandler;
  [(WBSCleanupHandler *)&v4 dealloc];
}

@end