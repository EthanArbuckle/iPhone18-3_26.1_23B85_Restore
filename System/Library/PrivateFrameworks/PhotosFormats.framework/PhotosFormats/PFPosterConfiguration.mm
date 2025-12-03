@interface PFPosterConfiguration
+ (id)loadFromURL:(id)l error:(id *)error;
- (BOOL)saveToURL:(id)l error:(id *)error;
- (NSString)description;
- (PFPosterConfiguration)initWithCoder:(id)coder;
- (PFPosterConfiguration)initWithConfigurationType:(int64_t)type photoLibraryPath:(id)path;
- (id)analyticsPayload;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mediaAnalyticsPayload;
- (int64_t)posterType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterConfiguration

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(PFPosterConfiguration *)self identifier];
  options = [(PFPosterConfiguration *)self options];
  media = [(PFPosterConfiguration *)self media];
  editConfiguration = [(PFPosterConfiguration *)self editConfiguration];
  shuffleConfiguration = [(PFPosterConfiguration *)self shuffleConfiguration];
  layoutConfiguration = [(PFPosterConfiguration *)self layoutConfiguration];
  userInfo = [(PFPosterConfiguration *)self userInfo];
  photoLibraryPath = [(PFPosterConfiguration *)self photoLibraryPath];
  v13 = [v15 initWithFormat:@"<%@ %p; identifier: %@; options: %ld; media: %@; edit configuration: %@; shuffle configuration: %@ layout configuration: %@ user info: %@> photoLibraryPath: %@", v4, self, identifier, options, media, editConfiguration, shuffleConfiguration, layoutConfiguration, userInfo, photoLibraryPath];

  return v13;
}

- (PFPosterConfiguration)initWithCoder:(id)coder
{
  v34[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"configurationType"];
  if ([coderCopy containsValueForKey:@"photoLibraryPath"])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryPath"];
    photoLibraryPath = self->_photoLibraryPath;
    self->_photoLibraryPath = v6;
  }

  v8 = [(PFPosterConfiguration *)self initWithConfigurationType:v5 photoLibraryPath:self->_photoLibraryPath];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_options = [coderCopy decodeIntegerForKey:@"options"];
    if ([coderCopy containsValueForKey:@"allowedLayoutStrategies"])
    {
      v11 = [coderCopy decodeIntegerForKey:@"allowedLayoutStrategies"];
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"media"];
    media = v8->_media;
    v8->_media = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editConfiguration"];
    editConfiguration = v8->_editConfiguration;
    v8->_editConfiguration = v17;

    if (v5 == 1)
    {
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shuffleConfiguration"];
      shuffleConfiguration = v8->_shuffleConfiguration;
      v8->_shuffleConfiguration = v19;

      if (!v8->_shuffleConfiguration)
      {
        _PFAssertFailHandler();
      }
    }

    if ([coderCopy decodeIntegerForKey:@"version"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutConfiguration"];
      layoutConfiguration = v8->_layoutConfiguration;
      v8->_layoutConfiguration = v21;
    }

    else
    {
      [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"PFParallaxLayoutConcreteConfiguration"];
      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutConfiguration"];
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
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"userInfo"];
    userInfo = v8->_userInfo;
    v8->_userInfo = v29;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  [coderCopy encodeInteger:-[PFPosterConfiguration configurationType](self forKey:{"configurationType"), @"configurationType"}];
  [coderCopy encodeInteger:-[PFPosterConfiguration options](self forKey:{"options"), @"options"}];
  [coderCopy encodeInteger:-[PFPosterConfiguration allowedLayoutStrategies](self forKey:{"allowedLayoutStrategies"), @"allowedLayoutStrategies"}];
  identifier = [(PFPosterConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  media = [(PFPosterConfiguration *)self media];
  [coderCopy encodeObject:media forKey:@"media"];

  editConfiguration = [(PFPosterConfiguration *)self editConfiguration];
  [coderCopy encodeObject:editConfiguration forKey:@"editConfiguration"];

  if ([(PFPosterConfiguration *)self configurationType]== 1)
  {
    shuffleConfiguration = [(PFPosterConfiguration *)self shuffleConfiguration];

    if (!shuffleConfiguration)
    {
      v16 = _PFAssertFailHandler();
      [(PFPosterConfiguration *)v16 saveToURL:v17 error:v18, v19];
      return;
    }

    shuffleConfiguration2 = [(PFPosterConfiguration *)self shuffleConfiguration];
    [coderCopy encodeObject:shuffleConfiguration2 forKey:@"shuffleConfiguration"];
  }

  layoutConfiguration = [(PFPosterConfiguration *)self layoutConfiguration];

  if (layoutConfiguration)
  {
    layoutConfiguration2 = [(PFPosterConfiguration *)self layoutConfiguration];
    [coderCopy encodeObject:layoutConfiguration2 forKey:@"layoutConfiguration"];
  }

  userInfo = [(PFPosterConfiguration *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(PFPosterConfiguration *)self userInfo];
    [coderCopy encodeObject:userInfo2 forKey:@"userInfo"];
  }

  photoLibraryPath = [(PFPosterConfiguration *)self photoLibraryPath];

  v14 = coderCopy;
  if (photoLibraryPath)
  {
    photoLibraryPath2 = [(PFPosterConfiguration *)self photoLibraryPath];
    [coderCopy encodeObject:photoLibraryPath2 forKey:@"photoLibraryPath"];

    v14 = coderCopy;
  }
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__PFPosterConfiguration_saveToURL_error___block_invoke;
  v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v17[4] = error;
  lCopy = l;
  v6 = MEMORY[0x1B8C64C40](v17);
  v7 = [lCopy URLByAppendingPathComponent:@"ConfigurationModel.plist"];

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

- (id)copyWithZone:(_NSZone *)zone
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
  v10 = [(NSDictionary *)self->_userInfo copyWithZone:zone];
  userInfo = v5->_userInfo;
  v5->_userInfo = v10;

  objc_storeStrong(&v5->_photoLibraryPath, self->_photoLibraryPath);
  return v5;
}

- (id)mediaAnalyticsPayload
{
  v33 = *MEMORY[0x1E69E9840];
  media = [(PFPosterConfiguration *)self media];
  v3 = [media copy];

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

        editConfiguration = [*(*(&v26 + 1) + 8 * i) editConfiguration];
        v12 = editConfiguration;
        if (editConfiguration)
        {
          v8 = (v8 + 1);
          v7 = v7 + [editConfiguration isDepthEnabled];
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

  firstObject = [v4 firstObject];
  v20 = firstObject;
  if (firstObject)
  {
    mediaType = [firstObject mediaType];
    v22 = mediaType > 4 ? @"??" : off_1E7B64660[mediaType];
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
  configurationType = [(PFPosterConfiguration *)self configurationType];
  v5 = @"??";
  if (configurationType == 1)
  {
    v5 = @"Shuffle";
  }

  if (configurationType)
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

  mediaAnalyticsPayload = [(PFPosterConfiguration *)self mediaAnalyticsPayload];
  [v3 addEntriesFromDictionary:mediaAnalyticsPayload];

  editConfiguration = [(PFPosterConfiguration *)self editConfiguration];

  if (editConfiguration)
  {
    editConfiguration2 = [(PFPosterConfiguration *)self editConfiguration];
    analyticsPayload = [editConfiguration2 analyticsPayload];
    [v3 addEntriesFromDictionary:analyticsPayload];
  }

  shuffleConfiguration = [(PFPosterConfiguration *)self shuffleConfiguration];

  if (shuffleConfiguration)
  {
    shuffleConfiguration2 = [(PFPosterConfiguration *)self shuffleConfiguration];
    analyticsPayload2 = [shuffleConfiguration2 analyticsPayload];
    [v3 addEntriesFromDictionary:analyticsPayload2];
  }

  return v3;
}

- (PFPosterConfiguration)initWithConfigurationType:(int64_t)type photoLibraryPath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = PFPosterConfiguration;
  v8 = [(PFPosterConfiguration *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_configurationType = type;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = uUIDString;

    IsAdaptiveLayoutEnabled = PFPosterIsAdaptiveLayoutEnabled();
    v14 = 3;
    if (!IsAdaptiveLayoutEnabled)
    {
      v14 = 1;
    }

    v9->_allowedLayoutStrategies = v14;
    objc_storeStrong(&v9->_photoLibraryPath, path);
  }

  return v9;
}

+ (id)loadFromURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [l URLByAppendingPathComponent:@"ConfigurationModel.plist"];
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
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v12 = v9;
    *error = v9;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to read configuration data at path:%@ error:%@", buf, 0x16u);
    if (error)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = v7;
  v8 = 0;
  *error = v7;
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