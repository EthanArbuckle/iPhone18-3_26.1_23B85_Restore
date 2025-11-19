@interface STSCHWiFiAwareSecurityInfo
- (BOOL)isEqual:(id)a3;
- (STSCHWiFiAwareSecurityInfo)initWithCipherSuites:(id)a3 dhInfo:(id)a4 passphrase:(id)a5;
- (STSCHWiFiAwareSecurityInfo)initWithCoder:(id)a3;
- (STSCHWiFiAwareSecurityInfo)initWithPMK:(id)a3 pmkID:(id)a4;
- (id)asData;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHWiFiAwareSecurityInfo

- (void)encodeWithCoder:(id)a3
{
  cipherSuite = self->_cipherSuite;
  v10 = a3;
  objc_msgSend_encodeObject_forKey_(v10, v5, cipherSuite, @"cipherSuite");
  objc_msgSend_encodeObject_forKey_(v10, v6, self->_dhInfo, @"dhInfo");
  objc_msgSend_encodeObject_forKey_(v10, v7, self->_passphrase, @"passphrase");
  objc_msgSend_encodeObject_forKey_(v10, v8, self->_datapathPmk, @"datapathPmk");
  objc_msgSend_encodeObject_forKey_(v10, v9, self->_datapathPmkID, @"datapathPmkID");
}

- (STSCHWiFiAwareSecurityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = STSCHWiFiAwareSecurityInfo;
  v5 = [(STSCHWiFiAwareSecurityInfo *)&v35 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v10, @"cipherSuite");
    cipherSuite = v5->_cipherSuite;
    v5->_cipherSuite = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v18 = objc_msgSend_setWithObjects_(v14, v17, v15, v16, 0);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v19, v18, @"dhInfo");
    dhInfo = v5->_dhInfo;
    v5->_dhInfo = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v22, @"passphrase");
    passphrase = v5->_passphrase;
    v5->_passphrase = v24;

    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v26, @"datapathPmk");
    datapathPmk = v5->_datapathPmk;
    v5->_datapathPmk = v28;

    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v30, @"datapathPmkID");
    datapathPmkID = v5->_datapathPmkID;
    v5->_datapathPmkID = v32;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToData = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    cipherSuite = self->_cipherSuite;
    v10 = objc_msgSend_cipherSuite(v6, v8, v9);
    LODWORD(cipherSuite) = objc_msgSend_isEqualToArray_(cipherSuite, v11, v10);

    if (!cipherSuite)
    {
      goto LABEL_15;
    }

    dhInfo = self->_dhInfo;
    v15 = objc_msgSend_dhInfo(v6, v12, v13);
    LODWORD(dhInfo) = objc_msgSend_isEqualToArray_(dhInfo, v16, v15);

    if (!dhInfo)
    {
      goto LABEL_15;
    }

    v19 = objc_msgSend_length(self->_passphrase, v17, v18);
    v22 = objc_msgSend_passphrase(v6, v20, v21);
    v25 = objc_msgSend_length(v22, v23, v24);

    if (v19 != v25)
    {
      goto LABEL_15;
    }

    passphrase = self->_passphrase;
    if (passphrase)
    {
      v29 = objc_msgSend_passphrase(v6, v26, v27);
      isEqualToString = objc_msgSend_isEqualToString_(passphrase, v30, v29);

      if (!isEqualToString)
      {
        goto LABEL_15;
      }
    }

    datapathPmk = self->_datapathPmk;
    if (!datapathPmk || (objc_msgSend_datapathPmk(v6, v26, v27), v33 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend_isEqualToData_(datapathPmk, v34, v33), v33, v35))
    {
      datapathPmkID = self->_datapathPmkID;
      if (datapathPmkID)
      {
        v37 = objc_msgSend_datapathPmkID(v6, v26, v27);
        isEqualToData = objc_msgSend_isEqualToData_(datapathPmkID, v38, v37);
      }

      else
      {
        isEqualToData = 1;
      }
    }

    else
    {
LABEL_15:
      isEqualToData = 0;
    }
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData & 1;
}

- (id)description
{
  if (self->_datapathPmk)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"PMK & PMKID %@available", &stru_2875F9850);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"PMK & PMKID %@available", @"not ");
  }
  v3 = ;
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_description(self->_cipherSuite, v5, v6);
  v10 = objc_msgSend_description(self->_passphrase, v8, v9);
  v13 = objc_msgSend_description(self->_dhInfo, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v4, v14, @"cipherSuite=%@, password=%@, DH=%@, %@", v7, v10, v13, v3);

  return v15;
}

- (STSCHWiFiAwareSecurityInfo)initWithCipherSuites:(id)a3 dhInfo:(id)a4 passphrase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = STSCHWiFiAwareSecurityInfo;
  v11 = [(STSCHWiFiAwareSecurityInfo *)&v21 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBEA60]);
    v14 = objc_msgSend_initWithArray_(v12, v13, v8);
    cipherSuite = v11->_cipherSuite;
    v11->_cipherSuite = v14;

    v16 = objc_alloc(MEMORY[0x277CBEA60]);
    v18 = objc_msgSend_initWithArray_(v16, v17, v9);
    dhInfo = v11->_dhInfo;
    v11->_dhInfo = v18;

    objc_storeStrong(&v11->_passphrase, a5);
  }

  return v11;
}

- (STSCHWiFiAwareSecurityInfo)initWithPMK:(id)a3 pmkID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_length(v8, v9, v10) == 16)
  {
    v15.receiver = self;
    v15.super_class = STSCHWiFiAwareSecurityInfo;
    v11 = [(STSCHWiFiAwareSecurityInfo *)&v15 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_datapathPmk, a3);
      objc_storeStrong(p_isa + 5, a4);
    }

    self = p_isa;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)asData
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_data(MEMORY[0x277CBEB28], a2, v2);
  if (objc_msgSend_count(self->_cipherSuite, v5, v6))
  {
    v50 = objc_msgSend_count(self->_cipherSuite, v7, v8) + 1;
    objc_msgSend_appendBytes_length_(v4, v9, &v50, 1);
    objc_msgSend_appendBytes_length_(v4, v10, &unk_264507599, 1);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = self->_cipherSuite;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v46, v52, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v47;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v50 = objc_msgSend_unsignedCharValue(*(*(&v46 + 1) + 8 * i), v14, v15);
          objc_msgSend_appendBytes_length_(v4, v19, &v50, 1);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v46, v52, 16);
      }

      while (v16);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = self->_dhInfo;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v42, v51, 16);
  if (v22)
  {
    v25 = v22;
    v26 = *v43;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v20);
        }

        v28 = objc_msgSend_asData(*(*(&v42 + 1) + 8 * j), v23, v24, v42);
        objc_msgSend_appendData_(v4, v29, v28);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v42, v51, 16);
    }

    while (v25);
  }

  passphrase = self->_passphrase;
  if (passphrase && objc_msgSend_length(passphrase, v30, v31))
  {
    v50 = objc_msgSend_length(self->_passphrase, v33, v34) + 1;
    objc_msgSend_appendBytes_length_(v4, v35, &v50, 1);
    objc_msgSend_appendBytes_length_(v4, v36, &unk_26450759A, 1);
    v38 = objc_msgSend_dataUsingEncoding_(self->_passphrase, v37, 4);
    objc_msgSend_appendData_(v4, v39, v38);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v4;
}

@end