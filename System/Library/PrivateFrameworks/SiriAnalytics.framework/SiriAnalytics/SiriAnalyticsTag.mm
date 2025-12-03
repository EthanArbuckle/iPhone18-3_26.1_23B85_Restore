@interface SiriAnalyticsTag
- (SiriAnalyticsTag)initWithCoder:(id)coder;
@end

@implementation SiriAnalyticsTag

- (SiriAnalyticsTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SiriAnalyticsTag;
  v5 = [(SiriAnalyticsTag *)&v9 init];
  if (v5)
  {
    v6 = [[SiriAnalyticsTagShim alloc] initWithCoder:coderCopy];
    shim = v5->_shim;
    v5->_shim = v6;
  }

  return v5;
}

@end