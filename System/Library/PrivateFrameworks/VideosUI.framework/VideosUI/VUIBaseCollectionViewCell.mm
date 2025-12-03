@interface VUIBaseCollectionViewCell
- (BOOL)vui_addSubview:(id)subview oldView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (VUIBaseCollectionViewCell)initWithFrame:(CGRect)frame;
- (VUICollectionViewCellInteractor)vuiCollectionViewCellInteractor;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didEndDisplaying;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShouldAppearSelected:(BOOL)selected;
- (void)setupPreview;
- (void)vui_prepareForReuse;
- (void)vui_setHighlighted:(BOOL)highlighted;
- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)willBeDisplayed;
@end

@implementation VUIBaseCollectionViewCell

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_backgroundColor, color);
    if (_os_feature_enabled_impl())
    {
      vuiContentView = [(VUIBaseCollectionViewCell *)self vuiContentView];
      [vuiContentView setBackgroundColor:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (VUIBaseCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUIBaseCollectionViewCell;
  v3 = [(VUIBaseCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VUIBaseCollectionViewCell *)v3 setupPreview];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIBaseCollectionViewCell *)self vui_layoutSubviews:1 computationOnly:fits.width, fits.height];
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
  preview = [(VUIBaseCollectionViewCell *)self preview];
  [(VUIBaseCollectionViewCell *)self bounds];
  [preview setFrame:?];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = VUIBaseCollectionViewCell;
  [(VUIBaseCollectionViewCell *)&v5 setHighlighted:?];
  [(VUIBaseCollectionViewCell *)self vui_setHighlighted:highlightedCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUIBaseCollectionViewCell;
  [(VUIBaseCollectionViewCell *)&v3 prepareForReuse];
  [(VUIBaseCollectionViewCell *)self vui_prepareForReuse];
}

- (void)setShouldAppearSelected:(BOOL)selected
{
  if (self->_shouldAppearSelected != selected)
  {
    self->_shouldAppearSelected = selected;
    [(VUIBaseCollectionViewCell *)self vui_setSelected:?];
  }
}

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  [(VUIBaseCollectionViewCell *)self vui_layoutSubviews:1 computationOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)vui_addSubview:(id)subview oldView:(id)view
{
  viewCopy = view;
  subviewCopy = subview;
  vuiContentView = [(VUIBaseCollectionViewCell *)self vuiContentView];
  v9 = [vuiContentView vui_addSubview:subviewCopy oldView:viewCopy];

  return v9;
}

- (void)setupPreview
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  preview = self->_preview;
  self->_preview = v3;

  [(UIView *)self->_preview setAlpha:0.0];
  preview = [(VUIBaseCollectionViewCell *)self preview];
  [(VUIBaseCollectionViewCell *)self addSubview:preview];
}

- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  selectedCopy = selected;
  v25 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  highlightedBackgroundColor = [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
  if (highlightedBackgroundColor)
  {
    v10 = highlightedBackgroundColor;
    backgroundColor = [(VUIBaseCollectionViewCell *)self backgroundColor];

    if (backgroundColor)
    {
      vuiContentView = [(VUIBaseCollectionViewCell *)self vuiContentView];
      if (selectedCopy)
      {
        [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
      }

      else
      {
        [(VUIBaseCollectionViewCell *)self backgroundColor];
      }
      v13 = ;
      [vuiContentView setVuiBackgroundColor:v13];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  vuiContentView2 = [(VUIBaseCollectionViewCell *)self vuiContentView];
  subviews = [vuiContentView2 subviews];

  v16 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v20 + 1) + 8 * i) vui_setSelected:selectedCopy animated:animatedCopy withAnimationCoordinator:coordinatorCopy];
      }

      v17 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)vui_setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v22 = *MEMORY[0x1E69E9840];
  if ([(VUIBaseCollectionViewCell *)self shouldAppearSelected])
  {
    highlightedCopy = [(VUIBaseCollectionViewCell *)self shouldAppearSelected];
  }

  highlightedBackgroundColor = [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
  if (highlightedBackgroundColor)
  {
    v6 = highlightedBackgroundColor;
    backgroundColor = [(VUIBaseCollectionViewCell *)self backgroundColor];

    if (backgroundColor)
    {
      vuiContentView = [(VUIBaseCollectionViewCell *)self vuiContentView];
      if ([(VUIBaseCollectionViewCell *)self isSelected]| highlightedCopy)
      {
        [(VUIBaseCollectionViewCell *)self highlightedBackgroundColor];
      }

      else
      {
        [(VUIBaseCollectionViewCell *)self backgroundColor];
      }
      v9 = ;
      [vuiContentView setVuiBackgroundColor:v9];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  vuiContentView2 = [(VUIBaseCollectionViewCell *)self vuiContentView];
  subviews = [vuiContentView2 subviews];

  v12 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 vui_setHighlighted:highlightedCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
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

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [attributesCopy forcedSize])
  {
    v5 = attributesCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VUIBaseCollectionViewCell;
    v5 = [(VUIBaseCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
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