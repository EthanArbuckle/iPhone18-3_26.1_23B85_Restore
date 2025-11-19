@interface TransparencyIDSRegistrationData
- (TransparencyIDSRegistrationData)initWithApplication:(id)a3 registrationData:(id)a4;
- (TransparencyIDSRegistrationData)initWithCoder:(id)a3;
- (id)diagnosticsJsonDictionary;
- (id)humanDiagnosticsString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransparencyIDSRegistrationData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyIDSRegistrationData *)self application];
  [v4 encodeObject:v5 forKey:@"application"];

  v6 = [(TransparencyIDSRegistrationData *)self tbsKTIDSRegistrationData];
  [v4 encodeObject:v6 forKey:@"registrationData"];

  v7 = [(TransparencyIDSRegistrationData *)self signature];
  [v4 encodeObject:v7 forKey:@"signature"];

  v8 = [(TransparencyIDSRegistrationData *)self publicKey];
  [v4 encodeObject:v8 forKey:@"publicKey"];

  v9 = [(TransparencyIDSRegistrationData *)self pushToken];
  [v4 encodeObject:v9 forKey:@"pushToken"];

  v10 = [(TransparencyIDSRegistrationData *)self state];
  [v4 encodeObject:v10 forKey:@"state"];

  v11 = [(TransparencyIDSRegistrationData *)self error];
  [v4 encodeObject:v11 forKey:@"error"];

  v12 = [(TransparencyIDSRegistrationData *)self createdAt];
  [v4 encodeObject:v12 forKey:@"createdAt"];

  v13 = [(TransparencyIDSRegistrationData *)self signedAt];
  [v4 encodeObject:v13 forKey:@"signedAt"];

  v14 = [(TransparencyIDSRegistrationData *)self uploadedToCKAt];
  [v4 encodeObject:v14 forKey:@"uploadedToCKAt"];

  v15 = [(TransparencyIDSRegistrationData *)self nextRetryAt];
  [v4 encodeObject:v15 forKey:@"nextRetryAt"];

  v16 = [(TransparencyIDSRegistrationData *)self orderedTimestamp];
  [v4 encodeObject:v16 forKey:@"orderedTimestamp"];

  v17 = [(TransparencyIDSRegistrationData *)self altDSID];
  [v4 encodeObject:v17 forKey:@"altDSID"];

  v18 = [(TransparencyIDSRegistrationData *)self dsid];
  [v4 encodeObject:v18 forKey:@"dsid"];
}

- (TransparencyIDSRegistrationData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationData"];
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
    v21 = 0;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    [(TransparencyIDSRegistrationData *)self setSignature:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    [(TransparencyIDSRegistrationData *)self setPublicKey:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(TransparencyIDSRegistrationData *)self setPushToken:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    [(TransparencyIDSRegistrationData *)self setState:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    [(TransparencyIDSRegistrationData *)self setError:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdAt"];
    [(TransparencyIDSRegistrationData *)self setCreatedAt:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedAt"];
    [(TransparencyIDSRegistrationData *)self setSignedAt:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadedToCKAt"];
    [(TransparencyIDSRegistrationData *)self setUploadedToCKAt:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nextRetryAt"];
    [(TransparencyIDSRegistrationData *)self setNextRetryAt:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orderedTimestamp"];
    [(TransparencyIDSRegistrationData *)self setOrderedTimestamp:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    [(TransparencyIDSRegistrationData *)self setAltDSID:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    [(TransparencyIDSRegistrationData *)self setDsid:v20];

    self = self;
    v21 = self;
  }

  return v21;
}

- (TransparencyIDSRegistrationData)initWithApplication:(id)a3 registrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TransparencyIDSRegistrationData;
  v8 = [(TransparencyIDSRegistrationData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyIDSRegistrationData *)v8 setApplication:v6];
    [(TransparencyIDSRegistrationData *)v9 setTbsKTIDSRegistrationData:v7];
    [(TransparencyIDSRegistrationData *)v9 setPushToken:0];
    v10 = v9;
  }

  return v9;
}

- (id)humanDiagnosticsString
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = [(TransparencyIDSRegistrationData *)self application];
  v15 = [(TransparencyIDSRegistrationData *)self signature];
  v4 = [(TransparencyIDSRegistrationData *)self createdAt];
  v5 = [v4 description];
  v6 = [(TransparencyIDSRegistrationData *)self signedAt];
  v7 = [v6 description];
  v8 = [(TransparencyIDSRegistrationData *)self altDSID];
  v9 = [(TransparencyIDSRegistrationData *)self dsid];
  v10 = [(TransparencyIDSRegistrationData *)self pushToken];
  v11 = [v10 kt_hexString];
  v12 = [v14 stringWithFormat:@"app: %@ sig: %d created: %@ signed: %@ altDSID: %@[%@] push: %@", v3, v15 != 0, v5, v7, v8, v9, v11];

  return v12;
}

- (id)diagnosticsJsonDictionary
{
  v36[10] = *MEMORY[0x1E69E9840];
  v35[0] = @"app";
  v34 = [(TransparencyIDSRegistrationData *)self application];
  v36[0] = v34;
  v35[1] = @"signature";
  v33 = [(TransparencyIDSRegistrationData *)self signature];
  v32 = [v33 kt_hexString];
  v36[1] = v32;
  v35[2] = @"tbs";
  v31 = [(TransparencyIDSRegistrationData *)self tbsKTIDSRegistrationData];
  v3 = [v31 kt_hexString];
  v30 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"-";
  }

  v36[2] = v4;
  v35[3] = @"createdAt";
  v29 = [(TransparencyIDSRegistrationData *)self createdAt];
  v5 = [v29 description];
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
  v28 = [(TransparencyIDSRegistrationData *)self signedAt];
  v8 = [v28 description];
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
  v11 = [(TransparencyIDSRegistrationData *)self uploadedToCKAt];
  v12 = [v11 description];
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
  v15 = [(TransparencyIDSRegistrationData *)self publicKey];
  v16 = [v15 kt_hexString];
  v36[6] = v16;
  v35[7] = @"altDSID";
  v17 = [(TransparencyIDSRegistrationData *)self altDSID];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"-";
  }

  v36[7] = v19;
  v35[8] = @"dsid";
  v20 = [(TransparencyIDSRegistrationData *)self dsid];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"-";
  }

  v36[8] = v22;
  v35[9] = @"pushToken";
  v23 = [(TransparencyIDSRegistrationData *)self pushToken];
  v24 = [v23 kt_hexString];
  v36[9] = v24;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:10];

  v25 = *MEMORY[0x1E69E9840];

  return v27;
}

@end