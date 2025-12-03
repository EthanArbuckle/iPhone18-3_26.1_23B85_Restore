@interface PLLivePhotoEditSource
+ (id)livePhotoSourceWithPhotoURL:(id)l videoComplementURL:(id)rL;
- (id)_initWithPhotoSource:(id)source videoComplement:(id)complement;
@end

@implementation PLLivePhotoEditSource

- (id)_initWithPhotoSource:(id)source videoComplement:(id)complement
{
  sourceCopy = source;
  complementCopy = complement;
  v10 = complementCopy;
  if (sourceCopy)
  {
    if (complementCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"photo != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLEditSource.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"video != nil"}];

LABEL_3:
  resolvedSource = [sourceCopy resolvedSource];
  resolvedSource2 = [v10 resolvedSource];
  v13 = [getPIPhotoEditHelperClass_85048() livePhotoSourceWithPhotoSource:resolvedSource videoSource:resolvedSource2];
  v19.receiver = self;
  v19.super_class = PLLivePhotoEditSource;
  v14 = [(PLEditSource *)&v19 initWithResolvedSource:v13 mediaType:3];
  p_isa = &v14->super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_photoEditSource, source);
    objc_storeStrong(p_isa + 4, complement);
  }

  return p_isa;
}

+ (id)livePhotoSourceWithPhotoURL:(id)l videoComplementURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v8 = [[PLPhotoEditSource alloc] initWithURL:lCopy type:0 image:0 useEmbeddedPreview:0];

  v9 = [[PLVideoEditSource alloc] initWithVideoURL:rLCopy];
  v10 = [[self alloc] initWithPhotoSource:v8 videoComplement:v9];

  return v10;
}

@end