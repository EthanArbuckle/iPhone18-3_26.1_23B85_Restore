@interface PKVehicleInitiatedPairingProxCardRequest
- (PKVehicleInitiatedPairingProxCardRequest)initWithCoder:(id)coder;
- (PKVehicleInitiatedPairingProxCardRequest)initWithSupportedTerminal:(id)terminal referralSource:(unint64_t)source;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKVehicleInitiatedPairingProxCardRequest

- (PKVehicleInitiatedPairingProxCardRequest)initWithSupportedTerminal:(id)terminal referralSource:(unint64_t)source
{
  terminalCopy = terminal;
  v11.receiver = self;
  v11.super_class = PKVehicleInitiatedPairingProxCardRequest;
  v8 = [(PKProxCardRequest *)&v11 initWithProxCardType:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_supportedTerminal, terminal);
    v9->_referralSource = source;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKVehicleInitiatedPairingProxCardRequest;
  coderCopy = coder;
  [(PKProxCardRequest *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_supportedTerminal forKey:{@"supportedTerminal", v6.receiver, v6.super_class}];
  v5 = PKSubcredentialPairingReferralSourceToString(self->_referralSource);
  [coderCopy encodeObject:v5 forKey:@"referralSource"];
}

- (PKVehicleInitiatedPairingProxCardRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKVehicleInitiatedPairingProxCardRequest;
  v5 = [(PKProxCardRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedTerminal"];
    supportedTerminal = v5->_supportedTerminal;
    v5->_supportedTerminal = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referralSource"];
    v5->_referralSource = PKSubcredentialPairingReferralSourceFromString(v8);
  }

  return v5;
}

@end