@interface PCLockscreenControlsDevice
- (PCLockscreenControlsDevice)initWithCoder:(id)coder;
- (PCLockscreenControlsDevice)initWithMediaRouteID:(id)d distance:(id)distance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCLockscreenControlsDevice

- (PCLockscreenControlsDevice)initWithMediaRouteID:(id)d distance:(id)distance
{
  dCopy = d;
  distanceCopy = distance;
  v13.receiver = self;
  v13.super_class = PCLockscreenControlsDevice;
  v9 = [(PCLockscreenControlsDevice *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaRouteID, d);
    objc_storeStrong(&v10->_distance, distance);
    v11 = v10;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  distance = self->_distance;
  v7 = coderCopy;
  if (distance)
  {
    [coderCopy encodeObject:distance forKey:@"dist"];
    coderCopy = v7;
  }

  mediaRouteID = self->_mediaRouteID;
  if (mediaRouteID)
  {
    [v7 encodeObject:mediaRouteID forKey:@"mrID"];
    coderCopy = v7;
  }
}

- (PCLockscreenControlsDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PCLockscreenControlsDevice;
  v5 = [(PCLockscreenControlsDevice *)&v9 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

@end