@interface PUWallpaperShuffleConfigurationViewController
- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithPhotoLibrary:(id)a3 style:(int64_t)a4 posterConfiguration:(id)a5 centerMedia:(id)a6;
- (_TtP15PhotosUIPrivate53PUWallpaperShuffleConfigurationViewControllerDelegate_)delegate;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PUWallpaperShuffleConfigurationViewController

- (_TtP15PhotosUIPrivate53PUWallpaperShuffleConfigurationViewControllerDelegate_)delegate
{
  v2 = sub_1B3728F34();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B3728FA4();
}

- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithPhotoLibrary:(id)a3 style:(int64_t)a4 posterConfiguration:(id)a5 centerMedia:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  return sub_1B37291D0(v9, a4, a5, a6);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1B3729934(a3);
}

- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B3C9C5E8();
  }

  v5 = a4;
  PUWallpaperShuffleConfigurationViewController.init(nibName:bundle:)();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  PUWallpaperShuffleConfigurationViewController.presentationControllerWillDismiss(_:)(v4);
}

@end