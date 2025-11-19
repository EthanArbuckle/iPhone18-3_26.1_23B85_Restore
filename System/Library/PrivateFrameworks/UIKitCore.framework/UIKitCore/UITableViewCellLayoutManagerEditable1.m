@interface UITableViewCellLayoutManagerEditable1
- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4;
- (double)defaultTextFieldFontSizeForCell:(id)a3;
- (id)editableTextFieldForCell:(id)a3;
- (void)_textFieldEndEditing:(id)a3;
- (void)_textFieldStartEditing:(id)a3;
- (void)layoutSubviewsOfCell:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation UITableViewCellLayoutManagerEditable1

- (double)defaultTextFieldFontSizeForCell:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITableViewCellLayoutManagerEditable1;
  [(UITableViewCellLayoutManager *)&v4 defaultDetailTextLabelFontSizeForCell:a3];
  return result;
}

- (void)layoutSubviewsOfCell:(id)a3
{
  v4 = a3;
  v99.receiver = self;
  v99.super_class = UITableViewCellLayoutManagerEditable1;
  [(UITableViewCellLayoutManager *)&v99 layoutSubviewsOfCell:v4];
  v5 = [v4 contentView];
  [v5 bounds];
  v89 = v6;

  [v4 bounds];
  [(UITableViewCellLayoutManager *)self textRectForCell:v4 rowWidth:0 forSizing:CGRectGetWidth(v100)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x1E695F060];
  v16 = [v4 _textLabel:0];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 font];
    [v18 pointSize];
    v20 = v19;

    if (v20 == 0.0)
    {
      v21 = [(UITableViewCellLayoutManager *)self defaultTextLabelFontForCell:v4];
      [v17 setFont:v21];
    }

    v22 = [v17 text];
    v23 = v22;
    if (v22 && [v22 length])
    {
      v24 = [v17 superview];

      if (!v24)
      {
        v25 = [v4 contentView];
        [v25 addSubview:v17];
      }
    }

    else
    {
      [v17 removeFromSuperview];
    }
  }

  v26 = v15[1];
  v27 = [v4 _editableTextField:{1, v89}];
  v28 = v27;
  v29 = v26;
  if (v27)
  {
    v30 = [v27 font];
    [v30 pointSize];
    v32 = v31;

    if (v32 == 0.0)
    {
      [(UITableViewCellLayoutManagerEditable1 *)self defaultTextFieldFontSizeForCell:v4];
      v33 = [off_1E70ECC18 systemFontOfSize:?];
      [v28 setFont:v33];
    }

    [v28 setFrame:{0.0, 0.0, v12, v14}];
    [v28 sizeThatFits:{v12, v14}];
    v29 = v34;
    v35 = [v4 contentView];
    [v35 addSubview:v28];
  }

  v36 = *v15;
  v37 = v26;
  v38 = *v15;
  if (v17)
  {
    [(UITableViewCellLayoutManager *)self optimumSizeForLabel:v17 inTotalTextRect:0 minimizeWidthOnVerticalOverflow:0 preferSingleLineWidth:v8, v10, v12, v14];
    v37 = v39;
  }

  v97 = v38;
  if (v28)
  {
    if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v4])
    {
      v26 = v29;
      v36 = v12;
    }

    else
    {
      if (v97 <= 0.0)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = v97 + 6.0;
      }

      v101.origin.x = v8;
      v101.origin.y = v10;
      v101.size.width = v12;
      v101.size.height = v14;
      v36 = CGRectGetWidth(v101) - v40;
      v26 = v29;
    }
  }

  v41 = v4[13];
  rect_16 = v8;
  rect_24 = v26;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v4])
  {
    if ((v41 & 0x400000) != 0)
    {
      v102.origin.x = v8;
      v102.origin.y = v10;
      v102.size.width = v12;
      v102.size.height = v14;
      v61 = CGRectGetMaxX(v102) - v97;
      v103.origin.x = v8;
      v103.origin.y = v10;
      v103.size.width = v12;
      v103.size.height = v14;
      MaxX = CGRectGetMaxX(v103);
      v45 = v61;
      v46 = v97;
      v42 = MaxX - v36;
      v44 = 0.0;
      v43 = v37 + 0.0;
    }

    else
    {
      v42 = 0.0;
      v43 = v37 + 0.0;
      v44 = 0.0;
      v45 = 0.0;
      v46 = v97;
    }
  }

  else
  {
    rect_8 = v37;
    v47 = v36;
    v48 = v8;
    v49 = v10;
    v50 = [v17 font];
    [v50 ascender];
    v52 = v51;
    v53 = [v28 font];
    [v53 ascender];
    v55 = v54;

    if (v52 >= v55)
    {
      v56 = [v17 font];
      [v56 ascender];
      v64 = v63;
      v59 = [v28 font];
      [v59 ascender];
      v43 = round(v64 - v65);
      v44 = 0.0;
    }

    else
    {
      v56 = [v28 font];
      [v56 ascender];
      v58 = v57;
      v59 = [v17 font];
      [v59 ascender];
      v44 = round(v58 - v60);
      v43 = 0.0;
    }

    if ((v41 & 0x400000) != 0)
    {
      v104.origin.x = v48;
      v104.origin.y = v49;
      v104.size.width = v12;
      v104.size.height = v14;
      v46 = v97;
      v45 = CGRectGetMaxX(v104) - v97;
      if (v97 <= 0.0)
      {
        v105.origin.x = v48;
        v105.origin.y = v49;
        v66 = v45;
        v105.size.width = v12;
        v105.size.height = v14;
        v67 = CGRectGetMaxX(v105);
        v45 = v66;
        v46 = v97;
        v36 = v47;
        v42 = v67 - v47;
      }

      else
      {
        v36 = v47;
        v42 = v45 - v47 + -6.0;
      }

      v37 = rect_8;
    }

    else
    {
      v45 = 0.0;
      v46 = v97;
      if (v97 <= 0.0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = v97 + 0.0 + 6.0;
      }

      v36 = v47;
      v37 = rect_8;
    }
  }

  rect = v45;
  v106.origin.x = v45;
  v106.origin.y = v44;
  v106.size.width = v46;
  v106.size.height = v37;
  v68 = v37;
  v69 = v42;
  v70 = v43;
  v71 = v36;
  v72 = rect_24;
  v107 = CGRectUnion(v106, *&v42);
  v73 = ceil((v14 - v107.size.height) * 0.5);
  v74 = 0.0;
  v75 = v68;
  v76 = v36;
  if ((v41 & 0x400000) != 0)
  {
    v77 = 0.0;
  }

  else
  {
    v77 = rect_16;
  }

  v78 = rect;
  v79 = v44;
  v80 = v46;
  v108 = CGRectOffset(*(&v75 - 3), v77, v73);
  x = v108.origin.x;
  rect_16a = v108.origin.y;
  recta = v108.size.width;
  height = v108.size.height;
  v108.origin.x = v69;
  v108.origin.y = v43;
  v108.size.width = v76;
  v108.size.height = rect_24;
  v109 = CGRectOffset(v108, v77, v73);
  v82 = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  v85 = v109.size.height;
  if (![(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v4])
  {
    [v4 textFieldOffset];
    v74 = v86;
  }

  if ((v41 & 0x400000) != 0)
  {
    if (v82 + width > v90 - v74)
    {
      width = width - (v82 + width - (v90 - v74));
    }
  }

  else if (v82 < v74)
  {
    width = width - (v74 - v82);
    v82 = v74;
  }

  v87 = [v17 superview];

  if (v87)
  {
    [v17 setFrame:{x, rect_16a, recta, height}];
  }

  v88 = [v28 superview];

  if (v88)
  {
    [v28 setFrame:{v82, y, width, v85}];
  }
}

- (id)editableTextFieldForCell:(id)a3
{
  v8.receiver = self;
  v8.super_class = UITableViewCellLayoutManagerEditable1;
  v4 = [(UITableViewCellLayoutManager *)&v8 defaultEditableTextFieldForCell:a3];
  [v4 setAdjustsFontSizeToFitWidth:1];
  v5 = [off_1E70ECC18 systemFontOfSize:17.0];
  [v4 setFont:v5];

  v6 = +[UIColor clearColor];
  [v4 setBackgroundColor:v6];

  [v4 setDelegate:self];
  [v4 addTarget:self action:sel__textFieldStartEditing_ forControlEvents:0x10000];
  [v4 addTarget:self action:sel__textFieldEndEditing_ forControlEvents:0x40000];
  [v4 addTarget:self action:sel__textFieldEndEditingOnReturn_ forControlEvents:0x80000];

  return v4;
}

- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = UITableViewCellLayoutManagerEditable1;
  [(UITableViewCellLayoutManager *)&v15 intrinsicContentSizeForCell:v6 rowWidth:a4];
  v8 = v7;
  v10 = v9;
  if ([(UITableViewCellLayoutManager *)self shouldApplyAccessibilityLargeTextLayoutForCell:v6])
  {
    v11 = [v6 _editableTextField:1];
    [v11 sizeThatFits:{a4, 3.40282347e38}];
    v10 = v10 + v12;
  }

  v13 = v8;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v7 = a3;
  v3 = [v7 superview];
  if (v3)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  v5 = [v3 _tableView];
  v6 = [v7 text];
  [v5 _updateCell:v3 withValue:v6];
}

- (void)_textFieldStartEditing:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel__textValueChanged_ name:@"UITextFieldTextDidChangeNotification" object:v5];
}

- (void)_textFieldEndEditing:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:@"UITextFieldTextDidChangeNotification" object:v5];
}

@end