@interface UIKeyboardExtensionInputMode
- (BOOL)defaultLayoutIsASCIICapable;
- (BOOL)isDefaultRightToLeft;
- (BOOL)isDesiredForTraits:(id)a3;
- (BOOL)isStalledExtensionInputMode;
- (BOOL)showSWLayoutWithHWKeyboard;
- (UIKeyboardExtensionInputMode)initWithIdentifier:(id)a3;
- (id)_indicatorIconWithBackground:(BOOL)a3 iconWidth:(double)a4 scaleFactor:(double)a5;
- (id)containingBundle;
- (id)containingBundleDisplayName;
- (id)extendedDisplayName;
- (id)hardwareLayout;
- (id)monolingualDisplayName;
- (void)setPrimaryLanguage:(id)a3;
@end

@implementation UIKeyboardExtensionInputMode

- (UIKeyboardExtensionInputMode)initWithIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = UIKeyboardExtensionInputMode;
  v5 = [(UIKeyboardExtensionInputMode *)&v33 init];
  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v6 _MCFilteredExtensionIdentifiers];

    v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *v30;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

LABEL_10:
        v14 = v5;
LABEL_19:
        v5 = 0;
        goto LABEL_20;
      }
    }

    v8 = v11;

    if (!v8)
    {
      goto LABEL_17;
    }

    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v8 _plugIn];
    v17 = [v16 url];
    v18 = [v17 path];
    v19 = [v15 fileExistsAtPath:v18];

    if (!v19)
    {
      v7 = v8;
      v14 = v5;
      v8 = 0;
      goto LABEL_19;
    }

    if (!v5)
    {
LABEL_17:
      v26 = 0;
      goto LABEL_21;
    }

    [(UIKeyboardInputMode *)v5 setIdentifier:v4];
    [(UIKeyboardInputMode *)v5 setNormalizedIdentifier:v4];
    [(UIKeyboardExtensionInputMode *)v5 setExtension:v8];
    v20 = [v8 attributes];
    v21 = [v20 objectForKey:@"PrimaryLanguage"];
    [(UIKeyboardExtensionInputMode *)v5 setPrimaryLanguage:v21];

    v22 = [(UIKeyboardInputMode *)v5 primaryLanguage];
    [(UIKeyboardInputMode *)v5 setLanguageWithRegion:v22];

    v14 = [(UIKeyboardInputMode *)v5 primaryLanguage];
    v7 = TIGetDefaultInputModesForLanguage();
    v23 = [v7 firstObject];
    v24 = TIInputModeGetLanguageWithRegion();
    if (v24)
    {
      [(UIKeyboardInputMode *)v5 setLanguageWithRegion:v24];
    }

    else
    {
      v28 = [(UIKeyboardInputMode *)v5 primaryLanguage];
      [(UIKeyboardInputMode *)v5 setLanguageWithRegion:v28];
    }

LABEL_20:
    v26 = v5;

    v5 = v14;
LABEL_21:

    v5 = v26;
    v25 = v5;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)setPrimaryLanguage:(id)a3
{
  v4 = [UIKeyboardInputMode canonicalLanguageIdentifierFromIdentifier:a3];
  v5 = [(UIKeyboardInputMode *)self primaryLanguage];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    [(UIKeyboardInputMode *)self setHardwareLayout:0];
    v12.receiver = self;
    v12.super_class = UIKeyboardExtensionInputMode;
    [(UIKeyboardInputMode *)&v12 setPrimaryLanguage:v4];
    v7 = TIGetDefaultInputModesForLanguage();
    v8 = [v7 firstObject];
    v9 = TIInputModeGetLanguageWithRegion();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }

    [(UIKeyboardInputMode *)self setLanguageWithRegion:v11];
  }
}

- (BOOL)showSWLayoutWithHWKeyboard
{
  v3 = [(UIKeyboardExtensionInputMode *)self hardwareLayout];
  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(UIKeyboardInputMode *)self primaryLanguage];
    v4 = [v5 isEqualToString:@"mul"] ^ 1;
  }

  return v4;
}

- (id)hardwareLayout
{
  v51 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIKeyboardExtensionInputMode;
  v3 = [(UIKeyboardInputMode *)&v48 hardwareLayout];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    v38 = *MEMORY[0x1E69D96F8];
    v7 = [v6 valueForPreferenceKey:?];

    v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v44 + 1) + 8 * v11)];
        if (([v12 isExtensionInputMode] & 1) == 0)
        {
          v13 = [v12 primaryLanguage];
          v14 = [(UIKeyboardInputMode *)self primaryLanguage];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      v4 = [v12 hardwareLayout];

      if (v4)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_12:
    }

    v16 = MEMORY[0x1E695DF58];
    v17 = [(UIKeyboardInputMode *)self primaryLanguage];
    v18 = [v16 localeWithLocaleIdentifier:v17];

    if (v18 && ([v18 objectForKey:*MEMORY[0x1E695D9B0]], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v39 = v19;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v21 = [v20 preferencesActions];
      v22 = [v21 valueForPreferenceKey:v38];

      v23 = [v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
LABEL_18:
        v26 = 0;
        while (1)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v40 + 1) + 8 * v26)];
          if (([v27 isExtensionInputMode] & 1) == 0)
          {
            v28 = [v27 identifier];
            v29 = TIInputModeGetBaseLanguage();
            v30 = [v39 isEqualToString:v29];

            if (v30)
            {
              break;
            }
          }

          if (v24 == ++v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v24)
            {
              goto LABEL_18;
            }

            goto LABEL_25;
          }
        }

        v4 = [v27 hardwareLayout];

        if (!v4)
        {
          goto LABEL_29;
        }

        v31 = v39;
      }

      else
      {
LABEL_25:

LABEL_29:
        v31 = v39;
        v32 = TIGetDefaultInputModesForLanguage();
        v33 = [v32 firstObject];

        v34 = TIInputModeGetBaseLanguage();
        v35 = [v39 isEqualToString:v34];

        if (v35)
        {
          v36 = TIInputModeGetNormalizedIdentifier();

          v4 = UIKeyboardGetDefaultHardwareKeyboardLayoutForInputMode(v36);
          v33 = v36;
        }

        else
        {
          v4 = 0;
        }
      }
    }

    else
    {
      v31 = 0;
      v4 = 0;
    }
  }

LABEL_34:
  [(UIKeyboardInputMode *)self setHardwareLayout:v4];

  return v4;
}

- (id)monolingualDisplayName
{
  v3 = [(UIKeyboardExtensionInputMode *)self extension];
  v4 = [v3 objectForInfoDictionaryKey:@"CFBundleDisplayName"];

  if (!v4)
  {
    v5 = [(UIKeyboardExtensionInputMode *)self extension];
    v4 = [v5 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];

    if (!v4)
    {
      v4 = [(UIKeyboardInputMode *)self identifier];
    }
  }

  return v4;
}

- (id)extendedDisplayName
{
  v3 = [(UIKeyboardExtensionInputMode *)self containingBundleDisplayName];
  if (v3 && (-[UIKeyboardExtensionInputMode displayName](self, "displayName"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, -[UIKeyboardExtensionInputMode displayName](self, "displayName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v3 containsString:v6], v6, v5, (v7 & 1) == 0))
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(UIKeyboardExtensionInputMode *)self displayName];
    v12 = [(UIKeyboardExtensionInputMode *)self containingBundleDisplayName];
    v8 = [v10 stringWithFormat:@"%@ — %@", v11, v12];
  }

  else
  {
    v8 = [(UIKeyboardExtensionInputMode *)self displayName];
  }

  return v8;
}

- (BOOL)isDefaultRightToLeft
{
  v2 = [(UIKeyboardExtensionInputMode *)self extension];
  v3 = [v2 attributes];
  v4 = [v3 objectForKey:@"PrefersRightToLeft"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)defaultLayoutIsASCIICapable
{
  v2 = [(UIKeyboardExtensionInputMode *)self extension];
  v3 = [v2 attributes];
  v4 = [v3 objectForKey:@"IsASCIICapable"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)isStalledExtensionInputMode
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(UIKeyboardExtensionInputMode *)self extension];
  v5 = [v4 _plugIn];
  v6 = [v5 url];
  v7 = [v6 path];
  v8 = [v3 fileExistsAtPath:v7];

  return v8 ^ 1;
}

- (id)containingBundle
{
  v2 = [(UIKeyboardExtensionInputMode *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 containingUrl];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)containingBundleDisplayName
{
  v2 = [(UIKeyboardExtensionInputMode *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 localizedContainingName];

  return v4;
}

- (BOOL)isDesiredForTraits:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 allowedExtensions];
  v7 = [(UIKeyboardExtensionInputMode *)self extension];
  v8 = [v6 containsObject:v7];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  if ([v9 deviceStateIsLocked])
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [v10 containerRootController];
    v12 = [v11 isSnapshotting];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v13 textInputTraitsNeedAutofillExcludeOneTimeCodeAndContact];

  if ((v14 & 1) == 0 && ([v4 isCarPlayIdiom] & 1) == 0 && (objc_msgSend(v4, "isSecureTextEntry") & 1) == 0 && objc_msgSend(v4, "keyboardAppearance") != 127 && objc_msgSend(v4, "keyboardType") != 127 && objc_msgSend(v4, "keyboardType") != 5)
  {
    v15 = [v4 keyboardType] != 6;
    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_indicatorIconWithBackground:(BOOL)a3 iconWidth:(double)a4 scaleFactor:(double)a5
{
  v7 = [(UIKeyboardInputMode *)self cachedIcon:a3];

  if (!v7)
  {
    v8 = [(UIKeyboardExtensionInputMode *)self extension];
    v9 = [v8 icons];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [[UIGraphicsImageRenderer alloc] initWithSize:a4, 18.0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __83__UIKeyboardExtensionInputMode__indicatorIconWithBackground_iconWidth_scaleFactor___block_invoke;
      v16[3] = &unk_1E710DEB8;
      v17 = v10;
      v18 = a4;
      v12 = [(UIGraphicsImageRenderer *)v11 imageWithActions:v16];

      v13 = [v12 imageWithRenderingMode:1];

      [(UIKeyboardInputMode *)self setCachedIcon:v13];
    }
  }

  v14 = [(UIKeyboardInputMode *)self cachedIcon];

  return v14;
}

@end