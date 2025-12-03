@interface UITableViewCellLayoutManagerValue1
- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width;
- (id)defaultDetailTextLabelFontForCell:(id)cell;
- (id)detailTextLabelForCell:(id)cell;
- (id)textLabelForCell:(id)cell;
- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (void)layoutSubviewsOfCell:(id)cell;
@end

@implementation UITableViewCellLayoutManagerValue1

- (id)textLabelForCell:(id)cell
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerValue1;
  v3 = [(UITableViewCellLayoutManager *)&v5 defaultLabelForCell:cell];

  return v3;
}

- (id)detailTextLabelForCell:(id)cell
{
  cellCopy = cell;
  v5 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = UITableViewCellLayoutManagerValue1;
  v6 = [(UITableViewCellLayoutManager *)&v15 defaultLabelForCell:cellCopy ofClass:v5];
  _constants = [cellCopy _constants];
  _cellStyle = [cellCopy _cellStyle];
  traitCollection = [cellCopy traitCollection];
  v10 = [UICellConfigurationState _readonlyCellState:?];
  v11 = [_constants defaultDetailTextColorForCellStyle:_cellStyle traitCollection:traitCollection state:v10];
  [v6 setTextColor:v11];

  v12 = [(UITableViewCellLayoutManagerValue1 *)self defaultDetailTextLabelFontForCell:cellCopy];
  [v6 setFont:v12];

  LODWORD(self) = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy];
  if (self)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  [v6 setTextAlignment:v13];

  return v6;
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
  v22 = *MEMORY[0x1E695F060];
  v23 = *(MEMORY[0x1E695F060] + 8);
  v24 = v23;
  v25 = *MEMORY[0x1E695F060];
  if (v20)
  {
    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v20 inTotalTextRect:1 minimizeWidthOnVerticalOverflow:0 preferSingleLineWidth:v13, v15, v17, v19];
    v25 = v26;
    v24 = v27;
  }

  v28 = cellCopy;
  if (v21)
  {
    v29 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy];
    v30 = v17 - v25 + -6.0;
    if (v29)
    {
      v30 = v17;
    }

    if (v30 >= 0.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.0;
    }

    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v21 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:0 preferSingleLineWidth:0.0, 0.0, v31, v19];
    v28 = cellCopy;
    v22 = v32;
    v23 = v33;
  }

  v34 = v28[13];
  v67 = v23;
  v68 = v25;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:?])
  {
    if ((v34 & 0x400000) != 0)
    {
      v72.origin.x = v13;
      v72.origin.y = v15;
      v72.size.width = v17;
      v72.size.height = v19;
      v52 = CGRectGetMaxX(v72) - v25;
      v73.origin.x = v13;
      v73.origin.y = v15;
      v73.size.width = v17;
      v73.size.height = v19;
      v35 = v22;
      MinX = CGRectGetMaxX(v73) - v22;
      v38 = 0.0;
      v37 = v24 + 0.0;
      goto LABEL_23;
    }

    v35 = v22;
    MinX = 0.0;
    v37 = v24 + 0.0;
    v38 = 0.0;
    goto LABEL_21;
  }

  v66 = v15;
  v35 = v22;
  traitCollection = [cellCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v37 = 0.0;
  v38 = 0.0;
  if (userInterfaceIdiom != 3)
  {
    font = [v20 font];
    [font ascender];
    v43 = v42;
    font2 = [v21 font];
    [font2 ascender];
    v46 = v45;

    if (v43 >= v46)
    {
      font3 = [v20 font];
      [font3 ascender];
      v54 = v53;
      font4 = [v21 font];
      [font4 ascender];
      v37 = round(v54 - v55);
    }

    else
    {
      font3 = [v21 font];
      [font3 ascender];
      v49 = v48;
      font4 = [v20 font];
      [font4 ascender];
      v38 = round(v49 - v51);
      v37 = 0.0;
    }
  }

  if ((v34 & 0x400000) == 0)
  {
    MinX = v17 - v35;
LABEL_21:
    v52 = 0.0;
    goto LABEL_23;
  }

  v74.origin.x = v13;
  v74.origin.y = v66;
  v74.size.width = v17;
  v74.size.height = v19;
  v56 = CGRectGetMaxX(v74) - v68;
  v75.origin.x = v13;
  v75.origin.y = v66;
  v52 = v56;
  v75.size.width = v17;
  v75.size.height = v19;
  MinX = CGRectGetMinX(v75);
LABEL_23:
  v76.origin.x = v52;
  v76.origin.y = v38;
  v76.size.width = v68;
  v76.size.height = v24;
  v57 = v52;
  v58 = MinX;
  v59 = v37;
  v60 = v35;
  v61 = v67;
  v77 = CGRectUnion(v76, *&MinX);
  v62 = ceil((v19 - v77.size.height) * 0.5);
  if ((v34 & 0x400000) != 0)
  {
    v13 = 0.0;
  }

  v78.origin.x = v57;
  v78.origin.y = v38;
  v78.size.width = v68;
  v78.size.height = v24;
  v79 = CGRectOffset(v78, v13, v62);
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  v79.origin.x = v58;
  v79.origin.y = v37;
  v79.size.width = v35;
  v79.size.height = v67;
  v80 = CGRectOffset(v79, v13, v62);
  if (rect)
  {
    rect->origin.x = x;
    rect->origin.y = y;
    rect->size.width = width;
    rect->size.height = height;
  }

  if (labelRect)
  {
    *labelRect = v80;
  }
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
    v13.super_class = UITableViewCellLayoutManagerValue1;
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

- (void)layoutSubviewsOfCell:(id)cell
{
  cellCopy = cell;
  v26.receiver = self;
  v26.super_class = UITableViewCellLayoutManagerValue1;
  [(UITableViewCellLayoutManager *)&v26 layoutSubviewsOfCell:cellCopy];
  v5 = [cellCopy _textLabel:0];
  if (v5)
  {
    v6 = v5;
    font = [v5 font];
    [font pointSize];
    v9 = v8;

    if (v9 == 0.0)
    {
      v10 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:cellCopy];
      [v6 setFont:v10];
    }

    text = [v6 text];
    v12 = text;
    if (text && [text length])
    {
      superview = [v6 superview];

      if (superview)
      {
LABEL_10:

        goto LABEL_11;
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

    goto LABEL_10;
  }

LABEL_11:
  v15 = [cellCopy _detailTextLabel:0];
  if (v15)
  {
    v16 = v15;
    if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:cellCopy])
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v17 != [v16 textAlignment])
    {
      [v16 setTextAlignment:v17];
    }

    font2 = [v16 font];
    [font2 pointSize];
    v20 = v19;

    if (v20 == 0.0)
    {
      v21 = [(UITableViewCellLayoutManagerValue1 *)self defaultDetailTextLabelFontForCell:cellCopy];
      [v16 setFont:v21];
    }

    text2 = [v16 text];
    v23 = text2;
    if (text2 && [text2 length])
    {
      superview2 = [v16 superview];

      if (superview2)
      {
LABEL_25:

        goto LABEL_26;
      }

      contentView2 = [cellCopy contentView];
      [contentView2 addSubview:v16];
    }

    else
    {
      [v16 removeFromSuperview];
      contentView2 = v16;
      v16 = 0;
    }

    goto LABEL_25;
  }

LABEL_26:
}

@end