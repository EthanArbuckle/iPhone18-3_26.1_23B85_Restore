@interface PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController
- (_TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController)initWithCoder:(id)coder;
- (_TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController

- (_TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration;
  *v3 = 0;
  *(v3 + 4) = 513;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)willMoveToParentViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController();
  v4 = v10.receiver;
  controllerCopy = controller;
  [(PXLargeNavigationTitleIntrospectionView.IntrospectionUIViewController *)&v10 willMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
    v6 = *&v4[OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration];
    v7 = v4[OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration + 8];
    v8 = v4[OBJC_IVAR____TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController_configuration + 9];
    v9 = controllerCopy;
    sub_1A4676AC4(v6, v7 | (v8 << 8), controllerCopy);
  }
}

- (_TtCV12PhotosUICoreP33_B710F56EBF55D875B7CD9A668821701039PXLargeNavigationTitleIntrospectionView29IntrospectionUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end