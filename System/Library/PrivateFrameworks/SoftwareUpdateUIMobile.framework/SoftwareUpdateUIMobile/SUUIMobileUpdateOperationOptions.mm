@interface SUUIMobileUpdateOperationOptions
- (BOOL)bypassTermsAndConditions;
- (BOOL)clientIsBuddy;
- (BOOL)doesAllowUnrestrictedCellularDownload;
- (id)description;
- (id)initFromEnvironmentOptions:(unint64_t)options;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)download;
- (void)setBypassTermsAndConditions:(BOOL)conditions;
- (void)setClientIsBuddy:(BOOL)buddy;
@end

@implementation SUUIMobileUpdateOperationOptions

- (BOOL)doesAllowUnrestrictedCellularDownload
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

- (BOOL)clientIsBuddy
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  clientIsBuddy = selfCopy->_clientIsBuddy;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return clientIsBuddy;
}

- (void)setClientIsBuddy:(BOOL)buddy
{
  selfCopy = self;
  v6 = a2;
  buddyCopy = buddy;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_clientIsBuddy = buddyCopy;
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

- (BOOL)bypassTermsAndConditions
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  bypassTermsAndConditions = selfCopy->_bypassTermsAndConditions;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return bypassTermsAndConditions;
}

- (void)setBypassTermsAndConditions:(BOOL)conditions
{
  selfCopy = self;
  v6 = a2;
  conditionsCopy = conditions;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  selfCopy->_bypassTermsAndConditions = conditionsCopy;
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

- (id)initFromEnvironmentOptions:(unint64_t)options
{
  v8 = a2;
  optionsCopy = options;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIMobileUpdateOperationOptions;
  v5 = [(SUUIMobileUpdateOperationOptions *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_allowUnrestrictedCellularDownload = (optionsCopy & 1) != 0;
    v9->_bypassTermsAndConditions = (optionsCopy & 2) != 0;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (id)description
{
  v17[2] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D64B68];
  v16[0] = @"allowUnrestrictedCellularDownload";
  if (self->_allowUnrestrictedCellularDownload)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v7 = v2;
  v3 = v2;
  v14 = v7;
  v17[0] = v14;
  v16[1] = @"bypassTermsAndConditions";
  if (self->_bypassTermsAndConditions)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v8 = v4;
  v5 = v4;
  v13 = v8;
  v17[1] = v13;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [v10 descriptionForObject:self properties:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *MEMORY[0x277D85DE8];

  return v12;
}

@end