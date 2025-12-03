@interface PLPhotoDCFFileGroup
- (BOOL)hasObsoleteFiles;
- (BOOL)hasPrebakedLandscapeScrubberThumbnails;
- (BOOL)hasPrebakedPortraitScrubberThumbnails;
- (BOOL)hasPrebakedThumbnail;
- (BOOL)hasPrebakedWildcatThumbnails;
- (BOOL)hasThumbnail;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (PLPhotoDCFFileGroup)initWithName:(id)name number:(int)number directory:(id)directory;
- (id)date;
- (id)extensions;
- (id)imageSourceTypeHint;
- (id)pathForFullSizeImage;
- (id)pathForLowResolutionFile;
- (id)pathForMetadataWithGroupName;
- (id)pathForPrebakedLandscapeScrubberThumbnails;
- (id)pathForPrebakedPortraitScrubberThumbnails;
- (id)pathForPrebakedWildcatThumbnailsFile;
- (id)pathForThumbnailFile;
- (id)pathForTrimmedVideoFile;
- (id)pathForVideoFile;
- (id)pathForVideoPreviewFile;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)addExtension:(id)extension;
- (void)addExtensionsFromMetadataDirectory;
- (void)createMetadataDirectoryIfNecessary;
- (void)deleteFiles;
- (void)deleteObsoleteFiles;
- (void)setWriteIsPending:(BOOL)pending;
@end

@implementation PLPhotoDCFFileGroup

- (void)setWriteIsPending:(BOOL)pending
{
  if (pending)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 96) = *(self + 96) & 0xFB | v3;
  [(PLPhotoDCFDirectory *)self->_directory setWriteIsPending:?];
}

- (void)deleteFiles
{
  v31 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  pathForFullSizeImage = [(PLPhotoDCFFileGroup *)self pathForFullSizeImage];
  [defaultManager removeItemAtPath:pathForFullSizeImage error:0];

  pathForVideoFile = [(PLPhotoDCFFileGroup *)self pathForVideoFile];
  [defaultManager removeItemAtPath:pathForVideoFile error:0];

  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v7 = [pathForMetadata stringByAppendingPathComponent:self->super._name];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = _MetadataFileExtensions();
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v7 stringByAppendingPathExtension:*(*(&v25 + 1) + 8 * v12)];
        [defaultManager removeItemAtPath:v13 error:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  pathForGroupWithoutExtension = [(PLPhotoDCFFileGroup *)self pathForGroupWithoutExtension];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_extensions;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [pathForGroupWithoutExtension stringByAppendingPathExtension:{*(*(&v21 + 1) + 8 * v19), v21}];
        [defaultManager removeItemAtPath:v20 error:0];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }
}

- (BOOL)hasPrebakedWildcatThumbnails
{
  if ((*(self + 96) & 2) == 0)
  {
    [(PLPhotoDCFFileGroup *)self addExtensionsFromMetadataDirectory];
  }

  extensions = self->_extensions;

  return [(NSMutableSet *)extensions containsObject:@"WTH"];
}

- (BOOL)hasPrebakedPortraitScrubberThumbnails
{
  if ((*(self + 96) & 2) == 0)
  {
    [(PLPhotoDCFFileGroup *)self addExtensionsFromMetadataDirectory];
  }

  extensions = self->_extensions;

  return [(NSMutableSet *)extensions containsObject:@"THP"];
}

- (BOOL)hasPrebakedLandscapeScrubberThumbnails
{
  if ((*(self + 96) & 2) == 0)
  {
    [(PLPhotoDCFFileGroup *)self addExtensionsFromMetadataDirectory];
  }

  extensions = self->_extensions;

  return [(NSMutableSet *)extensions containsObject:@"THL"];
}

- (BOOL)hasPrebakedThumbnail
{
  if ((*(self + 96) & 2) == 0)
  {
    [(PLPhotoDCFFileGroup *)self addExtensionsFromMetadataDirectory];
  }

  extensions = self->_extensions;

  return [(NSMutableSet *)extensions containsObject:@"BTH"];
}

- (BOOL)hasThumbnail
{
  if ((*(self + 96) & 2) == 0)
  {
    [(PLPhotoDCFFileGroup *)self addExtensionsFromMetadataDirectory];
  }

  extensions = self->_extensions;

  return [(NSMutableSet *)extensions containsObject:@"THM"];
}

- (id)pathForVideoPreviewFile
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  videoPreviewFilename = [(PLPhotoDCFFileGroup *)self videoPreviewFilename];
  v5 = [pathForMetadata stringByAppendingPathComponent:videoPreviewFilename];

  return v5;
}

- (id)pathForLowResolutionFile
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  lowResolutionFilename = [(PLPhotoDCFFileGroup *)self lowResolutionFilename];
  v5 = [pathForMetadata stringByAppendingPathComponent:lowResolutionFilename];

  return v5;
}

- (id)pathForPrebakedWildcatThumbnailsFile
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  prebakedWildcatThumbnailsFilename = [(PLPhotoDCFFileGroup *)self prebakedWildcatThumbnailsFilename];
  v5 = [pathForMetadata stringByAppendingPathComponent:prebakedWildcatThumbnailsFilename];

  return v5;
}

- (id)pathForPrebakedPortraitScrubberThumbnails
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  prebakedPortraitScrubberThumbnailsFilename = [(PLPhotoDCFFileGroup *)self prebakedPortraitScrubberThumbnailsFilename];
  v5 = [pathForMetadata stringByAppendingPathComponent:prebakedPortraitScrubberThumbnailsFilename];

  return v5;
}

- (id)pathForPrebakedLandscapeScrubberThumbnails
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  prebakedLandscapeScrubberThumbnailsFilename = [(PLPhotoDCFFileGroup *)self prebakedLandscapeScrubberThumbnailsFilename];
  v5 = [pathForMetadata stringByAppendingPathComponent:prebakedLandscapeScrubberThumbnailsFilename];

  return v5;
}

- (id)pathForThumbnailFile
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  thumbnailFilename = [(PLPhotoDCFFileGroup *)self thumbnailFilename];
  v5 = [pathForMetadata stringByAppendingPathComponent:thumbnailFilename];

  return v5;
}

- (id)pathForTrimmedVideoFile
{
  v2 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:self->super._name];
  v3 = [v2 stringByAppendingPathExtension:@"TRIM.MOV"];

  return v3;
}

- (id)pathForVideoFile
{
  videoFileExtension = self->_videoFileExtension;
  if (!videoFileExtension)
  {
    videoFileExtension = @"MOV";
  }

  directoryPath = self->_directoryPath;
  name = self->super._name;
  v5 = videoFileExtension;
  v6 = [(NSString *)directoryPath stringByAppendingPathComponent:name];
  v7 = [v6 stringByAppendingPathExtension:v5];

  return v7;
}

- (id)pathForFullSizeImage
{
  v3 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:self->super._name];
  v4 = [v3 stringByAppendingPathExtension:self->_preferredExtension];

  return v4;
}

- (void)createMetadataDirectoryIfNecessary
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:pathForMetadata] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:pathForMetadata withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (id)pathForMetadataWithGroupName
{
  pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [pathForMetadata stringByAppendingPathComponent:self->super._name];

  return v4;
}

- (id)extensions
{
  if ((*(self + 96) & 2) == 0)
  {
    [(PLPhotoDCFFileGroup *)self addExtensionsFromMetadataDirectory];
  }

  extensions = self->_extensions;

  return extensions;
}

- (void)addExtensionsFromMetadataDirectory
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(self + 96) & 2) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    pathForMetadata = [(PLPhotoDCFFileGroup *)self pathForMetadata];
    v5 = [pathForMetadata stringByAppendingPathComponent:self->super._name];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = _MetadataFileExtensions();
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v5 stringByAppendingPathExtension:{v11, v13}];
          if ([defaultManager fileExistsAtPath:v12])
          {
            [(PLPhotoDCFFileGroup *)self addExtension:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    *(self + 96) |= 2u;
  }
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  date = [compareCopy date];
  v6 = [(NSDate *)self->_date compare:date];
  if (v6 == NSOrderedSame)
  {
    name = [(PLPhotoDCFObject *)self name];
    name2 = [compareCopy name];
    v6 = [name compare:name2];
  }

  return v6;
}

- (id)date
{
  date = self->_date;
  if (date)
  {
    distantPast = date;
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  return distantPast;
}

- (void)addExtension:(id)extension
{
  extensionCopy = extension;
  extensions = self->_extensions;
  v12 = extensionCopy;
  if (!extensions)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = self->_extensions;
    self->_extensions = v7;

    extensionCopy = v12;
    extensions = self->_extensions;
  }

  [(NSMutableSet *)extensions addObject:extensionCopy];
  pl_dispatch_once(&_InitializeFileExtensions_onceToken, &__block_literal_global_4176);
  if ([__imageFileExtensions containsObject:v12])
  {
    p_preferredExtension = &self->_preferredExtension;
LABEL_5:
    objc_storeStrong(p_preferredExtension, extension);
    goto LABEL_8;
  }

  p_preferredExtension = &self->_videoFileExtension;
  if (!*p_preferredExtension)
  {
    v10 = _MetadataFileExtensions();
    v11 = [v10 containsObject:v12];

    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_8:
}

- (BOOL)hasObsoleteFiles
{
  v17 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:self->super._name];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = _ObsoleteFileExtensions();
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 stringByAppendingPathExtension:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = [defaultManager fileExistsAtPath:v9];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)deleteObsoleteFiles
{
  v16 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:self->super._name];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = _ObsoleteFileExtensions();
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 stringByAppendingPathExtension:{*(*(&v11 + 1) + 8 * v9), v11}];
        [defaultManager removeItemAtPath:v10 error:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)isValid
{
  if (([(NSMutableSet *)self->_extensions containsObject:self->_preferredExtension]& 1) != 0)
  {
    return 1;
  }

  return [(PLPhotoDCFFileGroup *)self hasVideoFile];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pathForGroupWithoutExtension = [(PLPhotoDCFFileGroup *)self pathForGroupWithoutExtension];
      pathForGroupWithoutExtension2 = [(PLPhotoDCFFileGroup *)equalCopy pathForGroupWithoutExtension];
      v7 = [pathForGroupWithoutExtension isEqualToString:pathForGroupWithoutExtension2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  if ((*(self + 96) & 1) == 0)
  {
    pathForGroupWithoutExtension = [(PLPhotoDCFFileGroup *)self pathForGroupWithoutExtension];
    self->_hash = [pathForGroupWithoutExtension hash];

    *(self + 96) |= 1u;
  }

  return self->_hash;
}

- (id)imageSourceTypeHint
{
  if ([(NSString *)self->_preferredExtension isEqualToString:@"TIF"])
  {
    return @"public.tiff";
  }

  if ([(NSString *)self->_preferredExtension isEqualToString:@"PNG"])
  {
    return @"public.png";
  }

  if ([(NSString *)self->_preferredExtension isEqualToString:@"GIF"])
  {
    return @"com.compuserve.gif";
  }

  return @"public.jpeg";
}

- (PLPhotoDCFFileGroup)initWithName:(id)name number:(int)number directory:(id)directory
{
  v6 = *&number;
  directoryCopy = directory;
  v20.receiver = self;
  v20.super_class = PLPhotoDCFFileGroup;
  v10 = [(PLPhotoDCFObject *)&v20 initWithName:name number:v6];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_directory, directory);
    fullPath = [(PLPhotoDCFDirectory *)v11->_directory fullPath];
    directoryPath = v11->_directoryPath;
    v11->_directoryPath = fullPath;

    preferredExtension = v11->_preferredExtension;
    v11->_preferredExtension = @"JPG";

    pathForMetadata = [(PLPhotoDCFFileGroup *)v11 pathForMetadata];
    prebakedThumbnailFilename = [(PLPhotoDCFFileGroup *)v11 prebakedThumbnailFilename];
    v17 = [pathForMetadata stringByAppendingPathComponent:prebakedThumbnailFilename];
    prebakedThumbnailPath = v11->_prebakedThumbnailPath;
    v11->_prebakedThumbnailPath = v17;
  }

  return v11;
}

@end