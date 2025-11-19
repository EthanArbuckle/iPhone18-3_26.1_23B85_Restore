@interface PBFWidgetIconViewController
- (CGRect)visibleBounds;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setIconImageView:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PBFWidgetIconViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBFWidgetIconViewController;
  [(PBFWidgetIconViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(PBFWidgetIconViewController *)self iconImageView];
  v4 = [(PBFWidgetIconViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)setIconImageView:(id)a3
{
  v4 = a3;
  [(UIImageView *)self->_iconImageView removeFromSuperview];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v4;
  v6 = v4;

  v7 = [(PBFWidgetIconViewController *)self view];
  [v7 addSubview:self->_iconImageView];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
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