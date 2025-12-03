@interface _UICalendarWeekdayView
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (_UICalendarWeekdayView)initWithDataModel:(id)model;
- (void)_rebuildLabels;
- (void)_updateFont;
- (void)layoutSubviews;
@end

@implementation _UICalendarWeekdayView

- (_UICalendarWeekdayView)initWithDataModel:(id)model
{
  v12[2] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = _UICalendarWeekdayView;
  v6 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataModel, model);
    [(_UICalendarWeekdayView *)v7 _rebuildLabels];
    [(UIView *)v7 setPreservesSuperviewLayoutMargins:1];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [(UIView *)v7 registerForTraitChanges:v8 withAction:sel__updateFont];
  }

  return v7;
}

- (void)_updateFont
{
  v17 = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  v4 = *off_1E70ECD30;
  fontDesign = [(_UICalendarDataModel *)self->_dataModel fontDesign];
  v6 = _UICalendarFontWithWeight(@"UICTFontTextStyleFootnote", traitCollection, fontDesign, v4);

  [(_UIDatePickerLinkedLabel *)self->_sizingLabel setFont:v6];
  [(UIView *)self->_sizingLabel invalidateIntrinsicContentSize];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_labels;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setFont:{v6, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)_rebuildLabels
{
  v63 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v3 = self->_labels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v57;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v57 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v56 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v5);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40___UICalendarWeekdayView__rebuildLabels__block_invoke;
  aBlock[3] = &unk_1E7123430;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  effectiveCalendar = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  shortStandaloneWeekdaySymbols = [effectiveCalendar shortStandaloneWeekdaySymbols];
  v11 = _UICalendarMap(shortStandaloneWeekdaySymbols, v8);

  effectiveCalendar2 = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  [effectiveCalendar2 veryShortStandaloneWeekdaySymbols];
  v13 = v54 = self;
  v50 = v8;
  v14 = _UICalendarMap(v13, v8);

  v15 = v54;
  traitCollection = [(UIView *)v54 traitCollection];
  v17 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  traitCollection2 = [(UIView *)v54 traitCollection];
  v19 = *off_1E70ECD30;
  fontDesign = [(_UICalendarDataModel *)v54->_dataModel fontDesign];
  v21 = _UICalendarFontWithWeight(@"UICTFontTextStyleFootnote", traitCollection2, fontDesign, v19);

  sizingLabel = v54->_sizingLabel;
  v53 = v17;
  v23 = v21;
  if (sizingLabel)
  {
    v24 = sizingLabel;
  }

  else
  {
    v24 = objc_opt_new();
  }

  v25 = v24;
  v26 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v61[0] = v26;
  v27 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  v61[1] = v27;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v29 = v28 = v11;
  [(_UIDatePickerLinkedLabel *)v25 setPossibleTitles:v29];

  v52 = v23;
  [(_UIDatePickerLinkedLabel *)v25 setFont:v23];
  objc_storeStrong(&v54->_sizingLabel, v25);
  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
  effectiveCalendar3 = [(_UICalendarDataModel *)v54->_dataModel effectiveCalendar];
  firstWeekday = [effectiveCalendar3 firstWeekday];

  v51 = [v28 count];
  v33 = v14;
  v34 = v28;
  v35 = v53;
  v36 = v25;
  if (v51 >= 1)
  {
    v37 = firstWeekday - 1;
    v38 = v51;
    do
    {
      v39 = objc_opt_new();
      [(_UIDatePickerLinkedLabel *)v36 storage];
      v40 = v30;
      v42 = v41 = v36;
      [v39 setStorage:v42];

      [v39 setFont:v52];
      v43 = [v34 objectAtIndexedSubscript:v37];
      v60[0] = v43;
      [v33 objectAtIndexedSubscript:v37];
      v44 = v33;
      v46 = v45 = v34;
      v60[1] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
      [v39 setTitles:v47];

      v15 = v54;
      v36 = v41;
      v30 = v40;
      v35 = v53;
      weekdayLabelTextColor = [v53 weekdayLabelTextColor];
      [v39 setTextColor:weekdayLabelTextColor];

      v34 = v45;
      v33 = v44;
      [v39 setTextAlignment:1];
      [v39 setBackgroundColor:0];
      [(NSArray *)v30 addObject:v39];
      [(UIView *)v54 addSubview:v39];
      v37 = (v37 + 1) % v51;

      --v38;
    }

    while (v38);
  }

  labels = v15->_labels;
  v15->_labels = v30;

  v15->_flags.rebuildLabels = 0;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = _UICalendarWeekdayView;
  [(UIView *)&v44 layoutSubviews];
  if (self->_flags.rebuildLabels)
  {
    [(_UICalendarWeekdayView *)self _rebuildLabels];
  }

  [(UIView *)self bounds];
  if (v3 != 0.0)
  {
    traitCollection = [(UIView *)self traitCollection];
    v5 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    v6 = [(NSArray *)self->_labels count];
    [(UIView *)self bounds];
    v8 = v7;
    [(UIView *)self layoutMargins];
    v11 = v8 - (v9 + v10);
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    v13 = v6;
    UIRoundToViewScale(self);
    v15 = v14;
    sizingLabel = self->_sizingLabel;
    [(UIView *)self bounds];
    [(_UIDatePickerLinkedLabel *)sizingLabel sizeThatFits:v15, v17];
    v43 = v18;
    v20 = v19;
    [(_UICalendarWeekdayView *)self preferredLabelWidth];
    v42 = v21;
    [v5 dateViewCellSpacing];
    v22 = 0.0;
    if (v23 > 0.0)
    {
      [v5 dateViewCellSpacing];
      v22 = v24 * 0.5;
    }

    [(UIView *)self layoutMargins];
    v26 = v25;
    [(UIView *)self layoutMargins];
    v28 = v27;
    [(UIView *)self bounds];
    v30 = v29;
    [(UIView *)self bounds];
    v32 = v6 - 1;
    if (v6 >= 1)
    {
      v33 = 0;
      v34 = fmax(v42, fmin(v43, v15));
      v35 = (v11 - v34 * v13) / (v6 - 1) * 0.5;
      v36 = v22 + fmax(v26 - v35, 0.0);
      v37 = (v30 - v36 - (v22 + fmax(v28 - v35, 0.0))) / v13;
      v38 = v31 * 0.5;
      v39 = v36 + v37 * 0.5;
      do
      {
        if (_shouldReverseLayoutDirection)
        {
          v40 = v32;
        }

        else
        {
          v40 = v33;
        }

        v41 = [(NSArray *)self->_labels objectAtIndex:v40];
        [v41 setBounds:{0.0, 0.0, v34, v20}];
        [v41 setCenter:{v39, v38}];
        v39 = v37 + v39;

        ++v33;
        --v32;
      }

      while (v32 != -1);
    }
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(NSArray *)self->_labels count];
  [(_UIDatePickerLinkedLabel *)self->_sizingLabel sizeThatFits:width / v6, height];
  v8 = v7;
  v10 = v9 * v6;
  traitCollection = [(UIView *)self traitCollection];
  v12 = _UICalendarViewGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  [v12 weekdayViewMinimumHeight];
  v14 = fmax(v8, v13);

  v15 = fmax(v10, width);
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end