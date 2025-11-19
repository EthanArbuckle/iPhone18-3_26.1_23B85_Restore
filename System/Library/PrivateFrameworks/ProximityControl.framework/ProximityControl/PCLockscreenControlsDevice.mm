@interface PCLockscreenControlsDevice
- (PCLockscreenControlsDevice)initWithCoder:(id)a3;
- (PCLockscreenControlsDevice)initWithMediaRouteID:(id)a3 distance:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCLockscreenControlsDevice

- (PCLockscreenControlsDevice)initWithMediaRouteID:(id)a3 distance:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PCLockscreenControlsDevice;
  v9 = [(PCLockscreenControlsDevice *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaRouteID, a3);
    objc_storeStrong(&v10->_distance, a4);
    v11 = v10;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  distance = self->_distance;
  v7 = v4;
  if (distance)
  {
    [v4 encodeObject:distance forKey:@"dist"];
    v4 = v7;
  }

  mediaRouteID = self->_mediaRouteID;
  if (mediaRouteID)
  {
    [v7 encodeObject:mediaRouteID forKey:@"mrID"];
    v4 = v7;
  }
}

- (PCLockscreenControlsDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PCLockscreenControlsDevice;
  v5 = [(PCLockscreenControlsDevice *)&v9 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

@end