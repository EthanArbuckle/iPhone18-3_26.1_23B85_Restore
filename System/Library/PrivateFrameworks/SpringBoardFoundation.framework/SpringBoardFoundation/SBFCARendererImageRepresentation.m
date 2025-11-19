@interface SBFCARendererImageRepresentation
+ (id)representationWithFileURL:(id)a3 imageOrientation:(int64_t)a4;
+ (id)representationWithIOSurface:(id)a3 imageOrientation:(int64_t)a4;
+ (id)representationWithImage:(id)a3;
+ (id)representationWithImageData:(id)a3 imageOrientation:(int64_t)a4;
- (CGImage)createCGImageReturningScale:(double *)a3;
- (SBFCARendererImageRepresentation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBFCARendererImageRepresentation

+ (id)representationWithImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(UIImage *)v4 ioSurface];
    if (v6)
    {
      v7 = [a1 representationWithIOSurface:v6 imageOrientation:{-[UIImage imageOrientation](v5, "imageOrientation")}];
    }

    else
    {
      [(UIImage *)v5 CGImage];
      v8 = CGImageCopySourceData();
      v9 = v8;
      if (v8 && [v8 length])
      {
        v7 = [a1 representationWithImageData:v9 imageOrientation:{-[UIImage imageOrientation](v5, "imageOrientation")}];
      }

      else
      {
        v10 = UIImageJPEGRepresentation(v5, 100.0);
        if (v10)
        {
          v7 = [a1 representationWithImageData:v10 imageOrientation:{-[UIImage imageOrientation](v5, "imageOrientation")}];
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

+ (id)representationWithFileURL:(id)a3 imageOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7;
  if (v7)
  {
    v7[1] = 3;
    v9 = [v6 copy];
    v10 = v8[2];
    v8[2] = v9;

    v8[4] = a4;
  }

  return v8;
}

+ (id)representationWithImageData:(id)a3 imageOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7;
  if (v7)
  {
    v7[1] = 1;
    v9 = [v6 copy];
    v10 = v8[3];
    v8[3] = v9;

    v8[4] = a4;
  }

  return v8;
}

+ (id)representationWithIOSurface:(id)a3 imageOrientation:(int64_t)a4
{
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = v8;
  if (v8)
  {
    *(v8 + 1) = 2;
    objc_storeStrong(v8 + 5, a3);
    v9[4] = a4;
  }

  return v9;
}

- (SBFCARendererImageRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBFCARendererImageRepresentation;
  v5 = [(SBFCARendererImageRepresentation *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"representationType"];
    v5->_representationType = v6;
    switch(v6)
    {
      case 3:
        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
        fileURL = v5->_fileURL;
        v5->_fileURL = v11;

        if (v5->_fileURL)
        {
          goto LABEL_8;
        }

        break;
      case 2:
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"surface"];
        surface = v5->_surface;
        v5->_surface = v9;

        if (v5->_surface)
        {
LABEL_8:
          v5->_imageOrientation = [v4 decodeIntegerForKey:@"orientation"];
          goto LABEL_11;
        }

        break;
      case 1:
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_representationType forKey:@"representationType"];
  [v5 encodeInteger:self->_imageOrientation forKey:@"orientation"];
  v4 = self->_representationType - 1;
  if (v4 <= 2)
  {
    [v5 encodeObject:*(&self->super.isa + qword_1BEAD5BB0[v4]) forKey:off_1E80807F0[v4]];
  }
}

- (CGImage)createCGImageReturningScale:(double *)a3
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
          v6 = _SBFCARendererCGImageForImageData(MappedDataFromPath);
        }

        else
        {
          v6 = 0;
        }

        if (a3)
        {
          goto LABEL_14;
        }

        return v6;
      }

      break;
    case 2:
      surface = self->_surface;
      if (surface)
      {
        v8 = [(IOSurface *)surface CGImageBuilder];
        v6 = [v8 buildCGImage];

        if (!a3)
        {
          return v6;
        }

        goto LABEL_14;
      }

      break;
    case 1:
      imageData = self->_imageData;
      if (imageData)
      {
        v6 = _SBFCARendererCGImageForImageData(imageData);
        if (!a3)
        {
          return v6;
        }

        goto LABEL_14;
      }

      break;
  }

  v6 = 0;
  if (a3)
  {
LABEL_14:
    *a3 = 1.0;
  }

  return v6;
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