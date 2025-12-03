@interface PXLemonadeCollectionCustomizationFoldersFactory
+ (id)foldersCustomizationViewControllerWithRootCollectionList:(id)list completion:(id)completion;
- (PXLemonadeCollectionCustomizationFoldersFactory)init;
@end

@implementation PXLemonadeCollectionCustomizationFoldersFactory

- (PXLemonadeCollectionCustomizationFoldersFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersFactory();
  return [(PXLemonadeCollectionCustomizationFoldersFactory *)&v3 init];
}

+ (id)foldersCustomizationViewControllerWithRootCollectionList:(id)list completion:(id)completion
{
  v5 = _Block_copy(completion);
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

  listCopy = list;
  v8 = sub_1A48C0E04(listCopy, v5, v6);
  sub_1A3C33378(v5);

  return v8;
}

@end