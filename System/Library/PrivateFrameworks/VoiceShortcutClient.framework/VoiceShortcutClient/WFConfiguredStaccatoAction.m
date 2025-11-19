@interface WFConfiguredStaccatoAction
- (BOOL)isEqual:(id)a3;
- (BOOL)isSystemStaccatoAction;
- (BOOL)usesPreviewIconSymbolOverride;
- (NSString)sectionIdentifier;
- (WFColor)tintColor;
- (WFConfiguredStaccatoAction)initWithCoder:(id)a3;
- (WFConfiguredStaccatoAction)initWithIdentifier:(id)a3 associatedBundleIdentifier:(id)a4 name:(id)a5 previewIcon:(id)a6 shortcutsMetadata:(id)a7 colorScheme:(id)a8;
- (WFConfiguredStaccatoAction)initWithIdentifier:(id)a3 sectionIdentifier:(id)a4 associatedBundleIdentifier:(id)a5 name:(id)a6 systemImageName:(id)a7 shortcutsMetadata:(id)a8;
- (WFIcon)previewIcon;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredStaccatoAction

- (NSString)sectionIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return @"Nothing";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return @"Controls";
  }

  v4 = [(WFConfiguredStaccatoAction *)self identifier];
  v5 = [v4 isEqualToString:@"com.apple.ShortcutsActions.SetSilentModeAction"];

  if (v5)
  {
    return @"SilentMode";
  }

  v6 = [(WFConfiguredStaccatoAction *)self identifier];
  v7 = [v6 isEqualToString:@"com.apple.springboard.Focus"];

  if (v7)
  {
    return @"Focus";
  }

  v8 = [(WFConfiguredStaccatoAction *)self identifier];
  v9 = [v8 isEqualToString:@"com.apple.springboard.OpenCamera"];

  if (v9)
  {
    return @"Camera";
  }

  v10 = [(WFConfiguredStaccatoAction *)self identifier];
  v11 = [v10 isEqualToString:@"com.apple.VoiceMemos.ToggleRecording"];

  if (v11)
  {
    return @"VoiceMemos";
  }

  v12 = [(WFConfiguredStaccatoAction *)self identifier];
  v13 = [v12 isEqualToString:@"com.apple.springboard.ToggleFlashlight"];

  if (v13)
  {
    return @"Flashlight";
  }

  v14 = [(WFConfiguredStaccatoAction *)self identifier];
  v15 = [v14 isEqualToString:@"com.apple.AccessibilityUIServer.ToggleAccessibilityFeatureIntent"];

  if (v15)
  {
    return @"Accessibility";
  }

  v16 = [(WFConfiguredStaccatoAction *)self identifier];
  v17 = [v16 isEqualToString:@"com.apple.musicrecognition.RecognizeMusicIntent"];

  if (v17)
  {
    return @"MusicRecognition";
  }

  v18 = [(WFConfiguredStaccatoAction *)self identifier];
  v19 = [v18 isEqualToString:@"com.apple.Translate.ToggleSpeechTranslationIntent"];

  if (v19)
  {
    return @"Translate";
  }

  v20 = [(WFConfiguredStaccatoAction *)self identifier];
  v21 = [v20 isEqualToString:@"com.apple.Magnifier.MagnifierIntent"];

  if (v21)
  {
    return @"Magnifier";
  }

  v22 = [(WFConfiguredStaccatoAction *)self identifier];
  v23 = [v22 isEqualToString:@"com.apple.siri.VisualIntelligenceCameraLaunch"];

  if (v23)
  {
    return @"VisualIntelligence";
  }

  else
  {
    return @"Shortcuts";
  }
}

- (BOOL)isSystemStaccatoAction
{
  v2 = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v3 = v2 != @"Shortcuts";

  return v3;
}

- (WFColor)tintColor
{
  v2 = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v3 = WFStaccatoTintColorForSectionIdentifier(v2);

  return v3;
}

- (WFConfiguredStaccatoAction)initWithIdentifier:(id)a3 sectionIdentifier:(id)a4 associatedBundleIdentifier:(id)a5 name:(id)a6 systemImageName:(id)a7 shortcutsMetadata:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  if (a7)
  {
    v17 = a7;
    v18 = [WFSymbolIcon alloc];
    v19 = [WFColor colorWithSystemColor:21];
    a7 = [(WFSymbolIcon *)v18 initWithSymbolName:v17 symbolColor:v19];
  }

  v20 = [(WFConfiguredStaccatoAction *)self initWithIdentifier:v13 associatedBundleIdentifier:v14 name:v15 previewIcon:a7 shortcutsMetadata:v16];

  return v20;
}

- (WFIcon)previewIcon
{
  v24[3] = *MEMORY[0x1E69E9840];
  v23[0] = @"Camera";
  v23[1] = @"Magnifier";
  v24[0] = @"camera.fill";
  v24[1] = @"plus.magnifyingglass";
  v23[2] = @"Accessibility";
  v24[2] = @"accessibility.fill";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v4 = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [WFSymbolIcon alloc];
    v7 = +[WFColor whiteColor];
    v8 = [(WFSymbolIcon *)v6 initWithSymbolName:v5 symbolColor:v7];
    goto LABEL_15;
  }

  v7 = self->_previewIcon;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([(WFConfiguredStaccatoAction *)self usesPreviewIconSymbolOverride])
    {
      v9 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
      v10 = [WFColor tintColorForBundleIdentifier:v9];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = +[WFColor whiteColor];
      }

      v16 = v12;

      v19 = [WFSymbolIcon alloc];
      v20 = [(WFIcon *)v7 symbolName];
      v8 = [(WFSymbolIcon *)v19 initWithSymbolName:v20 symbolColor:v16];

      goto LABEL_14;
    }
  }

  else
  {

    v7 = 0;
  }

  v13 = [(WFConfiguredStaccatoAction *)self identifier];
  v14 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v15 = [WFSymbolIcon symbolIconForActionIdentifier:v13 bundleIdentifier:v14];

  if (v15)
  {
    v16 = v15;
    v8 = v16;
  }

  else
  {
    v17 = [WFAppIcon alloc];
    v18 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
    v8 = [(WFAppIcon *)v17 initWithBundleIdentifier:v18];

    v16 = 0;
  }

LABEL_14:

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)usesPreviewIconSymbolOverride
{
  v3 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilenotes"];

  if (v4)
  {
    return 1;
  }

  v5 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.mobilephone"];

  if (v6)
  {
    return 1;
  }

  v8 = [(WFConfiguredStaccatoAction *)self identifier];
  v9 = [v8 isEqualToString:@"is.workflow.actions.runworkflow"];

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFConfiguredStaccatoAction *)self identifier];
  v5 = [v3 combine:v4];

  v6 = [(WFConfiguredStaccatoAction *)self name];
  v7 = [v3 combine:v6];

  v8 = [(WFConfiguredStaccatoAction *)self previewIcon];
  v9 = [v3 combine:v8];

  v10 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v11 = [v3 combine:v10];

  v12 = [(WFConfiguredStaccatoAction *)self shortcutsMetadata];
  v13 = [v3 combine:v12];

  v14 = [(WFConfiguredStaccatoAction *)self colorScheme];
  v15 = [v3 combine:v14];

  v16 = [v3 finalize];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(WFConfiguredStaccatoAction *)self identifier];
        v8 = [(WFConfiguredStaccatoAction *)v6 identifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          LOBYTE(v12) = 0;
          v13 = v10;
          v14 = v9;
          if (!v9 || !v10)
          {
            goto LABEL_44;
          }

          v15 = [v9 isEqualToString:v10];

          if (!v15)
          {
            LOBYTE(v12) = 0;
LABEL_45:

            goto LABEL_46;
          }
        }

        v16 = [(WFConfiguredStaccatoAction *)self name];
        v17 = [(WFConfiguredStaccatoAction *)v6 name];
        v14 = v16;
        v18 = v17;
        v13 = v18;
        if (v14 == v18)
        {
        }

        else
        {
          LOBYTE(v12) = 0;
          v19 = v18;
          v20 = v14;
          if (!v14 || !v18)
          {
            goto LABEL_43;
          }

          v21 = [v14 isEqualToString:v18];

          if (!v21)
          {
            LOBYTE(v12) = 0;
LABEL_44:

            goto LABEL_45;
          }
        }

        v22 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
        v23 = [(WFConfiguredStaccatoAction *)v6 associatedBundleIdentifier];
        v20 = v22;
        v24 = v23;
        v41 = v24;
        if (v20 != v24)
        {
          LOBYTE(v12) = 0;
          if (v20)
          {
            v25 = v24;
            v26 = v20;
            if (v24)
            {
              v12 = [v20 isEqualToString:v24];

              if (!v12)
              {
                goto LABEL_42;
              }

LABEL_24:
              v40 = v20;
              v27 = [(WFConfiguredStaccatoAction *)self previewIcon];
              v28 = [(WFConfiguredStaccatoAction *)v6 previewIcon];
              v29 = v27;
              v30 = v28;
              v38 = v30;
              v39 = v29;
              if (v29 == v30)
              {
              }

              else
              {
                LOBYTE(v12) = 0;
                if (!v29)
                {
                  v31 = v30;
                  v20 = v40;
                  goto LABEL_39;
                }

                v31 = v30;
                v20 = v40;
                if (!v30)
                {
LABEL_39:

                  goto LABEL_40;
                }

                v32 = [v29 isEqual:v30];

                if (!v32)
                {
                  LOBYTE(v12) = 0;
                  v20 = v40;
LABEL_40:
                  v25 = v38;
                  v26 = v39;
                  goto LABEL_41;
                }
              }

              v33 = [(WFConfiguredStaccatoAction *)self shortcutsMetadata:v38];
              v34 = [(WFConfiguredStaccatoAction *)v6 shortcutsMetadata];
              v29 = v33;
              v35 = v34;
              v36 = v35;
              if (v29 == v35)
              {
                LOBYTE(v12) = 1;
              }

              else
              {
                LOBYTE(v12) = 0;
                if (v29)
                {
                  v20 = v40;
                  if (v35)
                  {
                    LOBYTE(v12) = [v29 isEqual:v35];
                  }

                  goto LABEL_37;
                }
              }

              v20 = v40;
LABEL_37:

              v31 = v36;
              goto LABEL_39;
            }
          }

          else
          {
            v25 = v24;
            v26 = 0;
          }

LABEL_41:

LABEL_42:
          v19 = v41;
LABEL_43:

          goto LABEL_44;
        }

        goto LABEL_24;
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_46:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WFConfiguredStaccatoAction *)self identifier];
  v6 = [(WFConfiguredStaccatoAction *)self name];
  v7 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (WFConfiguredStaccatoAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewIcon"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  v11 = 0;
  if (v5 && v7 && v6)
  {
    self = [(WFConfiguredStaccatoAction *)self initWithIdentifier:v5 associatedBundleIdentifier:v6 name:v7 previewIcon:v8 shortcutsMetadata:v9 colorScheme:v10];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFConfiguredStaccatoAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFConfiguredStaccatoAction *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  [v4 encodeObject:self->_previewIcon forKey:@"previewIcon"];
  v7 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"associatedBundleIdentifier"];

  v8 = [(WFConfiguredStaccatoAction *)self shortcutsMetadata];
  [v4 encodeObject:v8 forKey:@"shortcutsMetadata"];

  v9 = [(WFConfiguredStaccatoAction *)self colorScheme];
  [v4 encodeObject:v9 forKey:@"colorScheme"];
}

- (WFConfiguredStaccatoAction)initWithIdentifier:(id)a3 associatedBundleIdentifier:(id)a4 name:(id)a5 previewIcon:(id)a6 shortcutsMetadata:(id)a7 colorScheme:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_8:
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemAction.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemAction.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemAction.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"associatedBundleIdentifier"}];

LABEL_4:
  v37.receiver = self;
  v37.super_class = WFConfiguredStaccatoAction;
  v21 = [(WFConfiguredStaccatoAction *)&v37 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v17 copy];
    name = v21->_name;
    v21->_name = v24;

    v26 = [v16 copy];
    associatedBundleIdentifier = v21->_associatedBundleIdentifier;
    v21->_associatedBundleIdentifier = v26;

    v28 = [v19 copy];
    shortcutsMetadata = v21->_shortcutsMetadata;
    v21->_shortcutsMetadata = v28;

    objc_storeStrong(&v21->_previewIcon, a6);
    v30 = [v20 copy];
    colorScheme = v21->_colorScheme;
    v21->_colorScheme = v30;

    v32 = v21;
  }

  return v21;
}

@end