@interface WFSharedShortcut
+ (NSDictionary)properties;
- (WFWorkflowIcon)icon;
- (WFWorkflowRecord)workflowRecord;
- (id)ensureFileAssets;
- (id)propertiesForEventLogging;
- (id)sharingURL;
- (void)setCreatedAt:(id)a3 modifiedAt:(id)a4 createdBy:(id)a5;
- (void)setIcon:(id)a3;
@end

@implementation WFSharedShortcut

+ (NSDictionary)properties
{
  v16[7] = *MEMORY[0x1E69E9840];
  v15[0] = @"name";
  v14 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v16[0] = v14;
  v15[1] = @"icon_color";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:@"iconColor"];
  v16[1] = v2;
  v15[2] = @"icon_glyph";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:@"iconGlyph"];
  v16[2] = v3;
  v15[3] = @"icon";
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v5 = [WFCloudKitItemProperty assetPropertyWithName:@"iconFile" fileType:v4 ignoredByDefault:1 encrypted:0];
  v16[3] = v5;
  v15[4] = @"shortcut";
  v6 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
  v7 = [WFCloudKitItemProperty assetPropertyWithName:@"shortcutFile" fileType:v6];
  v16[4] = v7;
  v15[5] = @"signedShortcut";
  v8 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcut"];
  v9 = [WFCloudKitItemProperty assetPropertyWithName:@"signedShortcutFile" fileType:v8];
  v16[5] = v9;
  v15[6] = @"signingStatus";
  v10 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v16[6] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:7];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)propertiesForEventLogging
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"workflow_identifier";
  v3 = [(WFSharedShortcut *)self identifier];
  v4 = [v3 recordName];
  v11[0] = v4;
  v10[1] = @"workflow_name";
  v5 = [(WFSharedShortcut *)self name];
  v11[1] = v5;
  v10[2] = @"workflow_record_type";
  v6 = [objc_opt_class() recordType];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)sharingURL
{
  v2 = [(WFSharedShortcut *)self identifier];
  v3 = [v2 recordName];
  v4 = WFGallerySharingURLForIdentifier(v3);

  return v4;
}

- (void)setCreatedAt:(id)a3 modifiedAt:(id)a4 createdBy:(id)a5
{
  objc_storeStrong(&self->_createdAt, a3);
  v11 = a3;
  v8 = a5;
  v9 = [v8 copy];

  createdBy = self->_createdBy;
  self->_createdBy = v9;
}

- (id)ensureFileAssets
{
  if (self->_workflowRecord)
  {
    v3 = [(WFSharedShortcut *)self workflowRecord];
    v4 = [v3 fileRepresentation];

    v5 = [(WFSharedShortcut *)self identifier];
    v6 = [v5 recordName];
    [v4 setName:v6];

    v7 = [v4 writeToDiskWithError:0];
    [(WFSharedShortcut *)self setShortcutFile:v7];
  }

  v8 = [(WFSharedShortcut *)self icon];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69E0E08]);
    v10 = [(WFSharedShortcut *)self icon];
    v11 = [v9 initWithIcon:v10];

    [v11 setCornerRadius:8.0];
    v12 = [v11 imageWithSize:{150.0, 150.0}];
    v13 = MEMORY[0x1E6996E20];
    v14 = [v12 PNGRepresentation];
    v15 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982F28]];
    v16 = [v13 fileWithData:v14 ofType:v15 proposedFilename:0];
    [(WFSharedShortcut *)self setIconFile:v16];
  }

  else
  {
    [(WFSharedShortcut *)self setIconFile:0];
  }

  return 0;
}

- (void)setIcon:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "backgroundColorValue")}];
  [(WFSharedShortcut *)self setIconColor:v6];

  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 glyphCharacter];

  v9 = [v7 numberWithUnsignedShort:v8];
  [(WFSharedShortcut *)self setIconGlyph:v9];
}

- (WFWorkflowRecord)workflowRecord
{
  v35 = *MEMORY[0x1E69E9840];
  if (self->_workflowRecord)
  {
    goto LABEL_2;
  }

  v4 = [(WFSharedShortcut *)self signedShortcutFile];

  if (!v4)
  {
    goto LABEL_2;
  }

  v5 = [(WFSharedShortcut *)self signedShortcutFile];

  if (!v5)
  {
    v25 = getWFGeneralLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[WFSharedShortcut workflowRecord]";
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut doesn't have signed shortcut file", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = [WFShortcutPackageFile alloc];
  v7 = [(WFSharedShortcut *)self signedShortcutFile];
  v8 = [v7 data];
  v9 = [(WFSharedShortcut *)self name];
  v10 = [(WFShortcutPackageFile *)v6 initWithSignedShortcutData:v8 shortcutName:v9];

  v30 = 0;
  v11 = [(WFShortcutPackageFile *)v10 extractShortcutFileRepresentationWithError:&v30];
  v12 = v30;
  if (!v11 || (-[WFSharedShortcut signingStatus](self, "signingStatus"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:@"APPROVED"], v13, (v14 & 1) == 0))
  {
    v24 = getWFGeneralLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[WFSharedShortcut workflowRecord]";
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut was unable to verify signed shortcut: %{public}@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v15 = [WFWorkflowFileDescriptor alloc];
  v16 = [(WFSharedShortcut *)self name];
  v17 = [(WFWorkflowFileDescriptor *)v15 initWithFile:v11 name:v16];

  v29 = 0;
  v18 = [[WFWorkflowFile alloc] initWithDescriptor:v17 error:&v29];
  v19 = v29;
  v28 = v19;
  v20 = [(WFWorkflowFile *)v18 recordRepresentationWithError:&v28];
  v21 = v28;

  [v20 setSource:@"ShortcutSourceCloudLink"];
  if (v20)
  {
    v22 = v20;
    p_super = &self->_workflowRecord->super.super;
    self->_workflowRecord = v22;
  }

  else
  {
    p_super = getWFGeneralLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[WFSharedShortcut workflowRecord]";
      v33 = 2114;
      v34 = v21;
      _os_log_impl(&dword_1CA256000, p_super, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut was unable to load record from shortcut file: %{public}@", buf, 0x16u);
    }
  }

  if (v20)
  {
LABEL_2:
    v3 = self->_workflowRecord;
    goto LABEL_16;
  }

LABEL_15:
  v3 = 0;
LABEL_16:
  v26 = *MEMORY[0x1E69E9840];

  return v3;
}

- (WFWorkflowIcon)icon
{
  v3 = [(WFSharedShortcut *)self iconGlyph];
  v4 = [(WFSharedShortcut *)self iconColor];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(MEMORY[0x1E69E0E00], "defaultGlyphCharacter")}];
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_1F4A9A588;
  }

  v6 = objc_alloc(MEMORY[0x1E69E0E00]);
  v7 = [(WFSharedShortcut *)self iconColor];
  v8 = [v7 integerValue];
  v9 = [(WFSharedShortcut *)self iconGlyph];
  v10 = [v6 initWithBackgroundColorValue:v8 glyphCharacter:objc_msgSend(v9 customImageData:{"unsignedIntegerValue"), 0}];

  return v10;
}

@end