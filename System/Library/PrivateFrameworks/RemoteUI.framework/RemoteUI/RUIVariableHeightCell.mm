@interface RUIVariableHeightCell
- (CGSize)sizeForTextLabel:(id)label width:(double)width;
- (double)height;
- (void)layoutSubviews;
@end

@implementation RUIVariableHeightCell

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = RUIVariableHeightCell;
  [(RemoteUITableViewCell *)&v55 layoutSubviews];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  textLabel = [(RUIVariableHeightCell *)self textLabel];
  detailTextLabel = [(RUIVariableHeightCell *)self detailTextLabel];
  text = [textLabel text];
  if ([text _isNaturallyRTL])
  {

    _isNaturallyRTL = 1;
    v8 = 2;
  }

  else
  {
    text2 = [detailTextLabel text];
    _isNaturallyRTL = [text2 _isNaturallyRTL];

    if (_isNaturallyRTL)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  [detailTextLabel setTextAlignment:v8];
  if (self->_detailTextAlignment)
  {
    [detailTextLabel setTextAlignment:?];
  }

  layoutManager = [(RUIVariableHeightCell *)self layoutManager];
  [(RUIVariableHeightCell *)self frame];
  [layoutManager textRectForCell:self rowWidth:0 forSizing:CGRectGetWidth(v56)];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  traitCollection = [(RUIVariableHeightCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [textLabel frame];
  if (IsAccessibilityCategory)
  {
    [textLabel setFrame:?];
    [detailTextLabel frame];
    v23 = v22;
    v25 = v24;
    [textLabel frame];
    v12 = v26;
    v27 = detailTextLabel;
  }

  else
  {
    [detailTextLabel frame];
    rect = v18;
    v52 = v14;
    if (detailTextLabel)
    {
      text3 = [textLabel text];
      if ([text3 length])
      {
        [(RUIVariableHeightCell *)self textFieldOffset];
        v34 = v33;
      }

      else
      {
        v34 = 0.0;
      }

      [(RUIVariableHeightCell *)self textFieldOffset];
      [(RUIVariableHeightCell *)self sizeForTextLabel:textLabel width:?];
      v50 = v41;
      v25 = v42;
      v58.origin.x = v12;
      v58.origin.y = v14;
      v58.size.width = v16;
      v58.size.height = rect;
      MaxX = CGRectGetMaxX(v58);
      if (!_isNaturallyRTL)
      {
        MaxX = MaxX - v12;
      }

      v44 = MaxX - v34;
      [(RUIVariableHeightCell *)self sizeForTextLabel:detailTextLabel width:MaxX - v34, v50];
      v53 = v46;
      if (v44 < v45 || self->_detailTextAlignment == 0)
      {
        v37 = v45;
      }

      else
      {
        v37 = v44;
      }

      [v3 scaledValueForValue:15.5];
      v36 = RUIRoundToPixel(v48);
      if (_isNaturallyRTL)
      {
        v59.origin.x = v12;
        v59.origin.y = v14;
        v59.size.width = v16;
        v59.size.height = rect;
        v35 = CGRectGetMaxX(v59) - v37 - v34;
      }

      else
      {
        v35 = v12 + v34;
      }

      v39 = v51;
    }

    else
    {
      v35 = v28;
      v36 = v29;
      v37 = v30;
      v53 = v31;
      v57.origin.x = v12;
      v57.origin.y = v14;
      v57.size.width = v16;
      v57.size.height = v18;
      [(RUIVariableHeightCell *)self sizeForTextLabel:textLabel width:CGRectGetWidth(v57)];
      v39 = v38;
      v25 = v40;
    }

    [v3 scaledValueForValue:15.5];
    v23 = RUIRoundToPixel(v49);
    if (_isNaturallyRTL)
    {
      v60.origin.x = v12;
      v60.origin.y = v52;
      v60.size.width = v16;
      v60.size.height = rect;
      v12 = CGRectGetMaxX(v60) - v39;
    }

    [detailTextLabel setFrame:{v35, v36, v37, v53}];
    v16 = v39;
    v27 = textLabel;
  }

  [v27 setFrame:{v12, v23, v16, v25}];
}

- (CGSize)sizeForTextLabel:(id)label width:(double)width
{
  v16[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  text = [labelCopy text];
  v15 = *MEMORY[0x277D740A8];
  font = [labelCopy font];

  v16[0] = font;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [text boundingRectWithSize:1 options:v8 attributes:0 context:{width, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)height
{
  [(RUIVariableHeightCell *)self layoutIfNeeded];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v3 scaledValueForValue:15.5];
  v5 = RUIRoundToPixel(v4);
  textLabel = [(RUIVariableHeightCell *)self textLabel];
  text = [textLabel text];
  v8 = [text length];

  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    textLabel2 = [(RUIVariableHeightCell *)self textLabel];
    textLabel3 = [(RUIVariableHeightCell *)self textLabel];
    [textLabel3 size];
    [(RUIVariableHeightCell *)self sizeForTextLabel:textLabel2 width:?];
    v10 = RUIRoundToPixel(v13 + v5 * 2.0);
  }

  detailTextLabel = [(RUIVariableHeightCell *)self detailTextLabel];
  text2 = [detailTextLabel text];
  v16 = [text2 length];

  if (v16)
  {
    detailTextLabel2 = [(RUIVariableHeightCell *)self detailTextLabel];
    detailTextLabel3 = [(RUIVariableHeightCell *)self detailTextLabel];
    [detailTextLabel3 size];
    [(RUIVariableHeightCell *)self sizeForTextLabel:detailTextLabel2 width:?];
    v9 = RUIRoundToPixel(v19 + v5 * 2.0);
  }

  traitCollection = [(RUIVariableHeightCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  if (v10 >= v9)
  {
    v23 = v10;
  }

  else
  {
    v23 = v9;
  }

  if (IsAccessibilityCategory)
  {
    v24 = v10 + v9;
  }

  else
  {
    v24 = v23;
  }

  return v24;
}

@end