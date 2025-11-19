@interface SPRVASRequest
- (SPRVASRequest)initWithCoder:(id)a3;
- (SPRVASRequest)initWithVasTerminalProtocol:(id)a3 merchantId:(id)a4 vasUrl:(id)a5 vasFilter:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRVASRequest

- (SPRVASRequest)initWithVasTerminalProtocol:(id)a3 merchantId:(id)a4 vasUrl:(id)a5 vasFilter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  vasTerminalProtocol = self->_vasTerminalProtocol;
  self->_vasTerminalProtocol = v10;
  v15 = v10;

  merchantId = self->_merchantId;
  self->_merchantId = v11;
  v17 = v11;

  vasUrl = self->_vasUrl;
  self->_vasUrl = v12;
  v19 = v12;

  vasFilter = self->_vasFilter;
  self->_vasFilter = v13;

  return self;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v13 = *&self->_vasTerminalProtocol;
  vasUrl = self->_vasUrl;
  v7 = objc_msgSend_asHexString(self->_vasFilter, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v5, v8, @"{vasTerminalProtocol=%@, merchantId=%@, vasUrl=%@, vasFilter=%@}", v9, v10, v13, vasUrl, v7);

  return v11;
}

- (SPRVASRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"vasTerminalProtocol", v7);
  vasTerminalProtocol = self->_vasTerminalProtocol;
  self->_vasTerminalProtocol = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"merchantId", v12);
  merchantId = self->_merchantId;
  self->_merchantId = v13;

  v15 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"vasUrl", v17);
  vasUrl = self->_vasUrl;
  self->_vasUrl = v18;

  v20 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"vasFilter", v22);

  vasFilter = self->_vasFilter;
  self->_vasFilter = v23;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  vasTerminalProtocol = self->_vasTerminalProtocol;
  v13 = a3;
  objc_msgSend_encodeObject_forKey_(v13, v5, vasTerminalProtocol, @"vasTerminalProtocol", v6);
  objc_msgSend_encodeObject_forKey_(v13, v7, self->_merchantId, @"merchantId", v8);
  objc_msgSend_encodeObject_forKey_(v13, v9, self->_vasUrl, @"vasUrl", v10);
  objc_msgSend_encodeObject_forKey_(v13, v11, self->_vasFilter, @"vasFilter", v12);
}

@end