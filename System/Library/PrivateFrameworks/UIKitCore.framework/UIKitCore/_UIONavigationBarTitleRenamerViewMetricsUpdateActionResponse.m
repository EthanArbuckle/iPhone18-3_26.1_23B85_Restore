@interface _UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse
- (CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse)initWithRenderID:(unint64_t)a3 contextID:(unsigned int)a4 intrinsicContentSize:(CGSize)a5 bounds:(CGRect)a6 horizontalTextInset:(double)a7;
- (double)horizontalTextInset;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
@end

@implementation _UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse

- (_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse)initWithRenderID:(unint64_t)a3 contextID:(unsigned int)a4 intrinsicContentSize:(CGSize)a5 bounds:(CGRect)a6 horizontalTextInset:(double)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a5.height;
  v13 = a5.width;
  v14 = *&a4;
  v17 = objc_alloc_init(MEMORY[0x1E698E700]);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v17 setObject:v18 forSetting:0];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  [v17 setObject:v19 forSetting:1];

  v20 = [MEMORY[0x1E696B098] valueWithCGSize:{v13, v12}];
  [v17 setObject:v20 forSetting:2];

  v21 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v17 setObject:v21 forSetting:3];

  v22 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  [v17 setObject:v22 forSetting:4];

  v23 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)self initWithInfo:v17 error:0];
  return v23;
}

- (unint64_t)sourceLayerRenderId
{
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (unsigned)sourceContextId
{
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)self info];
  v3 = [v2 objectForSetting:2];
  [v3 CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)bounds
{
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)self info];
  v3 = [v2 objectForSetting:3];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)horizontalTextInset
{
  v2 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateActionResponse *)self info];
  v3 = [v2 objectForSetting:4];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end