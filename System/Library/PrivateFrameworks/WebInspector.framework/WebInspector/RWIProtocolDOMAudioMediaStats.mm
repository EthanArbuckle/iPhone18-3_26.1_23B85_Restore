@interface RWIProtocolDOMAudioMediaStats
- (NSString)codec;
- (NSString)humanReadableCodecString;
- (double)sampleRate;
- (int)bitrate;
- (int)numberOfChannels;
- (void)setCodec:(id)a3;
- (void)setHumanReadableCodecString:(id)a3;
- (void)setSampleRate:(double)a3;
@end

@implementation RWIProtocolDOMAudioMediaStats

- (int)bitrate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"bitrate"];
}

- (void)setCodec:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"codec"];
}

- (NSString)codec
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAudioMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"codec"];

  return v2;
}

- (void)setHumanReadableCodecString:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"humanReadableCodecString"];
}

- (NSString)humanReadableCodecString
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAudioMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"humanReadableCodecString"];

  return v2;
}

- (int)numberOfChannels
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"numberOfChannels"];
}

- (void)setSampleRate:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"sampleRate" forKey:a3];
}

- (double)sampleRate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"sampleRate"];
  return result;
}

@end