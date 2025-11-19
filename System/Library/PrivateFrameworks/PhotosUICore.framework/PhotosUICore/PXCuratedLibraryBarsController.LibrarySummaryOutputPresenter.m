@interface PXCuratedLibraryBarsController.LibrarySummaryOutputPresenter
- (NSString)title;
- (_TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter)init;
- (void)setTitle:(id)a3;
@end

@implementation PXCuratedLibraryBarsController.LibrarySummaryOutputPresenter

- (_TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter)init
{
  v3 = (self + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_onChange);
  v5 = _s29LibrarySummaryOutputPresenterCMa();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(PXCuratedLibraryBarsController.LibrarySummaryOutputPresenter *)&v7 init];
}

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD29LibrarySummaryOutputPresenter_title + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1A524C674();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1A3C9807C(v4, v6);
}

@end