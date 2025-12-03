@interface SESDataAttestation
- (SESDataAttestation)initWithAppBundleID:(id)d nonce:(id)nonce signedData:(id)data signature:(id)signature;
- (SESDataAttestation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESDataAttestation

- (SESDataAttestation)initWithAppBundleID:(id)d nonce:(id)nonce signedData:(id)data signature:(id)signature
{
  dCopy = d;
  nonceCopy = nonce;
  dataCopy = data;
  signatureCopy = signature;
  v18.receiver = self;
  v18.super_class = SESDataAttestation;
  v15 = [(SESDataAttestation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appBundleID, d);
    objc_storeStrong(&v16->_nonce, nonce);
    objc_storeStrong(&v16->_signedData, data);
    objc_storeStrong(&v16->_signature, signature);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appBundleID = [(SESDataAttestation *)self appBundleID];
  [coderCopy encodeObject:appBundleID forKey:@"appBundleID"];

  nonce = [(SESDataAttestation *)self nonce];
  [coderCopy encodeObject:nonce forKey:@"nonce"];

  signedData = [(SESDataAttestation *)self signedData];
  [coderCopy encodeObject:signedData forKey:@"signedData"];

  signature = [(SESDataAttestation *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];
}

- (SESDataAttestation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SESDataAttestation;
  v5 = [(SESDataAttestation *)&v20 init];
  v6 = v5;
  if (v5)
  {
    appBundleID = [(SESDataAttestation *)v5 appBundleID];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleID"];
    appBundleID = v6->_appBundleID;
    v6->_appBundleID = v8;

    nonce = [(SESDataAttestation *)v6 nonce];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v6->_nonce;
    v6->_nonce = v11;

    signedData = [(SESDataAttestation *)v6 signedData];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v6->_signedData;
    v6->_signedData = v14;

    signature = [(SESDataAttestation *)v6 signature];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v6->_signature;
    v6->_signature = v17;
  }

  return v6;
}

@end