@interface SUUIMobileDownloadPolicy
- (BOOL)allowExpensiveNetwork;
- (BOOL)is5GDownloadAllowed;
- (BOOL)isDownloadAllowableForCellular;
- (BOOL)isDownloadAllowableForCellular2G;
- (BOOL)isDownloadAllowableForCellularRoaming;
- (BOOL)isDownloadAllowableForWiFi;
- (BOOL)isDownloadFreeForCellular;
- (BOOL)isEqual:(id)equal;
- (SUUIMobileDownloadPolicy)init;
- (SUUIMobileDownloadPolicy)initWithPolicy:(id)policy;
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

- (SUUIMobileDownloadPolicy)initWithPolicy:(id)policy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, policy);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = SUUIMobileDownloadPolicy;
  selfCopy = [(SUUIMobileDownloadPolicy *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_underlyingPolicy, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BOOL)isDownloadFreeForCellular
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  isDownloadFreeForCellular = [(SUDownloadPolicy *)underlyingPolicy isDownloadFreeForCellular];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return isDownloadFreeForCellular;
}

- (BOOL)isDownloadAllowableForCellular
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  isDownloadAllowableForCellular = [(SUDownloadPolicy *)underlyingPolicy isDownloadAllowableForCellular];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return isDownloadAllowableForCellular;
}

- (BOOL)isDownloadAllowableForCellular2G
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  isDownloadAllowableForCellular2G = [(SUDownloadPolicy *)underlyingPolicy isDownloadAllowableForCellular2G];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return isDownloadAllowableForCellular2G;
}

- (BOOL)isDownloadAllowableForCellularRoaming
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  isDownloadAllowableForCellularRoaming = [(SUDownloadPolicy *)underlyingPolicy isDownloadAllowableForCellularRoaming];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return isDownloadAllowableForCellularRoaming;
}

- (BOOL)isDownloadAllowableForWiFi
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  isDownloadAllowableForWiFi = [(SUDownloadPolicy *)underlyingPolicy isDownloadAllowableForWiFi];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return isDownloadAllowableForWiFi;
}

- (BOOL)allowExpensiveNetwork
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  allowExpensiveNetwork = [(SUDownloadPolicy *)underlyingPolicy allowExpensiveNetwork];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return allowExpensiveNetwork;
}

- (BOOL)is5GDownloadAllowed
{
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  is5GDownloadAllowed = [(SUDownloadPolicy *)underlyingPolicy is5GDownloadAllowed];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return is5GDownloadAllowed;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
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
      underlyingPolicy = [(SUUIMobileDownloadPolicy *)selfCopy underlyingPolicy];
      underlyingPolicy2 = [v6 underlyingPolicy];
      v10 = [(SUDownloadPolicy *)underlyingPolicy isEqual:?]& 1;
      MEMORY[0x277D82BD8](underlyingPolicy2);
      MEMORY[0x277D82BD8](underlyingPolicy);
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
  underlyingPolicy = [(SUUIMobileDownloadPolicy *)self underlyingPolicy];
  v4 = [(SUDownloadPolicy *)underlyingPolicy hash];
  MEMORY[0x277D82BD8](underlyingPolicy);
  return v4;
}

@end