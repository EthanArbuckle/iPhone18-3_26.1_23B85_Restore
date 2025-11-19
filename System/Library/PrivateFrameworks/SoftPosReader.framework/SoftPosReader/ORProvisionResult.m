@interface ORProvisionResult
- (ORProvisionResult)initWithCoder:(id)a3;
- (ORProvisionResult)initWithProvisionDataBlob:(id)a3 casdCertificate:(id)a4 rid:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ORProvisionResult

- (ORProvisionResult)initWithProvisionDataBlob:(id)a3 casdCertificate:(id)a4 rid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = ORProvisionResult;
  v15 = [(ORProvisionResult *)&v25 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(v8, v11, v12, v13, v14);
    provisionDataBlob = v15->_provisionDataBlob;
    v15->_provisionDataBlob = v16;

    v22 = objc_msgSend_copy(v9, v18, v19, v20, v21);
    casdCertificate = v15->_casdCertificate;
    v15->_casdCertificate = v22;

    objc_storeStrong(&v15->_rid, a5);
  }

  return v15;
}

- (id)description
{
  v6 = objc_msgSend_length(self->_casdCertificate, a2, v2, v3, v4);
  v7 = @"present";
  if (!v6)
  {
    v7 = &stru_287B375A0;
  }

  v8 = MEMORY[0x277CCACA8];
  provisionDataBlob = self->_provisionDataBlob;
  v10 = v7;
  v15 = objc_msgSend_asHexString(provisionDataBlob, v11, v12, v13, v14);
  v19 = objc_msgSend_stringWithFormat_(v8, v16, @"{provisionDataBlob: %@, casdCertificate: %@, rid: %@}", v17, v18, v15, v10, self->_rid);

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  provisionDataBlob = self->_provisionDataBlob;
  v11 = a3;
  objc_msgSend_encodeObject_forKey_(v11, v5, provisionDataBlob, @"provisionDataBlob", v6);
  objc_msgSend_encodeObject_forKey_(v11, v7, self->_casdCertificate, @"casdCertificate", v8);
  objc_msgSend_encodeObject_forKey_(v11, v9, self->_rid, @"rid", v10);
}

- (ORProvisionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ORProvisionResult;
  v5 = [(ORProvisionResult *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"provisionDataBlob", v8);
    provisionDataBlob = v5->_provisionDataBlob;
    v5->_provisionDataBlob = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"casdCertificate", v13);
    casdCertificate = v5->_casdCertificate;
    v5->_casdCertificate = v14;

    v16 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"rid", v18);
    rid = v5->_rid;
    v5->_rid = v19;
  }

  return v5;
}

@end