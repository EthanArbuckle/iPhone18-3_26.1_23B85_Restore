@interface PFPosterDescriptor
+ (id)descriptorIdentifierForDescriptorType:(int64_t)a3 uuids:(id)a4;
+ (id)descriptorTypeStringWithType:(int64_t)a3;
+ (id)loadFromURL:(id)a3 error:(id *)a4;
+ (int64_t)descriptorTypeFromTypeString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (PFPosterDescriptor)initWithCoder:(id)a3;
- (PFPosterDescriptor)initWithDescriptorType:(int64_t)a3 media:(id)a4 photoLibraryPath:(id)a5;
- (id)description;
- (int64_t)posterType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFPosterDescriptor

- (id)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [PFPosterDescriptor descriptorTypeStringWithType:[(PFPosterDescriptor *)self descriptorType]];
  v6 = [(PFPosterDescriptor *)self identifier];
  v7 = [(PFPosterDescriptor *)self version];
  v8 = [(PFPosterDescriptor *)self media];
  v9 = [(PFPosterDescriptor *)self displayNameLocalizationKey];
  v10 = [(PFPosterDescriptor *)self styleCategory];
  v11 = [(PFPosterDescriptor *)self shuffleConfiguration];
  v12 = [(PFPosterDescriptor *)self photoLibraryPath];
  v13 = [v15 initWithFormat:@"<%@ %p; type: %@; identifier: %@; version: %lu; media: %@; displayName: %@; styleCategory: %@; shuffleConfig: %@; photoLibraryPath: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_descriptorType];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_media hash];

  return v5 ^ v4;
}

- (PFPosterDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"media"];
  v6 = [v4 decodeIntegerForKey:@"descriptorType"];
  if ([v4 containsValueForKey:@"photoLibraryPath"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryPath"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PFPosterDescriptor *)self initWithDescriptorType:v6 media:v5 photoLibraryPath:v7];
  -[PFPosterDescriptor setVersion:](v8, "setVersion:", [v4 decodeIntegerForKey:@"version"]);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(PFPosterDescriptor *)v8 setIdentifier:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
  [(PFPosterDescriptor *)v8 setDisplayNameLocalizationKey:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"styleCategory"];
  [(PFPosterDescriptor *)v8 setStyleCategory:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shuffleConfiguration"];
  [(PFPosterDescriptor *)v8 setShuffleConfiguration:v12];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PFPosterDescriptor descriptorType](self forKey:{"descriptorType"), @"descriptorType"}];
  v5 = [(PFPosterDescriptor *)self media];
  [v4 encodeObject:v5 forKey:@"media"];

  [v4 encodeInteger:-[PFPosterDescriptor version](self forKey:{"version"), @"version"}];
  v6 = [(PFPosterDescriptor *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(PFPosterDescriptor *)self displayNameLocalizationKey];
  [v4 encodeObject:v7 forKey:@"displayNameLocalizationKey"];

  v8 = [(PFPosterDescriptor *)self styleCategory];
  [v4 encodeObject:v8 forKey:@"styleCategory"];

  v9 = [(PFPosterDescriptor *)self shuffleConfiguration];
  [v4 encodeObject:v9 forKey:@"shuffleConfiguration"];

  v10 = [(PFPosterDescriptor *)self photoLibraryPath];
  [v4 encodeObject:v10 forKey:@"photoLibraryPath"];
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [a3 URLByAppendingPathComponent:@"DescriptorModel.plist"];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:a4];
  v8 = v7;
  v9 = *a4;
  if (*a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "Failed to encode descriptor data at path:%@ error:%@";
LABEL_9:
      _os_log_error_impl(&dword_1B35C1000, v10, OS_LOG_TYPE_ERROR, v11, &v15, 0x16u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v12 = 1;
  [v7 writeToURL:v6 options:1 error:a4];
  v13 = *a4;
  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v13;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "Failed to write descriptor data at path:%@ error:%@";
      goto LABEL_9;
    }

LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PFPosterDescriptor *)self descriptorType];
      if (v6 == [(PFPosterDescriptor *)v5 descriptorType])
      {
        v7 = [(PFPosterDescriptor *)self media];
        v8 = [(PFPosterDescriptor *)v5 media];
        if ((v7 == v8 || [v7 isEqual:v8]) && (v9 = -[PFPosterDescriptor version](self, "version"), v9 == -[PFPosterDescriptor version](v5, "version")))
        {
          v10 = [(PFPosterDescriptor *)self photoLibraryPath];
          v11 = [(PFPosterDescriptor *)v5 photoLibraryPath];
          if (v10 == v11 || [v10 isEqual:v11])
          {
            v12 = [(PFPosterDescriptor *)self identifier];
            v13 = [(PFPosterDescriptor *)v5 identifier];
            if (v12 == v13 || [v12 isEqual:v13])
            {
              v26 = v13;
              v14 = [(PFPosterDescriptor *)self displayNameLocalizationKey];
              v15 = [(PFPosterDescriptor *)v5 displayNameLocalizationKey];
              if (v14 == v15 || [v14 isEqual:v15])
              {
                v24 = v10;
                v25 = v15;
                v16 = [(PFPosterDescriptor *)self styleCategory];
                v17 = [(PFPosterDescriptor *)v5 styleCategory];
                if (v16 == v17 || [v16 isEqual:v17])
                {
                  v22 = v14;
                  v23 = v12;
                  v18 = [(PFPosterDescriptor *)self shuffleConfiguration];
                  v19 = [(PFPosterDescriptor *)v5 shuffleConfiguration];
                  if (v18 == v19)
                  {
                    v20 = 1;
                  }

                  else
                  {
                    v20 = [v18 isEqual:v19];
                  }

                  v14 = v22;
                  v12 = v23;
                }

                else
                {
                  v20 = 0;
                }

                v10 = v24;
                v15 = v25;
              }

              else
              {
                v20 = 0;
              }

              v13 = v26;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (PFPosterDescriptor)initWithDescriptorType:(int64_t)a3 media:(id)a4 photoLibraryPath:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PFPosterDescriptor;
  v11 = [(PFPosterDescriptor *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_descriptorType = a3;
    objc_storeStrong(&v11->_media, a4);
    v12->_version = 0;
    styleCategory = v12->_styleCategory;
    v12->_styleCategory = 0;

    objc_storeStrong(&v12->_photoLibraryPath, a5);
  }

  return v12;
}

+ (id)loadFromURL:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a3 URLByAppendingPathComponent:@"DescriptorModel.plist"];
  v20 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v19 = v7;
    v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v12 fromData:v6 error:&v19];
    v14 = v19;

    if (v13)
    {
      v15 = v13;
LABEL_10:

      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unarchive data error:%@", buf, 0xCu);
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
      goto LABEL_10;
    }

    v17 = v14;
    *a4 = v14;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to read descriptor data at path:%@ error:%@", buf, 0x16u);
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = v7;
  v13 = 0;
  *a4 = v7;
LABEL_13:
  v14 = v7;
LABEL_14:

  return v13;
}

+ (int64_t)descriptorTypeFromTypeString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Undefined"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FeaturedPhoto"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SmartAlbum"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SettlingEffect"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SpatialPhoto"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Fallback"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CreateAFacePhotos"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"CreateAFaceShuffle"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"CreateAFacePeople"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"CreateAFaceLivePhoto"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"UpgradeSuggestionGyroPosterAdaptiveTime"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"UpgradeSuggestionGyroPoster"])
  {
    v4 = 202;
  }

  else if ([v3 isEqualToString:@"UpgradeSuggestionAdaptiveTime"])
  {
    v4 = 203;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)descriptorTypeStringWithType:(int64_t)a3
{
  if (a3 <= 100)
  {
    if (a3 > 2)
    {
      switch(a3)
      {
        case 3:
          return @"SettlingEffect";
        case 4:
          return @"Fallback";
        case 5:
          return @"SpatialPhoto";
      }
    }

    else
    {
      switch(a3)
      {
        case 0:
          return @"Undefined";
        case 1:
          return @"FeaturedPhoto";
        case 2:
          return @"SmartAlbum";
      }
    }

    return @"??";
  }

  if (a3 > 103)
  {
    if (a3 > 201)
    {
      if (a3 == 202)
      {
        return @"UpgradeSuggestionGyroPoster";
      }

      if (a3 == 203)
      {
        return @"UpgradeSuggestionAdaptiveTime";
      }
    }

    else
    {
      if (a3 == 104)
      {
        return @"CreateAFaceLivePhoto";
      }

      if (a3 == 201)
      {
        return @"UpgradeSuggestionGyroPosterAdaptiveTime";
      }
    }

    return @"??";
  }

  if (a3 == 101)
  {
    return @"CreateAFacePhotos";
  }

  if (a3 == 102)
  {
    return @"CreateAFaceShuffle";
  }

  return @"CreateAFacePeople";
}

+ (id)descriptorIdentifierForDescriptorType:(int64_t)a3 uuids:(id)a4
{
  v6 = a4;
  v7 = [a1 descriptorTypeStringWithType:a3];
  v8 = v7;
  if (a3 > 100)
  {
    if ((a3 - 101) < 4 || (a3 - 201) < 3)
    {
      v9 = v7;
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (a3 > 2)
  {
    if ((a3 - 3) >= 3)
    {
      goto LABEL_17;
    }

LABEL_11:
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v6 firstObject];
    goto LABEL_12;
  }

  switch(a3)
  {
    case 0:
      v9 = @"Undefined";
      goto LABEL_13;
    case 1:
      goto LABEL_11;
    case 2:
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v6 componentsJoinedByString:@"|"];
LABEL_12:
      v12 = v11;
      v9 = [v10 stringWithFormat:@"%@|%@", v8, v11];

      goto LABEL_13;
  }

LABEL_17:
  v9 = @"??";
LABEL_13:

  return v9;
}

- (int64_t)posterType
{
  v2 = [(PFPosterDescriptor *)self descriptorType];
  result = 0;
  if (v2 > 101)
  {
    if ((v2 - 201) < 3 || (v2 - 103) < 2)
    {
      return 1;
    }

    if (v2 != 102)
    {
      return result;
    }

    return 2;
  }

  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      return 1;
    }

    if (v2 != 2)
    {
      return result;
    }

    return 2;
  }

  if ((v2 - 3) < 3 || v2 == 101)
  {
    return 1;
  }

  return result;
}

@end