@interface SEEndPointBindingAttestationRequestItems
+ (id)withSubCAAttestation:(id)attestation casdECDSACertificate:(id)certificate casdRSACertificate:(id)aCertificate;
- (SEEndPointBindingAttestationRequestItems)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEEndPointBindingAttestationRequestItems

+ (id)withSubCAAttestation:(id)attestation casdECDSACertificate:(id)certificate casdRSACertificate:(id)aCertificate
{
  aCertificateCopy = aCertificate;
  certificateCopy = certificate;
  attestationCopy = attestation;
  v10 = objc_opt_new();
  [v10 setSubCAAttestation:attestationCopy];

  [v10 setCasdECDSACertificate:certificateCopy];
  [v10 setCasdRSACertificate:aCertificateCopy];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  subCAAttestation = [(SEEndPointBindingAttestationRequestItems *)self subCAAttestation];
  asHexString = [subCAAttestation asHexString];
  casdECDSACertificate = [(SEEndPointBindingAttestationRequestItems *)self casdECDSACertificate];
  asHexString2 = [casdECDSACertificate asHexString];
  casdRSACertificate = [(SEEndPointBindingAttestationRequestItems *)self casdRSACertificate];
  v9 = [v3 stringWithFormat:@"{\n\tsubCAAttestation : %@, \n\tcasdECDACertificate : %@\n, \n\tcasdRSACertificate : %@\n}", asHexString, asHexString2, casdRSACertificate];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  subCAAttestation = [(SEEndPointBindingAttestationRequestItems *)self subCAAttestation];
  [coderCopy encodeObject:subCAAttestation forKey:@"subCAAttestation"];

  casdECDSACertificate = [(SEEndPointBindingAttestationRequestItems *)self casdECDSACertificate];
  [coderCopy encodeObject:casdECDSACertificate forKey:@"casdECDSACertificate"];

  casdRSACertificate = [(SEEndPointBindingAttestationRequestItems *)self casdRSACertificate];
  [coderCopy encodeObject:casdRSACertificate forKey:@"casdRSACertificate"];
}

- (SEEndPointBindingAttestationRequestItems)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SEEndPointBindingAttestationRequestItems;
  v5 = [(SEEndPointBindingAttestationRequestItems *)&v17 init];
  v6 = v5;
  if (v5)
  {
    subCAAttestation = [(SEEndPointBindingAttestationRequestItems *)v5 subCAAttestation];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subCAAttestation"];
    subCAAttestation = v6->_subCAAttestation;
    v6->_subCAAttestation = v8;

    casdECDSACertificate = [(SEEndPointBindingAttestationRequestItems *)v6 casdECDSACertificate];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"casdECDSACertificate"];
    casdECDSACertificate = v6->_casdECDSACertificate;
    v6->_casdECDSACertificate = v11;

    casdRSACertificate = [(SEEndPointBindingAttestationRequestItems *)v6 casdRSACertificate];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"casdRSACertificate"];
    casdRSACertificate = v6->_casdRSACertificate;
    v6->_casdRSACertificate = v14;
  }

  return v6;
}

@end