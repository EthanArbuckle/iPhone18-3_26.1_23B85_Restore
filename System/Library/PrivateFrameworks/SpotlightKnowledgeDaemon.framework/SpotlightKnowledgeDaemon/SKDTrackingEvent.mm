@interface SKDTrackingEvent
- (SKDTrackingEvent)initWithName:(id)name event:(id)event domain:(id)domain;
@end

@implementation SKDTrackingEvent

- (SKDTrackingEvent)initWithName:(id)name event:(id)event domain:(id)domain
{
  nameCopy = name;
  eventCopy = event;
  domainCopy = domain;
  v15.receiver = self;
  v15.super_class = SKDTrackingEvent;
  v12 = [(SKDTrackingEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_domain, domain);
    objc_storeStrong(&v13->_event, event);
  }

  return v13;
}

@end