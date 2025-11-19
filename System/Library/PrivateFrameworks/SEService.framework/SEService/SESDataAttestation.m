@interface SESDataAttestation
- (SESDataAttestation)initWithAppBundleID:(id)a3 nonce:(id)a4 signedData:(id)a5 signature:(id)a6;
- (SESDataAttestation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESDataAttestation

- (SESDataAttestation)initWithAppBundleID:(id)a3 nonce:(id)a4 signedData:(id)a5 signature:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SESDataAttestation;
  v15 = [(SESDataAttestation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appBundleID, a3);
    objc_storeStrong(&v16->_nonce, a4);
    objc_storeStrong(&v16->_signedData, a5);
    objc_storeStrong(&v16->_signature, a6);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SESDataAttestation *)self appBundleID];
  [v4 encodeObject:v5 forKey:@"appBundleID"];

  v6 = [(SESDataAttestation *)self nonce];
  [v4 encodeObject:v6 forKey:@"nonce"];

  v7 = [(SESDataAttestation *)self signedData];
  [v4 encodeObject:v7 forKey:@"signedData"];

  v8 = [(SESDataAttestation *)self signature];
  [v4 encodeObject:v8 forKey:@"signature"];
}

- (SESDataAttestation)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SESDataAttestation;
  v5 = [(SESDataAttestation *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SESDataAttestation *)v5 appBundleID];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleID"];
    appBundleID = v6->_appBundleID;
    v6->_appBundleID = v8;

    v10 = [(SESDataAttestation *)v6 nonce];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v6->_nonce;
    v6->_nonce = v11;

    v13 = [(SESDataAttestation *)v6 signedData];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v6->_signedData;
    v6->_signedData = v14;

    v16 = [(SESDataAttestation *)v6 signature];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v6->_signature;
    v6->_signature = v17;
  }

  return v6;
}

@end