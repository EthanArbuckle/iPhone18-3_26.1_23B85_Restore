@interface RWIProtocolDOMAudioMediaStats
- (NSString)codec;
- (NSString)humanReadableCodecString;
- (double)sampleRate;
- (int)bitrate;
- (int)numberOfChannels;
- (void)setCodec:(id)codec;
- (void)setHumanReadableCodecString:(id)string;
- (void)setSampleRate:(double)rate;
@end

@implementation RWIProtocolDOMAudioMediaStats

- (int)bitrate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"bitrate"];
}

- (void)setCodec:(id)codec
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:codec forKey:@"codec"];
}

- (NSString)codec
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMAudioMediaStats;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"codec"];

  return v2;
}

- (void)setHumanReadableCodecString:(id)string
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setString:string forKey:@"humanReadableCodecString"];
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

- (void)setSampleRate:(double)rate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"sampleRate" forKey:rate];
}

- (double)sampleRate
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMAudioMediaStats;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"sampleRate"];
  return result;
}

@end