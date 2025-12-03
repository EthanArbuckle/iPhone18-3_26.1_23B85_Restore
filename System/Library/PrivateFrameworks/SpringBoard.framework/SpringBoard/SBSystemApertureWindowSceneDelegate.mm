@interface SBSystemApertureWindowSceneDelegate
- (id)_associatedWindowSceneForScene:(id)scene;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SBSystemApertureWindowSceneDelegate

- (id)_associatedWindowSceneForScene:(id)scene
{
  _FBSScene = [scene _FBSScene];
  windowSceneManager = [SBApp windowSceneManager];
  settings = [_FBSScene settings];
  displayIdentity = [settings displayIdentity];
  v7 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v7;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  role = [session role];
  v9 = [role isEqualToString:@"SBUIWindowSceneSessionRoleSystemAperture"];
  v10 = [role isEqualToString:@"SBUIWindowSceneSessionRoleSystemApertureCurtain"];
  v11 = v10;
  if (v9 & 1) != 0 || (v10)
  {
    if (v9)
    {
LABEL_4:
      v12 = objc_opt_class();
      v13 = sceneCopy;
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        goto LABEL_25;
      }

      if (self->_systemApertureWindowScene)
      {
        [SBSystemApertureWindowSceneDelegate scene:a2 willConnectToSession:self options:?];
      }

      objc_storeStrong(&self->_systemApertureWindowScene, v14);
      v16 = [(SBSystemApertureWindowSceneDelegate *)self _associatedWindowSceneForScene:v15];
      [v15 setAssociatedWindowScene:v16];
      systemApertureController = [v16 systemApertureController];
      [systemApertureController createHighLevelSystemApertureWindowWithWindowScene:v15];
      embeddedScenesConnectionManager = [SBApp embeddedScenesConnectionManager];
      [embeddedScenesConnectionManager noteSystemApertureSceneConnected:v15];
      goto LABEL_24;
    }
  }

  else
  {
    [SBSystemApertureWindowSceneDelegate scene:a2 willConnectToSession:self options:?];
    if (v9)
    {
      goto LABEL_4;
    }
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  v19 = objc_opt_class();
  v20 = sceneCopy;
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v15 = v21;

  if (v15)
  {
    if (self->_superHighLevelCurtainWindowScene)
    {
      [SBSystemApertureWindowSceneDelegate scene:a2 willConnectToSession:self options:?];
    }

    objc_storeStrong(&self->_superHighLevelCurtainWindowScene, v21);
    v16 = [(SBSystemApertureWindowSceneDelegate *)self _associatedWindowSceneForScene:v15];
    [v15 setAssociatedWindowScene:v16];
    systemApertureController = [v16 systemApertureController];
    [systemApertureController createSuperHighLevelCurtainWithWindowScene:v15];
    embeddedScenesConnectionManager = [SBApp embeddedScenesConnectionManager];
    [embeddedScenesConnectionManager noteSystemApertureCurtainSceneConnected:v15];
LABEL_24:
  }

LABEL_25:

LABEL_26:
}

- (void)scene:(uint64_t)a1 willConnectToSession:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureWindowSceneDelegate.m" lineNumber:48 description:@"unexpected role for SBSystemApertureWindowSceneDelegate"];
}

- (void)scene:(uint64_t)a1 willConnectToSession:(uint64_t)a2 options:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureWindowSceneDelegate.m" lineNumber:63 description:@"Only support one of these"];
}

- (void)scene:(uint64_t)a1 willConnectToSession:(uint64_t)a2 options:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureWindowSceneDelegate.m" lineNumber:52 description:@"Only support one of these"];
}

@end