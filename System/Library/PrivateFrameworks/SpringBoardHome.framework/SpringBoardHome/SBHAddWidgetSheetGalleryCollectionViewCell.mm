@interface SBHAddWidgetSheetGalleryCollectionViewCell
- (SBHAddWidgetSheetGalleryCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setWidgetWrapperViewController:(id)controller;
@end

@implementation SBHAddWidgetSheetGalleryCollectionViewCell

- (SBHAddWidgetSheetGalleryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SBHAddWidgetSheetGalleryCollectionViewCell;
  v3 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SBHAddWidgetSheetGalleryCollectionViewCell *)v3 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v4->_highlightView;
    v4->_highlightView = v6;

    [(UIView *)v4->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = v4->_highlightView;
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [(UIView *)v8 setBackgroundColor:v9];

    [contentView addSubview:v4->_highlightView];
    [(UIView *)v4->_highlightView setAlpha:0.0];
  }

  return v4;
}

- (void)setWidgetWrapperViewController:(id)controller
{
  v48[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  widgetWrapperViewController = self->_widgetWrapperViewController;
  if (widgetWrapperViewController != controllerCopy)
  {
    view = [(SBHWidgetWrapperViewController *)widgetWrapperViewController view];
    superview = [view superview];
    contentView = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self contentView];

    if (superview == contentView)
    {
      parentViewController = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController parentViewController];
      [parentViewController bs_removeChildViewController:self->_widgetWrapperViewController];
    }

    objc_storeStrong(&self->_widgetWrapperViewController, controller);
    if (self->_widgetWrapperViewController)
    {
      v46 = controllerCopy;
      contentView2 = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self contentView];
      wrapperView = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController wrapperView];
      [wrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
      [contentView2 addSubview:wrapperView];
      v33 = MEMORY[0x1E696ACD8];
      leadingAnchor = [wrapperView leadingAnchor];
      leadingAnchor2 = [contentView2 leadingAnchor];
      v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v48[0] = v39;
      trailingAnchor = [wrapperView trailingAnchor];
      trailingAnchor2 = [contentView2 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v48[1] = v13;
      topAnchor = [wrapperView topAnchor];
      topAnchor2 = [contentView2 topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v48[2] = v16;
      bottomAnchor = [wrapperView bottomAnchor];
      v45 = contentView2;
      bottomAnchor2 = [contentView2 bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v48[3] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
      [v33 activateConstraints:v20];

      v44 = wrapperView;
      contentView3 = [wrapperView contentView];
      if (contentView3)
      {
        v32 = MEMORY[0x1E696ACD8];
        leadingAnchor3 = [(UIView *)self->_highlightView leadingAnchor];
        leadingAnchor4 = [contentView3 leadingAnchor];
        v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v47[0] = v38;
        trailingAnchor3 = [(UIView *)self->_highlightView trailingAnchor];
        trailingAnchor4 = [contentView3 trailingAnchor];
        v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v47[1] = v31;
        topAnchor3 = [(UIView *)self->_highlightView topAnchor];
        topAnchor4 = [contentView3 topAnchor];
        v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v47[2] = v24;
        bottomAnchor3 = [(UIView *)self->_highlightView bottomAnchor];
        bottomAnchor4 = [contentView3 bottomAnchor];
        v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v47[3] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
        [v32 activateConstraints:v28];
      }

      highlightView = self->_highlightView;
      controllerCopy = v46;
      wrapperView2 = [(SBHWidgetWrapperViewController *)v46 wrapperView];
      [wrapperView2 cornerRadius];
      [(UIView *)highlightView _setContinuousCornerRadius:?];
    }
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetGalleryCollectionViewCell;
  [(SBHAddWidgetSheetGalleryCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self contentView];
  [contentView bringSubviewToFront:self->_highlightView];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  wrapperView = [(SBHWidgetWrapperViewController *)self->_widgetWrapperViewController wrapperView];
  contentView = [wrapperView contentView];

  [contentView setHighlighted:highlightedCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetSheetGalleryCollectionViewCell;
  [(SBHAddWidgetSheetGalleryCollectionViewCell *)&v3 prepareForReuse];
  [(SBHAddWidgetSheetGalleryCollectionViewCell *)self setWidgetWrapperViewController:0];
}

@end