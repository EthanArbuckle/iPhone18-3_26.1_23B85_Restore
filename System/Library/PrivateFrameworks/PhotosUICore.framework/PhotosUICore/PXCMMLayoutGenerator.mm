@interface PXCMMLayoutGenerator
+ (id)_defaultEditorialLayoutGeneratorWithReferenceSize:(CGSize)a3 headerHeight:(double)a4 interItemSpacing:(CGSize)a5;
+ (id)_defaultGridLayoutGeneratorWithReferenceSize:(CGSize)a3 additionalTileCount:(unint64_t)a4 headerHeight:(double)a5 itemSize:(CGSize)a6 interItemSpacing:(CGSize)a7 contentInsets:(UIEdgeInsets)a8;
+ (id)_gridLayoutGeneratorWithReferenceSize:(CGSize)a3 columnCount:(unint64_t)a4 additionalTileCount:(unint64_t)a5 headerHeight:(double)a6 interItemSpacing:(CGSize)a7;
+ (id)layoutGeneratorForLayoutType:(int64_t)a3 withReferenceSize:(CGSize)a4 additionalTileCount:(unint64_t)a5 headerHeight:(double)a6 itemSize:(CGSize)a7 interItemSpacing:(CGSize)a8 contentInsets:(UIEdgeInsets)a9;
@end

@implementation PXCMMLayoutGenerator

+ (id)_defaultEditorialLayoutGeneratorWithReferenceSize:(CGSize)a3 headerHeight:(double)a4 interItemSpacing:(CGSize)a5
{
  width = a5.width;
  height = a3.height;
  v8 = a3.width;
  v9 = objc_alloc_init(PXEditorialLayoutMetrics);
  [(PXLayoutMetrics *)v9 setReferenceSize:v8, height];
  [(PXEditorialLayoutMetrics *)v9 setInterTileSpacing:width];
  [(PXEditorialLayoutMetrics *)v9 setNumberOfColumns:3];
  [(PXEditorialLayoutMetrics *)v9 setLowerItemCountThreshold:6];
  [(PXEditorialLayoutMetrics *)v9 setPadding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  [(PXEditorialLayoutMetrics *)v9 setHeaderHeight:a4];
  v10 = [[PXEditorialLayoutGenerator alloc] initWithMetrics:v9];

  return v10;
}

+ (id)_gridLayoutGeneratorWithReferenceSize:(CGSize)a3 columnCount:(unint64_t)a4 additionalTileCount:(unint64_t)a5 headerHeight:(double)a6 interItemSpacing:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v11 = a3.height;
  v12 = a3.width;
  if (!a4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PXCMMLayoutGenerator.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"columnCount > 0"}];
  }

  v13 = objc_alloc_init(off_1E7721748);
  [v13 setAxis:1];
  [v13 setReferenceSize:{v12, v11}];
  [v13 setDisplaysHeaderTile:a6 > 0.0];
  [v13 setHeaderSize:{a6, a6}];
  [v13 setInterItemSpacing:{width, height}];
  [v13 setContentInsets:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  [v13 setAdditionalTileCount:a5];
  [v13 referenceSize];
  [v13 contentInsets];
  PXEdgeInsetsInsetSize();
}

+ (id)_defaultGridLayoutGeneratorWithReferenceSize:(CGSize)a3 additionalTileCount:(unint64_t)a4 headerHeight:(double)a5 itemSize:(CGSize)a6 interItemSpacing:(CGSize)a7 contentInsets:(UIEdgeInsets)a8
{
  height = a6.height;
  width = a6.width;
  v12 = a3.height;
  v13 = a3.width;
  v14 = objc_alloc_init(off_1E7721748);
  [v14 setAxis:1];
  [v14 setReferenceSize:{v13, v12}];
  [v14 setDisplaysHeaderTile:a5 > 0.0];
  [v14 setHeaderSize:{a5, a5}];
  [v14 setItemSize:{width, height}];
  [v14 setInterItemSpacing:{a7.width, a7.height}];
  [v14 setContentInsets:{a8.top, a8.left, a8.bottom, a8.right}];
  [v14 setAdditionalTileCount:a4];
  v15 = [[off_1E7721740 alloc] initWithMetrics:v14];

  return v15;
}

+ (id)layoutGeneratorForLayoutType:(int64_t)a3 withReferenceSize:(CGSize)a4 additionalTileCount:(unint64_t)a5 headerHeight:(double)a6 itemSize:(CGSize)a7 interItemSpacing:(CGSize)a8 contentInsets:(UIEdgeInsets)a9
{
  v9 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_11;
      }

      v10 = [a1 _defaultEditorialLayoutGeneratorWithReferenceSize:1 headerHeight:a5 interItemSpacing:{a4.width, a4.height, a6, a8.width, a8.height}];
    }

    else
    {
      v10 = [a1 _defaultGridLayoutGeneratorWithReferenceSize:a5 additionalTileCount:a4.width headerHeight:a4.height itemSize:a6 interItemSpacing:a7.width contentInsets:{a7.height, a8.width, a8.height, *&a9.top, *&a9.left, *&a9.bottom, *&a9.right}];
    }

    goto LABEL_10;
  }

  if (a3 == 2 || a3 == 3 || a3 == 4)
  {
    v10 = [a1 _gridLayoutGeneratorWithReferenceSize:a4.width columnCount:a4.height additionalTileCount:a6 headerHeight:a8.width interItemSpacing:a8.height];
LABEL_10:
    v9 = v10;
  }

LABEL_11:

  return v9;
}

@end