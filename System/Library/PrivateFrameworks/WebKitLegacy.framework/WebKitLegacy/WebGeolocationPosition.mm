@interface WebGeolocationPosition
- (WebGeolocationPosition)initWithGeolocationPosition:(void *)position;
- (WebGeolocationPosition)initWithTimestamp:(double)timestamp latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy;
- (void)dealloc;
@end

@implementation WebGeolocationPosition

- (WebGeolocationPosition)initWithTimestamp:(double)timestamp latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy
{
  v24.receiver = self;
  v24.super_class = WebGeolocationPosition;
  result = [(WebGeolocationPosition *)&v24 init];
  if (result)
  {
    v11 = result;
    *v13 = timestamp;
    *&v13[1] = latitude;
    *&v13[2] = longitude;
    *&v13[3] = accuracy;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v12 = [[WebGeolocationPositionInternal alloc] initWithCoreGeolocationPosition:v13];
    result = v11;
    v11->_internal = v12;
  }

  return result;
}

- (WebGeolocationPosition)initWithGeolocationPosition:(void *)position
{
  v7.receiver = self;
  v7.super_class = WebGeolocationPosition;
  result = [(WebGeolocationPosition *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = [[WebGeolocationPositionInternal alloc] initWithCoreGeolocationPosition:position];
    result = v5;
    v5->_internal = v6;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebGeolocationPosition;
  [(WebGeolocationPosition *)&v3 dealloc];
}

@end