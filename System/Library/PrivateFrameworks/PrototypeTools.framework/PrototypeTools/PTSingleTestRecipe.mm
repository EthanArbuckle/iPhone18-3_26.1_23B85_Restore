@interface PTSingleTestRecipe
+ (id)recipeWithTitle:(id)a3 prepareBlock:(id)a4 action:(id)a5 cleanupBlock:(id)a6;
- (void)_handleEvent:(int64_t)a3;
- (void)invalidate;
@end

@implementation PTSingleTestRecipe

+ (id)recipeWithTitle:(id)a3 prepareBlock:(id)a4 action:(id)a5 cleanupBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithTitle:v13 prepareBlock:v12 cleanupBlock:v10];

  [v14 setAction:v11];

  return v14;
}

- (void)_handleEvent:(int64_t)a3
{
  if (a3 == 2)
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