@interface ISPlayerOutputContent
- (CGSize)videoSize;
- (ISPlayerOutputContent)initWithPhoto:(CGImage *)a3 photoIsOriginal:(BOOL)a4 photoEXIFOrientation:(int)a5 videoPlayer:(id)a6 aspectRatio:(id)a7;
- (id)description;
- (void)dealloc;
@end

@implementation ISPlayerOutputContent

- (CGSize)videoSize
{
  width = self->_videoSize.width;
  height = self->_videoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_photo);
  v3.receiver = self;
  v3.super_class = ISPlayerOutputContent;
  [(ISPlayerOutputContent *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ISPlayerOutputContent;
  v3 = [(ISPlayerOutputContent *)&v7 description];
  videoPlayer = self->_videoPlayer;
  v5 = [v3 stringByAppendingFormat:@" photo: %@, orientation: %d, video player: %@, aspect ratio: %@", self->_photo, self->_photoEXIFOrientation, videoPlayer, self->_aspectRatio];

  return v5;
}

- (ISPlayerOutputContent)initWithPhoto:(CGImage *)a3 photoIsOriginal:(BOOL)a4 photoEXIFOrientation:(int)a5 videoPlayer:(id)a6 aspectRatio:(id)a7
{
  v13 = a6;
  v14 = a7;
  v17.receiver = self;
  v17.super_class = ISPlayerOutputContent;
  v15 = [(ISPlayerOutputContent *)&v17 init];
  if (v15)
  {
    v15->_photo = CGImageRetain(a3);
    v15->_photoIsOriginal = a4;
    v15->_photoEXIFOrientation = a5;
    objc_storeStrong(&v15->_videoPlayer, a6);
    objc_storeStrong(&v15->_aspectRatio, a7);
  }

  return v15;
}

@end