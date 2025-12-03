@interface _UIButtonBarItemLayout
- (BOOL)_shouldBeDirty;
- (BOOL)shouldHorizontallyCenterView:(id)view;
- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)metrics;
- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)metrics barButtonItem:(id)item;
- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)width;
- (id)description;
- (void)_addConstraintsToActivate:(id)activate toDeactivate:(id)deactivate;
- (void)_addLayoutViews:(id)views;
- (void)_configure;
- (void)_updateCustomView;
- (void)_updateItemView;
- (void)_updateItemViewSizing;
- (void)dirtyLayoutForPlainAppearanceChange:(BOOL)change doneAppearanceChanged:(BOOL)changed;
- (void)setUseGroupSizing:(BOOL)sizing;
@end

@implementation _UIButtonBarItemLayout

- (void)_configure
{
  [(_UIButtonBarItemLayout *)self _updateItemView];
  [(UIBarButtonItem *)self->_item setView:self->_itemView];
  if (!self->_itemView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarLayout.m" lineNumber:555 description:@"cannot configure an item layout for a nil view"];
  }

  [(_UIButtonBarItemLayout *)self _updateItemViewSizing];
  if (self->_useGroupSizing && !self->_groupSameSize)
  {
    widthAnchor = [(UIView *)self->_itemView widthAnchor];
    groupSizeGuide = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics groupSizeGuide];
    v6 = [widthAnchor constraintEqualToAnchor:groupSizeGuide];
    groupSameSize = self->_groupSameSize;
    self->_groupSameSize = v6;

    LODWORD(v8) = 1143111680;
    [(NSLayoutConstraint *)self->_groupSameSize setPriority:v8];
  }

  [(NSLayoutConstraint *)self->_requestedSize setIdentifier:@"UIButtonBar.requestedSize"];
  [(NSLayoutConstraint *)self->_maximumAlignmentSize setIdentifier:@"UIButtonBar.maximumAlignmentSize"];
  v9 = self->_groupSameSize;

  [(NSLayoutConstraint *)v9 setIdentifier:@"UIButtonBar.groupSize"];
}

- (void)_updateItemView
{
  obj = (*(self->_itemViewGenerator + 2))();
  if (obj != self->_itemView)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = array;
    if (self->_requestedSize)
    {
      [array addObject:?];
    }

    if (self->_maximumAlignmentSize)
    {
      [v4 addObject:?];
    }

    if (self->_groupSameSize)
    {
      [v4 addObject:?];
    }

    if (self->_popoverGuideLeading)
    {
      [v4 addObject:?];
    }

    if (self->_popoverGuideTrailing)
    {
      [v4 addObject:?];
    }

    [MEMORY[0x1E69977A0] deactivateConstraints:v4];
    requestedSize = self->_requestedSize;
    self->_requestedSize = 0;

    maximumAlignmentSize = self->_maximumAlignmentSize;
    self->_maximumAlignmentSize = 0;

    groupSameSize = self->_groupSameSize;
    self->_groupSameSize = 0;

    popoverGuideLeading = self->_popoverGuideLeading;
    self->_popoverGuideLeading = 0;

    popoverGuideTrailing = self->_popoverGuideTrailing;
    self->_popoverGuideTrailing = 0;

    objc_storeStrong(&self->_itemView, obj);
  }

  if ([(UIBarButtonItem *)self->_item isCustomViewItem])
  {
    [(_UIButtonBarItemLayout *)self _updateCustomView];
    [(_UIButtonBarItemLayout *)self _updateItemViewSizing];
  }

  else
  {
    itemViewWrapper = self->_itemViewWrapper;
    self->_itemViewWrapper = 0;
  }
}

- (void)_updateItemViewSizing
{
  itemViewWrapper = self->_itemViewWrapper;
  if (!itemViewWrapper)
  {
    itemViewWrapper = self->_itemView;
  }

  v18 = itemViewWrapper;
  [(UIBarButtonItem *)self->_item _width];
  v5 = fmax(v4, 0.0);
  requestedSize = self->_requestedSize;
  if (!requestedSize || ([(NSLayoutConstraint *)requestedSize firstItem], v7 = objc_claimAutoreleasedReturnValue(), v7, requestedSize = self->_requestedSize, v18 != v7))
  {
    [(NSLayoutConstraint *)requestedSize setActive:0];
    widthAnchor = [(UIView *)v18 widthAnchor];
    v9 = [widthAnchor constraintEqualToConstant:v5];
    v10 = self->_requestedSize;
    self->_requestedSize = v9;

    [(UIView *)v18 _setWantsAutolayout];
    LODWORD(v11) = 1143930880;
    [(NSLayoutConstraint *)self->_requestedSize setPriority:v11];
LABEL_6:
    v12 = v18;
    goto LABEL_7;
  }

  [(NSLayoutConstraint *)requestedSize constant];
  v12 = v18;
  if (vabdd_f64(v17, v5) > 2.22044605e-16)
  {
    [(NSLayoutConstraint *)self->_requestedSize setConstant:v5];
    goto LABEL_6;
  }

LABEL_7:
  heightAnchor = [(UIView *)v12 heightAnchor];
  if ((![(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics allowsViewWrappers]|| ![(UIBarButtonItem *)self->_item isCustomViewItem]) && !self->_maximumAlignmentSize)
  {
    verticalSizeGuide = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics verticalSizeGuide];
    v15 = [heightAnchor constraintEqualToAnchor:verticalSizeGuide];
    maximumAlignmentSize = self->_maximumAlignmentSize;
    self->_maximumAlignmentSize = v15;
  }
}

- (BOOL)_shouldBeDirty
{
  selfCopy = self;
  view = [(UIBarButtonItem *)self->_item view];
  LOBYTE(selfCopy) = view != selfCopy->_itemView;

  return selfCopy;
}

- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)metrics
{
  [(_UIButtonBarItemLayout *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)metrics barButtonItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = _UIButtonBarItemLayout;
  v8 = [(_UIButtonBarLayout *)&v13 initWithLayoutMetrics:metrics];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, item);
    view = [(UIBarButtonItem *)v9->_item view];
    itemView = v9->_itemView;
    v9->_itemView = view;
  }

  return v9;
}

- (void)dirtyLayoutForPlainAppearanceChange:(BOOL)change doneAppearanceChanged:(BOOL)changed
{
  changedCopy = changed;
  style = [(UIBarButtonItem *)self->_item style];
  if (style)
  {
    changeCopy = 0;
  }

  else
  {
    changeCopy = change;
  }

  v9 = style == UIBarButtonItemStyleDone && changedCopy;
  if (changeCopy || v9)
  {

    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (BOOL)shouldHorizontallyCenterView:(id)view
{
  itemViewWrapper = self->_itemViewWrapper;
  if (!itemViewWrapper)
  {
    itemViewWrapper = self->_itemView;
  }

  return itemViewWrapper == view && [(UIBarButtonItem *)self->_item _wantsThreeUp];
}

- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)width
{
  [(_UIButtonBarItemLayout *)self _updateItemView];
  itemViewWrapper = self->_itemViewWrapper;
  if (!itemViewWrapper)
  {
    itemViewWrapper = self->_itemView;
  }

  v5 = itemViewWrapper;
  [(UIView *)v5 _widthForButtonBarItemLayout];
  v7 = v6;
  [(UIBarButtonItem *)self->_item _width];
  v9 = v8;

  if (v9 >= v7)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

- (void)setUseGroupSizing:(BOOL)sizing
{
  if (self->_useGroupSizing != sizing)
  {
    self->_useGroupSizing = sizing;
    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (void)_updateCustomView
{
  if ([(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics allowsViewWrappers]&& [_UITAMICAdaptorView shouldWrapView:self->_itemView])
  {
    view = [(_UITAMICAdaptorView *)self->_itemViewWrapper view];
    itemView = self->_itemView;
    if (view == itemView)
    {
      superview = [(UIView *)itemView superview];
      itemViewWrapper = self->_itemViewWrapper;

      if (superview == itemViewWrapper)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v8 = self->_itemViewWrapper;
    self->_itemViewWrapper = 0;

LABEL_10:
    if (!self->_itemViewWrapper)
    {
      v9 = [[_UITAMICAdaptorView alloc] initWithView:self->_itemView];
      v10 = self->_itemViewWrapper;
      self->_itemViewWrapper = v9;

      [(_UIButtonBarLayout *)self setDirty:1];
    }

    return;
  }

  [(_UIButtonBarLayout *)self setDirty:self->_itemViewWrapper != 0];
  v5 = self->_itemViewWrapper;
  self->_itemViewWrapper = 0;
}

- (void)_addLayoutViews:(id)views
{
  itemViewWrapper = self->_itemViewWrapper;
  if (!itemViewWrapper)
  {
    itemViewWrapper = self->_itemView;
  }

  [views addObject:itemViewWrapper];
}

- (void)_addConstraintsToActivate:(id)activate toDeactivate:(id)deactivate
{
  activateCopy = activate;
  deactivateCopy = deactivate;
  [(UIBarButtonItem *)self->_item _width];
  v8 = v7;
  v9 = activateCopy;
  if (v7 <= 0.0)
  {
    if (![(UIBarButtonItem *)self->_item isCustomViewItem]|| (v10 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics allowsViewWrappers], v9 = activateCopy, (v10 & 1) == 0))
    {
      v9 = deactivateCopy;
    }
  }

  [v9 addObject:self->_requestedSize];
  if (self->_maximumAlignmentSize)
  {
    [activateCopy addObject:?];
  }

  if (v8 <= 0.0 && self->_useGroupSizing && ![(UIBarButtonItem *)self->_item isCustomViewItem])
  {
    groupSameSize = self->_groupSameSize;
    v12 = activateCopy;
  }

  else
  {
    groupSameSize = self->_groupSameSize;
    if (!groupSameSize)
    {
      goto LABEL_14;
    }

    v12 = deactivateCopy;
  }

  [v12 addObject:groupSameSize];
LABEL_14:
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIButtonBarItemLayout;
  v3 = [(_UIButtonBarLayout *)&v8 description];
  v4 = [v3 mutableCopy];

  if (self->_groupSameSize)
  {
    [v4 appendString:@" usesGroupSizing"];
  }

  item = self->_item;
  view = [(UIBarButtonItem *)item view];
  [v4 appendFormat:@" item=%p view=%p requestedSize=%p maximumAlignmentSize=%p groupSameSize=%p", item, view, self->_requestedSize, self->_maximumAlignmentSize, self->_groupSameSize];

  return v4;
}

@end