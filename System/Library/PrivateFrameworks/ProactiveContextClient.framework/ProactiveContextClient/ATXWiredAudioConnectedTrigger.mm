@interface ATXWiredAudioConnectedTrigger
- (ATXWiredAudioConnectedTrigger)initWithCoder:(id)a3;
- (ATXWiredAudioConnectedTrigger)initWithDeviceIdentifier:(id)a3;
@end

@implementation ATXWiredAudioConnectedTrigger

- (ATXWiredAudioConnectedTrigger)initWithDeviceIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXWiredAudioConnectedTrigger;
  v6 = [(ATXWiredAudioConnectedTrigger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

- (ATXWiredAudioConnectedTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioDeviceIdentifier"];

  v6 = [(ATXWiredAudioConnectedTrigger *)self initWithDeviceIdentifier:v5];
  return v6;
}

@end