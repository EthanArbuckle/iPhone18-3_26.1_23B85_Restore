@interface NFRunScriptParametersInternal
- (NFRunScriptParametersInternal)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFRunScriptParametersInternal

- (void)encodeWithCoder:(id)coder
{
  seid = self->_seid;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, seid, @"seid");
  objc_msgSend_encodeBool_forKey_(coderCopy, v6, self->_checkAIDAllowList, @"checkAIDAllowList");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_AIDAllowList, @"AIDAllowList");
  objc_msgSend_encodeBool_forKey_(coderCopy, v8, self->_initialSelectBeforeRun, @"initialSelectBeforeRun");
  objc_msgSend_encodeBool_forKey_(coderCopy, v9, self->_includeAPDUDuration, @"includeAPDUDuration");
  objc_msgSend_encodeBool_forKey_(coderCopy, v10, self->_deactivateAllApps, @"deactivateAllApps");
  objc_msgSend_encodeBool_forKey_(coderCopy, v11, self->_toSystemOS, @"systemOS");
  objc_msgSend_encodeBool_forKey_(coderCopy, v12, self->_disableCompletionNotification, @"disableCompletionNotification");
}

- (NFRunScriptParametersInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NFRunScriptParametersInternal;
  v5 = [(NFRunScriptParametersInternal *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"seid");
    seid = v5->_seid;
    v5->_seid = v8;

    v5->_checkAIDAllowList = objc_msgSend_decodeBoolForKey_(coderCopy, v10, @"checkAIDAllowList");
    v11 = objc_opt_class();
    v13 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v12, coderCopy, v11, @"AIDAllowList");
    AIDAllowList = v5->_AIDAllowList;
    v5->_AIDAllowList = v13;

    v5->_initialSelectBeforeRun = objc_msgSend_decodeBoolForKey_(coderCopy, v15, @"initialSelectBeforeRun");
    v5->_includeAPDUDuration = objc_msgSend_decodeBoolForKey_(coderCopy, v16, @"includeAPDUDuration");
    v5->_deactivateAllApps = objc_msgSend_decodeBoolForKey_(coderCopy, v17, @"deactivateAllApps");
    v5->_toSystemOS = objc_msgSend_decodeBoolForKey_(coderCopy, v18, @"systemOS");
    v5->_disableCompletionNotification = objc_msgSend_decodeBoolForKey_(coderCopy, v19, @"disableCompletionNotification");
  }

  return v5;
}

@end