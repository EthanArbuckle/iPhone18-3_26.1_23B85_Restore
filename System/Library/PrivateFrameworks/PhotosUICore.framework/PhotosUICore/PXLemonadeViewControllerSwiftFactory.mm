@interface PXLemonadeViewControllerSwiftFactory
+ (id)viewControllerForSidebarNavigationDestination:(id)a3 photoLibrary:(id)a4 actionProviderDelegate:(id)a5;
+ (id)viewControllerWithPhotoLibrary:(id)a3 destination:(id)a4;
+ (unint64_t)sidebarRoutingOptionsForDestination:(id)a3;
- (PXLemonadeViewControllerSwiftFactory)init;
@end

@implementation PXLemonadeViewControllerSwiftFactory

+ (id)viewControllerWithPhotoLibrary:(id)a3 destination:(id)a4
{
  type metadata accessor for RootViewControllerFactory();
  v6 = objc_opt_self();
  v7 = a3;
  v8 = a4;
  sub_1A3C467C8(v7, [v6 defaultManager], a4);
}

+ (unint64_t)sidebarRoutingOptionsForDestination:(id)a3
{
  v3 = a3;
  v4 = _s12PhotosUICore29LemonadeViewControllerFactoryC21sidebarRoutingOptions3forSo024PXProgrammaticNavigationhI0VSo0kL11DestinationC_tFZ_0(v3);

  return v4;
}

+ (id)viewControllerForSidebarNavigationDestination:(id)a3 photoLibrary:(id)a4 actionProviderDelegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = _s12PhotosUICore29LemonadeViewControllerFactoryC04rootdE031forSidebarNavigationDestination12photoLibrary22actionProviderDelegate09selectionP019pickerConfigurationSo06UIViewE0CSo014PXProgrammaticjK0C_So07PHPhotoM0CSo08PXActionoP0_pSgAA0c6Pickera9SelectionP0_pSgAA0xS0CSgtFZ_0(v7, v8, a5, 0, 0, 0);

  swift_unknownObjectRelease();

  return v9;
}

- (PXLemonadeViewControllerSwiftFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PXLemonadeViewControllerSwiftFactory *)&v3 init];
}

@end