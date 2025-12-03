@interface SBFCARendererImageRepresentation
+ (id)representationWithFileURL:(id)l imageOrientation:(int64_t)orientation;
+ (id)representationWithIOSurface:(id)surface imageOrientation:(int64_t)orientation;
+ (id)representationWithImage:(id)image;
+ (id)representationWithImageData:(id)data imageOrientation:(int64_t)orientation;
- (CGImage)createCGImageReturningScale:(double *)scale;
- (SBFCARendererImageRepresentation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBFCARendererImageRepresentation

+ (id)representationWithImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    ioSurface = [(UIImage *)imageCopy ioSurface];
    if (ioSurface)
    {
      v7 = [self representationWithIOSurface:ioSurface imageOrientation:{-[UIImage imageOrientation](v5, "imageOrientation")}];
    }

    else
    {
      [(UIImage *)v5 CGImage];
      v8 = CGImageCopySourceData();
      v9 = v8;
      if (v8 && [v8 length])
      {
        v7 = [self representationWithImageData:v9 imageOrientation:{-[UIImage imageOrientation](v5, "imageOrientation")}];
      }

      else
      {
        v10 = UIImageJPEGRepresentation(v5, 100.0);
        if (v10)
        {
          v7 = [self representationWithImageData:v10 imageOrientation:{-[UIImage imageOrientation](v5, "imageOrientation")}];
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)representationWithFileURL:(id)l imageOrientation:(int64_t)orientation
{
  lCopy = l;
  v7 = objc_alloc_init(self);
  v8 = v7;
  if (v7)
  {
    v7[1] = 3;
    v9 = [lCopy copy];
    v10 = v8[2];
    v8[2] = v9;

    v8[4] = orientation;
  }

  return v8;
}

+ (id)representationWithImageData:(id)data imageOrientation:(int64_t)orientation
{
  dataCopy = data;
  v7 = objc_alloc_init(self);
  v8 = v7;
  if (v7)
  {
    v7[1] = 1;
    v9 = [dataCopy copy];
    v10 = v8[3];
    v8[3] = v9;

    v8[4] = orientation;
  }

  return v8;
}

+ (id)representationWithIOSurface:(id)surface imageOrientation:(int64_t)orientation
{
  surfaceCopy = surface;
  v8 = objc_alloc_init(self);
  v9 = v8;
  if (v8)
  {
    *(v8 + 1) = 2;
    objc_storeStrong(v8 + 5, surface);
    v9[4] = orientation;
  }

  return v9;
}

- (SBFCARendererImageRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SBFCARendererImageRepresentation;
  v5 = [(SBFCARendererImageRepresentation *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"representationType"];
    v5->_representationType = v6;
    switch(v6)
    {
      case 3:
        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
        fileURL = v5->_fileURL;
        v5->_fileURL = v11;

        if (v5->_fileURL)
        {
          goto LABEL_8;
        }

        break;
      case 2:
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"surface"];
        surface = v5->_surface;
        v5->_surface = v9;

        if (v5->_surface)
        {
LABEL_8:
          v5->_imageOrientation = [coderCopy decodeIntegerForKey:@"orientation"];
          goto LABEL_11;
        }

        break;
      case 1:
        v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
        imageData = v5->_imageData;
        v5->_imageData = v7;

        if (!v5->_imageData)
        {
          break;
        }

        goto LABEL_8;
      default:
        break;
    }

    v5->_representationType = 0;
  }

LABEL_11:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_representationType forKey:@"representationType"];
  [coderCopy encodeInteger:self->_imageOrientation forKey:@"orientation"];
  v4 = self->_representationType - 1;
  if (v4 <= 2)
  {
    [coderCopy encodeObject:*(&self->super.isa + qword_1BEAD5BB0[v4]) forKey:off_1E80807F0[v4]];
  }
}

- (CGImage)createCGImageReturningScale:(double *)scale
{
  representationType = self->_representationType;
  switch(representationType)
  {
    case 3:
      p_fileURL = &self->_fileURL;
      fileURL = self->_fileURL;
      if (fileURL)
      {
        [(NSURL *)fileURL path];
        MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
        if (!MappedDataFromPath)
        {
          v13 = 0;
        }

        v14 = 0;
        v15 = v14;
        if (MappedDataFromPath && !v14)
        {
          goto LABEL_22;
        }

        v16 = SBLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(SBFCARendererImageRepresentation *)p_fileURL createCGImageReturningScale:v15, v16];
        }

        if (MappedDataFromPath)
        {
LABEL_22:
          buildCGImage = _SBFCARendererCGImageForImageData(MappedDataFromPath);
        }

        else
        {
          buildCGImage = 0;
        }

        if (scale)
        {
          goto LABEL_14;
        }

        return buildCGImage;
      }

      break;
    case 2:
      surface = self->_surface;
      if (surface)
      {
        cGImageBuilder = [(IOSurface *)surface CGImageBuilder];
        buildCGImage = [cGImageBuilder buildCGImage];

        if (!scale)
        {
          return buildCGImage;
        }

        goto LABEL_14;
      }

      break;
    case 1:
      imageData = self->_imageData;
      if (imageData)
      {
        buildCGImage = _SBFCARendererCGImageForImageData(imageData);
        if (!scale)
        {
          return buildCGImage;
        }

        goto LABEL_14;
      }

      break;
  }

  buildCGImage = 0;
  if (scale)
  {
LABEL_14:
    *scale = 1.0;
  }

  return buildCGImage;
}

- (void)createCGImageReturningScale:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BEA11000, log, OS_LOG_TYPE_ERROR, "Failed to read file URL at path %{public}@ with error: %{public}@", &v4, 0x16u);
}

@end