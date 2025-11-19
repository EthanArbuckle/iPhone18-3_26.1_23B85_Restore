@interface PXSettingsConfiguration
+ (id)configurationsFromSharableString:(id)a3;
+ (id)sharableStringForConfigurations:(id)a3;
- (PXSettingsConfiguration)init;
- (PXSettingsConfiguration)initWithCoder:(id)a3;
- (PXSettingsConfiguration)initWithName:(id)a3 settings:(id)a4;
- (PXSettingsConfiguration)initWithName:(id)a3 settings:(id)a4 archive:(id)a5;
- (id)copyWithName:(id)a3;
- (id)copyWithUpdatedSettingsValues;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PXSettingsConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PXSettingsConfiguration *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(PXSettingsConfiguration *)self settings];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 encodeObject:v8 forKey:@"settingsClass"];

  v9 = [(PXSettingsConfiguration *)self archive];
  [v4 encodeObject:v9 forKey:@"archive"];
}

- (id)copyWithUpdatedSettingsValues
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(PXSettingsConfiguration *)self name];
  v5 = [(PXSettingsConfiguration *)self settings];
  v6 = [v3 initWithName:v4 settings:v5];

  return v6;
}

- (id)copyWithName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PXSettingsConfiguration *)self settings];
  v7 = [(PXSettingsConfiguration *)self archive];
  v8 = [v5 initWithName:v4 settings:v6 archive:v7];

  return v8;
}

- (PXSettingsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingsClass"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archive"];

  if (!v6 || (v8 = NSClassFromString(v6), ![(objc_class *)v8 isSubclassOfClass:objc_opt_class()]))
  {
    v10 = 0;
LABEL_8:

    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(objc_class *)v8 sharedInstance];
  v10 = v9;
  if (!v5 || !v9 || !v7)
  {
    goto LABEL_8;
  }

  v11 = [(PXSettingsConfiguration *)self initWithName:v5 settings:v9 archive:v7];
LABEL_9:

  return v11;
}

- (PXSettingsConfiguration)initWithName:(id)a3 settings:(id)a4 archive:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PXSettingsConfiguration;
  v11 = [(PXSettingsConfiguration *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_settings, a4);
    v14 = [v10 copy];
    archive = v11->_archive;
    v11->_archive = v14;
  }

  return v11;
}

- (PXSettingsConfiguration)initWithName:(id)a3 settings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 archiveDictionary];
  v9 = [(PXSettingsConfiguration *)self initWithName:v7 settings:v6 archive:v8];

  return v9;
}

- (PXSettingsConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSettingsConfiguration.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXSettingsConfiguration init]"}];

  abort();
}

+ (id)configurationsFromSharableString:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"\n%@\n", @"========="];
  v5 = [v3 componentsSeparatedByString:v4];
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
      v32 = v3;
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
            v21 = 0;
LABEL_23:
            NSLog(&cfstr_MalformedConfi.isa, v16);
            v23 = v19;
            goto LABEL_24;
          }

          v20 = NSClassFromString(v18);
          if ([(objc_class *)v20 isSubclassOfClass:objc_opt_class()])
          {
            v21 = [(objc_class *)v20 sharedInstance];
          }

          else
          {
            v21 = 0;
          }

          v22 = [(objc_class *)v20 settingsFromArchiveDictionary:v19];
          v23 = [v22 archiveDictionary];

          if (!v17)
          {
            v19 = v23;
            goto LABEL_23;
          }

          if (!v21 || !v23)
          {
            v19 = v23;
            goto LABEL_23;
          }

          v24 = [[PXSettingsConfiguration alloc] initWithName:v17 settings:v21 archive:v23];
          [v33 addObject:v24];

LABEL_24:
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (!v13)
        {
LABEL_27:

          v4 = v31;
          v3 = v32;
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

+ (id)sharableStringForConfigurations:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
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
        v11 = [v10 name];
        v31[0] = v11;
        v30[1] = @"settingsClass";
        v12 = [v10 settings];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v31[1] = v14;
        v30[2] = @"archive";
        v15 = [v10 archive];
        v31[2] = v15;
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
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PXSettingsConfiguration.m" lineNumber:86 description:{@"failed to serialize configurations: %@", v18}];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Photos internal settings configurations. To import, copy this whole text and select Photos > Internal Settings > (…) > Configurations > Import…\n\n%@\n%@\n%@\n", @"=========", v19, @"========="];

  return v20;
}

@end