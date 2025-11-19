@interface PXExploreLayoutMetrics
- (NSString)diagnosticDescription;
- (PXExploreLayoutMetrics)initWithExtendedTraitCollection:(id)a3;
- (PXExploreLayoutMetrics)initWithSpec:(id)a3;
- (PXExploreLayoutMetrics)initWithUserInterfaceIdiom:(int64_t)a3 sizeClass:(int64_t)a4 orientation:(int64_t)a5 referenceSize:(CGSize)a6 safeAreaInsets:(UIEdgeInsets)a7;
- (UIEdgeInsets)padding;
- (UIEdgeInsets)safeAreaInsets;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXExploreLayoutMetrics

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = PXExploreLayoutMetrics;
  v4 = [(PXLayoutMetrics *)&v12 diagnosticDescription];
  v5 = [(PXExploreLayoutMetrics *)self layoutType];
  v6 = [(PXExploreLayoutMetrics *)self layoutSubtype];
  v7 = [(PXExploreLayoutMetrics *)self reorderingTolerance];
  [(PXExploreLayoutMetrics *)self safeAreaInsets];
  v8 = NSStringFromUIEdgeInsets(v14);
  [(PXExploreLayoutMetrics *)self interitemSpacing];
  v10 = [v3 initWithFormat:@"%@ type=%li subtype=%li reorderTol=%li safeAreaInsets=%@ interitemSpacing=%f largeHeroDensity=%li allowHeaders=%i allowSpecialPanoHeaders=%i", v4, v5, v6, v7, v8, v9, -[PXExploreLayoutMetrics largeHeroDensity](self, "largeHeroDensity"), -[PXExploreLayoutMetrics allowHeaders](self, "allowHeaders"), -[PXExploreLayoutMetrics allowSpecialPanoHeaders](self, "allowSpecialPanoHeaders")];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = PXExploreLayoutMetrics;
  v4 = [(PXLayoutMetrics *)&v11 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[4] = self->_layoutType;
    v4[5] = self->_layoutSubtype;
    v4[6] = self->_reorderingTolerance;
    v6 = *&self->_safeAreaInsets.bottom;
    *(v4 + 6) = *&self->_safeAreaInsets.top;
    *(v4 + 7) = v6;
    v4[7] = *&self->_interitemSpacing;
    v4[8] = self->_largeHeroDensity;
    v7 = [self->_acceptableLargeHeroPredicate copy];
    v8 = v5[9];
    v5[9] = v7;

    *(v5 + 25) = self->_allowSpecialPanoHeaders;
    *(v5 + 24) = self->_allowHeaders;
    v5[10] = *&self->_buildingBlockAspectRatio;
    v5[11] = *&self->_preferredFullWidthHeaderAspectRatio;
    v9 = *&self->_padding.bottom;
    *(v5 + 8) = *&self->_padding.top;
    *(v5 + 9) = v9;
  }

  return v5;
}

- (PXExploreLayoutMetrics)initWithSpec:(id)a3
{
  v4 = a3;
  if ([v4 userInterfaceIdiom] == 2)
  {
    v5 = [v4 windowOrientation];
  }

  else
  {
    v5 = [v4 layoutOrientation];
  }

  v6 = v5;
  v7 = [v4 userInterfaceIdiom];
  v8 = [v4 sizeClass];
  [v4 layoutReferenceSize];
  v10 = v9;
  v12 = v11;
  [v4 safeAreaInsets];
  v17 = [(PXExploreLayoutMetrics *)self initWithUserInterfaceIdiom:v7 sizeClass:v8 orientation:v6 referenceSize:v10 safeAreaInsets:v12, v13, v14, v15, v16];

  return v17;
}

- (PXExploreLayoutMetrics)initWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  if ([v4 userInterfaceIdiom] == 2)
  {
    v5 = [v4 windowOrientation];
  }

  else
  {
    v5 = [v4 layoutOrientation];
  }

  v6 = v5;
  v7 = [v4 userInterfaceIdiom];
  v8 = [v4 layoutSizeClass];
  [v4 layoutReferenceSize];
  v10 = v9;
  v12 = v11;
  [v4 safeAreaInsets];
  v17 = [(PXExploreLayoutMetrics *)self initWithUserInterfaceIdiom:v7 sizeClass:v8 orientation:v6 referenceSize:v10 safeAreaInsets:v12, v13, v14, v15, v16];

  return v17;
}

- (PXExploreLayoutMetrics)initWithUserInterfaceIdiom:(int64_t)a3 sizeClass:(int64_t)a4 orientation:(int64_t)a5 referenceSize:(CGSize)a6 safeAreaInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v24.receiver = self;
  v24.super_class = PXExploreLayoutMetrics;
  v14 = [(PXExploreLayoutMetrics *)&v24 init:a6.width];
  v15 = v14;
  if (v14)
  {
    if (a3 == 4)
    {
      v16 = 5;
    }

    else if (a3 == 5)
    {
      v16 = 6;
    }

    else if (a4)
    {
      if (a4 == 2)
      {
        v17 = a5 >= 2;
        v16 = 3;
      }

      else
      {
        if (a4 != 1)
        {
LABEL_16:
          v14->_layoutSubtype = 0;
          v14->_reorderingTolerance = 0;
          v14->_safeAreaInsets.top = top;
          v14->_safeAreaInsets.left = left;
          v14->_safeAreaInsets.bottom = bottom;
          v14->_safeAreaInsets.right = right;
          v18 = +[PXCuratedLibrarySettings sharedInstance];
          [v18 interitemSpacingForDays];
          v15->_interitemSpacing = v19;
          v15->_largeHeroDensity = [v18 largeHeroDensity];
          v20 = [v18 acceptableLargeHeroPredicate];
          acceptableLargeHeroPredicate = v15->_acceptableLargeHeroPredicate;
          v15->_acceptableLargeHeroPredicate = v20;

          [v18 allowSpecialPanoHeaders];
          v15->_allowSpecialPanoHeaders = v22 != 0.0;
          v15->_allowHeaders = 1;
          v15->_buildingBlockAspectRatio = 0.0;
          v15->_preferredFullWidthHeaderAspectRatio = 0.0;

          return v15;
        }

        v17 = a5 >= 2;
        v16 = 1;
      }

      if (v17)
      {
        ++v16;
      }
    }

    else
    {
      v16 = 1;
    }

    v14->_layoutType = v16;
    goto LABEL_16;
  }

  return v15;
}

@end