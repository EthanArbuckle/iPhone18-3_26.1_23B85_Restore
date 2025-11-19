@interface PXSmartAlbumTextCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
@end

@implementation PXSmartAlbumTextCondition

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:402];
  [v3 setStringValue:&stru_1F1741150];
  [v3 setComparator:20];

  return v3;
}

@end