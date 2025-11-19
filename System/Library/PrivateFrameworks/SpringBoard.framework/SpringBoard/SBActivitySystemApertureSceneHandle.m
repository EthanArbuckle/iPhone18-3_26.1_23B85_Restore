@interface SBActivitySystemApertureSceneHandle
- (SBActivitySystemApertureSceneHandle)initWithDescriptor:(id)a3 configuringForAlertTarget:(BOOL)a4;
- (SBActivitySystemApertureSceneHandleDelegate)delegate;
- (void)_createSceneHandleWithDescriptor:(id)a3;
- (void)activitySystemApertureSceneHandle:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)activitySystemApertureSceneHandle:(id)a3 updatedContentPayloadID:(id)a4;
@end

@implementation SBActivitySystemApertureSceneHandle

- (SBActivitySystemApertureSceneHandle)initWithDescriptor:(id)a3 configuringForAlertTarget:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SBActivitySystemApertureSceneHandle;
  v7 = [(SBActivitySystemApertureSceneHandle *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isForAlertTarget = a4;
    [(SBActivitySystemApertureSceneHandle *)v7 _createSceneHandleWithDescriptor:v6];
  }

  return v8;
}

- (void)_createSceneHandleWithDescriptor:(id)a3
{
  v16 = a3;
  v4 = [MEMORY[0x277D67D08] defaultMetrics];
  v5 = [v16 alertSceneTargetBundleIdentifiers];
  v6 = [v16 sceneTargetBundleIdentifiers];
  v7 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:2];
  v8 = [v5 objectForKey:v7];
  v9 = [v6 objectForKey:v7];
  v10 = [v16 contentType];
  if (self->_isForAlertTarget && v8)
  {
    v11 = v8;
    goto LABEL_10;
  }

  if (v9)
  {
    v12 = @"com.apple.chrono.WidgetRenderer-Activities";
    if (v10)
    {
      v12 = v9;
    }

    goto LABEL_7;
  }

  if (!v10)
  {
    v12 = @"com.apple.chrono.WidgetRenderer-Activities";
LABEL_7:
    v11 = v12;
    goto LABEL_10;
  }

  v11 = [v16 platterTargetBundleIdentifier];
LABEL_10:
  v13 = v11;
  v14 = [objc_alloc(MEMORY[0x277CE9598]) initWithDescriptor:v16 metricsRequest:v4 targetBundleIdentifier:v11];
  sceneHandle = self->_sceneHandle;
  self->_sceneHandle = v14;

  [(ACUISSystemApertureSceneHandle *)self->_sceneHandle setDelegate:self];
}

- (void)activitySystemApertureSceneHandle:(id)a3 requestsLaunchWithAction:(id)a4
{
  v6 = a4;
  v5 = [(SBActivitySystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 systemApertureSceneHandle:self requestsLaunchWithAction:v6];
  }
}

- (void)activitySystemApertureSceneHandle:(id)a3 updatedContentPayloadID:(id)a4
{
  v6 = a4;
  v5 = [(SBActivitySystemApertureSceneHandle *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 systemApertureSceneHandle:self updatedContentPayloadID:v6];
  }
}

- (SBActivitySystemApertureSceneHandleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end