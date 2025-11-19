@interface SidecarService_Scanner
+ (id)returnTypes;
- (id)makeRequest;
@end

@implementation SidecarService_Scanner

+ (id)returnTypes
{
  if (returnTypes_once != -1)
  {
    dispatch_once(&returnTypes_once, &__block_literal_global);
  }

  v3 = returnTypes_types;

  return v3;
}

- (id)makeRequest
{
  v3 = [(SidecarService *)self devices];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [[SidecarRequest_ScanDocument alloc] initWithService:self device:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end