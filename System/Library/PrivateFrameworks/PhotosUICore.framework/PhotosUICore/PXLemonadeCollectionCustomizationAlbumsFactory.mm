@interface PXLemonadeCollectionCustomizationAlbumsFactory
+ (id)albumsCustomizationViewControllerWithRootCollectionList:(id)list preselectedAssets:(id)assets completion:(id)completion;
- (PXLemonadeCollectionCustomizationAlbumsFactory)init;
@end

@implementation PXLemonadeCollectionCustomizationAlbumsFactory

- (PXLemonadeCollectionCustomizationAlbumsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsFactory();
  return [(PXLemonadeCollectionCustomizationAlbumsFactory *)&v3 init];
}

+ (id)albumsCustomizationViewControllerWithRootCollectionList:(id)list preselectedAssets:(id)assets completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (assets)
  {
    sub_1A3C52C70(0, &qword_1EB126660);
    sub_1A524CA34();
  }

  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
  }

  listCopy = list;
  sub_1A42D603C();
}

@end