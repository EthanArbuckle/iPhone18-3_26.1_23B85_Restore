@interface PXPhotosDetailsHeaderPreviewTile
- (void)becomeReusable;
- (void)prepareForReuse;
@end

@implementation PXPhotosDetailsHeaderPreviewTile

- (void)prepareForReuse
{
  v2 = [(PXUIImageTile *)self view];
  [v2 setHidden:0];
}

- (void)becomeReusable
{
  v2 = [(PXUIImageTile *)self view];
  [v2 setHidden:1];
}

@end