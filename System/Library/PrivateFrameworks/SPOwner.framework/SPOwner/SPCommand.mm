@interface SPCommand
+ (id)beginLeashingWithBeaconUUID:(id)d;
+ (id)connectToBeaconUUID:(id)d;
+ (id)disableLostModeForBeaconUUID:(id)d;
+ (id)disableNotifyWhenFound:(id)found;
+ (id)disconnectFromBeaconUUID:(id)d;
+ (id)enableLostModeForBeaconUUID:(id)d message:(id)message phoneNumber:(id)number email:(id)email;
+ (id)enableNotifyWhenFound:(id)found;
+ (id)endLeashingWithBeaconUUID:(id)d;
+ (id)locate:(id)locate;
+ (id)playSoundWithBeaconUUID:(id)d duration:(double)duration;
+ (id)playSoundWithBeaconUUID:(id)d withContext:(int64_t)context;
+ (id)setObfuscatedIdentifier:(id)identifier;
+ (id)startBTFindingWithBeaconUUID:(id)d;
+ (id)stopBTFindingWithBeaconUUID:(id)d;
+ (id)stopSoundWithBeaconUUID:(id)d;
+ (id)unpairWithBeaconUUID:(id)d;
+ (id)updateAccessoryFirmware:(id)firmware;
- (NSString)taskName;
- (SPCommand)initWithBeaconUUID:(id)d type:(int64_t)type expiration:(id)expiration duration:(id)duration handle:(id)handle lostModeEmail:(id)email lostModeMessage:(id)message lostModePhoneNumber:(id)self0 obfuscatedIdentifier:(id)self1 identifier:(id)self2;
- (SPCommand)initWithBeaconUUID:(id)d type:(int64_t)type expiration:(id)expiration duration:(id)duration handle:(id)handle lostModeMessage:(id)message lostModePhoneNumber:(id)number obfuscatedIdentifier:(id)self0;
- (SPCommand)initWithBeaconUUID:(id)d type:(int64_t)type expiration:(id)expiration duration:(id)duration playSoundContext:(int64_t)context handle:(id)handle lostModeMessage:(id)message lostModePhoneNumber:(id)self0 obfuscatedIdentifier:(id)self1 identifier:(id)self2;
- (SPCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCommand

+ (id)enableNotifyWhenFound:(id)found
{
  foundCopy = found;
  v4 = [[SPCommand alloc] initWithBeaconUUID:foundCopy type:1 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)disableNotifyWhenFound:(id)found
{
  foundCopy = found;
  v4 = [[SPCommand alloc] initWithBeaconUUID:foundCopy type:2 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)locate:(id)locate
{
  locateCopy = locate;
  v4 = [[SPCommand alloc] initWithBeaconUUID:locateCopy type:0 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)playSoundWithBeaconUUID:(id)d duration:(double)duration
{
  dCopy = d;
  v6 = [SPCommand alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [(SPCommand *)v6 initWithBeaconUUID:dCopy type:3 expiration:0 duration:v7 playSoundContext:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0 identifier:uUID];

  return v9;
}

+ (id)unpairWithBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:10 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)playSoundWithBeaconUUID:(id)d withContext:(int64_t)context
{
  dCopy = d;
  v6 = [SPCommand alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [(SPCommand *)v6 initWithBeaconUUID:dCopy type:3 expiration:0 duration:0 playSoundContext:context handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0 identifier:uUID];

  return v8;
}

+ (id)stopSoundWithBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:4 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)enableLostModeForBeaconUUID:(id)d message:(id)message phoneNumber:(id)number email:(id)email
{
  emailCopy = email;
  numberCopy = number;
  messageCopy = message;
  dCopy = d;
  v13 = [SPCommand alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v15 = [(SPCommand *)v13 initWithBeaconUUID:dCopy type:5 expiration:0 duration:0 handle:0 lostModeEmail:emailCopy lostModeMessage:messageCopy lostModePhoneNumber:numberCopy obfuscatedIdentifier:0 identifier:uUID];

  return v15;
}

+ (id)disableLostModeForBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:6 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)beginLeashingWithBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:7 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)endLeashingWithBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:8 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)connectToBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:9 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)disconnectFromBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:13 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)startBTFindingWithBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:14 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)stopBTFindingWithBeaconUUID:(id)d
{
  dCopy = d;
  v4 = [[SPCommand alloc] initWithBeaconUUID:dCopy type:15 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

+ (id)setObfuscatedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [SPCommand alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [(SPCommand *)v4 initWithBeaconUUID:uUID type:11 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:identifierCopy];

  return v6;
}

+ (id)updateAccessoryFirmware:(id)firmware
{
  firmwareCopy = firmware;
  v4 = [[SPCommand alloc] initWithBeaconUUID:firmwareCopy type:12 expiration:0 duration:0 handle:0 lostModeMessage:0 lostModePhoneNumber:0 obfuscatedIdentifier:0];

  return v4;
}

- (SPCommand)initWithBeaconUUID:(id)d type:(int64_t)type expiration:(id)expiration duration:(id)duration handle:(id)handle lostModeMessage:(id)message lostModePhoneNumber:(id)number obfuscatedIdentifier:(id)self0
{
  v17 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  numberCopy = number;
  messageCopy = message;
  handleCopy = handle;
  durationCopy = duration;
  expirationCopy = expiration;
  dCopy = d;
  uUID = [v17 UUID];
  v26 = [(SPCommand *)self initWithBeaconUUID:dCopy type:type expiration:expirationCopy duration:durationCopy handle:handleCopy lostModeEmail:0 lostModeMessage:messageCopy lostModePhoneNumber:numberCopy obfuscatedIdentifier:identifierCopy identifier:uUID];

  return v26;
}

- (SPCommand)initWithBeaconUUID:(id)d type:(int64_t)type expiration:(id)expiration duration:(id)duration handle:(id)handle lostModeEmail:(id)email lostModeMessage:(id)message lostModePhoneNumber:(id)self0 obfuscatedIdentifier:(id)self1 identifier:(id)self2
{
  dCopy = d;
  expirationCopy = expiration;
  durationCopy = duration;
  handleCopy = handle;
  emailCopy = email;
  messageCopy = message;
  numberCopy = number;
  identifierCopy = identifier;
  v25 = a12;
  v30.receiver = self;
  v30.super_class = SPCommand;
  v26 = [(SPCommand *)&v30 init];
  v27 = v26;
  if (v26)
  {
    [(SPCommand *)v26 setIdentifier:v25];
    [(SPCommand *)v27 setBeaconIdentifier:dCopy];
    [(SPCommand *)v27 setType:type];
    [(SPCommand *)v27 setExpiration:expirationCopy];
    [(SPCommand *)v27 setDuration:durationCopy];
    [(SPCommand *)v27 setHandle:handleCopy];
    [(SPCommand *)v27 setLostModeEmail:emailCopy];
    [(SPCommand *)v27 setLostModeMessage:messageCopy];
    [(SPCommand *)v27 setLostModePhoneNumber:numberCopy];
    [(SPCommand *)v27 setObfuscatedIdentifier:identifierCopy];
  }

  return v27;
}

- (SPCommand)initWithBeaconUUID:(id)d type:(int64_t)type expiration:(id)expiration duration:(id)duration playSoundContext:(int64_t)context handle:(id)handle lostModeMessage:(id)message lostModePhoneNumber:(id)self0 obfuscatedIdentifier:(id)self1 identifier:(id)self2
{
  dCopy = d;
  expirationCopy = expiration;
  durationCopy = duration;
  handleCopy = handle;
  messageCopy = message;
  numberCopy = number;
  identifierCopy = identifier;
  v18 = a12;
  v30.receiver = self;
  v30.super_class = SPCommand;
  v19 = [(SPCommand *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a12);
    objc_storeStrong(&v20->_beaconIdentifier, d);
    v20->_type = type;
    objc_storeStrong(&v20->_expiration, expiration);
    objc_storeStrong(&v20->_duration, duration);
    v20->_playSoundContext = context;
    objc_storeStrong(&v20->_handle, handle);
    objc_storeStrong(&v20->_lostModeMessage, message);
    objc_storeStrong(&v20->_lostModePhoneNumber, number);
    objc_storeStrong(&v20->_obfuscatedIdentifier, identifier);
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [SPCommand alloc];
  identifier = [(SPCommand *)self identifier];
  type = [(SPCommand *)self type];
  expiration = [(SPCommand *)self expiration];
  duration = [(SPCommand *)self duration];
  handle = [(SPCommand *)self handle];
  lostModeEmail = [(SPCommand *)self lostModeEmail];
  lostModeMessage = [(SPCommand *)self lostModeMessage];
  lostModePhoneNumber = [(SPCommand *)self lostModePhoneNumber];
  obfuscatedIdentifier = [(SPCommand *)self obfuscatedIdentifier];
  identifier2 = [(SPCommand *)self identifier];
  v14 = [(SPCommand *)v16 initWithBeaconUUID:identifier type:type expiration:expiration duration:duration handle:handle lostModeEmail:lostModeEmail lostModeMessage:lostModeMessage lostModePhoneNumber:lostModePhoneNumber obfuscatedIdentifier:obfuscatedIdentifier identifier:identifier2];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SPCommand *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  beaconIdentifier = [(SPCommand *)self beaconIdentifier];
  [coderCopy encodeObject:beaconIdentifier forKey:@"beaconIdentifier"];

  [coderCopy encodeInteger:-[SPCommand type](self forKey:{"type"), @"type"}];
  expiration = [(SPCommand *)self expiration];
  [coderCopy encodeObject:expiration forKey:@"expiration"];

  duration = [(SPCommand *)self duration];
  [coderCopy encodeObject:duration forKey:@"duration"];

  [coderCopy encodeInteger:-[SPCommand playSoundContext](self forKey:{"playSoundContext"), @"playSoundContext"}];
  handle = [(SPCommand *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  lostModeEmail = [(SPCommand *)self lostModeEmail];
  [coderCopy encodeObject:lostModeEmail forKey:@"lostModeEmail"];

  lostModeMessage = [(SPCommand *)self lostModeMessage];
  [coderCopy encodeObject:lostModeMessage forKey:@"lostModeMessage"];

  lostModePhoneNumber = [(SPCommand *)self lostModePhoneNumber];
  [coderCopy encodeObject:lostModePhoneNumber forKey:@"lostModePhoneNumber"];

  obfuscatedIdentifier = [(SPCommand *)self obfuscatedIdentifier];
  [coderCopy encodeObject:obfuscatedIdentifier forKey:@"obfuscatedIdentifier"];
}

- (SPCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v7;

  self->_type = [coderCopy decodeIntegerForKey:@"type"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  expiration = self->_expiration;
  self->_expiration = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
  duration = self->_duration;
  self->_duration = v11;

  self->_playSoundContext = [coderCopy decodeIntegerForKey:@"playSoundContext"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  handle = self->_handle;
  self->_handle = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeEmail"];
  lostModeEmail = self->_lostModeEmail;
  self->_lostModeEmail = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeMessage"];
  lostModeMessage = self->_lostModeMessage;
  self->_lostModeMessage = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModePhoneNumber"];
  lostModePhoneNumber = self->_lostModePhoneNumber;
  self->_lostModePhoneNumber = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obfuscatedIdentifier"];

  obfuscatedIdentifier = self->_obfuscatedIdentifier;
  self->_obfuscatedIdentifier = v21;

  return self;
}

- (NSString)taskName
{
  type = [(SPCommand *)self type];
  if (type > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_279B59410[type];
  }

  return v3;
}

@end