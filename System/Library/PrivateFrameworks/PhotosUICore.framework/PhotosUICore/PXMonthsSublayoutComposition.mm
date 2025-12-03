@interface PXMonthsSublayoutComposition
- (UIEdgeInsets)sublayoutInsetsForStylableType:(int64_t)type;
- (id)configuredLayoutGenerator;
- (void)setMetrics:(id)metrics;
- (void)updateSublayoutAttributes;
@end

@implementation PXMonthsSublayoutComposition

- (UIEdgeInsets)sublayoutInsetsForStylableType:(int64_t)type
{
  if (!type)
  {
    +[PXCursorInteractionSettings sharedInstance];
    [objc_claimAutoreleasedReturnValue() monthsPadding];
    goto LABEL_10;
  }

  if (type == 2)
  {
    v7 = *off_1E7721FA8;
    v8 = *(off_1E7721FA8 + 1);
    v9 = *(off_1E7721FA8 + 2);
    v10 = *(off_1E7721FA8 + 3);
    goto LABEL_11;
  }

  if (type != 1)
  {
LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMonthsSublayoutComposition.m" lineNumber:103 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v5 = +[PXKeyboardSettings sharedInstance];
  monthsFocusAnimationStyle = [v5 monthsFocusAnimationStyle];
  [v5 monthsFocusPadding];
  if (monthsFocusAnimationStyle == 2 || monthsFocusAnimationStyle == 1)
  {
LABEL_10:
    PXEdgeInsetsMake();
  }

  if (monthsFocusAnimationStyle)
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
  metrics = [(PXMonthsSublayoutComposition *)self metrics];
  v4 = [metrics copy];

  [(PXGSublayoutComposition *)self referenceSize];
  [v4 setReferenceSize:?];
  layoutGenerator = self->_layoutGenerator;
  if (layoutGenerator)
  {
    [(PXMonthsLayoutGenerator *)layoutGenerator setMetrics:v4];
  }

  else
  {
    v6 = [[PXMonthsLayoutGenerator alloc] initWithMetrics:v4];
    v7 = self->_layoutGenerator;
    self->_layoutGenerator = v6;
  }

  [(PXMonthsLayoutGenerator *)self->_layoutGenerator setItemCount:[(PXGSublayoutComposition *)self numberOfSublayouts]];
  v8 = [(NSIndexSet *)self->_indexesOfChapterHeaders copy];
  v9 = [(NSIndexSet *)self->_indexesOfHeroes copy];
  v10 = [off_1E7721790 alloc];
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  v13 = [v10 initWithSize:*MEMORY[0x1E695F060] weight:{v12, 0.0}];
  v14 = [[off_1E7721790 alloc] initWithSize:v11 weight:{v12, -1.0}];
  v15 = [[off_1E7721790 alloc] initWithSize:v11 weight:{v12, 1.0}];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__PXMonthsSublayoutComposition_configuredLayoutGenerator__block_invoke;
  v25[3] = &unk_1E77438F0;
  v26 = v8;
  v27 = v14;
  v28 = v9;
  v29 = v15;
  v30 = v13;
  v16 = self->_layoutGenerator;
  v17 = v13;
  v18 = v15;
  v19 = v9;
  v20 = v14;
  v21 = v8;
  [(PXMonthsLayoutGenerator *)v16 setItemLayoutInfoBlock:v25];
  v22 = self->_layoutGenerator;
  v23 = v22;

  return v22;
}

id __57__PXMonthsSublayoutComposition_configuredLayoutGenerator__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) containsIndex:a2])
  {
    v4 = 40;
  }

  else
  {
    v5 = [*(a1 + 48) containsIndex:a2];
    v4 = 64;
    if (v5)
    {
      v4 = 56;
    }
  }

  v6 = *(a1 + v4);

  return v6;
}

- (void)updateSublayoutAttributes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  layout = [(PXGSublayoutComposition *)self layout];
  numberOfSublayouts = [(PXGSublayoutComposition *)self numberOfSublayouts];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__PXMonthsSublayoutComposition_updateSublayoutAttributes__block_invoke;
  v14[3] = &unk_1E77438C8;
  v15 = layout;
  v16 = v3;
  v17 = v4;
  v7 = v4;
  v8 = v3;
  v9 = layout;
  [(PXGSublayoutComposition *)self enumerateSublayoutProvidersForRange:0 usingBlock:numberOfSublayouts, v14];
  v10 = [v8 copy];
  indexesOfChapterHeaders = self->_indexesOfChapterHeaders;
  self->_indexesOfChapterHeaders = v10;

  v12 = [v7 copy];
  indexesOfHeroes = self->_indexesOfHeroes;
  self->_indexesOfHeroes = v12;
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = metricsCopy;
  if (self->_metrics != metricsCopy)
  {
    v9 = metricsCopy;
    v6 = [(PXMonthsLayoutMetrics *)metricsCopy isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXMonthsLayoutMetrics *)v9 copy];
      metrics = self->_metrics;
      self->_metrics = v7;

      [(PXGGeneratedSublayoutComposition *)self invalidateLayout];
      v5 = v9;
    }
  }
}

@end