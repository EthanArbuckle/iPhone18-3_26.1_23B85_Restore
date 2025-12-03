@interface WFGalleryWorkflow
+ (NSDictionary)properties;
- (BOOL)isEqual:(id)equal;
- (WFGalleryWorkflow)initWithIdentifier:(id)identifier name:(id)name shortDescription:(id)description longDescription:(id)longDescription icon:(id)icon workflowRecord:(id)record searchable:(id)searchable minVersion:(int64_t)self0 hiddenRegions:(id)self1 supportedIdioms:(id)self2 createdAt:(id)self3 modifiedAt:(id)self4 language:(id)self5 base:(id)self6 persistentIdentifier:(id)self7 shortcutFile:(id)self8 iconFile:(id)self9;
- (WFWorkflowIcon)icon;
- (WFWorkflowRecord)workflowRecord;
- (id)ensureFileAssets;
- (id)propertiesForEventLogging;
- (id)sharingURL;
- (unint64_t)hash;
- (void)setCreatedAt:(id)at modifiedAt:(id)modifiedAt createdBy:(id)by;
@end

@implementation WFGalleryWorkflow

- (id)propertiesForEventLogging
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"workflow_identifier";
  persistentIdentifier = [(WFGalleryWorkflow *)self persistentIdentifier];
  v10[0] = persistentIdentifier;
  v9[1] = @"workflow_name";
  name = [(WFGalleryWorkflow *)self name];
  v10[1] = name;
  v9[2] = @"workflow_record_type";
  recordType = [objc_opt_class() recordType];
  v10[2] = recordType;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(WFGalleryWorkflow *)self identifier];
      identifier2 = [(WFGalleryWorkflow *)equalCopy identifier];
      v7 = identifier;
      v8 = identifier2;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
          goto LABEL_68;
        }

        v13 = [v7 isEqual:v8];

        if (!v13)
        {
          v10 = 0;
LABEL_69:

          goto LABEL_70;
        }
      }

      name = [(WFGalleryWorkflow *)self name];
      name2 = [(WFGalleryWorkflow *)equalCopy name];
      v12 = name;
      v16 = name2;
      v11 = v16;
      if (v12 == v16)
      {
      }

      else
      {
        v10 = 0;
        v17 = v16;
        v18 = v12;
        if (!v12 || !v16)
        {
          goto LABEL_67;
        }

        v19 = [v12 isEqualToString:v16];

        if (!v19)
        {
          v10 = 0;
LABEL_68:

          goto LABEL_69;
        }
      }

      createdAt = [(WFGalleryWorkflow *)self createdAt];
      createdAt2 = [(WFGalleryWorkflow *)equalCopy createdAt];
      v18 = createdAt;
      v22 = createdAt2;
      v17 = v22;
      if (v18 == v22)
      {
      }

      else
      {
        v10 = 0;
        v23 = v22;
        v24 = v18;
        if (!v18 || !v22)
        {
          goto LABEL_66;
        }

        v25 = [v18 isEqual:v22];

        if (!v25)
        {
          v10 = 0;
LABEL_67:

          goto LABEL_68;
        }
      }

      modifiedAt = [(WFGalleryWorkflow *)self modifiedAt];
      modifiedAt2 = [(WFGalleryWorkflow *)equalCopy modifiedAt];
      v24 = modifiedAt;
      v28 = modifiedAt2;
      v63 = v28;
      if (v24 != v28)
      {
        v62 = v17;
        v10 = 0;
        if (v24)
        {
          v29 = v28;
          v30 = v24;
          if (v28)
          {
            v60 = [v24 isEqual:v28];

            v17 = v62;
            if (!v60)
            {
              goto LABEL_35;
            }

LABEL_29:
            minVersion = [(WFGalleryWorkflow *)self minVersion];
            if (minVersion != [(WFGalleryWorkflow *)equalCopy minVersion])
            {
LABEL_35:
              v10 = 0;
              v23 = v63;
LABEL_66:

              goto LABEL_67;
            }

            v61 = v24;
            v62 = v17;
            hiddenRegions = [(WFGalleryWorkflow *)self hiddenRegions];
            hiddenRegions2 = [(WFGalleryWorkflow *)equalCopy hiddenRegions];
            v34 = hiddenRegions;
            v35 = hiddenRegions2;
            v58 = v35;
            v59 = v34;
            if (v34 == v35)
            {
            }

            else
            {
              v10 = 0;
              if (!v34)
              {
                v36 = v35;
                v24 = v61;
                goto LABEL_63;
              }

              v36 = v35;
              v24 = v61;
              if (!v35)
              {
LABEL_63:

                goto LABEL_64;
              }

              v37 = [v34 isEqualToArray:v35];

              if (!v37)
              {
                v10 = 0;
                v24 = v61;
LABEL_64:
                v29 = v58;
                v30 = v59;
                goto LABEL_65;
              }
            }

            supportedIdioms = [(WFGalleryWorkflow *)self supportedIdioms];
            supportedIdioms2 = [(WFGalleryWorkflow *)equalCopy supportedIdioms];
            v34 = supportedIdioms;
            v40 = supportedIdioms2;
            v56 = v34;
            v57 = v40;
            if (v34 != v40)
            {
              v10 = 0;
              if (v34)
              {
                v41 = v40;
                v24 = v61;
                if (v40)
                {
                  v42 = [v34 isEqualToArray:v40];

                  if (!v42)
                  {
                    v10 = 0;
                    v24 = v61;
                    v36 = v57;
                    goto LABEL_63;
                  }

LABEL_44:
                  shortDescription = [(WFGalleryWorkflow *)self shortDescription];
                  shortDescription2 = [(WFGalleryWorkflow *)equalCopy shortDescription];
                  v45 = shortDescription;
                  v46 = shortDescription2;
                  v54 = v46;
                  v55 = v45;
                  if (v45 == v46)
                  {
                  }

                  else
                  {
                    v10 = 0;
                    if (!v45)
                    {
                      v47 = v46;
                      v24 = v61;
                      goto LABEL_60;
                    }

                    v47 = v46;
                    v24 = v61;
                    if (!v46)
                    {
LABEL_60:

                      goto LABEL_61;
                    }

                    v48 = [v45 isEqualToString:v46];

                    if (!v48)
                    {
                      v10 = 0;
                      v24 = v61;
LABEL_61:
                      v41 = v54;
                      v34 = v55;
                      goto LABEL_62;
                    }
                  }

                  longDescription = [(WFGalleryWorkflow *)self longDescription];
                  longDescription2 = [(WFGalleryWorkflow *)equalCopy longDescription];
                  v45 = longDescription;
                  v51 = longDescription2;
                  v52 = v51;
                  if (v45 == v51)
                  {
                    v10 = 1;
                  }

                  else
                  {
                    v10 = 0;
                    if (v45)
                    {
                      v24 = v61;
                      if (v51)
                      {
                        v10 = [v45 isEqualToString:v51];
                      }

                      goto LABEL_58;
                    }
                  }

                  v24 = v61;
LABEL_58:

                  v47 = v52;
                  goto LABEL_60;
                }
              }

              else
              {
                v41 = v40;
                v24 = v61;
              }

LABEL_62:

              v34 = v56;
              v36 = v57;
              goto LABEL_63;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v29 = v28;
          v30 = 0;
        }

LABEL_65:

        v17 = v62;
        v23 = v63;
        goto LABEL_66;
      }

      goto LABEL_29;
    }

    v10 = 0;
  }

LABEL_70:

  return v10;
}

- (unint64_t)hash
{
  identifier = [(WFGalleryWorkflow *)self identifier];
  v4 = [identifier hash];
  name = [(WFGalleryWorkflow *)self name];
  v6 = [name hash] ^ v4;
  createdAt = [(WFGalleryWorkflow *)self createdAt];
  v8 = [createdAt hash];
  v9 = v6 ^ v8 ^ [(WFGalleryWorkflow *)self minVersion];
  modifiedAt = [(WFGalleryWorkflow *)self modifiedAt];
  v11 = [modifiedAt hash];
  shortDescription = [(WFGalleryWorkflow *)self shortDescription];
  v13 = v11 ^ [shortDescription hash];
  longDescription = [(WFGalleryWorkflow *)self longDescription];
  v15 = v13 ^ [longDescription hash];

  return v9 ^ v15;
}

- (id)ensureFileAssets
{
  if (self->_workflowRecord)
  {
    workflowRecord = [(WFGalleryWorkflow *)self workflowRecord];
    fileRepresentation = [workflowRecord fileRepresentation];

    identifier = [(WFGalleryWorkflow *)self identifier];
    recordName = [identifier recordName];
    [fileRepresentation setName:recordName];

    v7 = [fileRepresentation writeToDiskWithError:0];
    shortcutFile = self->_shortcutFile;
    self->_shortcutFile = v7;
  }

  icon = [(WFGalleryWorkflow *)self icon];

  if (icon)
  {
    v10 = objc_alloc(MEMORY[0x1E69E0E08]);
    icon2 = [(WFGalleryWorkflow *)self icon];
    v12 = [v10 initWithIcon:icon2];

    [(WFFileRepresentation *)v12 setCornerRadius:8.0];
    v13 = [(WFFileRepresentation *)v12 imageWithSize:60.0, 60.0];
    v14 = MEMORY[0x1E6996E20];
    pNGRepresentation = [v13 PNGRepresentation];
    v16 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982F28]];
    v17 = [v14 fileWithData:pNGRepresentation ofType:v16 proposedFilename:0];
    iconFile = self->_iconFile;
    self->_iconFile = v17;
  }

  else
  {
    v12 = self->_iconFile;
    self->_iconFile = 0;
  }

  return 0;
}

- (WFWorkflowRecord)workflowRecord
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_workflowRecord)
  {
    goto LABEL_2;
  }

  shortcutFile = [(WFGalleryWorkflow *)self shortcutFile];
  if (shortcutFile)
  {
  }

  else
  {
    signedShortcutFile = [(WFGalleryWorkflow *)self signedShortcutFile];

    if (!signedShortcutFile)
    {
LABEL_2:
      v3 = self->_workflowRecord;
      goto LABEL_21;
    }
  }

  signedShortcutFile2 = [(WFGalleryWorkflow *)self signedShortcutFile];

  if (signedShortcutFile2)
  {
    v7 = [WFShortcutPackageFile alloc];
    signedShortcutFile3 = [(WFGalleryWorkflow *)self signedShortcutFile];
    data = [signedShortcutFile3 data];
    name = [(WFGalleryWorkflow *)self name];
    v11 = [(WFShortcutPackageFile *)v7 initWithSignedShortcutData:data shortcutName:name];

    v31 = 0;
    shortcutFile2 = [(WFShortcutPackageFile *)v11 extractShortcutFileRepresentationWithError:&v31];
    v13 = v31;
    if (!shortcutFile2 || (-[WFGalleryWorkflow signingStatus](self, "signingStatus"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqualToString:@"APPROVED"], v14, (v15 & 1) == 0))
    {
      v16 = getWFGeneralLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "[WFGalleryWorkflow workflowRecord]";
        v34 = 2114;
        v35 = v13;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut was unable to verify signed shortcut: %{public}@", buf, 0x16u);
      }

      goto LABEL_20;
    }
  }

  else
  {
    shortcutFile2 = [(WFGalleryWorkflow *)self shortcutFile];

    if (shortcutFile2)
    {
      shortcutFile2 = [(WFGalleryWorkflow *)self shortcutFile];
    }
  }

  v17 = [WFWorkflowFileDescriptor alloc];
  name2 = [(WFGalleryWorkflow *)self name];
  v19 = [(WFWorkflowFileDescriptor *)v17 initWithFile:shortcutFile2 name:name2];

  v30 = 0;
  v20 = [[WFWorkflowFile alloc] initWithDescriptor:v19 error:&v30];
  v21 = v30;
  v29 = v21;
  v22 = [(WFWorkflowFile *)v20 recordRepresentationWithError:&v29];
  v23 = v29;

  persistentIdentifier = [(WFGalleryWorkflow *)self persistentIdentifier];
  [v22 setGalleryIdentifier:persistentIdentifier];

  [v22 setSource:@"ShortcutSourceGallery"];
  if (v22)
  {
    v25 = v22;
    p_super = &self->_workflowRecord->super.super;
    self->_workflowRecord = v25;
  }

  else
  {
    p_super = getWFGeneralLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[WFGalleryWorkflow workflowRecord]";
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&dword_1CA256000, p_super, OS_LOG_TYPE_ERROR, "%s WFGalleryWorkflow was unable to load record from shortcut file: %{public}@", buf, 0x16u);
    }
  }

  if (v22)
  {
    goto LABEL_2;
  }

LABEL_20:
  v3 = 0;
LABEL_21:
  v27 = *MEMORY[0x1E69E9840];

  return v3;
}

- (WFWorkflowIcon)icon
{
  iconGlyph = [(WFGalleryWorkflow *)self iconGlyph];
  iconColor = [(WFGalleryWorkflow *)self iconColor];
  if (!iconGlyph)
  {
    iconGlyph = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(MEMORY[0x1E69E0E00], "defaultGlyphCharacter")}];
  }

  if (!iconColor)
  {
    iconColor = &unk_1F4A9A588;
  }

  v5 = [objc_alloc(MEMORY[0x1E69E0E00]) initWithBackgroundColorValue:objc_msgSend(iconColor glyphCharacter:"integerValue") customImageData:{objc_msgSend(iconGlyph, "unsignedIntegerValue"), 0}];

  return v5;
}

- (void)setCreatedAt:(id)at modifiedAt:(id)modifiedAt createdBy:(id)by
{
  atCopy = at;
  modifiedAtCopy = modifiedAt;
  createdAt = self->_createdAt;
  self->_createdAt = atCopy;
  v11 = atCopy;

  modifiedAt = self->_modifiedAt;
  self->_modifiedAt = modifiedAtCopy;
}

- (id)sharingURL
{
  identifier = [(WFGalleryWorkflow *)self identifier];
  recordName = [identifier recordName];
  v4 = WFGallerySharingURLForIdentifier(recordName);

  return v4;
}

- (WFGalleryWorkflow)initWithIdentifier:(id)identifier name:(id)name shortDescription:(id)description longDescription:(id)longDescription icon:(id)icon workflowRecord:(id)record searchable:(id)searchable minVersion:(int64_t)self0 hiddenRegions:(id)self1 supportedIdioms:(id)self2 createdAt:(id)self3 modifiedAt:(id)self4 language:(id)self5 base:(id)self6 persistentIdentifier:(id)self7 shortcutFile:(id)self8 iconFile:(id)self9
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  longDescriptionCopy = longDescription;
  iconCopy = icon;
  recordCopy = record;
  recordCopy2 = record;
  searchableCopy = searchable;
  regionsCopy = regions;
  idiomsCopy = idioms;
  atCopy = at;
  modifiedAtCopy = modifiedAt;
  languageCopy = language;
  baseCopy = base;
  persistentIdentifierCopy = persistentIdentifier;
  fileCopy = file;
  iconFileCopy = iconFile;
  v75.receiver = self;
  v75.super_class = WFGalleryWorkflow;
  v32 = [(WFGalleryWorkflow *)&v75 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_identifier, identifier);
    v34 = [nameCopy copy];
    name = v33->_name;
    v33->_name = v34;

    v36 = [descriptionCopy copy];
    shortDescription = v33->_shortDescription;
    v33->_shortDescription = v36;

    v38 = [longDescriptionCopy copy];
    longDescription = v33->_longDescription;
    v33->_longDescription = v38;

    v40 = regionsCopy;
    v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(iconCopy, "backgroundColorValue")}];
    iconColor = v33->_iconColor;
    v33->_iconColor = v41;

    v43 = MEMORY[0x1E696AD98];
    glyphCharacter = [iconCopy glyphCharacter];
    v45 = v43;
    regionsCopy = v40;
    v46 = [v45 numberWithUnsignedShort:glyphCharacter];
    iconGlyph = v33->_iconGlyph;
    v33->_iconGlyph = v46;

    objc_storeStrong(&v33->_workflowRecord, recordCopy);
    v48 = [searchableCopy copy];
    searchable = v33->_searchable;
    v33->_searchable = v48;

    v33->_minVersion = version;
    v50 = [v40 copy];
    hiddenRegions = v33->_hiddenRegions;
    v33->_hiddenRegions = v50;

    v52 = [idiomsCopy copy];
    supportedIdioms = v33->_supportedIdioms;
    v33->_supportedIdioms = v52;

    v54 = [atCopy copy];
    createdAt = v33->_createdAt;
    v33->_createdAt = v54;

    v56 = [modifiedAtCopy copy];
    modifiedAt = v33->_modifiedAt;
    v33->_modifiedAt = v56;

    v58 = [languageCopy copy];
    language = v33->_language;
    v33->_language = v58;

    objc_storeStrong(&v33->_base, base);
    v60 = [persistentIdentifierCopy copy];
    persistentIdentifier = v33->_persistentIdentifier;
    v33->_persistentIdentifier = v60;

    objc_storeStrong(&v33->_shortcutFile, file);
    objc_storeStrong(&v33->_iconFile, iconFile);
    v62 = v33;
  }

  return v33;
}

+ (NSDictionary)properties
{
  v25[16] = *MEMORY[0x1E69E9840];
  v24[0] = @"name";
  v23 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[0] = v23;
  v24[1] = @"shortDescription";
  v22 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[1] = v22;
  v24[2] = @"longDescription";
  v21 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[2] = v21;
  v24[3] = @"icon_color";
  v20 = [WFCloudKitItemProperty objectPropertyWithName:@"iconColor"];
  v25[3] = v20;
  v24[4] = @"icon_glyph";
  v19 = [WFCloudKitItemProperty objectPropertyWithName:@"iconGlyph"];
  v25[4] = v19;
  v24[5] = @"icon";
  v18 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v17 = [WFCloudKitItemProperty assetPropertyWithName:@"iconFile" fileType:v18 ignoredByDefault:1 encrypted:0];
  v25[5] = v17;
  v24[6] = @"shortcut";
  v16 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
  v15 = [WFCloudKitItemProperty assetPropertyWithName:@"shortcutFile" fileType:v16 ignoredByDefault:1 encrypted:0];
  v25[6] = v15;
  v24[7] = @"searchable";
  v14 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[7] = v14;
  v24[8] = @"minVersion";
  v2 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v25[8] = v2;
  v24[9] = @"hiddenRegions";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[9] = v3;
  v24[10] = @"supportedIdioms";
  v4 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[10] = v4;
  v24[11] = @"language";
  v5 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v25[11] = v5;
  v24[12] = @"base";
  v6 = [WFCloudKitItemProperty itemReferencePropertyWithName:@"base" itemClass:objc_opt_class()];
  v25[12] = v6;
  v24[13] = @"persistentIdentifier";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v25[13] = v7;
  v24[14] = @"signedShortcut";
  v8 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcut"];
  v9 = [WFCloudKitItemProperty assetPropertyWithName:@"signedShortcutFile" fileType:v8 ignoredByDefault:1 encrypted:0];
  v25[14] = v9;
  v24[15] = @"signingStatus";
  v10 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v25[15] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end