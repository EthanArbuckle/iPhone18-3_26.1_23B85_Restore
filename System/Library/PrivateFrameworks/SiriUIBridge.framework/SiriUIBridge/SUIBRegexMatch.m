@interface SUIBRegexMatch
- (SUIBRegexMatch)initWithBridgedMatch:(id)a3;
- (_NSRange)range;
- (id)captured;
@end

@implementation SUIBRegexMatch

- (SUIBRegexMatch)initWithBridgedMatch:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUIBRegexMatch;
  v6 = [(SUIBRegexMatch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bridgedMatch, a3);
  }

  return v7;
}

- (_NSRange)range
{
  v2 = [(SUIBRegexMatch *)self bridgedMatch];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)captured
{
  v2 = [(SUIBRegexMatch *)self bridgedMatch];
  v3 = [v2 captured];

  return v3;
}

@end