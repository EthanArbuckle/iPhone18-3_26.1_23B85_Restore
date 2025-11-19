@interface MISProfile
- (MISProfile)init;
- (int)fixUp;
- (void)dealloc;
@end

@implementation MISProfile

- (int)fixUp
{
  v44 = *MEMORY[0x1E69E9840];
  if (!self->_fixedup)
  {
    if ((self->flavor | 2) == 2)
    {
      v4 = MISProfileGetValue(self, @"Entitlements");
      entitlements = self->entitlements;
      self->entitlements = v4;

      v6 = MISProfileGetValue(self, @"DeveloperCertificates");
      v7 = MEMORY[0x1E695DF70];
      v10 = objc_msgSend_count(v6, v8, v9);
      v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v6;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v39, v43, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = sub_1B9D98EE4(*(*(&v39 + 1) + 8 * i));
            objc_msgSend_addObject_(v12, v20, v19);
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v21, &v39, v43, 16);
        }

        while (v16);
      }

      objc_storeStrong(&self->certs, v12);
      v38 = 0;
      v22 = self->entitlements;
      v23 = CESerializeCFDictionary();
      v24 = MEMORY[0x1E69E50B8];
      if (v23 != *MEMORY[0x1E69E50B8])
      {
        v25 = sub_1B9D98960();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
LABEL_29:
          _os_log_error_impl(&dword_1B9D96000, v25, OS_LOG_TYPE_ERROR, "Invalid entitlements in a provisioning profile", v37, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      derEntitlementsStorage = self->derEntitlementsStorage;
      self->derEntitlementsStorage = v38;

      if (sub_1B9DC8A48(self->derEntitlementsStorage, &self->ceCtx) != *v24)
      {
        v25 = sub_1B9D98960();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
          goto LABEL_29;
        }

LABEL_19:
        v2 = -402620413;

LABEL_23:
        goto LABEL_24;
      }

LABEL_27:
      v2 = 0;
      self->_fixedup = 1;
      goto LABEL_24;
    }

    v26 = MISProfileGetValue(self, @"DeveloperCertificates");
    certs = self->certs;
    self->certs = v26;

    v13 = MISProfileGetValue(self, @"Entitlements");
    v28 = sub_1B9DC8A48(v13, &self->ceCtx);
    v29 = MEMORY[0x1E69E50B8];
    if (v28 == *MEMORY[0x1E69E50B8])
    {
      v38 = 0;
      ceCtx = self->ceCtx;
      if (CEQueryContextToCFDictionary() == *v29)
      {
        v36 = self->entitlements;
        self->entitlements = v38;

        goto LABEL_27;
      }

      v30 = sub_1B9D98960();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *v37 = 0;
        v31 = v37;
        goto LABEL_31;
      }
    }

    else
    {
      v30 = sub_1B9D98960();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v38) = 0;
        v31 = &v38;
LABEL_31:
        _os_log_error_impl(&dword_1B9D96000, v30, OS_LOG_TYPE_ERROR, "Invalid entitlements in a provisioning profile", v31, 2u);
      }
    }

    v2 = -402620413;

    goto LABEL_23;
  }

  v2 = 0;
LABEL_24:
  v34 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  ceCtx = self->ceCtx;
  p_ceCtx = &self->ceCtx;
  if (ceCtx)
  {
    sub_1B9DC8B44(p_ceCtx);
  }

  v5.receiver = self;
  v5.super_class = MISProfile;
  [(MISProfile *)&v5 dealloc];
}

- (MISProfile)init
{
  v11.receiver = self;
  v11.super_class = MISProfile;
  v2 = [(MISProfile *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_fixedup = 0;
    signature = v2->signature;
    v2->signature = 0;

    derEntitlementsStorage = v3->derEntitlementsStorage;
    v3->ceCtx = 0;
    v3->derEntitlementsStorage = 0;

    objc_msgSend_setPayload_(v3, v6, 0);
    objc_msgSend_setEntitlements_(v3, v7, 0);
    objc_msgSend_setCerts_(v3, v8, 0);
    v9 = v3;
  }

  return v3;
}

@end