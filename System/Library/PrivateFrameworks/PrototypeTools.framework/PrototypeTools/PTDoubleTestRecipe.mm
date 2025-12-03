@interface PTDoubleTestRecipe
+ (id)recipeWithTitle:(id)title prepareBlock:(id)block increaseAction:(id)action decreaseAction:(id)decreaseAction cleanupBlock:(id)cleanupBlock;
- (void)_handleEvent:(int64_t)event;
- (void)invalidate;
@end

@implementation PTDoubleTestRecipe

+ (id)recipeWithTitle:(id)title prepareBlock:(id)block increaseAction:(id)action decreaseAction:(id)decreaseAction cleanupBlock:(id)cleanupBlock
{
  cleanupBlockCopy = cleanupBlock;
  decreaseActionCopy = decreaseAction;
  actionCopy = action;
  blockCopy = block;
  titleCopy = title;
  v17 = [[self alloc] _initWithTitle:titleCopy prepareBlock:blockCopy cleanupBlock:cleanupBlockCopy];

  [v17 setIncreaseAction:actionCopy];
  [v17 setDecreaseAction:decreaseActionCopy];

  return v17;
}

- (void)_handleEvent:(int64_t)event
{
  if (event == 2)
  {
    v3 = 56;
  }

  else
  {
    if (event != 1)
    {
      return;
    }

    v3 = 48;
  }

  v4 = *(&self->super.super.isa + v3);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)invalidate
{
  increaseAction = self->_increaseAction;
  self->_increaseAction = 0;

  decreaseAction = self->_decreaseAction;
  self->_decreaseAction = 0;

  v5.receiver = self;
  v5.super_class = PTDoubleTestRecipe;
  [(PTTestRecipe *)&v5 invalidate];
}

@end