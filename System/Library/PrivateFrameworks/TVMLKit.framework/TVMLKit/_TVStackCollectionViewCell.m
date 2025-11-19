@interface _TVStackCollectionViewCell
- (UIViewController)viewController;
- (id)preferredFocusEnvironments;
- (void)_pressesDidEnd;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setViewController:(id)a3;
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

- (void)setViewController:(id)a3
{
  obj = a3;
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

  v7 = [obj view];
  v8 = objc_loadWeakRetained(&self->_cellContentView);

  if (v8 != v7)
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
      v13 = [v11 superview];
      v14 = [(_TVStackCollectionViewCell *)self contentView];

      if (v13 != v14)
      {
LABEL_9:
        objc_storeWeak(&self->_cellContentView, v7);
        goto LABEL_10;
      }

      v12 = objc_loadWeakRetained(&self->_cellContentView);
      [v12 removeFromSuperview];
    }

    goto LABEL_9;
  }

LABEL_10:
  v15 = objc_loadWeakRetained(&self->_cellContentView);
  v16 = [v15 superview];
  v17 = [(_TVStackCollectionViewCell *)self contentView];

  if (v16 != v17)
  {
    v18 = objc_loadWeakRetained(&self->_cellContentView);
    [v18 setHidden:0];

    v19 = [(_TVStackCollectionViewCell *)self contentView];
    v20 = objc_loadWeakRetained(&self->_cellContentView);
    [v19 addSubview:v20];
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
  v7 = [(_TVStackCollectionViewCell *)self viewController];
  v8 = [v7 view];
  [v8 setFrame:{0.0, 0.0, v4, v6}];
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackCollectionViewCell *)self viewController];
  if (v3)
  {
    v4 = [(_TVStackCollectionViewCell *)self viewController];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v7 pressesBegan:a3 withEvent:a4];
  pressesEventDepth = self->_pressesEventDepth;
  self->_pressesEventDepth = pressesEventDepth + 1;
  if (!pressesEventDepth)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cellContentView);
    objc_storeWeak(&self->_stowedContentView, WeakRetained);
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v5 pressesCancelled:a3 withEvent:a4];
  [(_TVStackCollectionViewCell *)self _pressesDidEnd];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _TVStackCollectionViewCell;
  [(_TVStackCollectionViewCell *)&v5 pressesEnded:a3 withEvent:a4];
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
      v9 = [v8 superview];
      v10 = [(_TVStackCollectionViewCell *)self contentView];

      if (v9 != v10)
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