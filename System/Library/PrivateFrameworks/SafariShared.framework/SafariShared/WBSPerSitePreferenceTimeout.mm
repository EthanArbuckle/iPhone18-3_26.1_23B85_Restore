@interface WBSPerSitePreferenceTimeout
+ (id)timeoutWithInterval:(double)interval fallbackValue:(id)value;
- (WBSPerSitePreferenceTimeout)initWithInterval:(double)interval fallbackValue:(id)value;
@end

@implementation WBSPerSitePreferenceTimeout

+ (id)timeoutWithInterval:(double)interval fallbackValue:(id)value
{
  valueCopy = value;
  v7 = [[self alloc] initWithInterval:valueCopy fallbackValue:interval];

  return v7;
}

- (WBSPerSitePreferenceTimeout)initWithInterval:(double)interval fallbackValue:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = WBSPerSitePreferenceTimeout;
  v8 = [(WBSPerSitePreferenceTimeout *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_interval = interval;
    objc_storeStrong(&v8->_fallbackValue, value);
    v10 = v9;
  }

  return v9;
}

@end