@interface NFCTKPollConfig
+ (id)pollConfigWithAppletIdentifiers:(id)a3;
- (BOOL)_validate;
- (NFCTKPollConfig)initWithAppletIdentifiers:(id)a3;
- (NFCTKPollConfig)initWithCoder:(id)a3;
- (id)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCTKPollConfig

+ (id)pollConfigWithAppletIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [NFCTKPollConfig alloc];
  v6 = objc_msgSend_initWithAppletIdentifiers_(v4, v5, v3);

  return v6;
}

- (NFCTKPollConfig)initWithAppletIdentifiers:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NFCTKPollConfig;
  v7 = [(NFReaderSessionPollConfig *)&v17 initWithType:2];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    appletIdentifiers = v7->_appletIdentifiers;
    v7->_appletIdentifiers = v8;

    objc_msgSend_setSkipMifareClassify_(v7, v10, 1);
    objc_msgSend_setTechnology_(v7, v11, 3);
    objc_msgSend_setFieldDetect_(v7, v12, 0);
    objc_msgSend_setLpcd_(v7, v13, 0);
    objc_msgSend_setEcp_(v7, v14, 0);
    v15 = v7;
  }

  return v7;
}

- (BOOL)_validate
{
  v23 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_appletIdentifiers, a2, v2))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_appletIdentifiers;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (objc_msgSend_length(v12, v7, v8, v18) < 5 || objc_msgSend_length(v12, v13, v14) > 0x10)
          {
            v15 = 0;
            goto LABEL_15;
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
        v15 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }

LABEL_15:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)asDictionary
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v12.receiver = self;
  v12.super_class = NFCTKPollConfig;
  v4 = [(NFReaderSessionPollConfig *)&v12 asDictionary];
  v6 = objc_msgSend_initWithDictionary_(v3, v5, v4);

  v9 = objc_msgSend_appletIdentifiers(self, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v10, v9, @"aids");

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NFCTKPollConfig;
  v4 = a3;
  [(NFReaderSessionPollConfig *)&v6 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_appletIdentifiers, @"aids", v6.receiver, v6.super_class);
}

- (NFCTKPollConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NFCTKPollConfig;
  v5 = [(NFReaderSessionPollConfig *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v7, v4, v6, @"aids");
    appletIdentifiers = v5->_appletIdentifiers;
    v5->_appletIdentifiers = v8;

    v10 = v5;
  }

  return v5;
}

@end