@interface PLPhotoEditSource
- (PLPhotoEditSource)initWithURL:(id)a3 type:(id)a4 image:(id)a5 useEmbeddedPreview:(BOOL)a6;
- (id)newSourceWithURL:(id)a3 type:(id)a4 useEmbeddedPreview:(BOOL)a5;
- (void)setURL:(id)a3 type:(id)a4 image:(id)a5 useEmbeddedPreview:(BOOL)a6;
@end

@implementation PLPhotoEditSource

- (id)newSourceWithURL:(id)a3 type:(id)a4 useEmbeddedPreview:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [getPIPhotoEditHelperClass_85048() imageSourceWithURL:v8 type:v7 useEmbeddedPreview:v5];

  return v9;
}

- (void)setURL:(id)a3 type:(id)a4 image:(id)a5 useEmbeddedPreview:(BOOL)a6
{
  v6 = a6;
  v19 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x19EAED870](v11);
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
    if (v19)
    {
      [PIPhotoEditHelperClass_85048 imageSourceWithURL:v19 type:v10 proxyImage:v15 orientation:v16 useEmbeddedPreview:v6];
    }

    else
    {
      [PIPhotoEditHelperClass_85048 imageSourceWithCIImage:v15 orientation:v16];
    }
    v14 = ;
  }

  else
  {
    v14 = [(PLPhotoEditSource *)self newSourceWithURL:v19 type:v10 useEmbeddedPreview:v6];
  }

  [(PLEditSource *)self setResolvedSource:v14 mediaType:1];
  if (v10)
  {
    v18 = [MEMORY[0x1E6982C40] typeWithIdentifier:v10];
    self->_isRAWSource = [v18 conformsToType:*MEMORY[0x1E6982F88]];
  }

  else
  {
    self->_isRAWSource = 0;
  }
}

- (PLPhotoEditSource)initWithURL:(id)a3 type:(id)a4 image:(id)a5 useEmbeddedPreview:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = PLPhotoEditSource;
  v13 = [(PLPhotoEditSource *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(PLPhotoEditSource *)v13 setURL:v10 type:v11 image:v12 useEmbeddedPreview:v6];
    v15 = v14;
  }

  return v14;
}

@end