@interface PXYearsSublayoutComposition
- (UIEdgeInsets)sublayoutInsetsForStylableType:(int64_t)a3;
- (id)configuredLayoutGenerator;
- (void)setMetrics:(id)a3;
@end

@implementation PXYearsSublayoutComposition

- (UIEdgeInsets)sublayoutInsetsForStylableType:(int64_t)a3
{
  if (!a3)
  {
    +[PXCursorInteractionSettings sharedInstance];
    [objc_claimAutoreleasedReturnValue() yearsPadding];
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = *off_1E7721FA8;
    v8 = *(off_1E7721FA8 + 1);
    v9 = *(off_1E7721FA8 + 2);
    v10 = *(off_1E7721FA8 + 3);
    goto LABEL_11;
  }

  if (a3 != 1)
  {
LABEL_13:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXYearsSublayoutComposition.m" lineNumber:75 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v5 = +[PXKeyboardSettings sharedInstance];
  v6 = [v5 yearsFocusAnimationStyle];
  [v5 yearsFocusPadding];
  if (v6 == 2 || v6 == 1)
  {
LABEL_10:
    PXEdgeInsetsMake();
  }

  if (v6)
  {

    goto LABEL_13;
  }

  v7 = *off_1E7721FA8;
  v8 = *(off_1E7721FA8 + 1);
  v9 = *(off_1E7721FA8 + 2);
  v10 = *(off_1E7721FA8 + 3);

LABEL_11:
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)configuredLayoutGenerator
{
  v3 = [(PXGSublayoutComposition *)self numberOfSublayouts];
  v4 = [(PXYearsSublayoutComposition *)self metrics];
  v5 = [v4 copy];

  [(PXGSublayoutComposition *)self referenceSize];
  [v5 setReferenceSize:?];
  layoutGenerator = self->_layoutGenerator;
  if (layoutGenerator)
  {
    [(PXYearsLayoutGenerator *)layoutGenerator setMetrics:v5];
  }

  else
  {
    v7 = [[PXYearsLayoutGenerator alloc] initWithMetrics:v5];
    v8 = self->_layoutGenerator;
    self->_layoutGenerator = v7;
  }

  [(PXYearsLayoutGenerator *)self->_layoutGenerator setItemCount:v3];
  v9 = self->_layoutGenerator;
  v10 = v9;

  return v9;
}

- (void)setMetrics:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_metrics != v4)
  {
    v9 = v4;
    v6 = [(PXYearsLayoutMetrics *)v4 isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXYearsLayoutMetrics *)v9 copy];
      metrics = self->_metrics;
      self->_metrics = v7;

      [(PXGGeneratedSublayoutComposition *)self invalidateLayout];
      v5 = v9;
    }
  }
}

@end