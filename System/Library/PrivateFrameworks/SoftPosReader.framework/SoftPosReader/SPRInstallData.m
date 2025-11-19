@interface SPRInstallData
- (SPRInstallData)initWithCoder:(id)a3;
- (SPRInstallData)initWithKernelsInstalled:(id)a3 countryCode:(id)a4 safStorageDuration:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRInstallData

- (SPRInstallData)initWithKernelsInstalled:(id)a3 countryCode:(id)a4 safStorageDuration:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  kernelsInstalled = self->_kernelsInstalled;
  self->_kernelsInstalled = v8;
  v11 = v8;

  countryCode = self->_countryCode;
  self->_countryCode = v9;

  self->_safStorageDuration = a5;
  return self;
}

- (SPRInstallData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(v4, v6, v5, @"kernelsInstalled", v7);
  kernelsInstalled = self->_kernelsInstalled;
  self->_kernelsInstalled = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"countryCode", v12);
  countryCode = self->_countryCode;
  self->_countryCode = v13;

  v18 = objc_msgSend_decodeIntegerForKey_(v4, v15, @"safStorageDuration", v16, v17);
  self->_safStorageDuration = v18;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  kernelsInstalled = self->_kernelsInstalled;
  v11 = a3;
  objc_msgSend_encodeObject_forKey_(v11, v5, kernelsInstalled, @"kernelsInstalled", v6);
  objc_msgSend_encodeObject_forKey_(v11, v7, self->_countryCode, @"countryCode", v8);
  objc_msgSend_encodeInteger_forKey_(v11, v9, self->_safStorageDuration, @"safStorageDuration", v10);
}

@end