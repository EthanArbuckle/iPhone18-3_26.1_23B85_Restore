@interface SEEndPointSignatureResponse
+ (id)responseWithSignedData:(id)data signature:(id)signature;
+ (id)signature:(id)signature;
- (SEEndPointSignatureResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEEndPointSignatureResponse

+ (id)responseWithSignedData:(id)data signature:(id)signature
{
  dataCopy = data;
  signatureCopy = signature;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setSignedData:dataCopy];
    [v8 setSignature:signatureCopy];
  }

  return v8;
}

+ (id)signature:(id)signature
{
  signatureCopy = signature;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setSignature:signatureCopy];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  signedData = [(SEEndPointSignatureResponse *)self signedData];
  asHexString = [signedData asHexString];
  signature = [(SEEndPointSignatureResponse *)self signature];
  asHexString2 = [signature asHexString];
  v8 = [v3 stringWithFormat:@"{\n\tsignedData : %@, \n\tsignature : %@\n}", asHexString, asHexString2];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signedData = [(SEEndPointSignatureResponse *)self signedData];
  [coderCopy encodeObject:signedData forKey:@"signedData"];

  signature = [(SEEndPointSignatureResponse *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];
}

- (SEEndPointSignatureResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SEEndPointSignatureResponse;
  v5 = [(SEEndPointSignatureResponse *)&v14 init];
  v6 = v5;
  if (v5)
  {
    signedData = [(SEEndPointSignatureResponse *)v5 signedData];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v6->_signedData;
    v6->_signedData = v8;

    signature = [(SEEndPointSignatureResponse *)v6 signature];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v6->_signature;
    v6->_signature = v11;
  }

  return v6;
}

@end