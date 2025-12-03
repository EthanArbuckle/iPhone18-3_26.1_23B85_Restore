@interface SBSApplicationShortcutItem(SBHAdditions)
- (id)_monogrammerForKey:()SBHAdditions style:;
- (void)_setupAssetManagerWithApplicationBundleURL:()SBHAdditions;
- (void)sb_buildIconImageWithApplicationBundleURL:()SBHAdditions image:systemImageName:;
@end

@implementation SBSApplicationShortcutItem(SBHAdditions)

- (void)_setupAssetManagerWithApplicationBundleURL:()SBHAdditions
{
  v9 = a3;
  _assetManager = [self _assetManager];

  if (!_assetManager)
  {
    v5 = [v9 URLByAppendingPathComponent:@"Assets.car"];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v8 = [objc_alloc(MEMORY[0x1E69DD368]) initWithURL:v5 idiom:userInterfaceIdiom error:0];
    objc_setAssociatedObject(self, "SBSApplicationShortcutItem.AssetManager", v8, 1);
  }
}

- (id)_monogrammerForKey:()SBHAdditions style:
{
  v7 = objc_getAssociatedObject(self, key);
  if (!v7)
  {
    v7 = [objc_alloc(getCNMonogrammerClass()) initWithStyle:a4 diameter:35.0];
    objc_setAssociatedObject(self, key, v7, 1);
  }

  return v7;
}

- (void)sb_buildIconImageWithApplicationBundleURL:()SBHAdditions image:systemImageName:
{
  v8 = a3;
  icon = [self icon];
  v10 = 0x1E69D4000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    systemImageName = [icon systemImageName];
  }

  else
  {
    systemImageName = 0;
  }

  [self _setupAssetManagerWithApplicationBundleURL:v8];
  _assetManager = [self _assetManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateImageName = icon;
    systemImageName2 = [templateImageName systemImageName];

    if (systemImageName2)
    {
      [templateImageName systemImageName];
      v15 = 0;
      systemImageName = imageData = systemImageName;
LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    sbh_image = [templateImageName sbh_image];
    imageData = sbh_image;
LABEL_20:
    v15 = [sbh_image imageWithRenderingMode:2];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateImageName = [icon templateImageName];
    if (!templateImageName)
    {
      v15 = 0;
      goto LABEL_22;
    }

    v17 = [_assetManager imageNamed:templateImageName withTrait:0];
    imageData = v17;
    if (v8 && !v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.png", templateImageName];
      [v8 URLByAppendingPathComponent:v18];
      v19 = v48 = _assetManager;

      v20 = MEMORY[0x1E69DCAB8];
      path = [v19 path];
      imageData = [v20 imageWithContentsOfFile:path];

      v10 = 0x1E69D4000;
      _assetManager = v48;
    }

    sbh_image = imageData;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateImageName = icon;
    imageData = [templateImageName imageData];
    if (!imageData)
    {
      v15 = 0;
      goto LABEL_21;
    }

    dataType = [templateImageName dataType];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v26 = v25;

    v27 = _assetManager;
    if (dataType == 1)
    {
      v42 = SBLogIcon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [SBSApplicationShortcutItem(SBHAdditions) sb_buildIconImageWithApplicationBundleURL:v42 image:? systemImageName:?];
      }
    }

    else if (!dataType)
    {
      v28 = [MEMORY[0x1E69DCAB8] imageWithData:imageData scale:v26];
LABEL_49:
      if ([templateImageName isTemplate])
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      v15 = [v28 imageWithRenderingMode:v43];

      _assetManager = v27;
      v10 = 0x1E69D4000;
      goto LABEL_21;
    }

    v28 = 0;
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = icon;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__SBSApplicationShortcutItem_SBHAdditions__sb_buildIconImageWithApplicationBundleURL_image_systemImageName___block_invoke;
    aBlock[3] = &unk_1E808C920;
    v51 = v32;
    v33 = _Block_copy(aBlock);
    _lightMonogrammer = [self _lightMonogrammer];
    v45 = v33;
    v47 = (*(v33 + 2))(v33, _lightMonogrammer);

    v35 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    imageConfiguration = [v35 imageConfiguration];

    _darkMonogrammer = [self _darkMonogrammer];
    v44 = (*(v33 + 2))(v33, _darkMonogrammer);

    v37 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    [v37 imageConfiguration];
    v38 = v49 = _assetManager;

    v39 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
    [v39 registerImage:v47 withConfiguration:imageConfiguration];
    [v39 registerImage:v44 withConfiguration:v38];
    v40 = objc_alloc_init(MEMORY[0x1E69DD1B8]);
    imageConfiguration2 = [v40 imageConfiguration];
    v15 = [v39 imageWithConfiguration:imageConfiguration2];

    v10 = 0x1E69D4000;
    _assetManager = v49;
  }

  else
  {
    v15 = 0;
  }

LABEL_23:
  if (systemImageName && !v15)
  {
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:systemImageName];
  }

  if (!systemImageName || v15)
  {
    if (!(systemImageName | v15))
    {
      sbh_defaultImage = [*(v10 + 456) sbh_defaultImage];
      v15 = [sbh_defaultImage imageWithRenderingMode:2];
    }

    if (a4)
    {
      goto LABEL_34;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:systemImageName];
      if (!a4)
      {
        goto LABEL_35;
      }

LABEL_34:
      v30 = v15;
      *a4 = v15;
      goto LABEL_35;
    }

    v15 = 0;
    if (a4)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  if (a5)
  {
    v31 = systemImageName;
    *a5 = systemImageName;
  }
}

@end