@interface VSVoiceSubscription
- (VSVoiceSubscription)initWithClient:(id)client accessory:(id)accessory voice:(id)voice;
- (VSVoiceSubscription)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSVoiceSubscription

- (VSVoiceSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = VSVoiceSubscription;
  v5 = [(VSVoiceSubscription *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accessoryID"];
    accessoryID = v5->_accessoryID;
    v5->_accessoryID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voice"];
    voice = v5->_voice;
    v5->_voice = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientID = self->_clientID;
  coderCopy = coder;
  [coderCopy encodeObject:clientID forKey:@"_clientID"];
  [coderCopy encodeObject:self->_accessoryID forKey:@"_accessoryID"];
  [coderCopy encodeObject:self->_voice forKey:@"_voice"];
}

- (VSVoiceSubscription)initWithClient:(id)client accessory:(id)accessory voice:(id)voice
{
  clientCopy = client;
  accessoryCopy = accessory;
  voiceCopy = voice;
  v15.receiver = self;
  v15.super_class = VSVoiceSubscription;
  v12 = [(VSVoiceSubscription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientID, client);
    objc_storeStrong(&v13->_accessoryID, accessory);
    objc_storeStrong(&v13->_voice, voice);
  }

  return v13;
}

@end