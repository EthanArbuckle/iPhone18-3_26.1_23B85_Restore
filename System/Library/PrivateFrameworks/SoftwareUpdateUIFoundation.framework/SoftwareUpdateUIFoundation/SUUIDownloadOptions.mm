@interface SUUIDownloadOptions
- (BOOL)allowUnrestrictedCellularDownload;
- (BOOL)downloadOnly;
- (BOOL)isEqual:(id)equal;
- (BOOL)userUpdateTonight;
- (SUUIDescriptor)descriptor;
- (SUUIDownloadOptions)init;
- (SUUIDownloadOptions)initWithDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)downloadFeeAgreementStatus;
- (int64_t)termsAndConditionsAgreementStatus;
- (unint64_t)hash;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)download;
- (void)setDownloadFeeAgreementStatus:(int64_t)status;
- (void)setDownloadOnly:(BOOL)only;
- (void)setTermsAndConditionsAgreementStatus:(int64_t)status;
- (void)setUserUpdateTonight:(BOOL)tonight;
@end

@implementation SUUIDownloadOptions

- (BOOL)downloadOnly
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  downloadOnly = selfCopy->_downloadOnly;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return downloadOnly;
}

- (void)setDownloadOnly:(BOOL)only
{
  selfCopy = self;
  v6 = a2;
  onlyCopy = only;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_downloadOnly = onlyCopy;
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  userUpdateTonight = selfCopy->_userUpdateTonight;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return userUpdateTonight;
}

- (void)setUserUpdateTonight:(BOOL)tonight
{
  selfCopy = self;
  v6 = a2;
  tonightCopy = tonight;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_userUpdateTonight = tonightCopy;
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
  selfCopy = self;
  v4[2] = a2;
  v4[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](selfCopy->_descriptor);
  v9 = v4;
  os_unfair_lock_unlock(p_lock);
  v2 = v6;

  return v2;
}

- (int64_t)downloadFeeAgreementStatus
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  downloadFeeAgreementStatus = selfCopy->_downloadFeeAgreementStatus;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return downloadFeeAgreementStatus;
}

- (void)setDownloadFeeAgreementStatus:(int64_t)status
{
  selfCopy = self;
  v6 = a2;
  statusCopy = status;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_downloadFeeAgreementStatus = statusCopy;
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  termsAndConditionsAgreementStatus = selfCopy->_termsAndConditionsAgreementStatus;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return termsAndConditionsAgreementStatus;
}

- (void)setTermsAndConditionsAgreementStatus:(int64_t)status
{
  selfCopy = self;
  v6 = a2;
  statusCopy = status;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_termsAndConditionsAgreementStatus = statusCopy;
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  allowUnrestrictedCellularDownload = selfCopy->_allowUnrestrictedCellularDownload;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return allowUnrestrictedCellularDownload;
}

- (void)setAllowUnrestrictedCellularDownload:(BOOL)download
{
  selfCopy = self;
  v6 = a2;
  downloadCopy = download;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_allowUnrestrictedCellularDownload = downloadCopy;
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

- (SUUIDownloadOptions)initWithDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = SUUIDownloadOptions;
  selfCopy = [(SUUIDownloadOptions *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_descriptor, location[0]);
    selfCopy->_downloadOnly = 0;
    selfCopy->_userUpdateTonight = 0;
    selfCopy->_downloadFeeAgreementStatus = 2;
    selfCopy->_termsAndConditionsAgreementStatus = 2;
    selfCopy->_allowUnrestrictedCellularDownload = 0;
    selfCopy->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v14 = a2;
  zoneCopy = zone;
  v12 = [objc_opt_class() allocWithZone:zone];
  if (v12)
  {
    v8 = MEMORY[0x277D82BE0](v12);
    descriptor = [(SUUIDownloadOptions *)selfCopy descriptor];
    v9 = [(SUUIDescriptor *)descriptor copyWithZone:zoneCopy];
    v3 = [v8 initWithDescriptor:?];
    v4 = v12;
    v12 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](descriptor);
    v11[0] = 2;
    p_lock = &selfCopy->_lock;
    v16 = 0;
    os_unfair_lock_lock_with_options();
    v11[1] = &selfCopy->_lock;
    v12[12] = selfCopy->_downloadOnly;
    v12[13] = selfCopy->_userUpdateTonight;
    *(v12 + 3) = selfCopy->_downloadFeeAgreementStatus;
    *(v12 + 4) = selfCopy->_termsAndConditionsAgreementStatus;
    v12[14] = selfCopy->_allowUnrestrictedCellularDownload;
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

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
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
      p_lock = &selfCopy->_lock;
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
      downloadOnly = [(SUUIDownloadOptions *)selfCopy downloadOnly];
      v9 = 0;
      if (downloadOnly == [v18 downloadOnly])
      {
        userUpdateTonight = [(SUUIDownloadOptions *)selfCopy userUpdateTonight];
        v9 = 0;
        if (userUpdateTonight == [v18 userUpdateTonight])
        {
          downloadFeeAgreementStatus = [(SUUIDownloadOptions *)selfCopy downloadFeeAgreementStatus];
          v9 = 0;
          if (downloadFeeAgreementStatus == [v18 downloadFeeAgreementStatus])
          {
            termsAndConditionsAgreementStatus = [(SUUIDownloadOptions *)selfCopy termsAndConditionsAgreementStatus];
            v9 = 0;
            if (termsAndConditionsAgreementStatus == [v18 termsAndConditionsAgreementStatus])
            {
              allowUnrestrictedCellularDownload = [(SUUIDownloadOptions *)selfCopy allowUnrestrictedCellularDownload];
              v9 = 0;
              if (allowUnrestrictedCellularDownload == [v18 allowUnrestrictedCellularDownload])
              {
                descriptor = [(SUUIDownloadOptions *)selfCopy descriptor];
                v13 = 1;
                descriptor2 = [v18 descriptor];
                v11 = 1;
                v9 = [(SUUIDescriptor *)descriptor isEqual:?];
              }
            }
          }
        }
      }

      v22 = v9 & 1;
      if (v11)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](descriptor);
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  v5 = [(SUUIDescriptor *)selfCopy->_descriptor hash]^ ((2 * selfCopy->_userUpdateTonight) | selfCopy->_downloadOnly | (4 * selfCopy->_allowUnrestrictedCellularDownload)) ^ (selfCopy->_downloadFeeAgreementStatus << 8) ^ (selfCopy->_termsAndConditionsAgreementStatus << 16);
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5;
}

@end