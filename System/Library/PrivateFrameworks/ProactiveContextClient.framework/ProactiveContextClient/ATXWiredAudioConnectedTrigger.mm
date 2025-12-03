@interface ATXWiredAudioConnectedTrigger
- (ATXWiredAudioConnectedTrigger)initWithCoder:(id)coder;
- (ATXWiredAudioConnectedTrigger)initWithDeviceIdentifier:(id)identifier;
@end

@implementation ATXWiredAudioConnectedTrigger

- (ATXWiredAudioConnectedTrigger)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ATXWiredAudioConnectedTrigger;
  v6 = [(ATXWiredAudioConnectedTrigger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (ATXWiredAudioConnectedTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioDeviceIdentifier"];

  v6 = [(ATXWiredAudioConnectedTrigger *)self initWithDeviceIdentifier:v5];
  return v6;
}

@end