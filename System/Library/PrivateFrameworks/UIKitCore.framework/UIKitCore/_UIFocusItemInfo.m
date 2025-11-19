@interface _UIFocusItemInfo
+ (_UIFocusItemInfo)infoWithItem:(id)a3;
+ (_UIFocusItemInfo)infoWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4;
- (CGRect)focusedRectInCoordinateSpace:(id)a3;
- (NSArray)ancestorEnvironmentScrollableContainers;
- (UIFocusItem)item;
- (_UIFocusRegion)focusedRegion;
- (id)_createFocusedRegion;
- (id)_initWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4;
- (id)description;
- (id)shortDescription;
- (int64_t)inheritedFocusMovementStyle;
- (void)invalidateFocusedRegion;
@end

@implementation _UIFocusItemInfo

- (UIFocusItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)invalidateFocusedRegion
{
  focusedRegion = self->_focusedRegion;
  self->_focusedRegion = 0;

  *&self->_flags &= ~1u;
}

- (_UIFocusRegion)focusedRegion
{
  if ((*&self->_flags & 1) == 0)
  {
    v3 = [(_UIFocusItemInfo *)self _createFocusedRegion];
    focusedRegion = self->_focusedRegion;
    self->_focusedRegion = v3;

    *&self->_flags |= 1u;
  }

  v5 = self->_focusedRegion;

  return v5;
}

- (id)_createFocusedRegion
{
  v98 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v22 = 0;
    goto LABEL_18;
  }

  v6 = [WeakRetained parentFocusEnvironment];
  if (!v6)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = MEMORY[0x1E696AEC0];
      v37 = v5;
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [v36 stringWithFormat:@"<%@: %p>", v39, v37];

      [v35 handleFailureInMethod:a2 object:self file:@"_UIFocusItemInfo.m" lineNumber:127 description:@"Focus item %@ does not provide a parentFocusEnvironment.", v40];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v35 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      v75 = MEMORY[0x1E696AEC0];
      v76 = v5;
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      v40 = [v75 stringWithFormat:@"<%@: %p>", v78, v76];

      *buf = 138412290;
      v93 = v40;
      _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Focus item %@ does not provide a parentFocusEnvironment. This will become an assert in a future version.", buf, 0xCu);
    }

    else
    {
      v41 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1089) + 8);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v42 = MEMORY[0x1E696AEC0];
      v43 = v5;
      v35 = v41;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v40 = [v42 stringWithFormat:@"<%@: %p>", v45, v43];

      *buf = 138412290;
      v93 = v40;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Focus item %@ does not provide a parentFocusEnvironment. This will become an assert in a future version.", buf, 0xCu);
    }

LABEL_29:
  }

LABEL_3:
  if (!_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v6) || !_UIFocusItemIsViewOrRespondsToSelector(v5))
  {
LABEL_11:
    if (os_variant_has_internal_diagnostics())
    {
      v27 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_15;
      }

      v28 = [v5 debugDescription];
      v29 = [v5 parentFocusEnvironment];
      v30 = [v29 debugDescription];
      v31 = [v5 parentFocusEnvironment];
      v32 = [v31 focusItemContainer];
      v33 = [v32 debugDescription];
      *buf = 138412802;
      v93 = v28;
      v94 = 2112;
      v95 = v30;
      v96 = 2112;
      v97 = v33;
      _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Failed to create FocusRegion for FocusItem: %@ with parentFocusEnvironment: %@  focusItemContainer: %@", buf, 0x20u);
    }

    else
    {
      v26 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DD00) + 8);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        v22 = 0;
        goto LABEL_17;
      }

      v27 = v26;
      v28 = [v5 debugDescription];
      v29 = [v5 parentFocusEnvironment];
      v30 = [v29 debugDescription];
      v31 = [v5 parentFocusEnvironment];
      v32 = [v31 focusItemContainer];
      v33 = [v32 debugDescription];
      *buf = 138412802;
      v93 = v28;
      v94 = 2112;
      v95 = v30;
      v96 = 2112;
      v97 = v33;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Failed to create FocusRegion for FocusItem: %@ with parentFocusEnvironment: %@  focusItemContainer: %@", buf, 0x20u);
    }

LABEL_15:
    goto LABEL_16;
  }

  v7 = [v6 focusItemContainer];
  v8 = v7;
  if (!v7)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = MEMORY[0x1E696AEC0];
      v48 = v5;
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = [v47 stringWithFormat:@"<%@: %p>", v50, v48];

      v52 = v6;
      if (v6)
      {
        v53 = MEMORY[0x1E696AEC0];
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = [v53 stringWithFormat:@"<%@: %p>", v55, v52];
      }

      else
      {
        v56 = @"(nil)";
      }

      [v46 handleFailureInMethod:a2 object:self file:@"_UIFocusItemInfo.m" lineNumber:132 description:@"Focus item %@ has a parent focus environment of %@ but this environment does not provide a container for focus items.", v51, v56];
      goto LABEL_47;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v46 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      v79 = MEMORY[0x1E696AEC0];
      v80 = v5;
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      v83 = [v79 stringWithFormat:@"<%@: %p>", v82, v80];

      v62 = v83;
      v84 = v6;
      if (v6)
      {
        v89 = MEMORY[0x1E696AEC0];
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        v67 = [v89 stringWithFormat:@"<%@: %p>", v91, v84];
      }

      else
      {
        v67 = @"(nil)";
      }

      *buf = 138412546;
      v93 = v62;
      v94 = 2112;
      v95 = v67;
      _os_log_fault_impl(&dword_188A29000, v46, OS_LOG_TYPE_FAULT, "Focus item %@ has a parent focus environment of %@ but this environment does not provide a container for focus items. This will become an assert in a future version.", buf, 0x16u);
    }

    else
    {
      v46 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DCF0) + 8);
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
LABEL_47:

        goto LABEL_7;
      }

      v57 = MEMORY[0x1E696AEC0];
      v58 = v5;
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = [v57 stringWithFormat:@"<%@: %p>", v60, v58];

      v62 = v61;
      v63 = v6;
      if (v6)
      {
        v64 = MEMORY[0x1E696AEC0];
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = [v64 stringWithFormat:@"<%@: %p>", v66, v63];
      }

      else
      {
        v67 = @"(nil)";
      }

      *buf = 138412546;
      v93 = v62;
      v94 = 2112;
      v95 = v67;
      _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "Focus item %@ has a parent focus environment of %@ but this environment does not provide a container for focus items. This will become an assert in a future version.", buf, 0x16u);
    }

    goto LABEL_47;
  }

  v9 = [v7 coordinateSpace];
  v10 = _UIFocusItemFrameInCoordinateSpace(v5, v9);
  _UIFocusRectWithMinimumSize(v10, v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v100.origin.x = v15;
  v100.origin.y = v17;
  v100.size.width = v19;
  v100.size.height = v21;
  if (CGRectIsNull(v100))
  {
LABEL_7:

    goto LABEL_11;
  }

  v23 = [UIFocusSystem focusSystemForEnvironment:v5];
  if (!v23)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v71 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_41;
      }

      v85 = MEMORY[0x1E696AEC0];
      v86 = v5;
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v74 = [v85 stringWithFormat:@"<%@: %p>", v88, v86];

      *buf = 138412290;
      v93 = v74;
      _os_log_fault_impl(&dword_188A29000, v71, OS_LOG_TYPE_FAULT, "Unable to find focus system for item %@", buf, 0xCu);
    }

    else
    {
      v68 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DCF8) + 8);
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v69 = MEMORY[0x1E696AEC0];
      v70 = v5;
      v71 = v68;
      v72 = objc_opt_class();
      v73 = NSStringFromClass(v72);
      v74 = [v69 stringWithFormat:@"<%@: %p>", v73, v70];

      *buf = 138412290;
      v93 = v74;
      _os_log_impl(&dword_188A29000, v71, OS_LOG_TYPE_ERROR, "Unable to find focus system for item %@", buf, 0xCu);
    }

LABEL_41:
  }

LABEL_10:
  v24 = [_UIFocusItemRegion alloc];
  v25 = [v8 coordinateSpace];
  v22 = [(_UIFocusItemRegion *)v24 initWithFrame:v25 coordinateSpace:v5 item:v23 focusSystem:v15, v17, v19, v21];

  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_17:

LABEL_18:

  return v22;
}

+ (_UIFocusItemInfo)infoWithItem:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithItem:v4 useFallbackAncestorScroller:0];

  return v5;
}

+ (_UIFocusItemInfo)infoWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] _initWithItem:v6 useFallbackAncestorScroller:v4];

  return v7;
}

- (id)_initWithItem:(id)a3 useFallbackAncestorScroller:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UIFocusItemInfo;
  v7 = [(_UIFocusItemInfo *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_item, v6);
    v8->_inheritedFocusMovementStyle = 0;
    if (v4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&v8->_flags = *&v8->_flags & 0xFD | v9;
  }

  return v8;
}

- (NSArray)ancestorEnvironmentScrollableContainers
{
  ancestorEnvironmentScrollableContainers = self->_ancestorEnvironmentScrollableContainers;
  if (!ancestorEnvironmentScrollableContainers)
  {
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v5 = _UIFocusAncestorEnvironmentScrollableContainers(WeakRetained, (*&self->_flags >> 1) & 1);
    v6 = self->_ancestorEnvironmentScrollableContainers;
    self->_ancestorEnvironmentScrollableContainers = v5;

    ancestorEnvironmentScrollableContainers = self->_ancestorEnvironmentScrollableContainers;
  }

  return ancestorEnvironmentScrollableContainers;
}

- (int64_t)inheritedFocusMovementStyle
{
  result = self->_inheritedFocusMovementStyle;
  if (!result)
  {
    v4 = [(_UIFocusItemInfo *)self item];

    if (v4)
    {
      v5 = [(_UIFocusItemInfo *)self item];
      self->_inheritedFocusMovementStyle = _UIFocusEnvironmentInheritedFocusMovementStyle(v5);

      return self->_inheritedFocusMovementStyle;
    }

    else
    {
      result = 1;
      self->_inheritedFocusMovementStyle = 1;
    }
  }

  return result;
}

- (CGRect)focusedRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusItemInfo *)self focusedRegion];
  v6 = v5;
  if (v4 && v5)
  {
    [_UIFocusRegionEvaluator frameForRegion:v5 inCoordinateSpace:v4];
    _UIFocusRectWithMinimumSize(v7, v8, v9, v10);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_item);
  v6 = [v3 stringWithFormat:@"<%@: %p item = %@, focusedRegion = %@>", v4, self, WeakRetained, self->_focusedRegion];;

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = objc_loadWeakRetained(&self->_item);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
  }

  focusedRegion = self->_focusedRegion;
  if (focusedRegion)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = focusedRegion;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v11 stringWithFormat:@"<%@: %p>", v14, v12];
  }

  else
  {
    v15 = @"(nil)";
  }

  v16 = [v3 stringWithFormat:@"<%@: %p item = %@, focusedRegion = %@>", v4, self, v9, v15];;

  return v16;
}

@end