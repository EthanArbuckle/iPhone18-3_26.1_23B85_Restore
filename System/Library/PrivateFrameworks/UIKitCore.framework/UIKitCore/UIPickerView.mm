@interface UIPickerView
+ (CGSize)defaultSizeForMainScreenTraits;
+ (CGSize)defaultSizeForTraits:(id)a3;
+ (CGSize)sizeForMainScreenTraitsThatFits:(CGSize)a3;
+ (CGSize)sizeThatFits:(CGSize)a3 forTraits:(id)a4;
+ (id)_styleForIdiom:(int64_t)a3;
+ (void)_prepareStyleStorageIfNecessary;
+ (void)_registerStyle:(id)a3 forIdiom:(int64_t)a4;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3;
+ (void)initialize;
- (BOOL)_usesDynamicRowHeight;
- (CATransform3D)_perspectiveTransform;
- (CGRect)_effectiveTableViewFrameForColumn:(int64_t)a3;
- (CGRect)_selectionBarRectForHeight:(double)a3;
- (CGSize)_contentSizeForRow:(int64_t)a3 inComponent:(int64_t)a4;
- (CGSize)_sizeThatFits:(CGSize)a3;
- (CGSize)defaultSize;
- (CGSize)rowSizeForComponent:(NSInteger)component;
- (NSInteger)numberOfComponents;
- (NSInteger)numberOfRowsInComponent:(NSInteger)component;
- (NSInteger)selectedRowInComponent:(NSInteger)component;
- (UIPickerView)initWithCoder:(id)a3;
- (UIPickerView)initWithFrame:(CGRect)a3;
- (UIView)viewForRow:(NSInteger)row forComponent:(NSInteger)component;
- (_NSRange)visibleRowsForColumn:(int)a3;
- (_UIPickerViewStyle)_style;
- (double)_delegateRowHeightForComponent:(int64_t)a3;
- (double)_delegateWidthForComponent:(int64_t)a3 ofCount:(int)a4 withSizeLeft:(double)a5;
- (double)_rowHeightForDefaultFont;
- (double)_selectionBarSideInset;
- (double)_tableRowHeight;
- (id)_createColumnWithTableFrame:(CGRect)a3 rowHeight:(double)a4 paddingAroundWheels:(double)a5;
- (id)_createTableWithFrame:(CGRect)a3 forComponent:(int64_t)a4;
- (id)_delegateAttributedTitleForRow:(int64_t)a3 forComponent:(int64_t)a4;
- (id)_delegateTitleForRow:(int64_t)a3 forComponent:(int64_t)a4;
- (id)_scalarStatisticsForUserValueChangedEvent;
- (id)_selectionBarSuffix;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)dataSource;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableViewForColumn:(int64_t)a3;
- (int64_t)_delegateNumberOfComponents;
- (int64_t)_delegateNumberOfRowsInComponent:(int64_t)a3;
- (int64_t)columnForTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addHighlightRectForRowHeight:(double)a3;
- (void)_addMagnifierForRowHeight:(double)a3;
- (void)_addMagnifierLinesForRowHeight:(double)a3;
- (void)_completeCurrentTest;
- (void)_iterateOnCurrentTest;
- (void)_noteScrollingFinishedForComponent:(int64_t)a3;
- (void)_performScrollTest:(id)a3 withIterations:(int64_t)a4 rowsToScroll:(int64_t)a5 inComponent:(int64_t)a6;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_resetSelectionOfTables;
- (void)_selectRow:(int64_t)a3 inComponent:(int64_t)a4 animated:(BOOL)a5 notify:(BOOL)a6;
- (void)_sendCheckedRow:(int64_t)a3 inTableView:(id)a4 checked:(BOOL)a5;
- (void)_sendSelectionChangedForComponent:(int64_t)a3 notify:(BOOL)a4;
- (void)_sendSelectionChangedFromTable:(id)a3 notify:(BOOL)a4;
- (void)_setColumnView:(id)a3 enabled:(BOOL)a4;
- (void)_setDrawsBackground:(BOOL)a3;
- (void)_setEnabled:(BOOL)a3;
- (void)_setHighlightColor:(id)a3;
- (void)_setMagnifierLineColor:(id)a3;
- (void)_setSelectionBarIgnoresInset:(BOOL)a3;
- (void)_setTextColor:(id)a3;
- (void)_setTextShadowColor:(id)a3;
- (void)_setUsesCheckedSelection:(BOOL)a3;
- (void)_setUsesDynamicRowHeight:(BOOL)a3;
- (void)_updateSelectedRows;
- (void)_willPlayClickSound;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)reloadAllComponents;
- (void)reloadAllPickerPieces;
- (void)reloadComponent:(NSInteger)component;
- (void)setAllowsMultipleSelection:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setDataSource:(id)dataSource;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)a3;
- (void)setNeedsLayout;
- (void)setShowsSelectionIndicator:(BOOL)showsSelectionIndicator;
- (void)setSoundsEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIPickerView

+ (void)initialize
{
  if (objc_opt_class() == a1 && (dyld_program_sdk_at_least() & 1) == 0)
  {

    [UIView _performSystemAppearanceModifications:&__block_literal_global_475];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = UIPickerView;
  [(UIView *)&v3 setBackgroundColor:a3];
}

+ (CGSize)sizeThatFits:(CGSize)a3 forTraits:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [v6 userInterfaceIdiom]);
  [v7 sizeThatFits:v6 forTraitCollection:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeForMainScreenTraitsThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 traitCollection];
  [a1 sizeThatFits:v7 forTraits:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)defaultSizeForTraits:(id)a3
{
  v3 = a3;
  v4 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [v3 userInterfaceIdiom]);
  [v4 defaultSizeForTraitCollection:v3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)defaultSizeForMainScreenTraits
{
  v3 = [objc_opt_self() mainScreen];
  v4 = [v3 traitCollection];
  [a1 defaultSizeForTraits:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)defaultSize
{
  v3 = dyld_program_sdk_at_least();
  v4 = objc_opt_class();
  v5 = v4;
  if (v3)
  {
    v6 = [(UIView *)self traitCollection];
    [v5 defaultSizeForTraits:v6];
    v8 = v7;
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {

    [v4 defaultSizeForMainScreenTraits];
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_setUsesDynamicRowHeight:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPickerView *)self _usesDynamicRowHeight];
  if (v3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFEFFFF | v6);
  if (v5 != v3)
  {

    [(UIPickerView *)self reloadAllComponents];
  }
}

- (BOOL)_usesDynamicRowHeight
{
  if (*(&self->_pickerViewFlags + 2))
  {
    return 1;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v2 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v5 = _UIInternalPreference_PickerViewForceDynamicRowHeight, _UIInternalPreferencesRevisionVar == _UIInternalPreference_PickerViewForceDynamicRowHeight))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = v2 < v5;
      if (v2 < v5)
      {
        break;
      }

      _UIInternalPreferenceSync(v2, &_UIInternalPreference_PickerViewForceDynamicRowHeight, @"PickerViewForceDynamicRowHeight", _UIInternalPreferenceUpdateBool);
      v5 = _UIInternalPreference_PickerViewForceDynamicRowHeight;
    }

    while (v2 != _UIInternalPreference_PickerViewForceDynamicRowHeight);
  }

  return byte_1EA95E604 && v3;
}

- (double)_rowHeightForDefaultFont
{
  v3 = [(UIPickerView *)self _style];
  v4 = [(UIView *)self traitCollection];
  v5 = [v3 centerCellFontWithTraitCollection:v4];

  CTFontGetLanguageAwareOutsets();
  [v5 ascender];
  [v5 descender];
  UICeilToViewScale(self);
  v7 = v6;

  return v7;
}

- (double)_tableRowHeight
{
  if ([(UIPickerView *)self _usesDynamicRowHeight])
  {

    [(UIPickerView *)self _rowHeightForDefaultFont];
  }

  else
  {
    v4 = [(UIPickerView *)self _style];
    [(UIView *)self bounds];
    [v4 defaultRowHeightForSize:{v5, v6}];
    v8 = v7;

    return v8;
  }

  return result;
}

- (void)setSoundsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4096;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFEFFF | v3);
}

void __26__UIPickerView_initialize__block_invoke()
{
  v0 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v7 = [(UIView *)UIPickerView appearanceForTraitCollection:v0];

  v1 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v2 = [(UIView *)UIPickerView appearanceForTraitCollection:v1];

  v3 = +[UIColor blackColor];
  [v7 _setTextColor:v3];

  v4 = [UIColor colorWithWhite:0.0 alpha:0.198];
  [v7 _setMagnifierLineColor:v4];

  v5 = +[UIColor whiteColor];
  [v2 _setTextColor:v5];

  v6 = [UIColor colorWithWhite:1.0 alpha:0.198];
  [v2 _setMagnifierLineColor:v6];
}

- (UIPickerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!dyld_program_sdk_at_least() || (*MEMORY[0x1E695F060] == width ? (v8 = *(MEMORY[0x1E695F060] + 8) == height) : (v8 = 0), v8))
  {
    [objc_opt_class() sizeForMainScreenTraitsThatFits:{width, height}];
    width = v9;
    height = v10;
  }

  v14.receiver = self;
  v14.super_class = UIPickerView;
  v11 = [(UIView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    *&v11->_pickerViewFlags |= 0x800u;
    _UIPickerViewCommonInit(v11);
  }

  return v12;
}

- (UIPickerView)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIPickerView;
  v5 = [(UIView *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v5->_delegate, v6);

    if ([v4 decodeBoolForKey:@"UIShowsSelectionBar"])
    {
      v7 = 512;
    }

    else
    {
      v7 = 0;
    }

    v5->_pickerViewFlags = (*&v5->_pickerViewFlags & 0xFFFFFDFF | v7);
    if ([v4 decodeBoolForKey:@"UIAllowSelectingCells"])
    {
      v8 = 2048;
    }

    else
    {
      v8 = 0;
    }

    v5->_pickerViewFlags = (*&v5->_pickerViewFlags & 0xFFFFF7FF | v8);
    if ([v4 containsValueForKey:@"UISkipsBackground"])
    {
      if ([v4 decodeBoolForKey:@"UISkipsBackground"])
      {
        v9 = 0x4000;
      }

      else
      {
        v9 = 0;
      }

      v5->_pickerViewFlags = (*&v5->_pickerViewFlags & 0xFFFFBFFF | v9);
    }

    _UIPickerViewCommonInit(v5);
  }

  return v5;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIPickerView;
  [(UIView *)&v8 _populateArchivedSubviews:v4];
  v9[0] = self->_foregroundView;
  v9[1] = self->_topLineOrFillView;
  v5 = self->_bottomLineView;
  v6 = 0;
  v9[2] = v5;
  do
  {
    if (v9[v6])
    {
      [v4 removeObject:?];
    }

    ++v6;
  }

  while (v6 != 3);
  for (i = 2; i != -1; --i)
  {
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIPickerView;
  [(UIView *)&v7 encodeWithCoder:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeObject:WeakRetained forKey:@"UIDelegate"];
  }

  pickerViewFlags = self->_pickerViewFlags;
  if ((*&pickerViewFlags & 0x200) == 0)
  {
    if ((*&pickerViewFlags & 0x800) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    [v4 encodeBool:1 forKey:@"UIAllowSelectingCells"];
    if ((*&self->_pickerViewFlags & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v4 encodeBool:1 forKey:@"UIShowsSelectionBar"];
  pickerViewFlags = self->_pickerViewFlags;
  if ((*&pickerViewFlags & 0x800) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((*&pickerViewFlags & 0x4000) != 0)
  {
LABEL_6:
    [v4 encodeBool:1 forKey:@"UISkipsBackground"];
  }

LABEL_7:
}

- (void)dealloc
{
  v3 = +[UIDevice currentDevice];
  [v3 _unregisterForSystemSounds:self];

  v4.receiver = self;
  v4.super_class = UIPickerView;
  [(UIView *)&v4 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((UIViewIgnoresTouchEvents(self) & 1) == 0 && [(UIPickerView *)self _enabled]&& ([(UIView *)self bounds], v37.x = x, v37.y = y, CGRectContainsPoint(v38, v37)))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = self->_tables;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      v23 = *v30;
      v24 = v8;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v14 = [v13 _allVisibleCells];
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v25 + 1) + 8 * j);
                [v19 convertPoint:self fromView:{x, y}];
                if ([v19 pointInside:v7 withEvent:?] && !objc_msgSend(v19, "isHidden"))
                {
                  v20 = v19;
                  v8 = v24;
                  goto LABEL_27;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          if ([v13 _pointLiesWithinEffectiveTableBounds:{x, y}])
          {
            v22 = [v13 _visibleCellClosestToPoint:self inView:{x, y}];
            v8 = v24;
            if (v22)
            {
              v14 = v22;
              v20 = v14;
            }

            else
            {
              v20 = [v13 _preferredTable];
              v14 = 0;
            }

LABEL_27:

            goto LABEL_29;
          }

          v11 = v23;
          v8 = v24;
        }

        v10 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
        v20 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_29:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setNeedsLayout
{
  *&self->_pickerViewFlags |= 1u;
  v2.receiver = self;
  v2.super_class = UIPickerView;
  [(UIView *)&v2 setNeedsLayout];
}

- (void)_updateSelectedRows
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 && [(UIPickerView *)self numberOfComponents]>= 1)
  {
    v5 = 0;
    do
    {
      [(UIPickerView *)self _selectRow:[(UIPickerView *)self selectedRowInComponent:v5] inComponent:v5 animated:0 notify:0];
      ++v5;
    }

    while (v5 < [(UIPickerView *)self numberOfComponents]);
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = UIPickerView;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    [(UIPickerView *)self _updateSelectedRows];
  }
}

- (void)_setColumnView:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = v5;
  if (v4)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.4;
  }

  [v5 setUserInteractionEnabled:v4];
  [v7 setAlpha:v6];
}

- (void)_setEnabled:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if ([(UIPickerView *)self _enabled]!= a3)
  {
    self->_enabled = v3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_tables;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(UIPickerView *)self _setColumnView:*(*(&v10 + 1) + 8 * v9++) enabled:v3, v10];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)reloadAllComponents
{
  v3 = [(NSMutableArray *)self->_tables count];
  v4 = [(UIPickerView *)self _delegateNumberOfComponents];
  if (v3)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v3 >= 1)
    {
      for (i = 0; i != v3; ++i)
      {
        v7 = [(NSMutableArray *)self->_tables objectAtIndex:i];
        [v7 reloadData];
      }
    }
  }

  else
  {

    [(UIPickerView *)self setNeedsLayout];
  }
}

- (void)reloadComponent:(NSInteger)component
{
  if ((*&self->_pickerViewFlags & 1) == 0)
  {
    v3 = [(NSMutableArray *)self->_tables objectAtIndex:component];
    [v3 reloadData];
  }
}

- (id)_selectionBarSuffix
{
  if ((*&self->_pickerViewFlags & 0x200) != 0)
  {
    return @"-Bar";
  }

  else
  {
    return &stru_1EFB14550;
  }
}

- (CGRect)_selectionBarRectForHeight:(double)a3
{
  [(UIView *)self bounds];
  v6 = v5;
  UIRoundToViewScale(self);
  v8 = v7;
  v9 = 0.0;
  v10 = v6;
  v11 = a3;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (double)_selectionBarSideInset
{
  if ((*(&self->_pickerViewFlags + 2) & 2) != 0)
  {
    return 0.0;
  }

  v2 = [(UIPickerView *)self _style];
  [v2 selectionBarSideInset];
  v4 = v3;

  return v4;
}

- (void)_setSelectionBarIgnoresInset:(BOOL)a3
{
  pickerViewFlags = self->_pickerViewFlags;
  if (((((*&pickerViewFlags & 0x20000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 0x20000;
    }

    else
    {
      v4 = 0;
    }

    self->_pickerViewFlags = (*&pickerViewFlags & 0xFFFDFFFF | v4);
    [(UIPickerView *)self setNeedsLayout];
  }
}

- (CGSize)_sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = dyld_program_sdk_at_least();
  v7 = objc_opt_class();
  v8 = v7;
  if (v6)
  {
    v9 = [(UIView *)self traitCollection];
    [v8 sizeThatFits:v9 forTraits:{width, height}];
    v11 = v10;
    v13 = v12;

    v14 = v11;
    v15 = v13;
  }

  else
  {

    [v7 sizeForMainScreenTraitsThatFits:{width, height}];
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  if (dyld_program_sdk_at_least())
  {

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_sendCheckedRow:(int64_t)a3 inTableView:(id)a4 checked:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained pickerView:self row:a3 column:-[UIPickerView columnForTableView:](self checked:{"columnForTableView:", v9), v5}];
  }
}

- (int64_t)_delegateNumberOfComponents
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained numberOfComponentsInPickerView:self];
  }

  else if ((*&self->_pickerViewFlags & 2) != 0)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v6 numberOfComponentsInPickerView:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)_delegateNumberOfRowsInComponent:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained pickerView:self numberOfRowsInComponent:a3];
  }

  else if ((*&self->_pickerViewFlags & 4) != 0)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v8 pickerView:self numberOfRowsInComponent:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_delegateTitleForRow:(int64_t)a3 forComponent:(int64_t)a4
{
  if ((*&self->_pickerViewFlags & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained pickerView:self titleForRow:a3 forComponent:a4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_delegateAttributedTitleForRow:(int64_t)a3 forComponent:(int64_t)a4
{
  if ((*&self->_pickerViewFlags & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained pickerView:self attributedTitleForRow:a3 forComponent:a4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)_delegateWidthForComponent:(int64_t)a3 ofCount:(int)a4 withSizeLeft:(double)a5
{
  if ((*&self->_pickerViewFlags & 0x80) == 0)
  {
    return round(a5 / (a4 - a3));
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pickerView:self widthForComponent:a3];
  v10 = v9;

  return v10;
}

- (double)_delegateRowHeightForComponent:(int64_t)a3
{
  if (*(&self->_pickerViewFlags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pickerView:self rowHeightForComponent:a3];
    v8 = v7;

    return v8;
  }

  else
  {

    [(UIPickerView *)self _tableRowHeight];
  }

  return result;
}

- (void)_addMagnifierForRowHeight:(double)a3
{
  if ([(UIPickerView *)self _magnifierEnabled])
  {
    if ([(UIPickerView *)self _magnifierStyle])
    {

      [(UIPickerView *)self _addHighlightRectForRowHeight:a3];
    }

    else
    {

      [(UIPickerView *)self _addMagnifierLinesForRowHeight:a3];
    }
  }
}

- (void)_addHighlightRectForRowHeight:(double)a3
{
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIPickerView *)self _style];
  [v13 verticalPaddingForCenterHighlightView];
  v15 = v14 + a3;

  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  CGRectGetMidY(v31);
  UIRoundToViewScale(self);
  v17 = v16;
  v18 = 0.0;
  if ((*(&self->_pickerViewFlags + 2) & 2) == 0)
  {
    v19 = [(UIPickerView *)self _style];
    [v19 horizontalPaddingForCenterHighlightView];
    v18 = v20;
  }

  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v21 = CGRectGetWidth(v32) - (v18 + v18);
  topLineOrFillView = self->_topLineOrFillView;
  if (!topLineOrFillView)
  {
    v23 = [(UIPickerView *)self _style];
    v24 = [v23 createCenterHighlightView];
    v25 = self->_topLineOrFillView;
    self->_topLineOrFillView = v24;

    topLineOrFillView = self->_topLineOrFillView;
  }

  [(UIView *)topLineOrFillView setFrame:v18, v17, v21, v15];
  if (self->_topLineOrFillView)
  {
    v26 = [(UIPickerView *)self _style];
    v27 = [v26 highlightViewIsOverlay];

    if (v27)
    {
      v28 = self->_topLineOrFillView;

      [(UIView *)self addSubview:v28];
    }

    else
    {
      v29 = [(UIPickerView *)self _contentView];
      [v29 addSubview:self->_topLineOrFillView];
    }
  }
}

- (void)_addMagnifierLinesForRowHeight:(double)a3
{
  UIRoundToViewScale(self);
  v5 = v4;
  [(UIView *)self bounds];
  v6 = [(UIPickerView *)self _style];
  [v6 verticalPaddingForCenterHighlightView];
  v8 = v7;

  UIRoundToViewScale(self);
  v10 = v9;
  UIRoundToViewScale(self);
  v12 = v11;
  UIRoundToViewScale(self);
  v14 = v13;
  [(UIView *)self bounds];
  v16 = v15;
  [(UIView *)self bounds];
  v18 = v17;
  if (!self->_topLineOrFillView)
  {
    v19 = objc_alloc_init(UIView);
    topLineOrFillView = self->_topLineOrFillView;
    self->_topLineOrFillView = v19;

    [(UIView *)self->_topLineOrFillView setBackgroundColor:self->_magnifierLineColor];
  }

  if (!self->_bottomLineView)
  {
    v21 = objc_alloc_init(UIView);
    bottomLineView = self->_bottomLineView;
    self->_bottomLineView = v21;

    [(UIView *)self->_bottomLineView setBackgroundColor:self->_magnifierLineColor];
  }

  [(UIView *)self->_topLineOrFillView setFrame:0.0, v10 - v12 - v8 * 0.5, v16, v5];
  [(UIView *)self->_bottomLineView setFrame:0.0, v8 * 0.5 + v14, v18, v5];
  [(UIView *)self addSubview:self->_topLineOrFillView];
  [(UIView *)self bringSubviewToFront:self->_topLineOrFillView];
  [(UIView *)self addSubview:self->_bottomLineView];
  v23 = self->_bottomLineView;

  [(UIView *)self bringSubviewToFront:v23];
}

- (void)_setMagnifierLineColor:(id)a3
{
  objc_storeStrong(&self->_magnifierLineColor, a3);
  v5 = a3;
  [(UIView *)self->_topLineOrFillView setBackgroundColor:v5];
  [(UIView *)self->_bottomLineView setBackgroundColor:v5];
}

- (id)_createColumnWithTableFrame:(CGRect)a3 rowHeight:(double)a4 paddingAroundWheels:(double)a5
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(UIPickerView *)self _style];
  [v9 verticalPaddingForCenterHighlightView];
  v11 = v10;

  v12 = 0.0;
  if ((dyld_program_sdk_at_least() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [(UIPickerView *)self _selectionBarSideInset];
    v12 = v13;
  }

  [(UIView *)self bounds];
  v15 = v14;
  v17 = v12 + v16;
  v19 = v18 - (v12 + v12);
  v21 = v20 + 0.0;
  v22 = [UIPickerColumnView alloc];
  [(UIPickerView *)self _perspectiveTransform];
  v23 = [(UIPickerColumnView *)v22 initWithFrame:self tableFrame:v28 middleBarHeight:v17 rowHeight:v21 paddingAroundWheels:v19 pickerView:v15 transform:x, y, width, height, v11 + a4, *&a4, *&a5];
  [(NSMutableArray *)self->_tables addObject:v23];
  [(UIView *)v23 setAutoresizingMask:26];
  [(UIPickerColumnView *)v23 _setTextColor:self->_textColor];
  [(UIPickerView *)self _setColumnView:v23 enabled:[(UIPickerView *)self _enabled]];

  return v23;
}

- (id)_createTableWithFrame:(CGRect)a3 forComponent:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [UIPickerTableView alloc];
  v11 = [(UIPickerTableView *)v10 initWithFrame:0 style:x visibleRect:y, width, height, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NSMutableArray *)self->_tables addObject:v11];
  [(UITableView *)v11 setDataSource:self];
  [(UIPickerView *)self _delegateRowHeightForComponent:a4];
  [(UITableView *)v11 setRowHeight:?];
  [(UITableView *)v11 setEstimatedRowHeight:0.0];
  [(UIScrollView *)v11 setShowsVerticalScrollIndicator:0];
  [(UIView *)v11 setAutoresizingMask:26];
  return v11;
}

- (CGSize)rowSizeForComponent:(NSInteger)component
{
  if (*&self->_pickerViewFlags)
  {
    [(UIPickerView *)self layoutSubviews];
  }

  v5 = [(UIPickerView *)self tableViewForColumn:component];
  if ([v5 numberOfRowsInSection:0] < 1)
  {
    v8 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    [v5 rectForRowAtIndexPath:v6];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (NSInteger)numberOfRowsInComponent:(NSInteger)component
{
  if (*&self->_pickerViewFlags)
  {
    [(UIPickerView *)self layoutSubviews];
  }

  v5 = [(UIPickerView *)self tableViewForColumn:component];
  v6 = [v5 numberOfRowsInSection:0];

  return v6;
}

- (NSInteger)numberOfComponents
{
  if (*&self->_pickerViewFlags)
  {
    return [(UIPickerView *)self _delegateNumberOfComponents];
  }

  else
  {
    return [(NSMutableArray *)self->_tables count];
  }
}

- (UIView)viewForRow:(NSInteger)row forComponent:(NSInteger)component
{
  pickerViewFlags = self->_pickerViewFlags;
  if (*&pickerViewFlags)
  {
    [(UIPickerView *)self layoutSubviews];
    pickerViewFlags = self->_pickerViewFlags;
  }

  if ((*&pickerViewFlags & 0x10) != 0)
  {
    v9 = [(UIPickerView *)self tableViewForColumn:component];
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:row inSection:0];
    v11 = [v9 cellForRowAtIndexPath:v10];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 wrappedView];
    }

    else
    {
      v12 = v11;
    }

    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reloadAllPickerPieces
{
  if (self->_tables)
  {
    [(UIPickerView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  pickerViewFlags = self->_pickerViewFlags;
  if ((*&pickerViewFlags & 0x8000) != 0)
  {
    pickerViewFlags = (*&pickerViewFlags & 0xFFFFFFFE);
    self->_pickerViewFlags = pickerViewFlags;
  }

  if (*&pickerViewFlags)
  {
    self->_pickerViewFlags = (*&pickerViewFlags | 0x8000);
    v4 = [(UIPickerView *)self _style];
    [v4 paddingBetweenWheels];
    v6 = v5;
    [v4 paddingAroundWheels];
    v8 = v7;
    [v4 horizontalPaddingForContents];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__UIPickerView_layoutSubviews__block_invoke;
    v11[3] = &unk_1E70F38C0;
    v11[4] = self;
    v11[5] = v9;
    v11[6] = v8;
    v11[7] = v6;
    [UIView performWithoutAnimation:v11];
    v10.receiver = self;
    v10.super_class = UIPickerView;
    [(UIView *)&v10 layoutSubviews];
    *&self->_pickerViewFlags &= 0xFFFF7FFE;
  }
}

void __30__UIPickerView_layoutSubviews__block_invoke(uint64_t a1)
{
  v161 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v143 = *(v2 + 472);
  *(v2 + 472) = v143 | 0x1000;
  *(*(a1 + 32) + 472) &= ~1u;
  [*(a1 + 32) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 32);
  v12 = v11[55];
  [v11 bounds];
  [v12 setFrame:?];
  [*(*(a1 + 32) + 440) setContentScaleFactor:4.0];
  [*(a1 + 32) insertSubview:*(*(a1 + 32) + 440) atIndex:0];
  [*(*(a1 + 32) + 440) setClipsToBounds:0];
  [*(a1 + 32) bounds];
  [*(*(a1 + 32) + 448) setFrame:?];
  v13 = *(*(a1 + 32) + 408);
  if (v13)
  {
    v14 = [v13 count];
    v15 = v14;
    if (v14 < 0x11)
    {
      v16 = v160;
    }

    else
    {
      v16 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    }

    if (v15 >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        v21 = [*(a1 + 32) tableViewForColumn:i];
        *&v16[8 * i] = [v21 selectionBarRow];
      }
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v22 = *(*(a1 + 32) + 408);
    v23 = [v22 countByEnumeratingWithState:&v154 objects:v159 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v155;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v155 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v154 + 1) + 8 * j);
          [v27 markAsNoLongerInUse];
          [v27 removeFromSuperview];
        }

        v24 = [v22 countByEnumeratingWithState:&v154 objects:v159 count:16];
      }

      while (v24);
    }

    [*(*(a1 + 32) + 408) removeAllObjects];
  }

  else
  {
    v17 = objc_opt_new();
    v18 = *(a1 + 32);
    v19 = *(v18 + 408);
    *(v18 + 408) = v17;

    v16 = 0;
    v15 = 0;
  }

  v28 = [*(a1 + 32) _delegateNumberOfComponents];
  v29 = *(a1 + 40);
  v30 = v8 - (v29 + v29);
  v31 = *(a1 + 32);
  v32 = *(a1 + 48) + *(a1 + 48);
  LODWORD(v150.origin.x) = v31[118];
  v144 = v6;
  if ((LOBYTE(v150.origin.x) & 0x80) != 0)
  {
    v33 = 0.0;
    if (v28 >= 1)
    {
      for (k = 0; k != v28; ++k)
      {
        if (k)
        {
          v32 = v32 + *(a1 + 56);
        }

        [*(a1 + 32) _delegateWidthForComponent:k ofCount:v28 withSizeLeft:v30];
        v32 = v32 + v35;
      }

      v31 = *(a1 + 32);
    }
  }

  else
  {
    v33 = floor((v30 - v32 - *(a1 + 56) * (v28 - 1)) / v28);
    v32 = v30;
  }

  [v31 _wheelShift];
  v37 = v36;
  [*(a1 + 32) _selectionBarSideInset];
  v39 = v38;
  v40 = ceil((v30 - v32) * 0.5);
  if (dyld_program_sdk_at_least())
  {
    if (v40 < -v39)
    {
      v40 = -v39;
    }
  }

  else if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = v4 + v29;
  if (v28 < 0)
  {
    v43 = 0.0;
  }

  else
  {
    v42 = 0;
    v43 = 0.0;
    do
    {
      [*(a1 + 32) _delegateRowHeightForComponent:v42];
      if (v44 > v43)
      {
        v43 = v44;
      }

      ++v42;
    }

    while (v28 + 1 != v42);
  }

  v45 = v41 + v40;
  v46 = *(*(a1 + 32) + 104);
  v47 = dyld_program_sdk_at_least();
  v142 = v16;
  if ((v46 & 0x400000) != 0)
  {
    [*(a1 + 32) _delegateWidthForComponent:0 ofCount:v28 withSizeLeft:v30];
    v49 = floor(v48);
    v50 = dyld_program_sdk_at_least();
    v51 = v30;
    if (v50)
    {
      [*(a1 + 32) bounds];
    }

    v45 = v51 - v45 - v49;
    if ((v47 & 1) == 0)
    {
      v45 = v45 - *(a1 + 56);
    }
  }

  v141 = v15;
  v52 = [*(a1 + 32) _style];
  v53 = [v52 highlightViewIsOverlay];

  if ((v53 & 1) == 0)
  {
    [*(a1 + 32) _addMagnifierForRowHeight:v43];
  }

  v149 = v28;
  if ((v28 & 0x8000000000000000) == 0 && v28)
  {
    v54 = 0;
    v55 = ((v46 & 0x400000) != 0) & v47;
    v56 = v10 + 75.0;
    v57 = *(a1 + 48);
    v58 = v30 - v57;
    v59 = v37 + v57;
    if ((((v46 & 0x400000) != 0) & v47) != 0)
    {
      v59 = -v59;
    }

    v60 = v45 + v59;
    do
    {
      if ((LOBYTE(v150.origin.x) & 0x80) != 0)
      {
        [*(a1 + 32) _delegateWidthForComponent:v54 ofCount:v149 withSizeLeft:v58];
        v33 = floor(v61);
      }

      if ((v46 & 0x400000) != 0)
      {
        v62 = v33;
        if (v28 != 1)
        {
          [*(a1 + 32) _delegateWidthForComponent:v54 + 1 ofCount:v149 withSizeLeft:v58 - v33];
          v62 = floor(v63);
        }

        v64 = v60 - v62;
      }

      else
      {
        v64 = v60 + v33;
      }

      v65 = v58 - v33;
      v66 = [*(a1 + 32) _createColumnWithTableFrame:v60 rowHeight:v144 + -37.5 paddingAroundWheels:{v33, v56, v43, *(a1 + 48)}];
      [v66 setAllowsMultipleSelection:(*(*(a1 + 32) + 472) >> 10) & 1];
      v67 = [*(a1 + 32) _contentView];
      [v67 addSubview:v66];

      ++v54;
      if (--v28)
      {
        v68 = 56;
      }

      else
      {
        v68 = 48;
      }

      v69 = *(a1 + v68);
      v70 = v37 + v69;
      if (v55)
      {
        v70 = -(v37 + v69);
      }

      v60 = v64 + v70;
      v58 = v65 - v69;
    }

    while (v28);
  }

  if ([*(*(a1 + 32) + 408) count])
  {
    [*(a1 + 32) bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = [*(*(a1 + 32) + 408) count];
    v80 = *(*(a1 + 32) + 408);
    v81 = v79 - 2;
    if (v79 == 2)
    {
      v140 = v76;
      v137 = v72;
      v139 = v74;
      if ((v46 & 0x400000) != 0)
      {
        v82 = [v80 lastObject];
        [*(*(a1 + 32) + 408) firstObject];
      }

      else
      {
        v82 = [v80 firstObject];
        [*(*(a1 + 32) + 408) lastObject];
      }
      v86 = ;
      [v82 _tableFrame];
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;
      [v86 _tableFrame];
      v150.origin.x = v166.origin.x;
      y = v166.origin.y;
      width = v166.size.width;
      rect = v166.size.height;
      MinX = CGRectGetMinX(v166);
      v167.origin.x = v88;
      v167.origin.y = v90;
      v167.size.width = v92;
      v167.size.height = v94;
      v97 = (MinX - CGRectGetMaxX(v167)) * 0.5;
      v168.origin.x = v88;
      v168.origin.y = v90;
      v168.size.width = v92;
      v168.size.height = v94;
      v98 = CGRectGetMinX(v168);
      v169.origin.x = v137;
      v169.origin.y = v139;
      v169.size.width = v140;
      v169.size.height = v78;
      [v82 setLeftHitTestExtension:v98 - CGRectGetMinX(v169)];
      [v82 setRightHitTestExtension:v97];
      [v86 setLeftHitTestExtension:v97];
      v170.origin.x = v137;
      v170.origin.y = v139;
      v170.size.width = v140;
      v170.size.height = v78;
      MaxX = CGRectGetMaxX(v170);
      x = v150.origin.x;
      v101 = y;
      v102 = width;
      v103 = rect;
    }

    else
    {
      if (v79 == 1)
      {
        v82 = [v80 firstObject];
        [v82 _tableFrame];
        v150.origin.x = v162.origin.x;
        v83 = v162.origin.y;
        v145 = v162.size.width;
        rect = v162.size.height;
        v84 = CGRectGetMinX(v162);
        v163.origin.x = v72;
        v163.origin.y = v74;
        v163.size.width = v76;
        v163.size.height = v78;
        [v82 setLeftHitTestExtension:v84 - CGRectGetMinX(v163)];
        v164.origin.x = v72;
        v164.origin.y = v74;
        v164.size.width = v76;
        v164.size.height = v78;
        v85 = CGRectGetMaxX(v164);
        v165.origin.x = v150.origin.x;
        v165.origin.y = v83;
        v165.size.width = v145;
        v165.size.height = rect;
        [v82 setRightHitTestExtension:v85 - CGRectGetMaxX(v165)];
LABEL_86:

        goto LABEL_87;
      }

      v138.size.height = v78;
      if ((v46 & 0x400000) != 0)
      {
        [v80 lastObject];
      }

      else
      {
        [v80 firstObject];
      }
      v104 = ;
      [v104 _tableFrame];
      v105 = v171.origin.x;
      v106 = v171.origin.y;
      v147 = v171.size.width;
      v150.origin.x = v171.size.height;
      v107 = CGRectGetMinX(v171);
      v138.origin.x = v72;
      v138.origin.y = v74;
      v172.origin.x = v72;
      v172.origin.y = v74;
      v138.size.width = v76;
      v172.size.width = v76;
      v172.size.height = v138.size.height;
      [v104 setLeftHitTestExtension:v107 - CGRectGetMinX(v172)];
      if (v79 < 3)
      {
        v82 = v104;
        v110 = v105;
        v111 = v106;
        v112 = v147;
        height = v150.origin.x;
      }

      else
      {
        v108 = 1;
        do
        {
          if ((v46 & 0x400000) != 0)
          {
            v109 = v81;
          }

          else
          {
            v109 = v108;
          }

          v82 = [*(*(a1 + 32) + 408) objectAtIndexedSubscript:v109];
          [v82 _tableFrame];
          v110 = v173.origin.x;
          v111 = v173.origin.y;
          v112 = v173.size.width;
          height = v173.size.height;
          v114 = CGRectGetMinX(v173);
          v174.origin.x = v105;
          v174.origin.y = v106;
          v174.size.width = v147;
          v174.size.height = v150.origin.x;
          v115 = (v114 - CGRectGetMaxX(v174)) * 0.5;
          [v104 setRightHitTestExtension:v115];
          [v82 setLeftHitTestExtension:v115];

          ++v108;
          v150.origin.x = height;
          v147 = v112;
          v106 = v111;
          v105 = v110;
          v104 = v82;
          --v81;
        }

        while (v81);
      }

      v116 = *(*(a1 + 32) + 408);
      if ((v46 & 0x400000) != 0)
      {
        [v116 firstObject];
      }

      else
      {
        [v116 lastObject];
      }
      v86 = ;
      [v86 _tableFrame];
      v150.origin.x = v175.origin.x;
      v117 = v175.origin.y;
      v118 = v175.size.width;
      v148 = v175.size.height;
      v119 = CGRectGetMinX(v175);
      v176.origin.x = v110;
      v176.origin.y = v111;
      v176.size.width = v112;
      v176.size.height = height;
      v120 = (v119 - CGRectGetMaxX(v176)) * 0.5;
      [v82 setRightHitTestExtension:v120];
      [v86 setLeftHitTestExtension:v120];
      MaxX = CGRectGetMaxX(v138);
      x = v150.origin.x;
      v101 = v117;
      v102 = v118;
      v103 = v148;
    }

    [v86 setRightHitTestExtension:MaxX - CGRectGetMaxX(*&x)];

    goto LABEL_86;
  }

LABEL_87:
  v152 = 0u;
  v153 = 0u;
  v150.size = 0u;
  v151 = 0u;
  v121 = *(*(a1 + 32) + 408);
  v122 = [v121 countByEnumeratingWithState:&v150.size objects:v158 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v151;
    do
    {
      for (m = 0; m != v123; ++m)
      {
        if (*v151 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = *(*&v150.size.height + 8 * m);
        v127 = *(a1 + 32);
        [v126 rowHeight];
        [v127 _selectionBarRectForHeight:?];
        [v126 setSelectionBarRect:?];
      }

      v123 = [v121 countByEnumeratingWithState:&v150.size objects:v158 count:16];
    }

    while (v123);
  }

  v128 = [*(a1 + 32) _style];
  v129 = [v128 highlightViewIsOverlay];

  if (v129)
  {
    [*(a1 + 32) _addMagnifierForRowHeight:v43];
  }

  v130 = v149;
  if ([*(*(a1 + 32) + 408) count])
  {
    v131 = 0;
    do
    {
      v132 = [*(*(a1 + 32) + 408) objectAtIndex:v131];
      [v132 reloadData];

      ++v131;
    }

    while (v131 < [*(*(a1 + 32) + 408) count]);
  }

  if (v142)
  {
    if (v149 >= v141)
    {
      v130 = v141;
    }

    if (v130 >= 1)
    {
      for (n = 0; n != v130; ++n)
      {
        v134 = [*(*(a1 + 32) + 408) objectAtIndex:n];
        [v134 selectRow:v142[n] animated:0 notify:0 updateChecked:{objc_msgSend(*(a1 + 32), "allowsMultipleSelection") ^ 1}];
      }
    }

    if (v142 != v160)
    {
      free(v142);
    }
  }

  else
  {
    [*(a1 + 32) _resetSelectionOfTables];
  }

  *(*(a1 + 32) + 472) = *(*(a1 + 32) + 472) & 0xFFFFEFFF | (((v143 >> 12) & 1) << 12);
  v135 = [*(*(a1 + 32) + 440) layer];
  [v135 addSublayer:*(*(a1 + 32) + 448)];
}

- (void)_resetSelectionOfTables
{
  v3 = [(UIPickerView *)self _delegateNumberOfComponents];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      if ([(UIPickerView *)self _delegateNumberOfRowsInComponent:i]>= 1 && (*(&self->_pickerViewFlags + 1) & 0x20) == 0)
      {
        v6 = [(NSMutableArray *)self->_tables objectAtIndex:i];
        [v6 selectRow:0 animated:0 notify:0];
      }
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIPickerView *)self _style];
  v9 = [v8 sizeIsValid:{width, height}];

  if ((v9 & 1) == 0)
  {
    [(UIPickerView *)self _sizeThatFits:width, height];
    v11 = v10;
    v13 = v12;
    v21.width = width;
    v21.height = height;
    v14 = NSStringFromCGSize(v21);
    v22.width = v11;
    v22.height = v13;
    v15 = NSStringFromCGSize(v22);
    NSLog(&cfstr_UipickerviewSe.isa, v14, v15);

    width = v11;
    height = v13;
  }

  [(UIView *)self frame];
  v17 = v16;
  v19 = v18;
  v20.receiver = self;
  v20.super_class = UIPickerView;
  [(UIView *)&v20 setFrame:x, y, width, height];
  if (v17 != width || v19 != height)
  {
    [(UIPickerView *)self _updateWithOldSize:v17 newSize:v19, width, height];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [objc_opt_class() sizeForMainScreenTraitsThatFits:{width, height}];
    width = v8;
    height = v9;
  }

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15.receiver = self;
  v15.super_class = UIPickerView;
  [(UIView *)&v15 setBounds:x, y, width, height];
  if (v11 != width || v13 != height)
  {
    [(UIPickerView *)self _updateWithOldSize:v11 newSize:v13, width, height];
  }
}

- (void)setDataSource:(id)dataSource
{
  objc_storeWeak(&self->_dataSource, dataSource);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = 32;
  }

  else
  {
    v4 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFDF | v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = 64;
  }

  else
  {
    v5 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFBF | v5);
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFEF | v6);
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFF7 | v7);
  if (objc_opt_respondsToSelector())
  {
    v8 = 128;
  }

  else
  {
    v8 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFF7F | v8);
  if (objc_opt_respondsToSelector())
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFEFF | v9);
  [(UIPickerView *)self setNeedsLayout];
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  objc_storeWeak(&self->_delegate, v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFDF | v5);
  if (objc_opt_respondsToSelector())
  {
    v6 = 64;
  }

  else
  {
    v6 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFBF | v6);
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFEF | v7);
  if (objc_opt_respondsToSelector())
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFF7 | v8);
  if (objc_opt_respondsToSelector())
  {
    v9 = 128;
  }

  else
  {
    v9 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFF7F | v9);
  if (objc_opt_respondsToSelector())
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFEFF | v10);
  if (objc_opt_respondsToSelector())
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFFD | v11);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFFFB | v13);

  [(UIPickerView *)self setNeedsLayout];
}

- (void)setShowsSelectionIndicator:(BOOL)showsSelectionIndicator
{
  if (((((*&self->_pickerViewFlags & 0x200) == 0) ^ showsSelectionIndicator) & 1) == 0)
  {
    if (showsSelectionIndicator)
    {
      v3 = 512;
    }

    else
    {
      v3 = 0;
    }

    self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFDFF | v3);
    [(UIPickerView *)self setNeedsLayout];
  }
}

- (void)_sendSelectionChangedForComponent:(int64_t)a3 notify:(BOOL)a4
{
  if ((*&self->_pickerViewFlags & 8) != 0 && a4)
  {
    v6 = [(UIPickerView *)self selectedRowInComponent:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pickerView:self didSelectRow:v6 inComponent:a3];
  }

  [(UIPickerView *)self _noteScrollingFinishedForComponent:a3, a4];
}

- (void)setAllowsMultipleSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFFBFF | v3);
  tables = self->_tables;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__UIPickerView_setAllowsMultipleSelection___block_invoke;
  v5[3] = &__block_descriptor_33_e15_v32__0_8Q16_B24l;
  v6 = a3;
  [(NSMutableArray *)tables enumerateObjectsUsingBlock:v5];
}

- (void)_sendSelectionChangedFromTable:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = [(UIPickerView *)self columnForTableView:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(UIPickerView *)self _sendSelectionChangedForComponent:v6 notify:v4];
  }
}

- (void)_setUsesCheckedSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFDFFF | v3);
}

- (void)_setDrawsBackground:(BOOL)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x4000;
  }

  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFBFFF | v4);
  if (a3)
  {
    v5 = +[UIColor clearColor];
    [(UIPickerView *)self setBackgroundColor:v5];
  }

  else
  {
    [(UIPickerView *)self setBackgroundColor:0];
  }

  [(UIPickerView *)self setNeedsLayout];
}

- (CGSize)_contentSizeForRow:(int64_t)a3 inComponent:(int64_t)a4
{
  if ([(UIPickerView *)self numberOfComponents]<= a4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1263 description:{@"Invalid parameter not satisfying: %@", @"component < [self numberOfComponents]"}];
  }

  if ([(UIPickerView *)self numberOfRowsInComponent:a4]<= a3)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1264 description:{@"Invalid parameter not satisfying: %@", @"row < [self numberOfRowsInComponent:component]"}];
  }

  v8 = [(UIPickerView *)self tableViewForColumn:a4];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  [v8 rectForRowAtIndexPath:v9];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (_NSRange)visibleRowsForColumn:(int)a3
{
  v3 = [(NSMutableArray *)self->_tables objectAtIndex:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _visibleGlobalRows];
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (NSInteger)selectedRowInComponent:(NSInteger)component
{
  if (*&self->_pickerViewFlags)
  {
    [(UIPickerView *)self layoutSubviews];
  }

  if ([(NSMutableArray *)self->_tables count]<= component)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1290 description:{@"Tried to fetch selected row in component %ld, but there are only %ld tables.", component, -[NSMutableArray count](self->_tables, "count")}];
  }

  v6 = [(NSMutableArray *)self->_tables objectAtIndex:component];
  v7 = [v6 selectionBarRow];

  return v7;
}

- (int64_t)columnForTableView:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_tables count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_tables objectAtIndex:v5];
      v7 = [v6 _containsTable:v4];

      if (v7)
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_tables count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = -1;
  }

  return v5;
}

- (id)tableViewForColumn:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_tables objectAtIndex:a3];
  v4 = [v3 _preferredTable];

  return v4;
}

- (CGRect)_effectiveTableViewFrameForColumn:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_tables objectAtIndex:a3];
  [v3 _tableFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_selectRow:(int64_t)a3 inComponent:(int64_t)a4 animated:(BOOL)a5 notify:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  pickerViewFlags = self->_pickerViewFlags;
  v12 = pickerViewFlags;
  if (!a5)
  {
    v12 = self->_pickerViewFlags;
    self->_pickerViewFlags = (*&pickerViewFlags | 0x1000);
  }

  if (v12)
  {
    [(UIPickerView *)self layoutSubviews];
  }

  v13 = [(NSMutableArray *)self->_tables objectAtIndex:a4];
  -[UIPickerView _sendSelectionChangedFromTable:notify:](self, "_sendSelectionChangedFromTable:notify:", v13, v6 & ~[v13 selectRow:a3 animated:v7 notify:v6]);
  self->_pickerViewFlags = (*&self->_pickerViewFlags & 0xFFFFEFFF | (((*&pickerViewFlags >> 12) & 1) << 12));
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(UIPickerView *)self columnForTableView:a3, a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1352 description:@"column should exist in tables array"];
  }

  return [(UIPickerView *)self _delegateNumberOfRowsInComponent:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPickerView *)self columnForTableView:v6];
  if ((*&self->_pickerViewFlags & 0x10) != 0)
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"UIPickerTableViewWrapperCell"];
    if (!v9)
    {
      v9 = [[UIPickerTableViewWrapperCell alloc] initWithStyle:0 reuseIdentifier:@"UIPickerTableViewWrapperCell"];
    }

    v14 = [(UIPickerTableViewWrapperCell *)v9 wrappedView];
    if (([v14 _canBeReusedInPickerView] & 1) == 0)
    {

      v14 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [WeakRetained pickerView:self viewForRow:objc_msgSend(v7 forComponent:"row") reusingView:{v8, v14}];

    [(UIPickerTableViewWrapperCell *)v9 setWrappedView:v16];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isRowChecked:{objc_msgSend(v7, "row")}])
    {
      [v16 setChecked:1];
    }

    goto LABEL_15;
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:@"UIPickerTableViewTitledCell"];
  if (!v9)
  {
    v10 = [UIPickerTableViewTitledCell alloc];
    v11 = [(UIPickerView *)self _textColor];
    v9 = [(UIPickerTableViewTitledCell *)v10 initWithStyle:0 reuseIdentifier:@"UIPickerTableViewTitledCell" textColor:v11 forceTextAlignmentCentered:[(UIPickerView *)self _forceTextAlignmentCentered]];
  }

  pickerViewFlags = self->_pickerViewFlags;
  if ((*&pickerViewFlags & 0x40) != 0)
  {
    v13 = -[UIPickerView _delegateAttributedTitleForRow:forComponent:](self, "_delegateAttributedTitleForRow:forComponent:", [v7 row], v8);
    if (v13)
    {
      v14 = v13;
      [(UIPickerTableViewWrapperCell *)v9 setAttributedTitle:v13];
LABEL_15:

      goto LABEL_20;
    }

    pickerViewFlags = self->_pickerViewFlags;
  }

  if ((*&pickerViewFlags & 0x20) != 0)
  {
    v17 = -[UIPickerView _delegateTitleForRow:forComponent:](self, "_delegateTitleForRow:forComponent:", [v7 row], v8);
    [(UIPickerTableViewWrapperCell *)v9 setTitle:v17];
  }

  else
  {
    [(UIPickerTableViewWrapperCell *)v9 setTitle:@"?"];
  }

LABEL_20:

  return v9;
}

- (void)_setHighlightColor:(id)a3
{
  [(UIView *)self _setInteractionTintColor:a3];

  [(UIPickerView *)self setNeedsLayout];
}

- (void)_setTextColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textColor, a3);
    [(UIPickerView *)self setNeedsLayout];
  }
}

- (void)_setTextShadowColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_textColor] & 1) == 0)
  {
    objc_storeStrong(&self->_textShadowColor, a3);
    [(UIPickerView *)self setNeedsLayout];
  }
}

- (CATransform3D)_perspectiveTransform
{
  v4 = [(UIPickerView *)self _style];
  if (v4)
  {
    v6 = v4;
    [v4 perspectiveTransform];
    v4 = v6;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)_willPlayClickSound
{
  v2 = [(UIPickerView *)self _scalarStatisticsForUserValueChangedEvent];
  [v2 incrementValueBy:1];
}

- (id)_scalarStatisticsForUserValueChangedEvent
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [_UIStatistics controlValueChangeEmittedCountWithCategory:@"picker" suffix:v3];

  return v4;
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x10) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIPickerView;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

+ (void)_prepareStyleStorageIfNecessary
{
  if (_prepareStyleStorageIfNecessary_once_0 != -1)
  {
    dispatch_once(&_prepareStyleStorageIfNecessary_once_0, &__block_literal_global_130_0);
  }
}

void __47__UIPickerView__prepareStyleStorageIfNecessary__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = __pickerViewIdiomsToStyles;
  __pickerViewIdiomsToStyles = v0;
}

+ (void)_registerStyle:(id)a3 forIdiom:(int64_t)a4
{
  v6 = a3;
  [a1 _prepareStyleStorageIfNecessary];
  v7 = __pickerViewIdiomsToStyles;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKey:v8];
}

+ (id)_styleForIdiom:(int64_t)a3
{
  [a1 _prepareStyleStorageIfNecessary];
  v4 = __pickerViewIdiomsToStyles;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(_UIPickerViewStyle_iOS);
  }

  v8 = v7;

  return v8;
}

- (_UIPickerViewStyle)_style
{
  style = self->_style;
  if (!style)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [v4 userInterfaceIdiom]);

    v6 = self->_style;
    self->_style = v5;

    style = self->_style;
  }

  return style;
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_performScrollTest:(id)a3 withIterations:(int64_t)a4 rowsToScroll:(int64_t)a5 inComponent:(int64_t)a6
{
  v11 = a3;
  if (self->_currentTestParameters)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1518 description:@"Picker Testing: Only one test may be run at a time"];
  }

  if ([(UIPickerView *)self numberOfComponents]<= a6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1519 description:@"Picker Testing: Component specified does not exist"];
  }

  v12 = [(UIPickerView *)self selectedRowInComponent:a6]+ a5 * a4;
  if (v12 >= [(UIPickerView *)self _delegateNumberOfRowsInComponent:a6])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"UIPickerView.m" lineNumber:1521 description:@"Picker Testing: Rows to scroll would go past the end of the component"];
  }

  v13 = objc_alloc_init(_UIPickerViewTestParameters);
  currentTestParameters = self->_currentTestParameters;
  self->_currentTestParameters = v13;

  v15 = self->_currentTestParameters;
  testName = v15->_testName;
  v15->_testName = v11;
  v17 = v11;

  self->_currentTestParameters->_remainingIterations = a4;
  self->_currentTestParameters->_rowsToScroll = a5;
  self->_currentTestParameters->_componentToScroll = a6;
  [UIApp startedTest:v17];

  [(UIPickerView *)self _iterateOnCurrentTest];
}

- (void)_iterateOnCurrentTest
{
  currentTestParameters = self->_currentTestParameters;
  if (currentTestParameters->_remainingIterations)
  {
    componentToScroll = currentTestParameters->_componentToScroll;
    v5 = self->_currentTestParameters->_rowsToScroll + [(UIPickerView *)self selectedRowInComponent:componentToScroll];

    [(UIPickerView *)self selectRow:v5 inComponent:componentToScroll animated:1];
  }

  else
  {

    [(UIPickerView *)self _completeCurrentTest];
  }
}

- (void)_completeCurrentTest
{
  currentTestParameters = self->_currentTestParameters;
  testName = currentTestParameters->_testName;
  self->_currentTestParameters = 0;
  v4 = testName;

  [UIApp finishedTest:v4];
}

- (void)_noteScrollingFinishedForComponent:(int64_t)a3
{
  currentTestParameters = self->_currentTestParameters;
  if (currentTestParameters)
  {
    if (currentTestParameters->_componentToScroll == a3)
    {
      --currentTestParameters->_remainingIterations;
      [(UIPickerView *)self _iterateOnCurrentTest];
    }
  }
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  _UnsupportedFlags_0 = _UnsupportedFlags_0 & 0xFB | v3;
}

@end