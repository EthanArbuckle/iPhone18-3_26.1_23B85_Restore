@interface VCSleepDonationAction
+ (id)identifierForShortcut:(id)a3;
+ (id)sleepActionsDictionaryForShortcuts:(id)a3;
+ (id)sleepActionsDictionaryForShortcutsByApp:(id)a3;
+ (id)sleepActionsForShortcuts:(id)a3 bundleIdentifier:(id)a4;
- (VCSleepDonationAction)initWithShortcut:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation VCSleepDonationAction

+ (id)sleepActionsDictionaryForShortcutsByApp:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = [a1 sleepActionsForShortcuts:v12 bundleIdentifier:v11];

        [v5 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)sleepActionsDictionaryForShortcuts:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v20 = v4;
  v6 = [a1 sleepActionsForShortcuts:v4 bundleIdentifier:0];
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
        v12 = [v11 sourceAppBundleIdentifier];
        v13 = [v5 objectForKey:v12];
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
        v17 = [v11 sourceAppBundleIdentifier];
        [v5 setObject:v16 forKey:v17];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)sleepActionsForShortcuts:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__VCSleepDonationAction_INShortcut__sleepActionsForShortcuts_bundleIdentifier___block_invoke;
  v12[3] = &unk_1E7B019B0;
  v13 = v5;
  v6 = v5;
  v7 = [a3 if_compactMap:v12];
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

- (VCSleepDonationAction)initWithShortcut:(id)a3 bundleIdentifier:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"VCSleepDonationAction.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  v9 = [v7 intent];
  v10 = [v9 suggestedInvocationPhrase];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v7 userActivity];
    v14 = [v13 suggestedInvocationPhrase];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v7 _title];
    }

    v12 = v16;
  }

  if (v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = [v7 _associatedAppBundleIdentifier];
  }

  v18 = v17;
  v19 = 0;
  if ([v17 length] && v12)
  {
    v20 = objc_opt_new();
    v21 = [v7 intent];

    if (v21)
    {
      v22 = MEMORY[0x1E696ACC8];
      v23 = [v7 intent];
      v41 = 0;
      v24 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v41];
      v25 = v41;

      if ([v24 length])
      {
        [v20 setValue:v24 forKey:@"IntentData"];
        [v20 setObject:MEMORY[0x1E695E110] forKey:@"ForceExecutionOnPhone"];

        v26 = @"is.workflow.actions.sirikit.donation.handle";
LABEL_20:
        v30 = [VCSleepDonationAction identifierForShortcut:v7];
        v31 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v18 allowPlaceholder:1 error:0];
        v32 = [v31 localizedName];

        v40.receiver = self;
        v40.super_class = VCSleepDonationAction;
        v33 = -[VCSleepAction initWithIdentifier:workflowActionIdentifier:sourceAppBundleIdentifier:bundleIdentifierForDisplay:title:subtitle:serializedParameters:shortcutAvailability:](&v40, sel_initWithIdentifier_workflowActionIdentifier_sourceAppBundleIdentifier_bundleIdentifierForDisplay_title_subtitle_serializedParameters_shortcutAvailability_, v30, v26, v18, v18, v12, v32, v20, [v7 wf_shortcutAvailability]);
        self = v33;
        if (v33)
        {
          v34 = v33;
        }

        v19 = self;
        goto LABEL_27;
      }

      v35 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v25 localizedDescription];
        *buf = 136315394;
        v43 = "[VCSleepDonationAction initWithShortcut:bundleIdentifier:]";
        v44 = 2114;
        v45 = v36;
        _os_log_impl(&dword_1B1DE3000, v35, OS_LOG_TYPE_ERROR, "%s Could not create intent data from intent with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v19 = [v7 userActivity];

      if (!v19)
      {
LABEL_27:

        goto LABEL_28;
      }

      v25 = [v7 activityData];
      if ([v25 length])
      {
        [v20 setValue:v25 forKey:@"UserActivityData"];
        v27 = [v7 activityImage];
        v28 = [v27 _imageData];
        [v20 setValue:v28 forKey:@"UserActivityImageData"];

        v29 = [v7 activitySubtitle];
        [v20 setValue:v29 forKey:@"UserActivitySubtitle"];

        [v20 setValue:v18 forKey:@"AppBundleIdentifier"];
        v26 = @"is.workflow.actions.useractivity.open";
        goto LABEL_20;
      }
    }

    v19 = 0;
    goto LABEL_27;
  }

LABEL_28:

  v37 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)identifierForShortcut:(id)a3
{
  v3 = a3;
  v4 = [v3 intent];

  if (v4)
  {
    v5 = [v3 intent];
    v6 = [v5 _JSONDictionaryRepresentation];

    v7 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
    v8 = [v7 combine:@"is.workflow.actions.sirikit.donation.handle"];
    v9 = [v7 combineContentsOfPropertyListObject:v6];
    v10 = [v7 finalize];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2llX", v10];
  }

  else
  {
    v12 = [v3 userActivity];

    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
      v14 = [v13 combine:@"is.workflow.actions.useractivity.open"];
      v15 = [v3 userActivity];
      v16 = [v15 activityType];
      v17 = [v13 combine:v16];

      v18 = [v3 userActivity];
      v19 = [v18 title];

      if (v19)
      {
        v20 = [v3 userActivity];
        v21 = [v20 title];
        v22 = [v13 combine:v21];
      }

      v23 = [v3 activityBundleIdentifier];

      if (v23)
      {
        v24 = [v3 activityBundleIdentifier];
        v25 = [v13 combine:v24];
      }

      v26 = objc_opt_new();
      v27 = [v3 userActivity];
      v28 = [v27 requiredUserInfoKeys];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __47__VCSleepDonationAction_identifierForShortcut___block_invoke;
      v33[3] = &unk_1E7B027B8;
      v34 = v3;
      v35 = v26;
      v29 = v26;
      [v28 enumerateObjectsUsingBlock:v33];

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