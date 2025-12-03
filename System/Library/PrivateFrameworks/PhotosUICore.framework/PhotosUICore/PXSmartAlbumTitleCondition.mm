@interface PXSmartAlbumTitleCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
@end

@implementation PXSmartAlbumTitleCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:401];
  [v3 setStringValue:&stru_1F1741150];
  [v3 setComparator:20];

  return v3;
}

@end