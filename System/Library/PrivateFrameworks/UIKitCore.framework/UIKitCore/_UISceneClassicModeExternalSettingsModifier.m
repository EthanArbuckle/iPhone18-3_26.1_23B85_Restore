@interface _UISceneClassicModeExternalSettingsModifier
- (NSString)debugDescription;
- (_UISceneClassicModeExternalSettingsModifier)initWithBSXPCCoder:(id)a3;
- (_UISceneClassicModeExternalSettingsModifier)initWithMainDisplayConfiguration:(id)a3 maximumPortraitSize:(CGSize)a4 cornerRadiusConfiguration:(id)a5;
- (id)succinctDescription;
- (id)updaterForProposedSettings:(id)a3 withSettingsDiff:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _UISceneClassicModeExternalSettingsModifier

- (_UISceneClassicModeExternalSettingsModifier)initWithMainDisplayConfiguration:(id)a3 maximumPortraitSize:(CGSize)a4 cornerRadiusConfiguration:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UISceneClassicModeExternalSettingsModifier;
  v12 = [(_UISceneClassicModeExternalSettingsModifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mainDisplayConfiguration, a3);
    v13->_maximumPortraitSize.width = width;
    v13->_maximumPortraitSize.height = height;
    objc_storeStrong(&v13->_cornerRadiusConfiguration, a5);
  }

  return v13;
}

- (id)updaterForProposedSettings:(id)a3 withSettingsDiff:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 containsProperty:sel_displayConfiguration];
  v9 = [v7 containsProperty:sel_frame];
  v10 = [v7 containsProperty:sel_cornerRadiusConfiguration];

  if ((v8 & 1) == 0 && (v9 & 1) == 0 && !v10)
  {
    goto LABEL_31;
  }

  v11 = [v6 displayConfiguration];
  v12 = [v11 isMainDisplay];

  if (!v12)
  {
    goto LABEL_31;
  }

  v14 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  if (v8)
  {
    v17 = self->_mainDisplayConfiguration;
  }

  else
  {
    v17 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  [v6 frame];
  width = self->_maximumPortraitSize.width;
  height = self->_maximumPortraitSize.height;
  if (v20 > width || v21 > height)
  {
    if (v20 >= width)
    {
      v15 = self->_maximumPortraitSize.width;
    }

    else
    {
      v15 = v20;
    }

    if (v21 >= height)
    {
      v16 = self->_maximumPortraitSize.height;
    }

    else
    {
      v16 = v21;
    }

    v13 = v19;
    v14 = v18;
  }

LABEL_19:
  if ((v10 | v8))
  {
    v25 = [v6 cornerRadiusConfiguration];
    v26 = [v25 isEqual:self->_cornerRadiusConfiguration];
    v27 = 0;
    if (v25 && (v26 & 1) == 0)
    {
      if ([v25 isCongruent] && (objc_msgSend(v25, "topLeft"), v28 == 0.0))
      {
        v27 = 0;
      }

      else
      {
        v27 = self->_cornerRadiusConfiguration;
      }
    }

    if (v17)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = 0;
    if (v17)
    {
      goto LABEL_32;
    }
  }

  v41.origin.x = v14;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v16;
  if (CGRectIsNull(v41) && !v27)
  {
LABEL_31:
    v29 = 0;
    goto LABEL_33;
  }

LABEL_32:
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __91___UISceneClassicModeExternalSettingsModifier_updaterForProposedSettings_withSettingsDiff___block_invoke;
  v33[3] = &unk_1E711B6C0;
  v36 = v14;
  v37 = v13;
  v38 = v15;
  v39 = v16;
  v34 = v17;
  v35 = v27;
  v30 = v27;
  v31 = v17;
  v29 = _Block_copy(v33);

LABEL_33:

  return v29;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  mainDisplayConfiguration = self->_mainDisplayConfiguration;
  v5 = a3;
  [v5 encodeObject:mainDisplayConfiguration forKey:@"mainDisplayConfiguration"];
  [v5 encodeCGSize:@"maximumPortraitSize" forKey:{self->_maximumPortraitSize.width, self->_maximumPortraitSize.height}];
  [v5 encodeObject:self->_cornerRadiusConfiguration forKey:@"cornerRadiusConfiguration"];
}

- (_UISceneClassicModeExternalSettingsModifier)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainDisplayConfiguration"];
  [v4 decodeCGSizeForKey:@"maximumPortraitSize"];
  v7 = v6;
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cornerRadiusConfiguration"];

  v11 = [(_UISceneClassicModeExternalSettingsModifier *)self initWithMainDisplayConfiguration:v5 maximumPortraitSize:v10 cornerRadiusConfiguration:v7, v9];
  return v11;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73___UISceneClassicModeExternalSettingsModifier_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73___UISceneClassicModeExternalSettingsModifier_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end