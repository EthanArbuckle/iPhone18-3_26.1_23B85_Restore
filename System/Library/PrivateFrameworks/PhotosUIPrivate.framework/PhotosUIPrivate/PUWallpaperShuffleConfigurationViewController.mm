@interface PUWallpaperShuffleConfigurationViewController
- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithPhotoLibrary:(id)library style:(int64_t)style posterConfiguration:(id)configuration centerMedia:(id)media;
- (_TtP15PhotosUIPrivate53PUWallpaperShuffleConfigurationViewControllerDelegate_)delegate;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setDelegate:(id)delegate;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUWallpaperShuffleConfigurationViewController

- (_TtP15PhotosUIPrivate53PUWallpaperShuffleConfigurationViewControllerDelegate_)delegate
{
  v2 = sub_1B3728F34();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3728FA4();
}

- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithPhotoLibrary:(id)library style:(int64_t)style posterConfiguration:(id)configuration centerMedia:(id)media
{
  libraryCopy = library;
  configurationCopy = configuration;
  mediaCopy = media;
  return sub_1B37291D0(libraryCopy, style, configuration, media);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B3729934(appear);
}

- (_TtC15PhotosUIPrivate45PUWallpaperShuffleConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B3C9C5E8();
  }

  bundleCopy = bundle;
  PUWallpaperShuffleConfigurationViewController.init(nibName:bundle:)();
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  PUWallpaperShuffleConfigurationViewController.presentationControllerWillDismiss(_:)(dismissCopy);
}

@end