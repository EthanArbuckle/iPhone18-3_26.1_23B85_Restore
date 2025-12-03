@interface PTCinematographyNetworkRectSignal
- (PTCinematographyNetworkRectSignal)initWithModelDictionary:(id)dictionary;
- (void)writePayload:(id)payload toStream:(id)stream;
@end

@implementation PTCinematographyNetworkRectSignal

- (PTCinematographyNetworkRectSignal)initWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PTCinematographyNetworkRectSignal;
  v5 = [(PTCinematographyNetworkSignal *)&v9 initWithModelDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"params"];
    v7 = [v6 objectForKeyedSubscript:@"width_height"];
    v5->_useSqrtForArea = [v7 isEqualToString:@"geomean"];
  }

  return v5;
}

- (void)writePayload:(id)payload toStream:(id)stream
{
  payloadCopy = payload;
  streamCopy = stream;
  if ([(PTCinematographyNetworkSignal *)self checkSignalForStream:streamCopy])
  {
    if ([payloadCopy isMissingDetection])
    {
      [streamCopy writeZerosWithCount:3];
    }

    else
    {
      detection = [payloadCopy detection];
      [detection rect];
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
      useSqrtForArea = [(PTCinematographyNetworkRectSignal *)self useSqrtForArea];
      *&v22 = sqrtf(Area);
      if (!useSqrtForArea)
      {
        *&v22 = Area;
      }

      [streamCopy writeFloat:v22];
      *&v23 = MidX;
      [streamCopy writeFloat:v23];
      *&v24 = MidY;
      [streamCopy writeFloat:v24];
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