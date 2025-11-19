@interface NFReaderSessionPollConfig
+ (id)pollConfigWithTypeFSystemCode:(id)a3;
- (NFReaderSessionPollConfig)initWithCoder:(id)a3;
- (NFReaderSessionPollConfig)initWithType:(unint64_t)a3;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setEcp:(id)a3;
@end

@implementation NFReaderSessionPollConfig

- (NFReaderSessionPollConfig)initWithType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = NFReaderSessionPollConfig;
  v4 = [(NFReaderSessionPollConfig *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_technology = 23;
    v4->_fieldDetect = 1;
    v4->_type = a3;
    v6 = v4;
  }

  return v5;
}

+ (id)pollConfigWithTypeFSystemCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_setTechnology_(v4, v5, 4);
  objc_msgSend_setTypeFSystemCode_(v4, v6, v3);

  return v4;
}

- (void)setEcp:(id)a3
{
  v4 = a3 != 0;
  objc_storeStrong(&self->_ecp, a3);
  self->_technology = self->_technology & 0xFFFFFFF7 | (8 * v4);
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_type(self, v5, v6);
  v9 = objc_msgSend_numberWithUnsignedInteger_(v4, v8, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v10, v9, @"ConfigType");

  v11 = MEMORY[0x277CCABB0];
  v14 = objc_msgSend_technology(self, v12, v13);
  v16 = objc_msgSend_numberWithUnsignedInt_(v11, v15, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v17, v16, @"tech");

  v20 = objc_msgSend_ecp(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_ecp(self, v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v24, v23, @"ecp");
  }

  if (objc_msgSend_pollDuration(self, v21, v22))
  {
    v27 = MEMORY[0x277CCABB0];
    v28 = objc_msgSend_pollDuration(self, v25, v26);
    v30 = objc_msgSend_numberWithUnsignedInt_(v27, v29, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v31, v30, @"pollDuration");
  }

  v32 = objc_msgSend_typeFSystemCode(self, v25, v26);

  if (v32)
  {
    v35 = objc_msgSend_typeFSystemCode(self, v33, v34);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v36, v35, @"typeFSystemCode");
  }

  v37 = MEMORY[0x277CCABB0];
  v38 = objc_msgSend_skipMifareClassify(self, v33, v34);
  v40 = objc_msgSend_numberWithBool_(v37, v39, v38);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v41, v40, @"skipMifareClassify");

  v42 = MEMORY[0x277CCABB0];
  v45 = objc_msgSend_lpcd(self, v43, v44);
  v47 = objc_msgSend_numberWithBool_(v42, v46, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v48, v47, @"lpcd");

  v49 = MEMORY[0x277CCABB0];
  v52 = objc_msgSend_fieldDetect(self, v50, v51);
  v54 = objc_msgSend_numberWithBool_(v49, v53, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v55, v54, @"fd");

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_asDictionary(self, v4, v5);
  v8 = objc_msgSend_initWithFormat_(v3, v7, @"%@", v6);

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v13 = a3;
  objc_msgSend_encodeInteger_forKey_(v13, v5, type, @"ConfigType");
  objc_msgSend_encodeInteger_forKey_(v13, v6, self->_technology, @"tech");
  objc_msgSend_encodeObject_forKey_(v13, v7, self->_ecp, @"ecp");
  objc_msgSend_encodeInteger_forKey_(v13, v8, self->_pollDuration, @"pollDuration");
  objc_msgSend_encodeBool_forKey_(v13, v9, self->_skipMifareClassify, @"skipMifareClassify");
  objc_msgSend_encodeBool_forKey_(v13, v10, self->_lpcd, @"lpcd");
  objc_msgSend_encodeBool_forKey_(v13, v11, self->_fieldDetect, @"fd");
  objc_msgSend_encodeObject_forKey_(v13, v12, self->_typeFSystemCode, @"typeFSystemCode");
}

- (NFReaderSessionPollConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NFReaderSessionPollConfig;
  v6 = [(NFReaderSessionPollConfig *)&v22 init];
  if (v6)
  {
    v6->_type = objc_msgSend_decodeIntegerForKey_(v4, v5, @"ConfigType");
    v6->_technology = objc_msgSend_decodeIntegerForKey_(v4, v7, @"tech");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"ecp");
    ecp = v6->_ecp;
    v6->_ecp = v10;

    v6->_pollDuration = objc_msgSend_decodeIntegerForKey_(v4, v12, @"pollDuration");
    v6->_skipMifareClassify = objc_msgSend_decodeBoolForKey_(v4, v13, @"skipMifareClassify");
    v6->_lpcd = objc_msgSend_decodeBoolForKey_(v4, v14, @"lpcd");
    v6->_fieldDetect = objc_msgSend_decodeBoolForKey_(v4, v15, @"fd");
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"typeFSystemCode");
    typeFSystemCode = v6->_typeFSystemCode;
    v6->_typeFSystemCode = v18;

    v20 = v6;
  }

  return v6;
}

@end