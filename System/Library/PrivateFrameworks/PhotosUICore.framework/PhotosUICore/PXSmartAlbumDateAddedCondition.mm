@interface PXSmartAlbumDateAddedCondition
+ (id)defaultSingleQueryForEditingContext:(id)context;
@end

@implementation PXSmartAlbumDateAddedCondition

+ (id)defaultSingleQueryForEditingContext:(id)context
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:201];
  [v3 setIntegerValue:30];
  [v3 setComparator:40];
  [v3 setUnit:1];

  return v3;
}

@end