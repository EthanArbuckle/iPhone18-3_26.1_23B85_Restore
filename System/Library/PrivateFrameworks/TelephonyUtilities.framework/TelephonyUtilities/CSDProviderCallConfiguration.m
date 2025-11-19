@interface CSDProviderCallConfiguration
- (CSDProviderCallConfiguration)initWithProviderIdentifier:(id)a3;
@end

@implementation CSDProviderCallConfiguration

- (CSDProviderCallConfiguration)initWithProviderIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSDProviderCallConfiguration;
  v5 = [(CSDProviderCallConfiguration *)&v11 init];
  if (v5)
  {
    if (!v4)
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDProviderCallConfiguration initWithProviderIdentifier:]", @"providerIdentifier"];
    }

    v5->_endpointOnCurrentDevice = 1;
    v6 = [v4 copy];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v6;

    v8 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v8;
  }

  return v5;
}

@end