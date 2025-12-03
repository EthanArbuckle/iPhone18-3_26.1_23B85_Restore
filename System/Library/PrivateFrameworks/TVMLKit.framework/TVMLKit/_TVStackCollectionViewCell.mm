@interface _TVStackCollectionViewCell
- (UIViewController)viewController;
- (id)preferredFocusEnvironments;
- (void)_pressesDidEnd;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setViewController:(id)controller;
@end

@implementation _TVStackCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v3 prepareForReuse];
  [(_TVStackCollectionViewCell *)self setViewController:0];
  [(_TVStackCollectionViewCell *)self setBackgroundColor:0];
}

- (void)setViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  v5 = obj;
  if (WeakRetained == obj)
  {
    goto LABEL_13;
  }

  v6 = objc_storeWeak(&self->_viewController, obj);

  v5 = obj;
  if (!obj)
  {
    goto LABEL_13;
  }

  view = [obj view];
  v8 = objc_loadWeakRetained(&self->_cellContentView);

  if (v8 != view)
  {
    v9 = objc_loadWeakRetained(&self->_cellContentView);
    v10 = objc_loadWeakRetained(&self->_stowedContentView);

    v11 = objc_loadWeakRetained(&self->_cellContentView);
    v12 = v11;
    if (v9 == v10)
    {
      [v11 setHidden:1];
    }

    else
    {
      superview = [v11 superview];
      contentView = [(_TVStackCollectionViewCell *)self contentView];

      if (superview != contentView)
      {
LABEL_9:
        objc_storeWeak(&self->_cellContentView, view);
        goto LABEL_10;
      }

      v12 = objc_loadWeakRetained(&self->_cellContentView);
      [v12 removeFromSuperview];
    }

    goto LABEL_9;
  }

LABEL_10:
  v15 = objc_loadWeakRetained(&self->_cellContentView);
  superview2 = [v15 superview];
  contentView2 = [(_TVStackCollectionViewCell *)self contentView];

  if (superview2 != contentView2)
  {
    v18 = objc_loadWeakRetained(&self->_cellContentView);
    [v18 setHidden:0];

    contentView3 = [(_TVStackCollectionViewCell *)self contentView];
    v20 = objc_loadWeakRetained(&self->_cellContentView);
    [contentView3 addSubview:v20];
  }

  v5 = obj;
LABEL_13:
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v9 layoutSubviews];
  [(_TVStackCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  viewController = [(_TVStackCollectionViewCell *)self viewController];
  view = [viewController view];
  [view setFrame:{0.0, 0.0, v4, v6}];
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  viewController = [(_TVStackCollectionViewCell *)self viewController];
  if (viewController)
  {
    viewController2 = [(_TVStackCollectionViewCell *)self viewController];
    v7[0] = viewController2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v7 pressesBegan:began withEvent:event];
  pressesEventDepth = self->_pressesEventDepth;
  self->_pressesEventDepth = pressesEventDepth + 1;
  if (!pressesEventDepth)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cellContentView);
    objc_storeWeak(&self->_stowedContentView, WeakRetained);
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v5 pressesCancelled:cancelled withEvent:event];
  [(_TVStackCollectionViewCell *)self _pressesDidEnd];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v5 pressesEnded:ended withEvent:event];
  [(_TVStackCollectionViewCell *)self _pressesDidEnd];
}

- (void)_pressesDidEnd
{
  pressesEventDepth = self->_pressesEventDepth;
  if (pressesEventDepth)
  {
    v4 = pressesEventDepth - 1;
    self->_pressesEventDepth = v4;
    if (v4)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_stowedContentView);
    v6 = objc_loadWeakRetained(&self->_cellContentView);
    v7 = v6;
    if (WeakRetained == v6)
    {
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_stowedContentView);
      superview = [v8 superview];
      contentView = [(_TVStackCollectionViewCell *)self contentView];

      if (superview != contentView)
      {
LABEL_11:

        objc_storeWeak(&self->_stowedContentView, 0);
        return;
      }

      WeakRetained = objc_loadWeakRetained(&self->_stowedContentView);
      [WeakRetained removeFromSuperview];
    }

    goto LABEL_11;
  }

  v11 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
  {
    [(_TVStackCollectionViewCell *)v11 _pressesDidEnd];
  }
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end