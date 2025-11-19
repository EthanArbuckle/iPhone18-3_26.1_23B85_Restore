@interface VSCuratedViewModel
- (CGSize)preferredLogoSize;
- (VSCuratedViewModel)init;
- (void)configureWithRequest:(id)a3;
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

- (void)configureWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(VSViewModel *)self identityProvider];
  v6 = [v5 displayName];
  v7 = [v6 forceUnwrapObject];
  [(VSCuratedViewModel *)self setLogoAccessibilityLabel:v7];

  v8 = [v4 requestingAppDisplayName];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v10 = [v9 localizedStringForKey:@"APP_PRIVACY_NOTICE_FORMAT" value:0 table:0];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v8];
  }

  else
  {
    v11 = 0;
  }

  [(VSCuratedViewModel *)self setNotice:v11];
  v12.receiver = self;
  v12.super_class = VSCuratedViewModel;
  [(VSViewModel *)&v12 configureWithRequest:v4];
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