@interface DetachEvent
- (DetachEvent)initWithTimestamp:(id)timestamp primaryPort:(id)port restrictedModeEnabled:(BOOL)enabled;
@end

@implementation DetachEvent

- (DetachEvent)initWithTimestamp:(id)timestamp primaryPort:(id)port restrictedModeEnabled:(BOOL)enabled
{
  timestampCopy = timestamp;
  portCopy = port;
  v16.receiver = self;
  v16.super_class = DetachEvent;
  v11 = [(DetachEvent *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, timestamp);
    objc_storeStrong(&v12->_primaryPort, port);
    v12->_restrictedModeEnabled = enabled;
    duration = v12->_duration;
    v12->_duration = 0;

    accDigitalID = v12->_accDigitalID;
    v12->_accDigitalID = 0;
  }

  return v12;
}

@end