@interface WFWorkflowRunningContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isShortcutsApp;
- (WFWorkflowRunningContext)initWithCoder:(id)a3;
- (WFWorkflowRunningContext)initWithWorkflowIdentifier:(id)a3;
- (id)addProgressSubscriberUsingPublishingHandler:(id)a3;
- (id)copyWithCustomIdentity:(id)a3;
- (id)copyWithNewIdentity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)progressForPublishingWithTotalUnitCount:(int64_t)a3 cancellationHandler:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowRunningContext

- (BOOL)isShortcutsApp
{
  v2 = [(WFWorkflowRunningContext *)self originatingBundleIdentifier];
  v3 = VCIsShortcutsAppBundleIdentifier(v2);

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(WFWorkflowRunningContext *)self identifier];
  [v14 encodeObject:v4 forKey:@"identifier"];

  v5 = [(WFWorkflowRunningContext *)self workflowIdentifier];
  [v14 encodeObject:v5 forKey:@"workflowIdentifier"];

  v6 = [(WFWorkflowRunningContext *)self progressCategory];
  [v14 encodeObject:v6 forKey:@"progressCategory"];

  v7 = [(WFWorkflowRunningContext *)self creationDate];
  [v14 encodeObject:v7 forKey:@"creationDate"];

  v8 = [(WFWorkflowRunningContext *)self originatingBundleIdentifier];
  [v14 encodeObject:v8 forKey:@"originatingBundleIdentifier"];

  [v14 encodeBool:-[WFWorkflowRunningContext allowsDialogNotifications](self forKey:{"allowsDialogNotifications"), @"allowsDialogNotifications"}];
  v9 = [(WFWorkflowRunningContext *)self automationType];
  [v14 encodeObject:v9 forKey:@"automationType"];

  v10 = [(WFWorkflowRunningContext *)self rootWorkflowIdentifier];
  [v14 encodeObject:v10 forKey:@"rootWorkflowIdentifier"];

  v11 = [(WFWorkflowRunningContext *)self runSource];
  [v14 encodeObject:v11 forKey:@"runSource"];

  v12 = [(WFWorkflowRunningContext *)self runKind];
  [v14 encodeObject:v12 forKey:@"runKind"];

  [v14 encodeInteger:-[WFWorkflowRunningContext outputBehavior](self forKey:{"outputBehavior"), @"outputBehavior"}];
  [v14 encodeInteger:-[WFWorkflowRunningContext presentationMode](self forKey:{"presentationMode"), @"presentationMode"}];
  v13 = [(WFWorkflowRunningContext *)self runViewSource];
  [v14 encodeObject:v13 forKey:@"runViewSource"];

  [v14 encodeBool:-[WFWorkflowRunningContext isStepwise](self forKey:{"isStepwise"), @"stepwise"}];
  [v14 encodeBool:-[WFWorkflowRunningContext shouldForwardDialogRequests](self forKey:{"shouldForwardDialogRequests"), @"shouldForwardDialogRequests"}];
  [v14 encodeBool:-[WFWorkflowRunningContext shouldForwardSiriActionRequests](self forKey:{"shouldForwardSiriActionRequests"), @"shouldForwardSiriActionRequests"}];
  [v14 encodeBool:-[WFWorkflowRunningContext isRunningInPersistentMode](self forKey:{"isRunningInPersistentMode"), @"runningInPersistentMode"}];
  [v14 encodeObject:@"locale"];
}

- (WFWorkflowRunningContext)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WFWorkflowRunningContext;
  v5 = [(WFWorkflowRunningContext *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowIdentifier"];
    workflowIdentifier = v5->_workflowIdentifier;
    v5->_workflowIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progressCategory"];
    progressCategory = v5->_progressCategory;
    v5->_progressCategory = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automationType"];
    automationType = v5->_automationType;
    v5->_automationType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rootWorkflowIdentifier"];
    rootWorkflowIdentifier = v5->_rootWorkflowIdentifier;
    v5->_rootWorkflowIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingBundleIdentifier"];
    originatingBundleIdentifier = v5->_originatingBundleIdentifier;
    v5->_originatingBundleIdentifier = v18;

    v5->_allowsDialogNotifications = [v4 decodeBoolForKey:@"allowsDialogNotifications"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runSource"];
    runSource = v5->_runSource;
    v5->_runSource = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runKind"];
    runKind = v5->_runKind;
    v5->_runKind = v22;

    v5->_outputBehavior = [v4 decodeIntegerForKey:@"outputBehavior"];
    v5->_presentationMode = [v4 decodeIntegerForKey:@"presentationMode"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runViewSource"];
    runViewSource = v5->_runViewSource;
    v5->_runViewSource = v24;

    v5->_stepwise = [v4 decodeBoolForKey:@"stepwise"];
    v5->_shouldForwardDialogRequests = [v4 decodeBoolForKey:@"shouldForwardDialogRequests"];
    v5->_shouldForwardSiriActionRequests = [v4 decodeBoolForKey:@"shouldForwardSiriActionRequests"];
    v5->_runningInPersistentMode = [v4 decodeBoolForKey:@"runningInPersistentMode"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v26;

    v28 = v5;
  }

  return v5;
}

- (id)copyWithCustomIdentity:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowRunningContext *)self copy];
  v6 = [v4 copy];

  [v5 setIdentifier:v6];
  return v5;
}

- (id)copyWithNewIdentity
{
  v2 = self;
  v3 = [(WFWorkflowRunningContext *)v2 workflowIdentifier];
  v4 = [(WFWorkflowRunningContext *)v2 initWithWorkflowIdentifier:v3];

  v5 = [(WFWorkflowRunningContext *)v2 automationType];
  [(WFWorkflowRunningContext *)v4 setAutomationType:v5];

  v6 = [(WFWorkflowRunningContext *)v2 rootWorkflowIdentifier];
  [(WFWorkflowRunningContext *)v4 setRootWorkflowIdentifier:v6];

  v7 = [(WFWorkflowRunningContext *)v2 runSource];
  [(WFWorkflowRunningContext *)v4 setRunSource:v7];

  v8 = [(WFWorkflowRunningContext *)v2 runKind];
  [(WFWorkflowRunningContext *)v4 setRunKind:v8];

  [(WFWorkflowRunningContext *)v4 setOutputBehavior:[(WFWorkflowRunningContext *)v2 outputBehavior]];
  v9 = [(WFWorkflowRunningContext *)v2 originatingBundleIdentifier];
  [(WFWorkflowRunningContext *)v4 setOriginatingBundleIdentifier:v9];

  [(WFWorkflowRunningContext *)v4 setAllowsDialogNotifications:[(WFWorkflowRunningContext *)v2 allowsDialogNotifications]];
  v10 = [(WFWorkflowRunningContext *)v2 contextualAction];
  [(WFWorkflowRunningContext *)v4 setContextualAction:v10];

  v11 = [(WFWorkflowRunningContext *)v2 contextualActionContext];
  [(WFWorkflowRunningContext *)v4 setContextualActionContext:v11];

  v12 = [(WFWorkflowRunningContext *)v2 runViewSource];
  [(WFWorkflowRunningContext *)v4 setRunViewSource:v12];

  [(WFWorkflowRunningContext *)v4 setStepwise:[(WFWorkflowRunningContext *)v2 isStepwise]];
  [(WFWorkflowRunningContext *)v4 setShouldForwardDialogRequests:[(WFWorkflowRunningContext *)v2 shouldForwardDialogRequests]];
  [(WFWorkflowRunningContext *)v4 setShouldForwardSiriActionRequests:[(WFWorkflowRunningContext *)v2 shouldForwardSiriActionRequests]];
  [(WFWorkflowRunningContext *)v4 setRunningInPersistentMode:[(WFWorkflowRunningContext *)v2 isRunningInPersistentMode]];
  v13 = [(WFWorkflowRunningContext *)v2 locale];
  [(WFWorkflowRunningContext *)v4 setLocale:v13];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFWorkflowRunningContext *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(WFWorkflowRunningContext *)self workflowIdentifier];
  v8 = [v7 copy];
  [v4 setWorkflowIdentifier:v8];

  v9 = [(WFWorkflowRunningContext *)self creationDate];
  [v4 setCreationDate:v9];

  v10 = [(WFWorkflowRunningContext *)self automationType];
  [v4 setAutomationType:v10];

  v11 = [(WFWorkflowRunningContext *)self rootWorkflowIdentifier];
  [v4 setRootWorkflowIdentifier:v11];

  v12 = [(WFWorkflowRunningContext *)self runSource];
  [v4 setRunSource:v12];

  v13 = [(WFWorkflowRunningContext *)self runKind];
  [v4 setRunKind:v13];

  [v4 setOutputBehavior:{-[WFWorkflowRunningContext outputBehavior](self, "outputBehavior")}];
  v14 = [(WFWorkflowRunningContext *)self originatingBundleIdentifier];
  [v4 setOriginatingBundleIdentifier:v14];

  v15 = [(WFWorkflowRunningContext *)self runViewSource];
  [v4 setRunViewSource:v15];

  [v4 setStepwise:{-[WFWorkflowRunningContext isStepwise](self, "isStepwise")}];
  [v4 setShouldForwardDialogRequests:{-[WFWorkflowRunningContext shouldForwardDialogRequests](self, "shouldForwardDialogRequests")}];
  [v4 setShouldForwardSiriActionRequests:{-[WFWorkflowRunningContext shouldForwardSiriActionRequests](self, "shouldForwardSiriActionRequests")}];
  [v4 setRunningInPersistentMode:{-[WFWorkflowRunningContext isRunningInPersistentMode](self, "isRunningInPersistentMode")}];
  v16 = [(WFWorkflowRunningContext *)self locale];
  [v4 setLocale:v16];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowRunningContext *)self identifier];
  v7 = [(WFWorkflowRunningContext *)self workflowIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, id: %@, workflow id: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WFWorkflowRunningContext *)self identifier];
      v7 = [(WFWorkflowRunningContext *)v5 identifier];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WFWorkflowRunningContext *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)progressForPublishingWithTotalUnitCount:(int64_t)a3 cancellationHandler:(id)a4
{
  v6 = MEMORY[0x1E696AE38];
  v7 = a4;
  v8 = [v6 progressWithTotalUnitCount:a3];
  [v8 setCancellationHandler:v7];

  [v8 setUserInfoObject:@"com.apple.shortcuts.progress" forKey:*MEMORY[0x1E696A7F8]];
  v9 = [(WFWorkflowRunningContext *)self identifier];
  [v8 setUserInfoObject:v9 forKey:@"contextIdentifier"];

  v10 = [(WFWorkflowRunningContext *)self workflowIdentifier];
  [v8 setUserInfoObject:v10 forKey:@"workflowIdentifier"];

  [v8 setUserInfoObject:&unk_1F2931338 forKey:@"runningState"];
  [v8 publish];

  return v8;
}

- (id)addProgressSubscriberUsingPublishingHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE38];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__WFWorkflowRunningContext_addProgressSubscriberUsingPublishingHandler___block_invoke;
  v9[3] = &unk_1E7B02308;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _addSubscriberForCategory:@"com.apple.shortcuts.progress" usingPublishingHandler:v9];

  return v7;
}

id __72__WFWorkflowRunningContext_addProgressSubscriberUsingPublishingHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"contextIdentifier"];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFWorkflowRunningContext)initWithWorkflowIdentifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WFWorkflowRunningContext;
  v5 = [(WFWorkflowRunningContext *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 copy];
    workflowIdentifier = v5->_workflowIdentifier;
    v5->_workflowIdentifier = v9;

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.shortcuts.%@", v5->_identifier];
    progressCategory = v5->_progressCategory;
    v5->_progressCategory = v11;

    v13 = [MEMORY[0x1E695DF00] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = v13;

    v5->_allowsDialogNotifications = 1;
    v5->_outputBehavior = 0;
    *&v5->_stepwise = 0;
    v5->_shouldForwardDialogRequests = 0;
    v15 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    locale = v5->_locale;
    v5->_locale = v15;

    v5->_runningInPersistentMode = 1;
    v17 = v5;
  }

  return v5;
}

@end