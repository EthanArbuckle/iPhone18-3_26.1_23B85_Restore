@interface SBKeyboardFocusSceneProvider
- (BOOL)anyConnectedSBWindowSceneContainsSceneIdentity:(id)identity;
- (BOOL)isOverlayUIScene:(id)scene;
- (BOOL)isSystemUISceneIdentityToken:(id)token;
- (FBScene)spotlightScene;
- (id)deviceApplicationSceneHandleForSceneIdentity:(id)identity;
- (id)sceneForFocusTarget:(id)target;
- (id)sceneForIdentityToken:(id)token;
- (id)sceneForIdentityTokenStringRepresentation:(id)representation;
@end

@implementation SBKeyboardFocusSceneProvider

- (FBScene)spotlightScene
{
  v2 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  sceneIdentifier = [v2 sceneIdentifier];
  if (sceneIdentifier)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:sceneIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sceneForIdentityToken:(id)token
{
  stringRepresentation = [token stringRepresentation];
  v5 = [(SBKeyboardFocusSceneProvider *)self sceneForIdentityTokenStringRepresentation:stringRepresentation];

  return v5;
}

- (id)sceneForIdentityTokenStringRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [mEMORY[0x277D0AAD8] sceneFromIdentityTokenStringRepresentation:representationCopy];

    if (!v5)
    {
      systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
      v5 = [systemUIScenesCoordinator sceneFromIdentityTokenStringRepresentation:representationCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sceneForFocusTarget:(id)target
{
  sceneIdentityToken = [target sceneIdentityToken];
  v5 = [(SBKeyboardFocusSceneProvider *)self sceneForIdentityToken:sceneIdentityToken];

  return v5;
}

- (BOOL)isOverlayUIScene:(id)scene
{
  v3 = SBApp;
  sceneCopy = scene;
  systemUIScenesCoordinator = [v3 systemUIScenesCoordinator];
  overlayUISceneController = [systemUIScenesCoordinator overlayUISceneController];
  jobLabel = [overlayUISceneController jobLabel];
  clientHandle = [sceneCopy clientHandle];

  processHandle = [clientHandle processHandle];
  consistentJobLabel = [processHandle consistentJobLabel];
  v11 = [jobLabel isEqualToString:consistentJobLabel];

  return v11;
}

- (BOOL)isSystemUISceneIdentityToken:(id)token
{
  v3 = SBApp;
  tokenCopy = token;
  systemUIScenesCoordinator = [v3 systemUIScenesCoordinator];
  overlayUISceneController = [systemUIScenesCoordinator overlayUISceneController];
  v7 = [overlayUISceneController sceneFromIdentityToken:tokenCopy];

  return v7 != 0;
}

- (id)deviceApplicationSceneHandleForSceneIdentity:(id)identity
{
  v37 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v25 = [connectedWindowScenes countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v6 = *v32;
    v26 = connectedWindowScenes;
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(connectedWindowScenes);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        sceneManager = [v8 sceneManager];
        externalApplicationSceneHandles = [sceneManager externalApplicationSceneHandles];

        v11 = [externalApplicationSceneHandles countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(externalApplicationSceneHandles);
              }

              v15 = *(*(&v27 + 1) + 8 * j);
              sceneIfExists = [v15 sceneIfExists];
              identityToken = [sceneIfExists identityToken];
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

                connectedWindowScenes = v26;
                v19 = v22;

                goto LABEL_24;
              }
            }

            v12 = [externalApplicationSceneHandles countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        connectedWindowScenes = v26;
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

- (BOOL)anyConnectedSBWindowSceneContainsSceneIdentity:(id)identity
{
  v32 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (identityCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];

    v21 = [connectedWindowScenes countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(connectedWindowScenes);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          sceneManager = [v8 sceneManager];
          externalApplicationSceneHandles = [sceneManager externalApplicationSceneHandles];

          v11 = [externalApplicationSceneHandles countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                  objc_enumerationMutation(externalApplicationSceneHandles);
                }

                sceneIfExists = [*(*(&v22 + 1) + 8 * j) sceneIfExists];
                identityToken = [sceneIfExists identityToken];
                v17 = BSEqualObjects();

                if (v17)
                {

                  v18 = 1;
                  goto LABEL_21;
                }
              }

              v12 = [externalApplicationSceneHandles countByEnumeratingWithState:&v22 objects:v30 count:16];
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
        v21 = [connectedWindowScenes countByEnumeratingWithState:&v26 objects:v31 count:16];
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