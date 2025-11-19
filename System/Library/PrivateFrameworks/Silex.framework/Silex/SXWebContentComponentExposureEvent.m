@interface SXWebContentComponentExposureEvent
- (SXWebContentComponentExposureEvent)initWithComponent:(id)a3;
@end

@implementation SXWebContentComponentExposureEvent

- (SXWebContentComponentExposureEvent)initWithComponent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SXWebContentComponentExposureEvent;
  v5 = [(SXAnalyticsEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 identifier];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = v6;

    v8 = [v4 URL];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    exposureIdentifier = v5->_exposureIdentifier;
    v5->_exposureIdentifier = v11;
  }

  return v5;
}

@end