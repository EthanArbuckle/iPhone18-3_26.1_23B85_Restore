@interface RUIVariableHeightCell
- (CGSize)sizeForTextLabel:(id)a3 width:(double)a4;
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
  v4 = [(RUIVariableHeightCell *)self textLabel];
  v5 = [(RUIVariableHeightCell *)self detailTextLabel];
  v6 = [v4 text];
  if ([v6 _isNaturallyRTL])
  {

    v7 = 1;
    v8 = 2;
  }

  else
  {
    v9 = [v5 text];
    v7 = [v9 _isNaturallyRTL];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  [v5 setTextAlignment:v8];
  if (self->_detailTextAlignment)
  {
    [v5 setTextAlignment:?];
  }

  v10 = [(RUIVariableHeightCell *)self layoutManager];
  [(RUIVariableHeightCell *)self frame];
  [v10 textRectForCell:self rowWidth:0 forSizing:CGRectGetWidth(v56)];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(RUIVariableHeightCell *)self traitCollection];
  v20 = [v19 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v20);

  [v4 frame];
  if (IsAccessibilityCategory)
  {
    [v4 setFrame:?];
    [v5 frame];
    v23 = v22;
    v25 = v24;
    [v4 frame];
    v12 = v26;
    v27 = v5;
  }

  else
  {
    [v5 frame];
    rect = v18;
    v52 = v14;
    if (v5)
    {
      v32 = [v4 text];
      if ([v32 length])
      {
        [(RUIVariableHeightCell *)self textFieldOffset];
        v34 = v33;
      }

      else
      {
        v34 = 0.0;
      }

      [(RUIVariableHeightCell *)self textFieldOffset];
      [(RUIVariableHeightCell *)self sizeForTextLabel:v4 width:?];
      v50 = v41;
      v25 = v42;
      v58.origin.x = v12;
      v58.origin.y = v14;
      v58.size.width = v16;
      v58.size.height = rect;
      MaxX = CGRectGetMaxX(v58);
      if (!v7)
      {
        MaxX = MaxX - v12;
      }

      v44 = MaxX - v34;
      [(RUIVariableHeightCell *)self sizeForTextLabel:v5 width:MaxX - v34, v50];
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
      if (v7)
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
      [(RUIVariableHeightCell *)self sizeForTextLabel:v4 width:CGRectGetWidth(v57)];
      v39 = v38;
      v25 = v40;
    }

    [v3 scaledValueForValue:15.5];
    v23 = RUIRoundToPixel(v49);
    if (v7)
    {
      v60.origin.x = v12;
      v60.origin.y = v52;
      v60.size.width = v16;
      v60.size.height = rect;
      v12 = CGRectGetMaxX(v60) - v39;
    }

    [v5 setFrame:{v35, v36, v37, v53}];
    v16 = v39;
    v27 = v4;
  }

  [v27 setFrame:{v12, v23, v16, v25}];
}

- (CGSize)sizeForTextLabel:(id)a3 width:(double)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 text];
  v15 = *MEMORY[0x277D740A8];
  v7 = [v5 font];

  v16[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v6 boundingRectWithSize:1 options:v8 attributes:0 context:{a4, 1.79769313e308}];
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
  v6 = [(RUIVariableHeightCell *)self textLabel];
  v7 = [v6 text];
  v8 = [v7 length];

  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    v11 = [(RUIVariableHeightCell *)self textLabel];
    v12 = [(RUIVariableHeightCell *)self textLabel];
    [v12 size];
    [(RUIVariableHeightCell *)self sizeForTextLabel:v11 width:?];
    v10 = RUIRoundToPixel(v13 + v5 * 2.0);
  }

  v14 = [(RUIVariableHeightCell *)self detailTextLabel];
  v15 = [v14 text];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [(RUIVariableHeightCell *)self detailTextLabel];
    v18 = [(RUIVariableHeightCell *)self detailTextLabel];
    [v18 size];
    [(RUIVariableHeightCell *)self sizeForTextLabel:v17 width:?];
    v9 = RUIRoundToPixel(v19 + v5 * 2.0);
  }

  v20 = [(RUIVariableHeightCell *)self traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v21);
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