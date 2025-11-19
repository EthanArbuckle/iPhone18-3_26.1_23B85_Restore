@interface SUUIDownloadOptions
- (BOOL)allowUnrestrictedCellularDownload;
- (BOOL)downloadOnly;
- (BOOL)isEqual:(id)a3;
- (BOOL)userUpdateTonight;
- (SUUIDescriptor)descriptor;
- (SUUIDownloadOptions)init;
- (SUUIDownloadOptions)initWithDescriptor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)downloadFeeAgreementStatus;
- (int64_t)termsAndConditionsAgreementStatus;
- (unint64_t)hash;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)a3;
- (void)setDownloadFeeAgreementStatus:(int64_t)a3;
- (void)setDownloadOnly:(BOOL)a3;
- (void)setTermsAndConditionsAgreementStatus:(int64_t)a3;
- (void)setUserUpdateTonight:(BOOL)a3;
@end

@implementation SUUIDownloadOptions

- (BOOL)downloadOnly
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  downloadOnly = v4->_downloadOnly;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return downloadOnly;
}

- (void)setDownloadOnly:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_downloadOnly = v5;
  v10 = v4;
  switch(v4[0])
  {
    case 1:
      [v10[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v10[1]);
      break;
    case 3:
      v3 = v10[1];
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (BOOL)userUpdateTonight
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  userUpdateTonight = v4->_userUpdateTonight;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return userUpdateTonight;
}

- (void)setUserUpdateTonight:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_userUpdateTonight = v5;
  v10 = v4;
  switch(v4[0])
  {
    case 1:
      [v10[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v10[1]);
      break;
    case 3:
      v3 = v10[1];
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (SUUIDescriptor)descriptor
{
  v5 = self;
  v4[2] = a2;
  v4[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](v5->_descriptor);
  v9 = v4;
  os_unfair_lock_unlock(p_lock);
  v2 = v6;

  return v2;
}

- (int64_t)downloadFeeAgreementStatus
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  downloadFeeAgreementStatus = v4->_downloadFeeAgreementStatus;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return downloadFeeAgreementStatus;
}

- (void)setDownloadFeeAgreementStatus:(int64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_downloadFeeAgreementStatus = v5;
  v10 = v4;
  switch(v4[0])
  {
    case 1:
      [v10[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v10[1]);
      break;
    case 3:
      v3 = v10[1];
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (int64_t)termsAndConditionsAgreementStatus
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  termsAndConditionsAgreementStatus = v4->_termsAndConditionsAgreementStatus;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return termsAndConditionsAgreementStatus;
}

- (void)setTermsAndConditionsAgreementStatus:(int64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_termsAndConditionsAgreementStatus = v5;
  v10 = v4;
  switch(v4[0])
  {
    case 1:
      [v10[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v10[1]);
      break;
    case 3:
      v3 = v10[1];
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (BOOL)allowUnrestrictedCellularDownload
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  allowUnrestrictedCellularDownload = v4->_allowUnrestrictedCellularDownload;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return allowUnrestrictedCellularDownload;
}

- (void)setAllowUnrestrictedCellularDownload:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_allowUnrestrictedCellularDownload = v5;
  v10 = v4;
  switch(v4[0])
  {
    case 1:
      [v10[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v10[1]);
      break;
    case 3:
      v3 = v10[1];
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (SUUIDownloadOptions)init
{
  exception = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Use the designated initializer" userInfo:0];
  v2 = exception;
  objc_exception_throw(exception);
}

- (SUUIDownloadOptions)initWithDescriptor:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = SUUIDownloadOptions;
  v8 = [(SUUIDownloadOptions *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_descriptor, location[0]);
    v8->_downloadOnly = 0;
    v8->_userUpdateTonight = 0;
    v8->_downloadFeeAgreementStatus = 2;
    v8->_termsAndConditionsAgreementStatus = 2;
    v8->_allowUnrestrictedCellularDownload = 0;
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = [objc_opt_class() allocWithZone:a3];
  if (v12)
  {
    v8 = MEMORY[0x277D82BE0](v12);
    v10 = [(SUUIDownloadOptions *)v15 descriptor];
    v9 = [(SUUIDescriptor *)v10 copyWithZone:v13];
    v3 = [v8 initWithDescriptor:?];
    v4 = v12;
    v12 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v11[0] = 2;
    p_lock = &v15->_lock;
    v16 = 0;
    os_unfair_lock_lock_with_options();
    v11[1] = &v15->_lock;
    v12[12] = v15->_downloadOnly;
    v12[13] = v15->_userUpdateTonight;
    *(v12 + 3) = v15->_downloadFeeAgreementStatus;
    *(v12 + 4) = v15->_termsAndConditionsAgreementStatus;
    v12[14] = v15->_allowUnrestrictedCellularDownload;
    v18 = v11;
    switch(v11[0])
    {
      case 1:
        [v18[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v18[1]);
        break;
      case 3:
        v5 = v18[1];
        os_unfair_recursive_lock_unlock();
        break;
    }
  }

  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v21 == location[0])
  {
    v22 = 1;
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x277D82BE0](location[0]);
      v17[0] = 2;
      p_lock = &v21->_lock;
      v25 = 0;
      os_unfair_lock_lock_with_options();
      v17[1] = p_lock;
      v15 = 2;
      v24 = (v18 + 8);
      v23 = 0;
      os_unfair_lock_lock_with_options();
      v16 = v24;
      v13 = 0;
      v11 = 0;
      v10 = [(SUUIDownloadOptions *)v21 downloadOnly];
      v9 = 0;
      if (v10 == [v18 downloadOnly])
      {
        v8 = [(SUUIDownloadOptions *)v21 userUpdateTonight];
        v9 = 0;
        if (v8 == [v18 userUpdateTonight])
        {
          v7 = [(SUUIDownloadOptions *)v21 downloadFeeAgreementStatus];
          v9 = 0;
          if (v7 == [v18 downloadFeeAgreementStatus])
          {
            v6 = [(SUUIDownloadOptions *)v21 termsAndConditionsAgreementStatus];
            v9 = 0;
            if (v6 == [v18 termsAndConditionsAgreementStatus])
            {
              v5 = [(SUUIDownloadOptions *)v21 allowUnrestrictedCellularDownload];
              v9 = 0;
              if (v5 == [v18 allowUnrestrictedCellularDownload])
              {
                v14 = [(SUUIDownloadOptions *)v21 descriptor];
                v13 = 1;
                v12 = [v18 descriptor];
                v11 = 1;
                v9 = [(SUUIDescriptor *)v14 isEqual:?];
              }
            }
          }
        }
      }

      v22 = v9 & 1;
      if (v11)
      {
        MEMORY[0x277D82BD8](v12);
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](v14);
      }

      v19 = 1;
      v28 = &v15;
      os_unfair_lock_unlock(v16);
      if (v19 == 5)
      {
        v19 = 2;
      }

      v27 = v17;
      switch(v17[0])
      {
        case 1:
          [v27[1] unlock];
          break;
        case 2:
          os_unfair_lock_unlock(v27[1]);
          break;
        case 3:
          v3 = v27[1];
          os_unfair_recursive_lock_unlock();
          break;
      }

      if (v19 == 2)
      {
        v19 = 0;
      }

      objc_storeStrong(&v18, 0);
    }

    else
    {
      v22 = 0;
      v19 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v22 & 1;
}

- (unint64_t)hash
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  v5 = [(SUUIDescriptor *)v4->_descriptor hash]^ ((2 * v4->_userUpdateTonight) | v4->_downloadOnly | (4 * v4->_allowUnrestrictedCellularDownload)) ^ (v4->_downloadFeeAgreementStatus << 8) ^ (v4->_termsAndConditionsAgreementStatus << 16);
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5;
}

@end