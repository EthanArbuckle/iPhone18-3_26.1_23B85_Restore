@interface _UIStoryboardUnwindChain
- (UIViewController)modalAncestorContainingSourceViewController;
- (id)debugDescription;
- (id)initFromSourceViewController:(id)controller toDestinationViewController:(id)viewController;
- (void)enumerateViewControllersFromModalAncestorUpToButNotIncludingDestination:(id)destination;
@end

@implementation _UIStoryboardUnwindChain

- (id)initFromSourceViewController:(id)controller toDestinationViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v30.receiver = self;
  v30.super_class = _UIStoryboardUnwindChain;
  v9 = [(_UIStoryboardUnwindChain *)&v30 init];
  if (v9)
  {
    array = [MEMORY[0x1E695DF70] array];
    viewControllers = v9->_viewControllers;
    v9->_viewControllers = array;

    v12 = controllerCopy;
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      do
      {
        [(NSMutableArray *)v9->_viewControllers addObject:v14];
        if (v14 == viewControllerCopy)
        {
          break;
        }

        v15 = _UIInternalPreference_ForceIOSDeviceInsets_block_invoke(v14);

        v14 = v15;
      }

      while (v15);
    }

    if ([(NSMutableArray *)v9->_viewControllers count]<= 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:83 description:{@"Could not unwind from %@ to %@ because the parent view controller of %@ could not be found.", v13, viewControllerCopy, v13}];
    }

    v16 = [(NSMutableArray *)v9->_viewControllers count];
    v9->_commonAncestorIdx = 0x7FFFFFFFFFFFFFFFLL;
    v17 = viewControllerCopy;
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      while (1)
      {
        v20 = [(NSMutableArray *)v9->_viewControllers indexOfObject:v19];
        v9->_commonAncestorIdx = v20;
        v21 = v9->_viewControllers;
        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        [(NSMutableArray *)v21 insertObject:v19 atIndex:v16];
        v22 = _UIInternalPreference_ForceIOSDeviceInsets_block_invoke(v19);

        v19 = v22;
        if (!v22)
        {
          goto LABEL_15;
        }
      }

      [(NSMutableArray *)v21 removeObjectsInRange:v20 + 1, v16 + ~v20];
    }

LABEL_15:
    commonAncestorIdx = v9->_commonAncestorIdx;
    if (commonAncestorIdx == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v9 file:@"UIStoryboardUnwindSegueTemplate.m" lineNumber:120 description:{@"Could not unwind from %@ to %@ because a common ancestor could not be found. (Note that it is not supported to unwind from a view controller to one of its descendants.)", v13, v18}];

      commonAncestorIdx = v9->_commonAncestorIdx;
    }

    v9->_modalAncestorContainingSourceIdx = 0x7FFFFFFFFFFFFFFFLL;
    if (commonAncestorIdx)
    {
      while (1)
      {
        v24 = [(NSMutableArray *)v9->_viewControllers objectAtIndexedSubscript:commonAncestorIdx];
        childModalViewController = [v24 childModalViewController];

        if (childModalViewController)
        {
          break;
        }

        if (!--commonAncestorIdx)
        {
          goto LABEL_22;
        }
      }

      v9->_modalAncestorContainingSourceIdx = commonAncestorIdx;
    }

LABEL_22:
    v26 = v9;
  }

  return v9;
}

- (UIViewController)modalAncestorContainingSourceViewController
{
  if (self->_modalAncestorContainingSourceIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_viewControllers objectAtIndexedSubscript:v2];
  }

  return v4;
}

- (void)enumerateViewControllersFromModalAncestorUpToButNotIncludingDestination:(id)destination
{
  destinationCopy = destination;
  if (self->_modalAncestorContainingSourceIdx == 0x7FFFFFFFFFFFFFFFLL)
  {
    modalAncestorContainingSourceIdx = 0;
  }

  else
  {
    modalAncestorContainingSourceIdx = self->_modalAncestorContainingSourceIdx;
  }

  v5 = [(NSMutableArray *)self->_viewControllers count];
  if (modalAncestorContainingSourceIdx < v5 - 1)
  {
    v6 = v5;
    v7 = modalAncestorContainingSourceIdx + 1;
    do
    {
      v8 = [(NSMutableArray *)self->_viewControllers objectAtIndexedSubscript:v7 - 1];
      v9 = [(NSMutableArray *)self->_viewControllers objectAtIndexedSubscript:v7];
      destinationCopy[2](destinationCopy, v8, v9);

      ++v7;
    }

    while (v6 != v7);
  }
}

- (id)debugDescription
{
  v3 = [(NSMutableArray *)self->_viewControllers count];
  if ([(NSMutableArray *)self->_viewControllers count]== 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p (invalid chain)>", objc_opt_class(), self];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_viewControllers objectAtIndexedSubscript:0];
    v6 = MEMORY[0x1E696AD60];
    v7 = objc_opt_class();
    v20 = v5;
    v4 = [v6 stringWithFormat:@"<%@:%p %@:%p", v7, self, objc_opt_class(), v5];
    if (v3 >= 2)
    {
      for (i = 1; i != v3; ++i)
      {
        v9 = [(NSMutableArray *)self->_viewControllers objectAtIndexedSubscript:i - 1];
        v10 = [(NSMutableArray *)self->_viewControllers objectAtIndexedSubscript:i];
        parentModalViewController = [v10 parentModalViewController];

        if (v9 == parentModalViewController)
        {
          v15 = @" --(presents)--> ";
        }

        else
        {
          childModalViewController = [v10 childModalViewController];

          if (v9 == childModalViewController)
          {
            v15 = @" --(presented by)--> ";
          }

          else
          {
            parentViewController = [v10 parentViewController];

            if (v9 == parentViewController)
            {
              v15 = @" --(parent of)--> ";
            }

            else
            {
              parentViewController2 = [v9 parentViewController];

              if (parentViewController2 == v10)
              {
                v15 = @" --(child of)--> ";
              }

              else
              {
                v15 = @" --(unknown relation!)--> ";
              }
            }
          }
        }

        [v4 appendString:v15];
        objc_msgSend(v4, "appendFormat:", @" (%@:%p"), objc_opt_class(), v10;
        v24[0] = 0;
        v24[1] = v24;
        v24[2] = 0x2020000000;
        v25 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __44___UIStoryboardUnwindChain_debugDescription__block_invoke;
        aBlock[3] = &unk_1E71228D8;
        v23 = v24;
        v16 = v4;
        v22 = v16;
        v17 = _Block_copy(aBlock);
        v18 = v17;
        if (i == self->_commonAncestorIdx)
        {
          (*(v17 + 2))(v17, @"common ancestor");
        }

        if (i == self->_modalAncestorContainingSourceIdx)
        {
          (v18)[2](v18, @"modal ancestor of source");
        }

        [v16 appendString:@""]);

        _Block_object_dispose(v24, 8);
      }
    }

    [v4 appendString:@">"];
  }

  return v4;
}

@end