@interface _UIButtonBarItemLayout
- (BOOL)_shouldBeDirty;
- (BOOL)shouldHorizontallyCenterView:(id)a3;
- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)a3;
- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)a3 barButtonItem:(id)a4;
- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)a3;
- (id)description;
- (void)_addConstraintsToActivate:(id)a3 toDeactivate:(id)a4;
- (void)_addLayoutViews:(id)a3;
- (void)_configure;
- (void)_updateCustomView;
- (void)_updateItemView;
- (void)_updateItemViewSizing;
- (void)dirtyLayoutForPlainAppearanceChange:(BOOL)a3 doneAppearanceChanged:(BOOL)a4;
- (void)setUseGroupSizing:(BOOL)a3;
@end

@implementation _UIButtonBarItemLayout

- (void)_configure
{
  [(_UIButtonBarItemLayout *)self _updateItemView];
  [(UIBarButtonItem *)self->_item setView:self->_itemView];
  if (!self->_itemView)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIButtonBarLayout.m" lineNumber:555 description:@"cannot configure an item layout for a nil view"];
  }

  [(_UIButtonBarItemLayout *)self _updateItemViewSizing];
  if (self->_useGroupSizing && !self->_groupSameSize)
  {
    v4 = [(UIView *)self->_itemView widthAnchor];
    v5 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics groupSizeGuide];
    v6 = [v4 constraintEqualToAnchor:v5];
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
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = v3;
    if (self->_requestedSize)
    {
      [v3 addObject:?];
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
    v8 = [(UIView *)v18 widthAnchor];
    v9 = [v8 constraintEqualToConstant:v5];
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
  v13 = [(UIView *)v12 heightAnchor];
  if ((![(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics allowsViewWrappers]|| ![(UIBarButtonItem *)self->_item isCustomViewItem]) && !self->_maximumAlignmentSize)
  {
    v14 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics verticalSizeGuide];
    v15 = [v13 constraintEqualToAnchor:v14];
    maximumAlignmentSize = self->_maximumAlignmentSize;
    self->_maximumAlignmentSize = v15;
  }
}

- (BOOL)_shouldBeDirty
{
  v2 = self;
  v3 = [(UIBarButtonItem *)self->_item view];
  LOBYTE(v2) = v3 != v2->_itemView;

  return v2;
}

- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)a3
{
  [(_UIButtonBarItemLayout *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIButtonBarItemLayout)initWithLayoutMetrics:(id)a3 barButtonItem:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UIButtonBarItemLayout;
  v8 = [(_UIButtonBarLayout *)&v13 initWithLayoutMetrics:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, a4);
    v10 = [(UIBarButtonItem *)v9->_item view];
    itemView = v9->_itemView;
    v9->_itemView = v10;
  }

  return v9;
}

- (void)dirtyLayoutForPlainAppearanceChange:(BOOL)a3 doneAppearanceChanged:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIBarButtonItem *)self->_item style];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  v9 = v7 == UIBarButtonItemStyleDone && v4;
  if (v8 || v9)
  {

    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (BOOL)shouldHorizontallyCenterView:(id)a3
{
  itemViewWrapper = self->_itemViewWrapper;
  if (!itemViewWrapper)
  {
    itemViewWrapper = self->_itemView;
  }

  return itemViewWrapper == a3 && [(UIBarButtonItem *)self->_item _wantsThreeUp];
}

- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)a3
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

- (void)setUseGroupSizing:(BOOL)a3
{
  if (self->_useGroupSizing != a3)
  {
    self->_useGroupSizing = a3;
    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (void)_updateCustomView
{
  if ([(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics allowsViewWrappers]&& [_UITAMICAdaptorView shouldWrapView:self->_itemView])
  {
    v3 = [(_UITAMICAdaptorView *)self->_itemViewWrapper view];
    itemView = self->_itemView;
    if (v3 == itemView)
    {
      v6 = [(UIView *)itemView superview];
      itemViewWrapper = self->_itemViewWrapper;

      if (v6 == itemViewWrapper)
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

- (void)_addLayoutViews:(id)a3
{
  itemViewWrapper = self->_itemViewWrapper;
  if (!itemViewWrapper)
  {
    itemViewWrapper = self->_itemView;
  }

  [a3 addObject:itemViewWrapper];
}

- (void)_addConstraintsToActivate:(id)a3 toDeactivate:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(UIBarButtonItem *)self->_item _width];
  v8 = v7;
  v9 = v13;
  if (v7 <= 0.0)
  {
    if (![(UIBarButtonItem *)self->_item isCustomViewItem]|| (v10 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics allowsViewWrappers], v9 = v13, (v10 & 1) == 0))
    {
      v9 = v6;
    }
  }

  [v9 addObject:self->_requestedSize];
  if (self->_maximumAlignmentSize)
  {
    [v13 addObject:?];
  }

  if (v8 <= 0.0 && self->_useGroupSizing && ![(UIBarButtonItem *)self->_item isCustomViewItem])
  {
    groupSameSize = self->_groupSameSize;
    v12 = v13;
  }

  else
  {
    groupSameSize = self->_groupSameSize;
    if (!groupSameSize)
    {
      goto LABEL_14;
    }

    v12 = v6;
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
  v6 = [(UIBarButtonItem *)item view];
  [v4 appendFormat:@" item=%p view=%p requestedSize=%p maximumAlignmentSize=%p groupSameSize=%p", item, v6, self->_requestedSize, self->_maximumAlignmentSize, self->_groupSameSize];

  return v4;
}

@end