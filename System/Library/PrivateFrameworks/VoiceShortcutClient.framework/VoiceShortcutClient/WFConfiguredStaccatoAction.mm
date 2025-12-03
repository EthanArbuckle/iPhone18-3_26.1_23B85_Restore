@interface WFConfiguredStaccatoAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isSystemStaccatoAction;
- (BOOL)usesPreviewIconSymbolOverride;
- (NSString)sectionIdentifier;
- (WFColor)tintColor;
- (WFConfiguredStaccatoAction)initWithCoder:(id)coder;
- (WFConfiguredStaccatoAction)initWithIdentifier:(id)identifier associatedBundleIdentifier:(id)bundleIdentifier name:(id)name previewIcon:(id)icon shortcutsMetadata:(id)metadata colorScheme:(id)scheme;
- (WFConfiguredStaccatoAction)initWithIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier associatedBundleIdentifier:(id)bundleIdentifier name:(id)name systemImageName:(id)imageName shortcutsMetadata:(id)metadata;
- (WFIcon)previewIcon;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  v5 = [identifier isEqualToString:@"com.apple.ShortcutsActions.SetSilentModeAction"];

  if (v5)
  {
    return @"SilentMode";
  }

  identifier2 = [(WFConfiguredStaccatoAction *)self identifier];
  v7 = [identifier2 isEqualToString:@"com.apple.springboard.Focus"];

  if (v7)
  {
    return @"Focus";
  }

  identifier3 = [(WFConfiguredStaccatoAction *)self identifier];
  v9 = [identifier3 isEqualToString:@"com.apple.springboard.OpenCamera"];

  if (v9)
  {
    return @"Camera";
  }

  identifier4 = [(WFConfiguredStaccatoAction *)self identifier];
  v11 = [identifier4 isEqualToString:@"com.apple.VoiceMemos.ToggleRecording"];

  if (v11)
  {
    return @"VoiceMemos";
  }

  identifier5 = [(WFConfiguredStaccatoAction *)self identifier];
  v13 = [identifier5 isEqualToString:@"com.apple.springboard.ToggleFlashlight"];

  if (v13)
  {
    return @"Flashlight";
  }

  identifier6 = [(WFConfiguredStaccatoAction *)self identifier];
  v15 = [identifier6 isEqualToString:@"com.apple.AccessibilityUIServer.ToggleAccessibilityFeatureIntent"];

  if (v15)
  {
    return @"Accessibility";
  }

  identifier7 = [(WFConfiguredStaccatoAction *)self identifier];
  v17 = [identifier7 isEqualToString:@"com.apple.musicrecognition.RecognizeMusicIntent"];

  if (v17)
  {
    return @"MusicRecognition";
  }

  identifier8 = [(WFConfiguredStaccatoAction *)self identifier];
  v19 = [identifier8 isEqualToString:@"com.apple.Translate.ToggleSpeechTranslationIntent"];

  if (v19)
  {
    return @"Translate";
  }

  identifier9 = [(WFConfiguredStaccatoAction *)self identifier];
  v21 = [identifier9 isEqualToString:@"com.apple.Magnifier.MagnifierIntent"];

  if (v21)
  {
    return @"Magnifier";
  }

  identifier10 = [(WFConfiguredStaccatoAction *)self identifier];
  v23 = [identifier10 isEqualToString:@"com.apple.siri.VisualIntelligenceCameraLaunch"];

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
  sectionIdentifier = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v3 = sectionIdentifier != @"Shortcuts";

  return v3;
}

- (WFColor)tintColor
{
  sectionIdentifier = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v3 = WFStaccatoTintColorForSectionIdentifier(sectionIdentifier);

  return v3;
}

- (WFConfiguredStaccatoAction)initWithIdentifier:(id)identifier sectionIdentifier:(id)sectionIdentifier associatedBundleIdentifier:(id)bundleIdentifier name:(id)name systemImageName:(id)imageName shortcutsMetadata:(id)metadata
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  metadataCopy = metadata;
  if (imageName)
  {
    imageNameCopy = imageName;
    v18 = [WFSymbolIcon alloc];
    v19 = [WFColor colorWithSystemColor:21];
    imageName = [(WFSymbolIcon *)v18 initWithSymbolName:imageNameCopy symbolColor:v19];
  }

  v20 = [(WFConfiguredStaccatoAction *)self initWithIdentifier:identifierCopy associatedBundleIdentifier:bundleIdentifierCopy name:nameCopy previewIcon:imageName shortcutsMetadata:metadataCopy];

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
  sectionIdentifier = [(WFConfiguredStaccatoAction *)self sectionIdentifier];
  v5 = [v3 objectForKeyedSubscript:sectionIdentifier];

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
      associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
      v10 = [WFColor tintColorForBundleIdentifier:associatedBundleIdentifier];
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
      symbolName = [(WFIcon *)v7 symbolName];
      v8 = [(WFSymbolIcon *)v19 initWithSymbolName:symbolName symbolColor:v16];

      goto LABEL_14;
    }
  }

  else
  {

    v7 = 0;
  }

  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  associatedBundleIdentifier2 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v15 = [WFSymbolIcon symbolIconForActionIdentifier:identifier bundleIdentifier:associatedBundleIdentifier2];

  if (v15)
  {
    v16 = v15;
    v8 = v16;
  }

  else
  {
    v17 = [WFAppIcon alloc];
    associatedBundleIdentifier3 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
    v8 = [(WFAppIcon *)v17 initWithBundleIdentifier:associatedBundleIdentifier3];

    v16 = 0;
  }

LABEL_14:

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)usesPreviewIconSymbolOverride
{
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v4 = [associatedBundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v4)
  {
    return 1;
  }

  associatedBundleIdentifier2 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v6 = [associatedBundleIdentifier2 isEqualToString:@"com.apple.mobilephone"];

  if (v6)
  {
    return 1;
  }

  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  v9 = [identifier isEqualToString:@"is.workflow.actions.runworkflow"];

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  v5 = [v3 combine:identifier];

  name = [(WFConfiguredStaccatoAction *)self name];
  v7 = [v3 combine:name];

  previewIcon = [(WFConfiguredStaccatoAction *)self previewIcon];
  v9 = [v3 combine:previewIcon];

  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v11 = [v3 combine:associatedBundleIdentifier];

  shortcutsMetadata = [(WFConfiguredStaccatoAction *)self shortcutsMetadata];
  v13 = [v3 combine:shortcutsMetadata];

  colorScheme = [(WFConfiguredStaccatoAction *)self colorScheme];
  v15 = [v3 combine:colorScheme];

  v16 = [v3 finalize];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = [(WFConfiguredStaccatoAction *)self identifier];
        identifier2 = [(WFConfiguredStaccatoAction *)v6 identifier];
        v9 = identifier;
        v10 = identifier2;
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

        name = [(WFConfiguredStaccatoAction *)self name];
        name2 = [(WFConfiguredStaccatoAction *)v6 name];
        v14 = name;
        v18 = name2;
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

        associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
        associatedBundleIdentifier2 = [(WFConfiguredStaccatoAction *)v6 associatedBundleIdentifier];
        v20 = associatedBundleIdentifier;
        v24 = associatedBundleIdentifier2;
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
              previewIcon = [(WFConfiguredStaccatoAction *)self previewIcon];
              previewIcon2 = [(WFConfiguredStaccatoAction *)v6 previewIcon];
              v29 = previewIcon;
              v30 = previewIcon2;
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
              shortcutsMetadata = [(WFConfiguredStaccatoAction *)v6 shortcutsMetadata];
              v29 = v33;
              v35 = shortcutsMetadata;
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
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  name = [(WFConfiguredStaccatoAction *)self name];
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@>", v4, self, identifier, name, associatedBundleIdentifier];

  return v8;
}

- (WFConfiguredStaccatoAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewIcon"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  selfCopy = 0;
  if (v5 && v7 && v6)
  {
    self = [(WFConfiguredStaccatoAction *)self initWithIdentifier:v5 associatedBundleIdentifier:v6 name:v7 previewIcon:v8 shortcutsMetadata:v9 colorScheme:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(WFConfiguredStaccatoAction *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeObject:self->_previewIcon forKey:@"previewIcon"];
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  [coderCopy encodeObject:associatedBundleIdentifier forKey:@"associatedBundleIdentifier"];

  shortcutsMetadata = [(WFConfiguredStaccatoAction *)self shortcutsMetadata];
  [coderCopy encodeObject:shortcutsMetadata forKey:@"shortcutsMetadata"];

  colorScheme = [(WFConfiguredStaccatoAction *)self colorScheme];
  [coderCopy encodeObject:colorScheme forKey:@"colorScheme"];
}

- (WFConfiguredStaccatoAction)initWithIdentifier:(id)identifier associatedBundleIdentifier:(id)bundleIdentifier name:(id)name previewIcon:(id)icon shortcutsMetadata:(id)metadata colorScheme:(id)scheme
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  iconCopy = icon;
  metadataCopy = metadata;
  schemeCopy = scheme;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemAction.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (bundleIdentifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemAction.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (bundleIdentifierCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemAction.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"associatedBundleIdentifier"}];

LABEL_4:
  v37.receiver = self;
  v37.super_class = WFConfiguredStaccatoAction;
  v21 = [(WFConfiguredStaccatoAction *)&v37 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [nameCopy copy];
    name = v21->_name;
    v21->_name = v24;

    v26 = [bundleIdentifierCopy copy];
    associatedBundleIdentifier = v21->_associatedBundleIdentifier;
    v21->_associatedBundleIdentifier = v26;

    v28 = [metadataCopy copy];
    shortcutsMetadata = v21->_shortcutsMetadata;
    v21->_shortcutsMetadata = v28;

    objc_storeStrong(&v21->_previewIcon, icon);
    v30 = [schemeCopy copy];
    colorScheme = v21->_colorScheme;
    v21->_colorScheme = v30;

    v32 = v21;
  }

  return v21;
}

@end