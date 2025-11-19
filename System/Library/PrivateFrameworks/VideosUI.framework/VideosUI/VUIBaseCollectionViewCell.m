@interface VUIBaseCollectionViewCell
- (BOOL)vui_addSubview:(id)a3 oldView:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (VUIBaseCollectionViewCell)initWithFrame:(CGRect)a3;
- (VUICollectionViewCellInteractor)vuiCollectionViewCellInteractor;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)didEndDisplaying;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setShouldAppearSelected:(BOOL)a3;
- (void)setupPreview;
- (void)vui_prepareForReuse;
- (void)vui_setHighlighted:(BOOL)a3;
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)willBeDisplayed;
@end

@implementation VUIBaseCollectionViewCell

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    if (_os_feature_enabled_impl())
    {
      v6 = [(VUIBaseCollectionViewCell *)self vuiContentView];
      [v6 setBackgroundColor:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (VUIBaseCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VUIBaseCollectionViewCell;
  v3 = [(VUIBaseCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VUIBaseCollectionViewCell *)v3 setupPreview];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIBaseCollectionViewCell *)self vui_layoutSubviews:1 computationOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VUIBaseCollectionViewCell;
  [(VUIBaseCollectionViewCell *)&v6 layoutSubviews];
  [(VUIBaseCollectionViewCell *)self bounds];
  [(VUIBaseCollectionViewCell *)self vui_layoutSubviews:0 computationOnly:v3, v4];
  v5 = [(VUIBaseCollectionViewCell *)self preview];
  [(VUIBaseCollectionViewCell *)self bounds];
  [v5 setFrame:?];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIBaseCollectionViewCell;
  [(VUIBaseCollectionViewCell *)&v5 setHighlighted:?];
  [(VUIBaseCollectionViewCell *)self vui_setHighlighted:v3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUIBaseCollectionViewCell;
  [(VUIBaseCollectionViewCell *)&v3 prepareForReuse];
  [(VUIBaseCollectionViewCell *)self vui_prepareForReuse];
}

- (void)setShouldAppearSelected:(BOOL)a3
{
  if (self->_shouldAppearSelected != a3)
  {
    self->_shouldAppearSelected = a3;
    [(VUIBaseCollectionViewCell *)self vui_setSelected:?];
  }
}

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  [(VUIBaseCollectionViewCell *)self vui_layoutSubviews:1 computationOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)vui_addSubview:(id)a3 oldView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUIBaseCollectionViewCell *)self vuiContentView];
  v9 = [v8 vui_addSubview:v7 oldView:v6];

  return v9;
}

- (void)setupPreview
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  preview = self->_preview;
  self->_preview = v3;

  [(UIView *)self->_preview setAlpha:0.0];
  v5 = [(VUIBaseCollectionViewCell *)self preview];
  [(VUIBaseCollectionViewCell *)self addSubview:v5];
}

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v5 = a4;
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
  if (v9)
  {
    v10 = v9;
    v11 = [(VUIBaseCollectionViewCell *)self backgroundColor];

    if (v11)
    {
      v12 = [(VUIBaseCollectionViewCell *)self vuiContentView];
      if (v6)
      {
        [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
      }

      else
      {
        [(VUIBaseCollectionViewCell *)self backgroundColor];
      }
      v13 = ;
      [v12 setVuiBackgroundColor:v13];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [(VUIBaseCollectionViewCell *)self vuiContentView];
  v15 = [v14 subviews];

  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * i) vui_setSelected:v6 animated:v5 withAnimationCoordinator:v8];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)vui_setHighlighted:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if ([(VUIBaseCollectionViewCell *)self shouldAppearSelected])
  {
    v3 = [(VUIBaseCollectionViewCell *)self shouldAppearSelected];
  }

  v5 = [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
  if (v5)
  {
    v6 = v5;
    v7 = [(VUIBaseCollectionViewCell *)self backgroundColor];

    if (v7)
    {
      v8 = [(VUIBaseCollectionViewCell *)self vuiContentView];
      if ([(VUIBaseCollectionViewCell *)self isSelected]| v3)
      {
        [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
      }

      else
      {
        [(VUIBaseCollectionViewCell *)self backgroundColor];
      }
      v9 = ;
      [v8 setVuiBackgroundColor:v9];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(VUIBaseCollectionViewCell *)self vuiContentView];
  v11 = [v10 subviews];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 vui_setHighlighted:v3];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)vui_prepareForReuse
{
  [(VUIBaseCollectionViewCell *)self setBeingDisplayed:0];
  [(VUIBaseCollectionViewCell *)self setShouldAppearSelected:0];
  if ([(VUIBaseCollectionViewCell *)self vui_highlighted])
  {
    [(VUIBaseCollectionViewCell *)self vui_setHighlighted:0];
  }

  if ([(VUIBaseCollectionViewCell *)self vui_selected])
  {

    [(VUIBaseCollectionViewCell *)self vui_setSelected:0];
  }
}

- (void)willBeDisplayed
{
  [(VUIBaseCollectionViewCell *)self setBeingDisplayed:1];

  [(VUIBaseCollectionViewCell *)self vui_cellWillBeDisplayed];
}

- (void)didEndDisplaying
{
  [(VUIBaseCollectionViewCell *)self setBeingDisplayed:0];

  [(VUIBaseCollectionViewCell *)self vui_cellDidEndDisplaying];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 forcedSize])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VUIBaseCollectionViewCell;
    v5 = [(VUIBaseCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];
  }

  v6 = v5;

  return v6;
}

- (VUICollectionViewCellInteractor)vuiCollectionViewCellInteractor
{
  WeakRetained = objc_loadWeakRetained(&self->_vuiCollectionViewCellInteractor);

  return WeakRetained;
}

@end