@interface PVLivePlayerCameraRenderLink
- (PVLivePlayerCameraRenderLink)initWithPlayerCameraSource:(id)source;
- (void)cameraSourceRecievedFrameSet:(id)set;
@end

@implementation PVLivePlayerCameraRenderLink

- (PVLivePlayerCameraRenderLink)initWithPlayerCameraSource:(id)source
{
  sourceCopy = source;
  v7.receiver = self;
  v7.super_class = PVLivePlayerCameraRenderLink;
  v5 = [(PVLivePlayerRenderLink *)&v7 init];
  if (v5)
  {
    [sourceCopy registerRenderLink:v5];
  }

  return v5;
}

- (void)cameraSourceRecievedFrameSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (setCopy)
  {
    [setCopy presentationTimeStamp];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [(PVLivePlayerRenderLink *)self signalPlayer:v6];
}

@end