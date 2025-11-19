@interface _UIWindowHostingSceneSystemReferenceAngleDiffAction
- (UIApplicationSceneSettingsDiffInspector)diffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UIWindowHostingSceneSystemReferenceAngleDiffAction

- (UIApplicationSceneSettingsDiffInspector)diffInspector
{
  diffInspector = self->_diffInspector;
  if (!diffInspector)
  {
    v4 = objc_alloc_init(UIApplicationSceneSettingsDiffInspector);
    v5 = self->_diffInspector;
    self->_diffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_diffInspector observeAngleFromHostReferenceUprightDirectionWithBlock:&__block_literal_global_458];
    [(UIApplicationSceneSettingsDiffInspector *)self->_diffInspector observeHostReferenceAngleModeWithBlock:&__block_literal_global_2_14];
    diffInspector = self->_diffInspector;
  }

  return diffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v14 = a5;
  if (([v12 _hostsWindows] & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UIWindowHostingSceneSystemReferenceAngleDiffAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"[uiScene _hostsWindows]"}];
  }

  v15 = v12;
  v49 = 0;
  v16 = [(_UIWindowHostingSceneSystemReferenceAngleDiffAction *)self diffInspector];
  [v16 inspectDiff:v14 withContext:&v49];

  if (v49 & 2) != 0 || (v49)
  {
    v17 = [v15 _effectiveUISettings];
    [v17 angleFromHostReferenceUprightDirection];
    v19 = v18;

    v20 = [v15 _effectiveUISettings];
    v21 = [v20 hostReferenceAngleMode];

    v22 = [v15 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
    if ((v49 & 2) != 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &_MergedGlobals_1241);
      if (*CategoryCachedImpl)
      {
        v27 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v15;
          if (v28)
          {
            v29 = MEMORY[0x1E696AEC0];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = [v29 stringWithFormat:@"<%@: %p>", v31, v28];
          }

          else
          {
            v32 = @"(nil)";
          }

          v39 = v32;
          v40 = [v28 _persistenceIdentifier];
          v41 = _UISStringForSystemReferenceAngleMode();
          *buf = 138543874;
          v51 = v32;
          v52 = 2114;
          v53 = v40;
          v54 = 2114;
          v55 = v41;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "%{public}@ (%{public}@) Scene hostReferenceAngleMode did change: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v49)
    {
      v24 = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FDB0);
      if (*v24)
      {
        v33 = *(v24 + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = v15;
          if (v34)
          {
            v35 = MEMORY[0x1E696AEC0];
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = [v35 stringWithFormat:@"<%@: %p>", v37, v34];
          }

          else
          {
            v38 = @"(nil)";
          }

          v42 = v38;
          v43 = [v34 _persistenceIdentifier];
          *buf = 138543874;
          v51 = v38;
          v52 = 2114;
          v53 = v43;
          v54 = 2048;
          v55 = v19;
          _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "%{public}@ (%{public}@) Scene angleFromHostReferenceUprightDirection did change: %.0f", buf, 0x20u);
        }
      }
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __165___UIWindowHostingSceneSystemReferenceAngleDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
    v44[3] = &unk_1E70F9780;
    v47 = v19;
    v48 = v21;
    v45 = v13;
    v46 = v22;
    v25 = v22;
    [v15 _enqueuePostSettingsUpdateResponseBlock:v44 inPhase:0x1EFB17490];
  }
}

@end