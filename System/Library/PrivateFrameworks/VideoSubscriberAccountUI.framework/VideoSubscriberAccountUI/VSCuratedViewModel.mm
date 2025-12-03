@interface VSCuratedViewModel
- (CGSize)preferredLogoSize;
- (VSCuratedViewModel)init;
- (void)configureWithRequest:(id)request;
@end

@implementation VSCuratedViewModel

- (VSCuratedViewModel)init
{
  v6.receiver = self;
  v6.super_class = VSCuratedViewModel;
  v2 = [(VSViewModel *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2298]);
    identityProviderDisplayName = v2->_identityProviderDisplayName;
    v2->_identityProviderDisplayName = v3;
  }

  return v2;
}

- (void)configureWithRequest:(id)request
{
  requestCopy = request;
  identityProvider = [(VSViewModel *)self identityProvider];
  displayName = [identityProvider displayName];
  forceUnwrapObject = [displayName forceUnwrapObject];
  [(VSCuratedViewModel *)self setLogoAccessibilityLabel:forceUnwrapObject];

  requestingAppDisplayName = [requestCopy requestingAppDisplayName];
  if (requestingAppDisplayName)
  {
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v10 = [vs_frameworkBundle localizedStringForKey:@"APP_PRIVACY_NOTICE_FORMAT" value:0 table:0];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, requestingAppDisplayName];
  }

  else
  {
    v11 = 0;
  }

  [(VSCuratedViewModel *)self setNotice:v11];
  v12.receiver = self;
  v12.super_class = VSCuratedViewModel;
  [(VSViewModel *)&v12 configureWithRequest:requestCopy];
}

- (CGSize)preferredLogoSize
{
  width = self->preferredLogoSize.width;
  height = self->preferredLogoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end