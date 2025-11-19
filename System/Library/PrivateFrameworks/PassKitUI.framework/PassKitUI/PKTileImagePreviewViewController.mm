@interface PKTileImagePreviewViewController
+ (void)presentWithImageView:(id)a3 title:(id)a4 presenting:(id)a5;
- (PKTileImagePreviewViewController)initWithCoder:(id)a3;
- (PKTileImagePreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)close;
- (void)loadView;
- (void)scrollViewDidZoom:(id)a3;
- (void)swiped:(id)a3;
- (void)tapped:(id)a3;
@end

@implementation PKTileImagePreviewViewController

- (PKTileImagePreviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___PKTileImagePreviewViewController_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PKTileImagePreviewViewController_scrollView) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

+ (void)presentWithImageView:(id)a3 title:(id)a4 presenting:(id)a5
{
  v7 = sub_1BE052434();
  v9 = v8;
  v10 = a3;
  v11 = a5;
  _s9PassKitUI30TileImagePreviewViewControllerC7present05imageG05title10presentingySo07UIImageG0C_SSSo06UIViewH0CtFZ_0(v10, v7, v9, v11);
}

- (void)loadView
{
  v2 = self;
  TileImagePreviewViewController.loadView()();
}

- (void)tapped:(id)a3
{
  v5 = self;
  v3 = [(PKTileImagePreviewViewController *)v5 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:objc_msgSend(v3 animated:{sel_isNavigationBarHidden) ^ 1, 1}];
  }
}

- (void)swiped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD372104();
}

- (void)close
{
  v2 = self;
  sub_1BD372104();
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s9PassKitUI30TileImagePreviewViewControllerC14viewForZooming2inSo6UIViewCSgSo08UIScrollG0C_tF_0();

  return v6;
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  TileImagePreviewViewController.scrollViewDidZoom(_:)(v4);
}

- (PKTileImagePreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end