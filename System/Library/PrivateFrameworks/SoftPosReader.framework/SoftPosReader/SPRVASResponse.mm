@interface SPRVASResponse
- (SPRVASResponse)initWithCoder:(id)coder;
- (SPRVASResponse)initWithStatus:(unsigned __int16)status vasData:(id)data mobileToken:(id)token;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRVASResponse

- (SPRVASResponse)initWithStatus:(unsigned __int16)status vasData:(id)data mobileToken:(id)token
{
  dataCopy = data;
  tokenCopy = token;
  self->_status = status;
  vasData = self->_vasData;
  self->_vasData = dataCopy;
  v11 = dataCopy;

  mobileToken = self->_mobileToken;
  self->_mobileToken = tokenCopy;

  return self;
}

- (id)description
{
  status = self->_status;
  if (status == 36864)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_asHexString(self->_vasData, a2, v2, v3, v4);
    v12 = objc_msgSend_stringWithFormat_(v7, v9, @"{vasData=%@, mobileToken=%@}", v10, v11, v8, self->_mobileToken);
  }

  else
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"{status=%04X}", v3, v4, status);
  }

  return v12;
}

- (SPRVASResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_status = objc_msgSend_decodeIntForKey_(coderCopy, v5, @"status", v6, v7);
  v8 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"vasData", v10);
  vasData = self->_vasData;
  self->_vasData = v11;

  v13 = objc_opt_class();
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"mobileToken", v15);

  mobileToken = self->_mobileToken;
  self->_mobileToken = v16;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v5, status, @"status", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_vasData, @"vasData", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_mobileToken, @"mobileToken", v10);
}

@end