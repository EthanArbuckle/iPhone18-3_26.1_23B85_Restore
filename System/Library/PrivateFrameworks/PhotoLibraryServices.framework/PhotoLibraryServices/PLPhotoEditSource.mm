@interface PLPhotoEditSource
- (PLPhotoEditSource)initWithURL:(id)l type:(id)type image:(id)image useEmbeddedPreview:(BOOL)preview;
- (id)newSourceWithURL:(id)l type:(id)type useEmbeddedPreview:(BOOL)preview;
- (void)setURL:(id)l type:(id)type image:(id)image useEmbeddedPreview:(BOOL)preview;
@end

@implementation PLPhotoEditSource

- (id)newSourceWithURL:(id)l type:(id)type useEmbeddedPreview:(BOOL)preview
{
  previewCopy = preview;
  typeCopy = type;
  lCopy = l;
  v9 = [getPIPhotoEditHelperClass_85048() imageSourceWithURL:lCopy type:typeCopy useEmbeddedPreview:previewCopy];

  return v9;
}

- (void)setURL:(id)l type:(id)type image:(id)image useEmbeddedPreview:(BOOL)preview
{
  previewCopy = preview;
  lCopy = l;
  typeCopy = type;
  imageCopy = image;
  v12 = imageCopy;
  if (imageCopy)
  {
    v13 = MEMORY[0x19EAED870](imageCopy);
    if (v13)
    {
      [MEMORY[0x1E695F658] imageWithIOSurface:v13];
    }

    else
    {
      [MEMORY[0x1E695F658] imageWithCGImage:DCIM_CGImageRefFromPLImage()];
    }
    v15 = ;
    MEMORY[0x19EAED900](v12);
    v16 = PLExifOrientationFromImageOrientation();
    PIPhotoEditHelperClass_85048 = getPIPhotoEditHelperClass_85048();
    if (lCopy)
    {
      [PIPhotoEditHelperClass_85048 imageSourceWithURL:lCopy type:typeCopy proxyImage:v15 orientation:v16 useEmbeddedPreview:previewCopy];
    }

    else
    {
      [PIPhotoEditHelperClass_85048 imageSourceWithCIImage:v15 orientation:v16];
    }
    v14 = ;
  }

  else
  {
    v14 = [(PLPhotoEditSource *)self newSourceWithURL:lCopy type:typeCopy useEmbeddedPreview:previewCopy];
  }

  [(PLEditSource *)self setResolvedSource:v14 mediaType:1];
  if (typeCopy)
  {
    v18 = [MEMORY[0x1E6982C40] typeWithIdentifier:typeCopy];
    self->_isRAWSource = [v18 conformsToType:*MEMORY[0x1E6982F88]];
  }

  else
  {
    self->_isRAWSource = 0;
  }
}

- (PLPhotoEditSource)initWithURL:(id)l type:(id)type image:(id)image useEmbeddedPreview:(BOOL)preview
{
  previewCopy = preview;
  lCopy = l;
  typeCopy = type;
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = PLPhotoEditSource;
  v13 = [(PLPhotoEditSource *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(PLPhotoEditSource *)v13 setURL:lCopy type:typeCopy image:imageCopy useEmbeddedPreview:previewCopy];
    v15 = v14;
  }

  return v14;
}

@end