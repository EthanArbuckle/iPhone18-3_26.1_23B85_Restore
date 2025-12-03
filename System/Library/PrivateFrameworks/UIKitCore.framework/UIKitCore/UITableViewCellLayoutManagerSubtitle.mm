@interface UITableViewCellLayoutManagerSubtitle
- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width;
- (double)_textLabelYAdjustmentForCell:(id)cell totalTextRect:(CGRect)rect;
- (double)defaultTextLabelFontSizeForCell:(id)cell;
- (id)defaultDetailTextLabelFontForCell:(id)cell;
- (id)detailTextLabelForCell:(id)cell;
- (id)imageViewForCell:(id)cell;
- (id)textLabelForCell:(id)cell;
- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (void)layoutSubviewsOfCell:(id)cell;
@end

@implementation UITableViewCellLayoutManagerSubtitle

- (double)defaultTextLabelFontSizeForCell:(id)cell
{
  cellCopy = cell;
  _constants = [cellCopy _constants];
  _cellStyle = [cellCopy _cellStyle];

  [_constants defaultTextLabelFontSizeForCellStyle:_cellStyle];
  v7 = v6;

  return v7;
}

- (id)imageViewForCell:(id)cell
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerSubtitle;
  v3 = [(UITableViewCellLayoutManager *)&v5 defaultImageViewForCell:cell];

  return v3;
}

- (id)textLabelForCell:(id)cell
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerSubtitle;
  v3 = [(UITableViewCellLayoutManager *)&v5 defaultLabelForCell:cell];

  return v3;
}

- (id)detailTextLabelForCell:(id)cell
{
  cellCopy = cell;
  v5 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = UITableViewCellLayoutManagerSubtitle;
  v6 = [(UITableViewCellLayoutManager *)&v15 defaultLabelForCell:cellCopy ofClass:v5];
  _constants = [cellCopy _constants];
  _tableView = [cellCopy _tableView];
  v9 = [_constants defaultDetailTextFontForCellStyle:{objc_msgSend(cellCopy, "_cellStyle")}];
  [v6 setFont:v9];

  _cellStyle = [cellCopy _cellStyle];
  traitCollection = [cellCopy traitCollection];

  v12 = [UICellConfigurationState _readonlyCellState:?];
  v13 = [_constants defaultDetailTextColorForCellStyle:_cellStyle traitCollection:traitCollection state:v12];
  [v6 setTextColor:v13];

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

- (double)_textLabelYAdjustmentForCell:(id)cell totalTextRect:(CGRect)rect
{
  cellCopy = cell;
  v5 = 0.0;
  if (dyld_program_sdk_at_least())
  {
    _constants = [cellCopy _constants];
    v7 = [_constants defaultTextLabelFontForCellStyle:{objc_msgSend(cellCopy, "style")}];
    [v7 pointSize];

    v8 = [cellCopy _textLabel:0];
    font = [v8 font];
    [font pointSize];

    v10 = cellCopy;
    traitCollection = [v10 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      v13 = [v10 _detailTextLabel:0];
      text = [v13 text];
      v15 = [text length] != 0;

      _constants2 = [v10 _constants];
      _tableView = [v10 _tableView];
      [_constants2 defaultRowHeightForTableView:_tableView cellStyle:objc_msgSend(v10 hasDetailText:{"style"), v15}];
    }

    UIRoundToViewScale(v10);
    v5 = v18;
  }

  return v5;
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
    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v20 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:1 preferSingleLineWidth:v13, v15, v17, v19];
    v25 = v26;
    v24 = v27;
  }

  if (v21)
  {
    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v21 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:1 preferSingleLineWidth:v13, v15, v17, v19];
    v23 = v28;
    v22 = v29;
  }

  rect_8 = v22;
  rect_16 = v17;
  v30 = v19;
  v31 = v13;
  v32 = 0.0;
  v33 = 0.0;
  if ((cellCopy[106] & 0x40) != 0)
  {
    v53.origin.x = v13;
    v53.origin.y = v15;
    v53.size.width = rect_16;
    v53.size.height = v30;
    v33 = CGRectGetMaxX(v53) - v25;
    v54.origin.x = v13;
    v54.origin.y = v15;
    v54.size.width = rect_16;
    v54.size.height = v30;
    v32 = CGRectGetMaxX(v54) - v23;
    v31 = 0.0;
  }

  rect = v32;
  v55.origin.y = 0.0;
  v55.origin.x = v33;
  v55.size.width = v25;
  v55.size.height = v24;
  v34 = v24 + 0.0;
  v35 = v23;
  v36 = rect_8;
  v56 = CGRectUnion(v55, *&v32);
  v44 = v30;
  v37 = ceil((v30 - v56.size.height) * 0.5);
  v56.origin.y = 0.0;
  v56.origin.x = v33;
  v56.size.width = v25;
  v56.size.height = v24;
  v57 = CGRectOffset(v56, v31, v37);
  width = v57.size.width;
  x = v57.origin.x;
  y = v57.origin.y;
  height = v57.size.height;
  v57.origin.x = rect;
  v57.origin.y = v24 + 0.0;
  v57.size.width = v23;
  v57.size.height = rect_8;
  v58 = CGRectOffset(v57, v31, v37);
  v39 = v58.origin.x;
  v40 = v58.origin.y;
  v41 = v58.size.width;
  v42 = v58.size.height;
  if (rect_8 > 0.0)
  {
    [(UITableViewCellLayoutManagerSubtitle *)self _textLabelYAdjustmentForCell:cellCopy totalTextRect:v13, v15, rect_16, v44];
    y = y + v43;
  }

  if (rect)
  {
    rect->origin.x = x;
    rect->origin.y = y;
    rect->size.width = width;
    rect->size.height = height;
  }

  if (labelRect)
  {
    labelRect->origin.x = v39;
    labelRect->origin.y = v40;
    labelRect->size.width = v41;
    labelRect->size.height = v42;
  }
}

- (void)layoutSubviewsOfCell:(id)cell
{
  cellCopy = cell;
  v25.receiver = self;
  v25.super_class = UITableViewCellLayoutManagerSubtitle;
  [(UITableViewCellLayoutManager *)&v25 layoutSubviewsOfCell:cellCopy];
  v5 = [cellCopy _textLabel:0];
  v6 = v5;
  if (v5)
  {
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

      if (!superview)
      {
        contentView = [cellCopy contentView];
        [contentView addSubview:v6];
      }
    }

    else
    {
      [v6 removeFromSuperview];
    }
  }

  v15 = [cellCopy _detailTextLabel:0];
  v16 = v15;
  if (v15)
  {
    font2 = [v15 font];
    [font2 pointSize];
    v19 = v18;

    if (v19 == 0.0)
    {
      v20 = [(UITableViewCellLayoutManagerSubtitle *)self defaultDetailTextLabelFontForCell:cellCopy];
      [v16 setFont:v20];
    }

    text2 = [v16 text];
    v22 = text2;
    if (text2 && [text2 length])
    {
      superview2 = [v16 superview];

      if (!superview2)
      {
        contentView2 = [cellCopy contentView];
        [contentView2 addSubview:v16];
      }
    }

    else
    {
      [v16 removeFromSuperview];
    }
  }
}

- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width
{
  cellCopy = cell;
  if (dyld_program_sdk_at_least())
  {
    v7 = _UITableViewCellLayoutIntrinsicSizeForCellStackingLabels(self, cellCopy, width);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UITableViewCellLayoutManagerSubtitle;
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