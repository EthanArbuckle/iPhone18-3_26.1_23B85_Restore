@interface VCSleepDonationAction
+ (id)identifierForShortcut:(id)shortcut;
+ (id)sleepActionsDictionaryForShortcuts:(id)shortcuts;
+ (id)sleepActionsDictionaryForShortcutsByApp:(id)app;
+ (id)sleepActionsForShortcuts:(id)shortcuts bundleIdentifier:(id)identifier;
- (VCSleepDonationAction)initWithShortcut:(id)shortcut bundleIdentifier:(id)identifier;
@end

@implementation VCSleepDonationAction

+ (id)sleepActionsDictionaryForShortcutsByApp:(id)app
{
  v21 = *MEMORY[0x1E69E9840];
  appCopy = app;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [appCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [appCopy objectForKeyedSubscript:v11];
        v13 = [self sleepActionsForShortcuts:v12 bundleIdentifier:v11];

        [v5 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)sleepActionsDictionaryForShortcuts:(id)shortcuts
{
  v26 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  v5 = objc_opt_new();
  v20 = shortcutsCopy;
  v6 = [self sleepActionsForShortcuts:shortcutsCopy bundleIdentifier:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        sourceAppBundleIdentifier = [v11 sourceAppBundleIdentifier];
        v13 = [v5 objectForKey:sourceAppBundleIdentifier];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = objc_opt_new();
        }

        v16 = v15;

        [v16 addObject:v11];
        sourceAppBundleIdentifier2 = [v11 sourceAppBundleIdentifier];
        [v5 setObject:v16 forKey:sourceAppBundleIdentifier2];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)sleepActionsForShortcuts:(id)shortcuts bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__VCSleepDonationAction_INShortcut__sleepActionsForShortcuts_bundleIdentifier___block_invoke;
  v12[3] = &unk_1E7B019B0;
  v13 = identifierCopy;
  v6 = identifierCopy;
  v7 = [shortcuts if_compactMap:v12];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  return v9;
}

VCSleepDonationAction *__79__VCSleepDonationAction_INShortcut__sleepActionsForShortcuts_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VCSleepDonationAction alloc] initWithShortcut:v3 bundleIdentifier:*(a1 + 32)];

  return v4;
}

- (VCSleepDonationAction)initWithShortcut:(id)shortcut bundleIdentifier:(id)identifier
{
  v46 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  identifierCopy = identifier;
  if (!shortcutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCSleepDonationAction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  intent = [shortcutCopy intent];
  suggestedInvocationPhrase = [intent suggestedInvocationPhrase];
  v11 = suggestedInvocationPhrase;
  if (suggestedInvocationPhrase)
  {
    v12 = suggestedInvocationPhrase;
  }

  else
  {
    userActivity = [shortcutCopy userActivity];
    suggestedInvocationPhrase2 = [userActivity suggestedInvocationPhrase];
    v15 = suggestedInvocationPhrase2;
    if (suggestedInvocationPhrase2)
    {
      _title = suggestedInvocationPhrase2;
    }

    else
    {
      _title = [shortcutCopy _title];
    }

    v12 = _title;
  }

  if (identifierCopy)
  {
    _associatedAppBundleIdentifier = identifierCopy;
  }

  else
  {
    _associatedAppBundleIdentifier = [shortcutCopy _associatedAppBundleIdentifier];
  }

  v18 = _associatedAppBundleIdentifier;
  selfCopy = 0;
  if ([_associatedAppBundleIdentifier length] && v12)
  {
    v20 = objc_opt_new();
    intent2 = [shortcutCopy intent];

    if (intent2)
    {
      v22 = MEMORY[0x1E696ACC8];
      intent3 = [shortcutCopy intent];
      v41 = 0;
      v24 = [v22 archivedDataWithRootObject:intent3 requiringSecureCoding:1 error:&v41];
      activityData = v41;

      if ([v24 length])
      {
        [v20 setValue:v24 forKey:@"IntentData"];
        [v20 setObject:MEMORY[0x1E695E110] forKey:@"ForceExecutionOnPhone"];

        v26 = @"is.workflow.actions.sirikit.donation.handle";
LABEL_20:
        v30 = [VCSleepDonationAction identifierForShortcut:shortcutCopy];
        v31 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v18 allowPlaceholder:1 error:0];
        localizedName = [v31 localizedName];

        v40.receiver = self;
        v40.super_class = VCSleepDonationAction;
        v33 = -[VCSleepAction initWithIdentifier:workflowActionIdentifier:sourceAppBundleIdentifier:bundleIdentifierForDisplay:title:subtitle:serializedParameters:shortcutAvailability:](&v40, sel_initWithIdentifier_workflowActionIdentifier_sourceAppBundleIdentifier_bundleIdentifierForDisplay_title_subtitle_serializedParameters_shortcutAvailability_, v30, v26, v18, v18, v12, localizedName, v20, [shortcutCopy wf_shortcutAvailability]);
        self = v33;
        if (v33)
        {
          v34 = v33;
        }

        selfCopy = self;
        goto LABEL_27;
      }

      v35 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [activityData localizedDescription];
        *buf = 136315394;
        v43 = "[VCSleepDonationAction initWithShortcut:bundleIdentifier:]";
        v44 = 2114;
        v45 = localizedDescription;
        _os_log_impl(&dword_1B1DE3000, v35, OS_LOG_TYPE_ERROR, "%s Could not create intent data from intent with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      selfCopy = [shortcutCopy userActivity];

      if (!selfCopy)
      {
LABEL_27:

        goto LABEL_28;
      }

      activityData = [shortcutCopy activityData];
      if ([activityData length])
      {
        [v20 setValue:activityData forKey:@"UserActivityData"];
        activityImage = [shortcutCopy activityImage];
        _imageData = [activityImage _imageData];
        [v20 setValue:_imageData forKey:@"UserActivityImageData"];

        activitySubtitle = [shortcutCopy activitySubtitle];
        [v20 setValue:activitySubtitle forKey:@"UserActivitySubtitle"];

        [v20 setValue:v18 forKey:@"AppBundleIdentifier"];
        v26 = @"is.workflow.actions.useractivity.open";
        goto LABEL_20;
      }
    }

    selfCopy = 0;
    goto LABEL_27;
  }

LABEL_28:

  v37 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)identifierForShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  intent = [shortcutCopy intent];

  if (intent)
  {
    intent2 = [shortcutCopy intent];
    _JSONDictionaryRepresentation = [intent2 _JSONDictionaryRepresentation];

    v7 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
    v8 = [v7 combine:@"is.workflow.actions.sirikit.donation.handle"];
    v9 = [v7 combineContentsOfPropertyListObject:_JSONDictionaryRepresentation];
    v10 = [v7 finalize];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2llX", v10];
  }

  else
  {
    userActivity = [shortcutCopy userActivity];

    if (userActivity)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
      v14 = [v13 combine:@"is.workflow.actions.useractivity.open"];
      userActivity2 = [shortcutCopy userActivity];
      activityType = [userActivity2 activityType];
      v17 = [v13 combine:activityType];

      userActivity3 = [shortcutCopy userActivity];
      title = [userActivity3 title];

      if (title)
      {
        userActivity4 = [shortcutCopy userActivity];
        title2 = [userActivity4 title];
        v22 = [v13 combine:title2];
      }

      activityBundleIdentifier = [shortcutCopy activityBundleIdentifier];

      if (activityBundleIdentifier)
      {
        activityBundleIdentifier2 = [shortcutCopy activityBundleIdentifier];
        v25 = [v13 combine:activityBundleIdentifier2];
      }

      v26 = objc_opt_new();
      userActivity5 = [shortcutCopy userActivity];
      requiredUserInfoKeys = [userActivity5 requiredUserInfoKeys];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __47__VCSleepDonationAction_identifierForShortcut___block_invoke;
      v33[3] = &unk_1E7B027B8;
      v34 = shortcutCopy;
      v35 = v26;
      v29 = v26;
      [requiredUserInfoKeys enumerateObjectsUsingBlock:v33];

      v30 = [v13 combineContentsOfPropertyListObject:v29];
      v31 = [v13 finalize];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2llX", v31];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void __47__VCSleepDonationAction_identifierForShortcut___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) userActivity];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:v17];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v10 = v7;

    v11 = *(a1 + 40);
    v12 = [v10 absoluteString];

    if (v12)
    {
      [v11 setObject:v12 forKey:v17];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v11 setObject:v13 forKey:v17];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v14 = v9;

      v15 = *(a1 + 40);
      v16 = [v14 allObjects];

      [v15 setObject:v16 forKey:v17];
    }

    else
    {
      [*(a1 + 40) setObject:v5 forKey:v17];
    }
  }
}

@end