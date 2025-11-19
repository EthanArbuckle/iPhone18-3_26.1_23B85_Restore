@interface _UICollectionViewListSeparatorView
- (_UICollectionViewListSeparatorView)initWithFrame:(CGRect)a3;
- (void)_setUpEffectViewWithEffect:(id)a3;
- (void)_tearDownEffectView;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation _UICollectionViewListSeparatorView

- (void)_tearDownEffectView
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;
}

- (_UICollectionViewListSeparatorView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewListSeparatorView;
  v3 = [(UICollectionReusableView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)a3
{
  v16.receiver = self;
  v16.super_class = _UICollectionViewListSeparatorView;
  v4 = a3;
  [(UICollectionReusableView *)&v16 applyLayoutAttributes:v4];
  v5 = [(UICollectionViewLayoutAttributes *)v4 _existingListAttributes];

  if (v5)
  {
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    if (v5)
    {
      v11 = *(v5 + 16) - 1;
    }

    else
    {
      v11 = -1;
    }

    v15 = 0u;
    v12 = +[_UIListMetrics sharedMetrics];
    v13 = [(UIView *)self traitCollection];
    if (v12)
    {
      if (v11 < 4)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = 0;
      }

      [v12 metricsForSeparatorWithListStyle:v14 traitCollection:v13];
    }

    else
    {
      v15 = 0u;
    }

    v6 = *(&v15 + 1);
    goto LABEL_20;
  }

  if (v8)
  {
LABEL_20:
    [(_UICollectionViewListSeparatorView *)self _setUpEffectViewWithEffect:v9, v15];
    goto LABEL_21;
  }

  [(_UICollectionViewListSeparatorView *)self _tearDownEffectView];
LABEL_21:
  [(UIView *)self setBackgroundColor:v6];
}

- (void)_setUpEffectViewWithEffect:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListSeparatorView.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"effect != nil"}];
  }

  effectView = self->_effectView;
  if (effectView)
  {
    v7 = [(UIVisualEffectView *)effectView effect];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = isKindOfClass ^ 1;
  }

  else
  {
    v9 = 1;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  v11 = v10;
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    [(_UICollectionViewListSeparatorView *)self _tearDownEffectView];
  }

  v12 = self->_effectView;
  if (!v12)
  {
    v19 = [[UIVisualEffectView alloc] initWithEffect:v5];
    v20 = self->_effectView;
    self->_effectView = v19;

    v21 = [(UIView *)self->_effectView layer];
    [v21 setAllowsEdgeAntialiasing:1];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65___UICollectionViewListSeparatorView__setUpEffectViewWithEffect___block_invoke;
    v23[3] = &unk_1E70F3590;
    v23[4] = self;
    [UIView performWithoutAnimation:v23];
    [(UIView *)self->_effectView setAutoresizingMask:18];
    [(UIView *)self addSubview:self->_effectView];
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(UIVisualEffectView *)v12 setEffect:v5];
  if (v11)
  {
LABEL_11:
    v13 = [(UIVisualEffectView *)self->_effectView contentView];
    v14 = [v13 tintColor];
    v15 = [(UIVisualEffectView *)self->_effectView contentView];
    [v15 setBackgroundColor:v14];

    v16 = [(UIVisualEffectView *)self->_effectView contentView];
    v17 = [v16 layer];
    [v17 setAllowsEdgeAntialiasing:1];

    v18 = [(UIVisualEffectView *)self->_effectView contentView];
    [v18 setClipsToBounds:0];
  }

LABEL_12:
}

@end