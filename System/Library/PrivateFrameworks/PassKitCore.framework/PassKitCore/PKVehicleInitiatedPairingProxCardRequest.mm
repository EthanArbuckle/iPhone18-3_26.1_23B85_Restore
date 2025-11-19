@interface PKVehicleInitiatedPairingProxCardRequest
- (PKVehicleInitiatedPairingProxCardRequest)initWithCoder:(id)a3;
- (PKVehicleInitiatedPairingProxCardRequest)initWithSupportedTerminal:(id)a3 referralSource:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKVehicleInitiatedPairingProxCardRequest

- (PKVehicleInitiatedPairingProxCardRequest)initWithSupportedTerminal:(id)a3 referralSource:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKVehicleInitiatedPairingProxCardRequest;
  v8 = [(PKProxCardRequest *)&v11 initWithProxCardType:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_supportedTerminal, a3);
    v9->_referralSource = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKVehicleInitiatedPairingProxCardRequest;
  v4 = a3;
  [(PKProxCardRequest *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_supportedTerminal forKey:{@"supportedTerminal", v6.receiver, v6.super_class}];
  v5 = PKSubcredentialPairingReferralSourceToString(self->_referralSource);
  [v4 encodeObject:v5 forKey:@"referralSource"];
}

- (PKVehicleInitiatedPairingProxCardRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKVehicleInitiatedPairingProxCardRequest;
  v5 = [(PKProxCardRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedTerminal"];
    supportedTerminal = v5->_supportedTerminal;
    v5->_supportedTerminal = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referralSource"];
    v5->_referralSource = PKSubcredentialPairingReferralSourceFromString(v8);
  }

  return v5;
}

@end