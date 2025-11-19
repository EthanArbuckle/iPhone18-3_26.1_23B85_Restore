@interface SBSUIInCallWindowSceneBSActionsHandler
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation SBSUIInCallWindowSceneBSActionsHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 mutableCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  v32 = v12;
  v33 = v10;
  v14 = v11;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = v9;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v16)
  {
    v35 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_25;
  }

  v17 = v16;
  v35 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *v41;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v41 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v40 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          v18 = v23;
        }

LABEL_19:
        [v23 addObject:v22];
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          v19 = v23;
        }

        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        BYTE4(v35) = 1;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        LOBYTE(v35) = 1;
      }

LABEL_20:
      [v13 removeObject:v22];
    }

    v17 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
  }

  while (v17);
LABEL_25:

  if ([v18 count])
  {
    [v14 _handleHardwareButtonEventSceneActions:v18];
  }

  if ([v19 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v37;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v14 _handleDeviceLockAction:*(*(&v36 + 1) + 8 * j)];
        }

        v26 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v26);
    }
  }

  v10 = v33;
  v9 = v34;
  if ((v35 & 0x100000000) != 0)
  {
    v29 = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v29 inCallWindowSceneHandleShowingNoticeForRevealingSystemControls:v14];
    }
  }

  if (v35)
  {
    v30 = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v30 inCallWindowSceneHandleSilenceRingtone:v14];
    }
  }

  v12 = v32;
LABEL_45:

  return v13;
}

@end