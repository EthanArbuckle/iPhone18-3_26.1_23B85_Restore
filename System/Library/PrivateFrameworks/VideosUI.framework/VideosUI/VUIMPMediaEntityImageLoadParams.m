@interface VUIMPMediaEntityImageLoadParams
- (BOOL)isEqual:(id)a3;
- (MPArtworkCatalog)artworkCatalog;
- (NSString)description;
- (NSString)imageIdentifier;
- (VUIMPMediaEntityImageLoadParams)init;
- (VUIMPMediaEntityImageLoadParams)initWithMediaItem:(id)a3 andImageType:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation VUIMPMediaEntityImageLoadParams

- (VUIMPMediaEntityImageLoadParams)initWithMediaItem:(id)a3 andImageType:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItem"}];
  }

  v11.receiver = self;
  v11.super_class = VUIMPMediaEntityImageLoadParams;
  v8 = [(VUIMPMediaEntityImageLoadParams *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaItem, a3);
    v9->_imageType = a4;
  }

  return v9;
}

- (VUIMPMediaEntityImageLoadParams)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (MPArtworkCatalog)artworkCatalog
{
  artworkCatalog = self->_artworkCatalog;
  if (!artworkCatalog)
  {
    v4 = [(VUIMPMediaEntityImageLoadParams *)self mediaItem];
    v5 = [v4 vui_artworkCatalogWithImageType:{-[VUIMPMediaEntityImageLoadParams imageType](self, "imageType")}];
    v6 = self->_artworkCatalog;
    self->_artworkCatalog = v5;

    artworkCatalog = self->_artworkCatalog;
  }

  return artworkCatalog;
}

- (NSString)imageIdentifier
{
  if (!self->_calculatedIdentifier)
  {
    v3 = [(VUIMPMediaEntityImageLoadParams *)self mediaItem];
    v4 = [v3 vui_imageIdentifierWithImageType:{-[VUIMPMediaEntityImageLoadParams imageType](self, "imageType")}];
    imageIdentifier = self->_imageIdentifier;
    self->_imageIdentifier = v4;

    self->_calculatedIdentifier = 1;
  }

  v6 = self->_imageIdentifier;

  return v6;
}

- (unint64_t)hash
{
  v2 = [(VUIMPMediaEntityImageLoadParams *)self imageIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIMPMediaEntityImageLoadParams *)self imageType];
    if (v7 == [(VUIMPMediaEntityImageLoadParams *)v6 imageType])
    {
      v8 = [(VUIMPMediaEntityImageLoadParams *)self imageIdentifier];
      v9 = [(VUIMPMediaEntityImageLoadParams *)v6 imageIdentifier];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0;
        if (v10 && v11)
        {
          v13 = [v10 isEqual:v11];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMPMediaEntityImageLoadParams;
  v4 = [(VUIMPMediaEntityImageLoadParams *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMPMediaEntityImageLoadParams *)self imageIdentifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"imageIdentifier", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = VUIImageTypeString([(VUIMPMediaEntityImageLoadParams *)self imageType]);
  v10 = [v8 stringWithFormat:@"%@=%@", @"imageType", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end