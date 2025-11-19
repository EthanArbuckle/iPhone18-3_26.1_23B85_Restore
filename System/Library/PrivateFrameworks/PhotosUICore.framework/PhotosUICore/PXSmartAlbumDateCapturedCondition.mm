@interface PXSmartAlbumDateCapturedCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
@end

@implementation PXSmartAlbumDateCapturedCondition

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:200];
  v4 = [MEMORY[0x1E695DF00] date];
  [v3 setDateValue:v4];

  [v3 setComparator:1];

  return v3;
}

@end