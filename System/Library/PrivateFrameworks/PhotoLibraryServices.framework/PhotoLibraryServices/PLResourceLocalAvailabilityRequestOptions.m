@interface PLResourceLocalAvailabilityRequestOptions
- (BOOL)shouldPrioritize;
- (PLResourceLocalAvailabilityRequestOptions)init;
@end

@implementation PLResourceLocalAvailabilityRequestOptions

- (BOOL)shouldPrioritize
{
  v2 = [(PLResourceLocalAvailabilityRequestOptions *)self downloadOptions];
  v3 = [v2 isHighPriority];

  return v3;
}

- (PLResourceLocalAvailabilityRequestOptions)init
{
  v6.receiver = self;
  v6.super_class = PLResourceLocalAvailabilityRequestOptions;
  v2 = [(PLResourceLocalAvailabilityRequestOptions *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6994BA8] defaultOptions];
    downloadOptions = v2->_downloadOptions;
    v2->_downloadOptions = v3;
  }

  return v2;
}

@end