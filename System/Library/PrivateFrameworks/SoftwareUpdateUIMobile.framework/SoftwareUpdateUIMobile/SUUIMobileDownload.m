@interface SUUIMobileDownload
- (BOOL)isAutoDownload;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUninitialized;
- (SUUIMobileDownload)init;
- (SUUIMobileDownload)initWithCoder:(id)a3;
- (SUUIMobileDownload)initWithDownload:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (SUUIMobileDownload)initWithDownload:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v21;
  v21 = 0;
  v19.receiver = v3;
  v19.super_class = SUUIMobileDownload;
  v21 = [(SUUIMobileDownload *)&v19 init];
  objc_storeStrong(&v21, v21);
  if (v21)
  {
    objc_storeStrong(&v21->_underlyingDownload, location[0]);
    v12 = [SUUIMobileDescriptor alloc];
    v13 = [location[0] descriptor];
    v4 = [(SUUIMobileDescriptor *)v12 initWithDescriptor:?];
    mobileDescriptor = v21->_mobileDescriptor;
    v21->_mobileDescriptor = v4;
    MEMORY[0x277D82BD8](mobileDescriptor);
    MEMORY[0x277D82BD8](v13);
    v14 = [SUUIMobileDownloadProgress alloc];
    v15 = [location[0] progress];
    v6 = [(SUUIMobileDownloadProgress *)v14 initWithOperationProgress:?];
    mobileDownloadProgress = v21->_mobileDownloadProgress;
    v21->_mobileDownloadProgress = v6;
    MEMORY[0x277D82BD8](mobileDownloadProgress);
    MEMORY[0x277D82BD8](v15);
    v17 = [(SUUIMobileDownload *)v21 underlyingDownload];
    v16 = [(SUDownload *)v17 downloadOptions];
    v18 = [(SUDownloadOptions *)v16 activeDownloadPolicy];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    if (v18)
    {
      v8 = [[SUUIMobileDownloadPolicy alloc] initWithPolicy:v18];
      mobilePolicy = v21->_mobilePolicy;
      v21->_mobilePolicy = v8;
      MEMORY[0x277D82BD8](mobilePolicy);
    }

    objc_storeStrong(&v18, 0);
  }

  v11 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v11;
}

- (BOOL)isAutoDownload
{
  v4 = [(SUUIMobileDownload *)self underlyingDownload];
  v3 = [(SUDownload *)v4 downloadOptions];
  v5 = [(SUDownloadOptions *)v3 isAutoDownload];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)isUninitialized
{
  v3 = [(SUUIMobileDownload *)self underlyingDownload];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v3);
  return isKindOfClass & 1;
}

- (SUUIMobileDownload)initWithCoder:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"download"];
  if (v5)
  {
    v3 = v7;
    v7 = 0;
    v7 = [v3 initWithDownload:v5];
    v8 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(SUUIMobileDownload *)v6 underlyingDownload];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v13 = [(SUUIMobileDownload *)self underlyingDownload];
  v14 = [(SUDownload *)v13 copyWithZone:v15];
  MEMORY[0x277D82BD8](v13);
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
      v5 = [(SUUIMobileDownload *)v9 underlyingDownload];
      v4 = [v6 underlyingDownload];
      v10 = [(SUDownload *)v5 isEqual:?]& 1;
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
  v3 = [(SUUIMobileDownload *)self underlyingDownload];
  v4 = [(SUDownload *)v3 hash];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

@end