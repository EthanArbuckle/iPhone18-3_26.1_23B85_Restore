@interface _UIBanner
- (_UIBannerManager)manager;
- (void)addDismissalAnimations:(id)a3;
- (void)addDismissalCompletionHandler:(id)a3;
- (void)addTapHandler:(id)a3;
- (void)dismiss;
- (void)handleLongPressGesture:(id)a3;
- (void)present;
@end

@implementation _UIBanner

- (void)present
{
  if ((self->_state - 1) >= 2)
  {
    v10[9] = v2;
    v10[10] = v3;
    if (!self->_view)
    {
      v5 = objc_alloc_init(_UIBannerView);
      [(_UIBanner *)self setView:v5];

      v6 = [(_UIBanner *)self content];
      [(_UIBannerView *)self->_view setContent:v6];

      if ([(NSMutableArray *)self->_tapHandlers count])
      {
        v7 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_handleLongPressGesture_];
        [(UILongPressGestureRecognizer *)v7 setMinimumPressDuration:0.0];
        [(UIView *)self->_view addGestureRecognizer:v7];
      }
    }

    self->_state = 1;
    WeakRetained = objc_loadWeakRetained(&self->_manager);
    v9 = [WeakRetained containerView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __20___UIBanner_present__block_invoke;
    v10[3] = &unk_1E70F5AC0;
    v10[4] = self;
    [v9 _presentBanner:self completion:v10];
  }
}

- (void)handleLongPressGesture:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 state];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if ([(_UIBannerView *)self->_view highlighted])
      {
        [(_UIBannerView *)self->_view setHighlighted:0];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v13 = self->_tapHandlers;
        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v19;
          do
          {
            v17 = 0;
            do
            {
              if (*v19 != v16)
              {
                objc_enumerationMutation(v13);
              }

              (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
              ++v17;
            }

            while (v15 != v17);
            v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v15);
        }

        [(_UIBanner *)self dismiss];
      }
    }

    else if (v5 == 4)
    {
      [(_UIBannerView *)self->_view setHighlighted:0];
    }
  }

  else
  {
    if (v5 == 1)
    {
      view = self->_view;
      v10 = 1;
      v12 = 1;
      goto LABEL_9;
    }

    if (v5 == 2)
    {
      [v4 locationInView:self->_view];
      v7 = v6;
      v9 = v8;
      [(UIView *)self->_view bounds];
      v24.x = v7;
      v24.y = v9;
      v10 = CGRectContainsPoint(v25, v24);
      view = self->_view;
      v12 = 0;
LABEL_9:
      [(_UIBannerView *)view setHighlighted:v10 initialPress:v12];
    }
  }
}

- (void)dismiss
{
  state = self->_state;
  if (state)
  {
    v5 = state == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v10[9] = v2;
    v10[10] = v3;
    self->_state = 3;
    WeakRetained = objc_loadWeakRetained(&self->_manager);
    v8 = [WeakRetained containerView];
    dismissalAnimations = self->_dismissalAnimations;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __20___UIBanner_dismiss__block_invoke;
    v10[3] = &unk_1E70F5AC0;
    v10[4] = self;
    [v8 _dismissBanner:self alongsideAnimations:dismissalAnimations completion:v10];
  }
}

- (void)addDismissalAnimations:(id)a3
{
  v4 = a3;
  dismissalAnimations = self->_dismissalAnimations;
  aBlock = v4;
  if (!dismissalAnimations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dismissalAnimations;
    self->_dismissalAnimations = v6;

    v4 = aBlock;
    dismissalAnimations = self->_dismissalAnimations;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)dismissalAnimations addObject:v8];
}

- (void)addDismissalCompletionHandler:(id)a3
{
  v4 = a3;
  dismissalCompletionHandlers = self->_dismissalCompletionHandlers;
  aBlock = v4;
  if (!dismissalCompletionHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dismissalCompletionHandlers;
    self->_dismissalCompletionHandlers = v6;

    v4 = aBlock;
    dismissalCompletionHandlers = self->_dismissalCompletionHandlers;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)dismissalCompletionHandlers addObject:v8];
}

- (void)addTapHandler:(id)a3
{
  v4 = a3;
  tapHandlers = self->_tapHandlers;
  aBlock = v4;
  if (!tapHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_tapHandlers;
    self->_tapHandlers = v6;

    v4 = aBlock;
    tapHandlers = self->_tapHandlers;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)tapHandlers addObject:v8];
}

- (_UIBannerManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end