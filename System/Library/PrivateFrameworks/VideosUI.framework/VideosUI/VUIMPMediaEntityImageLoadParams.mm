@interface VUIMPMediaEntityImageLoadParams
- (BOOL)isEqual:(id)equal;
- (MPArtworkCatalog)artworkCatalog;
- (NSString)description;
- (NSString)imageIdentifier;
- (VUIMPMediaEntityImageLoadParams)init;
- (VUIMPMediaEntityImageLoadParams)initWithMediaItem:(id)item andImageType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation VUIMPMediaEntityImageLoadParams

- (VUIMPMediaEntityImageLoadParams)initWithMediaItem:(id)item andImageType:(unint64_t)type
{
  itemCopy = item;
  if (!itemCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItem"}];
  }

  v11.receiver = self;
  v11.super_class = VUIMPMediaEntityImageLoadParams;
  v8 = [(VUIMPMediaEntityImageLoadParams *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaItem, item);
    v9->_imageType = type;
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
    mediaItem = [(VUIMPMediaEntityImageLoadParams *)self mediaItem];
    v5 = [mediaItem vui_artworkCatalogWithImageType:{-[VUIMPMediaEntityImageLoadParams imageType](self, "imageType")}];
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
    mediaItem = [(VUIMPMediaEntityImageLoadParams *)self mediaItem];
    v4 = [mediaItem vui_imageIdentifierWithImageType:{-[VUIMPMediaEntityImageLoadParams imageType](self, "imageType")}];
    imageIdentifier = self->_imageIdentifier;
    self->_imageIdentifier = v4;

    self->_calculatedIdentifier = 1;
  }

  v6 = self->_imageIdentifier;

  return v6;
}

- (unint64_t)hash
{
  imageIdentifier = [(VUIMPMediaEntityImageLoadParams *)self imageIdentifier];
  v3 = [imageIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    imageType = [(VUIMPMediaEntityImageLoadParams *)self imageType];
    if (imageType == [(VUIMPMediaEntityImageLoadParams *)v6 imageType])
    {
      imageIdentifier = [(VUIMPMediaEntityImageLoadParams *)self imageIdentifier];
      imageIdentifier2 = [(VUIMPMediaEntityImageLoadParams *)v6 imageIdentifier];
      v10 = imageIdentifier;
      v11 = imageIdentifier2;
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
  imageIdentifier = [(VUIMPMediaEntityImageLoadParams *)self imageIdentifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"imageIdentifier", imageIdentifier];
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