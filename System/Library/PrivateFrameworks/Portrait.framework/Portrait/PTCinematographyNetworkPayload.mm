@interface PTCinematographyNetworkPayload
- (PTCinematographyNetworkPayload)initWithTime:(id *)time detection:(id)detection missing:(BOOL)missing;
@end

@implementation PTCinematographyNetworkPayload

- (PTCinematographyNetworkPayload)initWithTime:(id *)time detection:(id)detection missing:(BOOL)missing
{
  detectionCopy = detection;
  v14.receiver = self;
  v14.super_class = PTCinematographyNetworkPayload;
  v10 = [(PTCinematographyNetworkPayload *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&time->var0;
    *(v10 + 5) = time->var3;
    *(v10 + 24) = v12;
    objc_storeStrong(v10 + 2, detection);
    v11->_isMissingDetection = missing;
  }

  return v11;
}

@end