@interface _UIViewLayoutFeedbackLoopDebugger
+ (id)layoutFeedbackLoopDebugger;
+ (void)createLayoutFeedbackLoopDebuggerForUnitTests;
+ (void)destroyLayoutFeedbackLoopDebuggerForUnitTests;
- (id)description;
- (id)topLevelViewHierarchyTrace;
- (id)turningPointViewsCreateIfNecessary;
- (id)viewsWithChangingGeometryCreateIfNecessary;
- (id)viewsWithVariableChangesTriggeringLayoutCreateIfNecessary;
- (void)_recordSetNeedsLayoutToLayerOfView:(id)view;
- (void)didEnterLayoutSublayersOfLayerForView:(id)view;
- (void)didSendLayoutSubviewsToView:(id)view;
- (void)didSendViewDidLayoutSubviewsToViewControllerOfView:(id)view;
- (void)didSendViewWillLayoutSubviewsToViewControllerOfView:(id)view;
- (void)didUpdateLayoutMargins:(UIEdgeInsets)margins ofView:(id)view;
- (void)didUpdateSafeAreaInsets:(UIEdgeInsets)insets ofView:(id)view;
- (void)dumpInfoWithInfoCollectionSuccess:(BOOL)success;
- (void)willChangeGeometryForLayerOfView:(id)view;
- (void)willExitLayoutSublayersOfLayerForView:(id)view;
- (void)willSendLayoutSubviewsToView:(id)view;
- (void)willSendSetAnchorPoint:(CGPoint)point toLayerOfView:(id)view;
- (void)willSendSetBounds:(CGRect)bounds toLayerOfView:(id)view;
- (void)willSendSetFrame:(CGRect)frame toLayerOfView:(id)view;
- (void)willSendSetNeedsLayoutToView:(id)view becauseOfChangeInVariable:(id)variable inLayoutEngine:(id)engine;
- (void)willSendSetPosition:(CGPoint)position toLayerOfView:(id)view;
- (void)willSendViewDidLayoutSubviewsToViewControllerOfView:(id)view;
- (void)willSendViewWillLayoutSubviewsToViewControllerOfView:(id)view;
@end

@implementation _UIViewLayoutFeedbackLoopDebugger

+ (id)layoutFeedbackLoopDebugger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___UIViewLayoutFeedbackLoopDebugger_layoutFeedbackLoopDebugger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49C180 != -1)
  {
    dispatch_once(&qword_1ED49C180, block);
  }

  v2 = qword_1ED49C178;

  return v2;
}

- (void)didEnterLayoutSublayersOfLayerForView:(id)view
{
  viewCopy = view;
  if (self->_debuggingState >= 2)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_currentLayoutView, view);
    [v6 _lfld_pushCurrentLayoutMethodName:@"layoutSublayersOfLayer:"];
    viewCopy = v6;
  }
}

- (void)willExitLayoutSublayersOfLayerForView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    currentLayoutView = self->_currentLayoutView;
    self->_currentLayoutView = 0;
    viewCopy = view;

    [viewCopy _lfld_discardLastCurrentLayoutMethodName];
  }
}

- (void)willSendLayoutSubviewsToView:(id)view
{
  v70 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(UIView *)viewCopy _lfld_incrementCount];
  [(UIView *)viewCopy _lfld_prepareToResetCountIfNecessary];
  _lfld_count = [(UIView *)viewCopy _lfld_count];
  v7 = qword_1ED49C1A0;
  if (_lfld_count > qword_1ED49C1A0)
  {
    self->_debuggingState = 3;
    goto LABEL_19;
  }

  debuggingState = self->_debuggingState;
  if (debuggingState > 1)
  {
    if (debuggingState == 2)
    {
      if (self->_rootView == viewCopy)
      {
        rootViewLayoutCount = self->_rootViewLayoutCount;
        self->_rootViewLayoutCount = rootViewLayoutCount + 1;
        if (rootViewLayoutCount >= 10)
        {
          self->_debuggingState = 3;
        }
      }

      [(UIView *)viewCopy _lfld_pushCurrentLayoutMethodName:@"layoutSubviews"];
      v24 = *(__UILogGetCategoryCachedImpl("LayoutLoop", &qword_1ED49C1B0) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
        _lfld_minimalDescription = [(UIView *)viewCopy _lfld_minimalDescription];
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412802;
        v63 = @"layoutSubviews";
        v64 = 2112;
        v65 = _lfld_minimalDescription;
        v66 = 2112;
        v67 = callStackSymbols;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "About to send -%@ to %@. \n%@", buf, 0x20u);
      }

      goto LABEL_20;
    }

    if (debuggingState != 3)
    {
      goto LABEL_20;
    }

LABEL_19:
    [(_UIViewLayoutFeedbackLoopDebugger *)self dumpInfoWithInfoCollectionSuccess:_lfld_count <= v7];
    goto LABEL_20;
  }

  if (debuggingState)
  {
    if (debuggingState == 1)
    {
      [(NSMutableArray *)self->_layoutList addObject:viewCopy];
      [(NSMutableSet *)self->_involvedViews addObject:viewCopy];
      p_rootView = &self->_rootView;
      rootView = self->_rootView;
      if (rootView != viewCopy && [(UIView *)rootView isDescendantOfView:viewCopy])
      {
        objc_storeStrong(&self->_rootView, view);
      }

      v11 = [(NSMutableArray *)self->_layoutList count];
      if (v11 == qword_1ED49C198)
      {
        self->_rootViewConfirmed = 1;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v12 = self->_involvedViews;
        v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v59;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v59 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if (([*(*(&v58 + 1) + 8 * i) isDescendantOfView:*p_rootView] & 1) == 0)
              {
                self->_rootViewConfirmed = 0;
                goto LABEL_32;
              }
            }

            v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_32:

        if (!self->_rootViewConfirmed)
        {
          goto LABEL_66;
        }

        v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v29 = [(NSMutableArray *)self->_layoutList copy];
        v30 = [v29 indexOfObject:self->_rootView];
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = v29;
        }

        else
        {
          v32 = MEMORY[0x1E695E0F0];
          do
          {
            v33 = v30 + 1;
            v34 = [v29 subarrayWithRange:{0, v30 + 1}];
            [v28 addObject:v34];

            v31 = v32;
            if (v33 < [v29 count])
            {
              v31 = [v29 subarrayWithRange:{v33, objc_msgSend(v29, "count") - v33}];
            }

            v30 = [v31 indexOfObject:*p_rootView];
            v29 = v31;
          }

          while (v30 != 0x7FFFFFFFFFFFFFFFLL);
        }

        if ([v28 count])
        {
          [v28 removeObjectAtIndex:0];
        }

        if ([v28 count] < 2)
        {
LABEL_65:

LABEL_66:
          v22 = 2;
          goto LABEL_67;
        }

        firstObject = [v28 firstObject];
        self->_feedbackLoopConfirmed = 1;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v36 = v28;
        v37 = [v36 countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v55;
          while (2)
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v55 != v39)
              {
                objc_enumerationMutation(v36);
              }

              if (([*(*(&v54 + 1) + 8 * j) isEqualToArray:firstObject] & 1) == 0)
              {
                self->_feedbackLoopConfirmed = 0;
                goto LABEL_52;
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v54 objects:v68 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

LABEL_52:

        if (self->_feedbackLoopConfirmed)
        {
          v41 = firstObject;
          reducedLayoutList = self->_reducedLayoutList;
          self->_reducedLayoutList = v41;
        }

        else
        {
          if ([v36 count] < 4)
          {
LABEL_61:
            if (self->_feedbackLoopConfirmed)
            {
              v50 = [(NSMutableSet *)self->_involvedViews count];
              v51 = [MEMORY[0x1E695DFD8] setWithArray:self->_reducedLayoutList];
              v52 = [v51 count];

              if (v50 != v52)
              {
                self->_feedbackLoopConfirmed = 0;
              }
            }

            goto LABEL_65;
          }

          self->_feedbackLoopConfirmed = 1;
          firstObject2 = [v36 firstObject];
          v44 = [v36 objectAtIndexedSubscript:1];
          obj = [firstObject2 arrayByAddingObjectsFromArray:v44];

          if (([v36 count] - 4) <= 0xFFFFFFFFFFFFFFFCLL)
          {
            v45 = 2;
            while (1)
            {
              v46 = [v36 objectAtIndexedSubscript:v45];
              v47 = v45 + 1;
              v48 = [v36 objectAtIndexedSubscript:v47];
              v49 = [v46 arrayByAddingObjectsFromArray:v48];

              if (([v49 isEqualToArray:obj] & 1) == 0)
              {
                break;
              }

              v45 = v47 + 1;
              if (v45 >= [v36 count] - 1)
              {
                goto LABEL_69;
              }
            }

            self->_feedbackLoopConfirmed = 0;
          }

LABEL_69:
          reducedLayoutList = obj;
          if (self->_feedbackLoopConfirmed)
          {
            objc_storeStrong(&self->_reducedLayoutList, obj);
          }
        }

        goto LABEL_61;
      }
    }
  }

  else
  {
    _lfld_count2 = [(UIView *)viewCopy _lfld_count];
    if (_lfld_count2 == qword_1ED49C188)
    {
      objc_storeStrong(&self->_rootView, view);
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      layoutList = self->_layoutList;
      self->_layoutList = v18;

      v20 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{viewCopy, 0}];
      involvedViews = self->_involvedViews;
      self->_involvedViews = v20;

      v22 = 1;
LABEL_67:
      self->_debuggingState = v22;
    }
  }

LABEL_20:
}

- (void)didSendLayoutSubviewsToView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    [view _lfld_discardLastCurrentLayoutMethodName];
  }
}

- (void)willSendViewWillLayoutSubviewsToViewControllerOfView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    [view _lfld_pushCurrentLayoutMethodName:@"viewWillLayoutSubviews"];
  }
}

- (void)didSendViewWillLayoutSubviewsToViewControllerOfView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    [view _lfld_discardLastCurrentLayoutMethodName];
  }
}

- (void)willSendViewDidLayoutSubviewsToViewControllerOfView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    [view _lfld_pushCurrentLayoutMethodName:@"viewDidLayoutSubviews"];
  }
}

- (void)didSendViewDidLayoutSubviewsToViewControllerOfView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    [view _lfld_discardLastCurrentLayoutMethodName];
  }
}

- (id)viewsWithVariableChangesTriggeringLayoutCreateIfNecessary
{
  viewsWithVariableChangesTriggeringLayout = self->_viewsWithVariableChangesTriggeringLayout;
  if (!viewsWithVariableChangesTriggeringLayout)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_viewsWithVariableChangesTriggeringLayout;
    self->_viewsWithVariableChangesTriggeringLayout = v4;

    viewsWithVariableChangesTriggeringLayout = self->_viewsWithVariableChangesTriggeringLayout;
  }

  return viewsWithVariableChangesTriggeringLayout;
}

- (void)willSendSetNeedsLayoutToView:(id)view becauseOfChangeInVariable:(id)variable inLayoutEngine:(id)engine
{
  if (self->_debuggingState >= 2)
  {
    engineCopy = engine;
    variableCopy = variable;
    viewsWithVariableChangesTriggeringLayoutCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithVariableChangesTriggeringLayoutCreateIfNecessary];
    delegate = [variableCopy delegate];
    [viewsWithVariableChangesTriggeringLayoutCreateIfNecessary addObject:delegate];
    [delegate _lfld_addVariableChangeRecordForVariable:variableCopy inLayoutEngine:engineCopy];
  }
}

- (id)turningPointViewsCreateIfNecessary
{
  turningPointViews = self->_turningPointViews;
  if (!turningPointViews)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_turningPointViews;
    self->_turningPointViews = v4;

    turningPointViews = self->_turningPointViews;
  }

  return turningPointViews;
}

- (void)_recordSetNeedsLayoutToLayerOfView:(id)view
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_debuggingState >= 2)
  {
    currentLayoutView = self->_currentLayoutView;
    if (!currentLayoutView)
    {
      if (self->_rootView != viewCopy)
      {
        goto LABEL_13;
      }

      v16 = *(__UILogGetCategoryCachedImpl("LayoutLoop", &qword_1ED49C1C0) + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      turningPointViewsCreateIfNecessary = v16;
      _lfld_minimalDescription = [(UIView *)viewCopy _lfld_minimalDescription];
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = 138412546;
      v20 = _lfld_minimalDescription;
      v21 = 2112;
      v22 = callStackSymbols;
      _os_log_impl(&dword_188A29000, turningPointViewsCreateIfNecessary, OS_LOG_TYPE_ERROR, "About to send -setNeedsLayout to layer for %@ \n%@", &v19, 0x16u);

LABEL_10:
LABEL_11:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      [(UIView *)viewCopy _lfld_addSetNeedsLayoutCallStack:callStackSymbols2];

      goto LABEL_13;
    }

    v6 = [(UIView *)currentLayoutView isDescendantOfView:viewCopy];
    v7 = *(__UILogGetCategoryCachedImpl("LayoutLoop", &qword_1ED49C1B8) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v8 = @">>>UPSTREAM LAYOUT DIRTYING<<< ";
      }

      else
      {
        v8 = &stru_1EFB14550;
      }

      v9 = v7;
      _lfld_minimalDescription2 = [(UIView *)viewCopy _lfld_minimalDescription];
      _lfld_currentLayoutMethodName = [(UIView *)self->_currentLayoutView _lfld_currentLayoutMethodName];
      _lfld_minimalDescription3 = [(UIView *)self->_currentLayoutView _lfld_minimalDescription];
      callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = 138413314;
      v20 = v8;
      v21 = 2112;
      v22 = _lfld_minimalDescription2;
      v23 = 2112;
      v24 = _lfld_currentLayoutMethodName;
      v25 = 2112;
      v26 = _lfld_minimalDescription3;
      v27 = 2112;
      v28 = callStackSymbols3;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@About to send -setNeedsLayout to layer for %@ under -%@ for %@ \n%@", &v19, 0x34u);
    }

    if (v6)
    {
      turningPointViewsCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self turningPointViewsCreateIfNecessary];
      [turningPointViewsCreateIfNecessary addObject:viewCopy];
      goto LABEL_10;
    }
  }

LABEL_13:
}

- (id)viewsWithChangingGeometryCreateIfNecessary
{
  viewsWithChangingGeometry = self->_viewsWithChangingGeometry;
  if (!viewsWithChangingGeometry)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_viewsWithChangingGeometry;
    self->_viewsWithChangingGeometry = v4;

    viewsWithChangingGeometry = self->_viewsWithChangingGeometry;
  }

  return viewsWithChangingGeometry;
}

- (void)willChangeGeometryForLayerOfView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  needsLayoutOnGeometryChange = [layer needsLayoutOnGeometryChange];

  v6 = viewCopy;
  if (needsLayoutOnGeometryChange)
  {
    [(_UIViewLayoutFeedbackLoopDebugger *)self willSendSetNeedsLayoutToLayerOfView:viewCopy];
    superview = [viewCopy superview];
    v8 = superview;
    if (superview)
    {
      layer2 = [superview layer];
      layoutIsActive = [layer2 layoutIsActive];

      if ((layoutIsActive & 1) == 0)
      {
        [(_UIViewLayoutFeedbackLoopDebugger *)self willSendSetNeedsLayoutToLayerOfView:v8];
      }
    }

    v6 = viewCopy;
  }
}

- (void)willSendSetBounds:(CGRect)bounds toLayerOfView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  [(_UIViewLayoutFeedbackLoopDebugger *)self willChangeGeometryForLayerOfView:?];
  if (self->_debuggingState >= 2)
  {
    viewsWithChangingGeometryCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithChangingGeometryCreateIfNecessary];
    [viewsWithChangingGeometryCreateIfNecessary addObject:viewCopy];
    v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [viewCopy _lfld_addGeometryChangeRecordWithPropertyName:@"bounds" value:v10];
  }
}

- (void)willSendSetPosition:(CGPoint)position toLayerOfView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    y = position.y;
    x = position.x;
    viewCopy = view;
    viewsWithChangingGeometryCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithChangingGeometryCreateIfNecessary];
    [viewsWithChangingGeometryCreateIfNecessary addObject:viewCopy];
    v9 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [viewCopy _lfld_addGeometryChangeRecordWithPropertyName:@"center" value:v9];
  }
}

- (void)willSendSetFrame:(CGRect)frame toLayerOfView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [(_UIViewLayoutFeedbackLoopDebugger *)self willChangeGeometryForLayerOfView:?];
  if (self->_debuggingState >= 2)
  {
    viewsWithChangingGeometryCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithChangingGeometryCreateIfNecessary];
    [viewsWithChangingGeometryCreateIfNecessary addObject:viewCopy];
    v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [viewCopy _lfld_addGeometryChangeRecordWithPropertyName:@"frame" value:v10];
  }
}

- (void)willSendSetAnchorPoint:(CGPoint)point toLayerOfView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  [(_UIViewLayoutFeedbackLoopDebugger *)self willChangeGeometryForLayerOfView:?];
  if (self->_debuggingState >= 2)
  {
    viewsWithChangingGeometryCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithChangingGeometryCreateIfNecessary];
    [viewsWithChangingGeometryCreateIfNecessary addObject:viewCopy];
    v8 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [viewCopy _lfld_addGeometryChangeRecordWithPropertyName:@"anchorPoint" value:v8];
  }
}

- (void)didUpdateSafeAreaInsets:(UIEdgeInsets)insets ofView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    right = insets.right;
    bottom = insets.bottom;
    left = insets.left;
    top = insets.top;
    viewCopy = view;
    viewsWithChangingGeometryCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithChangingGeometryCreateIfNecessary];
    [viewsWithChangingGeometryCreateIfNecessary addObject:viewCopy];
    v11 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{top, left, bottom, right}];
    [viewCopy _lfld_addGeometryChangeRecordWithPropertyName:@"safeAreaInsets" value:v11];
  }
}

- (void)didUpdateLayoutMargins:(UIEdgeInsets)margins ofView:(id)view
{
  if (self->_debuggingState >= 2)
  {
    right = margins.right;
    bottom = margins.bottom;
    left = margins.left;
    top = margins.top;
    viewCopy = view;
    viewsWithChangingGeometryCreateIfNecessary = [(_UIViewLayoutFeedbackLoopDebugger *)self viewsWithChangingGeometryCreateIfNecessary];
    [viewsWithChangingGeometryCreateIfNecessary addObject:viewCopy];
    v11 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{top, left, bottom, right}];
    [viewCopy _lfld_addGeometryChangeRecordWithPropertyName:@"layoutMargins" value:v11];
  }
}

- (void)dumpInfoWithInfoCollectionSuccess:(BOOL)success
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [@"Degenerate layout!" mutableCopy];
  v5 = v4;
  if (self->_feedbackLoopConfirmed)
  {
    [v4 appendString:@" Layout feedback loop detected"];
    if (self->_rootViewConfirmed)
    {
      _lfld_description = [(UIView *)self->_rootView _lfld_description];
      [v5 appendFormat:@" in subtree of %@. ", _lfld_description];
    }

    else
    {
      _lfld_description = [(NSMutableSet *)self->_involvedViews allObjects];
      v7 = _UIViewLFLDDescriptionForArray(_lfld_description);
      [v5 appendFormat:@" involving\n%@\n", v7];
    }
  }

  else
  {
    _lfld_description = [(UIView *)self->_rootView _lfld_description];
    [v5 appendFormat:@" Layout feedback loop suspected in subtree of %@, but the information is incomplete. ", _lfld_description];
  }

  v8 = *(__UILogGetCategoryCachedImpl("LayoutLoop", &dumpInfoWithInfoCollectionSuccess____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%@\n%@", buf, 0x16u);
  }

  [v5 appendFormat:@"More info may be available in the log for %s.%@", "com.apple.UIKit", @"LayoutLoop"];
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v5 userInfo:0];
  [v9 raise];
}

- (id)description
{
  v97 = *MEMORY[0x1E69E9840];
  v3 = [@"\n" mutableCopy];
  v4 = v3;
  if (!self->_feedbackLoopConfirmed)
  {
    if (qword_1ED49C188 >= 10000)
    {
      [v3 appendFormat:@"Unable to confirm the layout feedback loop. %@\n", @"The following information is likely to be incomplete."];
    }

    else
    {
      10000 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The loop trigger threshold is %ld and may be too low. Use the -%s launch argument to try a higher threshold, up to %ld.", qword_1ED49C188, "UIViewLayoutFeedbackLoopDebuggingThreshold", 10000];
      [v4 appendFormat:@"Unable to confirm the layout feedback loop. %@\n", 10000];
    }
  }

  rootView = self->_rootView;
  if (rootView)
  {
    _lfld_description = [(UIView *)rootView _lfld_description];
    [v4 appendFormat:@"Top-level view = %@\n\n", _lfld_description];
  }

  if ([(NSMutableSet *)self->_involvedViews count]>= 2)
  {
    topLevelViewHierarchyTrace = [(_UIViewLayoutFeedbackLoopDebugger *)self topLevelViewHierarchyTrace];
    [v4 appendFormat:@"Views caught in loop: %@\n\n", topLevelViewHierarchyTrace];
  }

  if ([(NSArray *)self->_reducedLayoutList count])
  {
    v9 = _UIViewLFLDDescriptionForArray(self->_reducedLayoutList);
    [v4 appendFormat:@"Views receiving layout in order: %@\n\n", v9];
  }

  v10 = [(NSMutableSet *)self->_viewsWithVariableChangesTriggeringLayout count];
  v11 = [(NSMutableSet *)self->_viewsWithChangingGeometry count];
  v59 = v10;
  if (v10)
  {
    [v4 appendString:@"\n*** Views With Variable Changes Triggering Layout ***\n"];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = self->_viewsWithVariableChangesTriggeringLayout;
    v63 = [(NSMutableSet *)obj countByEnumeratingWithState:&v88 objects:v96 count:16];
    if (v63)
    {
      v61 = *v89;
      do
      {
        v12 = 0;
        do
        {
          if (*v89 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v12;
          v13 = *(*(&v88 + 1) + 8 * v12);
          _lfld_minimalDescription = [v13 _lfld_minimalDescription];
          _lfld_variableChangeRecords = [v13 _lfld_variableChangeRecords];
          [v4 appendFormat:@"\nVariable change records for %@:\n%@\n", _lfld_minimalDescription, _lfld_variableChangeRecords];

          hasAmbiguousLayout = [v13 hasAmbiguousLayout];
          v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          _lfld_variableChangeRecords2 = [v13 _lfld_variableChangeRecords];
          v17 = [_lfld_variableChangeRecords2 countByEnumeratingWithState:&v84 objects:v95 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v85;
            v65 = *v85;
            v66 = v16;
            do
            {
              v20 = 0;
              v67 = v18;
              do
              {
                if (*v85 != v19)
                {
                  objc_enumerationMutation(_lfld_variableChangeRecords2);
                }

                variable = [*(*(&v84 + 1) + 8 * v20) variable];
                if (([v16 containsObject:variable] & 1) == 0)
                {
                  [v16 addObject:variable];
                  delegate = [variable delegate];
                  if (([delegate conformsToProtocol:&unk_1EFE3FA08] & 1) == 0)
                  {

                    delegate = 0;
                  }

                  _referenceView = [delegate _referenceView];
                  if (_referenceView)
                  {
                    v70 = delegate;
                    v71 = v20;
                    v69 = _referenceView;
                    _lfld_constraintsAffectingVariableValueChanges = [_referenceView _lfld_constraintsAffectingVariableValueChanges];
                    v25 = [_lfld_constraintsAffectingVariableValueChanges objectForKey:variable];

                    v82 = 0u;
                    v83 = 0u;
                    v80 = 0u;
                    v81 = 0u;
                    keyEnumerator = [v25 keyEnumerator];
                    v27 = [keyEnumerator countByEnumeratingWithState:&v80 objects:v94 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v81;
                      do
                      {
                        for (i = 0; i != v28; ++i)
                        {
                          if (*v81 != v29)
                          {
                            objc_enumerationMutation(keyEnumerator);
                          }

                          v31 = *(*(&v80 + 1) + 8 * i);
                          v32 = [v25 objectForKey:v31];
                          [v4 appendFormat:@"\nConstraints contributing to value of %@ for %@\n %@\n", v31, variable, v32];
                        }

                        v28 = [keyEnumerator countByEnumeratingWithState:&v80 objects:v94 count:16];
                      }

                      while (v28);
                    }

                    v19 = v65;
                    v16 = v66;
                    v18 = v67;
                    delegate = v70;
                    v20 = v71;
                    _referenceView = v69;
                  }
                }

                ++v20;
              }

              while (v20 != v18);
              v18 = [_lfld_variableChangeRecords2 countByEnumeratingWithState:&v84 objects:v95 count:16];
            }

            while (v18);
          }

          v12 = v64 + 1;
        }

        while (v64 + 1 != v63);
        v63 = [(NSMutableSet *)obj countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v63);
      goto LABEL_49;
    }

LABEL_48:
    hasAmbiguousLayout = 0;
LABEL_49:

    goto LABEL_50;
  }

  if (v11)
  {
    [v4 appendString:@"\n*** Views With Geometry Changes ***\n"];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = self->_viewsWithChangingGeometry;
    v33 = [(NSMutableSet *)obj countByEnumeratingWithState:&v76 objects:v93 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v77;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v77 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v76 + 1) + 8 * j);
          _lfld_minimalDescription2 = [v37 _lfld_minimalDescription];
          _lfld_geometryChangeRecords = [v37 _lfld_geometryChangeRecords];
          [v4 appendFormat:@"Geometry change records for %@:\n%@\n", _lfld_minimalDescription2, _lfld_geometryChangeRecords];
        }

        v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v76 objects:v93 count:16];
      }

      while (v34);
    }

    goto LABEL_48;
  }

  hasAmbiguousLayout = 0;
LABEL_50:
  _lfld_setNeedsLayoutCallStacks = [(UIView *)self->_rootView _lfld_setNeedsLayoutCallStacks];
  v41 = [_lfld_setNeedsLayoutCallStacks count];

  if (v41)
  {
    _lfld_setNeedsLayoutCallStacks2 = [(UIView *)self->_rootView _lfld_setNeedsLayoutCallStacks];
    v43 = _lfld_setNeedsLayoutCallStacks2;
    if (v59)
    {
      anyObject = [_lfld_setNeedsLayoutCallStacks2 anyObject];
      [v4 appendFormat:@"\n*** Representative call stack where -setNeedsLayout is sent to the top-level view ***\n%@\n", anyObject];
    }

    else
    {
      [v4 appendFormat:@"\n*** Call stacks where -setNeedsLayout is sent to the top-level view ***\n%@\n", _lfld_setNeedsLayoutCallStacks2];
    }
  }

  if ([(NSMutableSet *)self->_turningPointViews count]> 1 || [(NSMutableSet *)self->_turningPointViews count]== 1 && ([(NSMutableSet *)self->_turningPointViews anyObject], v45 = objc_claimAutoreleasedReturnValue(), v46 = self->_rootView, v45, v45 != v46))
  {
    [v4 appendString:@"\n*** Additional (non-top-level) Views Receiving Upstream Layout Dirtying ***\n"];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    selfCopy = self;
    v48 = self->_turningPointViews;
    v49 = [(NSMutableSet *)v48 countByEnumeratingWithState:&v72 objects:v92 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v73;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v72 + 1) + 8 * k);
          if (v53 != selfCopy->_rootView)
          {
            _lfld_minimalDescription3 = [*(*(&v72 + 1) + 8 * k) _lfld_minimalDescription];
            _lfld_setNeedsLayoutCallStacks3 = [(UIView *)v53 _lfld_setNeedsLayoutCallStacks];
            [v4 appendFormat:@"\n\t>>> Call stacks where -setNeedsLayout is sent upstream to %@\n%@\n", _lfld_minimalDescription3, _lfld_setNeedsLayoutCallStacks3];
          }
        }

        v50 = [(NSMutableSet *)v48 countByEnumeratingWithState:&v72 objects:v92 count:16];
      }

      while (v50);
    }
  }

  if (hasAmbiguousLayout)
  {
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ambiguous layout suspected as a cause of this layout feedback loop.%@", v4];
  }

  else
  {
    v56 = v4;
  }

  v57 = v56;

  return v57;
}

- (id)topLevelViewHierarchyTrace
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__247;
  v11 = __Block_byref_object_dispose__247;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIViewLayoutFeedbackLoopDebugger_topLevelViewHierarchyTrace__block_invoke;
  v6[3] = &unk_1E712BCC0;
  v6[4] = self;
  v6[5] = &v7;
  v2 = _Block_copy(v6);
  v3 = v8[5];
  v8[5] = v2;

  v4 = (*(v8[5] + 16))();
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)createLayoutFeedbackLoopDebuggerForUnitTests
{
  if (!qword_1ED49C178)
  {
    qword_1ED49C188 = 100;
    qword_1ED49C198 = 100;
    qword_1ED49C1A0 = 1000;
    v3 = objc_alloc_init(self);
    v4 = qword_1ED49C178;
    qword_1ED49C178 = v3;
  }
}

+ (void)destroyLayoutFeedbackLoopDebuggerForUnitTests
{
  qword_1ED49C188 = 0;
  qword_1ED49C198 = 0;
  qword_1ED49C1A0 = 0;
  v2 = qword_1ED49C178;
  qword_1ED49C178 = 0;
}

@end