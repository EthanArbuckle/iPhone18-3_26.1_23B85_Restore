@interface PTCinematographyNetworkRectSignal
- (PTCinematographyNetworkRectSignal)initWithModelDictionary:(id)a3;
- (void)writePayload:(id)a3 toStream:(id)a4;
@end

@implementation PTCinematographyNetworkRectSignal

- (PTCinematographyNetworkRectSignal)initWithModelDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTCinematographyNetworkRectSignal;
  v5 = [(PTCinematographyNetworkSignal *)&v9 initWithModelDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"params"];
    v7 = [v6 objectForKeyedSubscript:@"width_height"];
    v5->_useSqrtForArea = [v7 isEqualToString:@"geomean"];
  }

  return v5;
}

- (void)writePayload:(id)a3 toStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PTCinematographyNetworkSignal *)self checkSignalForStream:v7])
  {
    if ([v6 isMissingDetection])
    {
      [v7 writeZerosWithCount:3];
    }

    else
    {
      v9 = [v6 detection];
      [v9 rect];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      Area = CGRectGetArea(v11, v13, v15, v17);
      v25.origin.x = v11;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v17;
      MidX = CGRectGetMidX(v25);
      v26.origin.x = v11;
      v26.origin.y = v13;
      v26.size.width = v15;
      v26.size.height = v17;
      MidY = CGRectGetMidY(v26);
      v21 = [(PTCinematographyNetworkRectSignal *)self useSqrtForArea];
      *&v22 = sqrtf(Area);
      if (!v21)
      {
        *&v22 = Area;
      }

      [v7 writeFloat:v22];
      *&v23 = MidX;
      [v7 writeFloat:v23];
      *&v24 = MidY;
      [v7 writeFloat:v24];
    }
  }

  else
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetworkNamedSignal writePayload:v8 toStream:?];
    }
  }
}

@end