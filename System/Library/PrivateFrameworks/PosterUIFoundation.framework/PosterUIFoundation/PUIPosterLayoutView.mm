@interface PUIPosterLayoutView
- (PUIPosterLayoutView)initWithFrame:(CGRect)frame;
- (id)_dequeueImageView;
- (id)containerViews;
- (void)_recycleView:(id)view;
- (void)layoutSubviews;
- (void)resetAllViews;
- (void)setBackdropView:(id)view;
- (void)setBackgroundView:(id)view;
- (void)setCompositeView:(id)view;
- (void)setFloatingUnderView:(id)view;
- (void)setFloatingView:(id)view;
- (void)setForegroundView:(id)view;
- (void)setModalView:(id)view;
- (void)setTimeView:(id)view;
- (void)updateViewWithBlock:(id)block animated:(unint64_t)animated;
@end

@implementation PUIPosterLayoutView

- (PUIPosterLayoutView)initWithFrame:(CGRect)frame
{
  v46 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = PUIPosterLayoutView;
  v3 = [(PUIPosterLayoutView *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUIPosterLayoutView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_opt_new();
    levelToViewMap = v4->_levelToViewMap;
    v4->_levelToViewMap = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    backdropContainerView = v4->_backdropContainerView;
    v4->_backdropContainerView = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    backgroundContainerView = v4->_backgroundContainerView;
    v4->_backgroundContainerView = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    foregroundContainerView = v4->_foregroundContainerView;
    v4->_foregroundContainerView = v19;

    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    floatingUnderContainerView = v4->_floatingUnderContainerView;
    v4->_floatingUnderContainerView = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    timeContainerView = v4->_timeContainerView;
    v4->_timeContainerView = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    floatingContainerView = v4->_floatingContainerView;
    v4->_floatingContainerView = v25;

    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    compositeContainerView = v4->_compositeContainerView;
    v4->_compositeContainerView = v27;

    v29 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    contentOverlayContainerView = v4->_contentOverlayContainerView;
    v4->_contentOverlayContainerView = v29;

    v31 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v8, v10, v12}];
    modalContainerView = v4->_modalContainerView;
    v4->_modalContainerView = v31;

    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_backdropContainerView forKey:-3000];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_backgroundContainerView forKey:-2000];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_foregroundContainerView forKey:-1000];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_floatingUnderContainerView forKey:-500];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_timeContainerView forKey:0];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_floatingContainerView forKey:1000];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_contentOverlayContainerView forKey:2000];
    [(BSMutableIntegerMap *)v4->_levelToViewMap setObject:v4->_modalContainerView forKey:3000];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    containerViews = [(PUIPosterLayoutView *)v4 containerViews];
    v34 = [containerViews countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v41;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(containerViews);
          }

          v38 = *(*(&v40 + 1) + 8 * i);
          [v38 setAutoresizingMask:18];
          [(PUIPosterLayoutView *)v4 addSubview:v38];
        }

        v35 = [containerViews countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v35);
    }
  }

  return v4;
}

- (id)containerViews
{
  v10[9] = *MEMORY[0x1E69E9840];
  backgroundContainerView = self->_backgroundContainerView;
  foregroundContainerView = self->_foregroundContainerView;
  floatingUnderContainerView = self->_floatingUnderContainerView;
  v10[0] = self->_backdropContainerView;
  v10[1] = backgroundContainerView;
  timeContainerView = self->_timeContainerView;
  v10[2] = foregroundContainerView;
  v10[3] = floatingUnderContainerView;
  floatingContainerView = self->_floatingContainerView;
  v10[4] = timeContainerView;
  v10[5] = floatingContainerView;
  contentOverlayContainerView = self->_contentOverlayContainerView;
  v10[6] = self->_compositeContainerView;
  v10[7] = contentOverlayContainerView;
  v10[8] = self->_modalContainerView;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:9];

  return v8;
}

- (void)resetAllViews
{
  v26 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  reusableViewMap = [(PUIPosterLayoutView *)self reusableViewMap];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PUIPosterLayoutView *)self containerViews];
  v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        subviews = [v5 subviews];
        v7 = [subviews countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v17;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v17 != v9)
              {
                objc_enumerationMutation(subviews);
              }

              v11 = *(*(&v16 + 1) + 8 * j);
              if ([v11 tag] != 3333333 || reusableViewMap == 0)
              {
                if (objc_opt_respondsToSelector())
                {
                  [v11 prepareForReuse];
                }

                [v11 removeFromSuperview];
              }

              else
              {
                [reusableViewMap recycleView:v11];
              }
            }

            v8 = [subviews countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v8);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUIPosterLayoutView;
  [(PUIPosterLayoutView *)&v13 layoutSubviews];
  [(PUIPosterLayoutView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  containerViews = [(PUIPosterLayoutView *)self containerViews];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__PUIPosterLayoutView_layoutSubviews__block_invoke;
  v12[3] = &__block_descriptor_64_e23_v32__0__UIView_8Q16_B24l;
  v12[4] = v4;
  v12[5] = v6;
  v12[6] = v8;
  v12[7] = v10;
  [containerViews enumerateObjectsUsingBlock:v12];
}

- (void)setBackdropView:(id)view
{
  viewCopy = view;
  backdropView = self->_backdropView;
  if (backdropView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)backdropView removeFromSuperview];
    objc_storeStrong(&self->_backdropView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_backdropContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_backgroundContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setForegroundView:(id)view
{
  viewCopy = view;
  foregroundView = self->_foregroundView;
  if (foregroundView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)foregroundView removeFromSuperview];
    objc_storeStrong(&self->_foregroundView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_foregroundContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setFloatingUnderView:(id)view
{
  viewCopy = view;
  floatingUnderView = self->_floatingUnderView;
  if (floatingUnderView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)floatingUnderView removeFromSuperview];
    objc_storeStrong(&self->_floatingUnderView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_floatingUnderContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setTimeView:(id)view
{
  viewCopy = view;
  timeView = self->_timeView;
  if (timeView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)timeView removeFromSuperview];
    objc_storeStrong(&self->_timeView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_timeContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setFloatingView:(id)view
{
  viewCopy = view;
  floatingView = self->_floatingView;
  if (floatingView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)floatingView removeFromSuperview];
    objc_storeStrong(&self->_floatingView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_floatingContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setCompositeView:(id)view
{
  viewCopy = view;
  compositeView = self->_compositeView;
  if (compositeView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)compositeView removeFromSuperview];
    objc_storeStrong(&self->_compositeView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_compositeContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setModalView:(id)view
{
  viewCopy = view;
  modalView = self->_modalView;
  if (modalView != viewCopy)
  {
    v7 = viewCopy;
    [(PUIReusableView *)modalView removeFromSuperview];
    objc_storeStrong(&self->_modalView, view);
    if (v7)
    {
      [(PUIPosterLayoutView *)self bounds];
      [(PUIReusableView *)v7 pui_setBoundsAndPositionFromFrame:?];
      [(UIView *)self->_modalContainerView addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)updateViewWithBlock:(id)block animated:(unint64_t)animated
{
  blockCopy = block;
  if (blockCopy)
  {
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
    {
      if (animated == 2)
      {
        animation = [MEMORY[0x1E6979538] animation];
        [animation setDuration:0.5];
        [animation setType:*MEMORY[0x1E697A030]];
        v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
        [animation setTimingFunction:v10];

        traitCollection = [(PUIPosterLayoutView *)self traitCollection];
        userInterfaceStyle = [traitCollection userInterfaceStyle];

        v8 = MEMORY[0x1E6979ED0];
        if (userInterfaceStyle == 1)
        {
          v8 = MEMORY[0x1E6979EB0];
        }

LABEL_10:
        v13 = [MEMORY[0x1E69793D0] functionWithName:*v8];
        [animation setTimingFunction:v13];

        [MEMORY[0x1E6979518] begin];
        if (animation)
        {
          blockCopy[2](blockCopy, self);
          containerViews = [(PUIPosterLayoutView *)self containerViews];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __52__PUIPosterLayoutView_updateViewWithBlock_animated___block_invoke;
          v15[3] = &unk_1E7854E68;
          v9 = animation;
          v16 = v9;
          [containerViews enumerateObjectsUsingBlock:v15];

          goto LABEL_12;
        }

LABEL_7:
        [MEMORY[0x1E6979518] setDisableActions:1];
        blockCopy[2](blockCopy, self);
        v9 = 0;
LABEL_12:
        [MEMORY[0x1E6979518] commit];

        goto LABEL_13;
      }

      if (animated == 1)
      {
        animation = [MEMORY[0x1E6979538] animation];
        [animation setDuration:0.33];
        [animation setType:*MEMORY[0x1E697A030]];
        v8 = MEMORY[0x1E6979EB8];
        goto LABEL_10;
      }
    }

    [MEMORY[0x1E6979518] begin];
    goto LABEL_7;
  }

LABEL_13:
}

void __52__PUIPosterLayoutView_updateViewWithBlock_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  [v3 addAnimation:*(a1 + 32) forKey:@"TRANSITION"];
}

- (id)_dequeueImageView
{
  reusableViewMap = [(PUIPosterLayoutView *)self reusableViewMap];
  v3 = objc_opt_self();
  v4 = [reusableViewMap viewOfClass:v3];

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  [v4 setTag:3333333];
  [v4 setImage:0];

  return v4;
}

- (void)_recycleView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v7 = viewCopy;
    if ([viewCopy tag] == 3333333)
    {
      [v7 setTag:0];
      [v7 setImage:0];
    }

    reusableViewMap = [(PUIPosterLayoutView *)self reusableViewMap];

    if (reusableViewMap)
    {
      reusableViewMap2 = [(PUIPosterLayoutView *)self reusableViewMap];
      [reusableViewMap2 recycleView:v7];
    }

    else
    {
      [v7 removeFromSuperview];
    }

    viewCopy = v7;
  }
}

@end