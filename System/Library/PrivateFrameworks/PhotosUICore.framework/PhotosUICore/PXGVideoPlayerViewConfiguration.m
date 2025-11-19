@interface PXGVideoPlayerViewConfiguration
- (PXGVideoPlayerViewConfiguration)init;
- (PXGVideoPlayerViewConfiguration)initWithVideoSession:(id)a3 toneMapToStandardDynamicRange:(BOOL)a4 placeholderImage:(id)a5;
@end

@implementation PXGVideoPlayerViewConfiguration

- (PXGVideoPlayerViewConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGVideoPlayerView.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXGVideoPlayerViewConfiguration init]"}];

  abort();
}

- (PXGVideoPlayerViewConfiguration)initWithVideoSession:(id)a3 toneMapToStandardDynamicRange:(BOOL)a4 placeholderImage:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PXGVideoPlayerViewConfiguration;
  v11 = [(PXGVideoPlayerViewConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_videoSession, a3);
    v12->_toneMapToStandardDynamicRange = a4;
    objc_storeStrong(&v12->_placeholderImage, a5);
  }

  return v12;
}

@end