@interface UIKeyboardExtensionInputMode
- (BOOL)defaultLayoutIsASCIICapable;
- (BOOL)isDefaultRightToLeft;
- (BOOL)isDesiredForTraits:(id)traits;
- (BOOL)isStalledExtensionInputMode;
- (BOOL)showSWLayoutWithHWKeyboard;
- (UIKeyboardExtensionInputMode)initWithIdentifier:(id)identifier;
- (id)_indicatorIconWithBackground:(BOOL)background iconWidth:(double)width scaleFactor:(double)factor;
- (id)containingBundle;
- (id)containingBundleDisplayName;
- (id)extendedDisplayName;
- (id)hardwareLayout;
- (id)monolingualDisplayName;
- (void)setPrimaryLanguage:(id)language;
@end

@implementation UIKeyboardExtensionInputMode

- (UIKeyboardExtensionInputMode)initWithIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v33.receiver = self;
  v33.super_class = UIKeyboardExtensionInputMode;
  v5 = [(UIKeyboardExtensionInputMode *)&v33 init];
  if (identifierCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    _MCFilteredExtensionIdentifiers = [v6 _MCFilteredExtensionIdentifiers];

    v8 = [_MCFilteredExtensionIdentifiers countByEnumeratingWithState:&v29 objects:v34 count:16];
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
        objc_enumerationMutation(_MCFilteredExtensionIdentifiers);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:identifierCopy];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [_MCFilteredExtensionIdentifiers countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

LABEL_10:
        primaryLanguage2 = v5;
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

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    _plugIn = [v8 _plugIn];
    v17 = [_plugIn url];
    path = [v17 path];
    v19 = [defaultManager fileExistsAtPath:path];

    if (!v19)
    {
      _MCFilteredExtensionIdentifiers = v8;
      primaryLanguage2 = v5;
      v8 = 0;
      goto LABEL_19;
    }

    if (!v5)
    {
LABEL_17:
      v26 = 0;
      goto LABEL_21;
    }

    [(UIKeyboardInputMode *)v5 setIdentifier:identifierCopy];
    [(UIKeyboardInputMode *)v5 setNormalizedIdentifier:identifierCopy];
    [(UIKeyboardExtensionInputMode *)v5 setExtension:v8];
    attributes = [v8 attributes];
    v21 = [attributes objectForKey:@"PrimaryLanguage"];
    [(UIKeyboardExtensionInputMode *)v5 setPrimaryLanguage:v21];

    primaryLanguage = [(UIKeyboardInputMode *)v5 primaryLanguage];
    [(UIKeyboardInputMode *)v5 setLanguageWithRegion:primaryLanguage];

    primaryLanguage2 = [(UIKeyboardInputMode *)v5 primaryLanguage];
    _MCFilteredExtensionIdentifiers = TIGetDefaultInputModesForLanguage();
    firstObject = [_MCFilteredExtensionIdentifiers firstObject];
    v24 = TIInputModeGetLanguageWithRegion();
    if (v24)
    {
      [(UIKeyboardInputMode *)v5 setLanguageWithRegion:v24];
    }

    else
    {
      primaryLanguage3 = [(UIKeyboardInputMode *)v5 primaryLanguage];
      [(UIKeyboardInputMode *)v5 setLanguageWithRegion:primaryLanguage3];
    }

LABEL_20:
    v26 = v5;

    v5 = primaryLanguage2;
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

- (void)setPrimaryLanguage:(id)language
{
  v4 = [UIKeyboardInputMode canonicalLanguageIdentifierFromIdentifier:language];
  primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
  v6 = [primaryLanguage isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    [(UIKeyboardInputMode *)self setHardwareLayout:0];
    v12.receiver = self;
    v12.super_class = UIKeyboardExtensionInputMode;
    [(UIKeyboardInputMode *)&v12 setPrimaryLanguage:v4];
    v7 = TIGetDefaultInputModesForLanguage();
    firstObject = [v7 firstObject];
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
  hardwareLayout = [(UIKeyboardExtensionInputMode *)self hardwareLayout];
  if (hardwareLayout)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    primaryLanguage = [(UIKeyboardInputMode *)self primaryLanguage];
    v4 = [primaryLanguage isEqualToString:@"mul"] ^ 1;
  }

  return v4;
}

- (id)hardwareLayout
{
  v51 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = UIKeyboardExtensionInputMode;
  hardwareLayout = [(UIKeyboardInputMode *)&v48 hardwareLayout];
  if (hardwareLayout)
  {
    hardwareLayout2 = hardwareLayout;
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v5 preferencesActions];
    v38 = *MEMORY[0x1E69D96F8];
    v7 = [preferencesActions valueForPreferenceKey:?];

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
          primaryLanguage = [v12 primaryLanguage];
          primaryLanguage2 = [(UIKeyboardInputMode *)self primaryLanguage];
          v15 = [primaryLanguage isEqualToString:primaryLanguage2];

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

      hardwareLayout2 = [v12 hardwareLayout];

      if (hardwareLayout2)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_12:
    }

    v16 = MEMORY[0x1E695DF58];
    primaryLanguage3 = [(UIKeyboardInputMode *)self primaryLanguage];
    v18 = [v16 localeWithLocaleIdentifier:primaryLanguage3];

    if (v18 && ([v18 objectForKey:*MEMORY[0x1E695D9B0]], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v39 = v19;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions2 = [v20 preferencesActions];
      v22 = [preferencesActions2 valueForPreferenceKey:v38];

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
            identifier = [v27 identifier];
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

        hardwareLayout2 = [v27 hardwareLayout];

        if (!hardwareLayout2)
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
        firstObject = [v32 firstObject];

        v34 = TIInputModeGetBaseLanguage();
        v35 = [v39 isEqualToString:v34];

        if (v35)
        {
          v36 = TIInputModeGetNormalizedIdentifier();

          hardwareLayout2 = UIKeyboardGetDefaultHardwareKeyboardLayoutForInputMode(v36);
          firstObject = v36;
        }

        else
        {
          hardwareLayout2 = 0;
        }
      }
    }

    else
    {
      v31 = 0;
      hardwareLayout2 = 0;
    }
  }

LABEL_34:
  [(UIKeyboardInputMode *)self setHardwareLayout:hardwareLayout2];

  return hardwareLayout2;
}

- (id)monolingualDisplayName
{
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  identifier = [extension objectForInfoDictionaryKey:@"CFBundleDisplayName"];

  if (!identifier)
  {
    extension2 = [(UIKeyboardExtensionInputMode *)self extension];
    identifier = [extension2 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];

    if (!identifier)
    {
      identifier = [(UIKeyboardInputMode *)self identifier];
    }
  }

  return identifier;
}

- (id)extendedDisplayName
{
  containingBundleDisplayName = [(UIKeyboardExtensionInputMode *)self containingBundleDisplayName];
  if (containingBundleDisplayName && (-[UIKeyboardExtensionInputMode displayName](self, "displayName"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, -[UIKeyboardExtensionInputMode displayName](self, "displayName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [containingBundleDisplayName containsString:v6], v6, v5, (v7 & 1) == 0))
  {
    v10 = MEMORY[0x1E696AEC0];
    displayName = [(UIKeyboardExtensionInputMode *)self displayName];
    containingBundleDisplayName2 = [(UIKeyboardExtensionInputMode *)self containingBundleDisplayName];
    displayName2 = [v10 stringWithFormat:@"%@ — %@", displayName, containingBundleDisplayName2];
  }

  else
  {
    displayName2 = [(UIKeyboardExtensionInputMode *)self displayName];
  }

  return displayName2;
}

- (BOOL)isDefaultRightToLeft
{
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  attributes = [extension attributes];
  v4 = [attributes objectForKey:@"PrefersRightToLeft"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)defaultLayoutIsASCIICapable
{
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  attributes = [extension attributes];
  v4 = [attributes objectForKey:@"IsASCIICapable"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isStalledExtensionInputMode
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  _plugIn = [extension _plugIn];
  v6 = [_plugIn url];
  path = [v6 path];
  v8 = [defaultManager fileExistsAtPath:path];

  return v8 ^ 1;
}

- (id)containingBundle
{
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  _plugIn = [extension _plugIn];
  containingUrl = [_plugIn containingUrl];

  if (containingUrl)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithURL:containingUrl];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)containingBundleDisplayName
{
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  _plugIn = [extension _plugIn];
  localizedContainingName = [_plugIn localizedContainingName];

  return localizedContainingName;
}

- (BOOL)isDesiredForTraits:(id)traits
{
  traitsCopy = traits;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  allowedExtensions = [v5 allowedExtensions];
  extension = [(UIKeyboardExtensionInputMode *)self extension];
  v8 = [allowedExtensions containsObject:extension];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  if ([v9 deviceStateIsLocked])
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v10 containerRootController];
    isSnapshotting = [containerRootController isSnapshotting];

    if (!isSnapshotting)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v13 = +[UIKeyboardImpl activeInstance];
  textInputTraitsNeedAutofillExcludeOneTimeCodeAndContact = [v13 textInputTraitsNeedAutofillExcludeOneTimeCodeAndContact];

  if ((textInputTraitsNeedAutofillExcludeOneTimeCodeAndContact & 1) == 0 && ([traitsCopy isCarPlayIdiom] & 1) == 0 && (objc_msgSend(traitsCopy, "isSecureTextEntry") & 1) == 0 && objc_msgSend(traitsCopy, "keyboardAppearance") != 127 && objc_msgSend(traitsCopy, "keyboardType") != 127 && objc_msgSend(traitsCopy, "keyboardType") != 5)
  {
    v15 = [traitsCopy keyboardType] != 6;
    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:

  return v15;
}

- (id)_indicatorIconWithBackground:(BOOL)background iconWidth:(double)width scaleFactor:(double)factor
{
  v7 = [(UIKeyboardInputMode *)self cachedIcon:background];

  if (!v7)
  {
    extension = [(UIKeyboardExtensionInputMode *)self extension];
    icons = [extension icons];
    firstObject = [icons firstObject];

    if (firstObject)
    {
      v11 = [[UIGraphicsImageRenderer alloc] initWithSize:width, 18.0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __83__UIKeyboardExtensionInputMode__indicatorIconWithBackground_iconWidth_scaleFactor___block_invoke;
      v16[3] = &unk_1E710DEB8;
      v17 = firstObject;
      widthCopy = width;
      v12 = [(UIGraphicsImageRenderer *)v11 imageWithActions:v16];

      v13 = [v12 imageWithRenderingMode:1];

      [(UIKeyboardInputMode *)self setCachedIcon:v13];
    }
  }

  cachedIcon = [(UIKeyboardInputMode *)self cachedIcon];

  return cachedIcon;
}

@end