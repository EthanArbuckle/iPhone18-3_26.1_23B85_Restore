@interface WFLinkPhotosCreateMemoryAction
- (BOOL)visibleForUse:(int64_t)use;
- (id)requiredResources;
@end

@implementation WFLinkPhotosCreateMemoryAction

- (BOOL)visibleForUse:(int64_t)use
{
  v13 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  isChineseRegionDevice = [currentDevice isChineseRegionDevice];

  if (isChineseRegionDevice)
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[WFLinkPhotosCreateMemoryAction visibleForUse:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Create Memory action is not visible due to feature flag disablement", buf, 0xCu);
    }

    result = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFLinkPhotosCreateMemoryAction;
    result = [(WFAppIntentExecutionAction *)&v10 visibleForUse:use];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)requiredResources
{
  v6.receiver = self;
  v6.super_class = WFLinkPhotosCreateMemoryAction;
  requiredResources = [(WFAction *)&v6 requiredResources];
  v3 = [requiredResources mutableCopy];

  v4 = objc_alloc_init(_TtC11WorkflowKit42WFPhotosMemoryCreationAvailabilityResource);
  [v3 addObject:v4];

  return v3;
}

@end