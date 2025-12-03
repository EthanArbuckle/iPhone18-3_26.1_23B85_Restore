@interface ISPlayerOutputContent
- (CGSize)videoSize;
- (ISPlayerOutputContent)initWithPhoto:(CGImage *)photo photoIsOriginal:(BOOL)original photoEXIFOrientation:(int)orientation videoPlayer:(id)player aspectRatio:(id)ratio;
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

- (ISPlayerOutputContent)initWithPhoto:(CGImage *)photo photoIsOriginal:(BOOL)original photoEXIFOrientation:(int)orientation videoPlayer:(id)player aspectRatio:(id)ratio
{
  playerCopy = player;
  ratioCopy = ratio;
  v17.receiver = self;
  v17.super_class = ISPlayerOutputContent;
  v15 = [(ISPlayerOutputContent *)&v17 init];
  if (v15)
  {
    v15->_photo = CGImageRetain(photo);
    v15->_photoIsOriginal = original;
    v15->_photoEXIFOrientation = orientation;
    objc_storeStrong(&v15->_videoPlayer, player);
    objc_storeStrong(&v15->_aspectRatio, ratio);
  }

  return v15;
}

@end