@interface SPRInstallData
- (SPRInstallData)initWithCoder:(id)coder;
- (SPRInstallData)initWithKernelsInstalled:(id)installed countryCode:(id)code safStorageDuration:(int64_t)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRInstallData

- (SPRInstallData)initWithKernelsInstalled:(id)installed countryCode:(id)code safStorageDuration:(int64_t)duration
{
  installedCopy = installed;
  codeCopy = code;
  kernelsInstalled = self->_kernelsInstalled;
  self->_kernelsInstalled = installedCopy;
  v11 = installedCopy;

  countryCode = self->_countryCode;
  self->_countryCode = codeCopy;

  self->_safStorageDuration = duration;
  return self;
}

- (SPRInstallData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v6, v5, @"kernelsInstalled", v7);
  kernelsInstalled = self->_kernelsInstalled;
  self->_kernelsInstalled = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"countryCode", v12);
  countryCode = self->_countryCode;
  self->_countryCode = v13;

  v18 = objc_msgSend_decodeIntegerForKey_(coderCopy, v15, @"safStorageDuration", v16, v17);
  self->_safStorageDuration = v18;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  kernelsInstalled = self->_kernelsInstalled;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, kernelsInstalled, @"kernelsInstalled", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_countryCode, @"countryCode", v8);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v9, self->_safStorageDuration, @"safStorageDuration", v10);
}

@end