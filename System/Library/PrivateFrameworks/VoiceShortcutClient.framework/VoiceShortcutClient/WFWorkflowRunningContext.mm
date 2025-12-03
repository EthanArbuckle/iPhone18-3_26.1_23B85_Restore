@interface WFWorkflowRunningContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isShortcutsApp;
- (WFWorkflowRunningContext)initWithCoder:(id)coder;
- (WFWorkflowRunningContext)initWithWorkflowIdentifier:(id)identifier;
- (id)addProgressSubscriberUsingPublishingHandler:(id)handler;
- (id)copyWithCustomIdentity:(id)identity;
- (id)copyWithNewIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)progressForPublishingWithTotalUnitCount:(int64_t)count cancellationHandler:(id)handler;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowRunningContext

- (BOOL)isShortcutsApp
{
  originatingBundleIdentifier = [(WFWorkflowRunningContext *)self originatingBundleIdentifier];
  v3 = VCIsShortcutsAppBundleIdentifier(originatingBundleIdentifier);

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFWorkflowRunningContext *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  workflowIdentifier = [(WFWorkflowRunningContext *)self workflowIdentifier];
  [coderCopy encodeObject:workflowIdentifier forKey:@"workflowIdentifier"];

  progressCategory = [(WFWorkflowRunningContext *)self progressCategory];
  [coderCopy encodeObject:progressCategory forKey:@"progressCategory"];

  creationDate = [(WFWorkflowRunningContext *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  originatingBundleIdentifier = [(WFWorkflowRunningContext *)self originatingBundleIdentifier];
  [coderCopy encodeObject:originatingBundleIdentifier forKey:@"originatingBundleIdentifier"];

  [coderCopy encodeBool:-[WFWorkflowRunningContext allowsDialogNotifications](self forKey:{"allowsDialogNotifications"), @"allowsDialogNotifications"}];
  automationType = [(WFWorkflowRunningContext *)self automationType];
  [coderCopy encodeObject:automationType forKey:@"automationType"];

  rootWorkflowIdentifier = [(WFWorkflowRunningContext *)self rootWorkflowIdentifier];
  [coderCopy encodeObject:rootWorkflowIdentifier forKey:@"rootWorkflowIdentifier"];

  runSource = [(WFWorkflowRunningContext *)self runSource];
  [coderCopy encodeObject:runSource forKey:@"runSource"];

  runKind = [(WFWorkflowRunningContext *)self runKind];
  [coderCopy encodeObject:runKind forKey:@"runKind"];

  [coderCopy encodeInteger:-[WFWorkflowRunningContext outputBehavior](self forKey:{"outputBehavior"), @"outputBehavior"}];
  [coderCopy encodeInteger:-[WFWorkflowRunningContext presentationMode](self forKey:{"presentationMode"), @"presentationMode"}];
  runViewSource = [(WFWorkflowRunningContext *)self runViewSource];
  [coderCopy encodeObject:runViewSource forKey:@"runViewSource"];

  [coderCopy encodeBool:-[WFWorkflowRunningContext isStepwise](self forKey:{"isStepwise"), @"stepwise"}];
  [coderCopy encodeBool:-[WFWorkflowRunningContext shouldForwardDialogRequests](self forKey:{"shouldForwardDialogRequests"), @"shouldForwardDialogRequests"}];
  [coderCopy encodeBool:-[WFWorkflowRunningContext shouldForwardSiriActionRequests](self forKey:{"shouldForwardSiriActionRequests"), @"shouldForwardSiriActionRequests"}];
  [coderCopy encodeBool:-[WFWorkflowRunningContext isRunningInPersistentMode](self forKey:{"isRunningInPersistentMode"), @"runningInPersistentMode"}];
  [coderCopy encodeObject:@"locale"];
}

- (WFWorkflowRunningContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = WFWorkflowRunningContext;
  v5 = [(WFWorkflowRunningContext *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowIdentifier"];
    workflowIdentifier = v5->_workflowIdentifier;
    v5->_workflowIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progressCategory"];
    progressCategory = v5->_progressCategory;
    v5->_progressCategory = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automationType"];
    automationType = v5->_automationType;
    v5->_automationType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rootWorkflowIdentifier"];
    rootWorkflowIdentifier = v5->_rootWorkflowIdentifier;
    v5->_rootWorkflowIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingBundleIdentifier"];
    originatingBundleIdentifier = v5->_originatingBundleIdentifier;
    v5->_originatingBundleIdentifier = v18;

    v5->_allowsDialogNotifications = [coderCopy decodeBoolForKey:@"allowsDialogNotifications"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runSource"];
    runSource = v5->_runSource;
    v5->_runSource = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runKind"];
    runKind = v5->_runKind;
    v5->_runKind = v22;

    v5->_outputBehavior = [coderCopy decodeIntegerForKey:@"outputBehavior"];
    v5->_presentationMode = [coderCopy decodeIntegerForKey:@"presentationMode"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runViewSource"];
    runViewSource = v5->_runViewSource;
    v5->_runViewSource = v24;

    v5->_stepwise = [coderCopy decodeBoolForKey:@"stepwise"];
    v5->_shouldForwardDialogRequests = [coderCopy decodeBoolForKey:@"shouldForwardDialogRequests"];
    v5->_shouldForwardSiriActionRequests = [coderCopy decodeBoolForKey:@"shouldForwardSiriActionRequests"];
    v5->_runningInPersistentMode = [coderCopy decodeBoolForKey:@"runningInPersistentMode"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v26;

    v28 = v5;
  }

  return v5;
}

- (id)copyWithCustomIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(WFWorkflowRunningContext *)self copy];
  v6 = [identityCopy copy];

  [v5 setIdentifier:v6];
  return v5;
}

- (id)copyWithNewIdentity
{
  selfCopy = self;
  workflowIdentifier = [(WFWorkflowRunningContext *)selfCopy workflowIdentifier];
  v4 = [(WFWorkflowRunningContext *)selfCopy initWithWorkflowIdentifier:workflowIdentifier];

  automationType = [(WFWorkflowRunningContext *)selfCopy automationType];
  [(WFWorkflowRunningContext *)v4 setAutomationType:automationType];

  rootWorkflowIdentifier = [(WFWorkflowRunningContext *)selfCopy rootWorkflowIdentifier];
  [(WFWorkflowRunningContext *)v4 setRootWorkflowIdentifier:rootWorkflowIdentifier];

  runSource = [(WFWorkflowRunningContext *)selfCopy runSource];
  [(WFWorkflowRunningContext *)v4 setRunSource:runSource];

  runKind = [(WFWorkflowRunningContext *)selfCopy runKind];
  [(WFWorkflowRunningContext *)v4 setRunKind:runKind];

  [(WFWorkflowRunningContext *)v4 setOutputBehavior:[(WFWorkflowRunningContext *)selfCopy outputBehavior]];
  originatingBundleIdentifier = [(WFWorkflowRunningContext *)selfCopy originatingBundleIdentifier];
  [(WFWorkflowRunningContext *)v4 setOriginatingBundleIdentifier:originatingBundleIdentifier];

  [(WFWorkflowRunningContext *)v4 setAllowsDialogNotifications:[(WFWorkflowRunningContext *)selfCopy allowsDialogNotifications]];
  contextualAction = [(WFWorkflowRunningContext *)selfCopy contextualAction];
  [(WFWorkflowRunningContext *)v4 setContextualAction:contextualAction];

  contextualActionContext = [(WFWorkflowRunningContext *)selfCopy contextualActionContext];
  [(WFWorkflowRunningContext *)v4 setContextualActionContext:contextualActionContext];

  runViewSource = [(WFWorkflowRunningContext *)selfCopy runViewSource];
  [(WFWorkflowRunningContext *)v4 setRunViewSource:runViewSource];

  [(WFWorkflowRunningContext *)v4 setStepwise:[(WFWorkflowRunningContext *)selfCopy isStepwise]];
  [(WFWorkflowRunningContext *)v4 setShouldForwardDialogRequests:[(WFWorkflowRunningContext *)selfCopy shouldForwardDialogRequests]];
  [(WFWorkflowRunningContext *)v4 setShouldForwardSiriActionRequests:[(WFWorkflowRunningContext *)selfCopy shouldForwardSiriActionRequests]];
  [(WFWorkflowRunningContext *)v4 setRunningInPersistentMode:[(WFWorkflowRunningContext *)selfCopy isRunningInPersistentMode]];
  locale = [(WFWorkflowRunningContext *)selfCopy locale];
  [(WFWorkflowRunningContext *)v4 setLocale:locale];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WFWorkflowRunningContext *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  workflowIdentifier = [(WFWorkflowRunningContext *)self workflowIdentifier];
  v8 = [workflowIdentifier copy];
  [v4 setWorkflowIdentifier:v8];

  creationDate = [(WFWorkflowRunningContext *)self creationDate];
  [v4 setCreationDate:creationDate];

  automationType = [(WFWorkflowRunningContext *)self automationType];
  [v4 setAutomationType:automationType];

  rootWorkflowIdentifier = [(WFWorkflowRunningContext *)self rootWorkflowIdentifier];
  [v4 setRootWorkflowIdentifier:rootWorkflowIdentifier];

  runSource = [(WFWorkflowRunningContext *)self runSource];
  [v4 setRunSource:runSource];

  runKind = [(WFWorkflowRunningContext *)self runKind];
  [v4 setRunKind:runKind];

  [v4 setOutputBehavior:{-[WFWorkflowRunningContext outputBehavior](self, "outputBehavior")}];
  originatingBundleIdentifier = [(WFWorkflowRunningContext *)self originatingBundleIdentifier];
  [v4 setOriginatingBundleIdentifier:originatingBundleIdentifier];

  runViewSource = [(WFWorkflowRunningContext *)self runViewSource];
  [v4 setRunViewSource:runViewSource];

  [v4 setStepwise:{-[WFWorkflowRunningContext isStepwise](self, "isStepwise")}];
  [v4 setShouldForwardDialogRequests:{-[WFWorkflowRunningContext shouldForwardDialogRequests](self, "shouldForwardDialogRequests")}];
  [v4 setShouldForwardSiriActionRequests:{-[WFWorkflowRunningContext shouldForwardSiriActionRequests](self, "shouldForwardSiriActionRequests")}];
  [v4 setRunningInPersistentMode:{-[WFWorkflowRunningContext isRunningInPersistentMode](self, "isRunningInPersistentMode")}];
  locale = [(WFWorkflowRunningContext *)self locale];
  [v4 setLocale:locale];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFWorkflowRunningContext *)self identifier];
  workflowIdentifier = [(WFWorkflowRunningContext *)self workflowIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, id: %@, workflow id: %@>", v5, self, identifier, workflowIdentifier];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(WFWorkflowRunningContext *)self identifier];
      identifier2 = [(WFWorkflowRunningContext *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
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
  identifier = [(WFWorkflowRunningContext *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)progressForPublishingWithTotalUnitCount:(int64_t)count cancellationHandler:(id)handler
{
  v6 = MEMORY[0x1E696AE38];
  handlerCopy = handler;
  v8 = [v6 progressWithTotalUnitCount:count];
  [v8 setCancellationHandler:handlerCopy];

  [v8 setUserInfoObject:@"com.apple.shortcuts.progress" forKey:*MEMORY[0x1E696A7F8]];
  identifier = [(WFWorkflowRunningContext *)self identifier];
  [v8 setUserInfoObject:identifier forKey:@"contextIdentifier"];

  workflowIdentifier = [(WFWorkflowRunningContext *)self workflowIdentifier];
  [v8 setUserInfoObject:workflowIdentifier forKey:@"workflowIdentifier"];

  [v8 setUserInfoObject:&unk_1F2931338 forKey:@"runningState"];
  [v8 publish];

  return v8;
}

- (id)addProgressSubscriberUsingPublishingHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x1E696AE38];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__WFWorkflowRunningContext_addProgressSubscriberUsingPublishingHandler___block_invoke;
  v9[3] = &unk_1E7B02308;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
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

- (WFWorkflowRunningContext)initWithWorkflowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = WFWorkflowRunningContext;
  v5 = [(WFWorkflowRunningContext *)&v19 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = uUIDString;

    v9 = [identifierCopy copy];
    workflowIdentifier = v5->_workflowIdentifier;
    v5->_workflowIdentifier = v9;

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.shortcuts.%@", v5->_identifier];
    progressCategory = v5->_progressCategory;
    v5->_progressCategory = v11;

    date = [MEMORY[0x1E695DF00] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = date;

    v5->_allowsDialogNotifications = 1;
    v5->_outputBehavior = 0;
    *&v5->_stepwise = 0;
    v5->_shouldForwardDialogRequests = 0;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    locale = v5->_locale;
    v5->_locale = autoupdatingCurrentLocale;

    v5->_runningInPersistentMode = 1;
    v17 = v5;
  }

  return v5;
}

@end