@interface _UIDatePickerLinkedLabel
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (_UIDatePickerLinkedLabel)initWithFrame:(CGRect)frame;
- (id)_longestPossibleTitleForPriority:(unint64_t)priority width:(double *)width;
- (int64_t)_renderPriorityForContainerWidth:(double)width initialPriority:(int64_t)priority;
- (void)_invalidatePossibleTitleCaches;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_storageSyncIfNecessaryWithContainerSize:(CGSize)size;
- (void)_storageSyncWithContainerSize:(CGSize)size;
- (void)_updateAlignmentConstraint;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setContentCompressionResistancePriority:(float)priority forAxis:(int64_t)axis;
- (void)setContentHuggingPriority:(float)priority forAxis:(int64_t)axis;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setOverrideAttributes:(id)attributes;
- (void)setPossibleTitles:(id)titles;
- (void)setStorage:(id)storage;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTitles:(id)titles;
@end

@implementation _UIDatePickerLinkedLabel

- (_UIDatePickerLinkedLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v54[9] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = _UIDatePickerLinkedLabel;
  v7 = [(UIView *)&v52 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    titles = v7->_titles;
    v7->_titles = MEMORY[0x1E695E0F0];

    height = [[UILabel alloc] initWithFrame:x, y, width, height];
    renderingLabel = v8->_renderingLabel;
    v8->_renderingLabel = height;

    [(UIView *)v8->_renderingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v8 addSubview:v8->_renderingLabel];
    v12 = objc_opt_new();
    contentLayoutGuide = v8->_contentLayoutGuide;
    v8->_contentLayoutGuide = v12;

    [(UIView *)v8 addLayoutGuide:v8->_contentLayoutGuide];
    v14 = objc_opt_new();
    [(_UIDatePickerLinkedLabel *)v8 setStorage:v14];

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    longestPossibleTitle = v8->_longestPossibleTitle;
    v8->_longestPossibleTitle = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    longestPossibleWidth = v8->_longestPossibleWidth;
    v8->_longestPossibleWidth = strongToStrongObjectsMapTable2;

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
    topAnchor = [(UIView *)v8->_renderingLabel topAnchor];
    topAnchor2 = [(UIView *)v8 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v54[0] = v49;
    bottomAnchor = [(UIView *)v8->_renderingLabel bottomAnchor];
    bottomAnchor2 = [(UIView *)v8 bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v54[1] = v46;
    leadingAnchor = [(UIView *)v8->_renderingLabel leadingAnchor];
    leadingAnchor2 = [(UIView *)v8 leadingAnchor];
    v43 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v54[2] = v43;
    trailingAnchor = [(UIView *)v8->_renderingLabel trailingAnchor];
    trailingAnchor2 = [(UIView *)v8 trailingAnchor];
    v39 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v54[3] = v39;
    v54[4] = v8->_renderLabelXConstraint;
    topAnchor3 = [(UILayoutGuide *)v8->_contentLayoutGuide topAnchor];
    topAnchor4 = [(UIView *)v8->_renderingLabel topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v54[5] = v36;
    leadingAnchor3 = [(UILayoutGuide *)v8->_contentLayoutGuide leadingAnchor];
    leadingAnchor4 = [(UIView *)v8->_renderingLabel leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v54[6] = v24;
    bottomAnchor3 = [(UILayoutGuide *)v8->_contentLayoutGuide bottomAnchor];
    bottomAnchor4 = [(UIView *)v8->_renderingLabel bottomAnchor];
    v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v54[7] = v27;
    trailingAnchor3 = [(UILayoutGuide *)v8->_contentLayoutGuide trailingAnchor];
    trailingAnchor4 = [(UIView *)v8->_renderingLabel trailingAnchor];
    v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v4 = [(_UIDatePickerLinkedLabel *)self _longestPossibleTitleForPriority:[(_UIDatePickerLinkedLabel *)self _renderPriorityForContainerWidth:0 initialPriority:size.width width:size.height], 0];
  storage = self->_storage;
  font = [(UILabel *)self->_renderingLabel font];
  overrideAttributes = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
  [(_UIDatePickerLinkedLabelStorage *)storage _sizeForText:v4 font:font height:overrideAttributes overrideAttributes:INFINITY];
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y];
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v7.receiver = self;
  v7.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y];
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
  textAlignment = [(_UIDatePickerLinkedLabel *)self textAlignment];
  if ((textAlignment - 1) > 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_18A67B4C8[textAlignment - 1];
  }

  v5 = MEMORY[0x1E69977A0];
  v11 = self->_renderLabelXConstraint;
  firstItem = [(NSLayoutConstraint *)v11 firstItem];
  relation = [(NSLayoutConstraint *)v11 relation];
  secondItem = [(NSLayoutConstraint *)v11 secondItem];
  v9 = [v5 constraintWithItem:firstItem attribute:v4 relatedBy:relation toItem:secondItem attribute:v4 multiplier:1.0 constant:0.0];
  renderLabelXConstraint = self->_renderLabelXConstraint;
  self->_renderLabelXConstraint = v9;

  [(NSLayoutConstraint *)v11 setActive:0];
  [(NSLayoutConstraint *)self->_renderLabelXConstraint setActive:1];
}

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerLinkedLabel.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"storage"}];

    storageCopy = 0;
  }

  storage = self->_storage;
  if (storage != storageCopy)
  {
    v9 = storageCopy;
    [(_UIDatePickerLinkedLabelStorage *)storage _detachLabel:self];
    objc_storeStrong(&self->_storage, storage);
    [(_UIDatePickerLinkedLabelStorage *)v9 _attachLabel:self];
    storageCopy = v9;
  }
}

- (void)_storageSyncIfNecessaryWithContainerSize:(CGSize)size
{
  if (*&self->_flags)
  {
    [(_UIDatePickerLinkedLabel *)self _storageSyncWithContainerSize:size.width, size.height];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIDatePickerLinkedLabel;
  [(UIView *)&v4 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    [(_UIDatePickerLinkedLabel *)self _setNeedsStorageSync];
  }
}

- (void)_storageSyncWithContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  window = [(UIView *)self window];
  if (window)
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

    font = [(_UIDatePickerLinkedLabel *)self font];
    overrideAttributes = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
    v13 = _UIAttributedTitleForTitle(v17, font, overrideAttributes);
    [(UILabel *)self->_renderingLabel setAttributedText:v13];

    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 6)
    {
      overrideAttributes2 = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
      v16 = [overrideAttributes2 objectForKey:*off_1E70EC920];

      if (v16)
      {
LABEL_14:
        [(UIView *)self->_renderingLabel layoutIfNeeded];
        [(UIView *)self invalidateIntrinsicContentSize];

        return;
      }

      traitCollection = [(UILabel *)self->_renderingLabel textColor];
      [(UILabel *)self->_renderingLabel setTextColor:traitCollection];
    }

    goto LABEL_14;
  }
}

- (int64_t)_renderPriorityForContainerWidth:(double)width initialPriority:(int64_t)priority
{
  v7 = [(NSArray *)self->_titles count];
  v8 = v7 - 1;
  if (v7 - 1 < priority)
  {
    priority = v7 - 1;
  }

  while (v8 != priority)
  {
    v11 = 0.0;
    v9 = [(_UIDatePickerLinkedLabel *)self _longestPossibleTitleForPriority:priority++ width:&v11];
    if (v11 <= width)
    {
      return priority - 1;
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

- (void)setTitles:(id)titles
{
  v4 = [titles copy];
  titles = self->_titles;
  self->_titles = v4;

  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
  storage = self->_storage;

  [(_UIDatePickerLinkedLabelStorage *)storage _resetPriority];
}

- (void)setPossibleTitles:(id)titles
{
  objc_storeStrong(&self->_possibleTitles, titles);
  titlesCopy = titles;
  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
  [(_UIDatePickerLinkedLabelStorage *)self->_storage _resetPriority];
}

- (id)_longestPossibleTitleForPriority:(unint64_t)priority width:(double *)width
{
  v47 = *MEMORY[0x1E69E9840];
  longestPossibleTitle = self->_longestPossibleTitle;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v9 = [(NSMapTable *)longestPossibleTitle objectForKey:v8];

  if (v9)
  {
    if (width)
    {
      longestPossibleWidth = self->_longestPossibleWidth;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
      v12 = [(NSMapTable *)longestPossibleWidth objectForKey:v11];
      [v12 doubleValue];
      *width = v13;
    }

    v14 = v9;
  }

  else
  {
    v15 = objc_opt_new();
    if ([(NSArray *)self->_possibleTitles count]> priority)
    {
      v16 = [(NSArray *)self->_possibleTitles objectAtIndexedSubscript:priority];
      allObjects = [v16 allObjects];
      [v15 addObjectsFromArray:allObjects];
    }

    if ([(NSArray *)self->_titles count]> priority)
    {
      v18 = [(NSArray *)self->_titles objectAtIndexedSubscript:priority];
      [v15 addObject:v18];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v15;
    v19 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    widthCopy = width;
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
          font = [(UILabel *)self->_renderingLabel font];
          [(UIView *)self bounds];
          Height = CGRectGetHeight(v49);
          overrideAttributes = [(_UIDatePickerLinkedLabel *)self overrideAttributes];
          [(_UIDatePickerLinkedLabelStorage *)storage _sizeForText:v25 font:font height:overrideAttributes overrideAttributes:Height];
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
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
    [(NSMapTable *)v33 setObject:v21 forKey:v34];

    v35 = self->_longestPossibleWidth;
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
    [(NSMapTable *)v35 setObject:v36 forKey:v37];

    if (widthCopy)
    {
      *widthCopy = v23;
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

- (void)setFont:(id)font
{
  [(UILabel *)self->_renderingLabel setFont:font];

  [(_UIDatePickerLinkedLabel *)self _invalidatePossibleTitleCaches];
}

- (void)setTextAlignment:(int64_t)alignment
{
  [(UILabel *)self->_renderingLabel setTextAlignment:alignment];

  [(_UIDatePickerLinkedLabel *)self _updateAlignmentConstraint];
}

- (void)setContentCompressionResistancePriority:(float)priority forAxis:(int64_t)axis
{
  v8.receiver = self;
  v8.super_class = _UIDatePickerLinkedLabel;
  [UIView setContentCompressionResistancePriority:sel_setContentCompressionResistancePriority_forAxis_ forAxis:?];
  *&v7 = priority;
  [(UIView *)self->_renderingLabel setContentCompressionResistancePriority:axis forAxis:v7];
}

- (void)setContentHuggingPriority:(float)priority forAxis:(int64_t)axis
{
  v8.receiver = self;
  v8.super_class = _UIDatePickerLinkedLabel;
  [UIView setContentHuggingPriority:sel_setContentHuggingPriority_forAxis_ forAxis:?];
  *&v7 = priority;
  [(UIView *)self->_renderingLabel setContentHuggingPriority:axis forAxis:v7];
}

- (void)setOverrideAttributes:(id)attributes
{
  objc_storeStrong(&self->_overrideAttributes, attributes);
  [(UIView *)self bounds];

  [(_UIDatePickerLinkedLabel *)self _storageSyncWithContainerSize:v4, v5];
}

@end