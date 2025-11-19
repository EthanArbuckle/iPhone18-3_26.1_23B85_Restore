@interface _UIHDRUsageCoordinatorSceneComponent
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UIHDRUsageCoordinatorSceneComponent)initWithScene:(id)a3;
- (id)_settingsDiffActionsForScene:(id)a3;
- (void)_invalidateTraitOverrides;
- (void)_powerStateDidChange:(id)a3;
- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)_setApplicationOcclusionRects:(id)a3;
- (void)_setSystemOcclusionRects:(id)a3;
- (void)dealloc;
@end

@implementation _UIHDRUsageCoordinatorSceneComponent

- (UITraitCollection)_traitOverrides
{
  if ((*&self->_flags & 0x38) == 8)
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v2 isLowPowerModeEnabled];
  }

  else
  {
    v3 = 1;
  }

  v4 = +[_UIHDRUsageCoordinator sharedInstance];
  v5 = [(_UIHDRUsageCoordinator *)v4 traitCollectionSuppressingHDR:v3];

  return v5;
}

- (void)_invalidateTraitOverrides
{
  if ((*&self->_flags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    [WeakRetained _componentDidUpdateTraitOverrides:self];
  }
}

- (_UIHDRUsageCoordinatorSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIHDRUsageCoordinatorSceneComponent;
  v5 = [(_UIHDRUsageCoordinatorSceneComponent *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_scene, v4);
    objc_opt_class();
    *&v6->_flags = *&v6->_flags & 0xFE | objc_opt_isKindOfClass() & 1;

    WeakRetained = objc_loadWeakRetained(&v6->_scene);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&v6->_flags = *&v6->_flags & 0xFD | v9;

    v10 = objc_loadWeakRetained(&v6->_scene);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&v6->_flags = *&v6->_flags & 0xFB | v11;

    v12 = objc_loadWeakRetained(&v6->_scene);
    *&v6->_flags = *&v6->_flags & 0xF7 | (8 * ([v12 activationState] < 1));

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v6 selector:sel__powerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696A7D8] object:0];

  v4.receiver = self;
  v4.super_class = _UIHDRUsageCoordinatorSceneComponent;
  [(_UIHDRUsageCoordinatorSceneComponent *)&v4 dealloc];
}

- (id)_settingsDiffActionsForScene:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_powerStateDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___UIHDRUsageCoordinatorSceneComponent__powerStateDidChange___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setApplicationOcclusionRects:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*&self->_flags)
  {
    v6 = [v4 count];
    if (v6)
    {
      v7 = v6;
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v9 = [WeakRetained screen];
      v10 = [v9 fixedCoordinateSpace];

      v11 = [WeakRetained _coordinateSpace];
      v12 = v11;
      if (!v10 || !v11)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v42 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218240;
            v46 = v10;
            v47 = 2048;
            v48 = v12;
            _os_log_fault_impl(&dword_188A29000, v42, OS_LOG_TYPE_FAULT, "Could not obtain source(%p) or destination(%p) coordinate space", buf, 0x16u);
          }
        }

        else
        {
          v39 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_976) + 8);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v46 = v10;
            v47 = 2048;
            v48 = v12;
            _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "Could not obtain source(%p) or destination(%p) coordinate space", buf, 0x16u);
          }
        }

        if ((*&self->_flags & 0x10) == 0)
        {
          goto LABEL_24;
        }

        v40 = *&self->_flags & 0xEF;
        goto LABEL_23;
      }

      [v11 bounds];
      if (v7 != 1)
      {
        if (!os_variant_has_internal_diagnostics())
        {
          v41 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C6A8) + 8);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = v5;
            _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "Expected single occlusion rect, got multiple – %@", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v35 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v46 = v5;
          _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Expected single occlusion rect, got multiple – %@", buf, 0xCu);
        }

        goto LABEL_31;
      }

      rect = v15 * v16;
      v17 = v14;
      v18 = v13;
      v19 = v16;
      v20 = v15;
      v21 = [v5 firstObject];
      [v21 CGRectValue];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      [v10 convertRect:v12 toCoordinateSpace:{v23, v25, v27, v29}];
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      v58.origin.x = v18;
      v58.origin.y = v17;
      v58.size.width = v20;
      v58.size.height = v19;
      v53 = CGRectIntersection(v52, v58);
      if (v53.size.width * v53.size.height / rect <= 0.999)
      {
        v43 = v53;
        if (os_variant_has_internal_diagnostics())
        {
          v35 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_31;
          }

          v56.size.width = v20;
          v56.origin.x = v18;
          v56.origin.y = v17;
          v56.size.height = v19;
          v36 = NSStringFromCGRect(v56);
          v57.origin.x = x;
          v57.origin.y = y;
          v57.size.width = width;
          v57.size.height = height;
          v37 = NSStringFromCGRect(v57);
          v38 = NSStringFromCGRect(v43);
          *buf = 138412802;
          v46 = v36;
          v47 = 2112;
          v48 = v37;
          v49 = 2112;
          v50 = v38;
          _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "Expected full coverage from single occlusion rect (sceneBounds=%@, sceneOrientedOcclusion=%@, intersection=%@)", buf, 0x20u);
LABEL_10:

LABEL_31:
          goto LABEL_21;
        }

        v34 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C6A0) + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = v34;
          v54.origin.x = v18;
          v54.origin.y = v17;
          v54.size.width = v20;
          v54.size.height = v19;
          v36 = NSStringFromCGRect(v54);
          v55.origin.x = x;
          v55.origin.y = y;
          v55.size.width = width;
          v55.size.height = height;
          v37 = NSStringFromCGRect(v55);
          v38 = NSStringFromCGRect(v43);
          *buf = 138412802;
          v46 = v36;
          v47 = 2112;
          v48 = v37;
          v49 = 2112;
          v50 = v38;
          _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Expected full coverage from single occlusion rect (sceneBounds=%@, sceneOrientedOcclusion=%@, intersection=%@)", buf, 0x20u);
          goto LABEL_10;
        }
      }

LABEL_21:
      if ((*&self->_flags & 0x10) != 0)
      {
LABEL_24:

        goto LABEL_25;
      }

      v40 = *&self->_flags | 0x10;
LABEL_23:
      *&self->_flags = v40;
      [(_UIHDRUsageCoordinatorSceneComponent *)self _invalidateTraitOverrides:*&v43.origin.x];
      goto LABEL_24;
    }

    if ((*&self->_flags & 0x10) != 0)
    {
      *&self->_flags &= ~0x10u;
      [(_UIHDRUsageCoordinatorSceneComponent *)self _invalidateTraitOverrides];
    }
  }

LABEL_25:
}

- (void)_setSystemOcclusionRects:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_flags)
  {
    v8 = v4;
    v6 = [v4 count];
    v5 = v8;
    flags = self->_flags;
    if ((v6 != 0) == ((flags & 0x20) == 0))
    {
      *&self->_flags = flags & 0xDF | (32 * (v6 != 0));
      [(_UIHDRUsageCoordinatorSceneComponent *)self _invalidateTraitOverrides];
      v5 = v8;
    }
  }
}

- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  if (self)
  {
    flags = self->_flags;
    if (a4 < 1 == ((flags & 8) == 0))
    {
      *&self->_flags = flags & 0xF7 | (8 * (a4 < 1));
      [(_UIHDRUsageCoordinatorSceneComponent *)self _invalidateTraitOverrides];
    }
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end