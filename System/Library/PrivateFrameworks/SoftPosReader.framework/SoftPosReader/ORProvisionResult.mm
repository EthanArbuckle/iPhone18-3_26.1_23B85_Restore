@interface ORProvisionResult
- (ORProvisionResult)initWithCoder:(id)coder;
- (ORProvisionResult)initWithProvisionDataBlob:(id)blob casdCertificate:(id)certificate rid:(id)rid;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ORProvisionResult

- (ORProvisionResult)initWithProvisionDataBlob:(id)blob casdCertificate:(id)certificate rid:(id)rid
{
  blobCopy = blob;
  certificateCopy = certificate;
  ridCopy = rid;
  v25.receiver = self;
  v25.super_class = ORProvisionResult;
  v15 = [(ORProvisionResult *)&v25 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(blobCopy, v11, v12, v13, v14);
    provisionDataBlob = v15->_provisionDataBlob;
    v15->_provisionDataBlob = v16;

    v22 = objc_msgSend_copy(certificateCopy, v18, v19, v20, v21);
    casdCertificate = v15->_casdCertificate;
    v15->_casdCertificate = v22;

    objc_storeStrong(&v15->_rid, rid);
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

- (void)encodeWithCoder:(id)coder
{
  provisionDataBlob = self->_provisionDataBlob;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, provisionDataBlob, @"provisionDataBlob", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_casdCertificate, @"casdCertificate", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_rid, @"rid", v10);
}

- (ORProvisionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = ORProvisionResult;
  v5 = [(ORProvisionResult *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"provisionDataBlob", v8);
    provisionDataBlob = v5->_provisionDataBlob;
    v5->_provisionDataBlob = v9;

    v11 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"casdCertificate", v13);
    casdCertificate = v5->_casdCertificate;
    v5->_casdCertificate = v14;

    v16 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"rid", v18);
    rid = v5->_rid;
    v5->_rid = v19;
  }

  return v5;
}

@end