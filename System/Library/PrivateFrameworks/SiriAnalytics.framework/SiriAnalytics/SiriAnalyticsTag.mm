@interface SiriAnalyticsTag
- (SiriAnalyticsTag)initWithCoder:(id)a3;
@end

@implementation SiriAnalyticsTag

- (SiriAnalyticsTag)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SiriAnalyticsTag;
  v5 = [(SiriAnalyticsTag *)&v9 init];
  if (v5)
  {
    v6 = [[SiriAnalyticsTagShim alloc] initWithCoder:v4];
    shim = v5->_shim;
    v5->_shim = v6;
  }

  return v5;
}

@end