@interface PKTileImagePreviewViewController
+ (void)presentWithImageView:(id)view title:(id)title presenting:(id)presenting;
- (PKTileImagePreviewViewController)initWithCoder:(id)coder;
- (PKTileImagePreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)viewForZoomingInScrollView:(id)view;
- (void)close;
- (void)loadView;
- (void)scrollViewDidZoom:(id)zoom;
- (void)swiped:(id)swiped;
- (void)tapped:(id)tapped;
@end

@implementation PKTileImagePreviewViewController

- (PKTileImagePreviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKTileImagePreviewViewController_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PKTileImagePreviewViewController_scrollView) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

+ (void)presentWithImageView:(id)view title:(id)title presenting:(id)presenting
{
  v7 = sub_1BE052434();
  v9 = v8;
  viewCopy = view;
  presentingCopy = presenting;
  _s9PassKitUI30TileImagePreviewViewControllerC7present05imageG05title10presentingySo07UIImageG0C_SSSo06UIViewH0CtFZ_0(viewCopy, v7, v9, presentingCopy);
}

- (void)loadView
{
  selfCopy = self;
  TileImagePreviewViewController.loadView()();
}

- (void)tapped:(id)tapped
{
  selfCopy = self;
  navigationController = [(PKTileImagePreviewViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    [navigationController setNavigationBarHidden:objc_msgSend(navigationController animated:{sel_isNavigationBarHidden) ^ 1, 1}];
  }
}

- (void)swiped:(id)swiped
{
  swipedCopy = swiped;
  selfCopy = self;
  sub_1BD372104();
}

- (void)close
{
  selfCopy = self;
  sub_1BD372104();
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = _s9PassKitUI30TileImagePreviewViewControllerC14viewForZooming2inSo6UIViewCSgSo08UIScrollG0C_tF_0();

  return v6;
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  TileImagePreviewViewController.scrollViewDidZoom(_:)(zoomCopy);
}

- (PKTileImagePreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end