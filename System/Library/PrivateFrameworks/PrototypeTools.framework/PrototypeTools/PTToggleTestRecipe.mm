@interface PTToggleTestRecipe
+ (id)recipeWithTitle:(id)a3 prepareBlock:(id)a4 toggleAction:(id)a5 cleanupBlock:(id)a6;
- (void)_activate;
- (void)_deactivate;
- (void)_handleEvent:(int64_t)a3;
- (void)invalidate;
@end

@implementation PTToggleTestRecipe

+ (id)recipeWithTitle:(id)a3 prepareBlock:(id)a4 toggleAction:(id)a5 cleanupBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithTitle:v13 prepareBlock:v12 cleanupBlock:v10];

  [v14 setToggleAction:v11];

  return v14;
}

- (void)_activate
{
  self->_on = 0;
  v2.receiver = self;
  v2.super_class = PTToggleTestRecipe;
  [(PTTestRecipe *)&v2 _activate];
}

- (void)_deactivate
{
  self->_on = 0;
  v2.receiver = self;
  v2.super_class = PTToggleTestRecipe;
  [(PTTestRecipe *)&v2 _deactivate];
}

- (void)_handleEvent:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = !self->_on;
    self->_on = v3;
    toggleAction = self->_toggleAction;
    if (toggleAction)
    {
      (toggleAction)[2](toggleAction, v3);
    }
  }
}

- (void)invalidate
{
  toggleAction = self->_toggleAction;
  self->_toggleAction = 0;

  v4.receiver = self;
  v4.super_class = PTToggleTestRecipe;
  [(PTTestRecipe *)&v4 invalidate];
}

@end