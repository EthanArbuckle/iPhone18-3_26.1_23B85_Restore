@interface SPPairingState
- (SPPairingState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPPairingState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPPairingState alloc];
  v5 = [(SPPairingState *)self status];
  v6 = [(SPPairingState *)self beaconIdentifier];
  v7 = [(SPPairingState *)self macAddress];
  v8 = [(SPPairingState *)self pairingEpoch];
  v9 = [(SPPairingState *)v4 initWithStatus:v5 beaconIdentifier:v6 macAddress:v7 pairingEpoch:v8 partId:[(SPPairingState *)self partId] pairingType:[(SPPairingState *)self pairingType]];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v6 = a3;
  [v6 encodeInteger:status forKey:@"status"];
  [v6 encodeObject:self->_beaconIdentifier forKey:@"beaconIdentifier"];
  [v6 encodeObject:self->_macAddress forKey:@"macAddress"];
  [v6 encodeObject:self->_pairingEpoch forKey:@"pairingEpoch"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_partId];
  [v6 encodeObject:v5 forKey:@"partId"];

  [v6 encodeInteger:self->_pairingType forKey:@"pairingType"];
}

- (SPPairingState)initWithCoder:(id)a3
{
  v4 = a3;
  self->_status = [v4 decodeIntegerForKey:@"status"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingEpoch"];
  pairingEpoch = self->_pairingEpoch;
  self->_pairingEpoch = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partId"];
  self->_partId = [v11 unsignedIntegerValue];

  v12 = [v4 decodeIntegerForKey:@"pairingType"];
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