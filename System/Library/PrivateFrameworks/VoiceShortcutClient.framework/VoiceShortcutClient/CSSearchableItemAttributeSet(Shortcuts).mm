@interface CSSearchableItemAttributeSet(Shortcuts)
- (BOOL)wf_associateWithBundleIdentifier:()Shortcuts;
@end

@implementation CSSearchableItemAttributeSet(Shortcuts)

- (BOOL)wf_associateWithBundleIdentifier:()Shortcuts
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"WFContextualAction+Spotlight.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v19 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = [v6 bundleIdentifier];
    [a1 setRelatedAppBundleIdentifier:v8];

    v9 = [a1 alternateNames];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    v12 = [v6 localizedName];
    v20[0] = v12;
    v13 = [v6 localizedShortName];
    v20[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v11 arrayByAddingObjectsFromArray:v14];
    [a1 setAlternateNames:v15];
  }

  else
  {
    v10 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[CSSearchableItemAttributeSet(Shortcuts) wf_associateWithBundleIdentifier:]";
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_ERROR, "%s Can't associate spotlight item with app: %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

@end