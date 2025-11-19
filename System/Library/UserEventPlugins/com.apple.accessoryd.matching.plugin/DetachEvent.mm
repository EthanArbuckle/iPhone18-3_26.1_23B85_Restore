@interface DetachEvent
- (DetachEvent)initWithTimestamp:(id)a3 primaryPort:(id)a4 restrictedModeEnabled:(BOOL)a5;
@end

@implementation DetachEvent

- (DetachEvent)initWithTimestamp:(id)a3 primaryPort:(id)a4 restrictedModeEnabled:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = DetachEvent;
  v11 = [(DetachEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, a3);
    objc_storeStrong(&v12->_primaryPort, a4);
    v12->_restrictedModeEnabled = a5;
    duration = v12->_duration;
    v12->_duration = 0;

    accDigitalID = v12->_accDigitalID;
    v12->_accDigitalID = 0;
  }

  return v12;
}

@end