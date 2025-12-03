@interface PBFPosterGallerySmartAlbumConfigurationViewHostCell
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)layoutSubviews;
- (void)setHostedView:(id)view;
- (void)updateContent:(id)content;
@end

@implementation PBFPosterGallerySmartAlbumConfigurationViewHostCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PBFPosterGallerySmartAlbumConfigurationViewHostCell;
  [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)&v4 layoutSubviews];
  hostedView = self->_hostedView;
  [(UIView *)hostedView frame];
  [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self bounds];
  UIRectCenteredRect();
  [(UIView *)hostedView setFrame:?];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(UIView *)self->_hostedView systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_hostedView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setHostedView:(id)view
{
  viewCopy = view;
  hostedView = self->_hostedView;
  if (hostedView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)hostedView removeFromSuperview];
    objc_storeStrong(&self->_hostedView, view);
    contentView = [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self contentView];
    [contentView addSubview:self->_hostedView];

    [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self invalidateIntrinsicContentSize];
    [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)updateContent:(id)content
{
  if (content)
  {
    (*(content + 2))(content, self->_hostedView);
  }

  [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self invalidateIntrinsicContentSize];

  [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self setNeedsLayout];
}

@end