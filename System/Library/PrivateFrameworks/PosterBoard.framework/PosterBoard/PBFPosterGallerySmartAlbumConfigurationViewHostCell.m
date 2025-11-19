@interface PBFPosterGallerySmartAlbumConfigurationViewHostCell
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)layoutSubviews;
- (void)setHostedView:(id)a3;
- (void)updateContent:(id)a3;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(UIView *)self->_hostedView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
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

- (void)setHostedView:(id)a3
{
  v5 = a3;
  hostedView = self->_hostedView;
  if (hostedView != v5)
  {
    v8 = v5;
    [(UIView *)hostedView removeFromSuperview];
    objc_storeStrong(&self->_hostedView, a3);
    v7 = [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self contentView];
    [v7 addSubview:self->_hostedView];

    [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self invalidateIntrinsicContentSize];
    [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)updateContent:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self->_hostedView);
  }

  [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self invalidateIntrinsicContentSize];

  [(PBFPosterGallerySmartAlbumConfigurationViewHostCell *)self setNeedsLayout];
}

@end