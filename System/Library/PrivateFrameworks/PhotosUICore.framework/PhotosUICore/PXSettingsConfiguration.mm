@interface PXSettingsConfiguration
+ (id)configurationsFromSharableString:(id)string;
+ (id)sharableStringForConfigurations:(id)configurations;
- (PXSettingsConfiguration)init;
- (PXSettingsConfiguration)initWithCoder:(id)coder;
- (PXSettingsConfiguration)initWithName:(id)name settings:(id)settings;
- (PXSettingsConfiguration)initWithName:(id)name settings:(id)settings archive:(id)archive;
- (id)copyWithName:(id)name;
- (id)copyWithUpdatedSettingsValues;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PXSettingsConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PXSettingsConfiguration *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  settings = [(PXSettingsConfiguration *)self settings];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [coderCopy encodeObject:v8 forKey:@"settingsClass"];

  archive = [(PXSettingsConfiguration *)self archive];
  [coderCopy encodeObject:archive forKey:@"archive"];
}

- (id)copyWithUpdatedSettingsValues
{
  v3 = objc_alloc(objc_opt_class());
  name = [(PXSettingsConfiguration *)self name];
  settings = [(PXSettingsConfiguration *)self settings];
  v6 = [v3 initWithName:name settings:settings];

  return v6;
}

- (id)copyWithName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc(objc_opt_class());
  settings = [(PXSettingsConfiguration *)self settings];
  archive = [(PXSettingsConfiguration *)self archive];
  v8 = [v5 initWithName:nameCopy settings:settings archive:archive];

  return v8;
}

- (PXSettingsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingsClass"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archive"];

  if (!v6 || (v8 = NSClassFromString(v6), ![(objc_class *)v8 isSubclassOfClass:objc_opt_class()]))
  {
    v10 = 0;
LABEL_8:

    v11 = 0;
    goto LABEL_9;
  }

  sharedInstance = [(objc_class *)v8 sharedInstance];
  v10 = sharedInstance;
  if (!v5 || !sharedInstance || !v7)
  {
    goto LABEL_8;
  }

  v11 = [(PXSettingsConfiguration *)self initWithName:v5 settings:sharedInstance archive:v7];
LABEL_9:

  return v11;
}

- (PXSettingsConfiguration)initWithName:(id)name settings:(id)settings archive:(id)archive
{
  nameCopy = name;
  settingsCopy = settings;
  archiveCopy = archive;
  v17.receiver = self;
  v17.super_class = PXSettingsConfiguration;
  v11 = [(PXSettingsConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_settings, settings);
    v14 = [archiveCopy copy];
    archive = v11->_archive;
    v11->_archive = v14;
  }

  return v11;
}

- (PXSettingsConfiguration)initWithName:(id)name settings:(id)settings
{
  settingsCopy = settings;
  nameCopy = name;
  archiveDictionary = [settingsCopy archiveDictionary];
  v9 = [(PXSettingsConfiguration *)self initWithName:nameCopy settings:settingsCopy archive:archiveDictionary];

  return v9;
}

- (PXSettingsConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfiguration.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXSettingsConfiguration init]"}];

  abort();
}

+ (id)configurationsFromSharableString:(id)string
{
  v41 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", @"========="];
  v5 = [stringCopy componentsSeparatedByString:v4];
  if ([v5 count] < 2)
  {
    v7 = 0;
    goto LABEL_29;
  }

  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = v6;
  if (!v6)
  {
LABEL_29:
    v33 = 0;
    goto LABEL_34;
  }

  v8 = [v6 dataUsingEncoding:4];
  v39 = 0;
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v39];
  v10 = v39;
  v11 = v10;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v11;
      v28 = v8;
      v29 = v7;
      v30 = v5;
      v31 = v4;
      v32 = stringCopy;
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v27 = v9;
      obj = v9;
      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (!v12)
      {
        goto LABEL_27;
      }

      v13 = v12;
      v14 = *v36;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSLog(&cfstr_UnexpectedObje_3.isa, v16);
            continue;
          }

          v17 = [v16 objectForKeyedSubscript:@"name"];
          v18 = [v16 objectForKeyedSubscript:@"settingsClass"];
          v19 = [v16 objectForKeyedSubscript:@"archive"];
          if (!v18)
          {
            sharedInstance = 0;
LABEL_23:
            NSLog(&cfstr_MalformedConfi.isa, v16);
            archiveDictionary = v19;
            goto LABEL_24;
          }

          v20 = NSClassFromString(v18);
          if ([(objc_class *)v20 isSubclassOfClass:objc_opt_class()])
          {
            sharedInstance = [(objc_class *)v20 sharedInstance];
          }

          else
          {
            sharedInstance = 0;
          }

          v22 = [(objc_class *)v20 settingsFromArchiveDictionary:v19];
          archiveDictionary = [v22 archiveDictionary];

          if (!v17)
          {
            v19 = archiveDictionary;
            goto LABEL_23;
          }

          if (!sharedInstance || !archiveDictionary)
          {
            v19 = archiveDictionary;
            goto LABEL_23;
          }

          v24 = [[PXSettingsConfiguration alloc] initWithName:v17 settings:sharedInstance archive:archiveDictionary];
          [v33 addObject:v24];

LABEL_24:
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (!v13)
        {
LABEL_27:

          v4 = v31;
          stringCopy = v32;
          v7 = v29;
          v5 = v30;
          v9 = v27;
          v8 = v28;
          v11 = v26;
          goto LABEL_33;
        }
      }
    }

    NSLog(&cfstr_UnexpectedObje_2.isa, v9);
  }

  else
  {
    NSLog(&cfstr_FailedToDeseri.isa, v10);
  }

  v33 = 0;
LABEL_33:

LABEL_34:

  return v33;
}

+ (id)sharableStringForConfigurations:(id)configurations
{
  v33 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = configurationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v30[0] = @"name";
        name = [v10 name];
        v31[0] = name;
        v30[1] = @"settingsClass";
        settings = [v10 settings];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v31[1] = v14;
        v30[2] = @"archive";
        archive = [v10 archive];
        v31[2] = archive;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
        [v4 addObject:v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v25 = 0;
  v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:1 error:&v25];
  v18 = v25;
  if (!v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsConfiguration.m" lineNumber:86 description:{@"failed to serialize configurations: %@", v18}];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Photos internal settings configurations. To import, copy this whole text and select Photos > Internal Settings > (…) > Configurations > Import…\n\n%@\n%@\n%@\n", @"=========", v19, @"========="];

  return v20;
}

@end