@interface PBFWidgetIconViewController
- (CGRect)visibleBounds;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setIconImageView:(id)view;
- (void)viewDidLayoutSubviews;
@end

@implementation PBFWidgetIconViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBFWidgetIconViewController;
  [(PBFWidgetIconViewController *)&v5 viewDidLayoutSubviews];
  iconImageView = [(PBFWidgetIconViewController *)self iconImageView];
  view = [(PBFWidgetIconViewController *)self view];
  [view bounds];
  [iconImageView setFrame:?];
}

- (void)setIconImageView:(id)view
{
  viewCopy = view;
  [(UIImageView *)self->_iconImageView removeFromSuperview];
  iconImageView = self->_iconImageView;
  self->_iconImageView = viewCopy;
  v6 = viewCopy;

  view = [(PBFWidgetIconViewController *)self view];
  [view addSubview:self->_iconImageView];
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  self->_iconImageInfo.size.width = v3;
  self->_iconImageInfo.size.height = v4;
  self->_iconImageInfo.scale = v5;
  self->_iconImageInfo.continuousCornerRadius = v6;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end