@interface PVLivePlayerCameraRenderLink
- (PVLivePlayerCameraRenderLink)initWithPlayerCameraSource:(id)a3;
- (void)cameraSourceRecievedFrameSet:(id)a3;
@end

@implementation PVLivePlayerCameraRenderLink

- (PVLivePlayerCameraRenderLink)initWithPlayerCameraSource:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PVLivePlayerCameraRenderLink;
  v5 = [(PVLivePlayerRenderLink *)&v7 init];
  if (v5)
  {
    [v4 registerRenderLink:v5];
  }

  return v5;
}

- (void)cameraSourceRecievedFrameSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 presentationTimeStamp];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [(PVLivePlayerRenderLink *)self signalPlayer:v6];
}

@end