@interface RWIProtocolDOMMediaStats
- (NSString)source;
- (RWIProtocolDOMAudioMediaStats)audio;
- (RWIProtocolDOMVideoMediaStats)video;
- (RWIProtocolDOMVideoPlaybackQuality)quality;
- (RWIProtocolDOMViewportSize)viewport;
- (double)devicePixelRatio;
- (void)setAudio:(id)a3;
- (void)setDevicePixelRatio:(double)a3;
- (void)setQuality:(id)a3;
- (void)setSource:(id)a3;
- (void)setVideo:(id)a3;
- (void)setViewport:(id)a3;
@end

@implementation RWIProtocolDOMMediaStats

- (void)setAudio:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"audio"];
}

- (RWIProtocolDOMAudioMediaStats)audio
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"audio"];
  if (v3)
  {
    v4 = [RWIProtocolDOMAudioMediaStats alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"audio"];
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

- (void)setVideo:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"video"];
}

- (RWIProtocolDOMVideoMediaStats)video
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"video"];
  if (v3)
  {
    v4 = [RWIProtocolDOMVideoMediaStats alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"video"];
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

- (void)setDevicePixelRatio:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"devicePixelRatio" forKey:a3];
}

- (double)devicePixelRatio
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"devicePixelRatio"];
  return result;
}

- (void)setViewport:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"viewport"];
}

- (RWIProtocolDOMViewportSize)viewport
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"viewport"];
  if (v3)
  {
    v4 = [RWIProtocolDOMViewportSize alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"viewport"];
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

- (void)setQuality:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 setObject:a3 forKey:@"quality"];
}

- (RWIProtocolDOMVideoPlaybackQuality)quality
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMMediaStats;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"quality"];
  if (v3)
  {
    v4 = [RWIProtocolDOMVideoPlaybackQuality alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMMediaStats;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"quality"];
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

- (void)setSource:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"source"];
}

- (NSString)source
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"source"];

  return v2;
}

@end