@interface SBHAddWidgetSheetGalleryCollectionViewCell
- (SBHAddWidgetSheetGalleryCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setWidgetWrapperViewController:(id)a3;
@end

@implementation SBHAddWidgetSheetGalleryCollectionViewCell

- (SBHAddWidgetSheetGalleryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SBHAddWidgetSheetGalleryCollectionViewCell;
  v3 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v4->_highlightView;
    v4->_highlightView = v6;

    [(UIView *)v4->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = v4->_highlightView;
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [(UIView *)v8 setBackgroundColor:v9];

    [v5 addSubview:v4->_highlightView];
    [(UIView *)v4->_highlightView setAlpha:0.0];
  }

  return v4;
}

- (void)setWidgetWrapperViewController:(id)a3
{
  v48[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  widgetWrapperViewController = self->_widgetWrapperViewController;
  if (widgetWrapperViewController != v5)
  {
    v7 = [(SBHWidgetWrapperViewController *)widgetWrapperViewController view];
    v8 = [v7 superview];
    v9 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self contentView];

    if (v8 == v9)
    {
      v10 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController parentViewController];
      [v10 bs_removeChildViewController:self->_widgetWrapperViewController];
    }

    objc_storeStrong(&self->_widgetWrapperViewController, a3);
    if (self->_widgetWrapperViewController)
    {
      v46 = v5;
      v11 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self contentView];
      v12 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController wrapperView];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v11 addSubview:v12];
      v33 = MEMORY[0x1E696ACD8];
      v43 = [v12 leadingAnchor];
      v41 = [v11 leadingAnchor];
      v39 = [v43 constraintEqualToAnchor:v41];
      v48[0] = v39;
      v37 = [v12 trailingAnchor];
      v35 = [v11 trailingAnchor];
      v13 = [v37 constraintEqualToAnchor:v35];
      v48[1] = v13;
      v14 = [v12 topAnchor];
      v15 = [v11 topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v48[2] = v16;
      v17 = [v12 bottomAnchor];
      v45 = v11;
      v18 = [v11 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v48[3] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
      [v33 activateConstraints:v20];

      v44 = v12;
      v21 = [v12 contentView];
      if (v21)
      {
        v32 = MEMORY[0x1E696ACD8];
        v42 = [(UIView *)self->_highlightView leadingAnchor];
        v40 = [v21 leadingAnchor];
        v38 = [v42 constraintEqualToAnchor:v40];
        v47[0] = v38;
        v36 = [(UIView *)self->_highlightView trailingAnchor];
        v34 = [v21 trailingAnchor];
        v31 = [v36 constraintEqualToAnchor:v34];
        v47[1] = v31;
        v22 = [(UIView *)self->_highlightView topAnchor];
        v23 = [v21 topAnchor];
        v24 = [v22 constraintEqualToAnchor:v23];
        v47[2] = v24;
        v25 = [(UIView *)self->_highlightView bottomAnchor];
        v26 = [v21 bottomAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];
        v47[3] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
        [v32 activateConstraints:v28];
      }

      highlightView = self->_highlightView;
      v5 = v46;
      v30 = [(SBHWidgetWrapperViewController *)v46 wrapperView];
      [v30 cornerRadius];
      [(UIView *)highlightView _setContinuousCornerRadius:?];
    }
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetGalleryCollectionViewCell;
  [(SBHAddWidgetSheetGalleryCollectionViewCell *)&v4 layoutSubviews];
  v3 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self contentView];
  [v3 bringSubviewToFront:self->_highlightView];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController wrapperView];
  v5 = [v4 contentView];

  [v5 setHighlighted:v3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetSheetGalleryCollectionViewCell;
  [(SBHAddWidgetSheetGalleryCollectionViewCell *)&v3 prepareForReuse];
  [(SBHAddWidgetSheetGalleryCollectionViewCell *)self setWidgetWrapperViewController:0];
}

@end