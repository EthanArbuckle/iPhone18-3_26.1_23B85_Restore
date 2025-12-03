@interface _UICursorAccessoryView
+ (CGSize)defaultItemSize;
+ (CGSize)largeItemSize;
+ (double)baseFontSize;
+ (double)grayscaleLuminance:(id)luminance;
- (BOOL)_allItemViewsActive;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_unionRectActiveItems;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UICursorAccessoryItemDataSource)dataSource;
- (_UICursorAccessoryView)initWithDataSource:(id)source;
- (double)activeAccessoryXOffset;
- (id)_displayedItemViewAtIndex:(int64_t)index;
- (id)tintColorAdjusted:(BOOL)adjusted;
- (void)_cleanupRemovedItemViews;
- (void)_didRecognizeAccessoryTapGestureRecognizer:(id)recognizer;
- (void)_ensureNumberOfReusableViews:(unint64_t)views inArray:(id)array ofClass:(Class)class;
- (void)_layoutContainerView;
- (void)_layoutDisplayedAccessoryItemViews;
- (void)_layoutHighlightView;
- (void)_reloadAccessoryItemViews;
- (void)_updateBackgroundEffects:(int64_t)effects;
- (void)layoutSubviews;
- (void)setAccessoryIdentifiers:(id)identifiers animated:(BOOL)animated;
- (void)setTintColor:(id)color;
@end

@implementation _UICursorAccessoryView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UICursorAccessoryView;
  [(UIVisualEffectView *)&v3 layoutSubviews];
  [(_UICursorAccessoryView *)self _layoutContainerView];
  [(UIView *)self bounds];
  [(UIVisualEffectView *)self _setCornerRadius:CGRectGetHeight(v4) * 0.5];
  [(UIVisualEffectView *)self _cornerRadius];
  [(UIView *)self->_containerView _setCornerRadius:?];
  [(_UICursorAccessoryView *)self _layoutDisplayedAccessoryItemViews];
  [(_UICursorAccessoryView *)self _layoutHighlightView];
}

- (void)_layoutDisplayedAccessoryItemViews
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    v19[3] = 0x4010000000000000;
  }

  [(UIView *)self bounds];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if (_UISolariumEnabled() && ![(_UICursorAccessoryView *)self _allItemViewsActive])
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectInset(v22, 0.0, 5.0);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v19[3] = 0x4014000000000000;
  }

  traitCollection2 = [(UIView *)self traitCollection];
  v14 = [traitCollection2 layoutDirection] == 1;

  displayedIdentifiers = self->_displayedIdentifiers;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60___UICursorAccessoryView__layoutDisplayedAccessoryItemViews__block_invoke;
  v16[3] = &unk_1E71202E0;
  v17 = v14;
  *&v16[6] = x;
  *&v16[7] = y;
  *&v16[8] = width;
  *&v16[9] = height;
  v16[4] = self;
  v16[5] = &v18;
  [(NSMutableOrderedSet *)displayedIdentifiers enumerateObjectsUsingBlock:v16];
  _Block_object_dispose(&v18, 8);
}

- (BOOL)_allItemViewsActive
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_displayedIdentifiers;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_itemViewsByIdentifier objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        if (([v8 collapsed] & 1) == 0 && (objc_msgSend(v8, "isActive") & 1) == 0)
        {

          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (CGRect)_unionRectActiveItems
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_displayedIdentifiers;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    height = v5;
    width = v6;
    y = v3;
    x = v4;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v16 = [(NSMutableDictionary *)self->_itemViewsByIdentifier objectForKey:*(*(&v30 + 1) + 8 * i), v30];
        if ([v16 isActive])
        {
          if (([v16 collapsed] & 1) == 0)
          {
            [v16 frame];
            v42.origin.x = v17;
            v42.origin.y = v18;
            v42.size.width = v19;
            v42.size.height = v20;
            v36.origin.x = x;
            v36.origin.y = y;
            v36.size.width = width;
            v36.size.height = height;
            v37 = CGRectUnion(v36, v42);
            x = v37.origin.x;
            y = v37.origin.y;
            width = v37.size.width;
            height = v37.size.height;
          }

          [v16 frame];
          v43.origin.x = v21;
          v43.origin.y = v22;
          v43.size.width = v23;
          v43.size.height = v24;
          v38.origin.x = v4;
          v38.origin.y = v3;
          v38.size.width = v6;
          v38.size.height = v5;
          v39 = CGRectUnion(v38, v43);
          v4 = v39.origin.x;
          v3 = v39.origin.y;
          v6 = v39.size.width;
          v5 = v39.size.height;
        }
      }

      v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    height = v5;
    width = v6;
    y = v3;
    x = v4;
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  IsNull = CGRectIsNull(v40);
  if (IsNull)
  {
    v26 = v4;
  }

  else
  {
    v26 = x;
  }

  if (IsNull)
  {
    v27 = v3;
  }

  else
  {
    v27 = y;
  }

  if (IsNull)
  {
    v28 = v6;
  }

  else
  {
    v28 = width;
  }

  if (IsNull)
  {
    v29 = v5;
  }

  else
  {
    v29 = height;
  }

  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_layoutContainerView
{
  [(UIView *)self bounds];
  containerView = self->_containerView;

  [(UIView *)containerView setFrame:?];
}

- (void)_layoutHighlightView
{
  [(_UICursorAccessoryView *)self _unionRectActiveItems];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsNull(v12) || ![(NSArray *)self->_accessoryIdentifiers count])
  {
    activeHighlightBackgroundView = self->_activeHighlightBackgroundView;

    [(UIView *)activeHighlightBackgroundView setHidden:1];
  }

  else
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v7 = CGRectGetHeight(v13) * 0.5;
    [(UIView *)self->_activeHighlightBackgroundView setHidden:0];
    layer = [(UIView *)self->_activeHighlightBackgroundView layer];
    [layer setCornerRadius:v7];

    v9 = self->_activeHighlightBackgroundView;

    [(UIView *)v9 setFrame:x, y, width, height];
  }
}

- (double)activeAccessoryXOffset
{
  layer = [(UIView *)self layer];
  needsLayout = [layer needsLayout];

  if (needsLayout)
  {
    [(_UICursorAccessoryView *)self _layoutDisplayedAccessoryItemViews];
  }

  [(_UICursorAccessoryView *)self _unionRectActiveItems];
  x = v11.origin.x;
  width = v11.size.width;
  IsNull = CGRectIsNull(v11);
  result = 0.0;
  if (!IsNull)
  {
    [(UIView *)self bounds];
    return v10 + v9 * 0.5 - (x + width * 0.5);
  }

  return result;
}

- (_UICursorAccessoryView)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [UIBlurEffect effectWithStyle:9];
  v43.receiver = self;
  v43.super_class = _UICursorAccessoryView;
  v6 = [(UIVisualEffectView *)&v43 initWithEffect:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_dataSource, sourceCopy);
    array = [MEMORY[0x1E695DEC8] array];
    accessoryIdentifiers = v6->_accessoryIdentifiers;
    v6->_accessoryIdentifiers = array;

    v42.receiver = v6;
    v42.super_class = _UICursorAccessoryView;
    tintColor = [(UIView *)&v42 tintColor];
    tintColor = v6->_tintColor;
    v6->_tintColor = tintColor;

    layer = [(UIView *)v6 layer];
    [layer setMasksToBounds:0];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v12 = +[UIColor blackColor];
      cGColor = [v12 CGColor];
      layer2 = [(UIView *)v6 layer];
      [layer2 setShadowColor:cGColor];

      layer3 = [(UIView *)v6 layer];
      [layer3 setShadowOffset:{0.0, 3.0}];

      layer4 = [(UIView *)v6 layer];
      LODWORD(v17) = 1043878380;
      [layer4 setShadowOpacity:v17];

      layer5 = [(UIView *)v6 layer];
      [layer5 setShadowRadius:9.0];
    }

    traitCollection = [(UIView *)v6 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      contentView = [(UIVisualEffectView *)v6 contentView];
      [contentView sws_enablePlatter];

      layer6 = [(UIView *)v6 layer];
      [layer6 setZPosition:4.0];
    }

    else
    {
      v23 = [UIView alloc];
      v24 = *MEMORY[0x1E695F058];
      v25 = *(MEMORY[0x1E695F058] + 8);
      v26 = *(MEMORY[0x1E695F058] + 16);
      v27 = *(MEMORY[0x1E695F058] + 24);
      v28 = [(UIView *)v23 initWithFrame:*MEMORY[0x1E695F058], v25, v26, v27];
      containerView = v6->_containerView;
      v6->_containerView = v28;

      contentView2 = [(UIVisualEffectView *)v6 contentView];
      [contentView2 addSubview:v6->_containerView];

      v31 = [[UIView alloc] initWithFrame:v24, v25, v26, v27];
      activeHighlightBackgroundView = v6->_activeHighlightBackgroundView;
      v6->_activeHighlightBackgroundView = v31;

      [(UIView *)v6->_activeHighlightBackgroundView setUserInteractionEnabled:0];
      [(UIView *)v6->_containerView addSubview:v6->_activeHighlightBackgroundView];
      if (_UISolariumEnabled())
      {
        [(UIVisualEffectView *)v6 _setRenderMode:0];
        [(UIVisualEffectView *)v6 setEffect:0];
      }
    }

    if (v6->_tintColor)
    {
      [(_UICursorAccessoryView *)v6 setTintColor:?];
    }

    v33 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    displayedIdentifiers = v6->_displayedIdentifiers;
    v6->_displayedIdentifiers = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemViewsByIdentifier = v6->_itemViewsByIdentifier;
    v6->_itemViewsByIdentifier = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dividerViews = v6->_dividerViews;
    v6->_dividerViews = v37;

    v39 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:sel__didRecognizeAccessoryTapGestureRecognizer_];
    accessoryItemTapGestureRecognizer = v6->_accessoryItemTapGestureRecognizer;
    v6->_accessoryItemTapGestureRecognizer = v39;

    [(UIGestureRecognizer *)v6->_accessoryItemTapGestureRecognizer setDelegate:v6];
    [(UIView *)v6 addGestureRecognizer:v6->_accessoryItemTapGestureRecognizer];
  }

  return v6;
}

- (void)_ensureNumberOfReusableViews:(unint64_t)views inArray:(id)array ofClass:(Class)class
{
  arrayCopy = array;
  if ([arrayCopy count] < views)
  {
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v12 = [[class alloc] initWithFrame:{v8, v9, v10, v11}];
      [arrayCopy addObject:v12];
      [(UIView *)self->_containerView addSubview:v12];
    }

    while ([arrayCopy count] < views);
  }

  while ([arrayCopy count] > views)
  {
    lastObject = [arrayCopy lastObject];
    [lastObject removeFromSuperview];
    [arrayCopy removeObject:lastObject];
  }
}

- (id)tintColorAdjusted:(BOOL)adjusted
{
  if (adjusted)
  {
    v5.receiver = self;
    v5.super_class = _UICursorAccessoryView;
    tintColor = [(UIView *)&v5 tintColor];
  }

  else
  {
    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (void)setTintColor:(id)color
{
  objc_storeStrong(&self->_tintColor, color);
  colorCopy = color;
  tintColor = self->_tintColor;
  v7.receiver = self;
  v7.super_class = _UICursorAccessoryView;
  [(UIView *)&v7 setTintColor:tintColor];

  [(_UICursorAccessoryView *)self _updateBackgroundEffects:2];
}

- (void)_cleanupRemovedItemViews
{
  v16 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_displayedIdentifiers;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![(NSArray *)self->_accessoryIdentifiers containsObject:v9])
        {
          v10 = [(NSMutableDictionary *)self->_itemViewsByIdentifier objectForKey:v9];
          [v10 removeFromSuperview];

          [(NSMutableDictionary *)self->_itemViewsByIdentifier removeObjectForKey:v9];
          [array addObject:v9];
        }
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableOrderedSet *)self->_displayedIdentifiers removeObjectsInArray:array];
  if (![(NSMutableOrderedSet *)self->_displayedIdentifiers count])
  {
    [(_UICursorAccessoryView *)self _updateBackgroundEffects:0];
  }
}

- (void)_reloadAccessoryItemViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51___UICursorAccessoryView__reloadAccessoryItemViews__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)setAccessoryIdentifiers:(id)identifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  v89 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identifiersCopy2 = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [(NSMutableOrderedSet *)self->_displayedIdentifiers array];
  v53 = identifiersCopy2;
  v8 = [identifiersCopy2 differenceFromArray:array2];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v58 = v8;
  removals = [v8 removals];
  v10 = [removals countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v81;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v81 != v12)
        {
          objc_enumerationMutation(removals);
        }

        object = [*(*(&v80 + 1) + 8 * i) object];
        [array addObject:object];
      }

      v11 = [removals countByEnumeratingWithState:&v80 objects:v88 count:16];
    }

    while (v11);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [v58 insertions];
  v59 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
  selfCopy = self;
  v57 = array;
  if (v59)
  {
    v55 = *v77;
    v15 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v77 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v76 + 1) + 8 * j);
        object2 = [v20 object];
        if ([array containsObject:object2])
        {
          [array removeObject:object2];
        }

        v22 = [(NSMutableDictionary *)self->_itemViewsByIdentifier objectForKey:object2];
        if (!v22)
        {
          v22 = [[_UICursorAccessoryItemView alloc] initWithFrame:v15, v16, v17, v18];
          [(UIView *)self->_containerView addSubview:v22];
          [(NSMutableDictionary *)self->_itemViewsByIdentifier setObject:v22 forKey:object2];
        }

        index = [v20 index];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        removals2 = [v58 removals];
        v25 = [removals2 countByEnumeratingWithState:&v72 objects:v86 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v73;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v73 != v27)
              {
                objc_enumerationMutation(removals2);
              }

              index2 = [*(*(&v72 + 1) + 8 * k) index];
              if (index2 < [v20 index])
              {
                ++index;
              }
            }

            v26 = [removals2 countByEnumeratingWithState:&v72 objects:v86 count:16];
          }

          while (v26);
        }

        self = selfCopy;
        v30 = [(NSMutableOrderedSet *)selfCopy->_displayedIdentifiers count];
        if (v30 >= index)
        {
          v31 = index;
        }

        else
        {
          v31 = v30;
        }

        [(NSMutableOrderedSet *)selfCopy->_displayedIdentifiers insertObject:object2 atIndex:v31];
        if (animatedCopy)
        {
          [(_UICursorAccessoryItemView *)v22 setCollapsed:1];
        }

        array = v57;
      }

      v59 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    }

    while (v59);
  }

  objc_storeStrong(&self->_accessoryIdentifiers, identifiersCopy);
  v32 = [(NSMutableOrderedSet *)self->_displayedIdentifiers count];
  if (v32)
  {
    v33 = v32 - 1;
  }

  else
  {
    v33 = 0;
  }

  [(_UICursorAccessoryView *)self _ensureNumberOfReusableViews:v33 inArray:self->_dividerViews ofClass:objc_opt_class()];
  dividerViews = self->_dividerViews;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __59___UICursorAccessoryView_setAccessoryIdentifiers_animated___block_invoke;
  v71[3] = &unk_1E70F3F18;
  v71[4] = self;
  [(NSMutableArray *)dividerViews enumerateObjectsUsingBlock:v71];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
  if (animatedCopy)
  {
    [(_UICursorAccessoryView *)self layoutSubviews];
    [(_UICursorAccessoryView *)self _reloadAccessoryItemViews];
    if ([(NSMutableOrderedSet *)self->_displayedIdentifiers count])
    {
      [(_UICursorAccessoryView *)self _updateBackgroundEffects:1];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v35 = self->_displayedIdentifiers;
    v36 = [(NSMutableOrderedSet *)v35 countByEnumeratingWithState:&v67 objects:v85 count:16];
    v37 = v53;
    if (v36)
    {
      v38 = v36;
      v39 = 0;
      v40 = *v68;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v68 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v67 + 1) + 8 * m);
          identifiersCopy = [(NSMutableDictionary *)self->_itemViewsByIdentifier objectForKey:v42, identifiersCopy];
          [identifiersCopy setCollapsed:0];

          if (([v42 isEqualToString:@"dic"] & 1) != 0 || objc_msgSend(v42, "isEqualToString:", @"mod:2"))
          {
            v39 = 1;
          }

          self = selfCopy;
        }

        v38 = [(NSMutableOrderedSet *)v35 countByEnumeratingWithState:&v67 objects:v85 count:16];
      }

      while (v38);
    }

    else
    {
      v39 = 0;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v44 = v57;
    v45 = [v44 countByEnumeratingWithState:&v63 objects:v84 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v64;
      do
      {
        for (n = 0; n != v46; ++n)
        {
          if (*v64 != v47)
          {
            objc_enumerationMutation(v44);
          }

          identifiersCopy2 = [(NSMutableDictionary *)selfCopy->_itemViewsByIdentifier objectForKey:*(*(&v63 + 1) + 8 * n), identifiersCopy];
          [identifiersCopy2 setCollapsed:1];
        }

        v46 = [v44 countByEnumeratingWithState:&v63 objects:v84 count:16];
      }

      while (v46);
    }

    if ([v53 count] == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = ([v53 count] != 2) | v39 ^ 1;
    }

    array = v57;
    selfCopy->_visionShouldColorSelection = v50 & 1;
    identifiersCopy3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.9 response:0.2, identifiersCopy];
    v61[4] = selfCopy;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __59___UICursorAccessoryView_setAccessoryIdentifiers_animated___block_invoke_2;
    v62[3] = &unk_1E70F3590;
    v62[4] = selfCopy;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __59___UICursorAccessoryView_setAccessoryIdentifiers_animated___block_invoke_3;
    v61[3] = &unk_1E70F3FD8;
    [UIView _animateUsingSpringBehavior:identifiersCopy3 tracking:0 animations:v62 completion:v61];
  }

  else
  {
    [(_UICursorAccessoryView *)self _reloadAccessoryItemViews];
    v37 = v53;
    if ([(NSMutableOrderedSet *)self->_displayedIdentifiers count])
    {
      [(_UICursorAccessoryView *)self _updateBackgroundEffects:1];
    }

    [(_UICursorAccessoryView *)self _cleanupRemovedItemViews];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v41 = *MEMORY[0x1E69E9840];
  allValues = [(NSMutableDictionary *)self->_itemViewsByIdentifier allValues];
  if ([allValues count])
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      v37 = 0uLL;
      v38 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v9 = allValues;
      v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v10)
      {
        v11 = 0;
        v12 = *v36;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v11 += [*(*(&v35 + 1) + 8 * i) collapsed];
          }

          v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v10);
        v10 = v11;
      }

      v14 = ([v9 count] - v10) * 72.0 + 8.0;
      v15 = 56.0;
    }

    else
    {
      v33 = 0uLL;
      v34 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v16 = allValues;
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        v20 = 0.0;
        v14 = 0.0;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v31 + 1) + 8 * j);
            if (([v22 collapsed] & 1) == 0)
            {
              [v22 sizeThatFits:{width, height}];
              v24 = v23;
              v26 = v14 + v25;
              [v22 horizontalPadding];
              v14 = v26 + v27 + v27;
              if (v24 >= v20)
              {
                v20 = v24;
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v18);
      }

      else
      {
        v20 = 0.0;
        v14 = 0.0;
      }

      if (_UISolariumEnabled() && ![(_UICursorAccessoryView *)self _allItemViewsActive])
      {
        v20 = v20 + 10.0;
        v14 = v14 + 10.0;
      }

      [objc_opt_class() defaultItemSize];
      if (v28 >= v20)
      {
        v15 = v28;
      }

      else
      {
        v15 = v20;
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
  }

  v29 = v14;
  v30 = v15;
  result.height = v30;
  result.width = v29;
  return result;
}

- (id)_displayedItemViewAtIndex:(int64_t)index
{
  if (index < 0 || [(NSMutableOrderedSet *)self->_displayedIdentifiers count]- 1 < index)
  {
    v5 = 0;
  }

  else
  {
    itemViewsByIdentifier = self->_itemViewsByIdentifier;
    v7 = [(NSMutableOrderedSet *)self->_displayedIdentifiers objectAtIndex:index];
    v5 = [(NSMutableDictionary *)itemViewsByIdentifier objectForKey:v7];
  }

  return v5;
}

- (void)_updateBackgroundEffects:(int64_t)effects
{
  if (effects)
  {
    if (effects == 2)
    {
      if (_UISolariumEnabled())
      {
        _background = [(UIView *)self->_activeHighlightBackgroundView _background];
        v11 = [(_UICursorAccessoryView *)self tintColorAdjusted:1];
        [_background setTintColor:v11];

LABEL_11:

        return;
      }
    }

    else
    {
      if (effects != 1)
      {
        return;
      }

      if (_UISolariumEnabled())
      {
        contentView = [(UIVisualEffectView *)self contentView];
        _background2 = [contentView _background];

        if (!_background2)
        {
          v6 = objc_opt_new();
          contentView2 = [(UIVisualEffectView *)self contentView];
          [contentView2 _setBackground:v6];
        }

        _background = [objc_opt_class() glassSubvariantName];
        v8 = [[_UIViewGlass alloc] initWithVariant:0];
        [(_UIViewGlass *)v8 setSubvariant:_background];
        [(_UIViewGlass *)v8 setFlexible:1];
        [(UIView *)self->_containerView _setBackground:v8];
        v9 = [[_UIViewGlass alloc] initWithVariant:0];
        v10 = [(_UICursorAccessoryView *)self tintColorAdjusted:1];
        [(_UIViewGlass *)v9 setTintColor:v10];

        [(_UIViewGlass *)v9 setSubvariant:_background];
        [(UIView *)self->_activeHighlightBackgroundView _setBackground:v9];

        goto LABEL_11;
      }
    }

    _background = [(_UICursorAccessoryView *)self tintColorAdjusted:1];
    [(UIView *)self->_activeHighlightBackgroundView setBackgroundColor:_background];
    goto LABEL_11;
  }

  [(UIView *)self->_containerView _setBackground:?];
  activeHighlightBackgroundView = self->_activeHighlightBackgroundView;

  [(UIView *)activeHighlightBackgroundView _setBackground:0];
}

- (void)_didRecognizeAccessoryTapGestureRecognizer:(id)recognizer
{
  v29 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 3)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [recognizerCopy locationInView:self];
    v7 = v6;
    v9 = v8;
    traitCollection = [(UIView *)self traitCollection];
    v11 = [traitCollection userInterfaceIdiom] == 6;

    if (v11)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = self->_displayedIdentifiers;
      v13 = [(NSMutableOrderedSet *)v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v13)
      {
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = [(NSMutableDictionary *)self->_itemViewsByIdentifier objectForKey:*(*(&v23 + 1) + 8 * v15)];
            [v16 setSelected:0];

            ++v15;
          }

          while (v13 != v15);
          v13 = [(NSMutableOrderedSet *)v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }
    }

    itemViewsByIdentifier = self->_itemViewsByIdentifier;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69___UICursorAccessoryView__didRecognizeAccessoryTapGestureRecognizer___block_invoke;
    v19[3] = &unk_1E7120308;
    objc_copyWeak(v22, &location);
    v22[1] = v7;
    v22[2] = v9;
    v18 = WeakRetained;
    v20 = v18;
    selfCopy = self;
    [(NSMutableDictionary *)itemViewsByIdentifier enumerateKeysAndObjectsUsingBlock:v19];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  if (self->_accessoryItemTapGestureRecognizer == recognizer)
  {
    gestureRecognizerCopy = gestureRecognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (double)baseFontSize
{
  if (qword_1ED49ACB8 != -1)
  {
    dispatch_once(&qword_1ED49ACB8, &__block_literal_global_523);
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v3 = [_MergedGlobals_7_5 objectForKeyedSubscript:preferredContentSizeCategory];
  [v3 floatValue];
  v5 = v4 + 17.0;

  return v5;
}

+ (CGSize)defaultItemSize
{
  if (qword_1ED49ACD0 != -1)
  {
    dispatch_once(&qword_1ED49ACD0, &__block_literal_global_39_1);
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v3 = [qword_1ED49ACC0 objectForKeyedSubscript:preferredContentSizeCategory];
  [v3 floatValue];
  v5 = v4 + 37.0;

  v6 = [qword_1ED49ACC8 objectForKeyedSubscript:preferredContentSizeCategory];
  [v6 floatValue];
  v8 = v7 + 27.0;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)largeItemSize
{
  if (qword_1ED49ACE8 != -1)
  {
    dispatch_once(&qword_1ED49ACE8, &__block_literal_global_53_2);
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v3 = [qword_1ED49ACD8 objectForKeyedSubscript:preferredContentSizeCategory];
  [v3 floatValue];
  v5 = (v4 + 49.0);

  v6 = [qword_1ED49ACE0 objectForKeyedSubscript:preferredContentSizeCategory];
  [v6 floatValue];
  v8 = (v7 + 33.0);

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (double)grayscaleLuminance:(id)luminance
{
  v4 = 0.0;
  [luminance getWhite:&v4 alpha:0];
  return v4;
}

- (_UICursorAccessoryItemDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end