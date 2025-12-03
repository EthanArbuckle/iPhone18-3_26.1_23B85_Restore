@interface _SBHIconLibraryTableView
- (_SBHIconLibraryTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)layoutSubviews;
@end

@implementation _SBHIconLibraryTableView

- (_SBHIconLibraryTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = _SBHIconLibraryTableView;
  v4 = [(_SBHIconLibraryTableView *)&v9 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69D3FC0]) initWithRecipe:3];
    headerBlur = v4->_headerBlur;
    v4->_headerBlur = v5;

    [(_SBHIconLibraryTableView *)v4 addSubview:v4->_headerBlur];
    v7 = objc_alloc_init(MEMORY[0x1E69DD820]);
    [(_SBHIconLibraryTableView *)v4 _setBackground:v7];
  }

  return v4;
}

- (void)layoutSubviews
{
  v53 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = _SBHIconLibraryTableView;
  [(_SBHIconLibraryTableView *)&v51 layoutSubviews];
  [(_SBHIconLibraryTableView *)self sectionHeaderHeight];
  if (v3 == *MEMORY[0x1E69DE3D0])
  {
    [(_SBHIconLibraryTableView *)self _defaultSectionHeaderHeight];
  }

  else
  {
    [(_SBHIconLibraryTableView *)self sectionHeaderHeight];
  }

  rect2 = v4;
  [(_SBHIconLibraryTableView *)self contentOffset];
  v45 = v5;
  [(_SBHIconLibraryTableView *)self bounds];
  v44 = v6;
  [(_SBHIconLibraryTableView *)self adjustedContentInset];
  v8 = v7;
  if (BSFloatGreaterThanFloat())
  {
    [(_SBHIconLibraryTableView *)self contentOffset];
    v10 = v8 + v9 <= 0.0;
  }

  else
  {
    v10 = 1;
  }

  if ([(_SBHIconLibraryTableView *)self _headerAndFooterViewsFloat])
  {
    v11 = MEMORY[0x1E695DFA0];
    indexPathsForVisibleRows = [(_SBHIconLibraryTableView *)self indexPathsForVisibleRows];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __42___SBHIconLibraryTableView_layoutSubviews__block_invoke;
    v50[3] = &unk_1E808C4E0;
    v50[4] = self;
    v13 = [indexPathsForVisibleRows bs_mapNoNulls:v50];
    v14 = [v11 orderedSetWithArray:v13];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v47;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v46 + 1) + 8 * i);
          [v20 frame];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v54.origin.x = 0.0;
          v54.origin.y = v45;
          v54.size.width = v44;
          v54.size.height = v8;
          MaxY = CGRectGetMaxY(v54);
          v55.origin.x = v22;
          v55.origin.y = v24;
          v55.size.width = v26;
          v55.size.height = v28;
          v43 = CGRectGetMaxY(v55);
          v56.origin.x = v22;
          v56.origin.y = v24;
          v56.size.width = v26;
          v56.size.height = v28;
          MinY = CGRectGetMinY(v56);
          v57.origin.x = 0.0;
          v57.origin.y = v45;
          v57.size.width = v44;
          v57.size.height = v8;
          v60.origin.y = CGRectGetMaxY(v57);
          v60.origin.x = 0.0;
          v58.origin.x = v22;
          v58.origin.y = v24;
          v58.size.width = v26;
          v58.size.height = v28;
          v60.size.width = v44;
          v60.size.height = rect2;
          v30 = CGRectIntersectsRect(v58, v60);
          v31 = v43 > MaxY + v28 || MinY < MaxY;
          headerBlur = self->_headerBlur;
          if (v31 && !v30)
          {
            [(_SBHIconLibraryTableView *)self insertSubview:v20 belowSubview:headerBlur, MinY, v43];
          }

          else
          {
            [(_SBHIconLibraryTableView *)self insertSubview:v20 aboveSubview:headerBlur, MinY, v43];
          }

          v59.origin.x = 0.0;
          v59.size.width = v44;
          v59.origin.y = v45;
          v59.size.height = v8;
          v61.origin.x = v22;
          v61.origin.y = v24;
          v61.size.width = v26;
          v61.size.height = v28;
          v34 = CGRectIntersectsRect(v59, v61);
          v35 = 1.0;
          if (v34)
          {
            SBHCGRectIntersectionAsPercentage(0.0, v45, v44, v8, v22, v24, v26, v28);
            v35 = v36 * -3.0 + 1.0;
            if (v35 < 0.0)
            {
              v35 = 0.0;
            }
          }

          [v20 setAlpha:v35];
        }

        v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v17);
    }

    if ([v15 count])
    {
      v8 = rect2 + v8;
    }
  }

  [(SBFFeatherBlurView *)self->_headerBlur setFrame:0.0, v45, v44, v8 + 12.0];
  v37 = MEMORY[0x1E69D3FC0];
  window = [(SBFFeatherBlurView *)self->_headerBlur window];
  v39 = [v37 matchMoveAnimationForFrame:window relativeToView:{0.0, v45 - v45, v44, v8 + 12.0}];

  layer = [(SBFFeatherBlurView *)self->_headerBlur layer];
  [layer addAnimation:v39 forKey:@"SBHIconLibraryTableViewMatchMoveAnimation"];

  [(SBFFeatherBlurView *)self->_headerBlur setHidden:v10];
}

@end