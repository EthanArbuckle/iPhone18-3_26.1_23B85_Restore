@interface WFActionWillOpenURLTestingEvent
- (WFActionWillOpenURLTestingEvent)initWithAction:(id)a3 URL:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation WFActionWillOpenURLTestingEvent

- (WFActionWillOpenURLTestingEvent)initWithAction:(id)a3 URL:(id)a4 bundleIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFActionWillOpenURLTestingEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v17.receiver = self;
  v17.super_class = WFActionWillOpenURLTestingEvent;
  v12 = [(WFActionTestingEvent *)&v17 initWithAction:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, a4);
    objc_storeStrong(&v13->_bundleIdentifier, a5);
    v14 = v13;
  }

  return v13;
}

@end