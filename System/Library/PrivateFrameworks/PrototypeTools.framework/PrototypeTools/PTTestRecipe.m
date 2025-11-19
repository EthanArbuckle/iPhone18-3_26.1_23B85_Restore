@interface PTTestRecipe
- (BOOL)_wantsEvent:(int64_t)a3;
- (id)_initWithTitle:(id)a3 prepareBlock:(id)a4 cleanupBlock:(id)a5;
- (void)_activate;
- (void)_deactivate;
- (void)_handleEvent:(int64_t)a3;
- (void)invalidate;
@end

@implementation PTTestRecipe

- (id)_initWithTitle:(id)a3 prepareBlock:(id)a4 cleanupBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PTTestRecipe;
  v11 = [(PTTestRecipe *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    prepareBlock = v11->_prepareBlock;
    v11->_prepareBlock = v14;

    v16 = [v10 copy];
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

- (BOOL)_wantsEvent:(int64_t)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_handleEvent:(int64_t)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end