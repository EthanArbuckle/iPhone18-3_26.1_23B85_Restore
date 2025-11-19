@interface UITableViewCellLayoutManagerSubtitle
- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4;
- (double)_textLabelYAdjustmentForCell:(id)a3 totalTextRect:(CGRect)a4;
- (double)defaultTextLabelFontSizeForCell:(id)a3;
- (id)defaultDetailTextLabelFontForCell:(id)a3;
- (id)detailTextLabelForCell:(id)a3;
- (id)imageViewForCell:(id)a3;
- (id)textLabelForCell:(id)a3;
- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7;
- (void)layoutSubviewsOfCell:(id)a3;
@end

@implementation UITableViewCellLayoutManagerSubtitle

- (double)defaultTextLabelFontSizeForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _constants];
  v5 = [v3 _cellStyle];

  [v4 defaultTextLabelFontSizeForCellStyle:v5];
  v7 = v6;

  return v7;
}

- (id)imageViewForCell:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerSubtitle;
  v3 = [(UITableViewCellLayoutManager *)&v5 defaultImageViewForCell:a3];

  return v3;
}

- (id)textLabelForCell:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerSubtitle;
  v3 = [(UITableViewCellLayoutManager *)&v5 defaultLabelForCell:a3];

  return v3;
}

- (id)detailTextLabelForCell:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = UITableViewCellLayoutManagerSubtitle;
  v6 = [(UITableViewCellLayoutManager *)&v15 defaultLabelForCell:v4 ofClass:v5];
  v7 = [v4 _constants];
  v8 = [v4 _tableView];
  v9 = [v7 defaultDetailTextFontForCellStyle:{objc_msgSend(v4, "_cellStyle")}];
  [v6 setFont:v9];

  v10 = [v4 _cellStyle];
  v11 = [v4 traitCollection];

  v12 = [UICellConfigurationState _readonlyCellState:?];
  v13 = [v7 defaultDetailTextColorForCellStyle:v10 traitCollection:v11 state:v12];
  [v6 setTextColor:v13];

  return v6;
}

- (id)defaultDetailTextLabelFontForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _constants];
  v5 = [v3 _cellStyle];

  v6 = [v4 defaultDetailTextFontForCellStyle:v5];

  return v6;
}

- (double)_textLabelYAdjustmentForCell:(id)a3 totalTextRect:(CGRect)a4
{
  v4 = a3;
  v5 = 0.0;
  if (dyld_program_sdk_at_least())
  {
    v6 = [v4 _constants];
    v7 = [v6 defaultTextLabelFontForCellStyle:{objc_msgSend(v4, "style")}];
    [v7 pointSize];

    v8 = [v4 _textLabel:0];
    v9 = [v8 font];
    [v9 pointSize];

    v10 = v4;
    v11 = [v10 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      v13 = [v10 _detailTextLabel:0];
      v14 = [v13 text];
      v15 = [v14 length] != 0;

      v16 = [v10 _constants];
      v17 = [v10 _tableView];
      [v16 defaultRowHeightForTableView:v17 cellStyle:objc_msgSend(v10 hasDetailText:{"style"), v15}];
    }

    UIRoundToViewScale(v10);
    v5 = v18;
  }

  return v5;
}

- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7
{
  v7 = a7;
  v51 = a5;
  [(UITableViewCellLayoutManager *)self textRectForCell:v51 rowWidth:v7 forSizing:a6];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v51 _textLabel:0];
  v21 = [v51 _detailTextLabel:0];
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
  if ((v51[106] & 0x40) != 0)
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
    [(UITableViewCellLayoutManagerSubtitle *)self _textLabelYAdjustmentForCell:v51 totalTextRect:v13, v15, rect_16, v44];
    y = y + v43;
  }

  if (a3)
  {
    a3->origin.x = x;
    a3->origin.y = y;
    a3->size.width = width;
    a3->size.height = height;
  }

  if (a4)
  {
    a4->origin.x = v39;
    a4->origin.y = v40;
    a4->size.width = v41;
    a4->size.height = v42;
  }
}

- (void)layoutSubviewsOfCell:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UITableViewCellLayoutManagerSubtitle;
  [(UITableViewCellLayoutManager *)&v25 layoutSubviewsOfCell:v4];
  v5 = [v4 _textLabel:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 font];
    [v7 pointSize];
    v9 = v8;

    if (v9 == 0.0)
    {
      v10 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:v4];
      [v6 setFont:v10];
    }

    v11 = [v6 text];
    v12 = v11;
    if (v11 && [v11 length])
    {
      v13 = [v6 superview];

      if (!v13)
      {
        v14 = [v4 contentView];
        [v14 addSubview:v6];
      }
    }

    else
    {
      [v6 removeFromSuperview];
    }
  }

  v15 = [v4 _detailTextLabel:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 font];
    [v17 pointSize];
    v19 = v18;

    if (v19 == 0.0)
    {
      v20 = [(UITableViewCellLayoutManagerSubtitle *)self defaultDetailTextLabelFontForCell:v4];
      [v16 setFont:v20];
    }

    v21 = [v16 text];
    v22 = v21;
    if (v21 && [v21 length])
    {
      v23 = [v16 superview];

      if (!v23)
      {
        v24 = [v4 contentView];
        [v24 addSubview:v16];
      }
    }

    else
    {
      [v16 removeFromSuperview];
    }
  }
}

- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4
{
  v6 = a3;
  if (dyld_program_sdk_at_least())
  {
    v7 = _UITableViewCellLayoutIntrinsicSizeForCellStackingLabels(self, v6, a4);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UITableViewCellLayoutManagerSubtitle;
    [(UITableViewCellLayoutManager *)&v13 intrinsicContentSizeForCell:v6 rowWidth:a4];
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