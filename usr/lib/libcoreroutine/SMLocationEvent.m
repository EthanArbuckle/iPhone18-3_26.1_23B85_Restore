@interface SMLocationEvent
- (SMLocationEvent)initWithLocation:(id)a3 distance:(double)a4;
@end

@implementation SMLocationEvent

- (SMLocationEvent)initWithLocation:(id)a3 distance:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SMLocationEvent;
  v8 = [(SMLocationEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, a3);
    v9->_distance = a4;
  }

  return v9;
}

@end