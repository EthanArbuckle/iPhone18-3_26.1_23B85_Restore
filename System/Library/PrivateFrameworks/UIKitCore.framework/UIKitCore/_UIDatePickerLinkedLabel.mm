@interface _UIDatePickerLinkedLabel
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (_UIDatePickerLinkedLabel)initWithFrame:(CGRect)a3;
- (id)_longestPossibleTitleForPriority:(unint64_t)a3 width:(double *)a4;
- (int64_t)_renderPriorityForContainerWidth:(double)a3 initialPriority:(int64_t)a4;
- (void)_invalidatePossibleTitleCaches;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_storageSyncIfNecessaryWithContainerSize:(CGSize)a3;
- (void)_storageSyncWithContainerSize:(CGSize)a3;
- (void)_updateAlignmentConstraint;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setContentCompressionResistancePriority:(float)a3 forAxis:(int64_t)a4;
- (void)setContentHuggingPriority:(float)a3 forAxis:(int64_t)a4;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setOverrideAttributes:(id)a3;
- (void)setPossibleTitles:(id)a3;
- (void)setStorage:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTitles:(id)a3;
@end

@implementation _UIDatePickerLinkedLabel

- (_UIDatePickerLinkedLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54[9] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = _UIDatePickerLinkedLabel;
  v7 = [(UIView *)&v52 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    titles = v7->_titles;
    v7->_titles = MEMORY[0x1E695E0F0];

    v10 = [[UILabel alloc] initWithFrame:x, y, width, height];
    renderingLabel = v8->_renderingLabel;
    v8->_renderingLabel = v10;

    [(UIView *)v8->_renderingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v8 addSubview:v8->_renderingLabel];
    v12 = objc_opt_new();
    contentLayoutGuide = v8->_contentLayoutGuide;
    v8->_contentLayoutGuide = v12;

    [(UIView *)v8 addLayoutGuide:v8->_contentLayoutGuide];
    v14 = objc_opt_new();
    [(_UIDatePickerLinkedLabel *)v8 setStorage:v14];

    v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    longestPossibleTitle = v8->_longestPossibleTitle;
    v8->_longestPossibleTitle = v15;

    v17 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    longestPossibleWidth = v8->_longestPossibleWidth;
    v8->_longestPossibleWidth = v17;

    v19 = [(_UIDatePickerLinkedLabel *)v8 textAlignment]- 1;
    if (v19 > 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = qword_18A67B4C8[v19];
    }

    v21 = [MEMORY[0x1E69977A0] constraintWithItem:v8->_renderingLabel attribute:v20 relatedBy:0 toItem:v8 attribute:v20 multiplier:1.0 constant:0.0];
    renderLabelXConstraint = v8->_renderLabelXConstraint;
    v8->_renderLabelXConstraint = v21;

    v42 = MEMORY[0x1E69977A0];
    v51 = [(UIView *)v8->_renderingLabel topAnchor];
    v50 = [(UIView *)v8 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v54[0] = v49;
    v48 = [(UIView *)v8->_renderingLabel bottomAnchor];
    v47 = [(UIView *)v8 bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v54[1] = v46;
    v45 = [(UIView *)v8->_renderingLabel leadingAnchor];
    v44 = [(UIView *)v8 leadingAnchor];
    v43 = [v45 constraintGreaterThanOrEqualToAnchor:v44];
    v54[2] = v43;
    v41 = [(UIView *)v8->_renderingLabel trailingAnchor];
    v40 = [(UIView *)v8 trailingAnchor];
    v39 = [v41 constraintLessThanOrEqualToAnchor:v40];
    v54[3] = v39;
    v54[4] = v8->_renderLabelXConstraint;
    v38 = [(UILayoutGuide *)v8->_contentLayoutGuide topAnchor];
    v37 = [(UIView *)v8->_renderingLabel topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v54[5] = v36;
    v35 = [(UILayoutGuide *)v8->_contentLayoutGuide leadingAnchor];
    v23 = [(UIView *)v8->_renderingLabel leadingAnchor];
    v24 = [v35 constraintEqualToAnchor:v23];
    v54[6] = v24;
    v25 = [(UILayoutGuide *)v8->_contentLayoutGuide bottomAnchor];
    v26 = [(UIView *)v8->_renderingLabel bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v54[7] = v27;
    v28 = [(UILayoutGuide *)v8->_contentLayoutGuide trailingAnchor];
    v29 = [(UIView *)v8->_renderingLabel trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v54[8] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:9];
    [v42 activateConstraints:v31];

    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v33 = [(UIView *)v8 registerForTraitChanges:v32 withAction:sel__preferredContentSizeCategoryDidChange];
  }

  return v8;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v4 = [(_UIDatePickerLinkedLabel *)self _longestPossibleTitleForPriority:[(_UIDatePickerLinkedLabel *)self _renderPriorityForContainerWidth:0 initialPriority:a3.width width:a3.height], 0];
  storage = self->_storage;
  v6 = [(UILabel *)self->_renderingLabel font];
  v7 = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
  [(_UIDatePickerLinkedLabelStorage *)storage _sizeForText:v4 font:v6 height:v7 overrideAttributes:INFINITY];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v5 layoutSubviews];
  [(UIView *)self bounds];
  [(_UIDatePickerLinkedLabel *)self _storageSyncIfNecessaryWithContainerSize:v3, v4];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v7 setFrame:a3.origin.x, a3.origin.y];
  if (self->_lastSize.width == width && self->_lastSize.height == height)
  {
    if (*&self->_flags)
    {
      [(UIView *)self setNeedsLayout];
    }
  }

  else
  {
    self->_lastSize.width = width;
    self->_lastSize.height = height;
    [(_UIDatePickerLinkedLabelStorage *)self->_storage _resetPriority];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v7 setBounds:a3.origin.x, a3.origin.y];
  if (self->_lastSize.width == width && self->_lastSize.height == height)
  {
    if (*&self->_flags)
    {
      [(UIView *)self setNeedsLayout];
    }
  }

  else
  {
    self->_lastSize.width = width;
    self->_lastSize.height = height;
    [(_UIDatePickerLinkedLabelStorage *)self->_storage _resetPriority];
  }
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(UIView *)self invalidateIntrinsicContentSize];
  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
  storage = self->_storage;

  [(_UIDatePickerLinkedLabelStorage *)storage _resetPriority];
}

- (void)_updateAlignmentConstraint
{
  v3 = [(_UIDatePickerLinkedLabel *)self textAlignment];
  if ((v3 - 1) > 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_18A67B4C8[v3 - 1];
  }

  v5 = MEMORY[0x1E69977A0];
  v11 = self->_renderLabelXConstraint;
  v6 = [(NSLayoutConstraint *)v11 firstItem];
  v7 = [(NSLayoutConstraint *)v11 relation];
  v8 = [(NSLayoutConstraint *)v11 secondItem];
  v9 = [v5 constraintWithItem:v6 attribute:v4 relatedBy:v7 toItem:v8 attribute:v4 multiplier:1.0 constant:0.0];
  renderLabelXConstraint = self->_renderLabelXConstraint;
  self->_renderLabelXConstraint = v9;

  [(NSLayoutConstraint *)v11 setActive:0];
  [(NSLayoutConstraint *)self->_renderLabelXConstraint setActive:1];
}

- (void)setStorage:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIDatePickerLinkedLabel.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"storage"}];

    v6 = 0;
  }

  storage = self->_storage;
  if (storage != v6)
  {
    v9 = v6;
    [(_UIDatePickerLinkedLabelStorage *)storage _detachLabel:self];
    objc_storeStrong(&self->_storage, a3);
    [(_UIDatePickerLinkedLabelStorage *)v9 _attachLabel:self];
    v6 = v9;
  }
}

- (void)_storageSyncIfNecessaryWithContainerSize:(CGSize)a3
{
  if (*&self->_flags)
  {
    [(_UIDatePickerLinkedLabel *)self _storageSyncWithContainerSize:a3.width, a3.height];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    [(_UIDatePickerLinkedLabel *)self _setNeedsStorageSync];
  }
}

- (void)_storageSyncWithContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIView *)self window];
  if (v6)
  {

    goto LABEL_7;
  }

  [(UIView *)self bounds];
  if (width != v8 || height != v7)
  {
LABEL_7:
    *&self->_flags &= ~1u;
    v10 = [(_UIDatePickerLinkedLabel *)self _renderPriorityForContainerWidth:[(_UIDatePickerLinkedLabelStorage *)self->_storage _currentPriority] initialPriority:width];
    [(_UIDatePickerLinkedLabelStorage *)self->_storage _setPriority:v10 label:self];
    if ([(NSArray *)self->_titles count]<= v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = [(NSArray *)self->_titles objectAtIndex:v10];
    }

    v11 = [(_UIDatePickerLinkedLabel *)self font];
    v12 = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
    v13 = _UIAttributedTitleForTitle(v17, v11, v12);
    [(UILabel *)self->_renderingLabel setAttributedText:v13];

    v14 = [(UIView *)self traitCollection];
    if ([v14 userInterfaceIdiom] == 6)
    {
      v15 = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
      v16 = [v15 objectForKey:*off_1E70EC920];

      if (v16)
      {
LABEL_14:
        [(UIView *)self->_renderingLabel layoutIfNeeded];
        [(UIView *)self invalidateIntrinsicContentSize];

        return;
      }

      v14 = [(UILabel *)self->_renderingLabel textColor];
      [(UILabel *)self->_renderingLabel setTextColor:v14];
    }

    goto LABEL_14;
  }
}

- (int64_t)_renderPriorityForContainerWidth:(double)a3 initialPriority:(int64_t)a4
{
  v7 = [(NSArray *)self->_titles count];
  v8 = v7 - 1;
  if (v7 - 1 < a4)
  {
    a4 = v7 - 1;
  }

  while (v8 != a4)
  {
    v11 = 0.0;
    v9 = [(_UIDatePickerLinkedLabel *)self _longestPossibleTitleForPriority:a4++ width:&v11];
    if (v11 <= a3)
    {
      return a4 - 1;
    }
  }

  return v8;
}

- (void)_invalidatePossibleTitleCaches
{
  [(NSMapTable *)self->_longestPossibleTitle removeAllObjects];
  longestPossibleWidth = self->_longestPossibleWidth;

  [(NSMapTable *)longestPossibleWidth removeAllObjects];
}

- (void)setTitles:(id)a3
{
  v4 = [a3 copy];
  titles = self->_titles;
  self->_titles = v4;

  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
  storage = self->_storage;

  [(_UIDatePickerLinkedLabelStorage *)storage _resetPriority];
}

- (void)setPossibleTitles:(id)a3
{
  objc_storeStrong(&self->_possibleTitles, a3);
  v5 = a3;
  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
  [(_UIDatePickerLinkedLabelStorage *)self->_storage _resetPriority];
}

- (id)_longestPossibleTitleForPriority:(unint64_t)a3 width:(double *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  longestPossibleTitle = self->_longestPossibleTitle;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v9 = [(NSMapTable *)longestPossibleTitle objectForKey:v8];

  if (v9)
  {
    if (a4)
    {
      longestPossibleWidth = self->_longestPossibleWidth;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v12 = [(NSMapTable *)longestPossibleWidth objectForKey:v11];
      [v12 doubleValue];
      *a4 = v13;
    }

    v14 = v9;
  }

  else
  {
    v15 = objc_opt_new();
    if ([(NSArray *)self->_possibleTitles count]> a3)
    {
      v16 = [(NSArray *)self->_possibleTitles objectAtIndexedSubscript:a3];
      v17 = [v16 allObjects];
      [v15 addObjectsFromArray:v17];
    }

    if ([(NSArray *)self->_titles count]> a3)
    {
      v18 = [(NSArray *)self->_titles objectAtIndexedSubscript:a3];
      [v15 addObject:v18];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v15;
    v19 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    v40 = a4;
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v43;
      v23 = 0.0;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v42 + 1) + 8 * i);
          storage = self->_storage;
          v27 = [(UILabel *)self->_renderingLabel font];
          [(UIView *)self bounds];
          Height = CGRectGetHeight(v49);
          v29 = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
          [(_UIDatePickerLinkedLabelStorage *)storage _sizeForText:v25 font:v27 height:v29 overrideAttributes:Height];
          v31 = v30;

          if (v31 > v23)
          {
            v32 = v25;

            v21 = v32;
            v23 = v31;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
      v23 = 0.0;
    }

    v33 = self->_longestPossibleTitle;
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMapTable *)v33 setObject:v21 forKey:v34];

    v35 = self->_longestPossibleWidth;
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMapTable *)v35 setObject:v36 forKey:v37];

    if (v40)
    {
      *v40 = v23;
    }

    v38 = &stru_1EFB14550;
    if (v21)
    {
      v38 = v21;
    }

    v14 = v38;

    v9 = 0;
  }

  return v14;
}

- (void)setFont:(id)a3
{
  [(UILabel *)self->_renderingLabel setFont:a3];

  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
}

- (void)setTextAlignment:(int64_t)a3
{
  [(UILabel *)self->_renderingLabel setTextAlignment:a3];

  [(_UIDatePickerLinkedLabel *)self _updateAlignmentConstraint];
}

- (void)setContentCompressionResistancePriority:(float)a3 forAxis:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = _UIDatePickerLinkedLabel;
  [UIView setContentCompressionResistancePriority:sel_setContentCompressionResistancePriority_forAxis_ forAxis:?];
  *&v7 = a3;
  [(UIView *)self->_renderingLabel setContentCompressionResistancePriority:a4 forAxis:v7];
}

- (void)setContentHuggingPriority:(float)a3 forAxis:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = _UIDatePickerLinkedLabel;
  [UIView setContentHuggingPriority:sel_setContentHuggingPriority_forAxis_ forAxis:?];
  *&v7 = a3;
  [(UIView *)self->_renderingLabel setContentHuggingPriority:a4 forAxis:v7];
}

- (void)setOverrideAttributes:(id)a3
{
  objc_storeStrong(&self->_overrideAttributes, a3);
  [(UIView *)self bounds];

  [(_UIDatePickerLinkedLabel *)self _storageSyncWithContainerSize:v4, v5];
}

@end