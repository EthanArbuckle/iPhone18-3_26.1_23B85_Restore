@interface PLLivePhotoEditSource
+ (id)livePhotoSourceWithPhotoURL:(id)a3 videoComplementURL:(id)a4;
- (id)_initWithPhotoSource:(id)a3 videoComplement:(id)a4;
@end

@implementation PLLivePhotoEditSource

- (id)_initWithPhotoSource:(id)a3 videoComplement:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"photo != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"video != nil"}];

LABEL_3:
  v11 = [v8 resolvedSource];
  v12 = [v10 resolvedSource];
  v13 = [getPIPhotoEditHelperClass_85048() livePhotoSourceWithPhotoSource:v11 videoSource:v12];
  v19.receiver = self;
  v19.super_class = PLLivePhotoEditSource;
  v14 = [(PLEditSource *)&v19 initWithResolvedSource:v13 mediaType:3];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_photoEditSource, a3);
    objc_storeStrong(p_isa + 4, a4);
  }

  return p_isa;
}

+ (id)livePhotoSourceWithPhotoURL:(id)a3 videoComplementURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PLPhotoEditSource alloc] initWithURL:v7 type:0 image:0 useEmbeddedPreview:0];

  v9 = [[PLVideoEditSource alloc] initWithVideoURL:v6];
  v10 = [[a1 alloc] initWithPhotoSource:v8 videoComplement:v9];

  return v10;
}

@end