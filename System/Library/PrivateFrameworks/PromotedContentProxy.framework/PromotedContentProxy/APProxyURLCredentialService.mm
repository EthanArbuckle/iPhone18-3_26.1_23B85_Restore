@interface APProxyURLCredentialService
- (APProxyURLCredentialService)init;
- (id)_signedCredentialForUrl:(id)url userAgent:(id)agent withPersistence:(unint64_t)persistence;
- (id)signedCredentialForRequest:(id)request withPersistence:(unint64_t)persistence;
@end

@implementation APProxyURLCredentialService

- (APProxyURLCredentialService)init
{
  v6.receiver = self;
  v6.super_class = APProxyURLCredentialService;
  v2 = [(APProxyURLCredentialService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE9760]);
    mescalSigningObject = v2->_mescalSigningObject;
    v2->_mescalSigningObject = v3;
  }

  return v2;
}

- (id)signedCredentialForRequest:(id)request withPersistence:(unint64_t)persistence
{
  requestCopy = request;
  v11 = objc_msgSend_URL(requestCopy, v7, v8, v9, v10);
  v15 = objc_msgSend_valueForHTTPHeaderField_(requestCopy, v12, @"user-agent", v13, v14);
  v17 = objc_msgSend_signedCredentialForUrl_userAgent_request_withPersistence_(self, v16, v11, v15, requestCopy, persistence);

  return v17;
}

- (id)_signedCredentialForUrl:(id)url userAgent:(id)agent withPersistence:(unint64_t)persistence
{
  v8 = MEMORY[0x277CCACA8];
  agentCopy = agent;
  v14 = objc_msgSend_absoluteString(url, v10, v11, v12, v13);
  v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16, v17, v18);
  objc_msgSend_timeIntervalSince1970(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_stringWithFormat_(v8, v24, @"%@_*##*_%@_*##*_%f", v25, v26, agentCopy, v14, v27);

  v33 = objc_msgSend_sha256hash(v28, v29, v30, v31, v32);

  if (v33)
  {
    v37 = objc_msgSend_dataUsingEncoding_(v33, v34, 4, v35, v36);
    v41 = v37;
    if (v37)
    {
      v42 = objc_msgSend_base64EncodedStringWithOptions_(v37, v38, 0, v39, v40);
      if (objc_msgSend_length(v42, v43, v44, v45, v46))
      {
        v51 = objc_msgSend_mescalSigningObject(self, v47, v48, v49, v50);
        v55 = objc_msgSend_signatureForData_(v51, v52, v41, v53, v54);

        if (objc_msgSend_length(v55, v56, v57, v58, v59))
        {
          v61 = objc_msgSend_credentialWithUser_password_persistence_(MEMORY[0x277CBAB80], v60, v42, v55, persistence);
        }

        else
        {
          v62 = APLogForCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_260F10000, v62, OS_LOG_TYPE_ERROR, "Failed to get a signature for proxy authentication.", buf, 2u);
          }

          v61 = 0;
        }
      }

      else
      {
        v61 = 0;
      }
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

@end