@interface ISODeviceEngagement
- (ISODeviceEngagement)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISODeviceEngagement

- (id)description
{
  version = self->_version;
  v4 = sub_10000A080(self->_ephemeralKey);
  proprietaryElements = self->_proprietaryElements;
  v6 = [NSString stringWithFormat:@"<Version=%@, COSEKey=%@, CipherSuites=%@, OriginInfos=%@ Capabilities=%@ Proprietary=%@, DeviceRetrievalMethods=%@>", version, v4, self->_cipherList, self->_originInfos, self->_capabilities, proprietaryElements, self->_deviceRetrievalMethods];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_version forKey:@"version"];
  [v6 encodeObject:self->_ephemeralKey forKey:@"ephemeralKey"];
  [v6 encodeObject:self->_cipherList forKey:@"cipherList"];
  [v6 encodeObject:self->_originInfos forKey:@"originInfos"];
  [v6 encodeObject:self->_capabilities forKey:@"capabilities"];
  proprietaryElements = self->_proprietaryElements;
  if (proprietaryElements)
  {
    v5 = proprietaryElements;
    [v6 encodeObject:v5 forKey:@"proprietaryElements"];
  }
}

- (ISODeviceEngagement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISODeviceEngagement);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  if (v5)
  {
    objc_storeStrong(&v5->_version, v6);
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralKey"];
  v8 = v7;
  if (v5)
  {
    objc_storeStrong(&v5->_ephemeralKey, v7);
    cborObj = v5->_cborObj;
    v5->_cborObj = 0;
  }

  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"cipherList"];
  v13 = v12;
  if (v5)
  {
    v14 = v12;
    v15 = [[NSMutableArray alloc] initWithArray:v14];

    cipherList = v5->_cipherList;
    v5->_cipherList = v15;

    v17 = v5->_cborObj;
    v5->_cborObj = 0;
  }

  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v18 = [NSArray arrayWithObjects:v28 count:2];
  v19 = [NSSet setWithArray:v18];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"originInfos"];
  if (v5)
  {
    objc_storeStrong(&v5->_originInfos, v20);
  }

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  if (v5)
  {
    objc_storeStrong(&v5->_capabilities, v21);
  }

  v22 = objc_opt_class();
  v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
  v24 = [v4 decodeObjectOfClasses:v23 forKey:@"proprietaryElements"];

  v25 = v24;
  if (v5)
  {
    objc_storeStrong(&v5->_proprietaryElements, v24);
    v26 = v5->_cborObj;
    v5->_cborObj = 0;
  }

  return v5;
}

@end