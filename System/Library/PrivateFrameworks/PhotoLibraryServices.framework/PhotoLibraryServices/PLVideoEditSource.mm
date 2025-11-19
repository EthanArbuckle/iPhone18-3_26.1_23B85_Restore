@interface PLVideoEditSource
- (PLVideoEditSource)initWithVideoURL:(id)a3;
@end

@implementation PLVideoEditSource

- (PLVideoEditSource)initWithVideoURL:(id)a3
{
  v5 = a3;
  v6 = [getPIPhotoEditHelperClass_85048() videoSourceWithURL:v5];
  v10.receiver = self;
  v10.super_class = PLVideoEditSource;
  v7 = [(PLEditSource *)&v10 initWithResolvedSource:v6 mediaType:2];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_videoURL, a3);
  }

  return v8;
}

@end