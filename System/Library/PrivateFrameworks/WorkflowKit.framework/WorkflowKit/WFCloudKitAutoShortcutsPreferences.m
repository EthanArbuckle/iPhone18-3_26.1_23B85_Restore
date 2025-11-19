@interface WFCloudKitAutoShortcutsPreferences
+ (BOOL)isAutoShortcutsPreferencesRecordID:(id)a3;
+ (NSDictionary)properties;
+ (id)identifierForRecordID:(id)a3;
+ (id)recordIDWithZoneID:(id)a3 identifier:(id)a4;
- (INAppDescriptor)appDescriptor;
- (NSSet)disabledAutoShortcuts;
- (WFCloudKitAutoShortcutsPreferences)initWithAutoShortcutsPreferences:(id)a3 identifier:(id)a4;
- (id)fileRepresentationFromObject:(id)a3;
- (id)fileRepresentations;
@end

@implementation WFCloudKitAutoShortcutsPreferences

+ (id)identifierForRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", @"AutoShortcutsPreferences"];
  if ([v3 hasPrefix:v4])
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAutoShortcutsPreferencesRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 hasPrefix:@"AutoShortcutsPreferences"];

  return v4;
}

+ (id)recordIDWithZoneID:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitAutoShortcutsPreferences.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitAutoShortcutsPreferences.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"AutoShortcutsPreferences", v9];
  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v10 zoneID:v7];

  return v11;
}

+ (NSDictionary)properties
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13[0] = @"appDescriptor";
  v2 = *MEMORY[0x1E6982D60];
  v3 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v4 = [WFCloudKitItemProperty assetPropertyWithName:@"appDescriptorFileRepresentation" fileType:v3];
  v14[0] = v4;
  v13[1] = @"appName";
  v5 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v14[1] = v5;
  v13[2] = @"disabledAutoShortcuts";
  v6 = [MEMORY[0x1E69E0AF8] typeWithUTType:v2];
  v7 = [WFCloudKitItemProperty assetPropertyWithName:@"disabledAutoShortcutsFileRepresentation" fileType:v6];
  v14[2] = v7;
  v13[3] = @"isSiriEnabled";
  v8 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v14[3] = v8;
  v13[4] = @"isSpotlightEnabled";
  v9 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v14[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fileRepresentations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(WFCloudKitAutoShortcutsPreferences *)self appDescriptorFileRepresentation];

  if (v4)
  {
    v5 = [(WFCloudKitAutoShortcutsPreferences *)self appDescriptorFileRepresentation];
    [v3 addObject:v5];
  }

  v6 = [(WFCloudKitAutoShortcutsPreferences *)self disabledAutoShortcutsFileRepresentation];

  if (v6)
  {
    v7 = [(WFCloudKitAutoShortcutsPreferences *)self disabledAutoShortcutsFileRepresentation];
    [v3 addObject:v7];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v8;
}

- (NSSet)disabledAutoShortcuts
{
  disabledAutoShortcuts = self->_disabledAutoShortcuts;
  if (!disabledAutoShortcuts)
  {
    v4 = [(WFCloudKitAutoShortcutsPreferences *)self disabledAutoShortcutsFileRepresentation];
    v5 = [v4 data];

    v6 = [WFDatabase disabledAutoShortcutsFromData:v5];
    v7 = self->_disabledAutoShortcuts;
    self->_disabledAutoShortcuts = v6;

    disabledAutoShortcuts = self->_disabledAutoShortcuts;
  }

  return disabledAutoShortcuts;
}

- (INAppDescriptor)appDescriptor
{
  appDescriptor = self->_appDescriptor;
  if (!appDescriptor)
  {
    v4 = [(WFCloudKitAutoShortcutsPreferences *)self appDescriptorFileRepresentation];
    v5 = [v4 data];

    v6 = [WFDatabase appDescriptorFromData:v5];
    v7 = self->_appDescriptor;
    self->_appDescriptor = v6;

    appDescriptor = self->_appDescriptor;
  }

  return appDescriptor;
}

- (id)fileRepresentationFromObject:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [(WFCloudKitAutoShortcutsPreferences *)self dataFromObject:a3 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFCloudKitAutoShortcutsPreferences fileRepresentationFromObject:]";
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Error converting object to data: %{public}@", buf, 0x16u);
    }
  }

  if (v3)
  {
    v6 = MEMORY[0x1E6996E20];
    v7 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    v8 = [v6 fileWithData:v3 ofType:v7 proposedFilename:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFCloudKitAutoShortcutsPreferences)initWithAutoShortcutsPreferences:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFCloudKitAutoShortcutsPreferences *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a4);
    v10 = [v6 appDescriptor];
    appDescriptor = v9->_appDescriptor;
    v9->_appDescriptor = v10;

    v12 = [v6 appDescriptor];
    v13 = [(WFCloudKitAutoShortcutsPreferences *)v9 fileRepresentationFromObject:v12];
    appDescriptorFileRepresentation = v9->_appDescriptorFileRepresentation;
    v9->_appDescriptorFileRepresentation = v13;

    v15 = [v6 appName];
    appName = v9->_appName;
    v9->_appName = v15;

    v9->_isSiriEnabled = [v6 isSiriEnabled];
    v9->_isSpotlightEnabled = [v6 isSpotlightEnabled];
    v17 = [v6 disabledAutoShortcuts];
    disabledAutoShortcuts = v9->_disabledAutoShortcuts;
    v9->_disabledAutoShortcuts = v17;

    v19 = [v6 disabledAutoShortcuts];
    v20 = [(WFCloudKitAutoShortcutsPreferences *)v9 fileRepresentationFromObject:v19];
    disabledAutoShortcutsFileRepresentation = v9->_disabledAutoShortcutsFileRepresentation;
    v9->_disabledAutoShortcutsFileRepresentation = v20;

    v22 = [v6 cloudKitMetadata];
    recordSystemFieldsData = v9->_recordSystemFieldsData;
    v9->_recordSystemFieldsData = v22;

    v24 = v9;
  }

  return v9;
}

@end