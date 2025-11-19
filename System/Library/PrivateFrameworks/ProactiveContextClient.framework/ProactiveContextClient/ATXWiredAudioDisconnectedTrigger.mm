@interface ATXWiredAudioDisconnectedTrigger
- (ATXWiredAudioDisconnectedTrigger)initWithCoder:(id)a3;
- (ATXWiredAudioDisconnectedTrigger)initWithDeviceIdentifier:(id)a3;
@end

@implementation ATXWiredAudioDisconnectedTrigger

- (ATXWiredAudioDisconnectedTrigger)initWithDeviceIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXWiredAudioDisconnectedTrigger;
  v6 = [(ATXWiredAudioDisconnectedTrigger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

- (ATXWiredAudioDisconnectedTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioDeviceIdentifier"];

  v6 = [(ATXWiredAudioDisconnectedTrigger *)self initWithDeviceIdentifier:v5];
  return v6;
}

@end