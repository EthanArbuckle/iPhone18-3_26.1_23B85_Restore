@interface PXProtoFeatureView
- (CGRect)_contentViewFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)regularContentSize;
- (UIColor)preferredBackgroundColor;
- (UIEdgeInsets)_contentInsets;
- (UIEdgeInsets)minimumMargins;
- (void)_setNeedsUpdate;
- (void)_updateContentIfNeeded;
- (void)_updateIfNeeded;
- (void)layoutSubviews;
- (void)performChanges:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setFeature:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateContent;
@end

@implementation PXProtoFeatureView

- (UIEdgeInsets)minimumMargins
{
  top = self->_minimumMargins.top;
  left = self->_minimumMargins.left;
  bottom = self->_minimumMargins.bottom;
  right = self->_minimumMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateContentIfNeeded
{
  if (self->_needsUpdateFlags.content)
  {
    self->_needsUpdateFlags.content = 0;
    [(PXProtoFeatureView *)self updateContent];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXProtoFeatureView *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXProtoFeatureView *)self _updateContentIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXProtoFeatureView.m" lineNumber:192 description:@"neither inside perform changes nor updates"];
  }
}

- (void)performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, self);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {

    [(PXProtoFeatureView *)self _updateIfNeeded];
  }
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(PXProtoFeatureView *)self _invalidateContent];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(PXProtoFeatureView *)self _invalidateContent];
  }
}

- (void)setFeature:(id)a3
{
  v5 = a3;
  if (self->_feature != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_feature, a3);
    [(PXProtoFeatureView *)self _invalidateContent];
    v5 = v6;
  }
}

- (UIEdgeInsets)_contentInsets
{
  if ([(PXProtoFeatureView *)self isSelected])
  {
    v3 = 22.0;
  }

  else
  {
    v3 = 4.0;
  }

  [(PXProtoFeatureView *)self minimumMargins];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  v8 = fmax(v7, 4.0);
  v9 = fmax(v4, 4.0);
  v10 = fmax(v6, 4.0);
  result.right = v8;
  result.bottom = v10;
  result.left = v5;
  result.top = v9;
  return result;
}

- (CGRect)_contentViewFrame
{
  [(PXProtoFeatureView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXProtoFeatureView *)self _contentInsets];
  v13 = v12;
  v15 = v14;
  v17 = v8 - (v11 + v16);
  if (v17 < 0.0 || (v15 = v13 + v15, v18 = v10 - v15, v10 - v15 < 0.0))
  {
    [(PXProtoFeatureView *)self bounds];
  }

  else
  {
    v19 = v4 + v11;
    v20 = v6 + v13;
  }

  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)updateContent
{
  if ([(PXProtoFeatureView *)self wantsContentView])
  {
    v16 = [(PXProtoFeatureView *)self contentView];
    if (!v16)
    {
      v3 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PXProtoFeatureView *)self _contentViewFrame];
      v4 = [v3 initWithFrame:?];
      contentView = self->_contentView;
      self->_contentView = v4;

      v16 = v4;
      [(PXProtoFeatureView *)self addSubview:self->_contentView];
      v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v7 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXProtoFeatureRemove"];
      v8 = [v6 initWithImage:v7];
      removeIconView = self->__removeIconView;
      self->__removeIconView = v8;

      [(UIImageView *)self->__removeIconView setHidden:1];
      [(PXProtoFeatureView *)self addSubview:self->__removeIconView];
    }

    v10 = [(PXProtoFeatureView *)self preferredBackgroundColor];
    [(PXProtoFeatureView *)self setBackgroundColor:v10];

    v11 = [(PXProtoFeatureView *)self layer];
    [v11 setCornerRadius:8.0];

    v12 = [(PXProtoFeatureView *)self isDisabled];
    v13 = 1.0;
    if (v12)
    {
      v13 = 0.25;
    }

    [(PXProtoFeatureView *)self setAlpha:v13];
    v14 = [(UIView *)v16 layer];
    [v14 setCornerRadius:4.0];

    [(UIView *)v16 setClipsToBounds:1];
    LODWORD(v14) = [(PXProtoFeatureView *)self isSelected];
    v15 = [(PXProtoFeatureView *)self _removeIconView];
    [v15 setHidden:v14 ^ 1];
  }
}

- (UIColor)preferredBackgroundColor
{
  if ([(PXProtoFeatureView *)self isDisabled])
  {
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
LABEL_12:
    v7 = v3;
    goto LABEL_15;
  }

  v4 = [(PXProtoFeatureView *)self isSelected];
  v5 = [(PXProtoFeatureView *)self feature];
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(PXProtoFeatureView *)self feature];
      v7 = [v6 featureSelectedTintColor];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v3 = [(PXProtoFeatureView *)self tintColor];
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(PXProtoFeatureView *)self feature];
    v7 = [v8 featureTintColor];

    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v9 = [(PXProtoFeatureView *)self tintColor];
  v7 = [v9 colorWithAlphaComponent:0.200000003];

LABEL_15:

  return v7;
}

void __37__PXProtoFeatureView_prepareForReuse__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFeature:0];
  [v2 setSelected:0];
  [v2 setDisabled:0];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = PXProtoFeatureView;
  [(PXProtoFeatureView *)&v22 layoutSubviews];
  if ([(PXProtoFeatureView *)self wantsContentView])
  {
    [(PXProtoFeatureView *)self _contentViewFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PXProtoFeatureView *)self bounds];
    MinX = CGRectGetMinX(v23);
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v12 = (MinX + CGRectGetMinX(v24)) * 0.5;
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    MidY = CGRectGetMidY(v25);
    v14 = [(PXProtoFeatureView *)self contentView];
    [v14 frame];
    v16 = v15;
    v18 = v17;

    v19 = [(PXProtoFeatureView *)self contentView];
    [v19 setFrame:{v4, v6, v8, v10}];

    v20 = [(PXProtoFeatureView *)self _removeIconView];
    [v20 setCenter:{v12, MidY}];

    if (v8 != v16 || v10 != v18)
    {
      if ([(PXProtoFeatureView *)self shouldUpdateContentOnResize])
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __36__PXProtoFeatureView_layoutSubviews__block_invoke;
        v21[3] = &unk_1E774BE00;
        v21[4] = self;
        [(PXProtoFeatureView *)self performChanges:v21];
      }
    }
  }
}

- (CGSize)regularContentSize
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXProtoFeatureView.m" lineNumber:53 description:{@"Method %s is a responsibility of subclass %@", "-[PXProtoFeatureView regularContentSize]", v6}];

  abort();
}

- (CGSize)intrinsicContentSize
{
  if (![(PXProtoFeatureView *)self wantsContentView])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PXProtoFeatureView.m" lineNumber:43 description:{@"Method %s is a responsibility of subclass %@", "-[PXProtoFeatureView intrinsicContentSize]", v17}];

    abort();
  }

  if ([(PXProtoFeatureView *)self isSelected])
  {
    [(PXProtoFeatureView *)self compactContentSize];
  }

  else
  {
    [(PXProtoFeatureView *)self regularContentSize];
  }

  v6 = v4;
  v7 = v5;
  [(PXProtoFeatureView *)self _contentInsets];
  v10 = v6 + v8 + v9;
  v13 = v7 + v11 + v12;
  v14 = v10;
  result.height = v13;
  result.width = v14;
  return result;
}

@end