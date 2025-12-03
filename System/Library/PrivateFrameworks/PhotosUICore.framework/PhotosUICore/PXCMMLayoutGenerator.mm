@interface PXCMMLayoutGenerator
+ (id)_defaultEditorialLayoutGeneratorWithReferenceSize:(CGSize)size headerHeight:(double)height interItemSpacing:(CGSize)spacing;
+ (id)_defaultGridLayoutGeneratorWithReferenceSize:(CGSize)size additionalTileCount:(unint64_t)count headerHeight:(double)height itemSize:(CGSize)itemSize interItemSpacing:(CGSize)spacing contentInsets:(UIEdgeInsets)insets;
+ (id)_gridLayoutGeneratorWithReferenceSize:(CGSize)size columnCount:(unint64_t)count additionalTileCount:(unint64_t)tileCount headerHeight:(double)height interItemSpacing:(CGSize)spacing;
+ (id)layoutGeneratorForLayoutType:(int64_t)type withReferenceSize:(CGSize)size additionalTileCount:(unint64_t)count headerHeight:(double)height itemSize:(CGSize)itemSize interItemSpacing:(CGSize)spacing contentInsets:(UIEdgeInsets)insets;
@end

@implementation PXCMMLayoutGenerator

+ (id)_defaultEditorialLayoutGeneratorWithReferenceSize:(CGSize)size headerHeight:(double)height interItemSpacing:(CGSize)spacing
{
  width = spacing.width;
  height = size.height;
  v8 = size.width;
  v9 = objc_alloc_init(PXEditorialLayoutMetrics);
  [(PXLayoutMetrics *)v9 setReferenceSize:v8, height];
  [(PXEditorialLayoutMetrics *)v9 setInterTileSpacing:width];
  [(PXEditorialLayoutMetrics *)v9 setNumberOfColumns:3];
  [(PXEditorialLayoutMetrics *)v9 setLowerItemCountThreshold:6];
  [(PXEditorialLayoutMetrics *)v9 setPadding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  [(PXEditorialLayoutMetrics *)v9 setHeaderHeight:height];
  v10 = [[PXEditorialLayoutGenerator alloc] initWithMetrics:v9];

  return v10;
}

+ (id)_gridLayoutGeneratorWithReferenceSize:(CGSize)size columnCount:(unint64_t)count additionalTileCount:(unint64_t)tileCount headerHeight:(double)height interItemSpacing:(CGSize)spacing
{
  height = spacing.height;
  width = spacing.width;
  v11 = size.height;
  v12 = size.width;
  if (!count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMLayoutGenerator.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"columnCount > 0"}];
  }

  v13 = objc_alloc_init(off_1E7721748);
  [v13 setAxis:1];
  [v13 setReferenceSize:{v12, v11}];
  [v13 setDisplaysHeaderTile:height > 0.0];
  [v13 setHeaderSize:{height, height}];
  [v13 setInterItemSpacing:{width, height}];
  [v13 setContentInsets:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  [v13 setAdditionalTileCount:tileCount];
  [v13 referenceSize];
  [v13 contentInsets];
  PXEdgeInsetsInsetSize();
}

+ (id)_defaultGridLayoutGeneratorWithReferenceSize:(CGSize)size additionalTileCount:(unint64_t)count headerHeight:(double)height itemSize:(CGSize)itemSize interItemSpacing:(CGSize)spacing contentInsets:(UIEdgeInsets)insets
{
  height = itemSize.height;
  width = itemSize.width;
  v12 = size.height;
  v13 = size.width;
  v14 = objc_alloc_init(off_1E7721748);
  [v14 setAxis:1];
  [v14 setReferenceSize:{v13, v12}];
  [v14 setDisplaysHeaderTile:height > 0.0];
  [v14 setHeaderSize:{height, height}];
  [v14 setItemSize:{width, height}];
  [v14 setInterItemSpacing:{spacing.width, spacing.height}];
  [v14 setContentInsets:{insets.top, insets.left, insets.bottom, insets.right}];
  [v14 setAdditionalTileCount:count];
  v15 = [[off_1E7721740 alloc] initWithMetrics:v14];

  return v15;
}

+ (id)layoutGeneratorForLayoutType:(int64_t)type withReferenceSize:(CGSize)size additionalTileCount:(unint64_t)count headerHeight:(double)height itemSize:(CGSize)itemSize interItemSpacing:(CGSize)spacing contentInsets:(UIEdgeInsets)insets
{
  v9 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_11;
      }

      v10 = [self _defaultEditorialLayoutGeneratorWithReferenceSize:1 headerHeight:count interItemSpacing:{size.width, size.height, height, spacing.width, spacing.height}];
    }

    else
    {
      v10 = [self _defaultGridLayoutGeneratorWithReferenceSize:count additionalTileCount:size.width headerHeight:size.height itemSize:height interItemSpacing:itemSize.width contentInsets:{itemSize.height, spacing.width, spacing.height, *&insets.top, *&insets.left, *&insets.bottom, *&insets.right}];
    }

    goto LABEL_10;
  }

  if (type == 2 || type == 3 || type == 4)
  {
    v10 = [self _gridLayoutGeneratorWithReferenceSize:size.width columnCount:size.height additionalTileCount:height headerHeight:spacing.width interItemSpacing:spacing.height];
LABEL_10:
    v9 = v10;
  }

LABEL_11:

  return v9;
}

@end