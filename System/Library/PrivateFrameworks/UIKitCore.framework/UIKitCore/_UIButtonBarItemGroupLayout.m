@interface _UIButtonBarItemGroupLayout
- (BOOL)isSpaceLayout;
- (BOOL)shouldHorizontallyCenterView:(id)a3;
- (_UIButtonBarItemGroupLayout)initWithLayoutMetrics:(id)a3;
- (_UIButtonBarItemGroupLayout)initWithLayoutMetrics:(id)a3 barButtonItemGroup:(id)a4;
- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)a3;
- (id)_newLayoutForBarButtonItem:(id)a3 useGroupSizing:(BOOL)a4;
- (id)description;
- (id)layoutForBarButtonItem:(id)a3;
- (id)layoutsForSpacerItem:(id)a3;
- (id)subLayouts;
- (void)_addConstraintsToActivate:(id)a3 toDeactivate:(id)a4;
- (void)_addLayoutGuides:(id)a3;
- (void)_addLayoutViews:(id)a3;
- (void)_configure;
- (void)_iterateConfiguredLayouts:(id)a3;
- (void)dirtyLayoutForPlainAppearanceChange:(BOOL)a3 doneAppearanceChanged:(BOOL)a4;
- (void)recalculateLayoutWidthsGivenItemSpaceWidth:(double)a3;
- (void)setLeadingSpacerType:(int64_t)a3;
- (void)setSuppressCustomSpacing:(BOOL)a3;
- (void)setSuppressSpacing:(BOOL)a3;
- (void)setUseGroupSizing:(BOOL)a3;
@end

@implementation _UIButtonBarItemGroupLayout

- (void)_configure
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = 32;
  [(NSMutableArray *)self->_itemLayouts removeAllObjects];
  [(NSMutableArray *)self->_configuredItemLayouts removeAllObjects];
  v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  if ([(UIBarButtonItemGroup *)self->_group _canCollapse]&& ([(UIBarButtonItemGroup *)self->_group representativeItem], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [(NSMapTable *)self->_itemLayoutMap objectForKey:v5];
    representativeLayout = self->_representativeLayout;
    self->_representativeLayout = v7;

    if (!self->_representativeLayout)
    {
      v9 = [(_UIButtonBarItemGroupLayout *)self _newLayoutForBarButtonItem:v6 useGroupSizing:0];
      v10 = self->_representativeLayout;
      self->_representativeLayout = v9;

      [v4 setObject:self->_representativeLayout forKey:v6];
    }
  }

  else
  {
    v11 = self->_representativeLayout;
    self->_representativeLayout = 0;

    v6 = 0;
  }

  v32 = v6;
  [(UIBarButtonItemGroup *)self->_group _items];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v12)
  {
    v35 = 0;
    v19 = 24;
    goto LABEL_31;
  }

  v13 = v12;
  v35 = 0;
  v14 = *v37;
  v15 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  v33 = *v37;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * i);
      v18 = [v17 isSpaceItem];
      v19 = v15[197];
      if (v18)
      {
        [*(&self->super.super.isa + v19) removeObjectForKey:v17];
      }

      v20 = [*(&self->super.super.isa + v19) objectForKey:v17];
      if (!v20)
      {
        v20 = [(_UIButtonBarItemGroupLayout *)self _newLayoutForBarButtonItem:v17 useGroupSizing:self->_useGroupSizing];
      }

      [v4 setObject:v20 forKey:v17];
      [*(&self->super.super.isa + v3) addObject:v20];
      [v20 setDirty:1];
      if (([v17 isHidden] & 1) == 0)
      {
        v21 = v15;
        v22 = v3;
        v23 = v4;
        if (self->_suppressSpacing || self->_suppressCustomSpacing)
        {
          if (([v17 isSpaceItem] & 1) == 0)
          {
            v24 = v35;
            if (self->_suppressSpacing || !v35)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v24 = v35;
          if (!v35)
          {
            goto LABEL_25;
          }

LABEL_23:
          v25 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics _upcastIfReadOnly];
          v26 = [_UIButtonBarSpacerLayout spacerForLayoutMetrics:v25 betweenLayout:v35 andLayout:v20];

          v24 = v35;
          if (v26)
          {
            [(NSMutableArray *)self->_configuredItemLayouts addObject:v26];
          }

LABEL_25:
          [(NSMutableArray *)self->_configuredItemLayouts addObject:v20];
          v27 = v20;

          v35 = v27;
        }

        v4 = v23;
        v3 = v22;
        v15 = v21;
        v14 = v33;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v13);
LABEL_31:
  objc_storeStrong((&self->super.super.isa + v19), v4);
  if (self->_leadingSpacerType)
  {
    leadingSpacerLayout = self->_leadingSpacerLayout;
    v29 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics _upcastIfReadOnly];
    v30 = [_UIButtonBarSpacerLayout _updateSpacer:leadingSpacerLayout layoutMetrics:v29 spacerType:self->_leadingSpacerType];
    v31 = self->_leadingSpacerLayout;
    self->_leadingSpacerLayout = v30;
  }
}

- (id)subLayouts
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_compact)
  {
    v4[0] = self->_representativeLayout;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = self->_configuredItemLayouts;
  }

  return v2;
}

- (_UIButtonBarItemGroupLayout)initWithLayoutMetrics:(id)a3
{
  [(_UIButtonBarItemGroupLayout *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)shouldHorizontallyCenterView:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_itemLayouts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) shouldHorizontallyCenterView:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (_UIButtonBarItemGroupLayout)initWithLayoutMetrics:(id)a3 barButtonItemGroup:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(UILayoutGuide);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIButtonBar.sizingGuide.%p", v7];
  [(UILayoutGuide *)v9 setIdentifier:v10];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72___UIButtonBarItemGroupLayout_initWithLayoutMetrics_barButtonItemGroup___block_invoke;
  v21[3] = &unk_1E70F74A0;
  v11 = v9;
  v22 = v11;
  v12 = [v8 _copyWithModifications:v21];

  v20.receiver = self;
  v20.super_class = _UIButtonBarItemGroupLayout;
  v13 = [(_UIButtonBarLayout *)&v20 initWithLayoutMetrics:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_group, a4);
    objc_storeStrong(&v14->_groupSizeGuide, v9);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    itemLayouts = v14->_itemLayouts;
    v14->_itemLayouts = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    configuredItemLayouts = v14->_configuredItemLayouts;
    v14->_configuredItemLayouts = v17;
  }

  return v14;
}

- (void)dirtyLayoutForPlainAppearanceChange:(BOOL)a3 doneAppearanceChanged:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17 = *MEMORY[0x1E69E9840];
  [_UIButtonBarLayout dirtyLayoutForPlainAppearanceChange:"dirtyLayoutForPlainAppearanceChange:doneAppearanceChanged:" doneAppearanceChanged:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_itemLayouts;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [*(*(&v12 + 1) + 8 * v11++) dirtyLayoutForPlainAppearanceChange:v5 doneAppearanceChanged:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setUseGroupSizing:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_useGroupSizing != a3)
  {
    self->_useGroupSizing = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_itemLayouts;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setUseGroupSizing:{self->_useGroupSizing, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSuppressSpacing:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_suppressSpacing != a3)
  {
    self->_suppressSpacing = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_itemLayouts;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setSuppressSpacing:{self->_suppressSpacing, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (void)setSuppressCustomSpacing:(BOOL)a3
{
  if (self->_suppressCustomSpacing != a3)
  {
    self->_suppressCustomSpacing = a3;
    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (void)setLeadingSpacerType:(int64_t)a3
{
  if (self->_leadingSpacerType != a3)
  {
    self->_leadingSpacerType = a3;
    [(_UIButtonBarLayout *)self setDirty:1];
  }
}

- (id)layoutForBarButtonItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isSpaceItem] & 1) == 0 && (objc_msgSend(v4, "buttonGroup"), v5 = objc_claimAutoreleasedReturnValue(), group = self->_group, v5, v5 == group))
  {
    v7 = [(NSMapTable *)self->_itemLayoutMap objectForKey:v4];
    if (!v7)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = self->_itemLayouts;
      v7 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v10 = *v15;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            v13 = [v12 barButtonItem];

            if (v13 == v4)
            {
              v7 = v12;
              goto LABEL_18;
            }
          }

          v7 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)layoutsForSpacerItem:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isSpaceItem] && (objc_msgSend(v4, "buttonGroup"), v5 = objc_claimAutoreleasedReturnValue(), v6 = self->_group, v5, v5 == v6))
  {
    v9 = [v4 _owningButtonGroup];
    group = self->_group;

    if (v9 == group)
    {
      v23[0] = self->_representativeLayout;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = self->_itemLayouts;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            v17 = [v16 barButtonItem];

            if (v17 == v4)
            {
              [v7 addObject:v16];
            }
          }

          v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UIButtonBarLayout *)self configure];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_configuredItemLayouts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) minimumLayoutWidthGivenMinimumSpaceWidth:{a3, v13}];
        v9 = v9 + v11;
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)recalculateLayoutWidthsGivenItemSpaceWidth:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [(_UIButtonBarLayout *)self configure];
  if (self->_leadingSpacerType == 1)
  {
    [(_UIButtonBarSpacerLayout *)self->_leadingSpacerLayout minimumLayoutWidthGivenMinimumSpaceWidth:a3];
    v6 = v5;
    v7 = [(NSMutableArray *)self->_configuredItemLayouts count];
    v8 = 0.0;
    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0.0;
    }

    self->_expandedWidth = v9;
    if (self->_representativeLayout)
    {
      v8 = v6;
    }

    self->_compactWidth = v8;
  }

  else
  {
    self->_expandedWidth = 0.0;
    self->_compactWidth = 0.0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_configuredItemLayouts;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v20 + 1) + 8 * i) minimumLayoutWidthGivenMinimumSpaceWidth:{a3, v20}];
        self->_expandedWidth = v15 + self->_expandedWidth;
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  [(UIBarButtonItemGroup *)self->_group _contextualExpandedPadding];
  v17 = v16 + self->_expandedWidth;
  self->_expandedWidth = v17;
  representativeLayout = self->_representativeLayout;
  if (representativeLayout)
  {
    [(_UIButtonBarLayout *)representativeLayout minimumLayoutWidthGivenMinimumSpaceWidth:a3];
    v17 = v19 + self->_compactWidth;
  }

  self->_compactWidth = v17;
}

- (BOOL)isSpaceLayout
{
  if (self->_compact)
  {
    v2 = self->_representativeLayout;
  }

  else
  {
    v2 = [(NSMutableArray *)self->_configuredItemLayouts lastObject];
  }

  v3 = v2;
  v4 = [(_UIButtonBarLayout *)v2 isSpaceLayout];

  return v4;
}

- (id)_newLayoutForBarButtonItem:(id)a3 useGroupSizing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isSystemItem] && (objc_msgSend(v6, "systemItem") - 5) <= 1)
  {
    v7 = [_UIButtonBarSpacerLayout alloc];
    v8 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics _upcastIfReadOnly];
    v9 = [(_UIButtonBarSpacerLayout *)v7 initWithLayoutMetrics:v8 barButtonItem:v6];
  }

  else
  {
    v10 = [_UIButtonBarItemLayout alloc];
    v11 = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics _upcastIfReadOnly];
    v9 = [(_UIButtonBarItemLayout *)v10 initWithLayoutMetrics:v11 barButtonItem:v6];

    [(_UIButtonBarLayout *)v9 setUseGroupSizing:v4];
    [(_UIButtonBarSpacerLayout *)v9 setItemViewGenerator:self->_itemViewGenerator];
  }

  return v9;
}

- (void)_iterateConfiguredLayouts:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_spilled)
  {
    goto LABEL_18;
  }

  if (self->_leadingSpacerType)
  {
    if (self->_compact)
    {
      if (!self->_representativeLayout)
      {
        goto LABEL_8;
      }
    }

    else if (![(NSMutableArray *)self->_configuredItemLayouts count])
    {
      goto LABEL_8;
    }

    v4[2](v4, self->_leadingSpacerLayout);
  }

LABEL_8:
  if (self->_compact)
  {
    v4[2](v4, self->_representativeLayout);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_configuredItemLayouts;
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

          v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

LABEL_18:
}

- (void)_addLayoutViews:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47___UIButtonBarItemGroupLayout__addLayoutViews___block_invoke;
  v6[3] = &unk_1E70F74C8;
  v7 = v4;
  v5 = v4;
  [(_UIButtonBarItemGroupLayout *)self _iterateConfiguredLayouts:v6];
}

- (void)_addLayoutGuides:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useGroupSizing && !self->_compact)
  {
    [v4 addObject:self->_groupSizeGuide];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___UIButtonBarItemGroupLayout__addLayoutGuides___block_invoke;
  v7[3] = &unk_1E70F74C8;
  v8 = v5;
  v6 = v5;
  [(_UIButtonBarItemGroupLayout *)self _iterateConfiguredLayouts:v7];
}

- (void)_addConstraintsToActivate:(id)a3 toDeactivate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___UIButtonBarItemGroupLayout__addConstraintsToActivate_toDeactivate___block_invoke;
  v10[3] = &unk_1E70F74F0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(_UIButtonBarItemGroupLayout *)self _iterateConfiguredLayouts:v10];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _UIButtonBarItemGroupLayout;
  v3 = [(_UIButtonBarLayout *)&v16 description];
  v4 = [v3 mutableCopy];

  if (self->_useGroupSizing)
  {
    [v4 appendString:@" useGroupSizing"];
  }

  if (self->_compact)
  {
    [v4 appendString:@" compact"];
  }

  if (self->_spilled)
  {
    [v4 appendString:@" spilled"];
  }

  [v4 appendFormat:@" group=%p groupSizingGuide=%p\n", self->_group, self->_groupSizeGuide];
  if (self->_leadingSpacerType && self->_leadingSpacerLayout)
  {
    [v4 appendFormat:@"\tleadingSpacer=%@\n", self->_leadingSpacerLayout];
  }

  if ([(UIBarButtonItemGroup *)self->_group _canCollapse])
  {
    v5 = [(UIBarButtonItemGroup *)self->_group representativeItem];

    if (v5)
    {
      [v4 appendFormat:@"\trepresentativeLayout=%@\n", self->_representativeLayout];
    }
  }

  [v4 appendFormat:@"\titemLayouts=%p", self->_itemLayouts];
  if (self->_configuredItemLayouts)
  {
    [v4 appendString:@" configuredItemLayouts={\n"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_configuredItemLayouts;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v4 appendFormat:@"\t%@\n", *(*(&v12 + 1) + 8 * i)];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    [v4 appendString:@"}"];
  }

  return v4;
}

@end