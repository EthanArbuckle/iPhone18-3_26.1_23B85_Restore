@interface PHCallBlockingServiceProvider
- (PHCallBlockingServiceProvider)initWithLocalizedName:(id)a3 supportsSpamBlocking:(BOOL)a4;
@end

@implementation PHCallBlockingServiceProvider

- (PHCallBlockingServiceProvider)initWithLocalizedName:(id)a3 supportsSpamBlocking:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PHCallBlockingServiceProvider;
  v7 = [(PHCallBlockingServiceProvider *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    localizedName = v7->_localizedName;
    v7->_localizedName = v8;

    v7->_supportsSpamBlocking = a4;
  }

  return v7;
}

@end