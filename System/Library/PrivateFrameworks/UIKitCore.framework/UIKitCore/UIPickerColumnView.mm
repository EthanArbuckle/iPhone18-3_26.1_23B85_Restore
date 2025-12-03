@interface UIPickerColumnView
- (BOOL)_containsTable:(id)table;
- (BOOL)_pointLiesWithinEffectiveTableBounds:(CGPoint)bounds;
- (BOOL)_soundsEnabled;
- (BOOL)_usesCheckSelection;
- (CATransform3D)_transformForTableWithPerspectiveTranslationX:(SEL)x;
- (CATransform3D)_transformForTableWithTranslationX:(SEL)x;
- (CATransform3D)perspectiveTransform;
- (CGRect)_defaultFocusRegionFrame;
- (CGRect)accessibilityFrame;
- (CGRect)selectionBarRect;
- (UIPickerColumnView)initWithFrame:(CGRect)frame tableFrame:(CGRect)tableFrame middleBarHeight:(double)height rowHeight:(double)rowHeight paddingAroundWheels:(double)wheels pickerView:(id)view transform:(CATransform3D *)transform;
- (_NSRange)_visibleGlobalRows;
- (double)_horizontalBiasForEndTables;
- (id)_allVisibleCells;
- (id)_createContainerViewWithFrame:(CGRect)frame;
- (id)_createTableViewWithFrame:(CGRect)frame containingFrame:(CGRect)containingFrame;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_visibleCellClosestToPoint:(CGPoint)point inView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_centerTableInContainer:(id)container;
- (void)_moveTableViewIfNecessary:(id)necessary toContentOffset:(CGPoint)offset;
- (void)_pickerTableViewDidChangeContentOffset:(id)offset;
- (void)_sendCheckedRow:(int64_t)row inTableView:(id)view checked:(BOOL)checked;
- (void)beginUpdates;
- (void)endUpdates;
- (void)markAsNoLongerInUse;
- (void)pickerTableView:(id)view didChangeSelectionBarRowFrom:(int64_t)from to:(int64_t)to;
- (void)reloadData;
- (void)setAllowsMultipleSelection:(BOOL)selection;
- (void)setPerspectiveTransform:(CATransform3D *)transform;
- (void)setRowHeight:(double)height;
- (void)setSelectionBarRect:(CGRect)rect;
@end

@implementation UIPickerColumnView

- (id)_createTableViewWithFrame:(CGRect)frame containingFrame:(CGRect)containingFrame
{
  width = containingFrame.size.width;
  x = containingFrame.origin.x;
  height = frame.size.height;
  v7 = frame.size.width;
  middleBarHeight = self->_middleBarHeight;
  v10 = containingFrame.origin.y + middleBarHeight * 0.5;
  v11 = containingFrame.size.height + middleBarHeight;
  UIRoundToViewScale(self);
  v13 = v12;
  UIRoundToViewScale(self);
  v15 = [[UIPickerTableView alloc] initWithFrame:0 style:v13 visibleRect:v14, v7, height, x, v10, width, v11];
  [(UITableView *)v15 setDataSource:self];
  [(UITableView *)v15 setRowHeight:self->_rowHeight];
  [(UIScrollView *)v15 setShowsVerticalScrollIndicator:0];
  [(UIView *)v15 setClipsToBounds:0];
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _style = [WeakRetained _style];
  [_style columnContentEdgeInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(UITableView *)v15 _setSectionContentInset:v19, v21, v23, v25];
  return v15;
}

- (void)_centerTableInContainer:(id)container
{
  containerCopy = container;
  superview = [containerCopy superview];
  [superview center];
  v5 = v4;

  [containerCopy frame];
  [containerCopy setFrame:v5 + v6 * -0.5];
}

- (id)_createContainerViewWithFrame:(CGRect)frame
{
  v3 = [[UIView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)v3 setClipsToBounds:1];
  return v3;
}

- (CATransform3D)_transformForTableWithPerspectiveTranslationX:(SEL)x
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

- (CATransform3D)_transformForTableWithTranslationX:(SEL)x
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

- (UIPickerColumnView)initWithFrame:(CGRect)frame tableFrame:(CGRect)tableFrame middleBarHeight:(double)height rowHeight:(double)rowHeight paddingAroundWheels:(double)wheels pickerView:(id)view transform:(CATransform3D *)transform
{
  height = tableFrame.size.height;
  width = tableFrame.size.width;
  y = tableFrame.origin.y;
  x = tableFrame.origin.x;
  heightCopy = frame.size.height;
  v15 = frame.size.width;
  v16 = frame.origin.y;
  v17 = frame.origin.x;
  viewCopy = view;
  v62.receiver = self;
  v62.super_class = UIPickerColumnView;
  heightCopy = [(UIView *)&v62 initWithFrame:v17, v16, v15, heightCopy];
  v21 = heightCopy;
  if (heightCopy)
  {
    heightCopy->_middleBarHeight = height;
    heightCopy->_rowHeight = rowHeight;
    v22 = objc_storeWeak(&heightCopy->_pickerView, viewCopy);
    v21->_tableFrame.origin.x = x;
    v21->_tableFrame.origin.y = y;
    v21->_tableFrame.size.width = width;
    v21->_tableFrame.size.height = height;
    v23 = *&transform->m23;
    v25 = *&transform->m11;
    v24 = *&transform->m13;
    *&v21->_perspectiveTransform.m21 = *&transform->m21;
    *&v21->_perspectiveTransform.m23 = v23;
    *&v21->_perspectiveTransform.m11 = v25;
    *&v21->_perspectiveTransform.m13 = v24;
    v26 = *&transform->m43;
    v28 = *&transform->m31;
    v27 = *&transform->m33;
    *&v21->_perspectiveTransform.m41 = *&transform->m41;
    *&v21->_perspectiveTransform.m43 = v26;
    *&v21->_perspectiveTransform.m31 = v28;
    *&v21->_perspectiveTransform.m33 = v27;
    v21->_paddingAroundWheels = wheels;
    v29 = heightCopy * 0.5 - height * 0.5;
    v30 = v22;
    _magnifierEnabled = [viewCopy _magnifierEnabled];

    v60 = v29;
    if (_magnifierEnabled)
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
      heightCopy = height;
    }

    else
    {
      v59 = 0.0;
      v29 = 0.0;
    }

    heightCopy2 = [(UIPickerColumnView *)v21 _createContainerViewWithFrame:0.0, v29, v15, heightCopy];
    middleContainerView = v21->_middleContainerView;
    v21->_middleContainerView = heightCopy2;

    heightCopy3 = [(UIPickerColumnView *)v21 _createTableViewWithFrame:x containingFrame:y, width, height, 0.0, v29, v15, heightCopy];
    middleTable = v21->_middleTable;
    v21->_middleTable = heightCopy3;

    [(UIPickerTableView *)v21->_middleTable _setPlaysFeedback:1];
    [(UIView *)v21->_middleContainerView addSubview:v21->_middleTable];
    [(UIPickerColumnView *)v21 _centerTableInContainer:v21->_middleTable];
    WeakRetained = objc_loadWeakRetained(&v21->_pickerView);
    _magnifierEnabled2 = [WeakRetained _magnifierEnabled];

    if (_magnifierEnabled2)
    {
      v42 = [(UIPickerColumnView *)v21 _createContainerViewWithFrame:0.0, v59 + height, v15, v60];
      bottomContainerView = v21->_bottomContainerView;
      v21->_bottomContainerView = v42;

      v44 = [(UIPickerColumnView *)v21 _createTableViewWithFrame:x containingFrame:y - height, width, height, 0.0, v59 + height, v15, v60];
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
    _magnifierEnabled3 = [v48 _magnifierEnabled];

    if (_magnifierEnabled3)
    {
      layer = [(UIView *)v21->_topTable layer];
      [(UIPickerColumnView *)v21 _horizontalBiasForEndTables];
      [(UIPickerColumnView *)v21 _transformForTableWithPerspectiveTranslationX:v47 + v51];
      [layer setSublayerTransform:v61];

      layer2 = [(UIView *)v21->_bottomTable layer];
      [(UIPickerColumnView *)v21 _horizontalBiasForEndTables];
      [(UIPickerColumnView *)v21 _transformForTableWithPerspectiveTranslationX:v47 + v53];
      [layer2 setSublayerTransform:v61];

      layer3 = [(UIView *)v21->_middleTable layer];
      [(UIPickerColumnView *)v21 _transformForTableWithTranslationX:v47];
    }

    else
    {
      layer3 = [(UIView *)v21->_middleTable layer];
      [(UIPickerColumnView *)v21 _transformForTableWithPerspectiveTranslationX:v47];
    }

    [layer3 setSublayerTransform:v61];

    [(UIScrollView *)v21->_topTable setScrollEnabled:0];
    [(UIScrollView *)v21->_bottomTable setScrollEnabled:0];
    panGestureRecognizer = [(UIScrollView *)v21->_middleTable panGestureRecognizer];
    [(UIView *)v21 addGestureRecognizer:panGestureRecognizer];

    _style = [viewCopy _style];
    [_style applyCustomizationsToColumn:v21];

    v57 = v21;
  }

  return v21;
}

- (BOOL)_containsTable:(id)table
{
  tableCopy = table;
  if ([tableCopy isEqual:self->_topTable] & 1) != 0 || (objc_msgSend(tableCopy, "isEqual:", self->_middleTable))
  {
    v5 = 1;
  }

  else
  {
    v5 = [tableCopy isEqual:self->_bottomTable];
  }

  return v5;
}

- (BOOL)_pointLiesWithinEffectiveTableBounds:(CGPoint)bounds
{
  leftHitTestExtension = self->_leftHitTestExtension;
  v6.origin.y = self->_tableFrame.origin.y;
  v6.size.height = self->_tableFrame.size.height;
  v6.origin.x = self->_tableFrame.origin.x - leftHitTestExtension;
  v6.size.width = self->_tableFrame.size.width + leftHitTestExtension + self->_rightHitTestExtension;
  return CGRectContainsPoint(v6, bounds);
}

- (double)_horizontalBiasForEndTables
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _style = [WeakRetained _style];
  [(UIView *)self frame];
  [_style horizontalBiasForEndTablesWithColumnFrame:? tableFrame:?];
  v6 = v5;

  return v6;
}

- (void)setSelectionBarRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
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

- (void)_sendCheckedRow:(int64_t)row inTableView:(id)view checked:(BOOL)checked
{
  viewCopy = view;
  if ([viewCopy isEqual:self->_middleTable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    [WeakRetained _sendSelectionChangedFromTable:viewCopy notify:1];
  }
}

- (BOOL)_soundsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _soundsEnabled = [WeakRetained _soundsEnabled];

  return _soundsEnabled;
}

- (BOOL)_usesCheckSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _usesCheckSelection = [WeakRetained _usesCheckSelection];

  return _usesCheckSelection;
}

- (void)setRowHeight:(double)height
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
  {
    [(UITableView *)self->_topTable setRowHeight:height];
    [(UITableView *)self->_bottomTable setRowHeight:height];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable setRowHeight:height];
}

- (void)reloadData
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
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
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
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
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
  {
    [(UITableView *)self->_topTable endUpdates];
    [(UITableView *)self->_bottomTable endUpdates];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable endUpdates];
}

- (void)setAllowsMultipleSelection:(BOOL)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
  {
    [(UITableView *)self->_topTable setAllowsMultipleSelection:selectionCopy];
    [(UITableView *)self->_bottomTable setAllowsMultipleSelection:selectionCopy];
  }

  middleTable = self->_middleTable;

  [(UITableView *)middleTable setAllowsMultipleSelection:selectionCopy];
}

- (void)_moveTableViewIfNecessary:(id)necessary toContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  necessaryCopy = necessary;
  [necessaryCopy contentOffset];
  if (v7 != x || v6 != y)
  {
    [necessaryCopy _setContentOffset:0 notify:{x, y}];
  }
}

- (void)_pickerTableViewDidChangeContentOffset:(id)offset
{
  offsetCopy = offset;
  WeakRetained = objc_loadWeakRetained(&self->_pickerView);
  _magnifierEnabled = [WeakRetained _magnifierEnabled];

  if (_magnifierEnabled)
  {
    [offsetCopy contentOffset];
    v7 = v6;
    v9 = v8;
    if ([offsetCopy isEqual:self->_topTable])
    {
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_middleTable toContentOffset:v7, v9];
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_bottomTable toContentOffset:v7, v9];
    }

    if ([offsetCopy isEqual:self->_middleTable])
    {
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_topTable toContentOffset:v7, v9];
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_bottomTable toContentOffset:v7, v9];
    }

    if ([offsetCopy isEqual:self->_bottomTable])
    {
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_topTable toContentOffset:v7, v9];
      [(UIPickerColumnView *)self _moveTableViewIfNecessary:self->_middleTable toContentOffset:v7, v9];
    }
  }
}

- (void)pickerTableView:(id)view didChangeSelectionBarRowFrom:(int64_t)from to:(int64_t)to
{
  if ([view isEqual:self->_middleTable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_pickerView);
      [v10 pickerTableView:self->_middleTable didChangeSelectionBarRowFrom:from to:to];
    }
  }
}

- (_NSRange)_visibleGlobalRows
{
  _visibleGlobalRows = [(UITableView *)self->_middleTable _visibleGlobalRows];
  result.length = v3;
  result.location = _visibleGlobalRows;
  return result;
}

- (id)_allVisibleCells
{
  v3 = MEMORY[0x1E695DFA8];
  visibleCells = [(UITableView *)self->_topTable visibleCells];
  v5 = [v3 setWithArray:visibleCells];

  visibleCells2 = [(UITableView *)self->_middleTable visibleCells];
  [v5 addObjectsFromArray:visibleCells2];

  visibleCells3 = [(UITableView *)self->_bottomTable visibleCells];
  [v5 addObjectsFromArray:visibleCells3];

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v5];

  return v8;
}

- (id)_visibleCellClosestToPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  _allVisibleCells = [(UIPickerColumnView *)self _allVisibleCells];
  v9 = [_allVisibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(_allVisibleCells);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        [v15 bounds];
        [v15 convertRect:viewCopy toView:?];
        UIDistanceBetweenPointAndRect(x, y, v16, v17, v18, v19);
        v21 = v20;
        if (!v11 || v13 >= v20)
        {
          v22 = v15;

          v13 = v21;
          v11 = v22;
        }
      }

      v10 = [_allVisibleCells countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(UIPickerColumnView *)self isNoLongerInUse])
  {
    v7 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    v7 = [WeakRetained tableView:viewCopy numberOfRowsInSection:section];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(UIPickerColumnView *)self isNoLongerInUse])
  {
    v8 = [[UIPickerTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pickerView);
    v8 = [WeakRetained tableView:viewCopy cellForRowAtIndexPath:pathCopy];

    if ([viewCopy isEqual:self->_middleTable])
    {
      v10 = objc_loadWeakRetained(&self->_pickerView);
      _magnifierEnabled = [v10 _magnifierEnabled];
    }

    else
    {
      _magnifierEnabled = 0;
    }

    v12 = objc_loadWeakRetained(&self->_pickerView);
    -[UIPickerTableViewCell _setIsCenterCell:shouldModifyAlphaOfView:](v8, "_setIsCenterCell:shouldModifyAlphaOfView:", _magnifierEnabled, [v12 _magnifierEnabled]);
  }

  return v8;
}

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x10) != 0)
  {
    v6 = _UIFocusNearestAncestorEnvironmentScrollableContainer(self, 1);
    if (v6)
    {
      _systemDefaultFocusGroupIdentifier = 0;
    }

    else
    {
      _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIPickerColumnView;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v8 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
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

- (void)setPerspectiveTransform:(CATransform3D *)transform
{
  v3 = *&transform->m23;
  v5 = *&transform->m11;
  v4 = *&transform->m13;
  *&self->_perspectiveTransform.m21 = *&transform->m21;
  *&self->_perspectiveTransform.m23 = v3;
  *&self->_perspectiveTransform.m11 = v5;
  *&self->_perspectiveTransform.m13 = v4;
  v6 = *&transform->m43;
  v8 = *&transform->m31;
  v7 = *&transform->m33;
  *&self->_perspectiveTransform.m41 = *&transform->m41;
  *&self->_perspectiveTransform.m43 = v6;
  *&self->_perspectiveTransform.m31 = v8;
  *&self->_perspectiveTransform.m33 = v7;
}

@end