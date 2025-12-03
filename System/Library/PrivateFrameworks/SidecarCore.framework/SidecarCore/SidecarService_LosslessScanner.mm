@interface SidecarService_LosslessScanner
+ (id)returnTypes;
- (id)makeRequest;
@end

@implementation SidecarService_LosslessScanner

+ (id)returnTypes
{
  if (returnTypes_once_331 != -1)
  {
    dispatch_once(&returnTypes_once_331, &__block_literal_global_332);
  }

  v3 = returnTypes_types_333;

  return v3;
}

- (id)makeRequest
{
  devices = [(SidecarService *)self devices];
  firstObject = [devices firstObject];

  if (firstObject)
  {
    v5 = [[SidecarRequest_ScanLosslessDocument alloc] initWithService:self device:firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end