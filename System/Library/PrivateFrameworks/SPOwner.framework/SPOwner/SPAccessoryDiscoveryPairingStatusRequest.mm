@interface SPAccessoryDiscoveryPairingStatusRequest
+ (id)checkSerialNumberWithIdentifier:(id)identifier;
- (SPAccessoryDiscoveryPairingStatusRequest)initWithCoder:(id)coder;
- (SPAccessoryDiscoveryPairingStatusRequest)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAccessoryDiscoveryPairingStatusRequest

- (SPAccessoryDiscoveryPairingStatusRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SPAccessoryDiscoveryPairingStatusRequest;
  v6 = [(SPAccessoryDiscoveryPairingStatusRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    *&v7->_wantsLostModeInfo = 16843008;
  }

  return v7;
}

+ (id)checkSerialNumberWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[SPAccessoryDiscoveryPairingStatusRequest alloc] initWithIdentifier:identifierCopy];

  [(SPAccessoryDiscoveryPairingStatusRequest *)v4 setWantsLostModeInfo:0];
  [(SPAccessoryDiscoveryPairingStatusRequest *)v4 setCheckSerialNumber:1];
  [(SPAccessoryDiscoveryPairingStatusRequest *)v4 setVerifyFMNID:0];
  [(SPAccessoryDiscoveryPairingStatusRequest *)v4 setVerifyWithServer:0];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPAccessoryDiscoveryPairingStatusRequest alloc];
  identifier = [(SPAccessoryDiscoveryPairingStatusRequest *)self identifier];
  v6 = [(SPAccessoryDiscoveryPairingStatusRequest *)v4 initWithIdentifier:identifier];

  [(SPAccessoryDiscoveryPairingStatusRequest *)v6 setWantsLostModeInfo:[(SPAccessoryDiscoveryPairingStatusRequest *)self wantsLostModeInfo]];
  [(SPAccessoryDiscoveryPairingStatusRequest *)v6 setCheckSerialNumber:[(SPAccessoryDiscoveryPairingStatusRequest *)self checkSerialNumber]];
  [(SPAccessoryDiscoveryPairingStatusRequest *)v6 setVerifyFMNID:[(SPAccessoryDiscoveryPairingStatusRequest *)self verifyFMNID]];
  [(SPAccessoryDiscoveryPairingStatusRequest *)v6 setVerifyWithServer:[(SPAccessoryDiscoveryPairingStatusRequest *)self verifyWithServer]];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_wantsLostModeInfo forKey:@"wantsLostModeInfo"];
  [coderCopy encodeBool:self->_checkSerialNumber forKey:@"checkSerialNumber"];
  [coderCopy encodeBool:self->_verifyFMNID forKey:@"verifyFMNID"];
  [coderCopy encodeBool:self->_verifyWithServer forKey:@"verifyWithServer"];
}

- (SPAccessoryDiscoveryPairingStatusRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_wantsLostModeInfo = [coderCopy decodeBoolForKey:@"wantsLostModeInfo"];
  self->_checkSerialNumber = [coderCopy decodeBoolForKey:@"checkSerialNumber"];
  self->_verifyFMNID = [coderCopy decodeBoolForKey:@"verifyFMNID"];
  v7 = [coderCopy decodeBoolForKey:@"verifyWithServer"];

  self->_verifyWithServer = v7;
  return self;
}

@end