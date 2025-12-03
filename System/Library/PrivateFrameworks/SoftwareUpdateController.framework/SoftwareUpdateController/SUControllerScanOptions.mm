@interface SUControllerScanOptions
- (BOOL)isEqual:(id)equal;
- (SUControllerScanOptions)init;
- (SUControllerScanOptions)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUControllerScanOptions

- (SUControllerScanOptions)init
{
  v3.receiver = self;
  v3.super_class = SUControllerScanOptions;
  result = [(SUControllerScanOptions *)&v3 init];
  if (result)
  {
    *&result->_userInitiated = 257;
  }

  return result;
}

- (SUControllerScanOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SUControllerScanOptions;
  v5 = [(SUControllerScanOptions *)&v7 init];
  if (v5)
  {
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_downloadWhenFound = [coderCopy decodeBoolForKey:@"downloadWhenFound"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUControllerScanOptions userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[SUControllerScanOptions downloadWhenFound](self forKey:{"downloadWhenFound"), @"downloadWhenFound"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  userInitiated = [(SUControllerScanOptions *)self userInitiated];
  if (userInitiated == [equalCopy userInitiated])
  {
    downloadWhenFound = [(SUControllerScanOptions *)self downloadWhenFound];
    v6 = downloadWhenFound ^ [equalCopy downloadWhenFound] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SUControllerScanOptions *)self userInitiated])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(SUControllerScanOptions *)self downloadWhenFound])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"\n        userInitiated: %@\n    downloadWhenFound: %@", v4, v5];
}

- (id)summary
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SUControllerScanOptions *)self userInitiated])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  if ([(SUControllerScanOptions *)self downloadWhenFound])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  return [v3 stringWithFormat:@"userInitiated:%@, downloadWhenFound:%@", v4, v5];
}

@end