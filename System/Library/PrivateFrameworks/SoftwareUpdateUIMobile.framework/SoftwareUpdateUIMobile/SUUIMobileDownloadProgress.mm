@interface SUUIMobileDownloadProgress
- (BOOL)isEqual:(id)equal;
- (BOOL)isStalled;
- (SUUIMobileDownloadProgress)init;
- (SUUIMobileDownloadProgress)initWithCoder:(id)coder;
- (SUUIMobileDownloadProgress)initWithOperationProgress:(id)progress;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)phase;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (SUUIMobileDownloadProgress)initWithOperationProgress:(id)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, progress);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUUIMobileDownloadProgress;
  v6 = [(SUUIMobileDownloadProgress *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_underlyingProgress, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (int64_t)phase
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUOperationProgress *)self->_underlyingProgress phase];
  if ([location[0] isEqualToString:*MEMORY[0x277D649F0]])
  {
    v6 = 2;
  }

  else if (([location[0] isEqualToString:*MEMORY[0x277D64A00]] & 1) != 0 && (-[SUUIMobileDownloadProgress percentComplete](selfCopy, "percentComplete"), v2 >= 1.0))
  {
    v6 = 2;
  }

  else
  {
    [(SUUIMobileDownloadProgress *)selfCopy timeRemaining];
    v6 = [(SUUIMobileDownloadProgress *)selfCopy isValidTimeRemaining:?];
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)isStalled
{
  phase = [(SUOperationProgress *)self->_underlyingProgress phase];
  IsStalled = SUDownloadPhaseIsStalled();
  MEMORY[0x277D82BD8](phase);
  return IsStalled;
}

- (SUUIMobileDownloadProgress)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"operationProgress"];
  if (v5)
  {
    v3 = selfCopy;
    selfCopy = 0;
    selfCopy = [v3 initWithOperationProgress:v5];
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
  [location[0] encodeObject:selfCopy->_underlyingProgress forKey:@"operationProgress"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v15 = a2;
  zoneCopy = zone;
  v13 = [(SUOperationProgress *)self->_underlyingProgress copyWithZone:zone];
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
      underlyingProgress = [(SUUIMobileDownloadProgress *)selfCopy underlyingProgress];
      underlyingProgress2 = [v6 underlyingProgress];
      v10 = [(SUOperationProgress *)underlyingProgress isEqual:?]& 1;
      MEMORY[0x277D82BD8](underlyingProgress2);
      MEMORY[0x277D82BD8](underlyingProgress);
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
  underlyingProgress = [(SUUIMobileDownloadProgress *)self underlyingProgress];
  v4 = [(SUOperationProgress *)underlyingProgress hash];
  MEMORY[0x277D82BD8](underlyingProgress);
  return v4;
}

@end