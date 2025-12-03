@interface SBActivitySystemApertureSceneHandle
- (SBActivitySystemApertureSceneHandle)initWithDescriptor:(id)descriptor configuringForAlertTarget:(BOOL)target;
- (SBActivitySystemApertureSceneHandleDelegate)delegate;
- (void)_createSceneHandleWithDescriptor:(id)descriptor;
- (void)activitySystemApertureSceneHandle:(id)handle requestsLaunchWithAction:(id)action;
- (void)activitySystemApertureSceneHandle:(id)handle updatedContentPayloadID:(id)d;
@end

@implementation SBActivitySystemApertureSceneHandle

- (SBActivitySystemApertureSceneHandle)initWithDescriptor:(id)descriptor configuringForAlertTarget:(BOOL)target
{
  descriptorCopy = descriptor;
  v10.receiver = self;
  v10.super_class = SBActivitySystemApertureSceneHandle;
  v7 = [(SBActivitySystemApertureSceneHandle *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isForAlertTarget = target;
    [(SBActivitySystemApertureSceneHandle *)v7 _createSceneHandleWithDescriptor:descriptorCopy];
  }

  return v8;
}

- (void)_createSceneHandleWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  defaultMetrics = [MEMORY[0x277D67D08] defaultMetrics];
  alertSceneTargetBundleIdentifiers = [descriptorCopy alertSceneTargetBundleIdentifiers];
  sceneTargetBundleIdentifiers = [descriptorCopy sceneTargetBundleIdentifiers];
  v7 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:2];
  v8 = [alertSceneTargetBundleIdentifiers objectForKey:v7];
  v9 = [sceneTargetBundleIdentifiers objectForKey:v7];
  contentType = [descriptorCopy contentType];
  if (self->_isForAlertTarget && v8)
  {
    platterTargetBundleIdentifier = v8;
    goto LABEL_10;
  }

  if (v9)
  {
    v12 = @"com.apple.chrono.WidgetRenderer-Activities";
    if (contentType)
    {
      v12 = v9;
    }

    goto LABEL_7;
  }

  if (!contentType)
  {
    v12 = @"com.apple.chrono.WidgetRenderer-Activities";
LABEL_7:
    platterTargetBundleIdentifier = v12;
    goto LABEL_10;
  }

  platterTargetBundleIdentifier = [descriptorCopy platterTargetBundleIdentifier];
LABEL_10:
  v13 = platterTargetBundleIdentifier;
  v14 = [objc_alloc(MEMORY[0x277CE9598]) initWithDescriptor:descriptorCopy metricsRequest:defaultMetrics targetBundleIdentifier:platterTargetBundleIdentifier];
  sceneHandle = self->_sceneHandle;
  self->_sceneHandle = v14;

  [(ACUISSystemApertureSceneHandle *)self->_sceneHandle setDelegate:self];
}

- (void)activitySystemApertureSceneHandle:(id)handle requestsLaunchWithAction:(id)action
{
  actionCopy = action;
  delegate = [(SBActivitySystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate systemApertureSceneHandle:self requestsLaunchWithAction:actionCopy];
  }
}

- (void)activitySystemApertureSceneHandle:(id)handle updatedContentPayloadID:(id)d
{
  dCopy = d;
  delegate = [(SBActivitySystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate systemApertureSceneHandle:self updatedContentPayloadID:dCopy];
  }
}

- (SBActivitySystemApertureSceneHandleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end