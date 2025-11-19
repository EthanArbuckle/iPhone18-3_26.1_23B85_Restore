@interface SEEndPointSignatureResponse
+ (id)responseWithSignedData:(id)a3 signature:(id)a4;
+ (id)signature:(id)a3;
- (SEEndPointSignatureResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointSignatureResponse

+ (id)responseWithSignedData:(id)a3 signature:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setSignedData:v5];
    [v8 setSignature:v6];
  }

  return v8;
}

+ (id)signature:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setSignature:v3];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SEEndPointSignatureResponse *)self signedData];
  v5 = [v4 asHexString];
  v6 = [(SEEndPointSignatureResponse *)self signature];
  v7 = [v6 asHexString];
  v8 = [v3 stringWithFormat:@"{\n\tsignedData : %@, \n\tsignature : %@\n}", v5, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SEEndPointSignatureResponse *)self signedData];
  [v4 encodeObject:v5 forKey:@"signedData"];

  v6 = [(SEEndPointSignatureResponse *)self signature];
  [v4 encodeObject:v6 forKey:@"signature"];
}

- (SEEndPointSignatureResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SEEndPointSignatureResponse;
  v5 = [(SEEndPointSignatureResponse *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SEEndPointSignatureResponse *)v5 signedData];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v6->_signedData;
    v6->_signedData = v8;

    v10 = [(SEEndPointSignatureResponse *)v6 signature];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v6->_signature;
    v6->_signature = v11;
  }

  return v6;
}

@end