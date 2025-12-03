@interface PLLargeTextPlatterHeaderContentViewLayoutManager
+ (double)contentBaselineToBoundsBottomWithFont:(id)font boundsWidth:(double)width scale:(double)scale;
- (CGRect)_dateLabelBoundsThatFitsWidth:(double)width;
- (CGRect)_titleLabelBoundsThatFitsWidth:(double)width;
- (CGSize)_boundingRectSizeForLabel:(id)label width:(double)width numberOfLines:(unint64_t *)lines;
- (CGSize)_utilityViewSizeThatFitsWidth:(double)width;
- (double)_dateLabelBaselineOffset;
- (double)_largeTextLabelBaselineOffsetFromBottom;
- (double)_largeTextUtilityLabelBaselineOffset;
- (double)_titleLabelBaselineOffset;
- (double)contentBaseline;
- (double)headerHeightForWidth:(double)width;
- (id)_dateLabelFont;
- (unint64_t)_titleLabelNumberOfLinesThatFitsWidth:(double)width;
- (void)_updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:(double)width;
- (void)invalidateCachedSizeInfo;
- (void)layoutDateLabelWithScale:(double)scale;
- (void)layoutIconButtonsWithScale:(double)scale;
- (void)layoutTitleLabelWithTrailingXLimit:(double)limit scale:(double)scale;
- (void)layoutUtilityButtonWithScale:(double)scale;
@end

@implementation PLLargeTextPlatterHeaderContentViewLayoutManager

+ (double)contentBaselineToBoundsBottomWithFont:(id)font boundsWidth:(double)width scale:(double)scale
{
  [font _scaledValueForValue:6.5];

  UIRoundToScale();
  return result;
}

- (double)headerHeightForWidth:(double)width
{
  if (width <= 0.0)
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    UIRoundToScale();
    v8 = v7;

    return v8;
  }

  return result;
}

- (double)contentBaseline
{
  _date = [(PLPlatterHeaderContentViewLayoutManager *)self _date];

  if (_date)
  {
    _dateLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _dateLabel];
    goto LABEL_8;
  }

  _utilityButton = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  [_utilityButton alpha];
  v7 = v6;

  if (v7 <= 0.0)
  {
    _dateLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
LABEL_8:
    _utilityButton4 = _dateLabel;
    if (_dateLabel)
    {
      goto LABEL_9;
    }

    return 0.0;
  }

  _utilityButton2 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  titleLabel = [_utilityButton2 titleLabel];
  text = [titleLabel text];
  v11 = [text length];

  _utilityButton3 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v13 = _utilityButton3;
  if (!v11)
  {
    v17 = [_utilityButton3 imageForState:0];

    if (v17)
    {
      _utilityButton4 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
      [_utilityButton4 frame];
      MaxY = CGRectGetMaxY(v19);
      goto LABEL_10;
    }

    return 0.0;
  }

  _utilityButton4 = [_utilityButton3 titleLabel];

  if (!_utilityButton4)
  {
    return 0.0;
  }

LABEL_9:
  [_utilityButton4 _lastLineBaselineFrameOriginY];
LABEL_10:
  v16 = MaxY;

  return v16;
}

- (void)layoutIconButtonsWithScale:(double)scale
{
  _iconButtons = [(PLPlatterHeaderContentViewLayoutManager *)self _iconButtons];
  v4 = [_iconButtons count];
  if (v4)
  {
    v5 = v4;
    headerContentView = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
    [headerContentView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v34.origin.x = *MEMORY[0x277CBF348];
    v34.origin.y = *(MEMORY[0x277CBF348] + 8);
    v34.size.width = 44.0;
    v34.size.height = 44.0;
    v15 = (CGRectGetWidth(v34) + -20.0) * 0.5;
    _shouldReverseLayoutDirection = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
    v17 = 10.0;
    if (_shouldReverseLayoutDirection)
    {
      v35.origin.x = v8;
      v35.origin.y = v10;
      v35.size.width = v12;
      v35.size.height = v14;
      v17 = CGRectGetWidth(v35) + -10.0 + -20.0;
    }

    v18 = v17 - v15;
    _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
    font = [_titleLabel font];
    [font capHeight];
    v22 = v21;

    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    v24 = v23 + v22 * -0.5 + -10.0 - v15;
    _shouldReverseLayoutDirection2 = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
    for (i = 0; i != v5; ++i)
    {
      v27 = [_iconButtons objectAtIndex:i];
      UIRectIntegralWithScale();
      [v27 setFrame:?];
      if (i < v5 - 1)
      {
        v28 = v18;
        v29 = v24;
        v30 = 0x4046000000000000;
        v31 = 0x4046000000000000;
        if (_shouldReverseLayoutDirection2)
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

- (void)layoutTitleLabelWithTrailingXLimit:(double)limit scale:(double)scale
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  if (_titleLabel)
  {
    v24 = _titleLabel;
    headerContentView = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
    [headerContentView bounds];
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
    _iconButtons = [(PLPlatterHeaderContentViewLayoutManager *)self _iconButtons];
    [_iconButtons count];

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
    _titleLabel = v24;
  }
}

- (void)layoutUtilityButtonWithScale:(double)scale
{
  _utilityView = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityView];
  if (!_utilityView)
  {
    _utilityView = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    if (!_utilityView)
    {
      return;
    }
  }

  v6 = _utilityView;
  headerContentView = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
  [headerContentView bounds];
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
  scaleCopy = scale;
  UISizeRoundToScale();
  BSRectWithSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v6 setBounds:?];
  _utilityButton = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  v25 = _utilityButton;
  if (v6 == _utilityButton)
  {
    _utilityButton2 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    titleLabel = [_utilityButton2 titleLabel];
    text = [titleLabel text];
    v30 = [text length];

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
  if ([(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection:*&scaleCopy])
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
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  [_titleLabel _lastLineBaselineFrameOriginY];
  if (v26)
  {
    _utilityButton3 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    titleLabel2 = [_utilityButton3 titleLabel];
    [titleLabel2 _firstLineBaselineOffsetFromBoundsTop];
  }

  else
  {
    font = [_titleLabel font];
    [font capHeight];

    v51.origin.x = v35;
    v51.origin.y = v19;
    v51.size.width = v21;
    v51.size.height = v23;
    CGRectGetHeight(v51);
  }

  UIRectIntegralWithScale();
  [v6 setFrame:?];
}

- (void)layoutDateLabelWithScale:(double)scale
{
  _dateLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _dateLabel];
  if (!_dateLabel)
  {
    goto LABEL_12;
  }

  v36 = _dateLabel;
  headerContentView = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
  [headerContentView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  _shouldReverseLayoutDirection = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
  v32 = v10;
  v34 = v8;
  v38.origin.x = v8;
  v38.origin.y = v10;
  v38.size.width = v12;
  v38.size.height = v14;
  [(PLPlatterHeaderContentViewLayoutManager *)self _measuringSizeForWidth:CGRectGetWidth(v38)];
  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _dateLabelBoundsThatFitsWidth:?];
  [v36 setBounds:?];
  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self layoutTitleLabelWithTrailingXLimit:0.0 scale:scale];
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  [_titleLabel _lastLineBaselineFrameOriginY];

  _utilityButton = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  titleLabel = [_utilityButton titleLabel];
  text = [titleLabel text];
  if ([text length])
  {
    isHidden = [_utilityButton isHidden];

    if (isHidden)
    {
      goto LABEL_9;
    }

LABEL_7:
    [_utilityButton frame];
    CGRectGetWidth(v39);
    goto LABEL_9;
  }

  currentImage = [_utilityButton currentImage];
  if (!currentImage)
  {

    goto LABEL_9;
  }

  v22 = currentImage;
  isHidden2 = [_utilityButton isHidden];

  if ((isHidden2 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  [v36 frame];
  v27 = v26;
  v29 = v28;
  if (_shouldReverseLayoutDirection)
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

  _dateLabel = v36;
LABEL_12:
}

- (double)_titleLabelBaselineOffset
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  font = [_titleLabel font];
  [font _scaledValueForValue:16.5];
  v5 = v4;

  return v5;
}

- (id)_dateLabelFont
{
  headerContentView = [(PLPlatterHeaderContentViewLayoutManager *)self headerContentView];
  _dateLabelFont = [headerContentView _dateLabelFont];

  return _dateLabelFont;
}

- (void)invalidateCachedSizeInfo
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_21FDE2000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Invalidating cached size info", &v2, 0xCu);
}

- (CGSize)_boundingRectSizeForLabel:(id)label width:(double)width numberOfLines:(unint64_t *)lines
{
  labelCopy = label;
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  if (labelCopy && width != 0.0)
  {
    if (!self->_drawingContext)
    {
      v11 = objc_alloc_init(MEMORY[0x277D74260]);
      drawingContext = self->_drawingContext;
      self->_drawingContext = v11;

      [(NSStringDrawingContext *)self->_drawingContext setWantsNumberOfLineFragments:1];
    }

    attributedText = [labelCopy attributedText];
    [attributedText boundingRectWithSize:1 options:self->_drawingContext context:{width, 1.79769313e308}];
    v9 = v14;
    v10 = v15;

    if (lines)
    {
      *lines = [(NSStringDrawingContext *)self->_drawingContext numberOfLineFragments];
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
  _utilityButton = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  titleLabel = [_utilityButton titleLabel];
  font = [titleLabel font];
  [font _scaledValueForValue:16.5];
  v6 = v5;

  return v6;
}

- (double)_largeTextLabelBaselineOffsetFromBottom
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
  font = [_titleLabel font];
  [font _scaledValueForValue:6.5];
  v5 = v4;

  return v5;
}

- (double)_dateLabelBaselineOffset
{
  _dateLabelFont = [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _dateLabelFont];
  [_dateLabelFont _scaledValueForValue:16.5];
  v4 = v3;

  return v4;
}

- (CGSize)_utilityViewSizeThatFitsWidth:(double)width
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (width > 0.0)
  {
    _utilityView = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityView];
    if (_utilityView || ([(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton], (_utilityView = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = _utilityView;
      [_utilityView sizeThatFits:{width, 1.79769313e308}];
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

- (void)_updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:(double)width
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (_titleLabel && self->_referenceWidth != width)
  {
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self invalidateCachedSizeInfo];
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _utilityViewSizeThatFitsWidth:width];
    if (v7 <= 0.0)
    {
      widthCopy = width;
    }

    else
    {
      widthCopy = width - (v7 + 7.0);
    }

    referenceWidth = self->_referenceWidth;
    if (referenceWidth != 0.0 && referenceWidth != width)
    {
      [(PLLargeTextPlatterHeaderContentViewLayoutManager *)&self->_referenceWidth _updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:a2, self];
    }

    self->_referenceWidth = width;
    _titleLabel2 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _boundingRectSizeForLabel:_titleLabel2 width:&self->_cachedTitleNumberOfLines numberOfLines:widthCopy];
    self->_cachedTitleBoundingRectSize.width = v11;
    self->_cachedTitleBoundingRectSize.height = v12;
  }
}

- (unint64_t)_titleLabelNumberOfLinesThatFitsWidth:(double)width
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (!_titleLabel)
  {
    return 0;
  }

  [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:width];
  return self->_cachedTitleNumberOfLines;
}

- (CGRect)_dateLabelBoundsThatFitsWidth:(double)width
{
  _date = [(PLPlatterHeaderContentViewLayoutManager *)self _date];

  if (_date)
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

- (CGRect)_titleLabelBoundsThatFitsWidth:(double)width
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (_titleLabel)
  {
    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    _titleLabel2 = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];
    font = [_titleLabel2 font];
    [font lineHeight];

    [(PLLargeTextPlatterHeaderContentViewLayoutManager *)self _updateCachedTitleLabelSizeInfoIfNecessaryWithWidth:width];
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