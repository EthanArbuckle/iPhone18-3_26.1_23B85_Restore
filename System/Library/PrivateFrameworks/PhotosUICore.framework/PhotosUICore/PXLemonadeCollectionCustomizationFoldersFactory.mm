@interface PXLemonadeCollectionCustomizationFoldersFactory
+ (id)foldersCustomizationViewControllerWithRootCollectionList:(id)a3 completion:(id)a4;
- (PXLemonadeCollectionCustomizationFoldersFactory)init;
@end

@implementation PXLemonadeCollectionCustomizationFoldersFactory

- (PXLemonadeCollectionCustomizationFoldersFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersFactory();
  return [(PXLemonadeCollectionCustomizationFoldersFactory *)&v3 init];
}

+ (id)foldersCustomizationViewControllerWithRootCollectionList:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1A42D6208;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = sub_1A48C0E04(v7, v5, v6);
  sub_1A3C33378(v5);

  return v8;
}

@end