@interface PLResourceLocalAvailabilityRequestOptions
- (BOOL)shouldPrioritize;
- (PLResourceLocalAvailabilityRequestOptions)init;
@end

@implementation PLResourceLocalAvailabilityRequestOptions

- (BOOL)shouldPrioritize
{
  downloadOptions = [(PLResourceLocalAvailabilityRequestOptions *)self downloadOptions];
  isHighPriority = [downloadOptions isHighPriority];

  return isHighPriority;
}

- (PLResourceLocalAvailabilityRequestOptions)init
{
  v6.receiver = self;
  v6.super_class = PLResourceLocalAvailabilityRequestOptions;
  v2 = [(PLResourceLocalAvailabilityRequestOptions *)&v6 init];
  if (v2)
  {
    defaultOptions = [MEMORY[0x1E6994BA8] defaultOptions];
    downloadOptions = v2->_downloadOptions;
    v2->_downloadOptions = defaultOptions;
  }

  return v2;
}

@end