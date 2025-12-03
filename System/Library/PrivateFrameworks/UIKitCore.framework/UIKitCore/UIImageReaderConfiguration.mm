@interface UIImageReaderConfiguration
- (BOOL)isEqual:(id)equal;
- (CGSize)preferredThumbnailSize;
- (UIImageReaderConfiguration)init;
- (double)_imageFromURL:(void *)l orData:(void *)data imageRequestOptions:;
- (double)_imageOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_asyncImageFromURL:(void *)l orData:(void *)data imageRequestOptions:(void *)options completion:;
- (void)_checkIsFileURL:(uint64_t)l;
- (void)_setSkipImageStats:(BOOL)stats;
- (void)setPixelsPerInch:(CGFloat)pixelsPerInch;
- (void)setPreferredThumbnailSize:(CGSize)preferredThumbnailSize;
- (void)setPreparesImagesForDisplay:(BOOL)preparesImagesForDisplay;
@end

@implementation UIImageReaderConfiguration

- (UIImageReaderConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UIImageReaderConfiguration;
  result = [(UIImageReaderConfiguration *)&v3 init];
  if (result)
  {
    *&result->_flags |= 1u;
  }

  return result;
}

- (void)setPreparesImagesForDisplay:(BOOL)preparesImagesForDisplay
{
  if (preparesImagesForDisplay)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

- (void)_setSkipImageStats:(BOOL)stats
{
  if (stats)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
}

- (void)setPreferredThumbnailSize:(CGSize)preferredThumbnailSize
{
  if (preferredThumbnailSize.width <= 0.0 || preferredThumbnailSize.height <= 0.0)
  {
    self->_preferredThumbnailSize = *MEMORY[0x1E695F060];
    v3 = *&self->_flags & 0xFB;
  }

  else
  {
    self->_preferredThumbnailSize = preferredThumbnailSize;
    v3 = *&self->_flags | 4;
  }

  *&self->_flags = v3;
}

- (void)setPixelsPerInch:(CGFloat)pixelsPerInch
{
  if (pixelsPerInch < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImageReader.m" lineNumber:80 description:{@"Invalid pixelsPerInch of %f", *&pixelsPerInch}];
  }

  self->_pixelsPerInch = pixelsPerInch;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  result = objc_opt_new();
  *(result + 2) = self->_flags;
  *(result + 24) = self->_preferredThumbnailSize;
  *(result + 2) = *&self->_pixelsPerInch;
  return result;
}

- (unint64_t)hash
{
  v2 = self->_preferredThumbnailSize.height == *(MEMORY[0x1E695F060] + 8) && self->_preferredThumbnailSize.width == *MEMORY[0x1E695F060];
  v3 = 8;
  if (v2)
  {
    v3 = 0;
  }

  return *&self->_flags & 3 | (4 * (self->_pixelsPerInch > 0.0)) | v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v8 = ((*&v6->_flags ^ *&self->_flags) & 0xB) == 0 && (self->_preferredThumbnailSize.width == v6->_preferredThumbnailSize.width ? (v7 = self->_preferredThumbnailSize.height == v6->_preferredThumbnailSize.height) : (v7 = 0), v7) && self->_pixelsPerInch == v6->_pixelsPerInch;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_imageOptions
{
  selfCopy = self;
  v17[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_16;
  }

  v2 = objc_opt_new();
  v3 = v2;
  v4 = MEMORY[0x1E695E118];
  if ((selfCopy[1] & 4) != 0)
  {
    v7 = MEMORY[0x1E695E118];
    [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696DFF0]];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696DFE8]];
    v8 = selfCopy[3];
    if (v8 < selfCopy[4])
    {
      v8 = selfCopy[4];
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v8];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696E100]];

    v5 = MEMORY[0x1E695E110];
    v6 = MEMORY[0x1E696E000];
  }

  else
  {
    if (selfCopy[1])
    {
LABEL_9:
      [v3 setObject:*MEMORY[0x1E696E028] forKeyedSubscript:*MEMORY[0x1E696E018]];
      v16 = *MEMORY[0x1E696D208];
      v17[0] = v4;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696E020]];

      v10 = *(selfCopy + 8);
      goto LABEL_10;
    }

    v5 = MEMORY[0x1E695E118];
    v6 = MEMORY[0x1E696E0E8];
  }

  [v3 setObject:v5 forKeyedSubscript:*v6];
  v10 = *(selfCopy + 8);
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v12 = MEMORY[0x1E695E110];
  if ((v10 & 2) != 0)
  {
    v13 = MEMORY[0x1E695E118];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696E0A8]];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696E0B8]];
    v10 = *(selfCopy + 8);
  }

  if ((v10 & 8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v4;
  }

  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696D1C0]];
  selfCopy = [v3 copy];

LABEL_16:

  return selfCopy;
}

- (void)_checkIsFileURL:(uint64_t)l
{
  v3 = a2;
  v4 = v3;
  if (l)
  {
    if (v3)
    {
      v8 = v3;
      isFileURL = [v3 isFileURL];
      v4 = v8;
      if ((isFileURL & 1) == 0)
      {
        isFileReferenceURL = [v8 isFileReferenceURL];
        v4 = v8;
        if ((isFileReferenceURL & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__checkIsFileURL_ object:l file:@"UIImageReader.m" lineNumber:148 description:{@"Client Error: URL '%@' does not refer to a file", v8}];

          v4 = v8;
        }
      }
    }
  }
}

- (double)_imageFromURL:(void *)l orData:(void *)data imageRequestOptions:
{
  v31[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  lCopy = l;
  dataCopy = data;
  if (self)
  {
    v10 = v7;
    v11 = *MEMORY[0x1E696E0E8];
    v30[0] = @"kCGImageSourceSkipCRC";
    v30[1] = v11;
    v31[0] = MEMORY[0x1E695E110];
    v31[1] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    if (lCopy)
    {
      v13 = CGImageSourceCreateWithData(lCopy, v12);
    }

    else
    {
      if (!v10)
      {
        goto LABEL_11;
      }

      v13 = CGImageSourceCreateWithURL(v10, v12);
    }

    v14 = v13;
    if (v13)
    {
      if (CGImageSourceGetCount(v13))
      {

        if (self[3] * self[4] == 0.0)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, dataCopy);
        }

        else
        {
          ImageAtIndex = CGImageSourceCreateThumbnailAtIndex(v14, 0, dataCopy);
        }

        v16 = ImageAtIndex;
        if (ImageAtIndex)
        {
          v17 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
          v18 = [(__CFDictionary *)v17 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
          v19 = v18;
          if (v18)
          {
            integerValue = [v18 integerValue];
            if ((integerValue - 1) >= 8)
            {
              v21 = 0;
            }

            else
            {
              v21 = (0x27365140u >> (4 * integerValue - 4)) & 7;
            }

            v29 = v21;
          }

          else
          {
            v29 = 0;
          }

          v22 = 1.0;
          if (self[2] <= 0.0)
          {
            goto LABEL_27;
          }

          v23 = [(__CFDictionary *)v17 objectForKeyedSubscript:*MEMORY[0x1E696D888]];
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v25 = [(__CFDictionary *)v17 objectForKeyedSubscript:*MEMORY[0x1E696DE00]];
            v24 = [v25 objectForKeyedSubscript:*MEMORY[0x1E696DE08]];

            if (!v24)
            {
LABEL_27:
              v27 = [[_UIImageCGImageContent alloc] initWithCGImageSource:v14 CGImage:v16 scale:v22];
              CFRelease(v14);
              CFRelease(v16);
              self = [[UIImage alloc] _initWithContent:v27 orientation:v29];

              goto LABEL_28;
            }
          }

          [v24 doubleValue];
          v22 = fmax(round(v26 / self[2]), 1.0);

          goto LABEL_27;
        }

        CFRelease(v14);
LABEL_12:
        self = 0;
        goto LABEL_28;
      }

      CFRelease(v14);
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_28:

  return self;
}

- (void)_asyncImageFromURL:(void *)l orData:(void *)data imageRequestOptions:(void *)options completion:
{
  v9 = a2;
  lCopy = l;
  dataCopy = data;
  optionsCopy = options;
  if (self)
  {
    if (qword_1ED4A0A70 != -1)
    {
      dispatch_once(&qword_1ED4A0A70, &__block_literal_global_538);
    }

    v13 = _MergedGlobals_1290;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__UIImageReaderConfiguration__asyncImageFromURL_orData_imageRequestOptions_completion___block_invoke_2;
    block[3] = &unk_1E7103108;
    block[4] = self;
    v15 = v9;
    v16 = lCopy;
    v17 = dataCopy;
    v18 = optionsCopy;
    dispatch_async(v13, block);
  }
}

void __87__UIImageReaderConfiguration__asyncImageFromURL_orData_imageRequestOptions_completion___block_invoke()
{
  v0 = dispatch_workloop_create("com.apple.UIKit.UIImageReader-async-image-loading");
  v1 = _MergedGlobals_1290;
  _MergedGlobals_1290 = v0;
}

void __87__UIImageReaderConfiguration__asyncImageFromURL_orData_imageRequestOptions_completion___block_invoke_2(uint64_t a1)
{
  v2 = [(UIImageReaderConfiguration *)*(a1 + 32) _imageFromURL:*(a1 + 48) orData:*(a1 + 56) imageRequestOptions:?];
  v3 = _UIImageDecompressionCompletionQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__UIImageReaderConfiguration__asyncImageFromURL_orData_imageRequestOptions_completion___block_invoke_3;
  v6[3] = &unk_1E70F4A50;
  v4 = *(a1 + 64);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (CGSize)preferredThumbnailSize
{
  width = self->_preferredThumbnailSize.width;
  height = self->_preferredThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end