@interface PTDoubleTestRecipe
+ (id)recipeWithTitle:(id)a3 prepareBlock:(id)a4 increaseAction:(id)a5 decreaseAction:(id)a6 cleanupBlock:(id)a7;
- (void)_handleEvent:(int64_t)a3;
- (void)invalidate;
@end

@implementation PTDoubleTestRecipe

+ (id)recipeWithTitle:(id)a3 prepareBlock:(id)a4 increaseAction:(id)a5 decreaseAction:(id)a6 cleanupBlock:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithTitle:v16 prepareBlock:v15 cleanupBlock:v12];

  [v17 setIncreaseAction:v14];
  [v17 setDecreaseAction:v13];

  return v17;
}

- (void)_handleEvent:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 56;
  }

  else
  {
    if (a3 != 1)
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