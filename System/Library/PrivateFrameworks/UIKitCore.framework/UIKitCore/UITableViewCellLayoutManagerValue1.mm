@interface UITableViewCellLayoutManagerValue1
- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4;
- (id)defaultDetailTextLabelFontForCell:(id)a3;
- (id)detailTextLabelForCell:(id)a3;
- (id)textLabelForCell:(id)a3;
- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7;
- (void)layoutSubviewsOfCell:(id)a3;
@end

@implementation UITableViewCellLayoutManagerValue1

- (id)textLabelForCell:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerValue1;
  v3 = [(UITableViewCellLayoutManager *)&v5 defaultLabelForCell:a3];

  return v3;
}

- (id)detailTextLabelForCell:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = UITableViewCellLayoutManagerValue1;
  v6 = [(UITableViewCellLayoutManager *)&v15 defaultLabelForCell:v4 ofClass:v5];
  v7 = [v4 _constants];
  v8 = [v4 _cellStyle];
  v9 = [v4 traitCollection];
  v10 = [UICellConfigurationState _readonlyCellState:?];
  v11 = [v7 defaultDetailTextColorForCellStyle:v8 traitCollection:v9 state:v10];
  [v6 setTextColor:v11];

  v12 = [(UITableViewCellLayoutManagerValue1 *)self defaultDetailTextLabelFontForCell:v4];
  [v6 setFont:v12];

  LODWORD(self) = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v4];
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

- (id)defaultDetailTextLabelFontForCell:(id)a3
{
  v3 = a3;
  v4 = [v3 _constants];
  v5 = [v3 _cellStyle];

  v6 = [v4 defaultDetailTextFontForCellStyle:v5];

  return v6;
}

- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7
{
  v7 = a7;
  v70 = a5;
  [(UITableViewCellLayoutManager *)self textRectForCell:v70 rowWidth:v7 forSizing:a6];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v70 _textLabel:0];
  v21 = [v70 _detailTextLabel:0];
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

  v28 = v70;
  if (v21)
  {
    v29 = [(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v70];
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
    v28 = v70;
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
  v39 = [v70 traitCollection];
  v40 = [v39 userInterfaceIdiom];

  v37 = 0.0;
  v38 = 0.0;
  if (v40 != 3)
  {
    v41 = [v20 font];
    [v41 ascender];
    v43 = v42;
    v44 = [v21 font];
    [v44 ascender];
    v46 = v45;

    if (v43 >= v46)
    {
      v47 = [v20 font];
      [v47 ascender];
      v54 = v53;
      v50 = [v21 font];
      [v50 ascender];
      v37 = round(v54 - v55);
    }

    else
    {
      v47 = [v21 font];
      [v47 ascender];
      v49 = v48;
      v50 = [v20 font];
      [v50 ascender];
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
  if (a3)
  {
    a3->origin.x = x;
    a3->origin.y = y;
    a3->size.width = width;
    a3->size.height = height;
  }

  if (a4)
  {
    *a4 = v80;
  }
}

- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4
{
  v6 = a3;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v6])
  {
    v7 = _UITableViewCellLayoutIntrinsicSizeForCellStackingLabels(self, v6, a4);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UITableViewCellLayoutManagerValue1;
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

- (void)layoutSubviewsOfCell:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = UITableViewCellLayoutManagerValue1;
  [(UITableViewCellLayoutManager *)&v26 layoutSubviewsOfCell:v4];
  v5 = [v4 _textLabel:0];
  if (v5)
  {
    v6 = v5;
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

      if (v13)
      {
LABEL_10:

        goto LABEL_11;
      }

      v14 = [v4 contentView];
      [v14 addSubview:v6];
    }

    else
    {
      [v6 removeFromSuperview];
      v14 = v6;
      v6 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:
  v15 = [v4 _detailTextLabel:0];
  if (v15)
  {
    v16 = v15;
    if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v4])
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

    v18 = [v16 font];
    [v18 pointSize];
    v20 = v19;

    if (v20 == 0.0)
    {
      v21 = [(UITableViewCellLayoutManagerValue1 *)self defaultDetailTextLabelFontForCell:v4];
      [v16 setFont:v21];
    }

    v22 = [v16 text];
    v23 = v22;
    if (v22 && [v22 length])
    {
      v24 = [v16 superview];

      if (v24)
      {
LABEL_25:

        goto LABEL_26;
      }

      v25 = [v4 contentView];
      [v25 addSubview:v16];
    }

    else
    {
      [v16 removeFromSuperview];
      v25 = v16;
      v16 = 0;
    }

    goto LABEL_25;
  }

LABEL_26:
}

@end