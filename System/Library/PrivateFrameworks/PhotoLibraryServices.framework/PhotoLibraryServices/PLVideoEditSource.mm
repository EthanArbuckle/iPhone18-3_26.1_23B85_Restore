@interface PLVideoEditSource
- (PLVideoEditSource)initWithVideoURL:(id)l;
@end

@implementation PLVideoEditSource

- (PLVideoEditSource)initWithVideoURL:(id)l
{
  lCopy = l;
  v6 = [getPIPhotoEditHelperClass_85048() videoSourceWithURL:lCopy];
  v10.receiver = self;
  v10.super_class = PLVideoEditSource;
  v7 = [(PLEditSource *)&v10 initWithResolvedSource:v6 mediaType:2];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_videoURL, l);
  }

  return v8;
}

@end