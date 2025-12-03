@interface PLPlatterHeaderContentViewLayoutManager
+ (double)contentBaselineToBoundsBottomWithFont:(id)font boundsWidth:(double)width scale:(double)scale;
- (BOOL)_heedsHorizontalLayoutMargins;
- (BOOL)_shouldReverseLayoutDirection;
- (CGRect)_titleLabelBoundsForSize:(CGSize)size withNumberOfLines:(double)lines;
- (CGSize)_measuringSizeForWidth:(double)width;
- (NSArray)_iconButtons;
- (NSDate)_date;
- (PLPlatterHeaderContentView)headerContentView;
- (PLPlatterHeaderContentViewLayoutManager)initWithPlatterHeaderContentView:(id)view;
- (UIButton)_utilityButton;
- (UIEdgeInsets)_layoutMargins;
- (UILabel)_dateLabel;
- (UILabel)_titleLabel;
- (UIView)_utilityView;
- (double)_titleLabelBaselineOffset;
- (double)contentBaseline;
- (double)headerHeightForWidth:(double)width;
- (void)layoutDateLabelWithScale:(double)scale;
- (void)layoutIconButtonsWithScale:(double)scale;
- (void)layoutTitleLabelWithTrailingXLimit:(double)limit scale:(double)scale;
- (void)layoutUtilityButtonWithScale:(double)scale;
@end

@implementation PLPlatterHeaderContentViewLayoutManager

+ (double)contentBaselineToBoundsBottomWithFont:(id)font boundsWidth:(double)width scale:(double)scale
{
  fontCopy = font;
  [self _headerHeightWithFont:fontCopy forWidth:width];
  [self _titleLabelBaselineOffsetWithFont:fontCopy];

  UIRoundToScale();
  return result;
}

- (PLPlatterHeaderContentViewLayoutManager)initWithPlatterHeaderContentView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = PLPlatterHeaderContentViewLayoutManager;
  v5 = [(PLPlatterHeaderContentViewLayoutManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_headerContentView, viewCopy);
  }

  return v6;
}

- (double)headerHeightForWidth:(double)width
{
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  _titleLabelFont = [WeakRetained _titleLabelFont];
  [v5 _headerHeightWithFont:_titleLabelFont forWidth:width];
  v9 = v8;

  return v9;
}

- (double)contentBaseline
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  [WeakRetained _iconDimension];
  v5 = v4 + 10.0;
  [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
  v7 = v6;

  if (v5 >= v7)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

- (void)layoutIconButtonsWithScale:(double)scale
{
  _iconButtons = [(PLPlatterHeaderContentViewLayoutManager *)self _iconButtons];
  v4 = [_iconButtons count];
  if (v4)
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
    [WeakRetained bounds];
    v8 = v7;
    v34 = v9;
    v35 = v10;
    rect = v11;
    [WeakRetained _iconDimension];
    v13 = v12;
    BSRectWithSize();
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v33 = (CGRectGetWidth(v39) - v13) * 0.5;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v32 = (CGRectGetHeight(v40) - v13) * 0.5;
    [WeakRetained _iconLeadingPadding];
    v19 = v18;
    if ([(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection])
    {
      v41.origin.x = v8;
      v41.origin.y = v34;
      v41.size.height = v35;
      v41.size.width = rect;
      CGRectGetWidth(v41);
    }

    UIRectCenteredYInRect();
    v20 = v42.origin.x;
    v21 = v42.size.width;
    v22 = v42.size.height;
    MinY = CGRectGetMinY(v42);
    if (MinY >= 10.0 - v32)
    {
      v24 = MinY;
    }

    else
    {
      v24 = 10.0 - v32;
    }

    _shouldReverseLayoutDirection = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
    for (i = 0; i != v5; ++i)
    {
      v27 = [_iconButtons objectAtIndex:i];
      UIRectIntegralWithScale();
      [v27 setFrame:?];
      if (i < v5 - 1)
      {
        v28 = v20;
        v29 = v24;
        v30 = v21;
        v31 = v22;
        if (_shouldReverseLayoutDirection)
        {
          v20 = CGRectGetMinX(*&v28) - v19 - v13;
        }

        else
        {
          v20 = v19 + CGRectGetMaxX(*&v28) + -v33 * 2.0;
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
    limitCopy = limit;
    v41 = _titleLabel;
    WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
    [WeakRetained bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v36 = v11;
    v38 = v9;
    v43.origin.x = v9;
    v43.origin.y = v11;
    rect = v15;
    v34 = v13;
    v43.size.width = v13;
    v43.size.height = v15;
    [(PLPlatterHeaderContentViewLayoutManager *)self _measuringSizeForWidth:CGRectGetWidth(v43)];
    [PLPlatterHeaderContentViewLayoutManager _titleLabelBoundsForSize:"_titleLabelBoundsForSize:withNumberOfLines:" withNumberOfLines:?];
    [v41 setBounds:?];
    [v41 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    _dateLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _dateLabel];
    if (_dateLabel)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 16.0;
    }

    _iconButtons = [(PLPlatterHeaderContentViewLayoutManager *)self _iconButtons];
    if ([_iconButtons count])
    {
      v27 = 10.0;
    }

    else
    {
      v27 = 12.0;
    }

    v28 = v27;
    if ([(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection])
    {
      v44.origin.x = v38;
      v28 = v25 + limitCopy;
      v44.size.width = v34;
      v44.origin.y = v36;
      v44.size.height = rect;
      v29 = CGRectGetWidth(v44) - v27;
      v45.origin.x = v17;
      v45.origin.y = v19;
      v45.size.width = v21;
      v45.size.height = v23;
      v30 = v29 - CGRectGetWidth(v45);
      if (v25 + limitCopy < v30)
      {
        v28 = v30;
      }
    }

    v31 = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection:*&rect];
    v46.origin.x = v28;
    v46.origin.y = v19;
    v46.size.width = v21;
    v46.size.height = v23;
    CGRectGetWidth(v46);
    if (v31)
    {
      v47.origin.y = v37;
      v47.origin.x = v39;
      v47.size.height = recta;
      v47.size.width = v35;
      CGRectGetMaxX(v47);
    }

    v48.origin.x = v28;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    CGRectGetMinX(v48);
    [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    [v41 _firstLineBaselineOffsetFromBoundsTop];
    UIRectIntegralWithScale();
    [v41 setFrame:?];
    _titleLabel = v41;
  }
}

- (void)layoutUtilityButtonWithScale:(double)scale
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  [WeakRetained bounds];
  v6 = v5;
  v56 = v8;
  v57 = v7;
  rect = v9;

  _utilityView = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityView];
  v11 = _utilityView;
  if (_utilityView)
  {
    _utilityButton = _utilityView;
  }

  else
  {
    _utilityButton = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  }

  v13 = _utilityButton;

  _utilityButton2 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  if (v13 == _utilityButton2)
  {
    _utilityButton3 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    titleLabel = [_utilityButton3 titleLabel];
    text = [titleLabel text];
    v15 = [text length] != 0;
  }

  else
  {
    v15 = 0;
  }

  _shouldReverseLayoutDirection = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
  _heedsHorizontalLayoutMargins = [(PLPlatterHeaderContentViewLayoutManager *)self _heedsHorizontalLayoutMargins];
  [(PLPlatterHeaderContentViewLayoutManager *)self _layoutMargins];
  v22 = v21;
  v24 = v23;
  [v13 sizeToFit];
  if (!v15)
  {
    [v13 bounds];
    v60 = v45;
    v61 = v44;
    v58 = v47;
    v59 = v46;
    if (!_shouldReverseLayoutDirection)
    {
LABEL_26:
      v66.origin.x = v6;
      v66.size.width = v56;
      v66.origin.y = v57;
      v66.size.height = rect;
      CGRectGetWidth(v66);
      v67.origin.y = v60;
      v67.origin.x = v61;
      v67.size.height = v58;
      v67.size.width = v59;
      CGRectGetMaxX(v67);
      goto LABEL_28;
    }

LABEL_24:
    v65.origin.y = v60;
    v65.origin.x = v61;
    v65.size.height = v58;
    v65.size.width = v59;
    CGRectGetMinX(v65);
    goto LABEL_28;
  }

  v54 = v6;
  v25 = MEMORY[0x277D75D18];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __72__PLPlatterHeaderContentViewLayoutManager_layoutUtilityButtonWithScale___block_invoke;
  v62[3] = &unk_2784250D8;
  v26 = v13;
  v63 = v26;
  [v25 performWithoutAnimation:v62];

  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [v26 contentRectForBounds:?];
  [v26 titleRectForContentRect:?];
  v60 = v36;
  v61 = v35;
  v58 = v38;
  v59 = v37;
  if (_heedsHorizontalLayoutMargins)
  {
    v39 = v24;
  }

  else
  {
    v22 = 16.0;
    v39 = 16.0;
  }

  if (_shouldReverseLayoutDirection)
  {
    v40 = v22;
  }

  else
  {
    v40 = v39;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = v54;
    if (!_shouldReverseLayoutDirection)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (_shouldReverseLayoutDirection)
  {
    v41 = v22;
  }

  else
  {
    v41 = 0.0;
  }

  if (_shouldReverseLayoutDirection)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v39;
  }

  [v26 setTitleEdgeInsets:{0.0, v41, 0.0, v42, *&v54}];
  v64.origin.x = v28;
  v64.origin.y = v30;
  v64.size.width = v32;
  v64.size.height = v34;
  v43 = v40 + CGRectGetWidth(v64);
  if (!_shouldReverseLayoutDirection)
  {
    v68.origin.x = v54;
    v68.size.width = v56;
    v68.origin.y = v57;
    v68.size.height = rect;
    CGRectGetWidth(v68);
    v69.origin.x = v28;
    v69.origin.y = v30;
    v69.size.width = v43;
    v69.size.height = v34;
    CGRectGetWidth(v69);
  }

LABEL_28:
  _utilityButton4 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  titleLabel2 = [_utilityButton4 titleLabel];
  text2 = [titleLabel2 text];
  v51 = [text2 length];

  if (v51)
  {
    [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    _utilityButton5 = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
    titleLabel3 = [_utilityButton5 titleLabel];
    [titleLabel3 _firstLineBaselineOffsetFromBoundsTop];
    v70.origin.y = v60;
    v70.origin.x = v61;
    v70.size.height = v58;
    v70.size.width = v59;
    CGRectGetMinY(v70);
  }

  else
  {
    UIRectCenteredYInRect();
  }

  UIRectIntegralWithScale();
  [v13 setFrame:?];
}

- (void)layoutDateLabelWithScale:(double)scale
{
  _dateLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _dateLabel];
  if (!_dateLabel)
  {
    goto LABEL_12;
  }

  v31 = _dateLabel;
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  [WeakRetained bounds];
  v29 = v7;
  v30 = v6;
  v9 = v8;
  v11 = v10;

  _shouldReverseLayoutDirection = [(PLPlatterHeaderContentViewLayoutManager *)self _shouldReverseLayoutDirection];
  [v31 sizeToFit];
  _utilityButton = [(PLPlatterHeaderContentViewLayoutManager *)self _utilityButton];
  titleLabel = [_utilityButton titleLabel];
  text = [titleLabel text];
  if ([text length])
  {
    [_utilityButton alpha];
    v17 = v16;
    goto LABEL_6;
  }

  currentImage = [_utilityButton currentImage];
  if (currentImage)
  {
    v19 = currentImage;
    [_utilityButton alpha];
    v17 = v20;

LABEL_6:
    if (v17 > 0.0)
    {
      [_utilityButton frame];
      CGRectGetWidth(v33);
    }

    goto LABEL_9;
  }

LABEL_9:
  [v31 frame];
  v24 = v23;
  v26 = v25;
  if (!_shouldReverseLayoutDirection)
  {
    v27 = v21;
    v28 = v22;
    v34.size.width = v29;
    v34.origin.x = v30;
    v34.origin.y = v9;
    v34.size.height = v11;
    CGRectGetWidth(v34);
    v35.origin.x = v27;
    v35.origin.y = v28;
    v35.size.width = v24;
    v35.size.height = v26;
    CGRectGetWidth(v35);
  }

  [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
  [v31 _firstLineBaselineOffsetFromBoundsTop];
  UIRectIntegralWithScale();
  [v31 setFrame:?];

  _dateLabel = v31;
LABEL_12:
}

- (BOOL)_shouldReverseLayoutDirection
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  _shouldReverseLayoutDirection = [WeakRetained _shouldReverseLayoutDirection];

  return _shouldReverseLayoutDirection;
}

- (BOOL)_heedsHorizontalLayoutMargins
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  heedsHorizontalLayoutMargins = [WeakRetained heedsHorizontalLayoutMargins];

  return heedsHorizontalLayoutMargins;
}

- (NSArray)_iconButtons
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  iconButtons = [WeakRetained iconButtons];

  return iconButtons;
}

- (UILabel)_titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  title = [WeakRetained title];
  if ([title length])
  {
    _titleLabel = [WeakRetained _titleLabel];
  }

  else
  {
    _titleLabel = 0;
  }

  return _titleLabel;
}

- (NSDate)_date
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  date = [WeakRetained date];

  return date;
}

- (UILabel)_dateLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  _dateLabel = [WeakRetained _dateLabel];

  return _dateLabel;
}

- (UIView)_utilityView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  utilityView = [WeakRetained utilityView];

  return utilityView;
}

- (UIButton)_utilityButton
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  _utilityButton = [WeakRetained _utilityButton];

  return _utilityButton;
}

- (UIEdgeInsets)_layoutMargins
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  [WeakRetained layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)_titleLabelBaselineOffset
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);
  _titleLabelFont = [WeakRetained _titleLabelFont];
  [v3 _titleLabelBaselineOffsetWithFont:_titleLabelFont];
  v7 = v6;

  return v7;
}

- (CGSize)_measuringSizeForWidth:(double)width
{
  v3 = width + -10.0 + -7.0;
  v4 = 1.79769313e308;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)_titleLabelBoundsForSize:(CGSize)size withNumberOfLines:(double)lines
{
  _titleLabel = [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabel];

  if (_titleLabel)
  {
    [(PLPlatterHeaderContentViewLayoutManager *)self _titleLabelBaselineOffset];
    BSRectWithSize();
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (PLPlatterHeaderContentView)headerContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerContentView);

  return WeakRetained;
}

@end