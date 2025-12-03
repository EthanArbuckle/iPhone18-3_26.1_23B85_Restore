@interface SUUIMobileDownload
- (BOOL)isAutoDownload;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUninitialized;
- (SUUIMobileDownload)init;
- (SUUIMobileDownload)initWithCoder:(id)coder;
- (SUUIMobileDownload)initWithDownload:(id)download;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUUIMobileDownload

- (SUUIMobileDownload)init
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

- (SUUIMobileDownload)initWithDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v3 = selfCopy;
  selfCopy = 0;
  v19.receiver = v3;
  v19.super_class = SUUIMobileDownload;
  selfCopy = [(SUUIMobileDownload *)&v19 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_underlyingDownload, location[0]);
    v12 = [SUUIMobileDescriptor alloc];
    descriptor = [location[0] descriptor];
    v4 = [(SUUIMobileDescriptor *)v12 initWithDescriptor:?];
    mobileDescriptor = selfCopy->_mobileDescriptor;
    selfCopy->_mobileDescriptor = v4;
    MEMORY[0x277D82BD8](mobileDescriptor);
    MEMORY[0x277D82BD8](descriptor);
    v14 = [SUUIMobileDownloadProgress alloc];
    progress = [location[0] progress];
    v6 = [(SUUIMobileDownloadProgress *)v14 initWithOperationProgress:?];
    mobileDownloadProgress = selfCopy->_mobileDownloadProgress;
    selfCopy->_mobileDownloadProgress = v6;
    MEMORY[0x277D82BD8](mobileDownloadProgress);
    MEMORY[0x277D82BD8](progress);
    underlyingDownload = [(SUUIMobileDownload *)selfCopy underlyingDownload];
    downloadOptions = [(SUDownload *)underlyingDownload downloadOptions];
    activeDownloadPolicy = [(SUDownloadOptions *)downloadOptions activeDownloadPolicy];
    MEMORY[0x277D82BD8](downloadOptions);
    MEMORY[0x277D82BD8](underlyingDownload);
    if (activeDownloadPolicy)
    {
      v8 = [[SUUIMobileDownloadPolicy alloc] initWithPolicy:activeDownloadPolicy];
      mobilePolicy = selfCopy->_mobilePolicy;
      selfCopy->_mobilePolicy = v8;
      MEMORY[0x277D82BD8](mobilePolicy);
    }

    objc_storeStrong(&activeDownloadPolicy, 0);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (BOOL)isAutoDownload
{
  underlyingDownload = [(SUUIMobileDownload *)self underlyingDownload];
  downloadOptions = [(SUDownload *)underlyingDownload downloadOptions];
  isAutoDownload = [(SUDownloadOptions *)downloadOptions isAutoDownload];
  MEMORY[0x277D82BD8](downloadOptions);
  MEMORY[0x277D82BD8](underlyingDownload);
  return isAutoDownload;
}

- (BOOL)isUninitialized
{
  underlyingDownload = [(SUUIMobileDownload *)self underlyingDownload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](underlyingDownload);
  return isKindOfClass & 1;
}

- (SUUIMobileDownload)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"download"];
  if (v5)
  {
    v3 = selfCopy;
    selfCopy = 0;
    selfCopy = [v3 initWithDownload:v5];
    v8 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  underlyingDownload = [(SUUIMobileDownload *)selfCopy underlyingDownload];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](underlyingDownload);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v16 = a2;
  zoneCopy = zone;
  underlyingDownload = [(SUUIMobileDownload *)self underlyingDownload];
  v14 = [(SUDownload *)underlyingDownload copyWithZone:zoneCopy];
  MEMORY[0x277D82BD8](underlyingDownload);
  if (!v14)
  {
    v9 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE658];
    v7 = MEMORY[0x277CCACA8];
    v3 = objc_opt_class();
    v11 = NSStringFromClass(v3);
    v10 = [v7 stringWithFormat:@"Could not create a copy of %@: The underlying download is corrupted.", v11];
    v12 = [v9 exceptionWithName:v8 reason:? userInfo:?];
    v4 = v12;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_exception_throw(v12);
  }

  v6 = [[SUUIMobileDownload allocWithZone:?], "initWithDownload:", v14];
  objc_storeStrong(&v14, 0);
  return v6;
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
      underlyingDownload = [(SUUIMobileDownload *)selfCopy underlyingDownload];
      underlyingDownload2 = [v6 underlyingDownload];
      v10 = [(SUDownload *)underlyingDownload isEqual:?]& 1;
      MEMORY[0x277D82BD8](underlyingDownload2);
      MEMORY[0x277D82BD8](underlyingDownload);
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
  underlyingDownload = [(SUUIMobileDownload *)self underlyingDownload];
  v4 = [(SUDownload *)underlyingDownload hash];
  MEMORY[0x277D82BD8](underlyingDownload);
  return v4;
}

@end