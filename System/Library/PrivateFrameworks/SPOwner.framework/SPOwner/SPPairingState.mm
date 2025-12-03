@interface SPPairingState
- (SPPairingState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPPairingState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPPairingState alloc];
  status = [(SPPairingState *)self status];
  beaconIdentifier = [(SPPairingState *)self beaconIdentifier];
  macAddress = [(SPPairingState *)self macAddress];
  pairingEpoch = [(SPPairingState *)self pairingEpoch];
  v9 = [(SPPairingState *)v4 initWithStatus:status beaconIdentifier:beaconIdentifier macAddress:macAddress pairingEpoch:pairingEpoch partId:[(SPPairingState *)self partId] pairingType:[(SPPairingState *)self pairingType]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  [coderCopy encodeInteger:status forKey:@"status"];
  [coderCopy encodeObject:self->_beaconIdentifier forKey:@"beaconIdentifier"];
  [coderCopy encodeObject:self->_macAddress forKey:@"macAddress"];
  [coderCopy encodeObject:self->_pairingEpoch forKey:@"pairingEpoch"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_partId];
  [coderCopy encodeObject:v5 forKey:@"partId"];

  [coderCopy encodeInteger:self->_pairingType forKey:@"pairingType"];
}

- (SPPairingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_status = [coderCopy decodeIntegerForKey:@"status"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingEpoch"];
  pairingEpoch = self->_pairingEpoch;
  self->_pairingEpoch = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partId"];
  self->_partId = [v11 unsignedIntegerValue];

  v12 = [coderCopy decodeIntegerForKey:@"pairingType"];
  self->_pairingType = v12;
  return self;
}

- (id)description
{
  status = self->_status;
  if (status > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279B58D20[status];
  }

  v4 = self->_pairingType + 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_279B58D38[v4];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p state: %@ beaconId: %@ macAddress: %@ pairingEpoch: %@ partId: %ld pairingType: %@>", objc_opt_class(), self, v3, self->_beaconIdentifier, self->_macAddress, self->_pairingEpoch, self->_partId, v5];
}

@end