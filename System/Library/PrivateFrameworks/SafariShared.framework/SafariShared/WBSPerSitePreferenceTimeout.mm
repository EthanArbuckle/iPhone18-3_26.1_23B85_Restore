@interface WBSPerSitePreferenceTimeout
+ (id)timeoutWithInterval:(double)a3 fallbackValue:(id)a4;
- (WBSPerSitePreferenceTimeout)initWithInterval:(double)a3 fallbackValue:(id)a4;
@end

@implementation WBSPerSitePreferenceTimeout

+ (id)timeoutWithInterval:(double)a3 fallbackValue:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithInterval:v6 fallbackValue:a3];

  return v7;
}

- (WBSPerSitePreferenceTimeout)initWithInterval:(double)a3 fallbackValue:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WBSPerSitePreferenceTimeout;
  v8 = [(WBSPerSitePreferenceTimeout *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_interval = a3;
    objc_storeStrong(&v8->_fallbackValue, a4);
    v10 = v9;
  }

  return v9;
}

@end