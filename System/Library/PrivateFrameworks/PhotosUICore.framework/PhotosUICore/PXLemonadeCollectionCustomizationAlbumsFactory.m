@interface PXLemonadeCollectionCustomizationAlbumsFactory
+ (id)albumsCustomizationViewControllerWithRootCollectionList:(id)a3 preselectedAssets:(id)a4 completion:(id)a5;
- (PXLemonadeCollectionCustomizationAlbumsFactory)init;
@end

@implementation PXLemonadeCollectionCustomizationAlbumsFactory

- (PXLemonadeCollectionCustomizationAlbumsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsFactory();
  return [(PXLemonadeCollectionCustomizationAlbumsFactory *)&v3 init];
}

+ (id)albumsCustomizationViewControllerWithRootCollectionList:(id)a3 preselectedAssets:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (a4)
  {
    sub_1A3C52C70(0, &qword_1EB126660);
    sub_1A524CA34();
  }

  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
  }

  v8 = a3;
  sub_1A42D603C();
}

@end