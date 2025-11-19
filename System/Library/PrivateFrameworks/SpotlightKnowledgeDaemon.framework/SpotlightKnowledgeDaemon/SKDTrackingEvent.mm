@interface SKDTrackingEvent
- (SKDTrackingEvent)initWithName:(id)a3 event:(id)a4 domain:(id)a5;
@end

@implementation SKDTrackingEvent

- (SKDTrackingEvent)initWithName:(id)a3 event:(id)a4 domain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SKDTrackingEvent;
  v12 = [(SKDTrackingEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_domain, a5);
    objc_storeStrong(&v13->_event, a4);
  }

  return v13;
}

@end