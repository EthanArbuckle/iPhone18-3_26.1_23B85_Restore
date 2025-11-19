@interface WFOpenUserActivityAction
+ (id)userActivityActionWithShortcut:(id)a3 launchOrigin:(id)a4 error:(id *)a5;
+ (void)createActionWithIntent:(id)a3 completionHandler:(id)a4;
+ (void)createActionWithUserActivity:(id)a3 appBundleIdentifier:(id)a4 launchOrigin:(id)a5 completionHandler:(id)a6;
- (NSString)associatedAppBundleIdentifier;
- (WFOpenUserActivityAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)appDescriptor;
- (id)contentDestinationWithError:(id *)a3;
- (id)disabledPlatformsForUserActivityWithType:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)metricsIdentifier;
- (id)serializedParameters;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)generateShortcutRepresentation:(id)a3;
- (void)generateStandaloneShortcutRepresentation:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)setDescriptor:(id)a3;
- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)a3;
- (void)updateAppDescriptorWithSelectedApp:(id)a3;
@end

@implementation WFOpenUserActivityAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a4;
  if (v7)
  {
    v11 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v8 localizedStringWithFormat:v11, v9, v7, v10];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%@” to run actions from “%@”?");
    [v8 localizedStringWithFormat:v11, v9, v10, v14];
  }
  v12 = ;

  return v12;
}

- (id)contentDestinationWithError:(id *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(WFOpenUserActivityAction *)self appDescriptor];
  if (v4)
  {
    v5 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:v4];
  }

  else
  {
    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "[WFOpenUserActivityAction contentDestinationWithError:]";
      v11 = 2114;
      v12 = self;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Could not get appDescriptor for user activity action: %{public}@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)disabledPlatformsForUserActivityWithType:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
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
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFOpenUserActivityAction.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"type"}];
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
  v4 = [(WFAction *)self identifier];
  v5 = [(WFOpenUserActivityAction *)self userActivity];
  v6 = [v5 _teamIdentifier];
  v7 = [(WFOpenUserActivityAction *)self userActivity];
  v8 = [v7 activityType];
  v9 = [v3 stringWithFormat:@"%@.%@.%@", v4, v6, v8];

  return v9;
}

- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self workflow];
  v15 = [v5 actions];

  v6 = [v15 indexOfObject:self];
  v7 = [(WFOpenUserActivityAction *)self descriptor];
  v8 = [v7 descriptorWithAppDescriptor:v4];

  v9 = +[WFDatabaseProxy defaultDatabase];
  v10 = [(WFAction *)self UUID];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v12 = [(WFAction *)self identifier];
  v13 = [(WFAction *)self workflow];
  v14 = [v13 workflowID];
  [v9 updateAppDescriptor:v8 atKey:@"UserActivityDescriptor" actionUUID:v10 actionIndex:v11 actionIdentifier:v12 workflowID:v14 error:0];
}

- (void)updateAppDescriptorWithSelectedApp:(id)a3
{
  v4 = a3;
  v5 = [(WFOpenUserActivityAction *)self descriptor];
  v6 = [v5 descriptorWithAppDescriptor:v4];
  [(WFOpenUserActivityAction *)self setDescriptor:v6];

  v7.receiver = self;
  v7.super_class = WFOpenUserActivityAction;
  [(WFAction *)&v7 updateAppDescriptorWithSelectedApp:v4];
}

- (void)setDescriptor:(id)a3
{
  objc_storeStrong(&self->_descriptor, a3);
  v5 = a3;
  v6 = [v5 serializedRepresentation];

  [(WFAction *)self setSupplementalParameterValue:v6 forKey:@"UserActivityDescriptor"];
}

- (id)appDescriptor
{
  v2 = [(WFOpenUserActivityAction *)self descriptor];
  v3 = [v2 appDescriptor];

  return v3;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFOpenUserActivityAction *)self activityData];
  if ([v4 length] && (-[WFOpenUserActivityAction descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:v4];
    [v6 _setExecutionContext:7];
    v7 = [(WFAction *)self userInterface];
    if ([v7 isRunningWithSiriUI])
    {
      v8 = [(WFAction *)self userInterface];
      v9 = [v8 executionContext];

      if (v9 <= 9 && ((1 << v9) & 0x206) != 0)
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
    v11 = [(WFOpenUserActivityAction *)self descriptor];
    v12 = [v11 bundleIdentifier];
    v13 = [v10 initWithBundleIdentifier:v12 options:0 URL:0 userActivity:v6];

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

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFOpenUserActivityAction *)self userActivity];
  v6 = [v5 title];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFOpenUserActivityAction;
    v8 = [(WFAction *)&v11 localizedNameWithContext:v4];
  }

  v9 = v8;

  return v9;
}

- (void)generateStandaloneShortcutRepresentation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__WFOpenUserActivityAction_generateStandaloneShortcutRepresentation___block_invoke;
  v6[3] = &unk_1E8375498;
  v7 = v4;
  v5 = v4;
  [(WFOpenUserActivityAction *)self generateShortcutRepresentation:v6];
}

void __69__WFOpenUserActivityAction_generateStandaloneShortcutRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFStandaloneShortcutRepresentation alloc] initWithINShortcut:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)generateShortcutRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(WFOpenUserActivityAction *)self activityImageData];
  if ([v5 length])
  {
    v6 = MEMORY[0x1E696E868];
    v7 = [(WFOpenUserActivityAction *)self activityImageData];
    v14 = [v6 imageWithImageData:v7];
  }

  else
  {
    v14 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E696EA38]);
  v9 = [(WFOpenUserActivityAction *)self activityData];
  v10 = [(WFOpenUserActivityAction *)self activitySubtitle];
  v11 = [(WFOpenUserActivityAction *)self descriptor];
  v12 = [v11 bundleIdentifier];
  v13 = [v8 initWithActivityData:v9 activityImage:v14 activitySubtitle:v10 activityBundleIdentifier:v12];
  v4[2](v4, v13, 0);
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = [(WFOpenUserActivityAction *)self descriptor];
  v3 = [v2 bundleIdentifier];
  v4 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();

  return v4;
}

- (id)serializedParameters
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v14.receiver = self;
  v14.super_class = WFOpenUserActivityAction;
  v4 = [(WFAction *)&v14 serializedParameters];
  v5 = [v3 initWithDictionary:v4];

  v6 = [(WFOpenUserActivityAction *)self activityData];
  [v5 setValue:v6 forKey:@"UserActivityData"];

  v7 = [(WFOpenUserActivityAction *)self activityImageData];
  [v5 setValue:v7 forKey:@"UserActivityImageData"];

  v8 = [(WFOpenUserActivityAction *)self activitySubtitle];
  [v5 setValue:v8 forKey:@"UserActivitySubtitle"];

  v9 = [(WFOpenUserActivityAction *)self bundleIdentifier];
  [v5 setValue:v9 forKey:@"AppBundleIdentifier"];

  v10 = [(WFOpenUserActivityAction *)self launchOrigin];
  [v5 setValue:v10 forKey:@"LaunchOrigin"];

  v11 = [(WFOpenUserActivityAction *)self descriptor];
  v12 = [v11 serializedRepresentation];
  [v5 setValue:v12 forKey:@"UserActivityDescriptor"];

  return v5;
}

- (WFOpenUserActivityAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v67 = a3;
  v8 = a4;
  v9 = [a5 mutableCopy];
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
    v30 = [MEMORY[0x1E696E748] sharedResolver];
    v65 = [v30 resolvedUserActivityMatchingDescriptor:v29];
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
    v30 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v29];
    v66 = objc_alloc(MEMORY[0x1E696EAD8]);
    v61 = [v28 activityType];
    v60 = [v30 localizedName];
    v59 = [v30 bundleIdentifier];
    v58 = [v30 extensionBundleIdentifier];
    v57 = [v30 counterpartIdentifiers];
    v56 = [v30 teamIdentifier];
    v31 = [v30 supportedIntents];
    [v30 bundleURL];
    v32 = v55 = v18;
    v65 = [v66 initWithUserActivityType:v61 localizedName:v60 bundleIdentifier:v59 extensionBundleIdentifier:v58 counterpartIdentifiers:v57 teamIdentifier:v56 supportedIntents:v31 bundleURL:v32];

    v18 = v55;
LABEL_11:

    v15 = v62;
LABEL_12:
  }

LABEL_13:
  v33 = [v28 activityType];

  if (v33)
  {
    v34 = [v28 activityType];
    [(WFOpenUserActivityAction *)self disabledPlatformsForUserActivityWithType:v34];
    v35 = self;
    v36 = v12;
    v37 = v21;
    v38 = v18;
    v40 = v39 = v15;

    v41 = WFInjectDisabledPlatformsInActionDefinition(v40, v8);

    v15 = v39;
    v18 = v38;
    v21 = v37;
    v12 = v36;
    self = v35;
    v8 = v41;
  }

  v68.receiver = self;
  v68.super_class = WFOpenUserActivityAction;
  v42 = [(WFAction *)&v68 initWithIdentifier:v67 definition:v8 serializedParameters:v9];
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

+ (id)userActivityActionWithShortcut:(id)a3 launchOrigin:(id)a4 error:(id *)a5
{
  v53[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 activityData];
  if (![v9 length])
  {
    if (a5)
    {
      v52 = *MEMORY[0x1E696A588];
      v53[0] = @"Could not create action because the user activity data was empty";
      v12 = MEMORY[0x1E695DF20];
      v13 = v53;
      v14 = &v52;
LABEL_6:
      v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v15];
    }

LABEL_7:
    v16 = 0;
    goto LABEL_15;
  }

  v10 = [v7 userActivity];
  v11 = [v10 title];
  if (![v11 length])
  {
    v17 = [v7 userActivity];
    v18 = [v17 interaction];

    if (v18)
    {
      goto LABEL_9;
    }

    if (a5)
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
  [v19 setValue:v9 forKey:@"UserActivityData"];
  v20 = [v7 activityImage];
  v21 = [v20 _imageData];
  [v19 setValue:v21 forKey:@"UserActivityImageData"];

  v22 = [v7 activitySubtitle];
  [v19 setValue:v22 forKey:@"UserActivitySubtitle"];

  v23 = [v7 activityBundleIdentifier];
  [v19 setValue:v23 forKey:@"AppBundleIdentifier"];

  [v19 setValue:v8 forKey:@"LaunchOrigin"];
  v24 = objc_alloc(MEMORY[0x1E69635F8]);
  v25 = [v7 activityBundleIdentifier];
  v26 = [v24 initWithBundleIdentifier:v25 allowPlaceholder:1 error:0];

  if (v26)
  {
    v48 = v9;
    v49 = v8;
    v45 = v7;
    if (v9)
    {
      v27 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:v9];
    }

    else
    {
      v27 = 0;
    }

    v46 = v27;
    v28 = [objc_alloc(MEMORY[0x1E696E720]) initWithApplicationRecord:v26];
    v44 = objc_alloc(MEMORY[0x1E696EAD8]);
    v43 = [v27 activityType];
    v29 = [v28 localizedName];
    v30 = [v28 bundleIdentifier];
    v31 = [v28 extensionBundleIdentifier];
    v32 = [v28 counterpartIdentifiers];
    [v28 teamIdentifier];
    v33 = v47 = v26;
    v34 = [v28 supportedIntents];
    v35 = [v28 bundleURL];
    v36 = [v44 initWithUserActivityType:v43 localizedName:v29 bundleIdentifier:v30 extensionBundleIdentifier:v31 counterpartIdentifiers:v32 teamIdentifier:v33 supportedIntents:v34 bundleURL:v35];

    v26 = v47;
    v37 = [v36 serializedRepresentation];
    [v19 setValue:v37 forKey:@"UserActivityDescriptor"];

    v9 = v48;
    v8 = v49;
    v7 = v45;
  }

  v38 = +[WFActionRegistry sharedRegistry];
  v39 = [v38 createActionWithIdentifier:@"is.workflow.actions.useractivity.open" serializedParameters:v19];

  v40 = objc_opt_class();
  v16 = WFEnforceClass_9663(v39, v40);

LABEL_15:
  v41 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)createActionWithIntent:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WFLOpenUserActivityAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"intent"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFLOpenUserActivityAction.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithIntent:v7];
  v11 = [v7 launchId];
  INExtractAppInfoFromSiriLaunchId();
  v12 = 0;

  [a1 createActionWithUserActivity:v10 appBundleIdentifier:v12 launchOrigin:0 completionHandler:v9];
}

+ (void)createActionWithUserActivity:(id)a3 appBundleIdentifier:(id)a4 launchOrigin:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 length])
  {
    v13 = [objc_alloc(MEMORY[0x1E696EA38]) initWithUserActivity:v9 bundleIdentifier:v10];
    v16 = 0;
    v14 = [WFOpenUserActivityAction userActivityActionWithShortcut:v13 launchOrigin:v11 error:&v16];
    v15 = v16;
    v12[2](v12, v14, v15);
  }

  else
  {
    v12[2](v12, 0, 0);
  }
}

@end