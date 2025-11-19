@interface PXMemoriesSpec
- (CGPoint)borderOffset;
- (CGPoint)highlightedSectionHeaderOffset;
- (CGSize)favoriteBadgeSize;
- (Class)feedDataSourceManagerClass;
- (Class)feedLayoutMetricsClass;
- (PXMemoriesSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 style:(unint64_t)a5;
- (UIEdgeInsets)favoriteBadgeInset;
- (UIEdgeInsets)feedEntryEdgeInsets;
- (UIEdgeInsets)layoutInsets;
- (double)_feedInteritemSpacingForReferenceSize:(CGSize)a3;
- (double)feedHeroImagePaddingTop;
- (double)feedSecondaryImagePaddingBottom;
- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)a3;
- (id)newLayoutGeneratorWithMetrics:(id)a3;
- (int64_t)feedSectionLayoutAxis;
- (void)_calculateSectionInsetWithExtendedTraitCollection:(id)a3;
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

- (double)_feedInteritemSpacingForReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PXMemoriesSpec *)self feedInteritemSpacing];
  v8 = v7;
  if (self->_idiom != 4)
  {
    return v8;
  }

  v9 = [(PXMemoriesSpec *)self feedAxis];
  [(PXMemoriesSpec *)self contentGuideInsetsForScrollAxis:v9];
  switch(v9)
  {
    case 1:
      v15 = width - v11 - v13;
      return v15 * 0.05;
    case 2:
      v15 = height - v10 - v12;
      return v15 * 0.05;
    case 0:
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXMemoriesSpec.m" lineNumber:465 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return v8;
}

- (void)_calculateSectionInsetWithExtendedTraitCollection:(id)a3
{
  v8 = a3;
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
    [v8 layoutReferenceSize];
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

- (id)newLayoutGeneratorWithMetrics:(id)a3
{
  v5 = a3;
  v6 = [(PXMemoriesSpec *)self userInterfaceFeature];
  if ([(PXMemoriesSpec *)self _style]== 2)
  {
    [v5 referenceSize];
    v8 = v7;
    v10 = v9;
    v11 = objc_alloc_init(off_1E7721748);
    [v11 setReferenceSize:{v8, v10}];
    [v11 setAxis:1];
    if ([(PXMemoriesSpec *)self idiom]== 3)
    {
      PXEdgeInsetsMake();
    }

    if (v6 == 1)
    {
      [off_1E7721798 memoriesFeedPortraitEdgeInsetsInterpolator];
    }

    else
    {
      [off_1E7721798 memoriesDetailsEdgeInsetsInterpolator];
    }
    v13 = ;
    [(PXMemoriesSpec *)self sizeClass];
    v14 = [v5 spec];
    [v14 safeAreaInsets];
    v16 = v15;
    v18 = v17;

    [v13 valueForMetric:v8 - v16 - v18];
    PXEdgeInsetsMake();
  }

  if (v6 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PXMemoriesSpec.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedWidgetLayoutMetrics class]]"}];
    }

    v12 = [[PXMemoriesFeedWidgetLayoutGenerator alloc] initWithMetrics:v5];
  }

  else
  {
    v12 = [[PXMemoriesFeedEntryLayoutGenerator alloc] initWithMetrics:v5];
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

- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)a3
{
  var1 = a3->var1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PXMemoriesSpec_createViewSpecWithDescriptor___block_invoke;
  aBlock[3] = &unk_1E774A8B8;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  var0 = a3->var0;
  if (a3->var0 > 2002)
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
    v9 = objc_alloc_init(off_1E7721968);
    [(PXMemoriesSpec *)self configureViewSpec:v9];
    v11 = [(PXMemoriesSpec *)self selectionHighlightColor];
    [v9 setSelectionHighlightColor:v11];

    goto LABEL_22;
  }

  if (var0 == 2001)
  {
    v9 = objc_alloc_init(off_1E7721968);
    [(PXMemoriesSpec *)self configureViewSpec:v9];
    if ((var1 & 2) != 0)
    {
      v14 = [(PXMemoriesSpec *)self borderColor];
      [v9 setBorderColor:v14];

      [(PXMemoriesSpec *)self borderWidth];
      [v9 setBorderWidth:?];
      [(PXMemoriesSpec *)self collectionTileImageCornerRadius];
      v12 = v15 + v15;
    }

    else
    {
      [v9 setBorderColor:0];
      v12 = 0.0;
      [v9 setBorderWidth:0.0];
    }

    [v9 setCornerRadius:v12];
    goto LABEL_22;
  }

  if (var0 != 2002)
  {
LABEL_17:
    v18.receiver = self;
    v18.super_class = PXMemoriesSpec;
    var2 = a3->var2;
    v19[0] = *&a3->var0;
    v19[1] = var2;
    v9 = [(PXMemoriesSpec *)&v18 createViewSpecWithDescriptor:v19, self, PXMemoriesSpec];
    goto LABEL_22;
  }

  v9 = objc_alloc_init(off_1E7721788);
  [(PXMemoriesSpec *)self configureViewSpec:v9];
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
  [v9 setFont:v16];

  [v9 setCapitalization:0];
  [v9 setNumberOfLines:1];
  [v9 setTextAlignment:{-[PXMemoriesSpec localizedLeadingTextAlignment](self, "localizedLeadingTextAlignment")}];
  [v9 setVerticalAlignment:0];
  [v9 setContentInsets:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
LABEL_22:

  return v9;
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

- (PXMemoriesSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 style:(unint64_t)a5
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = PXMemoriesSpec;
  v8 = [(PXMemoriesSpec *)&v10 initWithExtendedTraitCollection:v7 options:a4];
  if (v8)
  {
    v8->_feedShouldAllowHeaders = 1;
    [v7 layoutMargins];
    PXEdgeInsetsMake();
  }

  return 0;
}

@end