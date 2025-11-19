@interface PTCinematographyNetworkPayload
- (PTCinematographyNetworkPayload)initWithTime:(id *)a3 detection:(id)a4 missing:(BOOL)a5;
@end

@implementation PTCinematographyNetworkPayload

- (PTCinematographyNetworkPayload)initWithTime:(id *)a3 detection:(id)a4 missing:(BOOL)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PTCinematographyNetworkPayload;
  v10 = [(PTCinematographyNetworkPayload *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a3->var0;
    *(v10 + 5) = a3->var3;
    *(v10 + 24) = v12;
    objc_storeStrong(v10 + 2, a4);
    v11->_isMissingDetection = a5;
  }

  return v11;
}

@end