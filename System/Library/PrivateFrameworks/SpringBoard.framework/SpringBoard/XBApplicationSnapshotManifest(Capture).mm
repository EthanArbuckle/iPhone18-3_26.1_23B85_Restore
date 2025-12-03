@interface XBApplicationSnapshotManifest(Capture)
- (id)createSnapshotForSceneSnapshot:()Capture withName:uiClientSettings:;
@end

@implementation XBApplicationSnapshotManifest(Capture)

- (id)createSnapshotForSceneSnapshot:()Capture withName:uiClientSettings:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  configuration = [v8 configuration];
  scene = [v8 scene];
  identifier = [scene identifier];

  if (identifier)
  {
    v14 = [self createSnapshotWithGroupID:identifier];
    v15 = [MEMORY[0x277D65680] normalizeSnapshotName:v9];
    [v14 setName:v15];

    if ([configuration orientation] == 1)
    {
      [v14 setInterfaceOrientation:1];
    }

    else
    {
      settings = [configuration settings];
      [v14 setInterfaceOrientation:{objc_msgSend(settings, "interfaceOrientation")}];
    }

    [configuration frame];
    [v14 setReferenceSize:{v17, v18}];
    settings2 = [configuration settings];
    [settings2 frame];
    v21 = v20;
    v23 = v22;
    settings3 = [configuration settings];
    displayConfiguration = [settings3 displayConfiguration];
    [displayConfiguration bounds];
    v28 = v23 == v27 && v21 == v26;
    [v14 setFullScreen:v28];

    [v14 setContentType:0];
    expirationDate = [configuration expirationDate];
    [v14 setExpirationDate:expirationDate];

    [v14 setUserInterfaceStyle:XBGetUIUserInterfaceStyleForSceneSnapshot(v8)];
    v30 = XBGetCustomSafeAreaInsetsForSceneSnapshot(v8);
    [v14 setCustomSafeAreaInsets:v30];
    if (v10)
    {
      v31 = objc_alloc_init(MEMORY[0x277D656C8]);
      [v31 setHidden:{objc_msgSend(v10, "statusBarHidden")}];
      [v31 setStyle:{objc_msgSend(v10, "statusBarStyle")}];
      [v14 setStatusBarSettings:v31];
      [v14 setBackgroundStyle:{objc_msgSend(v10, "backgroundStyle")}];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end