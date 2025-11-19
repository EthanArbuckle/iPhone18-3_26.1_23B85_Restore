@interface SBSApplicationShortcutItem(SBHAdditions)
- (id)_monogrammerForKey:()SBHAdditions style:;
- (void)_setupAssetManagerWithApplicationBundleURL:()SBHAdditions;
- (void)sb_buildIconImageWithApplicationBundleURL:()SBHAdditions image:systemImageName:;
@end

@implementation SBSApplicationShortcutItem(SBHAdditions)

- (void)_setupAssetManagerWithApplicationBundleURL:()SBHAdditions
{
  v9 = a3;
  v4 = [a1 _assetManager];

  if (!v4)
  {
    v5 = [v9 URLByAppendingPathComponent:@"Assets.car"];
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = [objc_alloc(MEMORY[0x1E69DD368]) initWithURL:v5 idiom:v7 error:0];
    objc_setAssociatedObject(a1, "SBSApplicationShortcutItem.AssetManager", v8, 1);
  }
}

- (id)_monogrammerForKey:()SBHAdditions style:
{
  v7 = objc_getAssociatedObject(a1, key);
  if (!v7)
  {
    v7 = [objc_alloc(getCNMonogrammerClass()) initWithStyle:a4 diameter:35.0];
    objc_setAssociatedObject(a1, key, v7, 1);
  }

  return v7;
}

- (void)sb_buildIconImageWithApplicationBundleURL:()SBHAdditions image:systemImageName:
{
  v8 = a3;
  v9 = [a1 icon];
  v10 = 0x1E69D4000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = [v9 systemImageName];
  }

  else
  {
    v11 = 0;
  }

  [a1 _setupAssetManagerWithApplicationBundleURL:v8];
  v12 = [a1 _assetManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v14 = [v13 systemImageName];

    if (v14)
    {
      [v13 systemImageName];
      v15 = 0;
      v11 = v16 = v11;
LABEL_21:

LABEL_22:
      goto LABEL_23;
    }

    v22 = [v13 sbh_image];
    v16 = v22;
LABEL_20:
    v15 = [v22 imageWithRenderingMode:2];
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 templateImageName];
    if (!v13)
    {
      v15 = 0;
      goto LABEL_22;
    }

    v17 = [v12 imageNamed:v13 withTrait:0];
    v16 = v17;
    if (v8 && !v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.png", v13];
      [v8 URLByAppendingPathComponent:v18];
      v19 = v48 = v12;

      v20 = MEMORY[0x1E69DCAB8];
      v21 = [v19 path];
      v16 = [v20 imageWithContentsOfFile:v21];

      v10 = 0x1E69D4000;
      v12 = v48;
    }

    v22 = v16;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v16 = [v13 imageData];
    if (!v16)
    {
      v15 = 0;
      goto LABEL_21;
    }

    v23 = [v13 dataType];
    v24 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v24 scale];
    v26 = v25;

    v27 = v12;
    if (v23 == 1)
    {
      v42 = SBLogIcon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [SBSApplicationShortcutItem(SBHAdditions) sb_buildIconImageWithApplicationBundleURL:v42 image:? systemImageName:?];
      }
    }

    else if (!v23)
    {
      v28 = [MEMORY[0x1E69DCAB8] imageWithData:v16 scale:v26];
LABEL_49:
      if ([v13 isTemplate])
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      v15 = [v28 imageWithRenderingMode:v43];

      v12 = v27;
      v10 = 0x1E69D4000;
      goto LABEL_21;
    }

    v28 = 0;
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__SBSApplicationShortcutItem_SBHAdditions__sb_buildIconImageWithApplicationBundleURL_image_systemImageName___block_invoke;
    aBlock[3] = &unk_1E808C920;
    v51 = v32;
    v33 = _Block_copy(aBlock);
    v34 = [a1 _lightMonogrammer];
    v45 = v33;
    v47 = (*(v33 + 2))(v33, v34);

    v35 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v46 = [v35 imageConfiguration];

    v36 = [a1 _darkMonogrammer];
    v44 = (*(v33 + 2))(v33, v36);

    v37 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    [v37 imageConfiguration];
    v38 = v49 = v12;

    v39 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
    [v39 registerImage:v47 withConfiguration:v46];
    [v39 registerImage:v44 withConfiguration:v38];
    v40 = objc_alloc_init(MEMORY[0x1E69DD1B8]);
    v41 = [v40 imageConfiguration];
    v15 = [v39 imageWithConfiguration:v41];

    v10 = 0x1E69D4000;
    v12 = v49;
  }

  else
  {
    v15 = 0;
  }

LABEL_23:
  if (v11 && !v15)
  {
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
  }

  if (!v11 || v15)
  {
    if (!(v11 | v15))
    {
      v29 = [*(v10 + 456) sbh_defaultImage];
      v15 = [v29 imageWithRenderingMode:2];
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
      v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v11];
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
    v31 = v11;
    *a5 = v11;
  }
}

@end