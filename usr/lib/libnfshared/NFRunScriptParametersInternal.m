@interface NFRunScriptParametersInternal
- (NFRunScriptParametersInternal)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFRunScriptParametersInternal

- (void)encodeWithCoder:(id)a3
{
  seid = self->_seid;
  v13 = a3;
  objc_msgSend_encodeObject_forKey_(v13, v5, seid, @"seid");
  objc_msgSend_encodeBool_forKey_(v13, v6, self->_checkAIDAllowList, @"checkAIDAllowList");
  objc_msgSend_encodeObject_forKey_(v13, v7, self->_AIDAllowList, @"AIDAllowList");
  objc_msgSend_encodeBool_forKey_(v13, v8, self->_initialSelectBeforeRun, @"initialSelectBeforeRun");
  objc_msgSend_encodeBool_forKey_(v13, v9, self->_includeAPDUDuration, @"includeAPDUDuration");
  objc_msgSend_encodeBool_forKey_(v13, v10, self->_deactivateAllApps, @"deactivateAllApps");
  objc_msgSend_encodeBool_forKey_(v13, v11, self->_toSystemOS, @"systemOS");
  objc_msgSend_encodeBool_forKey_(v13, v12, self->_disableCompletionNotification, @"disableCompletionNotification");
}

- (NFRunScriptParametersInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NFRunScriptParametersInternal;
  v5 = [(NFRunScriptParametersInternal *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"seid");
    seid = v5->_seid;
    v5->_seid = v8;

    v5->_checkAIDAllowList = objc_msgSend_decodeBoolForKey_(v4, v10, @"checkAIDAllowList");
    v11 = objc_opt_class();
    v13 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v12, v4, v11, @"AIDAllowList");
    AIDAllowList = v5->_AIDAllowList;
    v5->_AIDAllowList = v13;

    v5->_initialSelectBeforeRun = objc_msgSend_decodeBoolForKey_(v4, v15, @"initialSelectBeforeRun");
    v5->_includeAPDUDuration = objc_msgSend_decodeBoolForKey_(v4, v16, @"includeAPDUDuration");
    v5->_deactivateAllApps = objc_msgSend_decodeBoolForKey_(v4, v17, @"deactivateAllApps");
    v5->_toSystemOS = objc_msgSend_decodeBoolForKey_(v4, v18, @"systemOS");
    v5->_disableCompletionNotification = objc_msgSend_decodeBoolForKey_(v4, v19, @"disableCompletionNotification");
  }

  return v5;
}

@end