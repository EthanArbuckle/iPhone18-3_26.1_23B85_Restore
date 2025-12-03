@interface SXWebContentComponentExposureEvent
- (SXWebContentComponentExposureEvent)initWithComponent:(id)component;
@end

@implementation SXWebContentComponentExposureEvent

- (SXWebContentComponentExposureEvent)initWithComponent:(id)component
{
  componentCopy = component;
  v14.receiver = self;
  v14.super_class = SXWebContentComponentExposureEvent;
  v5 = [(SXAnalyticsEvent *)&v14 init];
  if (v5)
  {
    identifier = [componentCopy identifier];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = identifier;

    v8 = [componentCopy URL];
    URL = v5->_URL;
    v5->_URL = v8;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    exposureIdentifier = v5->_exposureIdentifier;
    v5->_exposureIdentifier = uUIDString;
  }

  return v5;
}

@end