@interface RWIProtocolDOMVideoPlaybackQuality
- (int)displayCompositedVideoFrames;
- (int)droppedVideoFrames;
- (int)totalVideoFrames;
@end

@implementation RWIProtocolDOMVideoPlaybackQuality

- (int)displayCompositedVideoFrames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"displayCompositedVideoFrames"];
}

- (int)droppedVideoFrames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"droppedVideoFrames"];
}

- (int)totalVideoFrames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"totalVideoFrames"];
}

@end