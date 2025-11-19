@interface PFPosterConfiguration
+ (id)loadFromURL:(id)a3 error:(id *)a4;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (NSString)description;
- (PFPosterConfiguration)initWithCoder:(id)a3;
- (PFPosterConfiguration)initWithConfigurationType:(int64_t)a3 photoLibraryPath:(id)a4;
- (id)analyticsPayload;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mediaAnalyticsPayload;
- (int64_t)posterType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFPosterConfiguration

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(PFPosterConfiguration *)self identifier];
  v6 = [(PFPosterConfiguration *)self options];
  v7 = [(PFPosterConfiguration *)self media];
  v8 = [(PFPosterConfiguration *)self editConfiguration];
  v9 = [(PFPosterConfiguration *)self shuffleConfiguration];
  v10 = [(PFPosterConfiguration *)self layoutConfiguration];
  v11 = [(PFPosterConfiguration *)self userInfo];
  v12 = [(PFPosterConfiguration *)self photoLibraryPath];
  v13 = [v15 initWithFormat:@"<%@ %p; identifier: %@; options: %ld; media: %@; edit configuration: %@; shuffle configuration: %@ layout configuration: %@ user info: %@> photoLibraryPath: %@", v4, self, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (PFPosterConfiguration)initWithCoder:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"configurationType"];
  if ([v4 containsValueForKey:@"photoLibraryPath"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryPath"];
    photoLibraryPath = self->_photoLibraryPath;
    self->_photoLibraryPath = v6;
  }

  v8 = [(PFPosterConfiguration *)self initWithConfigurationType:v5 photoLibraryPath:self->_photoLibraryPath];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_options = [v4 decodeIntegerForKey:@"options"];
    if ([v4 containsValueForKey:@"allowedLayoutStrategies"])
    {
      v11 = [v4 decodeIntegerForKey:@"allowedLayoutStrategies"];
    }

    else
    {
      v11 = 1;
    }

    v8->_allowedLayoutStrategies = v11;
    v12 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"media"];
    media = v8->_media;
    v8->_media = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"editConfiguration"];
    editConfiguration = v8->_editConfiguration;
    v8->_editConfiguration = v17;

    if (v5 == 1)
    {
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shuffleConfiguration"];
      shuffleConfiguration = v8->_shuffleConfiguration;
      v8->_shuffleConfiguration = v19;

      if (!v8->_shuffleConfiguration)
      {
        _PFAssertFailHandler();
      }
    }

    if ([v4 decodeIntegerForKey:@"version"])
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutConfiguration"];
      layoutConfiguration = v8->_layoutConfiguration;
      v8->_layoutConfiguration = v21;
    }

    else
    {
      [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"PFParallaxLayoutConcreteConfiguration"];
      v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutConfiguration"];
      if (v23)
      {
        layoutConfiguration = v23;
        v24 = [[PFWallpaperCompoundDeviceConfiguration alloc] initWithPortraitConfiguration:v23 landscapeConfiguration:0];
        v25 = v8->_layoutConfiguration;
        v8->_layoutConfiguration = v24;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v32 = 0;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Portrait config was missing\n\t", v32, 2u);
        }

        layoutConfiguration = 0;
      }
    }

    v26 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v33[3] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    v28 = [v26 setWithArray:v27];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"userInfo"];
    userInfo = v8->_userInfo;
    v8->_userInfo = v29;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  [v20 encodeInteger:1 forKey:@"version"];
  [v20 encodeInteger:-[PFPosterConfiguration configurationType](self forKey:{"configurationType"), @"configurationType"}];
  [v20 encodeInteger:-[PFPosterConfiguration options](self forKey:{"options"), @"options"}];
  [v20 encodeInteger:-[PFPosterConfiguration allowedLayoutStrategies](self forKey:{"allowedLayoutStrategies"), @"allowedLayoutStrategies"}];
  v4 = [(PFPosterConfiguration *)self identifier];
  [v20 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PFPosterConfiguration *)self media];
  [v20 encodeObject:v5 forKey:@"media"];

  v6 = [(PFPosterConfiguration *)self editConfiguration];
  [v20 encodeObject:v6 forKey:@"editConfiguration"];

  if ([(PFPosterConfiguration *)self configurationType]== 1)
  {
    v7 = [(PFPosterConfiguration *)self shuffleConfiguration];

    if (!v7)
    {
      v16 = _PFAssertFailHandler();
      [(PFPosterConfiguration *)v16 saveToURL:v17 error:v18, v19];
      return;
    }

    v8 = [(PFPosterConfiguration *)self shuffleConfiguration];
    [v20 encodeObject:v8 forKey:@"shuffleConfiguration"];
  }

  v9 = [(PFPosterConfiguration *)self layoutConfiguration];

  if (v9)
  {
    v10 = [(PFPosterConfiguration *)self layoutConfiguration];
    [v20 encodeObject:v10 forKey:@"layoutConfiguration"];
  }

  v11 = [(PFPosterConfiguration *)self userInfo];

  if (v11)
  {
    v12 = [(PFPosterConfiguration *)self userInfo];
    [v20 encodeObject:v12 forKey:@"userInfo"];
  }

  v13 = [(PFPosterConfiguration *)self photoLibraryPath];

  v14 = v20;
  if (v13)
  {
    v15 = [(PFPosterConfiguration *)self photoLibraryPath];
    [v20 encodeObject:v15 forKey:@"photoLibraryPath"];

    v14 = v20;
  }
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__PFPosterConfiguration_saveToURL_error___block_invoke;
  v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v17[4] = a4;
  v5 = a3;
  v6 = MEMORY[0x1B8C64C40](v17);
  v7 = [v5 URLByAppendingPathComponent:@"ConfigurationModel.plist"];

  v16 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to encode configuration data at path:%@ error:%@";
LABEL_9:
      _os_log_error_impl(&dword_1B35C1000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v15 = 0;
  v13 = 1;
  [v8 writeToURL:v7 options:1 error:&v15];
  v10 = v15;
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to write configuration data at path:%@ error:%@";
      goto LABEL_9;
    }

LABEL_6:
    (v6)[2](v6, v10);
    v13 = 0;
  }

  return v13;
}

void **__41__PFPosterConfiguration_saveToURL_error___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PFPosterConfiguration allocWithZone:?];
  v5->_configurationType = self->_configurationType;
  v5->_options = self->_options;
  v5->_allowedLayoutStrategies = self->_allowedLayoutStrategies;
  objc_storeStrong(&v5->_identifier, self->_identifier);
  objc_storeStrong(&v5->_media, self->_media);
  v6 = [(PFPosterEditConfiguration *)self->_editConfiguration copy];
  editConfiguration = v5->_editConfiguration;
  v5->_editConfiguration = v6;

  v8 = [(PFPosterShuffleConfiguration *)self->_shuffleConfiguration copy];
  shuffleConfiguration = v5->_shuffleConfiguration;
  v5->_shuffleConfiguration = v8;

  objc_storeStrong(&v5->_layoutConfiguration, self->_layoutConfiguration);
  v10 = [(NSDictionary *)self->_userInfo copyWithZone:a3];
  userInfo = v5->_userInfo;
  v5->_userInfo = v10;

  objc_storeStrong(&v5->_photoLibraryPath, self->_photoLibraryPath);
  return v5;
}

- (id)mediaAnalyticsPayload
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [(PFPosterConfiguration *)self media];
  v3 = [v2 copy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v26 + 1) + 8 * i) editConfiguration];
        v12 = v11;
        if (v11)
        {
          v8 = (v8 + 1);
          v7 = v7 + [v11 isDepthEnabled];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  v30[0] = @"asset_count";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v31[0] = v14;
  v30[1] = @"custom_edit_count";
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v31[1] = v15;
  v30[2] = @"depth_enabled_count";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v31[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v18 = [v13 initWithDictionary:v17];

  v19 = [v4 firstObject];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 mediaType];
    v22 = v21 > 4 ? @"??" : off_1E7B64660[v21];
    v23 = v22;
    [v18 setObject:v23 forKeyedSubscript:@"first_media_type"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v20, "suggestionSubtype")}];
      [v18 setObject:v24 forKeyedSubscript:@"first_suggestion_subtype"];
    }
  }

  return v18;
}

- (id)analyticsPayload
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PFPosterConfiguration *)self configurationType];
  v5 = @"??";
  if (v4 == 1)
  {
    v5 = @"Shuffle";
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Photo";
  }

  [v3 setObject:v6 forKeyedSubscript:@"configuration_type"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFPosterConfiguration options](self, "options")}];
  [v3 setObject:v7 forKeyedSubscript:@"configuration_options"];

  v8 = [(PFPosterConfiguration *)self mediaAnalyticsPayload];
  [v3 addEntriesFromDictionary:v8];

  v9 = [(PFPosterConfiguration *)self editConfiguration];

  if (v9)
  {
    v10 = [(PFPosterConfiguration *)self editConfiguration];
    v11 = [v10 analyticsPayload];
    [v3 addEntriesFromDictionary:v11];
  }

  v12 = [(PFPosterConfiguration *)self shuffleConfiguration];

  if (v12)
  {
    v13 = [(PFPosterConfiguration *)self shuffleConfiguration];
    v14 = [v13 analyticsPayload];
    [v3 addEntriesFromDictionary:v14];
  }

  return v3;
}

- (PFPosterConfiguration)initWithConfigurationType:(int64_t)a3 photoLibraryPath:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PFPosterConfiguration;
  v8 = [(PFPosterConfiguration *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_configurationType = a3;
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = v11;

    IsAdaptiveLayoutEnabled = PFPosterIsAdaptiveLayoutEnabled();
    v14 = 3;
    if (!IsAdaptiveLayoutEnabled)
    {
      v14 = 1;
    }

    v9->_allowedLayoutStrategies = v14;
    objc_storeStrong(&v9->_photoLibraryPath, a4);
  }

  return v9;
}

+ (id)loadFromURL:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [a3 URLByAppendingPathComponent:@"ConfigurationModel.plist"];
  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v15];
  v7 = v15;
  if (v6)
  {
    v14 = v7;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = v8;
LABEL_10:

      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unarchive poster configuraton data error:%@", buf, 0xCu);
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
      goto LABEL_10;
    }

    v12 = v9;
    *a4 = v9;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to read configuration data at path:%@ error:%@", buf, 0x16u);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = v7;
  v8 = 0;
  *a4 = v7;
LABEL_13:
  v9 = v7;
LABEL_14:

  return v8;
}

- (int64_t)posterType
{
  if ([(PFPosterConfiguration *)self configurationType])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end