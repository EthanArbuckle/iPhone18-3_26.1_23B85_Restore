@interface TVPPlaybackStartupEvent
- (TVPPlaybackStartupEvent)initWithName:(id)name timestamp:(double)timestamp durationMS:(id)s;
@end

@implementation TVPPlaybackStartupEvent

- (TVPPlaybackStartupEvent)initWithName:(id)name timestamp:(double)timestamp durationMS:(id)s
{
  nameCopy = name;
  sCopy = s;
  v14.receiver = self;
  v14.super_class = TVPPlaybackStartupEvent;
  v11 = [(TVPPlaybackStartupEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_timestamp = timestamp;
    objc_storeStrong(&v12->_durationMS, s);
  }

  return v12;
}

@end