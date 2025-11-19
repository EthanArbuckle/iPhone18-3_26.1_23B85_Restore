@interface RWIProtocolDOMVideoMediaStats
- (NSString)codec;
- (NSString)humanReadableCodecString;
- (RWIProtocolDOMSpatialVideoMetadata)spatialVideoMetadata;
- (RWIProtocolDOMVideoColorSpace)colorSpace;
- (RWIProtocolDOMVideoProjectionMetadata)videoProjectionMetadata;
- (double)framerate;
- (int)bitrate;
- (int)height;
- (int)width;
- (void)setCodec:(id)a3;
- (void)setColorSpace:(id)a3;
- (void)setFramerate:(double)a3;
- (void)setHumanReadableCodecString:(id)a3;
- (void)setSpatialVideoMetadata:(id)a3;
- (void)setVideoProjectionMetadata:(id)a3;
@end

@implementation RWIProtocolDOMVideoMediaStats

- (int)bitrate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"bitrate"];
}

- (void)setCodec:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"codec"];
}

- (NSString)codec
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMVideoMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"codec"];

  return v2;
}

- (void)setHumanReadableCodecString:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"humanReadableCodecString"];
}

- (NSString)humanReadableCodecString
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMVideoMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"humanReadableCodecString"];

  return v2;
}

- (void)setColorSpace:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"colorSpace"];
}

- (RWIProtocolDOMVideoColorSpace)colorSpace
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMVideoMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"colorSpace"];
  if (v3)
  {
    v4 = [RWIProtocolDOMVideoColorSpace alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMVideoMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"colorSpace"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setFramerate:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"framerate" forKey:a3];
}

- (double)framerate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"framerate"];
  return result;
}

- (int)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"height"];
}

- (int)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"width"];
}

- (void)setSpatialVideoMetadata:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"spatialVideoMetadata"];
}

- (RWIProtocolDOMSpatialVideoMetadata)spatialVideoMetadata
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMVideoMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"spatialVideoMetadata"];
  if (v3)
  {
    v4 = [RWIProtocolDOMSpatialVideoMetadata alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMVideoMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"spatialVideoMetadata"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setVideoProjectionMetadata:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"videoProjectionMetadata"];
}

- (RWIProtocolDOMVideoProjectionMetadata)videoProjectionMetadata
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMVideoMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"videoProjectionMetadata"];
  if (v3)
  {
    v4 = [RWIProtocolDOMVideoProjectionMetadata alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMVideoMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"videoProjectionMetadata"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end