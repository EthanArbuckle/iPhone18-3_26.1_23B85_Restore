@interface PXPhotosDetailsHeaderPreviewTile
- (void)becomeReusable;
- (void)prepareForReuse;
@end

@implementation PXPhotosDetailsHeaderPreviewTile

- (void)prepareForReuse
{
  view = [(PXUIImageTile *)self view];
  [view setHidden:0];
}

- (void)becomeReusable
{
  view = [(PXUIImageTile *)self view];
  [view setHidden:1];
}

@end