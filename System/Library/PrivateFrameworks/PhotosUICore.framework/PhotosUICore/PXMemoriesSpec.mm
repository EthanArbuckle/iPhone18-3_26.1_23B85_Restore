@interface PXMemoriesSpec
- (CGPoint)borderOffset;
- (CGPoint)highlightedSectionHeaderOffset;
- (CGSize)favoriteBadgeSize;
- (Class)feedDataSourceManagerClass;
- (Class)feedLayoutMetricsClass;
- (PXMemoriesSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style;
- (UIEdgeInsets)favoriteBadgeInset;
- (UIEdgeInsets)feedEntryEdgeInsets;
- (UIEdgeInsets)layoutInsets;
- (double)_feedInteritemSpacingForReferenceSize:(CGSize)size;
- (double)feedHeroImagePaddingTop;
- (double)feedSecondaryImagePaddingBottom;
- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor;
- (id)newLayoutGeneratorWithMetrics:(id)metrics;
- (int64_t)feedSectionLayoutAxis;
- (void)_calculateSectionInsetWithExtendedTraitCollection:(id)collection;
@end

@implementation PXMemoriesSpec

- (CGPoint)borderOffset
{
  x = self->_borderOffset.x;
  y = self->_borderOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)highlightedSectionHeaderOffset
{
  x = self->_highlightedSectionHeaderOffset.x;
  y = self->_highlightedSectionHeaderOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)favoriteBadgeInset
{
  top = self->_favoriteBadgeInset.top;
  left = self->_favoriteBadgeInset.left;
  bottom = self->_favoriteBadgeInset.bottom;
  right = self->_favoriteBadgeInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)favoriteBadgeSize
{
  width = self->_favoriteBadgeSize.width;
  height = self->_favoriteBadgeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)feedEntryEdgeInsets
{
  top = self->_feedEntryEdgeInsets.top;
  left = self->_feedEntryEdgeInsets.left;
  bottom = self->_feedEntryEdgeInsets.bottom;
  right = self->_feedEntryEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_feedInteritemSpacingForReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PXMemoriesSpec *)self feedInteritemSpacing];
  v8 = v7;
  if (self->_idiom != 4)
  {
    return v8;
  }

  feedAxis = [(PXMemoriesSpec *)self feedAxis];
  [(PXMemoriesSpec *)self contentGuideInsetsForScrollAxis:feedAxis];
  switch(feedAxis)
  {
    case 1:
      v15 = width - v11 - v13;
      return v15 * 0.05;
    case 2:
      v15 = height - v10 - v12;
      return v15 * 0.05;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesSpec.m" lineNumber:465 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return v8;
}

- (void)_calculateSectionInsetWithExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v6 = *(off_1E7721FA8 + 2);
  v7 = *(off_1E7721FA8 + 3);
  if ([(PXMemoriesSpec *)self userInterfaceFeature]!= 2)
  {
    if (self->_idiom == 3)
    {
      PXEdgeInsetsMake();
    }

    [(PXMemoriesSpec *)self feedAxis];
    [collectionCopy layoutReferenceSize];
    PXSizeIsNull();
  }

  self->_feedEntryEdgeInsets.top = v5;
  self->_feedEntryEdgeInsets.left = v4;
  self->_feedEntryEdgeInsets.bottom = v6;
  self->_feedEntryEdgeInsets.right = v7;
}

- (UIEdgeInsets)layoutInsets
{
  if ([(PXMemoriesSpec *)self userInterfaceFeature]!= 2)
  {
    if (self->_idiom == 3)
    {
      if ([(PXMemoriesSpec *)self _style]== 2)
      {
        goto LABEL_2;
      }
    }

    else if ([(PXMemoriesSpec *)self sizeClass]== 2 && [(PXMemoriesSpec *)self userInterfaceFeature]== 1)
    {
      [(PXMemoriesSpec *)self feedInteritemSpacing];
    }

    PXEdgeInsetsMake();
  }

LABEL_2:
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)feedSecondaryImagePaddingBottom
{
  result = 67.0;
  if (self->_idiom != 3)
  {
    return 22.0;
  }

  return result;
}

- (double)feedHeroImagePaddingTop
{
  result = 0.0;
  if (self->_idiom == 3)
  {
    return 22.0;
  }

  return result;
}

- (int64_t)feedSectionLayoutAxis
{
  if ([(PXMemoriesSpec *)self userInterfaceFeature]== 2 || self->_idiom == 3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)newLayoutGeneratorWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  userInterfaceFeature = [(PXMemoriesSpec *)self userInterfaceFeature];
  if ([(PXMemoriesSpec *)self _style]== 2)
  {
    [metricsCopy referenceSize];
    v8 = v7;
    v10 = v9;
    v11 = objc_alloc_init(off_1E7721748);
    [v11 setReferenceSize:{v8, v10}];
    [v11 setAxis:1];
    if ([(PXMemoriesSpec *)self idiom]== 3)
    {
      PXEdgeInsetsMake();
    }

    if (userInterfaceFeature == 1)
    {
      [off_1E7721798 memoriesFeedPortraitEdgeInsetsInterpolator];
    }

    else
    {
      [off_1E7721798 memoriesDetailsEdgeInsetsInterpolator];
    }
    v13 = ;
    [(PXMemoriesSpec *)self sizeClass];
    spec = [metricsCopy spec];
    [spec safeAreaInsets];
    v16 = v15;
    v18 = v17;

    [v13 valueForMetric:v8 - v16 - v18];
    PXEdgeInsetsMake();
  }

  if (userInterfaceFeature == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesSpec.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedWidgetLayoutMetrics class]]"}];
    }

    v12 = [[PXMemoriesFeedWidgetLayoutGenerator alloc] initWithMetrics:metricsCopy];
  }

  else
  {
    v12 = [[PXMemoriesFeedEntryLayoutGenerator alloc] initWithMetrics:metricsCopy];
    [(PXMemoriesFeedWidgetLayoutGenerator *)v12 setLayoutAxis:[(PXMemoriesSpec *)self feedSectionLayoutAxis]];
  }

  return v12;
}

- (Class)feedLayoutMetricsClass
{
  if ([(PXMemoriesSpec *)self userInterfaceFeature]> 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (Class)feedDataSourceManagerClass
{
  [(PXMemoriesSpec *)self userInterfaceFeature];
  v2 = objc_opt_class();

  return v2;
}

- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor
{
  var1 = descriptor->var1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PXMemoriesSpec_createViewSpecWithDescriptor___block_invoke;
  aBlock[3] = &unk_1E774A8B8;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  var0 = descriptor->var0;
  if (descriptor->var0 > 2002)
  {
    if ((var0 - 2003) < 2)
    {
      (*(v6 + 2))(v6, var0 == 2003);
      PXViewSpecContextForMemoryTile();
    }

    if ((var0 - 2006) < 2)
    {
      (*(v6 + 2))(v6, var0 == 2006);
      PXViewSpecContextForMemoryTile();
    }

    if (var0 == 2005)
    {
      PXViewSpecContextForMemoryTile();
    }

    goto LABEL_17;
  }

  if (var0 == 2000)
  {
    pXMemoriesSpec = objc_alloc_init(off_1E7721968);
    [(PXMemoriesSpec *)self configureViewSpec:pXMemoriesSpec];
    selectionHighlightColor = [(PXMemoriesSpec *)self selectionHighlightColor];
    [pXMemoriesSpec setSelectionHighlightColor:selectionHighlightColor];

    goto LABEL_22;
  }

  if (var0 == 2001)
  {
    pXMemoriesSpec = objc_alloc_init(off_1E7721968);
    [(PXMemoriesSpec *)self configureViewSpec:pXMemoriesSpec];
    if ((var1 & 2) != 0)
    {
      borderColor = [(PXMemoriesSpec *)self borderColor];
      [pXMemoriesSpec setBorderColor:borderColor];

      [(PXMemoriesSpec *)self borderWidth];
      [pXMemoriesSpec setBorderWidth:?];
      [(PXMemoriesSpec *)self collectionTileImageCornerRadius];
      v12 = v15 + v15;
    }

    else
    {
      [pXMemoriesSpec setBorderColor:0];
      v12 = 0.0;
      [pXMemoriesSpec setBorderWidth:0.0];
    }

    [pXMemoriesSpec setCornerRadius:v12];
    goto LABEL_22;
  }

  if (var0 != 2002)
  {
LABEL_17:
    v18.receiver = self;
    v18.super_class = PXMemoriesSpec;
    var2 = descriptor->var2;
    v19[0] = *&descriptor->var0;
    v19[1] = var2;
    pXMemoriesSpec = [(PXMemoriesSpec *)&v18 createViewSpecWithDescriptor:v19, self, PXMemoriesSpec];
    goto LABEL_22;
  }

  pXMemoriesSpec = objc_alloc_init(off_1E7721788);
  [(PXMemoriesSpec *)self configureViewSpec:pXMemoriesSpec];
  idiom = self->_idiom;
  if (idiom != 4)
  {
    if (idiom == 3)
    {
      PXFontWithTextStyle();
    }

    PXFontWithTextStyleSymbolicTraits();
  }

  v16 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB980]];
  [pXMemoriesSpec setFont:v16];

  [pXMemoriesSpec setCapitalization:0];
  [pXMemoriesSpec setNumberOfLines:1];
  [pXMemoriesSpec setTextAlignment:{-[PXMemoriesSpec localizedLeadingTextAlignment](self, "localizedLeadingTextAlignment")}];
  [pXMemoriesSpec setVerticalAlignment:0];
  [pXMemoriesSpec setContentInsets:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
LABEL_22:

  return pXMemoriesSpec;
}

uint64_t __47__PXMemoriesSpec_createViewSpecWithDescriptor___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 3;
  }

  [*(a1 + 32) feedHeroImageAspectRatio];
  if (v2 == 1.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (PXMemoriesSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options style:(unint64_t)style
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = PXMemoriesSpec;
  v8 = [(PXMemoriesSpec *)&v10 initWithExtendedTraitCollection:collectionCopy options:options];
  if (v8)
  {
    v8->_feedShouldAllowHeaders = 1;
    [collectionCopy layoutMargins];
    PXEdgeInsetsMake();
  }

  return 0;
}

@end