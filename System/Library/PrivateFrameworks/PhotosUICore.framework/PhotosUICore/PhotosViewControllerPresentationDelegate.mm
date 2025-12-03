@interface PhotosViewControllerPresentationDelegate
- (BOOL)presentPhotosViewControllerWithConfiguration:(id)configuration;
- (_TtC12PhotosUICoreP33_128B04DDBCBA4CE932CB50ACF858600440PhotosViewControllerPresentationDelegate)init;
@end

@implementation PhotosViewControllerPresentationDelegate

- (BOOL)presentPhotosViewControllerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1A4134B30(configurationCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (_TtC12PhotosUICoreP33_128B04DDBCBA4CE932CB50ACF858600440PhotosViewControllerPresentationDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end