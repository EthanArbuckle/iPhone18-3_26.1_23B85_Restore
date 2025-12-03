@interface SMLocationEvent
- (SMLocationEvent)initWithLocation:(id)location distance:(double)distance;
@end

@implementation SMLocationEvent

- (SMLocationEvent)initWithLocation:(id)location distance:(double)distance
{
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = SMLocationEvent;
  v8 = [(SMLocationEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, location);
    v9->_distance = distance;
  }

  return v9;
}

@end