@interface PTTestRecipe
- (BOOL)_wantsEvent:(int64_t)event;
- (id)_initWithTitle:(id)title prepareBlock:(id)block cleanupBlock:(id)cleanupBlock;
- (void)_activate;
- (void)_deactivate;
- (void)_handleEvent:(int64_t)event;
- (void)invalidate;
@end

@implementation PTTestRecipe

- (id)_initWithTitle:(id)title prepareBlock:(id)block cleanupBlock:(id)cleanupBlock
{
  titleCopy = title;
  blockCopy = block;
  cleanupBlockCopy = cleanupBlock;
  v19.receiver = self;
  v19.super_class = PTTestRecipe;
  v11 = [(PTTestRecipe *)&v19 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [blockCopy copy];
    prepareBlock = v11->_prepareBlock;
    v11->_prepareBlock = v14;

    v16 = [cleanupBlockCopy copy];
    cleanupBlock = v11->_cleanupBlock;
    v11->_cleanupBlock = v16;
  }

  return v11;
}

- (void)_activate
{
  prepareBlock = self->_prepareBlock;
  if (prepareBlock)
  {
    prepareBlock[2]();
  }
}

- (void)_deactivate
{
  cleanupBlock = self->_cleanupBlock;
  if (cleanupBlock)
  {
    cleanupBlock[2]();
  }
}

- (void)invalidate
{
  prepareBlock = self->_prepareBlock;
  self->_prepareBlock = 0;

  cleanupBlock = self->_cleanupBlock;
  self->_cleanupBlock = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    invalidationHandler = self->_invalidationHandler;
  }

  self->_invalidationHandler = 0;
}

- (BOOL)_wantsEvent:(int64_t)event
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_handleEvent:(int64_t)event
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end