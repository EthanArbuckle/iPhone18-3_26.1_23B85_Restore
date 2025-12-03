@interface DemoteApplicationOperation
- (DemoteApplicationOperation)initWithBundleIdentifier:(id)identifier;
- (void)run;
@end

@implementation DemoteApplicationOperation

- (DemoteApplicationOperation)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DemoteApplicationOperation;
  v5 = [(DemoteApplicationOperation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (void)run
{
  v3 = [NSError errorWithDomain:SSErrorDomain code:106 userInfo:&off_10034CD20];
  [(DemoteApplicationOperation *)self setError:v3];
  [(DemoteApplicationOperation *)self setSuccess:0];
}

@end