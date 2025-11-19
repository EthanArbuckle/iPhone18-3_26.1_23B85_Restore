@interface TVPPlaybackStartupEvent
- (TVPPlaybackStartupEvent)initWithName:(id)a3 timestamp:(double)a4 durationMS:(id)a5;
@end

@implementation TVPPlaybackStartupEvent

- (TVPPlaybackStartupEvent)initWithName:(id)a3 timestamp:(double)a4 durationMS:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TVPPlaybackStartupEvent;
  v11 = [(TVPPlaybackStartupEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_timestamp = a4;
    objc_storeStrong(&v12->_durationMS, a5);
  }

  return v12;
}

@end