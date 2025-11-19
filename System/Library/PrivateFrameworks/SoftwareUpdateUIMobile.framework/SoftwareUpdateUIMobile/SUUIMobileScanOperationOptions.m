@interface SUUIMobileScanOperationOptions
- (BOOL)clientIsBuddy;
- (BOOL)doesAllowUnrestrictedCellularDownload;
- (BOOL)supportScanResultsCaching;
- (id)description;
- (id)initFromEnvironmentOptions:(unint64_t)a3;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)a3;
- (void)setClientIsBuddy:(BOOL)a3;
- (void)setSupportScanResultsCaching:(BOOL)a3;
@end

@implementation SUUIMobileScanOperationOptions

- (BOOL)doesAllowUnrestrictedCellularDownload
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

- (BOOL)clientIsBuddy
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  clientIsBuddy = v4->_clientIsBuddy;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return clientIsBuddy;
}

- (void)setClientIsBuddy:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_clientIsBuddy = v5;
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

- (BOOL)supportScanResultsCaching
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  supportScanResultsCaching = v4->_supportScanResultsCaching;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return supportScanResultsCaching;
}

- (void)setSupportScanResultsCaching:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4[0] = 2;
  p_lock = &self->_lock;
  v8 = 0;
  os_unfair_lock_lock_with_options();
  v4[1] = p_lock;
  v7->_supportScanResultsCaching = v5;
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

- (id)initFromEnvironmentOptions:(unint64_t)a3
{
  v8 = a2;
  v7 = a3;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIMobileScanOperationOptions;
  v5 = [(SUUIMobileScanOperationOptions *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_allowUnrestrictedCellularDownload = (v7 & 1) != 0;
    v9->_supportScanResultsCaching = (v7 & 8) != 0;
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
  v16[1] = @"supportScanResultsCaching";
  if (self->_supportScanResultsCaching)
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