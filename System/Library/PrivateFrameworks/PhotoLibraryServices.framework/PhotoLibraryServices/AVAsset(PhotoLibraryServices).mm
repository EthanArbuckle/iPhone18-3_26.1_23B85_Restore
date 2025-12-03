@interface AVAsset(PhotoLibraryServices)
- (id)plVideoCodecFourCharCodeString;
- (id)plVideoCodecName;
@end

@implementation AVAsset(PhotoLibraryServices)

- (id)plVideoCodecFourCharCodeString
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = v16 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if ([v6 isEnabled])
        {
          formatDescriptions = [v6 formatDescriptions];
          if ([formatDescriptions count])
          {
            firstObject = [formatDescriptions firstObject];

            MediaSubType = CMFormatDescriptionGetMediaSubType(firstObject);
            v12[0] = HIBYTE(MediaSubType);
            v12[1] = BYTE2(MediaSubType);
            v12[2] = BYTE1(MediaSubType);
            v12[3] = MediaSubType;
            v12[4] = 0;
            v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v12 encoding:30];
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)plVideoCodecName
{
  v15 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isEnabled])
        {
          formatDescriptions = [v6 formatDescriptions];
          if ([formatDescriptions count])
          {
            firstObject = [formatDescriptions firstObject];

            CMFormatDescriptionGetMediaType(firstObject);
            CMFormatDescriptionGetMediaSubType(firstObject);
            MTCopyStringsForMediaTypeAndSubType();
          }

          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return 0;
}

@end