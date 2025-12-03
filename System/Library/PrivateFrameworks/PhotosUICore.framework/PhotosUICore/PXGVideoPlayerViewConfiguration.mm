@interface PXGVideoPlayerViewConfiguration
- (PXGVideoPlayerViewConfiguration)init;
- (PXGVideoPlayerViewConfiguration)initWithVideoSession:(id)session toneMapToStandardDynamicRange:(BOOL)range placeholderImage:(id)image;
@end

@implementation PXGVideoPlayerViewConfiguration

- (PXGVideoPlayerViewConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGVideoPlayerView.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXGVideoPlayerViewConfiguration init]"}];

  abort();
}

- (PXGVideoPlayerViewConfiguration)initWithVideoSession:(id)session toneMapToStandardDynamicRange:(BOOL)range placeholderImage:(id)image
{
  sessionCopy = session;
  imageCopy = image;
  v14.receiver = self;
  v14.super_class = PXGVideoPlayerViewConfiguration;
  v11 = [(PXGVideoPlayerViewConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_videoSession, session);
    v12->_toneMapToStandardDynamicRange = range;
    objc_storeStrong(&v12->_placeholderImage, image);
  }

  return v12;
}

@end