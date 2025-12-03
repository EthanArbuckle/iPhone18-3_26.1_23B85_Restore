@interface PXLemonadeViewControllerSwiftFactory
+ (id)viewControllerForSidebarNavigationDestination:(id)destination photoLibrary:(id)library actionProviderDelegate:(id)delegate;
+ (id)viewControllerWithPhotoLibrary:(id)library destination:(id)destination;
+ (unint64_t)sidebarRoutingOptionsForDestination:(id)destination;
- (PXLemonadeViewControllerSwiftFactory)init;
@end

@implementation PXLemonadeViewControllerSwiftFactory

+ (id)viewControllerWithPhotoLibrary:(id)library destination:(id)destination
{
  type metadata accessor for RootViewControllerFactory();
  v6 = objc_opt_self();
  libraryCopy = library;
  destinationCopy = destination;
  sub_1A3C467C8(libraryCopy, [v6 defaultManager], destination);
}

+ (unint64_t)sidebarRoutingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  v4 = _s12PhotosUICore29LemonadeViewControllerFactoryC21sidebarRoutingOptions3forSo024PXProgrammaticNavigationhI0VSo0kL11DestinationC_tFZ_0(destinationCopy);

  return v4;
}

+ (id)viewControllerForSidebarNavigationDestination:(id)destination photoLibrary:(id)library actionProviderDelegate:(id)delegate
{
  destinationCopy = destination;
  libraryCopy = library;
  swift_unknownObjectRetain();
  v9 = _s12PhotosUICore29LemonadeViewControllerFactoryC04rootdE031forSidebarNavigationDestination12photoLibrary22actionProviderDelegate09selectionP019pickerConfigurationSo06UIViewE0CSo014PXProgrammaticjK0C_So07PHPhotoM0CSo08PXActionoP0_pSgAA0c6Pickera9SelectionP0_pSgAA0xS0CSgtFZ_0(destinationCopy, libraryCopy, delegate, 0, 0, 0);

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