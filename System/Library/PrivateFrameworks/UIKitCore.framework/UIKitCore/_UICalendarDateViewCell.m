@interface _UICalendarDateViewCell
+ (id)reuseIdentifier;
- (UICalendarView)calendarView;
- (_UICalendarDateViewCell)initWithFrame:(CGRect)a3;
- (id)_currentCellState;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateBackgroundView;
- (void)_updateFontDesign;
- (void)_updateForPreferredContentSizeCategoryChange;
- (void)_updateLabelColor;
- (void)configureWithDay:(id)a3 formatter:(id)a4 fontDesign:(id)a5 decorations:(id)a6 outOfRange:(BOOL)a7 renderOverhangDays:(BOOL)a8 highlightsToday:(BOOL)a9;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation _UICalendarDateViewCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_UICalendarDateViewCell)initWithFrame:(CGRect)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = _UICalendarDateViewCell;
  v3 = [(UICollectionViewCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewCell *)v3 setAutomaticallyUpdatesBackgroundConfiguration:0];
    [(UICollectionViewCell *)v4 setAutomaticallyUpdatesContentConfiguration:0];
    v5 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    [(UIView *)v4 addInteraction:v5];
    objc_storeStrong(&v4->_pointerInteraction, v5);
    v6 = objc_opt_new();
    labelContentView = v4->_labelContentView;
    v4->_labelContentView = v6;

    v8 = [(UICollectionViewCell *)v4 contentView];
    [v8 addSubview:v4->_labelContentView];

    v9 = objc_opt_new();
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v9;

    v11 = [(UIView *)v4->_backgroundView layer];
    [v11 setAllowsEdgeAntialiasing:1];

    [(UIView *)v4->_labelContentView addSubview:v4->_backgroundView];
    v12 = objc_opt_new();
    decorationContentView = v4->_decorationContentView;
    v4->_decorationContentView = v12;

    [(UIView *)v4->_decorationContentView setClipsToBounds:1];
    [(UIView *)v4->_decorationContentView setUserInteractionEnabled:0];
    v14 = [(UICollectionViewCell *)v4 contentView];
    [v14 addSubview:v4->_decorationContentView];

    v15 = objc_opt_new();
    dayLabel = v4->_dayLabel;
    v4->_dayLabel = v15;

    [(UILabel *)v4->_dayLabel setTextAlignment:1];
    [(UIView *)v4->_labelContentView addSubview:v4->_dayLabel];
    [(_UICalendarDateViewCell *)v4 _updateForPreferredContentSizeCategoryChange];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v18 = [(UIView *)v4 registerForTraitChanges:v17 withAction:sel__updateForPreferredContentSizeCategoryChange];
  }

  return v4;
}

- (void)layoutSubviews
{
  v74 = *MEMORY[0x1E69E9840];
  v69.receiver = self;
  v69.super_class = _UICalendarDateViewCell;
  [(UICollectionViewCell *)&v69 layoutSubviews];
  v3 = (*&self->_flags & 0x10) != 0 || self->_selectionRoundedEdge != 3;
  v57 = v3;
  v4 = self->_decorations == 0;
  [(UIView *)self bounds];
  remainder.origin.x = v5;
  remainder.origin.y = v6;
  remainder.size.width = v7;
  remainder.size.height = v8;
  if (!v4)
  {
    v55 = *(MEMORY[0x1E695F058] + 16);
    v56 = *MEMORY[0x1E695F058];
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v55;
    v9 = [(UIView *)self traitCollection];
    [UICalendarViewDecoration _referenceHeightForTraitCollection:v9];
    v11 = v10;

    CGRectDivide(remainder, &slice, &remainder, v11 + 2.0, CGRectMaxYEdge);
    v75 = CGRectInset(slice, 2.0, 0.0);
    [(UIView *)self->_decorationContentView setFrame:v75.origin.x, v75.origin.y, v75.size.width, v75.size.height];
    if ([(NSArray *)self->_decorations count])
    {
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      decorations = self->_decorations;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v62 = slice;
      v59 = __41___UICalendarDateViewCell_layoutSubviews__block_invoke;
      v60 = &unk_1E7127FB0;
      v61 = &v63;
      v13 = decorations;
      v14 = v58;
      v15 = v13;
      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v15, "count")}];
      v71 = 0u;
      v72 = 0u;
      memset(&v70, 0, sizeof(v70));
      v17 = v15;
      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v70 objects:&v73 count:16];
      if (v18)
      {
        v19 = **&v70.size.width;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (**&v70.size.width != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = v59(v14, *(*&v70.origin.y + 8 * i));
            if (v21)
            {
              [v16 addObject:v21];
            }
          }

          v18 = [(NSArray *)v17 countByEnumeratingWithState:&v70 objects:&v73 count:16];
        }

        while (v18);
      }

      v22 = [v16 copy];
      v23 = [v22 count];
      v24 = (v23 - 1) + (v23 - 1) + v64[3];
      v64[3] = v24;
      height = slice.size.height;
      [(UIView *)self->_decorationContentView bounds];
      v73.origin.x = v28 + (v26 - v24) * 0.5;
      v73.origin.y = v29 + (v27 - height) * 0.5;
      v73.size.width = v24;
      v73.size.height = height;
      v70.origin = v56;
      v70.size = v55;
      v30 = [objc_opt_self() mainScreen];
      [v30 scale];
      v32 = v31;

      for (j = 0; j < [v22 count]; ++j)
      {
        v34 = [v22 objectAtIndex:j];
        [v34 bounds];
        CGRectDivide(v73, &v70, &v73, v35, CGRectMinXEdge);
        [v34 bounds];
        v70.size.height = v36;
        [v34 setFrame:{UIRectCenteredYInRectScale(v70.origin.x, v70.origin.y, v70.size.width, v36, v73.origin.x, v73.origin.y, v73.size.width, v73.size.height, v32)}];
      }

      _Block_object_dispose(&v63, 8);
    }
  }

  [(UIView *)self->_labelContentView setFrame:?];
  dayLabel = self->_dayLabel;
  [(UIView *)self bounds];
  [(UILabel *)dayLabel sizeThatFits:v38, v39];
  [(UILabel *)self->_dayLabel setFrame:remainder.origin.x + (remainder.size.width - v40) * 0.5, remainder.origin.y + (remainder.size.height - v41) * 0.5];
  v42 = [(UIView *)self traitCollection];
  v43 = _UICalendarViewGetPlatformMetrics([v42 userInterfaceIdiom]);

  [v43 dateViewCellBackgroundSize];
  v45 = fmin(v44, fmin(remainder.size.width, remainder.size.height));
  v46 = (remainder.size.width - v45) * 0.5;
  v47 = remainder.origin.x + v46;
  selectionRoundedEdge = self->_selectionRoundedEdge;
  v49 = v45 + v46;
  if (selectionRoundedEdge)
  {
    v49 = v45;
  }

  else
  {
    v47 = remainder.origin.x + v46 - v46;
  }

  v50 = v46 + v49;
  if ((selectionRoundedEdge & 2) != 0)
  {
    v50 = v49;
  }

  [(UIView *)self->_backgroundView setFrame:v47, remainder.origin.y + (remainder.size.height - v45) * 0.5, v50, v45];
  v51 = self->_selectionRoundedEdge;
  if ((v51 & 2) != 0)
  {
    v52 = ((v51 << 63) >> 63) & 5 | 0xA;
  }

  else
  {
    v52 = ((v51 << 63) >> 63) & 5;
  }

  v53 = [(UIView *)self->_backgroundView layer];
  [v53 setMaskedCorners:v52];

  v54 = v45 * 0.5;
  if (v57)
  {
    v54 = 10.0;
  }

  [(UIVisualEffectView *)self->_backgroundView _setCornerRadius:v54];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UICalendarDateViewCell;
  [(UIView *)&v3 tintColorDidChange];
  [(_UICalendarDateViewCell *)self _updateLabelColor];
}

- (void)configureWithDay:(id)a3 formatter:(id)a4 fontDesign:(id)a5 decorations:(id)a6 outOfRange:(BOOL)a7 renderOverhangDays:(BOOL)a8 highlightsToday:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v65 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  obj = a6;
  v18 = a6;
  if (v10)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v19;
  if ([v15 isToday])
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v21 = *&self->_flags & 0xFB | v20;
  *&self->_flags = v21;
  v54 = v17;
  v52 = v9;
  if (v9)
  {
    v22 = [v15 assignedMonth];
    v23 = *&self->_flags & 0xFE;
    if (v22)
    {
      ++v23;
    }

    *&self->_flags = v23;

    flags = self->_flags;
  }

  else
  {
    flags = v21 & 0xFE;
  }

  if (a9)
  {
    v25 = 8;
  }

  else
  {
    v25 = 0;
  }

  *&self->_flags = flags & 0xF7 | v25;
  objc_storeStrong(&self->_fontDesign, a5);
  v53 = v18;
  if (([(NSArray *)self->_decorations isEqual:v18]& 1) == 0)
  {
    v49 = v16;
    v50 = v15;
    v26 = [(_UICalendarDateViewCell *)self calendarView];
    v27 = [v26 decorationSystem];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = self->_decorations;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v60;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v59 + 1) + 8 * i);
          v34 = [v33 _parent];

          if (v34 == self)
          {
            [v27 invalidateDecoration:v33];
            [v33 _setParent:0];
          }
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v30);
    }

    objc_storeStrong(&self->_decorations, obj);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v35 = self->_decorations;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
    v16 = v49;
    if (v36)
    {
      v37 = v36;
      v38 = *v56;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v55 + 1) + 8 * j);
          [v27 configureDecoration:v40];
          [v40 _setParent:self];
          decorationContentView = self->_decorationContentView;
          v42 = [v40 _decorationView];
          [(UIView *)decorationContentView addSubview:v42];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v37);
    }

    v15 = v50;
  }

  v43 = [v15 assignedMonth];
  if (v43)
  {
    v44 = v52;
  }

  else
  {
    v44 = 1;
  }

  if (v44)
  {
    v45 = [v15 date];
    v46 = [v16 stringFromDate:v45];
    [(UILabel *)self->_dayLabel setText:v46];
  }

  else
  {
    [(UILabel *)self->_dayLabel setText:0];
  }

  [(UIView *)self->_decorationContentView setHidden:v44 ^ 1];
  if (v52)
  {
    v47 = [v15 assignedMonth];
    v48 = 0.25;
    if (!v47)
    {
      v48 = 1.0;
    }

    [(UIView *)self->_decorationContentView setAlpha:v48];
  }

  else
  {
    [(UIView *)self->_decorationContentView setAlpha:1.0];
  }

  [(UIPointerInteraction *)self->_pointerInteraction setEnabled:v44];
  [(_UICalendarDateViewCell *)self _updateFontDesign];
  [(_UICalendarDateViewCell *)self _updateLabelColor];
  [(_UICalendarDateViewCell *)self _updateBackgroundView];
  [(UIView *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UICalendarDateViewCell;
  [(UICollectionViewCell *)&v4 setSelected:a3];
  [(_UICalendarDateViewCell *)self _updateFontDesign];
  [(_UICalendarDateViewCell *)self _updateLabelColor];
  [(_UICalendarDateViewCell *)self _updateBackgroundView];
  [(UIView *)self setNeedsLayout];
  [(UIPointerInteraction *)self->_pointerInteraction invalidate];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = _UICalendarDateViewCell;
  [(UICollectionViewCell *)&v14 setHighlighted:?];
  [(_UICalendarDateViewCell *)self _updateFontDesign];
  [(_UICalendarDateViewCell *)self _updateLabelColor];
  [(_UICalendarDateViewCell *)self _updateBackgroundView];
  v5 = [(UIView *)self traitCollection];
  v6 = _UICalendarViewGetPlatformMetrics([v5 userInterfaceIdiom]);

  if (v3)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42___UICalendarDateViewCell_setHighlighted___block_invoke;
    v12[3] = &unk_1E70F35B8;
    v7 = &v13;
    v12[4] = self;
    v13 = v6;
    v8 = v6;
    [UIView animateWithDuration:2 delay:v12 options:0 animations:0.1 completion:0.0];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42___UICalendarDateViewCell_setHighlighted___block_invoke_2;
    v10[3] = &unk_1E70F35B8;
    v7 = &v11;
    v10[4] = self;
    v11 = v6;
    v9 = v6;
    [UIView animateWithDuration:0 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.7 options:0.0 animations:0.7 completion:0.0];
  }
}

- (void)_updateLabelColor
{
  v3 = [(UIView *)self traitCollection];
  v7 = _UICalendarViewGetPlatformMetrics([v3 userInterfaceIdiom]);

  v4 = [(_UICalendarDateViewCell *)self _currentCellState];
  v5 = [v7 dateCellForegroundColorProvider];
  v6 = (v5)[2](v5, v4);
  [(UILabel *)self->_dayLabel setTextColor:v6];
}

- (void)_updateBackgroundView
{
  v3 = [(UIView *)self traitCollection];
  v8 = _UICalendarViewGetPlatformMetrics([v3 userInterfaceIdiom]);

  v4 = [(_UICalendarDateViewCell *)self _currentCellState];
  -[UIView setHidden:](self->_backgroundView, "setHidden:", [v4 isOutOfRange]);
  v5 = [v8 dateCellBackgroundColorProvider];
  v6 = (v5)[2](v5, v4);
  v7 = [(UIVisualEffectView *)self->_backgroundView contentView];
  [v7 setBackgroundColor:v6];
}

- (void)_updateFontDesign
{
  v3 = [(UIView *)self traitCollection];
  v9 = _UICalendarViewGetPlatformMetrics([v3 userInterfaceIdiom]);

  v4 = [(_UICalendarDateViewCell *)self _currentCellState];
  v5 = [v9 dateCellFontProvider];
  fontDesign = self->_fontDesign;
  v7 = [(UIView *)self traitCollection];
  v8 = (v5)[2](v5, v4, fontDesign, v7);
  [(UILabel *)self->_dayLabel setFont:v8];
}

- (void)_updateForPreferredContentSizeCategoryChange
{
  v3 = [(UIView *)self traitCollection];
  category = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(category))
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  *&self->_flags = *&self->_flags & 0xEF | v4;
  [(_UICalendarDateViewCell *)self _updateFontDesign];
  [(_UICalendarDateViewCell *)self _updateBackgroundView];
}

- (id)_currentCellState
{
  v3 = [_UICalendarDateViewCellState alloc];
  v4 = [(UIView *)self traitCollection];
  v5 = [(_UICalendarDateViewCellState *)v3 initWithTraits:v4];

  [(_UICalendarDateViewCellState *)v5 setOutOfRange:(*&self->_flags >> 1) & 1];
  [(_UICalendarDateViewCellState *)v5 setOverhangMonth:*&self->_flags & 1];
  [(_UICalendarDateViewCellState *)v5 setHighlightsToday:(*&self->_flags >> 3) & 1];
  [(_UICalendarDateViewCellState *)v5 setToday:(*&self->_flags >> 2) & 1];
  [(_UICalendarDateViewCellState *)v5 setSelected:[(UICollectionViewCell *)self isSelected]];
  [(_UICalendarDateViewCellState *)v5 setHighlighted:[(UICollectionViewCell *)self isHighlighted]];
  [(_UICalendarDateViewCellState *)v5 setForceEmphasizedFont:0];

  return v5;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  [(UIView *)self->_backgroundView bounds:a3];
  v6 = v5;
  [(UIView *)self->_labelContentView bounds];
  v9 = v8 + (v7 - v6) * 0.5;
  v12 = v11 + (v10 - v6) * 0.5;
  [(UIVisualEffectView *)self->_backgroundView _cornerRadius];
  v14 = v13;
  v15 = objc_opt_new();
  v16 = [UIBezierPath bezierPathWithRoundedRect:v9 cornerRadius:v12, v6, v6, v14];
  [v15 setShadowPath:v16];

  v17 = +[UIColor systemBackgroundColor];
  [v15 setBackgroundColor:v17];

  v18 = [[UITargetedPreview alloc] initWithView:self->_labelContentView parameters:v15];
  v19 = [(UICollectionViewCell *)self isSelected];
  v20 = off_1E70EA410;
  if (!v19)
  {
    v20 = off_1E70EA3F8;
  }

  v21 = [(__objc2_class *)*v20 effectWithPreview:v18];
  labelContentView = self->_labelContentView;
  v23 = [(UICollectionViewCell *)self contentView];
  [(UIView *)labelContentView convertRect:v23 toView:v9, v12, v6, v6];
  v24 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];

  v25 = [UIPointerStyle styleWithEffect:v21 shape:v24];

  return v25;
}

- (UICalendarView)calendarView
{
  WeakRetained = objc_loadWeakRetained(&self->_calendarView);

  return WeakRetained;
}

@end