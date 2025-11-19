@interface SEEndPointBindingAttestationRequestItems
+ (id)withSubCAAttestation:(id)a3 casdECDSACertificate:(id)a4 casdRSACertificate:(id)a5;
- (SEEndPointBindingAttestationRequestItems)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointBindingAttestationRequestItems

+ (id)withSubCAAttestation:(id)a3 casdECDSACertificate:(id)a4 casdRSACertificate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setSubCAAttestation:v9];

  [v10 setCasdECDSACertificate:v8];
  [v10 setCasdRSACertificate:v7];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SEEndPointBindingAttestationRequestItems *)self subCAAttestation];
  v5 = [v4 asHexString];
  v6 = [(SEEndPointBindingAttestationRequestItems *)self casdECDSACertificate];
  v7 = [v6 asHexString];
  v8 = [(SEEndPointBindingAttestationRequestItems *)self casdRSACertificate];
  v9 = [v3 stringWithFormat:@"{\n\tsubCAAttestation : %@, \n\tcasdECDACertificate : %@\n, \n\tcasdRSACertificate : %@\n}", v5, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SEEndPointBindingAttestationRequestItems *)self subCAAttestation];
  [v4 encodeObject:v5 forKey:@"subCAAttestation"];

  v6 = [(SEEndPointBindingAttestationRequestItems *)self casdECDSACertificate];
  [v4 encodeObject:v6 forKey:@"casdECDSACertificate"];

  v7 = [(SEEndPointBindingAttestationRequestItems *)self casdRSACertificate];
  [v4 encodeObject:v7 forKey:@"casdRSACertificate"];
}

- (SEEndPointBindingAttestationRequestItems)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SEEndPointBindingAttestationRequestItems;
  v5 = [(SEEndPointBindingAttestationRequestItems *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SEEndPointBindingAttestationRequestItems *)v5 subCAAttestation];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subCAAttestation"];
    subCAAttestation = v6->_subCAAttestation;
    v6->_subCAAttestation = v8;

    v10 = [(SEEndPointBindingAttestationRequestItems *)v6 casdECDSACertificate];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"casdECDSACertificate"];
    casdECDSACertificate = v6->_casdECDSACertificate;
    v6->_casdECDSACertificate = v11;

    v13 = [(SEEndPointBindingAttestationRequestItems *)v6 casdRSACertificate];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"casdRSACertificate"];
    casdRSACertificate = v6->_casdRSACertificate;
    v6->_casdRSACertificate = v14;
  }

  return v6;
}

@end