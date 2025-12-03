@interface _UIKeyShortcutHUDUtilities
+ (id)_discoverabilityCombinationForShortcut:(id)shortcut shouldDisplayEscShortcutAlternative:(BOOL)alternative;
+ (id)inputAttributedStringForMenuLeafShortcut:(void *)shortcut symbolFont:(uint64_t)font shouldDisplayEscShortcutAlternative:(int)alternative shouldMirrorShortcutInputs:(_BYTE *)inputs shouldStyleAsSingleCharacterOrSymbol:;
+ (id)modifiersAttributedStringForMenuLeafShortcut:(void *)shortcut font:(int)font shouldDisplayGlobeModiferAsGlobeSymbol:;
+ (id)searchIcon;
+ (id)searchIconAttributedString;
+ (void)setCurrentHUDCollectionViewManager:(uint64_t)manager;
@end

@implementation _UIKeyShortcutHUDUtilities

+ (void)setCurrentHUDCollectionViewManager:(uint64_t)manager
{
  obj = a2;
  objc_opt_self();
  WeakRetained = objc_loadWeakRetained(&_currentHUDCollectionViewManager);

  v3 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&_currentHUDCollectionViewManager, obj);
    v3 = obj;
  }
}

+ (id)searchIcon
{
  objc_opt_self();
  if (qword_1ED4A3098 != -1)
  {
    dispatch_once(&qword_1ED4A3098, &__block_literal_global_730);
  }

  v0 = _MergedGlobals_1403[0];

  return v0;
}

+ (id)searchIconAttributedString
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___UIKeyShortcutHUDUtilities_searchIconAttributedString__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_1ED4A30A8 != -1)
  {
    dispatch_once(&qword_1ED4A30A8, block);
  }

  v1 = qword_1ED4A30A0;

  return v1;
}

+ (id)modifiersAttributedStringForMenuLeafShortcut:(void *)shortcut font:(int)font shouldDisplayGlobeModiferAsGlobeSymbol:
{
  shortcutCopy = shortcut;
  v7 = a2;
  objc_opt_self();
  v8 = objc_opt_new();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119___UIKeyShortcutHUDUtilities_modifiersAttributedStringForMenuLeafShortcut_font_shouldDisplayGlobeModiferAsGlobeSymbol___block_invoke;
  block[3] = &unk_1E70F3590;
  v9 = shortcutCopy;
  v15 = v9;
  if (qword_1ED4A30E0 != -1)
  {
    dispatch_once(&qword_1ED4A30E0, block);
  }

  currentLocalizedKeyCombination = [v7 currentLocalizedKeyCombination];

  modifierFlags = [currentLocalizedKeyCombination modifierFlags];
  if ((modifierFlags & 0x40000) != 0)
  {
    [v8 appendAttributedString:qword_1ED4A30B0];
    if ((modifierFlags & 0x80000) == 0)
    {
LABEL_5:
      if ((modifierFlags & 0x20000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((modifierFlags & 0x80000) == 0)
  {
    goto LABEL_5;
  }

  [v8 appendAttributedString:qword_1ED4A30B8];
  if ((modifierFlags & 0x20000) == 0)
  {
LABEL_6:
    if ((modifierFlags & 0x100000) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    [v8 appendAttributedString:qword_1ED4A30C8];
    if ((modifierFlags & 0x800000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_16:
  [v8 appendAttributedString:qword_1ED4A30C0];
  if ((modifierFlags & 0x100000) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((modifierFlags & 0x800000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v12 = 9;
  if (font)
  {
    v12 = 8;
  }

  [v8 appendAttributedString:_MergedGlobals_1403[v12]];
LABEL_11:

  return v8;
}

+ (id)inputAttributedStringForMenuLeafShortcut:(void *)shortcut symbolFont:(uint64_t)font shouldDisplayEscShortcutAlternative:(int)alternative shouldMirrorShortcutInputs:(_BYTE *)inputs shouldStyleAsSingleCharacterOrSymbol:
{
  v10 = a2;
  shortcutCopy = shortcut;
  v12 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __182___UIKeyShortcutHUDUtilities_inputAttributedStringForMenuLeafShortcut_symbolFont_shouldDisplayEscShortcutAlternative_shouldMirrorShortcutInputs_shouldStyleAsSingleCharacterOrSymbol___block_invoke;
  block[3] = &unk_1E70F3590;
  v13 = shortcutCopy;
  v31 = v13;
  if (qword_1ED4A3108 != -1)
  {
    dispatch_once(&qword_1ED4A3108, block);
  }

  currentLocalizedKeyCombination = [v10 currentLocalizedKeyCombination];
  keyEquivalent = [currentLocalizedKeyCombination keyEquivalent];

  v16 = [qword_1ED4A30F0 objectForKeyedSubscript:keyEquivalent];
  if (v16)
  {
    v17 = v16;
    if (alternative)
    {
      v18 = [qword_1ED4A30F8 objectForKeyedSubscript:keyEquivalent];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20;

      v17 = v21;
    }

    v22 = [UIImage systemImageNamed:v17 withConfiguration:qword_1ED4A30E8];
    v23 = [off_1E70ECBA8 textAttachmentWithImage:v22];
    v24 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v23];
    if (inputs)
    {
      *inputs = 1;
    }
  }

  else
  {
    v17 = [v12 _discoverabilityCombinationForShortcut:v10 shouldDisplayEscShortcutAlternative:font];
    v22 = [v17 _readableStringForKeyEquivalentUsingWords:0 forHUD:1 isSingleCharacterOrKeySymbol:inputs];
    if (alternative)
    {
      v25 = [qword_1ED4A3100 objectForKeyedSubscript:v22];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v22;
      }

      v28 = v27;

      v22 = v28;
    }

    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v22];
  }

  return v24;
}

+ (id)_discoverabilityCombinationForShortcut:(id)shortcut shouldDisplayEscShortcutAlternative:(BOOL)alternative
{
  alternativeCopy = alternative;
  shortcutCopy = shortcut;
  v6 = shortcutCopy;
  if (alternativeCopy)
  {
    currentLocalizedKeyCombination = [shortcutCopy currentLocalizedKeyCombination];
    keyEquivalent = [currentLocalizedKeyCombination keyEquivalent];
    if ([keyEquivalent isEqualToString:@"UIKeyInputEscape"])
    {
      currentLocalizedKeyCombination2 = [v6 currentLocalizedKeyCombination];
      modifierFlags = [currentLocalizedKeyCombination2 modifierFlags];

      if ((modifierFlags & 0x100000) == 0)
      {
        v11 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(@".");
        baseKeyCombination = [v6 baseKeyCombination];
        modifierFlags2 = [baseKeyCombination modifierFlags];

        currentLocalizedKeyCombination3 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:modifierFlags2 | 0x100000 keyEquivalent:v11];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  currentLocalizedKeyCombination3 = [v6 currentLocalizedKeyCombination];
LABEL_7:

  return currentLocalizedKeyCombination3;
}

@end