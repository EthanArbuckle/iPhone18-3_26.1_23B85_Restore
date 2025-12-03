@interface TransparencyIDSRegistrationData
- (TransparencyIDSRegistrationData)initWithApplication:(id)application registrationData:(id)data;
- (TransparencyIDSRegistrationData)initWithCoder:(id)coder;
- (id)diagnosticsJsonDictionary;
- (id)humanDiagnosticsString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransparencyIDSRegistrationData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  application = [(TransparencyIDSRegistrationData *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  tbsKTIDSRegistrationData = [(TransparencyIDSRegistrationData *)self tbsKTIDSRegistrationData];
  [coderCopy encodeObject:tbsKTIDSRegistrationData forKey:@"registrationData"];

  signature = [(TransparencyIDSRegistrationData *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  publicKey = [(TransparencyIDSRegistrationData *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  pushToken = [(TransparencyIDSRegistrationData *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"pushToken"];

  state = [(TransparencyIDSRegistrationData *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  error = [(TransparencyIDSRegistrationData *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  createdAt = [(TransparencyIDSRegistrationData *)self createdAt];
  [coderCopy encodeObject:createdAt forKey:@"createdAt"];

  signedAt = [(TransparencyIDSRegistrationData *)self signedAt];
  [coderCopy encodeObject:signedAt forKey:@"signedAt"];

  uploadedToCKAt = [(TransparencyIDSRegistrationData *)self uploadedToCKAt];
  [coderCopy encodeObject:uploadedToCKAt forKey:@"uploadedToCKAt"];

  nextRetryAt = [(TransparencyIDSRegistrationData *)self nextRetryAt];
  [coderCopy encodeObject:nextRetryAt forKey:@"nextRetryAt"];

  orderedTimestamp = [(TransparencyIDSRegistrationData *)self orderedTimestamp];
  [coderCopy encodeObject:orderedTimestamp forKey:@"orderedTimestamp"];

  altDSID = [(TransparencyIDSRegistrationData *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  dsid = [(TransparencyIDSRegistrationData *)self dsid];
  [coderCopy encodeObject:dsid forKey:@"dsid"];
}

- (TransparencyIDSRegistrationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registrationData"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || (self = [(TransparencyIDSRegistrationData *)self initWithApplication:v5 registrationData:v6]) == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    [(TransparencyIDSRegistrationData *)self setSignature:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    [(TransparencyIDSRegistrationData *)self setPublicKey:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(TransparencyIDSRegistrationData *)self setPushToken:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    [(TransparencyIDSRegistrationData *)self setState:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    [(TransparencyIDSRegistrationData *)self setError:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdAt"];
    [(TransparencyIDSRegistrationData *)self setCreatedAt:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedAt"];
    [(TransparencyIDSRegistrationData *)self setSignedAt:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadedToCKAt"];
    [(TransparencyIDSRegistrationData *)self setUploadedToCKAt:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextRetryAt"];
    [(TransparencyIDSRegistrationData *)self setNextRetryAt:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderedTimestamp"];
    [(TransparencyIDSRegistrationData *)self setOrderedTimestamp:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    [(TransparencyIDSRegistrationData *)self setAltDSID:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    [(TransparencyIDSRegistrationData *)self setDsid:v20];

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (TransparencyIDSRegistrationData)initWithApplication:(id)application registrationData:(id)data
{
  applicationCopy = application;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = TransparencyIDSRegistrationData;
  v8 = [(TransparencyIDSRegistrationData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyIDSRegistrationData *)v8 setApplication:applicationCopy];
    [(TransparencyIDSRegistrationData *)v9 setTbsKTIDSRegistrationData:dataCopy];
    [(TransparencyIDSRegistrationData *)v9 setPushToken:0];
    v10 = v9;
  }

  return v9;
}

- (id)humanDiagnosticsString
{
  v14 = MEMORY[0x1E696AEC0];
  application = [(TransparencyIDSRegistrationData *)self application];
  signature = [(TransparencyIDSRegistrationData *)self signature];
  createdAt = [(TransparencyIDSRegistrationData *)self createdAt];
  v5 = [createdAt description];
  signedAt = [(TransparencyIDSRegistrationData *)self signedAt];
  v7 = [signedAt description];
  altDSID = [(TransparencyIDSRegistrationData *)self altDSID];
  dsid = [(TransparencyIDSRegistrationData *)self dsid];
  pushToken = [(TransparencyIDSRegistrationData *)self pushToken];
  kt_hexString = [pushToken kt_hexString];
  v12 = [v14 stringWithFormat:@"app: %@ sig: %d created: %@ signed: %@ altDSID: %@[%@] push: %@", application, signature != 0, v5, v7, altDSID, dsid, kt_hexString];

  return v12;
}

- (id)diagnosticsJsonDictionary
{
  v36[10] = *MEMORY[0x1E69E9840];
  v35[0] = @"app";
  application = [(TransparencyIDSRegistrationData *)self application];
  v36[0] = application;
  v35[1] = @"signature";
  signature = [(TransparencyIDSRegistrationData *)self signature];
  kt_hexString = [signature kt_hexString];
  v36[1] = kt_hexString;
  v35[2] = @"tbs";
  tbsKTIDSRegistrationData = [(TransparencyIDSRegistrationData *)self tbsKTIDSRegistrationData];
  kt_hexString2 = [tbsKTIDSRegistrationData kt_hexString];
  v30 = kt_hexString2;
  if (kt_hexString2)
  {
    v4 = kt_hexString2;
  }

  else
  {
    v4 = @"-";
  }

  v36[2] = v4;
  v35[3] = @"createdAt";
  createdAt = [(TransparencyIDSRegistrationData *)self createdAt];
  v5 = [createdAt description];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"-";
  }

  v36[3] = v7;
  v35[4] = @"signedAt";
  signedAt = [(TransparencyIDSRegistrationData *)self signedAt];
  v8 = [signedAt description];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"-";
  }

  v36[4] = v10;
  v35[5] = @"uploadedToCKAt";
  uploadedToCKAt = [(TransparencyIDSRegistrationData *)self uploadedToCKAt];
  v12 = [uploadedToCKAt description];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"-";
  }

  v36[5] = v14;
  v35[6] = @"publicKey";
  publicKey = [(TransparencyIDSRegistrationData *)self publicKey];
  kt_hexString3 = [publicKey kt_hexString];
  v36[6] = kt_hexString3;
  v35[7] = @"altDSID";
  altDSID = [(TransparencyIDSRegistrationData *)self altDSID];
  v18 = altDSID;
  if (altDSID)
  {
    v19 = altDSID;
  }

  else
  {
    v19 = @"-";
  }

  v36[7] = v19;
  v35[8] = @"dsid";
  dsid = [(TransparencyIDSRegistrationData *)self dsid];
  v21 = dsid;
  if (dsid)
  {
    v22 = dsid;
  }

  else
  {
    v22 = @"-";
  }

  v36[8] = v22;
  v35[9] = @"pushToken";
  pushToken = [(TransparencyIDSRegistrationData *)self pushToken];
  kt_hexString4 = [pushToken kt_hexString];
  v36[9] = kt_hexString4;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:10];

  v25 = *MEMORY[0x1E69E9840];

  return v27;
}

@end