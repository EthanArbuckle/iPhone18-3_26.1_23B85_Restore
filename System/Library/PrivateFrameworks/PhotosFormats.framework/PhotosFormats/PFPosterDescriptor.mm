@interface PFPosterDescriptor
+ (id)descriptorIdentifierForDescriptorType:(int64_t)type uuids:(id)uuids;
+ (id)descriptorTypeStringWithType:(int64_t)type;
+ (id)loadFromURL:(id)l error:(id *)error;
+ (int64_t)descriptorTypeFromTypeString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)saveToURL:(id)l error:(id *)error;
- (PFPosterDescriptor)initWithCoder:(id)coder;
- (PFPosterDescriptor)initWithDescriptorType:(int64_t)type media:(id)media photoLibraryPath:(id)path;
- (id)description;
- (int64_t)posterType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterDescriptor

- (id)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [PFPosterDescriptor descriptorTypeStringWithType:[(PFPosterDescriptor *)self descriptorType]];
  identifier = [(PFPosterDescriptor *)self identifier];
  version = [(PFPosterDescriptor *)self version];
  media = [(PFPosterDescriptor *)self media];
  displayNameLocalizationKey = [(PFPosterDescriptor *)self displayNameLocalizationKey];
  styleCategory = [(PFPosterDescriptor *)self styleCategory];
  shuffleConfiguration = [(PFPosterDescriptor *)self shuffleConfiguration];
  photoLibraryPath = [(PFPosterDescriptor *)self photoLibraryPath];
  v13 = [v15 initWithFormat:@"<%@ %p; type: %@; identifier: %@; version: %lu; media: %@; displayName: %@; styleCategory: %@; shuffleConfig: %@; photoLibraryPath: %@>", v4, self, v5, identifier, version, media, displayNameLocalizationKey, styleCategory, shuffleConfiguration, photoLibraryPath];

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_descriptorType];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_media hash];

  return v5 ^ v4;
}

- (PFPosterDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"media"];
  v6 = [coderCopy decodeIntegerForKey:@"descriptorType"];
  if ([coderCopy containsValueForKey:@"photoLibraryPath"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoLibraryPath"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PFPosterDescriptor *)self initWithDescriptorType:v6 media:v5 photoLibraryPath:v7];
  -[PFPosterDescriptor setVersion:](v8, "setVersion:", [coderCopy decodeIntegerForKey:@"version"]);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(PFPosterDescriptor *)v8 setIdentifier:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
  [(PFPosterDescriptor *)v8 setDisplayNameLocalizationKey:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styleCategory"];
  [(PFPosterDescriptor *)v8 setStyleCategory:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shuffleConfiguration"];
  [(PFPosterDescriptor *)v8 setShuffleConfiguration:v12];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PFPosterDescriptor descriptorType](self forKey:{"descriptorType"), @"descriptorType"}];
  media = [(PFPosterDescriptor *)self media];
  [coderCopy encodeObject:media forKey:@"media"];

  [coderCopy encodeInteger:-[PFPosterDescriptor version](self forKey:{"version"), @"version"}];
  identifier = [(PFPosterDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayNameLocalizationKey = [(PFPosterDescriptor *)self displayNameLocalizationKey];
  [coderCopy encodeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];

  styleCategory = [(PFPosterDescriptor *)self styleCategory];
  [coderCopy encodeObject:styleCategory forKey:@"styleCategory"];

  shuffleConfiguration = [(PFPosterDescriptor *)self shuffleConfiguration];
  [coderCopy encodeObject:shuffleConfiguration forKey:@"shuffleConfiguration"];

  photoLibraryPath = [(PFPosterDescriptor *)self photoLibraryPath];
  [coderCopy encodeObject:photoLibraryPath forKey:@"photoLibraryPath"];
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [l URLByAppendingPathComponent:@"DescriptorModel.plist"];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
  v8 = v7;
  v9 = *error;
  if (*error)
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
  [v7 writeToURL:v6 options:1 error:error];
  v13 = *error;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      descriptorType = [(PFPosterDescriptor *)self descriptorType];
      if (descriptorType == [(PFPosterDescriptor *)v5 descriptorType])
      {
        media = [(PFPosterDescriptor *)self media];
        media2 = [(PFPosterDescriptor *)v5 media];
        if ((media == media2 || [media isEqual:media2]) && (v9 = -[PFPosterDescriptor version](self, "version"), v9 == -[PFPosterDescriptor version](v5, "version")))
        {
          photoLibraryPath = [(PFPosterDescriptor *)self photoLibraryPath];
          photoLibraryPath2 = [(PFPosterDescriptor *)v5 photoLibraryPath];
          if (photoLibraryPath == photoLibraryPath2 || [photoLibraryPath isEqual:photoLibraryPath2])
          {
            identifier = [(PFPosterDescriptor *)self identifier];
            identifier2 = [(PFPosterDescriptor *)v5 identifier];
            if (identifier == identifier2 || [identifier isEqual:identifier2])
            {
              v26 = identifier2;
              displayNameLocalizationKey = [(PFPosterDescriptor *)self displayNameLocalizationKey];
              displayNameLocalizationKey2 = [(PFPosterDescriptor *)v5 displayNameLocalizationKey];
              if (displayNameLocalizationKey == displayNameLocalizationKey2 || [displayNameLocalizationKey isEqual:displayNameLocalizationKey2])
              {
                v24 = photoLibraryPath;
                v25 = displayNameLocalizationKey2;
                styleCategory = [(PFPosterDescriptor *)self styleCategory];
                styleCategory2 = [(PFPosterDescriptor *)v5 styleCategory];
                if (styleCategory == styleCategory2 || [styleCategory isEqual:styleCategory2])
                {
                  v22 = displayNameLocalizationKey;
                  v23 = identifier;
                  shuffleConfiguration = [(PFPosterDescriptor *)self shuffleConfiguration];
                  shuffleConfiguration2 = [(PFPosterDescriptor *)v5 shuffleConfiguration];
                  if (shuffleConfiguration == shuffleConfiguration2)
                  {
                    v20 = 1;
                  }

                  else
                  {
                    v20 = [shuffleConfiguration isEqual:shuffleConfiguration2];
                  }

                  displayNameLocalizationKey = v22;
                  identifier = v23;
                }

                else
                {
                  v20 = 0;
                }

                photoLibraryPath = v24;
                displayNameLocalizationKey2 = v25;
              }

              else
              {
                v20 = 0;
              }

              identifier2 = v26;
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

- (PFPosterDescriptor)initWithDescriptorType:(int64_t)type media:(id)media photoLibraryPath:(id)path
{
  mediaCopy = media;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = PFPosterDescriptor;
  v11 = [(PFPosterDescriptor *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_descriptorType = type;
    objc_storeStrong(&v11->_media, media);
    v12->_version = 0;
    styleCategory = v12->_styleCategory;
    v12->_styleCategory = 0;

    objc_storeStrong(&v12->_photoLibraryPath, path);
  }

  return v12;
}

+ (id)loadFromURL:(id)l error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [l URLByAppendingPathComponent:@"DescriptorModel.plist"];
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
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v17 = v14;
    *error = v14;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to read descriptor data at path:%@ error:%@", buf, 0x16u);
    if (error)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = v7;
  v13 = 0;
  *error = v7;
LABEL_13:
  v14 = v7;
LABEL_14:

  return v13;
}

+ (int64_t)descriptorTypeFromTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Undefined"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"FeaturedPhoto"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SmartAlbum"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SettlingEffect"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SpatialPhoto"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"Fallback"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"CreateAFacePhotos"])
  {
    v4 = 101;
  }

  else if ([stringCopy isEqualToString:@"CreateAFaceShuffle"])
  {
    v4 = 102;
  }

  else if ([stringCopy isEqualToString:@"CreateAFacePeople"])
  {
    v4 = 103;
  }

  else if ([stringCopy isEqualToString:@"CreateAFaceLivePhoto"])
  {
    v4 = 104;
  }

  else if ([stringCopy isEqualToString:@"UpgradeSuggestionGyroPosterAdaptiveTime"])
  {
    v4 = 201;
  }

  else if ([stringCopy isEqualToString:@"UpgradeSuggestionGyroPoster"])
  {
    v4 = 202;
  }

  else if ([stringCopy isEqualToString:@"UpgradeSuggestionAdaptiveTime"])
  {
    v4 = 203;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)descriptorTypeStringWithType:(int64_t)type
{
  if (type <= 100)
  {
    if (type > 2)
    {
      switch(type)
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
      switch(type)
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

  if (type > 103)
  {
    if (type > 201)
    {
      if (type == 202)
      {
        return @"UpgradeSuggestionGyroPoster";
      }

      if (type == 203)
      {
        return @"UpgradeSuggestionAdaptiveTime";
      }
    }

    else
    {
      if (type == 104)
      {
        return @"CreateAFaceLivePhoto";
      }

      if (type == 201)
      {
        return @"UpgradeSuggestionGyroPosterAdaptiveTime";
      }
    }

    return @"??";
  }

  if (type == 101)
  {
    return @"CreateAFacePhotos";
  }

  if (type == 102)
  {
    return @"CreateAFaceShuffle";
  }

  return @"CreateAFacePeople";
}

+ (id)descriptorIdentifierForDescriptorType:(int64_t)type uuids:(id)uuids
{
  uuidsCopy = uuids;
  v7 = [self descriptorTypeStringWithType:type];
  v8 = v7;
  if (type > 100)
  {
    if ((type - 101) < 4 || (type - 201) < 3)
    {
      v9 = v7;
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (type > 2)
  {
    if ((type - 3) >= 3)
    {
      goto LABEL_17;
    }

LABEL_11:
    v10 = MEMORY[0x1E696AEC0];
    firstObject = [uuidsCopy firstObject];
    goto LABEL_12;
  }

  switch(type)
  {
    case 0:
      v9 = @"Undefined";
      goto LABEL_13;
    case 1:
      goto LABEL_11;
    case 2:
      v10 = MEMORY[0x1E696AEC0];
      firstObject = [uuidsCopy componentsJoinedByString:@"|"];
LABEL_12:
      v12 = firstObject;
      v9 = [v10 stringWithFormat:@"%@|%@", v8, firstObject];

      goto LABEL_13;
  }

LABEL_17:
  v9 = @"??";
LABEL_13:

  return v9;
}

- (int64_t)posterType
{
  descriptorType = [(PFPosterDescriptor *)self descriptorType];
  result = 0;
  if (descriptorType > 101)
  {
    if ((descriptorType - 201) < 3 || (descriptorType - 103) < 2)
    {
      return 1;
    }

    if (descriptorType != 102)
    {
      return result;
    }

    return 2;
  }

  if (descriptorType <= 2)
  {
    if (descriptorType == 1)
    {
      return 1;
    }

    if (descriptorType != 2)
    {
      return result;
    }

    return 2;
  }

  if ((descriptorType - 3) < 3 || descriptorType == 101)
  {
    return 1;
  }

  return result;
}

@end