@interface WFOpenUserActivityAction
+ (id)userActivityActionWithShortcut:(id)shortcut launchOrigin:(id)origin error:(id *)error;
+ (void)createActionWithIntent:(id)intent completionHandler:(id)handler;
+ (void)createActionWithUserActivity:(id)activity appBundleIdentifier:(id)identifier launchOrigin:(id)origin completionHandler:(id)handler;
- (NSString)associatedAppBundleIdentifier;
- (WFOpenUserActivityAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)appDescriptor;
- (id)contentDestinationWithError:(id *)error;
- (id)disabledPlatformsForUserActivityWithType:(id)type;
- (id)localizedNameWithContext:(id)context;
- (id)metricsIdentifier;
- (id)serializedParameters;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)generateShortcutRepresentation:(id)representation;
- (void)generateStandaloneShortcutRepresentation:(id)representation;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setDescriptor:(id)descriptor;
- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)app;
- (void)updateAppDescriptorWithSelectedApp:(id)app;
@end

@implementation WFOpenUserActivityAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v8 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  destinationCopy = destination;
  if (descriptionCopy)
  {
    v11 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v8 localizedStringWithFormat:v11, nameCopy, descriptionCopy, destinationCopy];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%@” to run actions from “%@”?");
    [v8 localizedStringWithFormat:v11, nameCopy, destinationCopy, v14];
  }
  v12 = ;

  return v12;
}

- (id)contentDestinationWithError:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  appDescriptor = [(WFOpenUserActivityAction *)self appDescriptor];
  if (appDescriptor)
  {
    v5 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:appDescriptor];
  }

  else
  {
    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "[WFOpenUserActivityAction contentDestinationWithError:]";
      v11 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Could not get appDescriptor for user activity action: %{public}@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)disabledPlatformsForUserActivityWithType:(id)type
{
  v30[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v6 = typeCopy;
  if (typeCopy)
  {
    v7 = typeCopy;
    if (v7 == @"com.apple.Safari.UserActivity.Bookmarks")
    {
      goto LABEL_20;
    }

    v8 = v7;
    v9 = [(__CFString *)v7 isEqualToString:@"com.apple.Safari.UserActivity.Bookmarks"];

    if (v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOpenUserActivityAction.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v10 = *MEMORY[0x1E696AA68];
  v11 = v6;
  v12 = v11;
  if (v10 == v11)
  {

LABEL_20:
    v30[0] = @"Watch";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    goto LABEL_21;
  }

  if (v11 && v10)
  {
    v13 = [v11 isEqualToString:v10];

    if (v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = v12;
  if (v14 == @"com.apple.Safari.UserActivity.ReadingList")
  {
    goto LABEL_20;
  }

  if (v6)
  {
    v15 = v14;
    v16 = [(__CFString *)v14 isEqualToString:@"com.apple.Safari.UserActivity.ReadingList"];

    if (v16)
    {
      goto LABEL_20;
    }

    v17 = v15;
    if (v17 == @"com.apple.calendar.continuity.event_selection")
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = [(__CFString *)v17 isEqualToString:@"com.apple.calendar.continuity.event_selection"];

    if (v19)
    {
      goto LABEL_20;
    }

    v20 = v18;
    if (v20 == @"com.apple.calendar.continuity.date_selection")
    {
      goto LABEL_20;
    }

    v21 = v20;
    v22 = [(__CFString *)v20 isEqualToString:@"com.apple.calendar.continuity.date_selection"];

    if (v22)
    {
      goto LABEL_20;
    }

    v23 = v21;
    if (v23 == @"com.apple.mobileslideshow.album")
    {
      goto LABEL_20;
    }

    v24 = v23;
    v25 = [(__CFString *)v23 isEqualToString:@"com.apple.mobileslideshow.album"];

    if (v25)
    {
      goto LABEL_20;
    }
  }

  v26 = MEMORY[0x1E695E0F0];
LABEL_21:

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)metricsIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(WFAction *)self identifier];
  userActivity = [(WFOpenUserActivityAction *)self userActivity];
  _teamIdentifier = [userActivity _teamIdentifier];
  userActivity2 = [(WFOpenUserActivityAction *)self userActivity];
  activityType = [userActivity2 activityType];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", identifier, _teamIdentifier, activityType];

  return v9;
}

- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)app
{
  appCopy = app;
  workflow = [(WFAction *)self workflow];
  actions = [workflow actions];

  v6 = [actions indexOfObject:self];
  descriptor = [(WFOpenUserActivityAction *)self descriptor];
  v8 = [descriptor descriptorWithAppDescriptor:appCopy];

  v9 = +[WFDatabaseProxy defaultDatabase];
  uUID = [(WFAction *)self UUID];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  identifier = [(WFAction *)self identifier];
  workflow2 = [(WFAction *)self workflow];
  workflowID = [workflow2 workflowID];
  [v9 updateAppDescriptor:v8 atKey:@"UserActivityDescriptor" actionUUID:uUID actionIndex:v11 actionIdentifier:identifier workflowID:workflowID error:0];
}

- (void)updateAppDescriptorWithSelectedApp:(id)app
{
  appCopy = app;
  descriptor = [(WFOpenUserActivityAction *)self descriptor];
  v6 = [descriptor descriptorWithAppDescriptor:appCopy];
  [(WFOpenUserActivityAction *)self setDescriptor:v6];

  v7.receiver = self;
  v7.super_class = WFOpenUserActivityAction;
  [(WFAction *)&v7 updateAppDescriptorWithSelectedApp:appCopy];
}

- (void)setDescriptor:(id)descriptor
{
  objc_storeStrong(&self->_descriptor, descriptor);
  descriptorCopy = descriptor;
  serializedRepresentation = [descriptorCopy serializedRepresentation];

  [(WFAction *)self setSupplementalParameterValue:serializedRepresentation forKey:@"UserActivityDescriptor"];
}

- (id)appDescriptor
{
  descriptor = [(WFOpenUserActivityAction *)self descriptor];
  appDescriptor = [descriptor appDescriptor];

  return appDescriptor;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  activityData = [(WFOpenUserActivityAction *)self activityData];
  if ([activityData length] && (-[WFOpenUserActivityAction descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:activityData];
    [v6 _setExecutionContext:7];
    userInterface = [(WFAction *)self userInterface];
    if ([userInterface isRunningWithSiriUI])
    {
      userInterface2 = [(WFAction *)self userInterface];
      executionContext = [userInterface2 executionContext];

      if (executionContext <= 9 && ((1 << executionContext) & 0x206) != 0)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __55__WFOpenUserActivityAction_runAsynchronouslyWithInput___block_invoke;
        v15[3] = &unk_1E83754C0;
        v15[4] = self;
        [v6 _createUserActivityDataWithOptions:0 completionHandler:v15];
      }
    }

    else
    {
    }

    v10 = objc_alloc(MEMORY[0x1E6996CA0]);
    descriptor = [(WFOpenUserActivityAction *)self descriptor];
    bundleIdentifier = [descriptor bundleIdentifier];
    v13 = [v10 initWithBundleIdentifier:bundleIdentifier options:0 URL:0 userActivity:v6];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__WFOpenUserActivityAction_runAsynchronouslyWithInput___block_invoke_220;
    v14[3] = &unk_1E8379BE0;
    v14[4] = self;
    [v13 performWithCompletionHandler:v14];
  }

  else
  {
    [(WFAction *)self finishRunningWithError:0];
  }
}

void __55__WFOpenUserActivityAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69E0D28]);
    v7 = [*(a1 + 32) descriptor];
    v8 = [v7 bundleIdentifier];
    v9 = [v6 initWithUserActivityData:v5 andBundleIdentifier:v8];

    v10 = [*(a1 + 32) userInterface];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__WFOpenUserActivityAction_runAsynchronouslyWithInput___block_invoke_2;
    v13[3] = &unk_1E8377278;
    v13[4] = *(a1 + 32);
    LOBYTE(v8) = [v10 performSiriRequest:v9 completionHandler:v13];

    if ((v8 & 1) == 0)
    {
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      [v11 finishRunningWithError:v12];
    }
  }
}

void __55__WFOpenUserActivityAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *(a1 + 32);
    v5 = [v3 error];
    [v4 finishRunningWithError:v5];

    v6 = v3;
  }

  else
  {

    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315394;
      v12 = "[WFOpenUserActivityAction runAsynchronouslyWithInput:]_block_invoke_2";
      v13 = 2112;
      v14 = objc_opt_class();
      v8 = v14;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v11, 0x16u);
    }

    v9 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v9 finishRunningWithError:v6];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  userActivity = [(WFOpenUserActivityAction *)self userActivity];
  title = [userActivity title];
  v7 = title;
  if (title)
  {
    v8 = title;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFOpenUserActivityAction;
    v8 = [(WFAction *)&v11 localizedNameWithContext:contextCopy];
  }

  v9 = v8;

  return v9;
}

- (void)generateStandaloneShortcutRepresentation:(id)representation
{
  representationCopy = representation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__WFOpenUserActivityAction_generateStandaloneShortcutRepresentation___block_invoke;
  v6[3] = &unk_1E8375498;
  v7 = representationCopy;
  v5 = representationCopy;
  [(WFOpenUserActivityAction *)self generateShortcutRepresentation:v6];
}

void __69__WFOpenUserActivityAction_generateStandaloneShortcutRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFStandaloneShortcutRepresentation alloc] initWithINShortcut:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)generateShortcutRepresentation:(id)representation
{
  representationCopy = representation;
  activityImageData = [(WFOpenUserActivityAction *)self activityImageData];
  if ([activityImageData length])
  {
    v6 = MEMORY[0x1E696E868];
    activityImageData2 = [(WFOpenUserActivityAction *)self activityImageData];
    v14 = [v6 imageWithImageData:activityImageData2];
  }

  else
  {
    v14 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E696EA38]);
  activityData = [(WFOpenUserActivityAction *)self activityData];
  activitySubtitle = [(WFOpenUserActivityAction *)self activitySubtitle];
  descriptor = [(WFOpenUserActivityAction *)self descriptor];
  bundleIdentifier = [descriptor bundleIdentifier];
  v13 = [v8 initWithActivityData:activityData activityImage:v14 activitySubtitle:activitySubtitle activityBundleIdentifier:bundleIdentifier];
  representationCopy[2](representationCopy, v13, 0);
}

- (NSString)associatedAppBundleIdentifier
{
  descriptor = [(WFOpenUserActivityAction *)self descriptor];
  bundleIdentifier = [descriptor bundleIdentifier];
  v4 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();

  return v4;
}

- (id)serializedParameters
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v14.receiver = self;
  v14.super_class = WFOpenUserActivityAction;
  serializedParameters = [(WFAction *)&v14 serializedParameters];
  v5 = [v3 initWithDictionary:serializedParameters];

  activityData = [(WFOpenUserActivityAction *)self activityData];
  [v5 setValue:activityData forKey:@"UserActivityData"];

  activityImageData = [(WFOpenUserActivityAction *)self activityImageData];
  [v5 setValue:activityImageData forKey:@"UserActivityImageData"];

  activitySubtitle = [(WFOpenUserActivityAction *)self activitySubtitle];
  [v5 setValue:activitySubtitle forKey:@"UserActivitySubtitle"];

  bundleIdentifier = [(WFOpenUserActivityAction *)self bundleIdentifier];
  [v5 setValue:bundleIdentifier forKey:@"AppBundleIdentifier"];

  launchOrigin = [(WFOpenUserActivityAction *)self launchOrigin];
  [v5 setValue:launchOrigin forKey:@"LaunchOrigin"];

  descriptor = [(WFOpenUserActivityAction *)self descriptor];
  serializedRepresentation = [descriptor serializedRepresentation];
  [v5 setValue:serializedRepresentation forKey:@"UserActivityDescriptor"];

  return v5;
}

- (WFOpenUserActivityAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  definitionCopy = definition;
  v9 = [parameters mutableCopy];
  v10 = [v9 wf_popObjectForKey:@"UserActivityData"];
  v11 = objc_opt_class();
  v12 = WFEnforceClass_9663(v10, v11);

  v13 = [v9 wf_popObjectForKey:@"UserActivityImageData"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_9663(v13, v14);

  v16 = [v9 wf_popObjectForKey:@"UserActivitySubtitle"];
  v17 = objc_opt_class();
  v18 = WFEnforceClass_9663(v16, v17);

  v19 = [v9 wf_popObjectForKey:@"AppBundleIdentifier"];
  v20 = objc_opt_class();
  v21 = WFEnforceClass_9663(v19, v20);

  v22 = [v9 wf_popObjectForKey:@"LaunchOrigin"];
  v23 = objc_opt_class();
  v64 = WFEnforceClass_9663(v22, v23);

  v24 = [v9 wf_popObjectForKey:@"UserActivityDescriptor"];
  v25 = objc_opt_class();
  v26 = WFEnforceClass_9663(v24, v25);

  v63 = v26;
  if (!v12)
  {
    v28 = 0;
    v65 = 0;
    goto LABEL_13;
  }

  v27 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:v12];
  v28 = v27;
  if (v26 && v27)
  {
    v62 = v15;
    v29 = [objc_alloc(MEMORY[0x1E696EAD8]) initWithSerializedRepresentation:v26];
    mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
    v65 = [mEMORY[0x1E696E748] resolvedUserActivityMatchingDescriptor:v29];
    goto LABEL_11;
  }

  v65 = 0;
  if (!v26 && v21 && v27)
  {
    v29 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v21 allowPlaceholder:1 error:0];
    if (!v29)
    {
      v65 = 0;
      goto LABEL_12;
    }

    v62 = v15;
    mEMORY[0x1E696E748] = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v29];
    v66 = objc_alloc(MEMORY[0x1E696EAD8]);
    activityType = [v28 activityType];
    localizedName = [mEMORY[0x1E696E748] localizedName];
    bundleIdentifier = [mEMORY[0x1E696E748] bundleIdentifier];
    extensionBundleIdentifier = [mEMORY[0x1E696E748] extensionBundleIdentifier];
    counterpartIdentifiers = [mEMORY[0x1E696E748] counterpartIdentifiers];
    teamIdentifier = [mEMORY[0x1E696E748] teamIdentifier];
    supportedIntents = [mEMORY[0x1E696E748] supportedIntents];
    [mEMORY[0x1E696E748] bundleURL];
    v32 = v55 = v18;
    v65 = [v66 initWithUserActivityType:activityType localizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:v32];

    v18 = v55;
LABEL_11:

    v15 = v62;
LABEL_12:
  }

LABEL_13:
  activityType2 = [v28 activityType];

  if (activityType2)
  {
    activityType3 = [v28 activityType];
    [(WFOpenUserActivityAction *)self disabledPlatformsForUserActivityWithType:activityType3];
    selfCopy = self;
    v36 = v12;
    v37 = v21;
    v38 = v18;
    v40 = v39 = v15;

    v41 = WFInjectDisabledPlatformsInActionDefinition(v40, definitionCopy);

    v15 = v39;
    v18 = v38;
    v21 = v37;
    v12 = v36;
    self = selfCopy;
    definitionCopy = v41;
  }

  v68.receiver = self;
  v68.super_class = WFOpenUserActivityAction;
  v42 = [(WFAction *)&v68 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:v9];
  if (v42)
  {
    v43 = [v12 copy];
    activityData = v42->_activityData;
    v42->_activityData = v43;

    objc_storeStrong(&v42->_userActivity, v28);
    v45 = [v15 copy];
    activityImageData = v42->_activityImageData;
    v42->_activityImageData = v45;

    v47 = [v18 copy];
    activitySubtitle = v42->_activitySubtitle;
    v42->_activitySubtitle = v47;

    v49 = [v21 copy];
    bundleIdentifier = v42->_bundleIdentifier;
    v42->_bundleIdentifier = v49;

    objc_storeStrong(&v42->_descriptor, v65);
    v51 = [v64 copy];
    launchOrigin = v42->_launchOrigin;
    v42->_launchOrigin = v51;

    v53 = v42;
  }

  return v42;
}

+ (id)userActivityActionWithShortcut:(id)shortcut launchOrigin:(id)origin error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  originCopy = origin;
  activityData = [shortcutCopy activityData];
  if (![activityData length])
  {
    if (error)
    {
      v52 = *MEMORY[0x1E696A588];
      v53[0] = @"Could not create action because the user activity data was empty";
      v12 = MEMORY[0x1E695DF20];
      v13 = v53;
      v14 = &v52;
LABEL_6:
      v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v15];
    }

LABEL_7:
    v16 = 0;
    goto LABEL_15;
  }

  userActivity = [shortcutCopy userActivity];
  title = [userActivity title];
  if (![title length])
  {
    userActivity2 = [shortcutCopy userActivity];
    interaction = [userActivity2 interaction];

    if (interaction)
    {
      goto LABEL_9;
    }

    if (error)
    {
      v50 = *MEMORY[0x1E696A588];
      v51 = @"Could not create action because the user activity title was empty";
      v12 = MEMORY[0x1E695DF20];
      v13 = &v51;
      v14 = &v50;
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_9:
  v19 = objc_opt_new();
  [v19 setValue:activityData forKey:@"UserActivityData"];
  activityImage = [shortcutCopy activityImage];
  _imageData = [activityImage _imageData];
  [v19 setValue:_imageData forKey:@"UserActivityImageData"];

  activitySubtitle = [shortcutCopy activitySubtitle];
  [v19 setValue:activitySubtitle forKey:@"UserActivitySubtitle"];

  activityBundleIdentifier = [shortcutCopy activityBundleIdentifier];
  [v19 setValue:activityBundleIdentifier forKey:@"AppBundleIdentifier"];

  [v19 setValue:originCopy forKey:@"LaunchOrigin"];
  v24 = objc_alloc(MEMORY[0x1E69635F8]);
  activityBundleIdentifier2 = [shortcutCopy activityBundleIdentifier];
  v26 = [v24 initWithBundleIdentifier:activityBundleIdentifier2 allowPlaceholder:1 error:0];

  if (v26)
  {
    v48 = activityData;
    v49 = originCopy;
    v45 = shortcutCopy;
    if (activityData)
    {
      v27 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:activityData];
    }

    else
    {
      v27 = 0;
    }

    v46 = v27;
    v28 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v26];
    v44 = objc_alloc(MEMORY[0x1E696EAD8]);
    activityType = [v27 activityType];
    localizedName = [v28 localizedName];
    bundleIdentifier = [v28 bundleIdentifier];
    extensionBundleIdentifier = [v28 extensionBundleIdentifier];
    counterpartIdentifiers = [v28 counterpartIdentifiers];
    [v28 teamIdentifier];
    v33 = v47 = v26;
    supportedIntents = [v28 supportedIntents];
    bundleURL = [v28 bundleURL];
    v36 = [v44 initWithUserActivityType:activityType localizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:v33 supportedIntents:supportedIntents bundleURL:bundleURL];

    v26 = v47;
    serializedRepresentation = [v36 serializedRepresentation];
    [v19 setValue:serializedRepresentation forKey:@"UserActivityDescriptor"];

    activityData = v48;
    originCopy = v49;
    shortcutCopy = v45;
  }

  v38 = +[WFActionRegistry sharedRegistry];
  v39 = [v38 createActionWithIdentifier:@"is.workflow.actions.useractivity.open" serializedParameters:v19];

  v40 = objc_opt_class();
  v16 = WFEnforceClass_9663(v39, v40);

LABEL_15:
  v41 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)createActionWithIntent:(id)intent completionHandler:(id)handler
{
  intentCopy = intent;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!intentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLOpenUserActivityAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"intent"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLOpenUserActivityAction.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithIntent:intentCopy];
  launchId = [intentCopy launchId];
  INExtractAppInfoFromSiriLaunchId();
  v12 = 0;

  [self createActionWithUserActivity:v10 appBundleIdentifier:v12 launchOrigin:0 completionHandler:v9];
}

+ (void)createActionWithUserActivity:(id)activity appBundleIdentifier:(id)identifier launchOrigin:(id)origin completionHandler:(id)handler
{
  activityCopy = activity;
  identifierCopy = identifier;
  originCopy = origin;
  handlerCopy = handler;
  if ([identifierCopy length])
  {
    v13 = [objc_alloc(MEMORY[0x1E696EA38]) initWithUserActivity:activityCopy bundleIdentifier:identifierCopy];
    v16 = 0;
    v14 = [WFOpenUserActivityAction userActivityActionWithShortcut:v13 launchOrigin:originCopy error:&v16];
    v15 = v16;
    handlerCopy[2](handlerCopy, v14, v15);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

@end