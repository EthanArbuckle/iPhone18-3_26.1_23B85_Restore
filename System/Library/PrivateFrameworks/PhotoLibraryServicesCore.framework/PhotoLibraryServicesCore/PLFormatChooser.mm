@interface PLFormatChooser
+ (CGSize)_desiredImageSizeForRequestedViewSizeInPixels:(CGSize)pixels;
+ (id)defaultFormatChooser;
- (CGSize)posterThumbnailSize;
- (PLFormatChooser)initWithDeviceConfiguration:(id)configuration;
- (id)_derivativeFormatThatFitsSize:(CGSize)size;
@end

@implementation PLFormatChooser

+ (id)defaultFormatChooser
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PLFormatChooser_defaultFormatChooser__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultFormatChooser_onceToken != -1)
  {
    dispatch_once(&defaultFormatChooser_onceToken, block);
  }

  v2 = defaultFormatChooser_defaultChooser;

  return v2;
}

void __39__PLFormatChooser_defaultFormatChooser__block_invoke(uint64_t a1)
{
  v4 = +[PLDeviceConfiguration defaultDeviceConfiguration];
  v2 = [objc_alloc(*(a1 + 32)) initWithDeviceConfiguration:v4];
  v3 = defaultFormatChooser_defaultChooser;
  defaultFormatChooser_defaultChooser = v2;
}

- (CGSize)posterThumbnailSize
{
  [(PLImageFormat *)self->_posterThumbnailFormat size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_derivativeFormatThatFitsSize:(CGSize)size
{
  v19 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _desiredImageSizeForRequestedViewSizeInPixels:{size.width, size.height}];
  v5 = v4;
  v7 = v6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_supportedDerivativeFormats;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 _isAcceptableForDesiredImageSize:{v5, v7, v14}])
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (PLFormatChooser)initWithDeviceConfiguration:(id)configuration
{
  v62 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v60.receiver = self;
  v60.super_class = PLFormatChooser;
  v7 = [(PLFormatChooser *)&v60 init];
  if (v7)
  {
    obj = configuration;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [PLThumbnailManagerCore supportedThumbnailFormatIDsForDeviceConfiguration:configurationCopy];
    [v9 addObjectsFromArray:v10];

    _suppportedFullSizeFormatIDs = [objc_opt_class() _suppportedFullSizeFormatIDs];
    [v9 addObjectsFromArray:_suppportedFullSizeFormatIDs];

    p_indexSheetUnbakedFormat = &v7->_indexSheetUnbakedFormat;
    indexSheetUnbakedFormat = v7->_indexSheetUnbakedFormat;
    v7->_indexSheetUnbakedFormat = 0;

    v53 = v7;
    p_largestUncroppedNonJPEGThumbnailFormat = &v7->_largestUncroppedNonJPEGThumbnailFormat;
    largestUncroppedNonJPEGThumbnailFormat = v7->_largestUncroppedNonJPEGThumbnailFormat;
    v7->_largestUncroppedNonJPEGThumbnailFormat = 0;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = +[PLImageFormat formatWithID:](PLImageFormat, "formatWithID:", [*(*(&v56 + 1) + 8 * i) unsignedIntegerValue]);
          if (v21)
          {
            [v8 insertObject:v21 atIndex:{objc_msgSend(v8, "indexOfObject:inSortedRange:options:usingComparator:", v21, 0, objc_msgSend(v8, "count"), 1024, &__block_literal_global_3457)}];
            if ([v21 isSquare] && (!*p_indexSheetUnbakedFormat || objc_msgSend(v21, "compare:") == 1))
            {
              objc_storeStrong(p_indexSheetUnbakedFormat, v21);
            }

            if (([v21 isCropped] & 1) == 0 && objc_msgSend(v21, "isTable") && (!*p_largestUncroppedNonJPEGThumbnailFormat || objc_msgSend(v21, "compare:") == 1))
            {
              objc_storeStrong(p_largestUncroppedNonJPEGThumbnailFormat, v21);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v18);
    }

    v22 = [v8 copy];
    supportedDerivativeFormats = v53->_supportedDerivativeFormats;
    v53->_supportedDerivativeFormats = v22;

    objc_storeStrong(&v53->_deviceConfiguration, obj);
    [configurationCopy logicalScreenSize];
    v24 = [(PLFormatChooser *)v53 _derivativeFormatThatFitsSize:?];
    _suppportedFullSizeFormatIDs2 = [objc_opt_class() _suppportedFullSizeFormatIDs];
    lastObject = [_suppportedFullSizeFormatIDs2 lastObject];
    integerValue = [lastObject integerValue];

    if (!integerValue)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v53 file:@"PLFormatChooser.m" lineNumber:102 description:@"can't determine largest supported format."];
    }

    v28 = [PLImageFormat formatWithID:integerValue];
    if (!v24 || [(PLImageFormat *)v24 compare:v28]== 1)
    {
      v29 = v28;

      v24 = v29;
    }

    _suppportedFullSizeFormatIDs3 = [objc_opt_class() _suppportedFullSizeFormatIDs];
    firstObject = [_suppportedFullSizeFormatIDs3 firstObject];
    integerValue2 = [firstObject integerValue];

    if (!integerValue2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v53 file:@"PLFormatChooser.m" lineNumber:112 description:@"can't determine smallest supported format."];
    }

    v33 = [PLImageFormat formatWithID:integerValue2];
    if ([(PLImageFormat *)v24 compare:v33]== -1)
    {
      v34 = v33;

      v24 = v34;
    }

    fullScreenFormatForCurrentDevice = v53->_fullScreenFormatForCurrentDevice;
    v53->_fullScreenFormatForCurrentDevice = v24;
    v36 = v24;

    v7 = v53;
    masterThumbnailFormat = v53->_masterThumbnailFormat;
    v53->_masterThumbnailFormat = 0;

    v38 = v53->_supportedDerivativeFormats;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __47__PLFormatChooser_initWithDeviceConfiguration___block_invoke_2;
    v54[3] = &unk_1E7930258;
    v39 = v53;
    v55 = v39;
    [(NSArray *)v38 enumerateObjectsWithOptions:2 usingBlock:v54];
    if ([(PLDeviceConfiguration *)v53->_deviceConfiguration isRetina])
    {
      v40 = 3143;
    }

    else
    {
      v40 = 3034;
    }

    v41 = [PLImageFormat formatWithID:v40];
    posterThumbnailFormat = v39->_posterThumbnailFormat;
    v39->_posterThumbnailFormat = v41;

    if ([(PLDeviceConfiguration *)v53->_deviceConfiguration isRetina])
    {
      v43 = 8102;
    }

    else
    {
      v43 = 8002;
    }

    v44 = [PLImageFormat formatWithID:v43];
    portraitScrubberThumbnailFormat = v39->_portraitScrubberThumbnailFormat;
    v39->_portraitScrubberThumbnailFormat = v44;

    if ([(PLDeviceConfiguration *)v53->_deviceConfiguration isRetina])
    {
      v46 = 8101;
    }

    else
    {
      v46 = 8001;
    }

    v47 = [PLImageFormat formatWithID:v46];
    landscapeScrubberThumbnailFormat = v39->_landscapeScrubberThumbnailFormat;
    v39->_landscapeScrubberThumbnailFormat = v47;
  }

  return v7;
}

void __47__PLFormatChooser_initWithDeviceConfiguration___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isThumbnail] && (objc_msgSend(v7, "isTable") & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 56), a2);
    *a4 = 1;
  }
}

+ (CGSize)_desiredImageSizeForRequestedViewSizeInPixels:(CGSize)pixels
{
  if (pixels.width / pixels.height > 1.0 && pixels.height > 0.0)
  {
    pixels.width = pixels.height;
  }

  v4 = round(pixels.width);
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

@end