@interface SUUIMobileDownloadProgress
- (BOOL)isEqual:(id)a3;
- (BOOL)isStalled;
- (SUUIMobileDownloadProgress)init;
- (SUUIMobileDownloadProgress)initWithCoder:(id)a3;
- (SUUIMobileDownloadProgress)initWithOperationProgress:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)phase;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIMobileDownloadProgress

- (SUUIMobileDownloadProgress)init
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

- (SUUIMobileDownloadProgress)initWithOperationProgress:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUUIMobileDownloadProgress;
  v6 = [(SUUIMobileDownloadProgress *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_underlyingProgress, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (int64_t)phase
{
  v5 = self;
  location[1] = a2;
  location[0] = [(SUOperationProgress *)self->_underlyingProgress phase];
  if ([location[0] isEqualToString:*MEMORY[0x277D649F0]])
  {
    v6 = 2;
  }

  else if (([location[0] isEqualToString:*MEMORY[0x277D64A00]] & 1) != 0 && (-[SUUIMobileDownloadProgress percentComplete](v5, "percentComplete"), v2 >= 1.0))
  {
    v6 = 2;
  }

  else
  {
    [(SUUIMobileDownloadProgress *)v5 timeRemaining];
    v6 = [(SUUIMobileDownloadProgress *)v5 isValidTimeRemaining:?];
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)isStalled
{
  v3 = [(SUOperationProgress *)self->_underlyingProgress phase];
  IsStalled = SUDownloadPhaseIsStalled();
  MEMORY[0x277D82BD8](v3);
  return IsStalled;
}

- (SUUIMobileDownloadProgress)initWithCoder:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"operationProgress"];
  if (v5)
  {
    v3 = v7;
    v7 = 0;
    v7 = [v3 initWithOperationProgress:v5];
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
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_underlyingProgress forKey:@"operationProgress"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = [(SUOperationProgress *)self->_underlyingProgress copyWithZone:a3];
  if (!v13)
  {
    v9 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE658];
    v7 = MEMORY[0x277CCACA8];
    v3 = objc_opt_class();
    v11 = NSStringFromClass(v3);
    v10 = [v7 stringWithFormat:@"Could not create a copy of %@: The underlying progress is corrupted.", v11];
    v12 = [v9 exceptionWithName:v8 reason:? userInfo:?];
    v4 = v12;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_exception_throw(v12);
  }

  v6 = [[SUUIMobileDownloadProgress allocWithZone:?], "initWithOperationProgress:", v13];
  objc_storeStrong(&v13, 0);
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
      v5 = [(SUUIMobileDownloadProgress *)v9 underlyingProgress];
      v4 = [v6 underlyingProgress];
      v10 = [(SUOperationProgress *)v5 isEqual:?]& 1;
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
  v3 = [(SUUIMobileDownloadProgress *)self underlyingProgress];
  v4 = [(SUOperationProgress *)v3 hash];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

@end