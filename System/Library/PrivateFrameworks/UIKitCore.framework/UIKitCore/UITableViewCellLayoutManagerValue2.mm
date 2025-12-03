@interface UITableViewCellLayoutManagerValue2
- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width;
- (double)defaultTextLabelFontSizeForCell:(id)cell;
- (id)defaultDetailTextLabelFontForCell:(id)cell;
- (id)detailTextLabelForCell:(id)cell;
- (id)textLabelForCell:(id)cell;
- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (void)layoutSubviewsOfCell:(id)cell;
@end

@implementation UITableViewCellLayoutManagerValue2

- (double)defaultTextLabelFontSizeForCell:(id)cell
{
  cellCopy = cell;
  _constants = [cellCopy _constants];
  _cellStyle = [cellCopy _cellStyle];

  [_constants defaultTextLabelFontSizeForCellStyle:_cellStyle];
  v7 = v6;

  return v7;
}

- (id)textLabelForCell:(id)cell
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = UITableViewCellLayoutManagerValue2;
  cellCopy = cell;
  v5 = [(UITableViewCellLayoutManager *)&v8 defaultLabelForCell:cellCopy];
  LODWORD(selfCopy) = [(UITableViewCellLayoutManager *)selfCopy shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy, v8.receiver, v8.super_class];

  if (selfCopy)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  [v5 setTextAlignment:v6];

  return v5;
}

- (id)detailTextLabelForCell:(id)cell
{
  v13.receiver = self;
  v13.super_class = UITableViewCellLayoutManagerValue2;
  cellCopy = cell;
  v5 = [(UITableViewCellLayoutManager *)&v13 defaultLabelForCell:cellCopy];
  v6 = [(UITableViewCellLayoutManagerValue2 *)self defaultDetailTextLabelFontForCell:cellCopy, v13.receiver, v13.super_class];
  [v5 setFont:v6];

  _constants = [cellCopy _constants];
  _cellStyle = [cellCopy _cellStyle];
  traitCollection = [cellCopy traitCollection];

  v10 = [UICellConfigurationState _readonlyCellState:?];
  v11 = [_constants defaultDetailTextColorForCellStyle:_cellStyle traitCollection:traitCollection state:v10];
  [v5 setTextColor:v11];

  return v5;
}

- (id)defaultDetailTextLabelFontForCell:(id)cell
{
  cellCopy = cell;
  _constants = [cellCopy _constants];
  _cellStyle = [cellCopy _cellStyle];

  v6 = [_constants defaultDetailTextFontForCellStyle:_cellStyle];

  return v6;
}

- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  [(UITableViewCellLayoutManager *)self textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [cellCopy _textLabel:0];
  v21 = [cellCopy _detailTextLabel:0];
  v23 = *MEMORY[0x1E695F060];
  v22 = *(MEMORY[0x1E695F060] + 8);
  v24 = v22;
  v25 = *MEMORY[0x1E695F060];
  if (v20)
  {
    font = [v20 font];
    [font pointSize];
    v28 = v27;

    if (v28 == 0.0)
    {
      v29 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:cellCopy];
      [v20 setFont:v29];
    }

    [v20 sizeThatFits:{v17, v19}];
    v31 = v30;
    if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy])
    {
      v25 = v31;
    }

    else
    {
      v25 = 91.0;
    }

    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v20 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:0 preferSingleLineWidth:0.0, 0.0, v25, v19];
    v24 = v32;
  }

  v33 = cellCopy;
  if (v21)
  {
    v34 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy];
    v35 = 0.0;
    if (v17 >= 0.0)
    {
      v35 = v17;
    }

    if (v34)
    {
      v36 = v35;
    }

    else
    {
      v36 = v17 - v25 + -6.0;
    }

    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v21 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:0 preferSingleLineWidth:0.0, 0.0, v36, v19];
    v33 = cellCopy;
    v23 = v37;
    v22 = v38;
  }

  v39 = v33[13];
  v74 = v13;
  v76 = v22;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:?])
  {
    if ((v39 & 0x400000) != 0)
    {
      v79.origin.x = v13;
      v79.origin.y = v15;
      v79.size.width = v17;
      v79.size.height = v19;
      v57 = CGRectGetMaxX(v79) - v25;
      v80.origin.x = v13;
      v80.origin.y = v15;
      v80.size.width = v17;
      v44 = v57;
      v80.size.height = v19;
      v40 = CGRectGetMaxX(v80) - v23;
      v43 = 0.0;
      v41 = v23;
      v42 = v24 + 0.0;
    }

    else
    {
      v40 = 0.0;
      v41 = v23;
      v42 = v24 + 0.0;
      v43 = 0.0;
      v44 = 0.0;
    }
  }

  else
  {
    v72 = v25;
    v45 = v24;
    rect = v15;
    font2 = [v20 font];
    [font2 ascender];
    v48 = v47;
    font3 = [v21 font];
    [font3 ascender];
    v51 = v50;

    if (v48 >= v51)
    {
      font4 = [v20 font];
      [font4 ascender];
      v59 = v58;
      font5 = [v21 font];
      [font5 ascender];
      v42 = round(v59 - v60);
      v43 = 0.0;
    }

    else
    {
      font4 = [v21 font];
      [font4 ascender];
      v54 = v53;
      font5 = [v20 font];
      [font5 ascender];
      v43 = round(v54 - v56);
      v42 = 0.0;
    }

    v24 = v45;
    if ((v39 & 0x400000) != 0)
    {
      v81.origin.x = v13;
      v81.origin.y = rect;
      v81.size.width = v17;
      v81.size.height = v19;
      v25 = v72;
      v44 = CGRectGetMaxX(v81) - v72;
      v82.origin.x = v44;
      v82.origin.y = v43;
      v82.size.width = v72;
      v82.size.height = v24;
      MinX = CGRectGetMinX(v82);
      v41 = v23;
      v40 = MinX - v23 + -6.0;
    }

    else
    {
      v25 = v72;
      v40 = v72 + 6.0;
      v44 = 0.0;
      v41 = v23;
    }
  }

  v73 = v42;
  v83.origin.x = v44;
  v83.origin.y = v43;
  v83.size.width = v25;
  v83.size.height = v24;
  v62 = v40;
  v63 = v42;
  v64 = v41;
  v65 = v76;
  v84 = CGRectUnion(v83, *&v40);
  v66 = ceil((v19 - v84.size.height) * 0.5);
  if ((v39 & 0x400000) != 0)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = v74;
  }

  v85.origin.x = v44;
  v85.origin.y = v43;
  v85.size.width = v25;
  v85.size.height = v24;
  v86 = CGRectOffset(v85, v67, v66);
  x = v86.origin.x;
  y = v86.origin.y;
  width = v86.size.width;
  height = v86.size.height;
  v86.origin.x = v62;
  v86.origin.y = v73;
  v86.size.width = v64;
  v86.size.height = v76;
  v87 = CGRectOffset(v86, v67, v66);
  if (rect)
  {
    rect->origin.x = x;
    rect->origin.y = y;
    rect->size.width = width;
    rect->size.height = height;
  }

  if (labelRect)
  {
    *labelRect = v87;
  }
}

- (void)layoutSubviewsOfCell:(id)cell
{
  cellCopy = cell;
  v22.receiver = self;
  v22.super_class = UITableViewCellLayoutManagerValue2;
  [(UITableViewCellLayoutManager *)&v22 layoutSubviewsOfCell:cellCopy];
  v5 = [cellCopy _textLabel:0];
  if (v5)
  {
    v6 = v5;
    if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy])
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v7 != [v6 textAlignment])
    {
      [v6 setTextAlignment:v7];
    }

    text = [v6 text];
    v9 = text;
    if (text && [text length])
    {
      superview = [v6 superview];

      if (superview)
      {
LABEL_13:

        goto LABEL_14;
      }

      contentView = [cellCopy contentView];
      [contentView addSubview:v6];
    }

    else
    {
      [v6 removeFromSuperview];
      contentView = v6;
      v6 = 0;
    }

    goto LABEL_13;
  }

LABEL_14:
  v12 = [cellCopy _detailTextLabel:0];
  if (v12)
  {
    v13 = v12;
    font = [v12 font];
    [font pointSize];
    v16 = v15;

    if (v16 == 0.0)
    {
      v17 = [(UITableViewCellLayoutManagerValue2 *)self defaultDetailTextLabelFontForCell:cellCopy];
      [v13 setFont:v17];
    }

    text2 = [v13 text];
    v19 = text2;
    if (text2 && [text2 length])
    {
      superview2 = [v13 superview];

      if (superview2)
      {
LABEL_23:

        goto LABEL_24;
      }

      contentView2 = [cellCopy contentView];
      [contentView2 addSubview:v13];
    }

    else
    {
      [v13 removeFromSuperview];
      contentView2 = v13;
      v13 = 0;
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width
{
  cellCopy = cell;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy])
  {
    v7 = _UITableViewCellLayoutIntrinsicSizeForCellStackingLabels(self, cellCopy, width);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UITableViewCellLayoutManagerValue2;
    [(UITableViewCellLayoutManager *)&v13 intrinsicContentSizeForCell:cellCopy rowWidth:width];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end