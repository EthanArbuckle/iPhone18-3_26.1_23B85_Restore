@interface PTToggleTestRecipe
+ (id)recipeWithTitle:(id)title prepareBlock:(id)block toggleAction:(id)action cleanupBlock:(id)cleanupBlock;
- (void)_activate;
- (void)_deactivate;
- (void)_handleEvent:(int64_t)event;
- (void)invalidate;
@end

@implementation PTToggleTestRecipe

+ (id)recipeWithTitle:(id)title prepareBlock:(id)block toggleAction:(id)action cleanupBlock:(id)cleanupBlock
{
  cleanupBlockCopy = cleanupBlock;
  actionCopy = action;
  blockCopy = block;
  titleCopy = title;
  v14 = [[self alloc] _initWithTitle:titleCopy prepareBlock:blockCopy cleanupBlock:cleanupBlockCopy];

  [v14 setToggleAction:actionCopy];

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

- (void)_handleEvent:(int64_t)event
{
  if (event == 2)
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