@interface SBHReusableViewControllerMap
- (SBHReusableViewControllerMap)init;
- (id)dequeueReusableViewController;
- (void)recycleViewController:(id)a3;
@end

@implementation SBHReusableViewControllerMap

- (SBHReusableViewControllerMap)init
{
  v6.receiver = self;
  v6.super_class = SBHReusableViewControllerMap;
  v2 = [(SBHReusableViewControllerMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    recycledViewControllers = v2->_recycledViewControllers;
    v2->_recycledViewControllers = v3;

    v2->_maximumRecycledViewControllerCount = 10;
  }

  return v2;
}

- (id)dequeueReusableViewController
{
  v3 = [(NSMutableSet *)self->_recycledViewControllers anyObject];
  if (v3)
  {
    [(NSMutableSet *)self->_recycledViewControllers removeObject:v3];
  }

  return v3;
}

- (void)recycleViewController:(id)a3
{
  v4 = a3;
  v5 = [(SBHReusableViewControllerMap *)self recycledViewControllerCount];
  if (v5 < [(SBHReusableViewControllerMap *)self maximumRecycledViewControllerCount])
  {
    v6 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SBHReusableViewControllerMap_recycleViewController___block_invoke;
    v8[3] = &unk_1E8088C90;
    v7 = v4;
    v9 = v7;
    [v6 performWithoutAnimation:v8];
    [v7 removeFromParentViewController];
    [(NSMutableSet *)self->_recycledViewControllers addObject:v7];
  }
}

@end