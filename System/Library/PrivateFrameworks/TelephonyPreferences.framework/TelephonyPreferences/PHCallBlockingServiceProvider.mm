@interface PHCallBlockingServiceProvider
- (PHCallBlockingServiceProvider)initWithLocalizedName:(id)name supportsSpamBlocking:(BOOL)blocking;
@end

@implementation PHCallBlockingServiceProvider

- (PHCallBlockingServiceProvider)initWithLocalizedName:(id)name supportsSpamBlocking:(BOOL)blocking
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PHCallBlockingServiceProvider;
  v7 = [(PHCallBlockingServiceProvider *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    localizedName = v7->_localizedName;
    v7->_localizedName = v8;

    v7->_supportsSpamBlocking = blocking;
  }

  return v7;
}

@end