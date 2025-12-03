@interface PUICodableImage
+ (BOOL)bs_encodeRepresentation:(int64_t)representation value:(id)value withCoder:(id)coder;
+ (CGImage)createCGImageFromCPBitmapData:(id)data error:(id *)error;
+ (CGImage)createCGImageFromData:(id)data error:(id *)error;
+ (CGImage)createCGImageFromURL:(id)l error:(id *)error;
+ (id)dataRepresentationForImage:(CGImage *)image error:(id *)error;
+ (id)makeWithOther:(id)other;
+ (void)encodeRepresentation:(int64_t)representation value:(id)value withCoder:(id)coder;
- (BOOL)isEqualRepresentation:(id)representation;
- (BOOL)refersToIdenticalImageFrom:(id)from;
- (CGImage)CGImage;
- (CGImage)buildCGImageWithError:(id *)error;
- (PUICodableImage)initWithBSXPCCoder:(id)coder;
- (PUICodableImage)initWithCGImage:(CGImage *)image scale:(double)scale error:(id *)error;
- (PUICodableImage)initWithCoder:(id)coder;
- (PUICodableImage)initWithIOSurface:(id)surface scale:(double)scale error:(id *)error;
- (PUICodableImage)initWithUIImage:(id)image error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromSourceData:(id)data scale:(double)scale error:(id *)error;
- (id)initFromURL:(id)l scale:(double)scale error:(id *)error;
- (id)surfaceCreatingIfNecessary:(BOOL)necessary;
- (id)wrappedIOSurface;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUICodableImage

- (PUICodableImage)initWithIOSurface:(id)surface scale:(double)scale error:(id *)error
{
  surfaceCopy = surface;
  v9 = [(PUICodableImage *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_representation = 2;
    objc_storeStrong(&v9->_surface, surface);
    v10->_scale = scale;
  }

  return v10;
}

+ (id)makeWithOther:(id)other
{
  otherCopy = other;
  v4 = objc_alloc_init(PUICodableImage);
  v4->_representation = *(otherCopy + 1);
  objc_storeStrong(&v4->_surface, *(otherCopy + 2));
  objc_storeStrong(&v4->_url, *(otherCopy + 3));
  v5 = *(otherCopy + 4);
  if (v5)
  {
    v5 = CGImageRetain(v5);
  }

  v4->_sourceImage = v5;
  v6 = *(otherCopy + 6);
  if (v6)
  {
    v6 = CGImageRetain(v6);
  }

  v4->_cachedImage = v6;
  v7 = [*(otherCopy + 5) copy];
  bitmapSourceData = v4->_bitmapSourceData;
  v4->_bitmapSourceData = v7;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PUICodableImage allocWithZone:?]];
  v4->_representation = self->_representation;
  objc_storeStrong(&v4->_surface, self->_surface);
  objc_storeStrong(&v4->_url, self->_url);
  sourceImage = self->_sourceImage;
  if (sourceImage)
  {
    sourceImage = CGImageRetain(sourceImage);
  }

  v4->_sourceImage = sourceImage;
  cachedImage = self->_cachedImage;
  if (cachedImage)
  {
    cachedImage = CGImageRetain(cachedImage);
  }

  v4->_cachedImage = cachedImage;
  v7 = [(NSData *)self->_bitmapSourceData copy];
  bitmapSourceData = v4->_bitmapSourceData;
  v4->_bitmapSourceData = v7;

  return v4;
}

- (id)initFromSourceData:(id)data scale:(double)scale error:(id *)error
{
  dataCopy = data;
  selfCopy = [PUICodableImage createCGImageFromData:dataCopy error:error];
  if (selfCopy)
  {
    if (CGImageGetImageSource())
    {
      v10 = [(PUICodableImage *)self initWithCGImage:selfCopy scale:error error:scale];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = PUICodableImage;
      v11 = [(PUICodableImage *)&v15 init];
      v10 = v11;
      if (v11)
      {
        v11->_cachedImage = selfCopy;
        v11->_representation = 1;
        v12 = [dataCopy copy];
        bitmapSourceData = v10->_bitmapSourceData;
        v10->_bitmapSourceData = v12;

        v10->_scale = scale;
        goto LABEL_7;
      }
    }

    CGImageRelease(selfCopy);
LABEL_7:
    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initFromURL:(id)l scale:(double)scale error:(id *)error
{
  lCopy = l;
  v9 = [(PUICodableImage *)self init];
  v10 = v9;
  if (v9 && (v9->_representation = 3, v11 = [lCopy copy], url = v10->_url, v10->_url = v11, url, v10->_scale = scale, v13 = objc_msgSend(objc_opt_class(), "createCGImageFromURL:error:", v10->_url, error), (v10->_cachedImage = v13) == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

- (PUICodableImage)initWithCGImage:(CGImage *)image scale:(double)scale error:(id *)error
{
  v7 = [(PUICodableImage *)self init:image];
  v8 = v7;
  if (v7)
  {
    v7->_representation = 0;
    v7->_sourceImage = CGImageRetain(image);
    v8->_scale = scale;
  }

  return v8;
}

- (PUICodableImage)initWithUIImage:(id)image error:(id *)error
{
  imageCopy = image;
  ioSurface = [imageCopy ioSurface];
  if (ioSurface)
  {
    [imageCopy scale];
    v8 = [(PUICodableImage *)self initWithIOSurface:ioSurface scale:error error:?];
  }

  else
  {
    CGImageRepresentation = [imageCopy CGImage];
    if (!CGImageRepresentation)
    {
      CGImageRepresentation = _UIImageGetCGImageRepresentation();
      if (!CGImageRepresentation)
      {
        selfCopy = 0;
        goto LABEL_7;
      }
    }

    v10 = CGImageRepresentation;
    [imageCopy scale];
    v8 = [(PUICodableImage *)self initWithCGImage:v10 scale:error error:?];
  }

  self = v8;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (CGImage)CGImage
{
  result = self->_cachedImage;
  if (!result)
  {
    result = self->_sourceImage;
    if (!result)
    {
      result = [(PUICodableImage *)self buildCGImageWithError:0];
      self->_cachedImage = result;
    }
  }

  return result;
}

- (CGImage)buildCGImageWithError:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (self->_surface)
  {
    v5 = CGImageCreateFromIOSurface();
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A278];
    v17[0] = *MEMORY[0x1E696A580];
    v17[1] = v9;
    v18[0] = @"IOSurface failed to be made into a CGImage.";
    v18[1] = @"Check os_log for errors from ImageIO.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v7 = [v8 errorWithDomain:@"com.apple.PosterUIFoundation.RendererService" code:1 userInfo:v10];
  }

  else
  {
    v7 = 0;
  }

  if (!self->_url || (v11 = objc_opt_class(), url = self->_url, v16 = 0, v6 = [v11 createCGImageFromURL:url error:&v16], v13 = v16, v7, v7 = v13, !v6))
  {
    if (error)
    {
      v14 = v7;
      v6 = 0;
      *error = v7;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_11:

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->_sourceImage);
  self->_sourceImage = 0;
  CGImageRelease(self->_cachedImage);
  self->_cachedImage = 0;
  v3.receiver = self;
  v3.super_class = PUICodableImage;
  [(PUICodableImage *)&v3 dealloc];
}

- (id)surfaceCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  wrappedIOSurface = [(PUICodableImage *)self wrappedIOSurface];
  if (necessaryCopy && !wrappedIOSurface)
  {
    sourceImage = self->_sourceImage;
    if (!sourceImage || (PUIIOSurfaceFromCGImage(sourceImage, 1), (wrappedIOSurface = objc_claimAutoreleasedReturnValue()) == 0))
    {
      wrappedIOSurface = 0;
    }
  }

  return wrappedIOSurface;
}

- (BOOL)refersToIdenticalImageFrom:(id)from
{
  fromCopy = from;
  if ([(PUICodableImage *)self isEqualRepresentation:fromCopy])
  {
    v5 = 1;
  }

  else
  {
    [(PUICodableImage *)self CGImage];
    Hash = CGImageGetHash();
    [fromCopy CGImage];
    v5 = Hash == CGImageGetHash();
  }

  return v5;
}

- (BOOL)isEqualRepresentation:(id)representation
{
  representationCopy = representation;
  if (!self->_cachedImage || !representationCopy[6] || (v5 = CGImageGetIdentifier(), v5 != CGImageGetIdentifier()))
  {
    bitmapSourceData = self->_bitmapSourceData;
    if (bitmapSourceData)
    {
      v8 = representationCopy[5];
      if (v8)
      {
        v6 = bitmapSourceData == v8;
        goto LABEL_20;
      }
    }

    wrappedIOSurface = [(PUICodableImage *)self wrappedIOSurface];
    wrappedIOSurface2 = [representationCopy wrappedIOSurface];
    v11 = wrappedIOSurface2;
    if (wrappedIOSurface && wrappedIOSurface2)
    {
      ID = IOSurfaceGetID(wrappedIOSurface);
      Identifier = IOSurfaceGetID(v11);
    }

    else
    {
      url = self->_url;
      if (url && representationCopy[3])
      {
        v6 = [(NSURL *)url isEqual:?];
        goto LABEL_19;
      }

      if (!self->_sourceImage || !representationCopy[4])
      {
        v6 = 0;
        goto LABEL_19;
      }

      ID = CGImageGetIdentifier();
      Identifier = CGImageGetIdentifier();
    }

    v6 = ID == Identifier;
LABEL_19:

    goto LABEL_20;
  }

  v6 = 1;
LABEL_20:

  return v6;
}

- (id)wrappedIOSurface
{
  surface = self->_surface;
  if (surface)
  {
    sourceImage = surface;
  }

  else
  {
    sourceImage = self->_sourceImage;
    if (sourceImage)
    {
      sourceImage = PUIIOSurfaceFromCGImage(sourceImage, 0);
    }
  }

  return sourceImage;
}

- (PUICodableImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"scale"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"representation"];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"fileURL"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v8];
      if (v9)
      {
        v19 = 0;
        v10 = &v19;
        v11 = [(PUICodableImage *)self initFromURL:v9 scale:&v19 error:v6];
LABEL_12:
        v13 = v11;
        v14 = *v10;
        self = v13;
        goto LABEL_14;
      }
    }

    else if ([v8 isEqualToString:@"imageData"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v8];
      if (v9)
      {
        v18 = 0;
        v10 = &v18;
        v11 = [(PUICodableImage *)self initFromSourceData:v9 scale:&v18 error:v6];
        goto LABEL_12;
      }
    }

    else
    {
      if (![v8 isEqualToString:@"surface"])
      {
        v14 = 0;
LABEL_16:
        self = self;

        selfCopy = self;
        goto LABEL_17;
      }

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v8];
      if (v9)
      {
        v17 = 0;
        v10 = &v17;
        v11 = [(PUICodableImage *)self initWithIOSurface:v9 scale:&v17 error:v6];
        goto LABEL_12;
      }
    }

    v13 = 0;
    v14 = 0;
LABEL_14:
    selfCopy2 = self;
    self = v13;

    if (v14)
    {
      [coderCopy failWithError:v14];
    }

    goto LABEL_16;
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeDouble:@"scale" forKey:self->_scale];
  surface = self->_surface;
  if (!surface)
  {
    surface = self->_url;
    if (!surface)
    {
      surface = self->_bitmapSourceData;
      if (!surface)
      {
        sourceImage = self->_sourceImage;
        if (!sourceImage)
        {
          sourceImage = self->_cachedImage;
          if (!sourceImage)
          {
            v9 = MEMORY[0x1E696ABC0];
            v10 = *MEMORY[0x1E696A588];
            v13[0] = *MEMORY[0x1E696A580];
            v13[1] = v10;
            v14[0] = @"UNREACHABLE: no image or any source was avaliable to encode.";
            v14[1] = @"Somehow a PUICodableImage was made that had no actual source or image.";
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
            v12 = [v9 errorWithDomain:@"com.apple.PosterUIFoundation.RendererService" code:9999 userInfo:v11];
            [coderCopy failWithError:v12];

            goto LABEL_5;
          }
        }

        v7 = PUIIOSurfaceFromCGImage(sourceImage, 0);
        if (v7)
        {
          v8 = 2;
        }

        else
        {
          v7 = [PUICodableImage dataRepresentationForImage:sourceImage error:0];
          if (!v7)
          {
LABEL_13:

            goto LABEL_5;
          }

          v8 = 1;
        }

        [PUICodableImage encodeRepresentation:v8 value:v7 withCoder:coderCopy];
        goto LABEL_13;
      }
    }
  }

  [PUICodableImage encodeRepresentation:self->_representation value:surface withCoder:coderCopy];
LABEL_5:
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"scale" forKey:self->_scale];
  surface = self->_surface;
  if (surface || (surface = self->_url) != 0)
  {
    [PUICodableImage bs_encodeRepresentation:self->_representation value:surface withCoder:coderCopy];
LABEL_4:
    v5 = coderCopy;
    goto LABEL_5;
  }

  sourceImage = self->_sourceImage;
  v5 = coderCopy;
  if (sourceImage || (sourceImage = self->_cachedImage) != 0)
  {
    v7 = PUIIOSurfaceFromCGImage(sourceImage, 0);
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v7 = [PUICodableImage dataRepresentationForImage:sourceImage error:0];
      if (!v7)
      {
LABEL_15:

        goto LABEL_4;
      }

      v8 = 1;
    }

    [PUICodableImage bs_encodeRepresentation:v8 value:v7 withCoder:coderCopy];
    goto LABEL_15;
  }

LABEL_5:
}

- (PUICodableImage)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"scale"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"representation"];
  if ([v7 isEqualToString:@"fileURL"])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v7];
    if (v8)
    {
      v20 = 0;
      self = [(PUICodableImage *)self initFromURL:v8 scale:&v20 error:v6];
      v9 = v20;
LABEL_7:
      v10 = v9;
      selfCopy = self;
LABEL_9:
      v12 = selfCopy;

      self = v12;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"imageData"])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v7];
    if (v8)
    {
      v19 = 0;
      self = [(PUICodableImage *)self initFromSourceData:v8 scale:&v19 error:v6];
      v9 = v19;
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    selfCopy = 0;
    goto LABEL_9;
  }

  if (![v7 isEqualToString:@"surface"])
  {
    v10 = 0;
    goto LABEL_13;
  }

  v14 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:v7];
  v8 = v14;
  if (v14)
  {
    v15 = IOSurfaceLookupFromXPCObject(v14);
    if (v15)
    {
      v18 = 0;
      self = [(PUICodableImage *)self initWithIOSurface:v15 scale:&v18 error:v6];
      v10 = v18;
      selfCopy2 = self;
    }

    else
    {
      v10 = 0;
      selfCopy2 = 0;
    }

    v17 = selfCopy2;

    self = v17;
  }

  else
  {

    v10 = 0;
    self = 0;
  }

LABEL_10:

  if (v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [PUICodableImage initWithBSXPCCoder:v10];
  }

LABEL_13:

  return self;
}

+ (void)encodeRepresentation:(int64_t)representation value:(id)value withCoder:(id)coder
{
  v17[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  coderCopy = coder;
  v9 = coderCopy;
  v10 = representation & ~(representation >> 63);
  if (v10 >= 4)
  {
    v10 = 4;
  }

  v11 = v10 - 1;
  if (v11 >= 3)
  {
    v13 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A580];
    v17[0] = @"Image did not have a valid representation.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.PosterUIFoundation.RendererService" code:2 userInfo:v14];
    [v9 failWithError:v15];
  }

  else
  {
    v12 = off_1E78563C0[v11];
    [coderCopy encodeObject:v12 forKey:@"representation"];
    [v9 encodeObject:valueCopy forKey:v12];
  }
}

+ (BOOL)bs_encodeRepresentation:(int64_t)representation value:(id)value withCoder:(id)coder
{
  valueCopy = value;
  coderCopy = coder;
  v9 = coderCopy;
  v10 = representation & ~(representation >> 63);
  if (v10 >= 4)
  {
    v10 = 4;
  }

  v11 = v10 - 1;
  if ((v10 - 1) <= 2)
  {
    v12 = off_1E78563C0[v11];
    [coderCopy encodeObject:v12 forKey:@"representation"];
    if ([(__IOSurface *)valueCopy isMemberOfClass:objc_opt_class()])
    {
      XPCObject = IOSurfaceCreateXPCObject(valueCopy);
      [v9 encodeXPCObject:XPCObject forKey:v12];
    }

    else
    {
      [v9 encodeObject:valueCopy forKey:v12];
    }
  }

  return v11 < 3;
}

+ (CGImage)createCGImageFromURL:(id)l error:(id *)error
{
  v32[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    [PUICodableImage createCGImageFromURL:a2 error:?];
  }

  v8 = lCopy;
  v28 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:lCopy options:1 error:&v28];
  v10 = v28;
  v11 = v10;
  if (!v9)
  {
    v13 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([v13 code] != 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [PUICodableImage createCGImageFromURL:v13 error:?];
    }

    goto LABEL_10;
  }

  v27 = 0;
  ImageAtIndex = [self createCGImageFromCPBitmapData:v9 error:&v27];
  v13 = v27;

  if (ImageAtIndex)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_10:
  v14 = CGImageSourceCreateWithURL(v8, 0);
  if (!v14)
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A580];
      v31[0] = *MEMORY[0x1E696A998];
      v31[1] = v23;
      v32[0] = v8;
      v32[1] = @"Image creation failed.";
      v24 = *MEMORY[0x1E696A278];
      v31[2] = *MEMORY[0x1E696A588];
      v31[3] = v24;
      v32[2] = @"URL is either not readable or is not a valid image file.";
      v32[3] = @"Check os_log for errors from ImageIO.";
      v20 = MEMORY[0x1E695DF20];
      v21 = v32;
      v22 = v31;
      goto LABEL_16;
    }

LABEL_17:
    ImageAtIndex = 0;
    goto LABEL_18;
  }

  v15 = v14;
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v14);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, PrimaryImageIndex, 0);
  CFRelease(v15);
  if (!ImageAtIndex)
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A580];
      v29[0] = *MEMORY[0x1E696A998];
      v29[1] = v18;
      v30[0] = v8;
      v30[1] = @"Image creation failed.";
      v19 = *MEMORY[0x1E696A278];
      v29[2] = *MEMORY[0x1E696A588];
      v29[3] = v19;
      v30[2] = @"CGImageSource could not create an image.";
      v30[3] = @"Check os_log for errors from ImageIO.";
      v20 = MEMORY[0x1E695DF20];
      v21 = v30;
      v22 = v29;
LABEL_16:
      v25 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:4];
      *error = [v17 errorWithDomain:@"com.apple.PosterUIFoundation.RendererService" code:1 userInfo:v25];

      goto LABEL_17;
    }

    goto LABEL_17;
  }

LABEL_18:

  return ImageAtIndex;
}

+ (CGImage)createCGImageFromData:(id)data error:(id *)error
{
  v27[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    [PUICodableImage createCGImageFromData:a2 error:?];
  }

  v8 = dataCopy;
  v23 = 0;
  ImageAtIndex = [self createCGImageFromCPBitmapData:dataCopy error:&v23];
  v10 = v23;
  v11 = v10;
  if (!ImageAtIndex)
  {
    if (v10 && [v10 code] != 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [PUICodableImage createCGImageFromData:v11 error:?];
    }

    v12 = CGImageSourceCreateWithData(v8, 0);
    if (!v12)
    {
      if (error)
      {
        v20 = *MEMORY[0x1E696A588];
        v26[0] = *MEMORY[0x1E696A580];
        v26[1] = v20;
        v16 = MEMORY[0x1E696ABC0];
        v27[0] = @"Image creation failed.";
        v27[1] = @"Data is not a valid image format.";
        v26[2] = *MEMORY[0x1E696A598];
        v27[2] = @"Check os_log for errors from ImageIO.";
        v17 = MEMORY[0x1E695DF20];
        v18 = v27;
        v19 = v26;
        goto LABEL_13;
      }

LABEL_14:
      ImageAtIndex = 0;
      goto LABEL_15;
    }

    v13 = v12;
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v12);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, PrimaryImageIndex, 0);
    CFRelease(v13);
    if (!ImageAtIndex)
    {
      if (error)
      {
        v15 = *MEMORY[0x1E696A588];
        v24[0] = *MEMORY[0x1E696A580];
        v24[1] = v15;
        v16 = MEMORY[0x1E696ABC0];
        v25[0] = @"Image creation failed.";
        v25[1] = @"CGImageSource could not create an image.";
        v24[2] = *MEMORY[0x1E696A278];
        v25[2] = @"Check os_log for errors from ImageIO.";
        v17 = MEMORY[0x1E695DF20];
        v18 = v25;
        v19 = v24;
LABEL_13:
        v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:3];
        *error = [v16 errorWithDomain:@"com.apple.PosterUIFoundation.RendererService" code:1 userInfo:v21];

        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

LABEL_15:

  return ImageAtIndex;
}

+ (id)dataRepresentationForImage:(CGImage *)image error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = CGImageCopySourceData();
  if (v6)
  {
    v7 = v6;
    if (CFDataGetLength(v6) > 0)
    {
      goto LABEL_17;
    }

    CFRelease(v7);
  }

  v8 = CGImageCopyJPEGData();
  if (v8)
  {
    v7 = v8;
    if (CFDataGetLength(v8) > 0)
    {
      goto LABEL_17;
    }

    CFRelease(v7);
  }

  v9 = [PUIImageOnDiskFormat alloc];
  v10 = [(PUIImageOnDiskFormat *)v9 initWithTypeRecord:*MEMORY[0x1E6982E00] destinationOptions:0 addImageOptions:0];
  data = [MEMORY[0x1E695DF88] data];
  v12 = [(PUIImageOnDiskFormat *)v10 resolveDestinationOptionsForImage:image];
  v13 = CGImageDestinationCreateWithData(data, [(PUIImageOnDiskFormat *)v10 typeIdentifier], 1uLL, v12);
  if (v13)
  {
    v14 = v13;
    v15 = [(PUIImageOnDiskFormat *)v10 resolveAddImageOptionsForImage:image];
    CGImageDestinationAddImage(v14, image, v15);
    v16 = CGImageDestinationFinalize(v14);
    CFRelease(v14);
    if (v16)
    {
      v7 = data;
    }

    else
    {
      if (error)
      {
        v18 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A578];
        v22 = @"Image final encoding failed for unknown reasons in CoreGraphics.";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v18 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:2 userInfo:v19];
      }

      v7 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v7 = 0;
      goto LABEL_16;
    }

    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Image destination failed to be created to Data.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v17 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:1 userInfo:v15];
    *error = v7 = 0;
  }

LABEL_16:
LABEL_17:

  return v7;
}

+ (CGImage)createCGImageFromCPBitmapData:(id)data error:(id *)error
{
  v13[2] = *MEMORY[0x1E69E9840];
  ImagesFromData = CPBitmapCreateImagesFromData();
  if (!ImagesFromData)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
  v7 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A588];
    v12[0] = *MEMORY[0x1E696A580];
    v12[1] = v9;
    v13[0] = @"CPBitmap file contained no images.";
    v13[1] = @"The bitmap file was valid, it just had no images.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    *error = [v8 errorWithDomain:@"com.apple.PosterUIFoundation.RendererService" code:2 userInfo:v10];
  }

  CFRelease(ImagesFromData);
  return v7;
}

- (void)initWithBSXPCCoder:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 debugDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PUICodableImage BSXPCDecoding failed: %@", &v2, 0xCu);
}

+ (void)createCGImageFromURL:(void *)a1 error:.cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 debugDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Possibly Expected Error] CPBitmap read failed will fallback to ImageIO. The source data is unlikely a cpbitmap so you can normally ignore this: %@", &v2, 0xCu);
}

+ (void)createCGImageFromURL:(const char *)a1 error:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"url"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PUICodableImage.m";
    v9 = 1024;
    v10 = 491;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createCGImageFromData:(void *)a1 error:.cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 debugDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Possibly Expected Error] CPBitmap read failed. The source data is unlikely a cpbitmap so you can normally ignore this: %@", &v2, 0xCu);
}

+ (void)createCGImageFromData:(const char *)a1 error:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"data != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"PUICodableImage.m";
    v9 = 1024;
    v10 = 541;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end