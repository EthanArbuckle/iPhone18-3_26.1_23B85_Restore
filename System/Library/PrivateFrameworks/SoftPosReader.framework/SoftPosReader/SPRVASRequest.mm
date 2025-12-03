@interface SPRVASRequest
- (SPRVASRequest)initWithCoder:(id)coder;
- (SPRVASRequest)initWithVasTerminalProtocol:(id)protocol merchantId:(id)id vasUrl:(id)url vasFilter:(id)filter;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRVASRequest

- (SPRVASRequest)initWithVasTerminalProtocol:(id)protocol merchantId:(id)id vasUrl:(id)url vasFilter:(id)filter
{
  protocolCopy = protocol;
  idCopy = id;
  urlCopy = url;
  filterCopy = filter;
  vasTerminalProtocol = self->_vasTerminalProtocol;
  self->_vasTerminalProtocol = protocolCopy;
  v15 = protocolCopy;

  merchantId = self->_merchantId;
  self->_merchantId = idCopy;
  v17 = idCopy;

  vasUrl = self->_vasUrl;
  self->_vasUrl = urlCopy;
  v19 = urlCopy;

  vasFilter = self->_vasFilter;
  self->_vasFilter = filterCopy;

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

- (SPRVASRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"vasTerminalProtocol", v7);
  vasTerminalProtocol = self->_vasTerminalProtocol;
  self->_vasTerminalProtocol = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"merchantId", v12);
  merchantId = self->_merchantId;
  self->_merchantId = v13;

  v15 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"vasUrl", v17);
  vasUrl = self->_vasUrl;
  self->_vasUrl = v18;

  v20 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"vasFilter", v22);

  vasFilter = self->_vasFilter;
  self->_vasFilter = v23;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  vasTerminalProtocol = self->_vasTerminalProtocol;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, vasTerminalProtocol, @"vasTerminalProtocol", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_merchantId, @"merchantId", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_vasUrl, @"vasUrl", v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_vasFilter, @"vasFilter", v12);
}

@end