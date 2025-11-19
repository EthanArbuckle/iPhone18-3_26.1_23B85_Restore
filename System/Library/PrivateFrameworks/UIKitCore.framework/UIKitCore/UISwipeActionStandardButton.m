@interface UISwipeActionStandardButton
- (UISwipeActionStandardButton)initWithFrame:(CGRect)a3;
- (double)buttonWidth;
- (id)titleLabel;
- (void)layoutSubviews;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation UISwipeActionStandardButton

- (UISwipeActionStandardButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = UISwipeActionStandardButton;
  v3 = [(UISwipeActionButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    [(UIView *)v3 bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    [(UISwipeActionButton *)v3 setBackgroundView:v5];

    v6 = [(UISwipeActionButton *)v3 visualStyle];
    v7 = [v6 defaultButtonBackgroundColor];
    v8 = [(UISwipeActionButton *)v3 backgroundView];
    [v8 setBackgroundColor:v7];

    v9 = [(UISwipeActionButton *)v3 backgroundView];
    [(UIView *)v3 addSubview:v9];

    [(UIView *)v3 setClipsToBounds:0];
    v10 = [(UIButton *)v3 _visualProvider];
    [v10 setAvoidDefaultTitleAndImageLayout:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  *&self->_flags |= 1u;
  v104.receiver = self;
  v104.super_class = UISwipeActionStandardButton;
  [(UIButton *)&v104 layoutSubviews];
  [(UIView *)self bounds];
  [(UIButton *)self contentRectForBounds:?];
  [(UISwipeActionButton *)self _allowableContentRectForContentRect:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIButton *)self _currentImageWithResolvedConfiguration];
  v12 = [(UIButton *)self currentImage];

  if (v12)
  {
    [v11 size];
    [(UIView *)self frame];
    [(UISwipeActionButton *)self _defaultLayoutForHeight:v13];
    isRenderingText = _isRenderingText(self);
    v15 = 1.0;
    if ((isRenderingText & 1) == 0)
    {
      v16 = self;
      [(UIView *)v16 bounds];
      v17 = [(UISwipeActionButton *)v16 _defaultLayoutForHeight:CGRectGetHeight(v105)];

      if (v17 == 2)
      {
        v15 = 0.8;
      }

      else
      {
        v15 = 1.0;
      }
    }

    [v11 size];
    if (v18 > 0.0)
    {
      [v11 size];
      if (v19 > v8)
      {
        [v11 size];
        v21 = v8 / v20;
        if (v15 >= v21)
        {
          v15 = v21;
        }
      }
    }

    [v11 size];
    if (v22 > 0.0)
    {
      [v11 size];
      if (v23 > v10)
      {
        [v11 size];
        if (v15 >= v10 / v24)
        {
          v15 = v10 / v24;
        }
      }
    }

    if (fabs(v15 + -1.0) >= 2.22044605e-16)
    {
      v25 = [(UIButton *)self imageView];
      [v25 setContentMode:1];
    }

    v26 = v15;
    v27 = v6;
    v28 = _UITableCellLineHeightCenteredImageInRect(v11, v26, v4, v6, v8, v10);
    MinY = v29;
    v32 = v31;
    v34 = v33;
    v35 = [(UISwipeActionStandardButton *)self titleLabel];
    [v35 setHidden:isRenderingText ^ 1u];

    if (isRenderingText)
    {
      v99 = MinY;
      rect = v32;
      v36 = [(UISwipeActionStandardButton *)self titleLabel];
      [(UIView *)self bounds];
      [v36 sizeThatFits:{v37, v38}];
      v97 = v39;

      v40 = [(UISwipeActionStandardButton *)self titleLabel];
      v41 = [v40 font];

      v42 = [objc_opt_self() mainScreen];
      [v42 scale];
      v95 = v43;

      [v41 lineHeight];
      v45 = v44;
      v46 = [(UISwipeActionButton *)self visualStyle];
      [v46 iconToTitleSpacing];
      v93 = v45 + v47;

      v48 = [v11 symbolConfiguration];
      v49 = v48;
      v101 = v34;
      if (v48)
      {
        v103 = 0.0;
        v50 = v48;
        if ((v50[20] & 1) == 0)
        {
          v51 = +[UIImageSymbolConfiguration unspecifiedConfiguration];

          v50 = v51;
        }

        [v50 _deriveGlyphSize:0 weight:0 pointSize:&v103];
        v52 = [off_1E70ECC18 systemFontOfSize:v103];
        [v11 baselineOffsetFromBottom];
        v54 = -v53;
        [v52 descender];
        v92 = v54 - v55;
      }

      else
      {
        v92 = 0.0;
      }

      v106.origin.x = v4;
      v106.origin.y = v27;
      v106.size.width = v8;
      v106.size.height = v10;
      MinY = CGRectGetMinY(v106);
      v107.origin.x = v28;
      v107.origin.y = v99;
      v107.size.width = v32;
      v107.size.height = v101;
      v91 = v4;
      v63 = CGRectGetMinY(v107);
      UIRoundToScale(v93 * 0.5, v95);
      v65 = v63 - v64;
      if (MinY < v65)
      {
        MinY = v65;
      }

      v100 = v28;
      v108.origin.x = v28;
      v108.origin.y = MinY;
      v108.size.width = v32;
      v108.size.height = v101;
      v66 = v92 + CGRectGetMaxY(v108);
      v67 = [(UISwipeActionButton *)self visualStyle];
      [v67 iconToTitleSpacing];
      UIRoundToScale(v66 + v68, v95);
      v70 = v69;

      v109.origin.x = v91;
      v109.origin.y = v27;
      v109.size.width = v8;
      v109.size.height = v10;
      v71 = CGRectGetMaxY(v109) - v70;
      if (v71 >= v97)
      {
        v72 = v97;
      }

      else
      {
        v72 = v71;
      }

      v110.origin.x = v91;
      v110.origin.y = v27;
      v110.size.width = v8;
      v110.size.height = v10;
      MinX = CGRectGetMinX(v110);
      v111.origin.x = v91;
      v111.origin.y = v27;
      v111.size.width = v8;
      v111.size.height = v10;
      v112.size.width = CGRectGetWidth(v111);
      width = v112.size.width;
      v96 = MinX;
      v112.origin.x = MinX;
      v112.origin.y = v70;
      v98 = v72;
      v112.size.height = v72;
      MaxY = CGRectGetMaxY(v112);
      v113.origin.x = v91;
      v113.origin.y = v27;
      v113.size.width = v8;
      v113.size.height = v10;
      v75 = MaxY - CGRectGetMaxY(v113);
      if (v75 > 0.0)
      {
        v114.origin.x = v100;
        v114.size.height = v101;
        v114.origin.y = MinY;
        v114.size.width = rect;
        v76 = CGRectGetMinY(v114);
        v115.origin.x = v91;
        v115.origin.y = v27;
        v115.size.width = v8;
        v115.size.height = v10;
        v77 = v76 - CGRectGetMinY(v115);
        if (v77 >= v75)
        {
          v77 = v75;
        }

        MinY = MinY - v77;
        v70 = v70 - v77;
      }

      v78 = [(UISwipeActionStandardButton *)self titleLabel:*&v91];
      [v78 setFrame:{v96, v70, width, v98}];

      v28 = v100;
      v34 = v101;
      v32 = rect;
    }

    v57 = [(UIButton *)self imageView];
    v58 = v57;
    v59 = v28;
    v60 = MinY;
    v61 = v32;
    v62 = v34;
  }

  else
  {
    v56 = [(UISwipeActionStandardButton *)self titleLabel];
    [v56 setHidden:0];

    v57 = [(UISwipeActionStandardButton *)self titleLabel];
    v58 = v57;
    v59 = v4;
    v60 = v6;
    v61 = v8;
    v62 = v10;
  }

  [v57 setFrame:{v59, v60, v61, v62}];

  [(UIView *)self bounds];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  [(UISwipeActionStandardButton *)self extensionLength];
  v86 = v85;
  [(UIView *)self bounds];
  v87 = CGRectGetWidth(v116);
  if (v86 < v87)
  {
    v86 = v87;
  }

  if ([(UIControl *)self contentHorizontalAlignment]== UIControlContentHorizontalAlignmentRight)
  {
    [(UIView *)self bounds];
    v88 = CGRectGetWidth(v117);
    v118.origin.x = v80;
    v118.origin.y = v82;
    v118.size.width = v86;
    v118.size.height = v84;
    v80 = v88 - CGRectGetWidth(v118);
  }

  v89 = [(UISwipeActionButton *)self backgroundView];
  [v89 setFrame:{v80, v82, v86, v84}];

  v90 = [(UISwipeActionButton *)self backgroundView];
  [(UIView *)self sendSubviewToBack:v90];

  *&self->_flags &= ~1u;
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = UISwipeActionStandardButton;
  [(UISwipeActionButton *)&v5 setTitle:a3 forState:a4];
  self->_buttonWidth = 0.0;
}

- (double)buttonWidth
{
  if ([(UISwipeActionButton *)self autosizes])
  {
    result = self->_buttonWidth;
    if (result == 0.0)
    {
      v4 = [(UIButton *)self _currentImageWithResolvedConfiguration];
      [(UISwipeActionButton *)self _horizontalPaddingForCurrentIdiom];
      v6 = v5;
      if (dyld_program_sdk_at_least() && ([(UIButton *)self currentImage], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
      {
        v8 = [(UISwipeActionStandardButton *)self titleLabel];
        if (([v8 isHidden] & 1) == 0)
        {
          v9 = [(UISwipeActionStandardButton *)self titleLabel];
          v10 = [v9 text];
          [v10 length];
        }

        [(UIView *)self bounds];
        [(UISwipeActionButton *)self _defaultLayoutForHeight:CGRectGetHeight(v34)];
        [v4 size];
        v12 = v11;
        v13 = self;
        [(UIView *)v13 bounds];
        v14 = [(UISwipeActionButton *)v13 _defaultLayoutForHeight:CGRectGetHeight(v35)];

        v15 = 0.8;
        if (v14 != 2)
        {
          v15 = 1.0;
        }

        v16 = v12 * v15;
        v17 = [(UISwipeActionStandardButton *)v13 titleLabel];
        [(UIView *)v13 bounds];
        [v17 sizeThatFits:{v18, v19}];
        v21 = v20;

        if ((_isRenderingText(v13) & (v16 < v21)) == 0)
        {
          v21 = v16;
        }
      }

      else
      {
        v22 = [(UISwipeActionStandardButton *)self titleLabel];
        [(UIView *)self bounds];
        [v22 sizeThatFits:{v23, v24}];
        v21 = v25;
      }

      v26 = [(UISwipeActionButton *)self visualStyle];
      [v26 maxButtonWidth];
      v28 = v27;

      v29 = [(UISwipeActionButton *)self visualStyle];
      [v29 defaultButtonWidth];
      v31 = v30;

      v32 = v6 + v6 + v21;
      if (v31 >= v32)
      {
        v32 = v31;
      }

      if (v28 < v32)
      {
        v32 = v28;
      }

      self->_buttonWidth = v32;

      return self->_buttonWidth;
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = UISwipeActionStandardButton;
    [(UISwipeActionButton *)&v33 buttonWidth];
  }

  return result;
}

- (id)titleLabel
{
  if ((*&self->_flags & 1) == 0)
  {
    [(UIButton *)self setNeedsLayout];
  }

  v5.receiver = self;
  v5.super_class = UISwipeActionStandardButton;
  v3 = [(UIButton *)&v5 titleLabel];

  return v3;
}

@end