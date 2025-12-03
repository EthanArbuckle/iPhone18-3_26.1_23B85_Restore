@interface WFComposeViewSizing
+ (CGSize)drawerSizeFromParentSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection;
+ (CGSize)sizeForRequestType:(unint64_t)type parentSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection;
+ (CGSize)workflowViewSizeFromParentSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection;
+ (UIEdgeInsets)moduleHorizontalInsetWithTraitCollection:(id)collection safeAreaInsets:(UIEdgeInsets)insets;
+ (double)constrainMaximumContentWidth:(double)width toSize:(CGSize)size traitCollection:(id)collection;
+ (double)moduleWidthForViewSize:(CGSize)size maximumContentWidth:(double)width maximumModuleWidth:(double)moduleWidth traitCollection:(id)collection safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation WFComposeViewSizing

+ (CGSize)sizeForRequestType:(unint64_t)type parentSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection
{
  right = insets.right;
  left = insets.left;
  height = size.height;
  width = size.width;
  v11 = size.width - insets.left - insets.right;
  collectionCopy = collection;
  v13 = dbl_2746606C0[[collectionCopy userInterfaceIdiom] == 1];
  v14 = 320.0;
  if (v11 < 700.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 320.0;
  }

  if (v11 >= 1000.0)
  {
    v14 = 360.0;
  }

  if (v11 >= 1300.0)
  {
    v14 = 389.0;
  }

  v16 = ceil(v11 * v13);
  if (v16 >= v14)
  {
    v16 = v14;
  }

  if (v16 >= v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  horizontalSizeClass = [collectionCopy horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v19 = width;
  }

  else
  {
    v19 = v17;
  }

  if (type)
  {
    v20 = v11 - v17;
    if (horizontalSizeClass == 1)
    {
      v20 = width;
    }

    if (type == 1)
    {
      v19 = v20;
    }

    else
    {
      v19 = 0.0;
    }
  }

  if (v19 < width)
  {
    mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
    shouldReverseLayoutDirection = [mEMORY[0x277CFC248] shouldReverseLayoutDirection];

    if (shouldReverseLayoutDirection)
    {
      v23 = left;
    }

    else
    {
      v23 = right;
    }

    v19 = v19 + v23;
  }

  if (v19 <= 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = height;
  }

  v25 = v19;
  result.height = v24;
  result.width = v25;
  return result;
}

+ (CGSize)workflowViewSizeFromParentSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection
{
  [self sizeForRequestType:1 parentSize:collection safeAreaInsets:size.width traitCollection:{size.height, insets.top, insets.left, insets.bottom, insets.right}];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)drawerSizeFromParentSize:(CGSize)size safeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection
{
  [self sizeForRequestType:0 parentSize:collection safeAreaInsets:size.width traitCollection:{size.height, insets.top, insets.left, insets.bottom, insets.right}];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (double)constrainMaximumContentWidth:(double)width toSize:(CGSize)size traitCollection:(id)collection
{
  width = size.width;
  collectionCopy = collection;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  if (width >= 1300.0)
  {
    v9 = userInterfaceIdiom;
    if ([collectionCopy horizontalSizeClass] == 2)
    {
      width = width * dbl_2746606D0[v9 == 1];
    }
  }

  return width;
}

+ (UIEdgeInsets)moduleHorizontalInsetWithTraitCollection:(id)collection safeAreaInsets:(UIEdgeInsets)insets
{
  v4 = insets.left + 20.0;
  v5 = insets.right + 20.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v5;
  result.bottom = v7;
  result.left = v4;
  result.top = v6;
  return result;
}

+ (double)moduleWidthForViewSize:(CGSize)size maximumContentWidth:(double)width maximumModuleWidth:(double)moduleWidth traitCollection:(id)collection safeAreaInsets:(UIEdgeInsets)insets
{
  if (width <= 0.0 || size.width <= width)
  {
    width = size.width;
  }

  else
  {
    width = width;
  }

  [self moduleHorizontalInsetWithTraitCollection:collection safeAreaInsets:{insets.top, insets.left, insets.bottom, insets.right}];
  moduleWidthCopy = width - v10 - v11;
  if (moduleWidthCopy > moduleWidth && moduleWidth > 0.0)
  {
    moduleWidthCopy = moduleWidth;
  }

  return fmax(moduleWidthCopy, 0.0);
}

@end