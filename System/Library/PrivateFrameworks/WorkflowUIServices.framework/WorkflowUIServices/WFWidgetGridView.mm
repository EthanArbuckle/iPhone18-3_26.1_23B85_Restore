@interface WFWidgetGridView
- (BOOL)cellExistsAtIndex:(unint64_t)index;
- (BOOL)maybeNeedsLayoutWithActions:(id)actions;
- (CGSize)lastKnownSize;
- (WFWidgetGridView)initWithFamily:(int64_t)family widgetType:(int64_t)type cornerRadius:(double)radius log:(id)log;
- (WFWidgetGridViewDelegate)delegate;
- (id)actionsForVisibleCells;
- (id)cellAtIndex:(unint64_t)index;
- (id)cellForSystemAction:(id)action;
- (void)disableAllCellsExceptCell:(id)cell;
- (void)enableAllCells;
- (void)layoutWithActions:(id)actions dataSource:(id)source;
- (void)setCellsToClear:(BOOL)clear;
- (void)tintWithHomeScreenTintColor:(id)color;
- (void)widgetCellDidTransitionToState:(int64_t)state;
- (void)widgetCellWasTapped:(id)tapped;
@end

@implementation WFWidgetGridView

- (CGSize)lastKnownSize
{
  width = self->_lastKnownSize.width;
  height = self->_lastKnownSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (WFWidgetGridViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)widgetCellDidTransitionToState:(int64_t)state
{
  if (state == 3 || !state)
  {
    [(WFWidgetGridView *)self enableAllCells];
  }

  delegate = [(WFWidgetGridView *)self delegate];
  [delegate gridView:self cellDidTransitionToRunningState:state];
}

- (void)widgetCellWasTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(WFWidgetGridView *)self delegate];
  [delegate gridView:self didTapCell:tappedCopy];
}

- (id)cellAtIndex:(unint64_t)index
{
  if ([(WFWidgetGridView *)self cellExistsAtIndex:?])
  {
    subviews = [(WFWidgetGridView *)self subviews];
    v6 = [subviews objectAtIndex:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)cellExistsAtIndex:(unint64_t)index
{
  subviews = [(WFWidgetGridView *)self subviews];
  if ([subviews count])
  {
    subviews2 = [(WFWidgetGridView *)self subviews];
    v7 = [subviews2 count] - 1 >= index;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)layoutWithActions:(id)actions dataSource:(id)source
{
  v98 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sourceCopy = source;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  [(WFWidgetGridView *)self lastKnownSize];
  v11 = v10 == *(MEMORY[0x1E695F060] + 8) && v9 == *MEMORY[0x1E695F060];
  [(WFWidgetGridView *)self bounds];
  v13 = v12;
  v15 = v14;
  [(WFWidgetGridView *)self lastKnownSize];
  v18 = v15 == v17 && v13 == v16;
  actions = [(WFWidgetGridView *)self actions];
  v80 = actionsCopy;
  if (![actionsCopy isEqualToArray:actions] || !v18)
  {
    goto LABEL_19;
  }

  lastKnownContentSizeCategory = [(WFWidgetGridView *)self lastKnownContentSizeCategory];
  v21 = preferredContentSizeCategory;
  v22 = v21;
  if (lastKnownContentSizeCategory == v21)
  {

    goto LABEL_15;
  }

  if (v21 && lastKnownContentSizeCategory)
  {
    v23 = [lastKnownContentSizeCategory isEqualToString:v21];

    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    v24 = [(WFWidgetGridView *)self maybeNeedsLayoutWithActions:v80];

    if (!v24)
    {
      goto LABEL_103;
    }

    goto LABEL_20;
  }

LABEL_18:
LABEL_19:

LABEL_20:
  [(WFWidgetGridView *)self setActions:v80];
  v82 = [v80 count];
  [(WFWidgetGridView *)self bounds];
  v26 = v25;
  size = v27;
  [(WFWidgetGridView *)self setLastKnownSize:v27, v25];
  [(WFWidgetGridView *)self setLastKnownContentSizeCategory:preferredContentSizeCategory];
  v28 = [(WFWidgetGridView *)self log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = MEMORY[0x1CCA76630]([(WFWidgetGridView *)self family]);
    v99.width = size;
    v99.height = v26;
    v30 = NSStringFromCGSize(v99);
    *buf = 138543874;
    selfCopy = v29;
    v92 = 2114;
    v93 = *&v30;
    v94 = 2048;
    v95 = *&v82;
    _os_log_impl(&dword_1C830A000, v28, OS_LOG_TYPE_DEFAULT, "Starting a %{public}@ layout in bounds: %{public}@, item count: %lu", buf, 0x20u);
  }

  if ([(WFWidgetGridView *)self widgetType]== 2)
  {
    family = [(WFWidgetGridView *)self family];
    v32 = 0.0;
    v33 = 2;
    v34 = 4;
    if (family == 4)
    {
      v35 = 8.0;
    }

    else
    {
      v35 = 0.0;
    }

    if (family == 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = 1;
    }

    if (family == 3)
    {
      v35 = 8.0;
    }

    else
    {
      v34 = v36;
    }

    v37 = family == 3 || family == 4;
    v38 = family != 3 && family != 4;
    if (family != 3)
    {
      v33 = v36;
    }

    v39 = 2;
    if (family == 2)
    {
      v32 = 8.0;
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    v41 = family == 2;
    v42 = family != 2;
    if (family == 1)
    {
      v32 = 8.0;
    }

    else
    {
      v39 = v40;
    }

    if (family == 1)
    {
      v41 = 0;
      v42 = 1;
      v43 = 1;
    }

    else
    {
      v43 = v40;
    }

    if (family <= 2)
    {
      v44 = v32;
    }

    else
    {
      v44 = v35;
    }

    if (family <= 2)
    {
      v45 = v39;
    }

    else
    {
      v45 = v34;
    }

    if (family <= 2)
    {
      v46 = v41;
    }

    else
    {
      v46 = v37;
    }

    if (family > 2)
    {
      v42 = v38;
    }

    v78 = v42;
    if (family <= 2)
    {
      v47 = v43;
    }

    else
    {
      v47 = v33;
    }
  }

  else
  {
    v44 = 0.0;
    if ([(WFWidgetGridView *)self widgetType]== 1)
    {
      [(WFWidgetGridView *)self family];
    }

    v46 = 0;
    v45 = 1;
    v78 = 1;
    v47 = 1;
  }

  v48 = (size - v44 * (v47 + 1)) / v47;
  v49 = (v26 - v44) / v45;
  traitCollection = [(WFWidgetGridView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v81 = layoutDirection;
  if (layoutDirection == 1)
  {
    v52 = v48 + v44 * 2.0;
  }

  else
  {
    v52 = v44;
  }

  if ([(WFWidgetGridView *)self family]== 1)
  {
    v52 = v44;
  }

  v53 = [(WFWidgetGridView *)self log];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219264;
    selfCopy = v45;
    v92 = 2048;
    v93 = *&v47;
    v94 = 2048;
    v95 = v44;
    v96 = 1024;
    *v97 = v81 == 1;
    *&v97[4] = 2048;
    *&v97[6] = v52;
    *&v97[14] = 2048;
    *&v97[16] = v44;
    _os_log_impl(&dword_1C830A000, v53, OS_LOG_TYPE_DEFAULT, "Grid will layout with %li rows, %li columns, %f padding, isRTL: %i. Starting at %f, %f", buf, 0x3Au);
  }

  v76 = preferredContentSizeCategory;
  v54 = v49 - v44;

  v55 = [(WFWidgetGridView *)self log];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    homeScreenTintColor = [(WFWidgetGridView *)self homeScreenTintColor];
    *buf = 134218498;
    selfCopy = self;
    v92 = 2112;
    v93 = *&v57;
    v94 = 2112;
    v95 = *&homeScreenTintColor;
    _os_log_impl(&dword_1C830A000, v55, OS_LOG_TYPE_DEFAULT, "<%p %@> Configuring cells with home screen tint color %@", buf, 0x20u);
  }

  v59 = v11 || v18;
  v60 = v47 * v45;

  v61 = 0;
  v62 = v44 + v54;
  v77 = !v46;
  v63 = v44;
  do
  {
    v64 = [(WFWidgetGridView *)self cellAtIndex:v61];
    if (!v64)
    {
      v64 = objc_alloc_init(WFWidgetCell);
      [(WFWidgetCell *)v64 setDelegate:self];
    }

    if (v61 >= v82)
    {
      v65 = 0;
    }

    else
    {
      v65 = [v80 objectAtIndex:v61];
    }

    [(WFWidgetGridView *)self cornerRadius];
    v67 = v66 - v44;
    widgetType = [(WFWidgetGridView *)self widgetType];
    family2 = [(WFWidgetGridView *)self family];
    homeScreenTintColor2 = [(WFWidgetGridView *)self homeScreenTintColor];
    [(WFWidgetCell *)v64 configureWithAction:v65 dataSource:sourceCopy cornerRadius:widgetType widgetType:family2 family:homeScreenTintColor2 homeScreenTintColor:[(WFWidgetGridView *)self isClearStyleEnabled] isClearStyleEnabled:v67];

    if (v61)
    {
      if (v81 == 1)
      {
        if (v78)
        {
          v63 = v62 + v63;
          v52 = v44;
        }

        else if (v52 - v48 - v44 == v44)
        {
          v52 = v44;
        }

        else
        {
          v63 = v62 + v63;
          v52 = v48 + v44 * 2.0;
        }
      }

      else
      {
        if (v44 + v48 + v52 >= size)
        {
          v71 = 1;
        }

        else
        {
          v71 = v77;
        }

        if (v71)
        {
          v63 = v62 + v63;
          v52 = v44;
        }

        else
        {
          v52 = v44 + v48 + v52;
        }
      }
    }

    if (![(WFWidgetGridView *)self cellExistsAtIndex:v61])
    {
      [(WFWidgetGridView *)self addSubview:v64];
    }

    v72 = [(WFWidgetGridView *)self log];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      enabled = [(WFWidgetCell *)v64 enabled];
      *buf = 134219264;
      selfCopy = v61;
      v92 = 2048;
      v93 = v52;
      v94 = 2048;
      v95 = v63;
      v96 = 2048;
      *v97 = v48;
      *&v97[8] = 2048;
      *&v97[10] = v54;
      *&v97[18] = 1024;
      *&v97[20] = enabled;
      _os_log_impl(&dword_1C830A000, v72, OS_LOG_TYPE_DEFAULT, "Placing cell %li at {%f, %f}, w: %f, h: %f, cell enabled: %i", buf, 0x3Au);
    }

    if (v59)
    {
      [(WFWidgetCell *)v64 setFrame:v52, v63, v48, v54];
    }

    else
    {
      v74 = MEMORY[0x1E69DD250];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __49__WFWidgetGridView_layoutWithActions_dataSource___block_invoke;
      v84[3] = &unk_1E8308060;
      v85 = v64;
      v86 = v52;
      v87 = v63;
      v88 = v48;
      v89 = v54;
      [v74 animateWithDuration:v84 animations:0.3];
    }

    v61 = (v61 + 1);
  }

  while (v60 != v61);
  delegate = [(WFWidgetGridView *)self delegate];
  [delegate gridViewDidFinishLayout:self];

  preferredContentSizeCategory = v76;
LABEL_103:
}

- (BOOL)maybeNeedsLayoutWithActions:(id)actions
{
  v3 = [actions if_objectsPassingTest:&__block_literal_global_55];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __48__WFWidgetGridView_maybeNeedsLayoutWithActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)actionsForVisibleCells
{
  subviews = [(WFWidgetGridView *)self subviews];
  v3 = [subviews if_compactMap:&__block_literal_global_2782];

  return v3;
}

id __42__WFWidgetGridView_actionsForVisibleCells__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 action];

  return v5;
}

- (id)cellForSystemAction:(id)action
{
  v21 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(WFWidgetGridView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(subviews);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          action = [v10 action];
          v12 = actionCopy;
          v13 = v12;
          if (action == v12)
          {

            goto LABEL_21;
          }

          if (actionCopy && action)
          {
            v14 = [action isEqual:v12];

            if (v14)
            {
              goto LABEL_21;
            }

            goto LABEL_17;
          }
        }

        else
        {
          action = v10;
          v10 = 0;
        }
      }

      else
      {
        action = 0;
      }

LABEL_17:
      if (v7 == ++v9)
      {
        v7 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (void)setCellsToClear:(BOOL)clear
{
  clearCopy = clear;
  v15 = *MEMORY[0x1E69E9840];
  self->_isClearStyleEnabled = clear;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [(WFWidgetGridView *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 setClearStyle:clearCopy];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)tintWithHomeScreenTintColor:(id)color
{
  v26 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v6 = [(WFWidgetGridView *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 134218498;
    selfCopy = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = colorCopy;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "<%p %@> Received home screen tint color %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_homeScreenTintColor, color);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [(WFWidgetGridView *)self subviews];
  v10 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v14 setHomeScreenTintColor:colorCopy];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)enableAllCells
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(WFWidgetGridView *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        action = [v7 action];

        if (action)
        {
          [v7 setEnabled:1];
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)disableAllCellsExceptCell:(id)cell
{
  v23 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subviews = [(WFWidgetGridView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        action = [v10 action];
        action2 = [cellCopy action];
        v13 = action;
        v14 = action2;
        v15 = v14;
        if (v13 == v14)
        {

          continue;
        }

        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {

LABEL_15:
          [v10 setEnabled:0];
          continue;
        }

        v17 = [v13 isEqual:v14];

        if ((v17 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (WFWidgetGridView)initWithFamily:(int64_t)family widgetType:(int64_t)type cornerRadius:(double)radius log:(id)log
{
  logCopy = log;
  v16.receiver = self;
  v16.super_class = WFWidgetGridView;
  v12 = [(WFWidgetGridView *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_family = family;
    v12->_widgetType = type;
    v12->_cornerRadius = radius;
    objc_storeStrong(&v12->_log, log);
    v14 = v13;
  }

  return v13;
}

@end