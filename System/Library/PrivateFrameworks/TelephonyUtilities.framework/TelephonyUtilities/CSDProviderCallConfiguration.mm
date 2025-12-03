@interface CSDProviderCallConfiguration
- (CSDProviderCallConfiguration)initWithProviderIdentifier:(id)identifier;
@end

@implementation CSDProviderCallConfiguration

- (CSDProviderCallConfiguration)initWithProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CSDProviderCallConfiguration;
  v5 = [(CSDProviderCallConfiguration *)&v11 init];
  if (v5)
  {
    if (!identifierCopy)
    {
      [NSException raise:NSInvalidArgumentException format:@"%s: parameter '%@' cannot be nil", "[CSDProviderCallConfiguration initWithProviderIdentifier:]", @"providerIdentifier"];
    }

    v5->_endpointOnCurrentDevice = 1;
    v6 = [identifierCopy copy];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v6;

    v8 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v8;
  }

  return v5;
}

@end