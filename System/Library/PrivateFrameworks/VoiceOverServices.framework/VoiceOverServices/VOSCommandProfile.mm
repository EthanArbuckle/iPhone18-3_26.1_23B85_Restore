@interface VOSCommandProfile
+ (BOOL)_overlay:(id)a3 shouldIncludeItem:(id)a4;
+ (id)_parseProfileProperties:(id)a3 overlayProperties:(id)a4;
+ (id)_profileKeyChordsFromDictionaryValue:(id)a3;
+ (void)_addGesturesToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5;
+ (void)_addKeyboardShortcutsToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5;
+ (void)_addQuickNavShortcutsToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5;
+ (void)_addSecondaryCommandsToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5;
- (BOOL)commandHasAnyBindings:(id)a3 withResolver:(id)a4;
- (BOOL)commandHasModifiedBindingsWhenZoomEnabled:(id)a3 withResolver:(id)a4;
- (VOSCommandProfile)initWithCoder:(id)a3;
- (VOSCommandProfile)initWithProfileProperties:(id)a3 overlayProperties:(id)a4;
- (VOSCommandProfileDelegate)delegate;
- (id)_initWithModes:(id)a3;
- (id)_profileCommandForCommand:(id)a3 inMode:(id)a4;
- (id)_profileModeForResolver:(id)a3;
- (id)_profileModeForScreenreaderMode:(id)a3;
- (id)_resolvedSecondaryCommandForProfileCommand:(id)a3 resolver:(id)a4;
- (id)addGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)addKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)allCommandsWithResolver:(id)a3;
- (id)allShortcutBindingsWithResolver:(id)a3;
- (id)allSiriShortcutCommandsWithResolver:(id)a3;
- (id)commandForKeyChord:(id)a3 withResolver:(id)a4;
- (id)commandForTouchGesture:(id)a3 withResolver:(id)a4;
- (id)debugDescription;
- (id)gestureBindingsForCommand:(id)a3 withResolver:(id)a4;
- (id)removeGesture:(id)a3 fromCommand:(id)a4 withResolver:(id)a5;
- (id)removeKeyChord:(id)a3 fromCommand:(id)a4 withResolver:(id)a5;
- (id)shortcutBindingsForCommand:(id)a3 withResolver:(id)a4;
- (id)userPresentableAllShortcutBindingsWithResolver:(id)a3;
- (id)validateCanAddGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)validateCanAddKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (unint64_t)availabilityForCommand:(id)a3 withResolver:(id)a4;
- (unint64_t)availabilityForGesture:(id)a3 withResolver:(id)a4;
- (unint64_t)availabilityForShortcut:(id)a3 withResolver:(id)a4;
@end

@implementation VOSCommandProfile

- (VOSCommandProfile)initWithProfileProperties:(id)a3 overlayProperties:(id)a4
{
  v5 = [VOSCommandProfile _parseProfileProperties:a3 overlayProperties:a4];
  v6 = [(VOSCommandProfile *)self _initWithModes:v5];

  return v6;
}

- (id)_initWithModes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VOSCommandProfile;
  v6 = [(VOSCommandProfile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modes, a3);
  }

  return v7;
}

- (id)debugDescription
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"VOSCommandProfile:<%p>\n", self];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = self->_modes;
  v36 = [(NSMutableSet *)obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v36)
  {
    v35 = *v56;
    do
    {
      v4 = 0;
      do
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v4;
        v5 = *(*(&v55 + 1) + 8 * v4);
        [v3 appendFormat:@" %@\n", v5];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v38 = [v5 commands];
        v6 = [v38 countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v52;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v52 != v8)
              {
                objc_enumerationMutation(v38);
              }

              v10 = *(*(&v51 + 1) + 8 * i);
              [v3 appendFormat:@"  %@\n", v10];
              v11 = [v10 gestures];
              v12 = [v11 count];

              if (v12)
              {
                [v3 appendString:@"   Gestures:\n"];
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v13 = [v10 gestures];
                v14 = [v13 countByEnumeratingWithState:&v47 objects:v61 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v48;
                  do
                  {
                    for (j = 0; j != v15; ++j)
                    {
                      if (*v48 != v16)
                      {
                        objc_enumerationMutation(v13);
                      }

                      [v3 appendFormat:@"    %@\n", *(*(&v47 + 1) + 8 * j)];
                    }

                    v15 = [v13 countByEnumeratingWithState:&v47 objects:v61 count:16];
                  }

                  while (v15);
                }
              }

              v18 = [v10 keyboardShortcuts];
              v19 = [v18 count];

              if (v19)
              {
                [v3 appendString:@"   Keyboard Shortcuts:\n"];
                v45 = 0u;
                v46 = 0u;
                v43 = 0u;
                v44 = 0u;
                v20 = [v10 keyboardShortcuts];
                v21 = [v20 countByEnumeratingWithState:&v43 objects:v60 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v44;
                  do
                  {
                    for (k = 0; k != v22; ++k)
                    {
                      if (*v44 != v23)
                      {
                        objc_enumerationMutation(v20);
                      }

                      [v3 appendFormat:@"    %@\n", *(*(&v43 + 1) + 8 * k)];
                    }

                    v22 = [v20 countByEnumeratingWithState:&v43 objects:v60 count:16];
                  }

                  while (v22);
                }
              }

              v25 = [v10 quickNavShortcuts];
              v26 = [v25 count];

              if (v26)
              {
                [v3 appendString:@"   QuickNav Shortcuts:\n"];
                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                v27 = [v10 quickNavShortcuts];
                v28 = [v27 countByEnumeratingWithState:&v39 objects:v59 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v40;
                  do
                  {
                    for (m = 0; m != v29; ++m)
                    {
                      if (*v40 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      [v3 appendFormat:@"    %@\n", *(*(&v39 + 1) + 8 * m)];
                    }

                    v29 = [v27 countByEnumeratingWithState:&v39 objects:v59 count:16];
                  }

                  while (v29);
                }
              }
            }

            v7 = [v38 countByEnumeratingWithState:&v51 objects:v62 count:16];
          }

          while (v7);
        }

        v4 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [(NSMutableSet *)obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v36);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

- (VOSCommandProfile)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"modes"];

  v10 = [v9 mutableCopy];
  v11 = [(VOSCommandProfile *)self _initWithModes:v10];

  return v11;
}

- (id)commandForTouchGesture:(id)a3 withResolver:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(VOSCommandProfile *)self _modifiedGestureRespectingHandednessSetting:a3];
  v38 = self;
  v8 = [(VOSCommandProfile *)self _profileModeForResolver:v6];
  v9 = [v6 screenreaderMode];
  v10 = +[VOSScreenreaderMode BrailleScreenInput];
  if (v9 != v10)
  {
    goto LABEL_2;
  }

  v29 = [v6 bsiTypingMode];

  if (v29 == 1)
  {
    v30 = [VOSGesture horizontalMirrorGestureForGesture:v7];
    v9 = v30;
    if (!v30)
    {
      goto LABEL_3;
    }

    v9 = v30;
    v10 = v7;
    v7 = v9;
LABEL_2:

LABEL_3:
  }

  v11 = [v6 screenreaderMode];
  v12 = +[VOSScreenreaderMode Default];
  if (v11 != v12)
  {
    goto LABEL_5;
  }

  v31 = [v6 shouldApplyRTL];

  if (v31)
  {
    v32 = [VOSGesture rtlGestureForGesture:v7];
    v11 = v32;
    if (!v32)
    {
      goto LABEL_6;
    }

    v11 = v32;
    v12 = v7;
    v7 = v11;
LABEL_5:

LABEL_6:
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = [v8 commands];
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v45;
    v36 = v8;
    v37 = v6;
    v39 = v13;
    v35 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = [v18 gestures];
        v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v41;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [*(*(&v40 + 1) + 8 * j) gesture];
              v25 = [v24 isEqual:v7];

              if (v25)
              {
                v26 = [v18 command];
                if (v26)
                {
                  v6 = v37;
                  v27 = v38;
                  v8 = v36;
                  if ([(VOSCommandProfile *)v38 availabilityForCommand:v26 withResolver:v37]== 1)
                  {
                    v28 = VOTLogCommon();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      [VOSCommandProfile commandForTouchGesture:withResolver:];
                    }

                    v26 = 0;
                  }
                }

                else
                {
                  v8 = v36;
                  v6 = v37;
                  v27 = v38;
                }

                if (![(VOSCommandProfile *)v27 _checkCommandCapabilities:v26])
                {

                  v26 = 0;
                }

                v13 = v39;

                goto LABEL_39;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v13 = v39;
        v16 = v35;
      }

      v15 = [v39 countByEnumeratingWithState:&v44 objects:v49 count:16];
      v26 = 0;
      v8 = v36;
      v6 = v37;
    }

    while (v15);
  }

  else
  {
    v26 = 0;
  }

LABEL_39:

  v33 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)commandForKeyChord:(id)a3 withResolver:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(VOSCommandProfile *)self _profileModeForResolver:v7];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [v8 commands];
  v31 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v31)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v10 = *v39;
  v32 = v8;
  v33 = v9;
  v29 = *v39;
  v30 = self;
  do
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(*(&v38 + 1) + 8 * i);
      if ([v7 isQuickNavKeyboardMode])
      {
        [v12 quickNavShortcuts];
      }

      else
      {
        [v12 keyboardShortcuts];
      }
      v13 = ;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = *v35;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v34 + 1) + 8 * j) keyChord];
          v20 = [v19 isEqual:v6];

          if (v20)
          {
            if ([v12 hasSecondaryCommands])
            {
              v22 = v30;
              v23 = [(VOSCommandProfile *)v30 _resolvedSecondaryCommandForProfileCommand:v12 resolver:v7];
              v8 = v32;
              if (v23)
              {
                v21 = v23;
LABEL_27:
                v9 = v33;
                if ([(VOSCommandProfile *)v22 availabilityForCommand:v21 withResolver:v7]== 1)
                {
                  v26 = VOTLogCommon();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    [VOSCommandProfile commandForTouchGesture:withResolver:];
                  }

                  v21 = 0;
                  v8 = v32;
                }

                goto LABEL_32;
              }
            }

            else
            {
              v24 = [v7 resolvingEventOccurredBlock];

              v8 = v32;
              v22 = v30;
              if (v24)
              {
                v25 = [v7 resolvingEventOccurredBlock];
                (v25)[2](v25, 0, v7);
              }
            }

            v21 = [v12 command];
            if (v21)
            {
              goto LABEL_27;
            }

            v9 = v33;
LABEL_32:

            goto LABEL_33;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_17:

      v9 = v33;
      v10 = v29;
    }

    v21 = 0;
    v8 = v32;
    v31 = [v33 countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v31);
LABEL_33:

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_resolvedSecondaryCommandForProfileCommand:(id)a3 resolver:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 pressCount];
  v8 = [v5 secondaryCommandsForPressCount:v7];
  v9 = [v8 count];
  if (v7 >= 2 && !v9)
  {
    v10 = [v6 resolvingEventOccurredBlock];

    if (v10)
    {
      v11 = [v6 resolvingEventOccurredBlock];
      (v11)[2](v11, 1, v6);
    }

    v12 = [v5 secondaryCommandsForPressCount:1];

    v8 = v12;
  }

  if ([v8 count])
  {
    v13 = [v6 context];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v26;
LABEL_9:
      v19 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        if ([v20 context] == v13)
        {
          break;
        }

        if (![v20 context])
        {
          v21 = [v20 command];

          v17 = v21;
        }

        if (v16 == ++v19)
        {
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            goto LABEL_9;
          }

          goto LABEL_22;
        }
      }

      v22 = [v20 command];

      if (v22)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = 0;
LABEL_22:
    }

    v17 = v17;
    v22 = v17;
LABEL_24:
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)allCommandsWithResolver:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VOSCommandProfile *)self _profileModeForResolver:v4];
  v6 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v5 commands];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v24 + 1) + 8 * i) command];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = MEMORY[0x277CCAC30];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __45__VOSCommandProfile_allCommandsWithResolver___block_invoke;
  v21 = &unk_2784F38E0;
  v22 = self;
  v23 = v4;
  v14 = v4;
  v15 = [v13 predicateWithBlock:&v18];
  [v6 filterUsingPredicate:{v15, v18, v19, v20, v21, v22}];

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)allSiriShortcutCommandsWithResolver:(id)a3
{
  v4 = [(VOSCommandProfile *)self delegate];
  v5 = [v4 availableSiriShortcuts:self];
  v6 = [v5 ax_mappedArrayUsingBlock:&__block_literal_global_13];

  return v6;
}

- (id)allShortcutBindingsWithResolver:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [v5 copy];

  v8 = +[VOSScreenreaderMode Default];
  [v7 setScreenreaderMode:v8];

  [(VOSCommandProfile *)self _profileModeForResolver:v7];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v32 = 0u;
  obj = [v23 commands];
  v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if ([v7 isQuickNavKeyboardMode])
        {
          [v13 quickNavShortcuts];
        }

        else
        {
          [v13 keyboardShortcuts];
        }
        v14 = ;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v25 + 1) + 8 * j) keyChord];
              [v6 addObject:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)userPresentableAllShortcutBindingsWithResolver:(id)a3
{
  v3 = [(VOSCommandProfile *)self allShortcutBindingsWithResolver:a3];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_317_0];

  return v5;
}

uint64_t __68__VOSCommandProfile_userPresentableAllShortcutBindingsWithResolver___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isFunctionKeyChord];
  v7 = [v5 isFunctionKeyChord];
  if (!v6 || v7)
  {
    if (v6 & 1 | ((v7 & 1) == 0))
    {
      v9 = [v4 keys];
      v10 = [v9 reverseObjectEnumerator];
      v11 = [v10 allObjects];
      v12 = [v11 componentsJoinedByString:&stru_283729578];

      v13 = [v5 keys];
      v14 = [v13 reverseObjectEnumerator];
      v15 = [v14 allObjects];
      v16 = [v15 componentsJoinedByString:&stru_283729578];

      v17 = [v4 keys];
      v18 = [v17 lastObject];
      v19 = [v18 lowercaseString];

      v20 = [v5 keys];
      v21 = [v20 lastObject];
      v22 = [v21 lowercaseString];

      v8 = [v12 compare:v16 options:{objc_msgSend(v19, "isEqualToString:", v22) ^ 1}];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)gestureBindingsForCommand:(id)a3 withResolver:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v26 = v7;
  v9 = [(VOSCommandProfile *)self _profileModeForResolver:v7];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [v9 commands];
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 command];
        v17 = [v16 isEqual:v6];

        if (v17)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v18 = [v15 gestures];
          v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v27 + 1) + 8 * j) gesture];
                [v8 addObject:v23];
              }

              v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v20);
          }

          goto LABEL_18;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)shortcutBindingsForCommand:(id)a3 withResolver:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  [(VOSCommandProfile *)self _profileModeForResolver:v7];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v33 = 0u;
  v9 = [v25 commands];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 command];
        v16 = [v15 isEqual:v6];

        if (v16)
        {
          if ([v7 isQuickNavKeyboardMode])
          {
            [v14 quickNavShortcuts];
          }

          else
          {
            [v14 keyboardShortcuts];
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v17 = v27 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v27;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v27 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [*(*(&v26 + 1) + 8 * j) keyChord];
                [v8 addObject:v22];
              }

              v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v19);
          }

          goto LABEL_21;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)commandHasAnyBindings:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VOSCommandProfile *)self gestureBindingsForCommand:v6 withResolver:v7];
  v9 = [v8 count];

  if (v9 || (-[VOSCommandProfile shortcutBindingsForCommand:withResolver:](self, "shortcutBindingsForCommand:withResolver:", v6, v7), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11))
  {
    v12 = 1;
  }

  else
  {
    v14 = [v7 copy];
    [v14 setKeyboardMode:1];
    v15 = [(VOSCommandProfile *)self shortcutBindingsForCommand:v6 withResolver:v14];
    v12 = [v15 count] != 0;
  }

  return v12;
}

- (unint64_t)availabilityForGesture:(id)a3 withResolver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 screenreaderMode];
  v8 = +[VOSScreenreaderMode Default];

  if (v7 == v8)
  {
    v12 = +[VOSGesture OneFingerSingleTap];
    if (v12 == v5)
    {
      goto LABEL_37;
    }

    v13 = +[VOSGesture OneFingerDoubleTap];
    if (v13 != v5)
    {
      v14 = +[VOSGesture OneFingerFlickLeft];
      v15 = v14;
      if (v14 != v5)
      {
        v16 = +[VOSGesture OneFingerFlickRight];

        if (v16 == v5)
        {
          goto LABEL_38;
        }

        v17 = +[VOSGesture TwoFingerSingleTapAndHold];

        if (v17 == v5)
        {
          goto LABEL_38;
        }

        v18 = +[VOSGesture OneFingerSingleTapAndHold];
        if (v18 != v5)
        {
          v19 = +[VOSGesture OneFingerDoubleTapAndHold];
          if (v19 != v5)
          {
            v20 = +[VOSGesture TwoFingerDoubleTapAndHold];
            if (v20 != v5)
            {
              v21 = +[VOSGesture ThreeFingerSingleTapAndHold];
              v22 = v21;
              if (v21 != v5)
              {
                v23 = +[VOSGesture ThreeFingerDoubleTapAndHold];

                if (v23 == v5)
                {
LABEL_65:
                  v11 = 2;
LABEL_39:
                  if (([v6 isIPad] & 1) == 0)
                  {
                    v37 = +[VOSGesture fiveFingerGestures];
                    v38 = [v37 containsObject:v5];

                    if (v38)
                    {
                      v11 = 2;
                    }
                  }

                  v39 = +[VOSGesture oneFingerSplitGestures];
                  if ([v39 containsObject:v5])
                  {
                    goto LABEL_49;
                  }

                  v40 = +[VOSGesture twoFingerSplitGestures];
                  v41 = [v40 containsObject:v5];

                  if (v41)
                  {
                    goto LABEL_50;
                  }

LABEL_57:
                  if (v11 != -1)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_4;
                }

                v12 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
                if (v12 != v5)
                {
                  v24 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];

                  if (v24 != v5)
                  {
                    v18 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
                    if (v18 != v5)
                    {
                      v25 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];

                      if (v25 != v5)
                      {
                        v26 = +[VOSGesture TwoFingerPinch];

                        if (v26 == v5)
                        {
                          v11 = 2;
                        }

                        else
                        {
                          v11 = -1;
                        }

                        goto LABEL_39;
                      }

                      goto LABEL_65;
                    }

                    goto LABEL_64;
                  }

LABEL_38:
                  v11 = 1;
                  goto LABEL_39;
                }

LABEL_37:

                goto LABEL_38;
              }
            }
          }
        }

LABEL_64:

        goto LABEL_65;
      }
    }

    goto LABEL_37;
  }

  v9 = +[VOSScreenreaderMode Handwriting];

  if (v7 != v9)
  {
    v10 = +[VOSScreenreaderMode BrailleScreenInput];

    if (v7 != v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_51;
    }

    v33 = +[VOSGesture TwoFingerRotateCounterclockwise];
    if (v33 != v5)
    {
      v34 = +[VOSGesture TwoFingerRotateClockwise];

      if (v34 == v5)
      {
        goto LABEL_50;
      }

      v35 = +[VOSGesture TwoFingerScrub];

      if (v35 == v5)
      {
LABEL_60:
        v11 = 1;
        goto LABEL_51;
      }

      if ([VOSGestureCategory isTapGesture:v5]|| [VOSGestureCategory isTapAndHoldGesture:v5])
      {
LABEL_50:
        v11 = 2;
        goto LABEL_51;
      }

      v36 = +[VOSGesture oneFingerSplitGestures];
      if ([v36 containsObject:v5])
      {

        goto LABEL_60;
      }

      v49 = +[VOSGesture twoFingerSplitGestures];
      v50 = [v49 containsObject:v5];

      if (v50)
      {
        goto LABEL_60;
      }

      v33 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
      if (v33 != v5)
      {
        v51 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
        if (v51 != v5)
        {
          v52 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
          v53 = v52;
          if (v52 != v5)
          {
            v54 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];

            if (v54 != v5)
            {
              goto LABEL_4;
            }

            goto LABEL_50;
          }
        }
      }
    }

    goto LABEL_50;
  }

  v27 = +[VOSGesture TwoFingerRotateCounterclockwise];
  if (v27 == v5)
  {
    goto LABEL_46;
  }

  v28 = +[VOSGesture TwoFingerRotateClockwise];
  v29 = v28;
  if (v28 == v5)
  {

LABEL_46:
    goto LABEL_47;
  }

  v30 = +[VOSGesture TwoFingerScrub];

  if (v30 == v5)
  {
LABEL_47:
    v32 = 1;
    goto LABEL_48;
  }

  v31 = +[VOSGesture TwoFingerPinch];

  if (v31 == v5)
  {
    v32 = 2;
  }

  else
  {
    v32 = -1;
  }

LABEL_48:
  v42 = +[VOSGesture oneFingerGestures];
  v43 = [v42 containsObject:v5];

  v39 = +[VOSGesture oneFingerSplitGestures];
  if ([v39 containsObject:v5])
  {
LABEL_49:

    goto LABEL_50;
  }

  v45 = v43 == 0;
  v11 = 2;
  if (v45)
  {
    v46 = v32;
  }

  else
  {
    v46 = 2;
  }

  v47 = +[VOSGesture twoFingerSplitGestures];
  v48 = [v47 containsObject:v5];

  if ((v48 & 1) == 0)
  {
    v11 = v46;
    goto LABEL_57;
  }

LABEL_51:

  return v11;
}

- (unint64_t)availabilityForShortcut:(id)a3 withResolver:(id)a4
{
  v4 = a4;
  v5 = [v4 screenreaderMode];
  v6 = [v4 isQuickNavKeyboardMode];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = +[VOSScreenreaderMode Default];

    if (v5 != v8)
    {
      v9 = +[VOSScreenreaderMode Handwriting];

      if (v5 != v9)
      {
        +[VOSScreenreaderMode BrailleScreenInput];
      }
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)availabilityForCommand:(id)a3 withResolver:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((AXIsInternalInstall() & 1) != 0 || (+[VOSCommandCategory internalOnly](VOSCommandCategory, "internalOnly"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsCommand:v5], v7, (v8 & 1) == 0))
  {
    v10 = [v6 screenreaderMode];
    v11 = +[VOSScreenreaderMode Default];

    if (v10 == v11)
    {
      if ([v6 isIPad] & 1) != 0 || (objc_msgSend(v6, "isWatch"))
      {
        v9 = -1;
      }

      else
      {
        v17 = +[VOSCommand ToggleDock];

        if (v17 == v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }
      }

      if (([v6 isIPhone] & 1) == 0)
      {
        v18 = +[VOSCommand ToggleReachability];

        if (v18 == v5)
        {
          v9 = 1;
          goto LABEL_22;
        }
      }

      if (v9 != -1)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v12 = +[VOSScreenreaderMode Handwriting];
      v13 = v12;
      if (v10 == v12)
      {

LABEL_12:
        v15 = +[VOSCommand GesturedTextInputLaunchApp];

        if (v15 != v5)
        {
          v16 = +[VOSScreenreaderMode Handwriting];

          if (v10 != v16)
          {
            +[VOSScreenreaderMode BrailleScreenInput];
          }
        }

        goto LABEL_21;
      }

      v14 = +[VOSScreenreaderMode BrailleScreenInput];

      if (v10 == v14)
      {
        goto LABEL_12;
      }
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v9 = 1;
LABEL_23:

  return v9;
}

- (BOOL)commandHasModifiedBindingsWhenZoomEnabled:(id)a3 withResolver:(id)a4
{
  v4 = [(VOSCommandProfile *)self gestureBindingsForCommand:a3 withResolver:a4];
  v5 = +[VOSGesture conflictingZoomGestures];
  v6 = [v4 intersectsSet:v5];

  return v6;
}

- (id)addGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(VOSCommandProfile *)self _modifiedGestureRespectingHandednessSetting:a3];
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:v9];

  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:v8 inMode:v11];
  if (!v12)
  {
    v12 = [_VOSProfileCommand profileCommandWithCommand:v8];
  }

  v13 = +[VOSCommand None];
  v14 = [(VOSCommandProfile *)self _profileCommandForCommand:v13 inMode:v11];

  v15 = [_VOSProfileGesture profileGestureWithGesture:v10];
  v16 = [v14 gestures];
  v17 = [v16 containsObject:v15];

  if (v17)
  {
    [v14 removeGesture:v15];
  }

  [v12 addGesture:v15];
  [v11 addCommand:v12];

  return 0;
}

- (id)removeGesture:(id)a3 fromCommand:(id)a4 withResolver:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(VOSCommandProfile *)self _modifiedGestureRespectingHandednessSetting:a3];
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:v9];
  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:v8 inMode:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 profileGestureForGesture:v10];
    if (v14)
    {
      [v13 removeGesture:v14];
      v15 = [v13 gestures];
      v16 = [v15 count];

      if (!v16)
      {
        v17 = +[VOSCommand None];
        v18 = [(VOSCommandProfile *)self addGesture:v10 toCommand:v17 withResolver:v9];
      }

      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove gesture '%@' from command '%@' with resolver '%@'. profileGesture was nil.", v10, v8, v9}];
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove gesture '%@' from command '%@' with resolver '%@'. profileCommand was nil.", v10, v8, v9}];
  }

  return v19;
}

- (id)addKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:v9];
  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:v8 inMode:v11];
  if (v12)
  {
    v13 = [_VOSProfileKeyChord profileKeyChordWithKeyChord:v10];

    if ([v9 isQuickNavKeyboardMode])
    {
      [v12 addQuickNavShortcut:v13];
    }

    else
    {
      [v12 addKeyboardShortcut:v13];
    }

    v14 = 0;
    v10 = v13;
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot add keychord '%@' to command '%@' with resolver '%@'. ProfileCommand was nil.", v10, v8, v9}];
  }

  return v14;
}

- (id)removeKeyChord:(id)a3 fromCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:v10];
  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:v9 inMode:v11];
  if (v12)
  {
    if ([v10 isQuickNavKeyboardMode])
    {
      [v12 profileQuickNavShortcutForKeyChord:v8];
    }

    else
    {
      [v12 profileKeyboardShortcutForKeyChord:v8];
    }
    v14 = ;
    if (v14)
    {
      if ([v10 isQuickNavKeyboardMode])
      {
        [v12 removeQuickNavShortcut:v14];
      }

      else
      {
        [v12 removeKeyboardShortcut:v14];
      }

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove keychord '%@' from command '%@' with resolver '%@'. profileKeyChord was nil.", v8, v9, v10}];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove keychord '%@' from command '%@' with resolver '%@'. profileCommand was nil.", v8, v9, v10}];
  }

  return v13;
}

- (id)validateCanAddGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a4;
  v9 = [(VOSCommandProfile *)self commandForTouchGesture:a3 withResolver:a5];
  LODWORD(a3) = [v9 isEqual:v8];

  if (a3)
  {
    v10 = [[VOSCommandProfileValidation alloc] initWithType:1];
  }

  else if (v9 && (+[VOSCommand None](VOSCommand, "None"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) == 0))
  {
    v10 = [VOSCommandProfileValidation gestureAssignedToOtherCommandValidation:v9];
  }

  else
  {
    v10 = +[VOSCommandProfileValidation successfulValidation];
  }

  v13 = v10;

  return v13;
}

- (id)validateCanAddKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a4;
  v9 = [(VOSCommandProfile *)self commandForKeyChord:a3 withResolver:a5];
  LODWORD(a3) = [v9 isEqual:v8];

  if (a3)
  {
    v10 = [[VOSCommandProfileValidation alloc] initWithType:3];
  }

  else
  {
    if (v9)
    {
      [VOSCommandProfileValidation keyboardShortcutAssignedToOtherCommandValidation:v9];
    }

    else
    {
      +[VOSCommandProfileValidation successfulValidation];
    }
    v10 = ;
  }

  v11 = v10;

  return v11;
}

- (id)_profileModeForResolver:(id)a3
{
  v4 = [a3 screenreaderMode];
  v5 = [(VOSCommandProfile *)self _profileModeForScreenreaderMode:v4];

  return v5;
}

- (id)_profileModeForScreenreaderMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_modes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 mode];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_profileCommandForCommand:(id)a3 inMode:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [v6 commands];
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v12 command];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          v19 = v12;

          goto LABEL_28;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v5 commandType];
  if (v15 == 1)
  {
    goto LABEL_22;
  }

  if (v15)
  {
LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  v16 = [v6 mode];
  v17 = +[VOSScreenreaderMode Handwriting];
  v18 = v17;
  if (v16 == v17)
  {
    v20 = +[VOSCommandCategory handwriting];
    v21 = [v20 containsCommand:v5];

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v22 = [v6 mode];
  v23 = +[VOSScreenreaderMode BrailleScreenInput];
  v24 = v23;
  if (v22 == v23)
  {
    v25 = +[VOSCommandCategory brailleScreenInput];
    v26 = [v25 containsCommand:v5];

    if (v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v27 = [v6 mode];
  v28 = +[VOSScreenreaderMode Default];
  v29 = v28;
  if (v27 == v28)
  {
    v30 = +[VOSCommandCategory allCategories];
    v31 = [VOSCommandCategory categories:v30 containsCommand:v5];

    if (v31)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v32 = +[VOSCommand None];
  v33 = [v5 isEqual:v32];

  if ((v33 & 1) == 0)
  {
    v34 = VOTLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [VOSCommandProfile _profileCommandForCommand:inMode:];
    }

    goto LABEL_27;
  }

LABEL_22:
  v19 = [_VOSProfileCommand profileCommandWithCommand:v5];
  if (v19)
  {
    [v6 addCommand:v19];
  }

LABEL_28:

  v35 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)_overlay:(id)a3 shouldIncludeItem:(id)a4
{
  v4 = 1;
  if (a3 && a4)
  {
    v5 = [a3 objectForKeyedSubscript:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v5 BOOLValue];
    }
  }

  return v4;
}

+ (id)_parseProfileProperties:(id)a3 overlayProperties:(id)a4
{
  v6 = MEMORY[0x277CBEB58];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [v8 objectForKeyedSubscript:@"ScreenReaderModes"];

  v11 = [v7 objectForKeyedSubscript:@"ScreenReaderModes"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_2;
  v17[3] = &unk_2784F39B8;
  v21 = a1;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v20 = &__block_literal_global_348;
  v13 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v17];
  v14 = v20;
  v15 = v12;

  return v12;
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a2;
  v8 = a4;
  v9 = a5;
  v10 = [_VOSProfileCommand profileCommandWithStringValue:a3];
  if (v10)
  {
    [v11 addCommand:v10];
    [VOSCommandProfile _addGesturesToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
    [VOSCommandProfile _addKeyboardShortcutsToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
    [VOSCommandProfile _addQuickNavShortcutsToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
    [VOSCommandProfile _addSecondaryCommandsToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
  }
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([a1[7] _overlay:a1[4] shouldIncludeItem:v5])
  {
    v7 = [_VOSProfileMode profileModeWithStringValue:v5];
    if (v7)
    {
      [a1[5] addObject:v7];
      v8 = [a1[4] objectForKeyedSubscript:v5];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_3;
      v19[3] = &unk_2784F3968;
      v20 = v8;
      v14 = *(a1 + 3);
      v9 = v14;
      v22 = v14;
      v10 = v7;
      v21 = v10;
      v11 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v19];
      v12 = [v6 allKeys];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_4;
      v15[3] = &unk_2784F3990;
      v16 = v12;
      v18 = a1[6];
      v17 = v10;
      v13 = v12;
      [v11 enumerateKeysAndObjectsUsingBlock:v15];
    }
  }
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(a1 + 56) _overlay:*(a1 + 32) shouldIncludeItem:v9])
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = [*(a1 + 32) objectForKeyedSubscript:v9];
    (*(v6 + 16))(v6, v7, v9, v5, v8);
  }
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v6 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }
}

+ (void)_addGesturesToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 _overlay:v10 shouldIncludeItem:@"TouchGesture"])
  {
    v11 = [v10 objectForKeyedSubscript:@"TouchGesture"];
    if (!v11)
    {
      v11 = [v9 objectForKeyedSubscript:@"TouchGesture"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25[0] = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      }

      else
      {
        v12 = 0;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [_VOSProfileGesture profileGestureWithStringValue:*(*(&v20 + 1) + 8 * v17), v20];
          if (v18)
          {
            [v8 addGesture:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)_addKeyboardShortcutsToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 _overlay:v10 shouldIncludeItem:@"KeyChord"])
  {
    v11 = [v10 objectForKeyedSubscript:@"KeyChord"];
    if (!v11)
    {
      v11 = [v9 objectForKeyedSubscript:@"KeyChord"];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [a1 _profileKeyChordsFromDictionaryValue:{v11, 0}];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v8 addKeyboardShortcut:*(*(&v18 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_addQuickNavShortcutsToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 _overlay:v10 shouldIncludeItem:@"QuickNav"])
  {
    v11 = [v10 objectForKeyedSubscript:@"QuickNav"];
    if (!v11)
    {
      v11 = [v9 objectForKeyedSubscript:@"QuickNav"];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [a1 _profileKeyChordsFromDictionaryValue:{v11, 0}];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v8 addQuickNavShortcut:*(*(&v18 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_addSecondaryCommandsToCommand:(id)a3 fromCommandProperties:(id)a4 overlayProperties:(id)a5
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:@"SecondaryCommands"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke;
    v9[3] = &unk_2784F39E0;
    v10 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v9];
    v8 = v10;
LABEL_6:

    goto LABEL_7;
  }

  if (v7)
  {
    v8 = VOTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[VOSCommandProfile _addSecondaryCommandsToCommand:fromCommandProperties:overlayProperties:];
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"Context"];
  v8 = v7;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"TextEntry"])
  {
    v9 = 1;
LABEL_7:
    v10 = [v6 objectForKeyedSubscript:@"PressCount"];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &unk_2837363C8;
    }

    v12 = [_VOSProfileSecondaryCommand profileSecondaryCommandWithStringValue:v5 context:v9 pressCount:[v11 unsignedIntegerValue]];
    if (v12)
    {
      [*(a1 + 32) addSecondaryCommand:v12];
    }

    else
    {
      v13 = VOTLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke_cold_2();
      }
    }

    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"TableNavigation"])
  {
    v9 = 2;
    goto LABEL_7;
  }

  v11 = VOTLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke_cold_1();
  }

LABEL_16:
}

+ (id)_profileKeyChordsFromDictionaryValue:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_VOSProfileKeyChord profileKeyChordWithStringValue:*(*(&v15 + 1) + 8 * i), v15];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (VOSCommandProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)commandForTouchGesture:withResolver:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_223C70000, v0, v1, "commandForGesture resolved to unsupported command for this host: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_profileCommandForCommand:inMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_223C70000, v0, v1, "built-in command was unexpectedly unmapped: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_addSecondaryCommandsToCommand:fromCommandProperties:overlayProperties:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_223C70000, v0, v1, "command secondaryInfo is of unexpected type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_223C70000, v0, v1, "command:secondaryInfo:context is of unexpected type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_223C70000, v0, v1, "unknown secondary command: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end