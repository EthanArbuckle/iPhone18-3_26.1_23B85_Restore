@interface PLLargeTextPlatterHeaderContentViewLayoutManager
+ (double)contentBaselineToBoundsBottomWithFont:(id)a3 boundsWidth:(double)a4 scale:(double)a5;
- (CGRect)_dateLabelBoundsThatFitsWidth:(double)a3;
- (CGRect)_titleLabelBoundsThatFitsWidth:(double)a3;
- (CGSize)_boundingRectSizeForLabel:(id)a3 width:(double)a4 numberOfLines:(unint64_t *)a5;
- (CGSize)_utilityViewSizeThatFitsWidth:(double)a3;
- (double)_dateLabelBaselineOffset;
- (double)_largeTextLabelBaselineOffsetFromBottom;
- (double)_largeTextUtilityLabelBaselineOffset;
- (double)_titleLabelBaselineOffset;
- (double)contentBaseline;
- (double)headerHeightForWidth:(double)a3;
- (id)_dateLabelFont;
- (unint64_t)_titleLabelNumberOfLinesThatFitsWidth:(double)a3;
- (void)_updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:(double)a3;
- (void)invalidateCachedSizeInfo;
- (void)layoutDateLabelWithScale:(double)a3;
- (void)layoutIconButtonsWithScale:(double)a3;
- (void)layoutTitleLabelWithTrailingXLimit:(double)a3 scale:(double)a4;
- (void)layoutUtilityButtonWithScale:(double)a3;
@end

@implementation PLLargeTextPlatterHeaderContentViewLayoutManager

+ (double)contentBaselineToBoundsBottomWithFont:(id)a3 boundsWidth:(double)a4 scale:(double)a5
{
  [a3 _scaledValueForValue:6.5];

  UIRoundToScale();
  return result;
}

- (double)headerHeightForWidth:(double)a3
{
  if (a3 <= 0.0)
  {
    v10.receiver = self;
    v10.super_class = PLLargeTextPlatterHeaderContentViewLayoutManager;
    [(PLPlatterHeaderContentViewLayoutManager *)&v10 headerHeightForWidth:?];
  }

  else
  {
    [(PLPlatterHeaderContentViewLayoutManager *)self _measuringSizeForWidth:?];
    v5 = v4;
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBoundsThatFitsWidth:?];
    CGRectGetHeight(v11);
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _dateLabelBoundsThatFitsWidth:v5];
    CGRectGetHeight(v12);
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _largeTextLabelBaselineOffsetFromBottom];
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    UIRoundToScale();
    v8 = v7;

    return v8;
  }

  return result;
}

- (double)contentBaseline
{
  v3 = [(PLPlatterHeaderContentViewLayoutManager *)self _date];

  if (v3)
  {
    v4 = [(PLPlatterHeaderContentViewLayoutManager *)self _dateLabel];
    goto LABEL_8;
  }

  v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  [v5 alpha];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v4 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
LABEL_8:
    v14 = v4;
    if (v4)
    {
      goto LABEL_9;
    }

    return 0.0;
  }

  v8 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v9 = [v8 titleLabel];
  v10 = [v9 text];
  v11 = [v10 length];

  v12 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v13 = v12;
  if (!v11)
  {
    v17 = [v12 imageForState:0];

    if (v17)
    {
      v14 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
      [v14 frame];
      MaxY = CGRectGetMaxY(v19);
      goto LABEL_10;
    }

    return 0.0;
  }

  v14 = [v12 titleLabel];

  if (!v14)
  {
    return 0.0;
  }

LABEL_9:
  [v14 _lastLineBaselineFrameOriginY];
LABEL_10:
  v16 = MaxY;

  return v16;
}

- (void)layoutIconButtonsWithScale:(double)a3
{
  v32 = [(PLPlatterHeaderContentViewLayoutManager *)self _iconButtons];
  v4 = [v32 count];
  if (v4)
  {
    v5 = v4;
    v6 = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v34.origin.x = *MEMORY[0x277CBF348];
    v34.origin.y = *(MEMORY[0x277CBF348] + 8);
    v34.size.width = 44.0;
    v34.size.height = 44.0;
    v15 = (CGRectGetWidth(v34) + -20.0) * 0.5;
    v16 = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
    v17 = 10.0;
    if (v16)
    {
      v35.origin.x = v8;
      v35.origin.y = v10;
      v35.size.width = v12;
      v35.size.height = v14;
      v17 = CGRectGetWidth(v35) + -10.0 + -20.0;
    }

    v18 = v17 - v15;
    v19 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
    v20 = [v19 font];
    [v20 capHeight];
    v22 = v21;

    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    v24 = v23 + v22 * -0.5 + -10.0 - v15;
    v25 = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
    for (i = 0; i != v5; ++i)
    {
      v27 = [v32 objectAtIndex:i];
      UIRectIntegralWithScale();
      [v27 setFrame:?];
      if (i < v5 - 1)
      {
        v28 = v18;
        v29 = v24;
        v30 = 0x4046000000000000;
        v31 = 0x4046000000000000;
        if (v25)
        {
          v18 = CGRectGetMinX(*&v28) + -10.0 + -20.0;
        }

        else
        {
          v18 = CGRectGetMaxX(*&v28) + 10.0 + -v15 * 2.0;
        }
      }
    }
  }
}

- (void)layoutTitleLabelWithTrailingXLimit:(double)a3 scale:(double)a4
{
  v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  if (v5)
  {
    v24 = v5;
    v6 = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    [(PLPlatterHeaderContentViewLayoutManager *)self _measuringSizeForWidth:CGRectGetWidth(v26)];
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBoundsThatFitsWidth:?];
    [v24 setBounds:?];
    [v24 frame];
    v16 = v15;
    rect = v17;
    v19 = v18;
    v21 = v20;
    v22 = [(PLPlatterHeaderContentViewLayoutManager *)self _iconButtons];
    [v22 count];

    if ([(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection])
    {
      v27.origin.x = v8;
      v27.origin.y = v10;
      v27.size.width = v12;
      v27.size.height = v14;
      CGRectGetWidth(v27);
      v28.origin.x = v16;
      v28.origin.y = rect;
      v28.size.width = v19;
      v28.size.height = v21;
      CGRectGetWidth(v28);
    }

    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    [v24 _firstLineBaselineOffsetFromBoundsTop];
    UIRectIntegralWithScale();
    [v24 setFrame:?];
    v5 = v24;
  }
}

- (void)layoutUtilityButtonWithScale:(double)a3
{
  v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityView];
  if (!v5)
  {
    v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    if (!v5)
    {
      return;
    }
  }

  v6 = v5;
  v7 = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v47.origin.x = v9;
  v47.origin.y = v11;
  v47.size.width = v13;
  v47.size.height = v15;
  [(PLPlatterHeaderContentViewLayoutManager *)self _measuringSizeForWidth:CGRectGetWidth(v47)];
  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _utilityViewSizeThatFitsWidth:?];
  v40 = a3;
  UISizeRoundToScale();
  BSRectWithSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v6 setBounds:?];
  v24 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v25 = v24;
  if (v6 == v24)
  {
    v27 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    v28 = [v27 titleLabel];
    v29 = [v28 text];
    v30 = [v29 length];

    if (v30)
    {
      v31 = MEMORY[0x277D75D18];
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __81__PLLargeTextPlatterHeaderContentViewLayoutManager_layoutUtilityButtonWithScale___block_invoke;
      v45 = &unk_2784250D8;
      v46 = v6;
      [v31 performWithoutAnimation:&v42];

      v26 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v26 = 0;
LABEL_8:
  if ([(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection:*&v40])
  {
    v48.origin.x = v17;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    MinX = CGRectGetMinX(v48);
    v33 = 7.0;
  }

  else
  {
    v49.origin.x = v9;
    v49.origin.y = v11;
    v49.size.width = v13;
    v49.size.height = v15;
    Width = CGRectGetWidth(v49);
    v50.origin.x = v17;
    v50.origin.y = v19;
    v50.size.width = v21;
    v50.size.height = v23;
    MinX = Width - CGRectGetMaxX(v50);
    v33 = -7.0;
  }

  v35 = MinX + v33;
  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self layoutTitleLabelWithTrailingXLimit:0.0 scale:v41];
  v36 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  [v36 _lastLineBaselineFrameOriginY];
  if (v26)
  {
    v37 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    v38 = [v37 titleLabel];
    [v38 _firstLineBaselineOffsetFromBoundsTop];
  }

  else
  {
    v39 = [v36 font];
    [v39 capHeight];

    v51.origin.x = v35;
    v51.origin.y = v19;
    v51.size.width = v21;
    v51.size.height = v23;
    CGRectGetHeight(v51);
  }

  UIRectIntegralWithScale();
  [v6 setFrame:?];
}

- (void)layoutDateLabelWithScale:(double)a3
{
  v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _dateLabel];
  if (!v5)
  {
    goto LABEL_12;
  }

  v36 = v5;
  v6 = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
  v32 = v10;
  v34 = v8;
  v38.origin.x = v8;
  v38.origin.y = v10;
  v38.size.width = v12;
  v38.size.height = v14;
  [(PLPlatterHeaderContentViewLayoutManager *)self _measuringSizeForWidth:CGRectGetWidth(v38)];
  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _dateLabelBoundsThatFitsWidth:?];
  [v36 setBounds:?];
  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self layoutTitleLabelWithTrailingXLimit:0.0 scale:a3];
  v16 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  [v16 _lastLineBaselineFrameOriginY];

  v17 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v18 = [v17 titleLabel];
  v19 = [v18 text];
  if ([v19 length])
  {
    v20 = [v17 isHidden];

    if (v20)
    {
      goto LABEL_9;
    }

LABEL_7:
    [v17 frame];
    CGRectGetWidth(v39);
    goto LABEL_9;
  }

  v21 = [v17 currentImage];
  if (!v21)
  {

    goto LABEL_9;
  }

  v22 = v21;
  v23 = [v17 isHidden];

  if ((v23 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  [v36 frame];
  v27 = v26;
  v29 = v28;
  if (v15)
  {
    v30 = v24;
    v31 = v25;
    v40.origin.y = v33;
    v40.origin.x = v35;
    v40.size.width = v12;
    v40.size.height = v14;
    CGRectGetWidth(v40);
    v41.origin.x = v30;
    v41.origin.y = v31;
    v41.size.width = v27;
    v41.size.height = v29;
    CGRectGetWidth(v41);
  }

  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _dateLabelBaselineOffset];
  [v36 _firstLineBaselineOffsetFromBoundsTop];
  UIRectIntegralWithScale();
  [v36 setFrame:?];

  v5 = v36;
LABEL_12:
}

- (double)_titleLabelBaselineOffset
{
  v2 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:16.5];
  v5 = v4;

  return v5;
}

- (id)_dateLabelFont
{
  v2 = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
  v3 = [v2 _dateLabelFont];

  return v3;
}

- (void)invalidateCachedSizeInfo
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Invalidating cached size info", &v2, 0xCu);
}

- (CGSize)_boundingRectSizeForLabel:(id)a3 width:(double)a4 numberOfLines:(unint64_t *)a5
{
  v8 = a3;
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  if (v8 && a4 != 0.0)
  {
    if (!self->_drawingContext)
    {
      v11 = objc_alloc_init(MEMORY[0x277D74260]);
      drawingContext = self->_drawingContext;
      self->_drawingContext = v11;

      [(NSStringDrawingContext *)self->_drawingContext setWantsNumberOfLineFragments:1];
    }

    v13 = [v8 attributedText];
    [v13 boundingRectWithSize:1 options:self->_drawingContext context:{a4, 1.79769313e308}];
    v9 = v14;
    v10 = v15;

    if (a5)
    {
      *a5 = [(NSStringDrawingContext *)self->_drawingContext numberOfLineFragments];
    }
  }

  v16 = v9;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)_largeTextUtilityLabelBaselineOffset
{
  v2 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v3 = [v2 titleLabel];
  v4 = [v3 font];
  [v4 _scaledValueForValue:16.5];
  v6 = v5;

  return v6;
}

- (double)_largeTextLabelBaselineOffsetFromBottom
{
  v2 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  v3 = [v2 font];
  [v3 _scaledValueForValue:6.5];
  v5 = v4;

  return v5;
}

- (double)_dateLabelBaselineOffset
{
  v2 = [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _dateLabelFont];
  [v2 _scaledValueForValue:16.5];
  v4 = v3;

  return v4;
}

- (CGSize)_utilityViewSizeThatFitsWidth:(double)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3 > 0.0)
  {
    v7 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityView];
    if (v7 || ([(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      [v7 sizeThatFits:{a3, 1.79769313e308}];
      v3 = v9;
      v4 = v10;
    }
  }

  v11 = v3;
  v12 = v4;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:(double)a3
{
  v6 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (v6 && self->_referenceWidth != a3)
  {
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self invalidateCachedSizeInfo];
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _utilityViewSizeThatFitsWidth:a3];
    if (v7 <= 0.0)
    {
      v8 = a3;
    }

    else
    {
      v8 = a3 - (v7 + 7.0);
    }

    referenceWidth = self->_referenceWidth;
    if (referenceWidth != 0.0 && referenceWidth != a3)
    {
      [(PLLargeTextPlatterHeaderContentViewLayoutManager *)&self->_referenceWidth _updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:a2, self];
    }

    self->_referenceWidth = a3;
    v13 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _boundingRectSizeForLabel:v13 width:&self->_cachedTitleNumberOfLines numberOfLines:v8];
    self->_cachedTitleBoundingRectSize.width = v11;
    self->_cachedTitleBoundingRectSize.height = v12;
  }
}

- (unint64_t)_titleLabelNumberOfLinesThatFitsWidth:(double)a3
{
  v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (!v5)
  {
    return 0;
  }

  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:a3];
  return self->_cachedTitleNumberOfLines;
}

- (CGRect)_dateLabelBoundsThatFitsWidth:(double)a3
{
  v4 = [(PLPlatterHeaderContentViewLayoutManager *)self _date];

  if (v4)
  {
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    BSRectWithSize();
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_titleLabelBoundsThatFitsWidth:(double)a3
{
  v5 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (v5)
  {
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    v6 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
    v7 = [v6 font];
    [v7 lineHeight];

    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:a3];
    BSRectWithSize();
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"PLLargeTextPlatterHeaderContentViewLayoutManager.m" lineNumber:239 description:{@"'_referenceWidth' is an unexpected value: %f", *a1}];
}

@end