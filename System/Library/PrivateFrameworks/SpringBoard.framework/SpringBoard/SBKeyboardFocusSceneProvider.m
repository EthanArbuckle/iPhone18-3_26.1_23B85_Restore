@interface SBKeyboardFocusSceneProvider
- (BOOL)anyConnectedSBWindowSceneContainsSceneIdentity:(id)a3;
- (BOOL)isOverlayUIScene:(id)a3;
- (BOOL)isSystemUISceneIdentityToken:(id)a3;
- (FBScene)spotlightScene;
- (id)deviceApplicationSceneHandleForSceneIdentity:(id)a3;
- (id)sceneForFocusTarget:(id)a3;
- (id)sceneForIdentityToken:(id)a3;
- (id)sceneForIdentityTokenStringRepresentation:(id)a3;
@end

@implementation SBKeyboardFocusSceneProvider

- (FBScene)spotlightScene
{
  v2 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  v3 = [v2 sceneIdentifier];
  if (v3)
  {
    v4 = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [v4 sceneWithIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sceneForIdentityToken:(id)a3
{
  v4 = [a3 stringRepresentation];
  v5 = [(SBKeyboardFocusSceneProvider *)self sceneForIdentityTokenStringRepresentation:v4];

  return v5;
}

- (id)sceneForIdentityTokenStringRepresentation:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [v4 sceneFromIdentityTokenStringRepresentation:v3];

    if (!v5)
    {
      v6 = [SBApp systemUIScenesCoordinator];
      v5 = [v6 sceneFromIdentityTokenStringRepresentation:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sceneForFocusTarget:(id)a3
{
  v4 = [a3 sceneIdentityToken];
  v5 = [(SBKeyboardFocusSceneProvider *)self sceneForIdentityToken:v4];

  return v5;
}

- (BOOL)isOverlayUIScene:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 systemUIScenesCoordinator];
  v6 = [v5 overlayUISceneController];
  v7 = [v6 jobLabel];
  v8 = [v4 clientHandle];

  v9 = [v8 processHandle];
  v10 = [v9 consistentJobLabel];
  v11 = [v7 isEqualToString:v10];

  return v11;
}

- (BOOL)isSystemUISceneIdentityToken:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 systemUIScenesCoordinator];
  v6 = [v5 overlayUISceneController];
  v7 = [v6 sceneFromIdentityToken:v4];

  return v7 != 0;
}

- (id)deviceApplicationSceneHandleForSceneIdentity:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [SBApp windowSceneManager];
  v5 = [v4 connectedWindowScenes];

  v25 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v6 = *v32;
    v26 = v5;
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = [v8 sceneManager];
        v10 = [v9 externalApplicationSceneHandles];

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * j);
              v16 = [v15 sceneIfExists];
              v17 = [v16 identityToken];
              v18 = BSEqualObjects();

              if (v18)
              {
                v20 = objc_opt_class();
                v21 = v15;
                if (v20)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = 0;
                  }
                }

                else
                {
                  v22 = 0;
                }

                v5 = v26;
                v19 = v22;

                goto LABEL_24;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v26;
        v6 = v24;
      }

      v19 = 0;
      v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    v19 = 0;
  }

LABEL_24:

  return v19;
}

- (BOOL)anyConnectedSBWindowSceneContainsSceneIdentity:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [SBApp windowSceneManager];
    v5 = [v4 connectedWindowScenes];

    v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v6 = *v27;
      v20 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v9 = [v8 sceneManager];
          v10 = [v9 externalApplicationSceneHandles];

          v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v22 + 1) + 8 * j) sceneIfExists];
                v16 = [v15 identityToken];
                v17 = BSEqualObjects();

                if (v17)
                {

                  v18 = 1;
                  goto LABEL_21;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v6 = v20;
        }

        v18 = 0;
        v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    else
    {
      v18 = 0;
    }

LABEL_21:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end