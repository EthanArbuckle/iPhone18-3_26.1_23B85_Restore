@interface PLPhotoDCFFileGroup
- (BOOL)hasObsoleteFiles;
- (BOOL)hasPrebakedLandscapeScrubberThumbnails;
- (BOOL)hasPrebakedPortraitScrubberThumbnails;
- (BOOL)hasPrebakedThumbnail;
- (BOOL)hasPrebakedWildcatThumbnails;
- (BOOL)hasThumbnail;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (PLPhotoDCFFileGroup)initWithName:(id)a3 number:(int)a4 directory:(id)a5;
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
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)addExtension:(id)a3;
- (void)addExtensionsFromMetadataDirectory;
- (void)createMetadataDirectoryIfNecessary;
- (void)deleteFiles;
- (void)deleteObsoleteFiles;
- (void)setWriteIsPending:(BOOL)a3;
@end

@implementation PLPhotoDCFFileGroup

- (void)setWriteIsPending:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLPhotoDCFFileGroup *)self pathForFullSizeImage];
  [v3 removeItemAtPath:v4 error:0];

  v5 = [(PLPhotoDCFFileGroup *)self pathForVideoFile];
  [v3 removeItemAtPath:v5 error:0];

  v6 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v7 = [v6 stringByAppendingPathComponent:self->super._name];

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
        [v3 removeItemAtPath:v13 error:0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v14 = [(PLPhotoDCFFileGroup *)self pathForGroupWithoutExtension];
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

        v20 = [v14 stringByAppendingPathExtension:{*(*(&v21 + 1) + 8 * v19), v21}];
        [v3 removeItemAtPath:v20 error:0];

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
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [(PLPhotoDCFFileGroup *)self videoPreviewFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)pathForLowResolutionFile
{
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [(PLPhotoDCFFileGroup *)self lowResolutionFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)pathForPrebakedWildcatThumbnailsFile
{
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [(PLPhotoDCFFileGroup *)self prebakedWildcatThumbnailsFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)pathForPrebakedPortraitScrubberThumbnails
{
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [(PLPhotoDCFFileGroup *)self prebakedPortraitScrubberThumbnailsFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)pathForPrebakedLandscapeScrubberThumbnails
{
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [(PLPhotoDCFFileGroup *)self prebakedLandscapeScrubberThumbnailsFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)pathForThumbnailFile
{
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [(PLPhotoDCFFileGroup *)self thumbnailFilename];
  v5 = [v3 stringByAppendingPathComponent:v4];

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
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:v3] & 1) == 0)
  {
    [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (id)pathForMetadataWithGroupName
{
  v3 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
  v4 = [v3 stringByAppendingPathComponent:self->super._name];

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
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(PLPhotoDCFFileGroup *)self pathForMetadata];
    v5 = [v4 stringByAppendingPathComponent:self->super._name];

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
          if ([v3 fileExistsAtPath:v12])
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 date];
  v6 = [(NSDate *)self->_date compare:v5];
  if (v6 == NSOrderedSame)
  {
    v7 = [(PLPhotoDCFObject *)self name];
    v8 = [v4 name];
    v6 = [v7 compare:v8];
  }

  return v6;
}

- (id)date
{
  date = self->_date;
  if (date)
  {
    v3 = date;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] distantPast];
  }

  return v3;
}

- (void)addExtension:(id)a3
{
  v5 = a3;
  extensions = self->_extensions;
  v12 = v5;
  if (!extensions)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = self->_extensions;
    self->_extensions = v7;

    v5 = v12;
    extensions = self->_extensions;
  }

  [(NSMutableSet *)extensions addObject:v5];
  pl_dispatch_once(&_InitializeFileExtensions_onceToken, &__block_literal_global_4176);
  if ([__imageFileExtensions containsObject:v12])
  {
    p_preferredExtension = &self->_preferredExtension;
LABEL_5:
    objc_storeStrong(p_preferredExtension, a3);
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
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
        v10 = [v3 fileExistsAtPath:v9];

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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
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
        [v3 removeItemAtPath:v10 error:0];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PLPhotoDCFFileGroup *)self pathForGroupWithoutExtension];
      v6 = [(PLPhotoDCFFileGroup *)v4 pathForGroupWithoutExtension];
      v7 = [v5 isEqualToString:v6];
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
    v3 = [(PLPhotoDCFFileGroup *)self pathForGroupWithoutExtension];
    self->_hash = [v3 hash];

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

- (PLPhotoDCFFileGroup)initWithName:(id)a3 number:(int)a4 directory:(id)a5
{
  v6 = *&a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = PLPhotoDCFFileGroup;
  v10 = [(PLPhotoDCFObject *)&v20 initWithName:a3 number:v6];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_directory, a5);
    v12 = [(PLPhotoDCFDirectory *)v11->_directory fullPath];
    directoryPath = v11->_directoryPath;
    v11->_directoryPath = v12;

    preferredExtension = v11->_preferredExtension;
    v11->_preferredExtension = @"JPG";

    v15 = [(PLPhotoDCFFileGroup *)v11 pathForMetadata];
    v16 = [(PLPhotoDCFFileGroup *)v11 prebakedThumbnailFilename];
    v17 = [v15 stringByAppendingPathComponent:v16];
    prebakedThumbnailPath = v11->_prebakedThumbnailPath;
    v11->_prebakedThumbnailPath = v17;
  }

  return v11;
}

@end