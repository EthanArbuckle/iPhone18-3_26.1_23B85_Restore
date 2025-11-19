@interface VSVoiceSubscription
- (VSVoiceSubscription)initWithClient:(id)a3 accessory:(id)a4 voice:(id)a5;
- (VSVoiceSubscription)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSVoiceSubscription

- (VSVoiceSubscription)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VSVoiceSubscription;
  v5 = [(VSVoiceSubscription *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accessoryID"];
    accessoryID = v5->_accessoryID;
    v5->_accessoryID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voice"];
    voice = v5->_voice;
    v5->_voice = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientID = self->_clientID;
  v5 = a3;
  [v5 encodeObject:clientID forKey:@"_clientID"];
  [v5 encodeObject:self->_accessoryID forKey:@"_accessoryID"];
  [v5 encodeObject:self->_voice forKey:@"_voice"];
}

- (VSVoiceSubscription)initWithClient:(id)a3 accessory:(id)a4 voice:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VSVoiceSubscription;
  v12 = [(VSVoiceSubscription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientID, a3);
    objc_storeStrong(&v13->_accessoryID, a4);
    objc_storeStrong(&v13->_voice, a5);
  }

  return v13;
}

@end