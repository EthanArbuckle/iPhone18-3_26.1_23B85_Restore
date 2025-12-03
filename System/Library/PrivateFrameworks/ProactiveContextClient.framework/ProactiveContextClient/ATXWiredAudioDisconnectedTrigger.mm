@interface ATXWiredAudioDisconnectedTrigger
- (ATXWiredAudioDisconnectedTrigger)initWithCoder:(id)coder;
- (ATXWiredAudioDisconnectedTrigger)initWithDeviceIdentifier:(id)identifier;
@end

@implementation ATXWiredAudioDisconnectedTrigger

- (ATXWiredAudioDisconnectedTrigger)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ATXWiredAudioDisconnectedTrigger;
  v6 = [(ATXWiredAudioDisconnectedTrigger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (ATXWiredAudioDisconnectedTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioDeviceIdentifier"];

  v6 = [(ATXWiredAudioDisconnectedTrigger *)self initWithDeviceIdentifier:v5];
  return v6;
}

@end