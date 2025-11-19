@interface SUUIMobileDownloadPolicy
- (BOOL)allowExpensiveNetwork;
- (BOOL)is5GDownloadAllowed;
- (BOOL)isDownloadAllowableForCellular;
- (BOOL)isDownloadAllowableForCellular2G;
- (BOOL)isDownloadAllowableForCellularRoaming;
- (BOOL)isDownloadAllowableForWiFi;
- (BOOL)isDownloadFreeForCellular;
- (BOOL)isEqual:(id)a3;
- (SUUIMobileDownloadPolicy)init;
- (SUUIMobileDownloadPolicy)initWithPolicy:(id)a3;
- (unint64_t)hash;
@end

@implementation SUUIMobileDownloadPolicy

- (SUUIMobileDownloadPolicy)init
{
  v5 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v3 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v6 = [v3 stringWithFormat:@"%@ is unavailable", v7];
  v8 = [v5 exceptionWithName:v4 reason:? userInfo:?];
  v2 = v8;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_exception_throw(v8);
}

- (SUUIMobileDownloadPolicy)initWithPolicy:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = SUUIMobileDownloadPolicy;
  v8 = [(SUUIMobileDownloadPolicy *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingPolicy, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (BOOL)isDownloadFreeForCellular
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 isDownloadFreeForCellular];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isDownloadAllowableForCellular
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 isDownloadAllowableForCellular];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isDownloadAllowableForCellular2G
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 isDownloadAllowableForCellular2G];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isDownloadAllowableForCellularRoaming
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 isDownloadAllowableForCellularRoaming];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isDownloadAllowableForWiFi
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 isDownloadAllowableForWiFi];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)allowExpensiveNetwork
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 allowExpensiveNetwork];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)is5GDownloadAllowed
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 is5GDownloadAllowed];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v9 == location[0])
  {
    v10 = 1;
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x277D82BE0](location[0]);
      v5 = [(SUUIMobileDownloadPolicy *)v9 underlyingPolicy];
      v4 = [v6 underlyingPolicy];
      v10 = [(SUDownloadPolicy *)v5 isEqual:?]& 1;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      v7 = 1;
      objc_storeStrong(&v6, 0);
    }

    else
    {
      v10 = 0;
      v7 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (unint64_t)hash
{
  v3 = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)v3 hash];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

@end