@interface PTSingleTestRecipe
+ (id)recipeWithTitle:(id)title prepareBlock:(id)block action:(id)action cleanupBlock:(id)cleanupBlock;
- (void)_handleEvent:(int64_t)event;
- (void)invalidate;
@end

@implementation PTSingleTestRecipe

+ (id)recipeWithTitle:(id)title prepareBlock:(id)block action:(id)action cleanupBlock:(id)cleanupBlock
{
  cleanupBlockCopy = cleanupBlock;
  actionCopy = action;
  blockCopy = block;
  titleCopy = title;
  v14 = [[self alloc] _initWithTitle:titleCopy prepareBlock:blockCopy cleanupBlock:cleanupBlockCopy];

  [v14 setAction:actionCopy];

  return v14;
}

- (void)_handleEvent:(int64_t)event
{
  if (event == 2)
  {
    action = self->_action;
    if (action)
    {
      action[2]();
    }
  }
}

- (void)invalidate
{
  action = self->_action;
  self->_action = 0;

  v4.receiver = self;
  v4.super_class = PTSingleTestRecipe;
  [(PTTestRecipe *)&v4 invalidate];
}

@end