@interface PXSmartAlbumDateCapturedCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
@end

@implementation PXSmartAlbumDateCapturedCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:200];
  date = [MEMORY[0x1E695DF00] date];
  [v3 setDateValue:date];

  [v3 setComparator:1];

  return v3;
}

@end