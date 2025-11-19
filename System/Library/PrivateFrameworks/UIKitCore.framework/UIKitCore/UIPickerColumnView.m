@interface UIPickerColumnView
- (BOOL)_containsTable:(id)a3;
- (BOOL)_pointLiesWithinEffectiveTableBounds:(CGPoint)a3;
- (BOOL)_soundsEnabled;
- (BOOL)_usesCheckSelection;
- (CATransform3D)_transformForTableWithPerspectiveTranslationX:(SEL)a3;
- (CATransform3D)_transformForTableWithTranslationX:(SEL)a3;
- (CATransform3D)perspectiveTransform;
- (CGRect)_defaultFocusRegionFrame;
- (CGRect)accessibilityFrame;
- (CGRect)selectionBarRect;
- (UIPickerColumnView)initWithFrame:(CGRect)a3 tableFrame:(CGRect)a4 middleBarHeight:(double)a5 rowHeight:(double)a6 paddingAroundWheels:(double)a7 pickerView:(id)a8 transform:(CATransform3D *)a9;
- (_NSRange)_visibleGlobalRows;
- (double)_horizontalBiasForEndTables;
- (id)_allVisibleCells;
- (id)_createContainerViewWithFrame:(CGRect)a3;
- (id)_createTableViewWithFrame:(CGRect)a3 containingFrame:(CGRect)a4;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_visibleCellClosestToPoint:(CGPoint)a3 inView:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_centerTableInContainer:(id)a3;
- (void)_moveTableViewIfNecessary:(id)a3 toContentOffset:(CGPoint)a4;
- (void)_pickerTableViewDidChangeContentOffset:(id)a3;
- (void)_sendCheckedRow:(int64_t)a3 inTableView:(id)a4 checked:(BOOL)a5;
- (void)beginUpdates;
- (void)endUpdates;
- (void)markAsNoLongerInUse;
- (void)pickerTableView:(id)a3 didChangeSelectionBarRowFrom:(int64_t)a4 to:(int64_t)a5;
- (void)reloadData;
- (void)setAllowsMultipleSelection:(BOOL)a3;
- (void)setPerspectiveTransform:(CATransform3D *)a3;
- (void)setRowHeight:(double)a3;
- (void)setSelectionBarRect:(CGRect)a3;
@end

@implementation UIPickerColumnView

- (id)_createTableViewWithFrame:(CGRect)a3 containingFrame:(CGRect)a4
{
  width = a4.size.width;
  x = a4.origin.x;
  height = a3.size.height;
  v7 = a3.size.width;
  middleBarHeight = self->_middleBarHeight;
  v10 = a4.origin.y + middleBarHeight * 0.5;
  v11 = a4.size.height + middleBarHeight;
  UIRoundToViewScale(self);
  v13 = v12;
  UIRoundToViewScale(self);
  v15 = [[UIPickerTableView alloc] initWithFrame:0 style:v13 visibleRect:v14, v7, height, x, v10, width, v11];
  [(UITableView *)v15 setDataSource:self];
  [(UITableView *)v15 setRowHeight:self->_rowHeight];
  [(UIScrollView *)v15 setShowsVerticalScrollIndicator:0];
  [(UIView *)v15 setClipsToBounds:0];
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v17 = [WeakRetained _style];
  [v17 columnContentEdgeInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(UITableView *)v15 _setSectionContentInset:v19, v21, v23, v25];
  return v15;
}

- (void)_centerTableInContainer:(id)a3
{
  v7 = a3;
  v3 = [v7 superview];
  [v3 center];
  v5 = v4;

  [v7 frame];
  [v7 setFrame:v5 + v6 * -0.5];
}

- (id)_createContainerViewWithFrame:(CGRect)a3
{
  v3 = [[UIView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)v3 setClipsToBounds:1];
  return v3;
}

- (CATransform3D)_transformForTableWithPerspectiveTranslationX:(SEL)a3
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CATransform3DMakeTranslation(retstr, a4, 0.0, 0.0);
  v6 = *&retstr->m33;
  *&a.m31 = *&retstr->m31;
  *&a.m33 = v6;
  v7 = *&retstr->m43;
  *&a.m41 = *&retstr->m41;
  *&a.m43 = v7;
  v8 = *&retstr->m13;
  *&a.m11 = *&retstr->m11;
  *&a.m13 = v8;
  v9 = *&retstr->m23;
  *&a.m21 = *&retstr->m21;
  *&a.m23 = v9;
  v10 = *&self->_perspectiveTransform.m33;
  *&v19.m31 = *&self->_perspectiveTransform.m31;
  *&v19.m33 = v10;
  v11 = *&self->_perspectiveTransform.m43;
  *&v19.m41 = *&self->_perspectiveTransform.m41;
  *&v19.m43 = v11;
  v12 = *&self->_perspectiveTransform.m13;
  *&v19.m11 = *&self->_perspectiveTransform.m11;
  *&v19.m13 = v12;
  v13 = *&self->_perspectiveTransform.m23;
  *&v19.m21 = *&self->_perspectiveTransform.m21;
  *&v19.m23 = v13;
  result = CATransform3DConcat(&v21, &a, &v19);
  v15 = *&v21.m33;
  *&retstr->m31 = *&v21.m31;
  *&retstr->m33 = v15;
  v16 = *&v21.m43;
  *&retstr->m41 = *&v21.m41;
  *&retstr->m43 = v16;
  v17 = *&v21.m13;
  *&retstr->m11 = *&v21.m11;
  *&retstr->m13 = v17;
  v18 = *&v21.m23;
  *&retstr->m21 = *&v21.m21;
  *&retstr->m23 = v18;
  return result;
}

- (CATransform3D)_transformForTableWithTranslationX:(SEL)a3
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  return CATransform3DMakeTranslation(retstr, a4, 0.0, 0.0);
}

- (UIPickerColumnView)initWithFrame:(CGRect)a3 tableFrame:(CGRect)a4 middleBarHeight:(double)a5 rowHeight:(double)a6 paddingAroundWheels:(double)a7 pickerView:(id)a8 transform:(CATransform3D *)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3.size.height;
  v15 = a3.size.width;
  v16 = a3.origin.y;
  v17 = a3.origin.x;
  v19 = a8;
  v62.receiver = self;
  v62.super_class = UIPickerColumnView;
  v20 = [(UIView *)&v62 initWithFrame:v17, v16, v15, v14];
  v21 = v20;
  if (v20)
  {
    v20->_middleBarHeight = a5;
    v20->_rowHeight = a6;
    v22 = objc_storeWeak(&v20->_pickerView, v19);
    v21->_tableFrame.origin.x = x;
    v21->_tableFrame.origin.y = y;
    v21->_tableFrame.size.width = width;
    v21->_tableFrame.size.height = height;
    v23 = *&a9->m23;
    v25 = *&a9->m11;
    v24 = *&a9->m13;
    *&v21->_perspectiveTransform.m21 = *&a9->m21;
    *&v21->_perspectiveTransform.m23 = v23;
    *&v21->_perspectiveTransform.m11 = v25;
    *&v21->_perspectiveTransform.m13 = v24;
    v26 = *&a9->m43;
    v28 = *&a9->m31;
    v27 = *&a9->m33;
    *&v21->_perspectiveTransform.m41 = *&a9->m41;
    *&v21->_perspectiveTransform.m43 = v26;
    *&v21->_perspectiveTransform.m31 = v28;
    *&v21->_perspectiveTransform.m33 = v27;
    v21->_paddingAroundWheels = a7;
    v29 = v14 * 0.5 - a5 * 0.5;
    v30 = v22;
    v31 = [v19 _magnifierEnabled];

    v60 = v29;
    if (v31)
    {
      v32 = [(UIPickerColumnView *)v21 _createContainerViewWithFrame:0.0, 0.0, v15, v29];
      topContainerView = v21->_topContainerView;
      v21->_topContainerView = v32;

      v34 = [(UIPickerColumnView *)v21 _createTableViewWithFrame:x containingFrame:y, width, height, 0.0, 0.0, v15, v29];
      topTable = v21->_topTable;
      v21->_topTable = v34;

      [(UIView *)v21->_topContainerView addSubview:v21->_topTable];
      [(UIPickerColumnView *)v21 _centerTableInContainer:v21->_topTable];
      v59 = v29 + 0.0;
      y = y - (v29 + 0.0);
      v14 = a5;
    }

    else
    {
      v59 = 0.0;
      v29 = 0.0;
    }

    v36 = [(UIPickerColumnView *)v21 _createContainerViewWithFrame:0.0, v29, v15, v14];
    middleContainerView = v21->_middleContainerView;
    v21->_middleContainerView = v36;

    v38 = [(UIPickerColumnView *)v21 _createTableViewWithFrame:x containingFrame:y, width, height, 0.0, v29, v15, v14];
    middleTable = v21->_middleTable;
    v21->_middleTable = v38;

    [(UIPickerTableView *)v21->_middleTable _setPlaysFeedback:1];
    [(UIView *)v21->_middleContainerView addSubview:v21->_middleTable];
    [(UIPickerColumnView *)v21 _centerTableInContainer:v21->_middleTable];
    WeakRetained = objc_loadWeakRetained(&v21->_pickerView);
    v41 = [WeakRetained _magnifierEnabled];

    if (v41)
    {
      v42 = [(UIPickerColumnView *)v21 _createContainerViewWithFrame:0.0, v59 + a5, v15, v60];
      bottomContainerView = v21->_bottomContainerView;
      v21->_bottomContainerView = v42;

      v44 = [(UIPickerColumnView *)v21 _createTableViewWithFrame:x containingFrame:y - a5, width, height, 0.0, v59 + a5, v15, v60];
      bottomTable = v21->_bottomTable;
      v21->_bottomTable = v44;

      [(UIView *)v21->_bottomContainerView addSubview:v21->_bottomTable];
      [(UIPickerColumnView *)v21 _centerTableInContainer:v21->_bottomTable];
      [(UIView *)v21 addSubview:v21->_topContainerView];
      [(UIView *)v21 addSubview:v21->_bottomContainerView];
    }

    [(UIView *)v21 addSubview:v21->_middleContainerView];
    [(UIView *)v21 center];
    v47 = v21->_paddingAroundWheels + width * 0.5 + x - v46;
    v48 = objc_loadWeakRetained(&v21->_pickerView);
    v49 = [v48 _magnifierEnabled];

    if (v49)
    {
      v50 = [(UIView *)v21->_topTable layer];
      [(UIPickerColumnView *)v21 _horizontalBiasForEndTables];
      [(UIPickerColumnView *)v21 _transformForTableWithPerspectiveTranslationX:v47 + v51];
      [v50 setSublayerTransform:v61];

      v52 = [(UIView *)v21->_bottomTable layer];
      [(UIPickerColumnView *)v21 _horizontalBiasForEndTables];
      [(UIPickerColumnView *)v21 _transformForTableWithPerspectiveTranslationX:v47 + v53];
      [v52 setSublayerTransform:v61];

      v54 = [(UIView *)v21->_middleTable layer];
      [(UIPickerColumnView *)v21 _transformForTableWithTranslationX:v47];
    }

    else
    {
      v54 = [(UIView *)v21->_middleTable layer];
      [(UIPickerColumnView *)v21 _transformForTableWithPerspectiveTranslationX:v47];
    }

    [v54 setSublayerTransform:v61];

    [(UIScrollView *)v21->_topTable setScrollEnabled:0];
    [(UIScrollView *)v21->_bottomTable setScrollEnabled:0];
    v55 = [(UIScrollView *)v21->_middleTable panGestureRecognizer];
    [(UIView *)v21 addGestureRecognizer:v55];

    v56 = [v19 _style];
    [v56 applyCustomizationsToColumn:v21];

    v57 = v21;
  }

  return v21;
}

- (BOOL)_containsTable:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_topTable] & 1) != 0 || (objc_msgSend(v4, "isEqual:", self->_middleTable))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:self->_bottomTable];
  }

  return v5;
}

- (BOOL)_pointLiesWithinEffectiveTableBounds:(CGPoint)a3
{
  leftHitTestExtension = self->_leftHitTestExtension;
  v6.origin.y = self->_tableFrame.origin.y;
  v6.size.height = self->_tableFrame.size.height;
  v6.origin.x = self->_tableFrame.origin.x - leftHitTestExtension;
  v6.size.width = self->_tableFrame.size.width + leftHitTestExtension + self->_rightHitTestExtension;
  return CGRectContainsPoint(v6, a3);
}

- (double)_horizontalBiasForEndTables
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v4 = [WeakRetained _style];
  [(UIView *)self frame];
  [v4 horizontalBiasForEndTablesWithColumnFrame:? tableFrame:?];
  v6 = v5;

  return v6;
}

- (void)setSelectionBarRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v9 = [WeakRetained _magnifierEnabled];

  if (v9)
  {
    [(UIPickerTableView *)self->_topTable setSelectionBarRect:x, y, width, height];
    [(UIPickerTableView *)self->_bottomTable setSelectionBarRect:x, y, width, height];
  }

  middleTable = self->_middleTable;

  [(UIPickerTableView *)middleTable setSelectionBarRect:x, y, width, height];
}

- (void)markAsNoLongerInUse
{
  [(UIPickerColumnView *)self setIsNoLongerInUse:1];

  [(UIPickerColumnView *)self reloadData];
}

- (CGRect)selectionBarRect
{
  [(UIPickerTableView *)self->_middleTable selectionBarRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_sendCheckedRow:(int64_t)a3 inTableView:(id)a4 checked:(BOOL)a5
{
  v7 = a4;
  if ([v7 isEqual:self->_middleTable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    [WeakRetained _sendSelectionChangedFromTable:v7 notify:1];
  }
}

- (BOOL)_soundsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v3 = [WeakRetained _soundsEnabled];

  return v3;
}

- (BOOL)_usesCheckSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v3 = [WeakRetained _usesCheckSelection];

  return v3;
}

- (void)setRowHeight:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v6 = [WeakRetained _magnifierEnabled];

  if (v6)
  {
    [(UITableView *)self->_topTable setRowHeight:a3];
    [(UITableView *)self->_bottomTable setRowHeight:a3];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable setRowHeight:a3];
}

- (void)reloadData
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v4 = [WeakRetained _magnifierEnabled];

  if (v4)
  {
    [(UITableView *)self->_topTable reloadData];
    [(UITableView *)self->_bottomTable reloadData];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable reloadData];
}

- (void)beginUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v4 = [WeakRetained _magnifierEnabled];

  if (v4)
  {
    [(UITableView *)self->_topTable beginUpdates];
    [(UITableView *)self->_bottomTable beginUpdates];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable beginUpdates];
}

- (void)endUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v4 = [WeakRetained _magnifierEnabled];

  if (v4)
  {
    [(UITableView *)self->_topTable endUpdates];
    [(UITableView *)self->_bottomTable endUpdates];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable endUpdates];
}

- (void)setAllowsMultipleSelection:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v6 = [WeakRetained _magnifierEnabled];

  if (v6)
  {
    [(UITableView *)self->_topTable setAllowsMultipleSelection:v3];
    [(UITableView *)self->_bottomTable setAllowsMultipleSelection:v3];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable setAllowsMultipleSelection:v3];
}

- (void)_moveTableViewIfNecessary:(id)a3 toContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [v9 contentOffset];
  if (v7 != x || v6 != y)
  {
    [v9 _setContentOffset:0 notify:{x, y}];
  }
}

- (void)_pickerTableViewDidChangeContentOffset:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  v5 = [WeakRetained _magnifierEnabled];

  if (v5)
  {
    [v10 contentOffset];
    v7 = v6;
    v9 = v8;
    if ([v10 isEqual:self->_topTable])
    {
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_middleTable toContentOffset:v7, v9];
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_bottomTable toContentOffset:v7, v9];
    }

    if ([v10 isEqual:self->_middleTable])
    {
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_topTable toContentOffset:v7, v9];
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_bottomTable toContentOffset:v7, v9];
    }

    if ([v10 isEqual:self->_bottomTable])
    {
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_topTable toContentOffset:v7, v9];
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_middleTable toContentOffset:v7, v9];
    }
  }
}

- (void)pickerTableView:(id)a3 didChangeSelectionBarRowFrom:(int64_t)a4 to:(int64_t)a5
{
  if ([a3 isEqual:self->_middleTable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_pickerView);
      [v10 pickerTableView:self->_middleTable didChangeSelectionBarRowFrom:a4 to:a5];
    }
  }
}

- (_NSRange)_visibleGlobalRows
{
  v2 = [(UITableView *)self->_middleTable _visibleGlobalRows];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)_allVisibleCells
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(UITableView *)self->_topTable visibleCells];
  v5 = [v3 setWithArray:v4];

  v6 = [(UITableView *)self->_middleTable visibleCells];
  [v5 addObjectsFromArray:v6];

  v7 = [(UITableView *)self->_bottomTable visibleCells];
  [v5 addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v5];

  return v8;
}

- (id)_visibleCellClosestToPoint:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(UIPickerColumnView *)self _allVisibleCells];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    v13 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        [v15 bounds];
        [v15 convertRect:v7 toView:?];
        UIDistanceBetweenPointAndRect(x, y, v16, v17, v18, v19);
        v21 = v20;
        if (!v11 || v13 >= v20)
        {
          v22 = v15;

          v13 = v21;
          v11 = v22;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if ([(UIPickerColumnView *)self isNoLongerInUse])
  {
    v7 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    v7 = [WeakRetained tableView:v6 numberOfRowsInSection:a4];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPickerColumnView *)self isNoLongerInUse])
  {
    v8 = [[UIPickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    v8 = [WeakRetained tableView:v6 cellForRowAtIndexPath:v7];

    if ([v6 isEqual:self->_middleTable])
    {
      v10 = objc_loadWeakRetained(&self->_pickerView);
      v11 = [v10 _magnifierEnabled];
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_loadWeakRetained(&self->_pickerView);
    -[UIPickerTableViewCell _setIsCenterCell:shouldModifyAlphaOfView:](v8, "_setIsCenterCell:shouldModifyAlphaOfView:", v11, [v12 _magnifierEnabled]);
  }

  return v8;
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x10) != 0)
  {
    v6 = _UIFocusNearestAncestorEnvironmentScrollableContainer(self, 1);
    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v5 = _UIFocusGroupIdentifierForInstance(self);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPickerColumnView;
    v5 = [(UIView *)&v8 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (CGRect)_defaultFocusRegionFrame
{
  x = self->_tableFrame.origin.x;
  y = self->_tableFrame.origin.y;
  width = self->_tableFrame.size.width;
  height = self->_tableFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)accessibilityFrame
{
  x = self->_tableFrame.origin.x;
  y = self->_tableFrame.origin.y;
  width = self->_tableFrame.size.width;
  height = self->_tableFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CATransform3D)perspectiveTransform
{
  v3 = *&self[4].m34;
  *&retstr->m31 = *&self[4].m32;
  *&retstr->m33 = v3;
  v4 = *&self[4].m44;
  *&retstr->m41 = *&self[4].m42;
  *&retstr->m43 = v4;
  v5 = *&self[4].m14;
  *&retstr->m11 = *&self[4].m12;
  *&retstr->m13 = v5;
  v6 = *&self[4].m24;
  *&retstr->m21 = *&self[4].m22;
  *&retstr->m23 = v6;
  return self;
}

- (void)setPerspectiveTransform:(CATransform3D *)a3
{
  v3 = *&a3->m23;
  v5 = *&a3->m11;
  v4 = *&a3->m13;
  *&self->_perspectiveTransform.m21 = *&a3->m21;
  *&self->_perspectiveTransform.m23 = v3;
  *&self->_perspectiveTransform.m11 = v5;
  *&self->_perspectiveTransform.m13 = v4;
  v6 = *&a3->m43;
  v8 = *&a3->m31;
  v7 = *&a3->m33;
  *&self->_perspectiveTransform.m41 = *&a3->m41;
  *&self->_perspectiveTransform.m43 = v6;
  *&self->_perspectiveTransform.m31 = v8;
  *&self->_perspectiveTransform.m33 = v7;
}

@end