@interface SUIBRegexMatch
- (SUIBRegexMatch)initWithBridgedMatch:(id)match;
- (_NSRange)range;
- (id)captured;
@end

@implementation SUIBRegexMatch

- (SUIBRegexMatch)initWithBridgedMatch:(id)match
{
  matchCopy = match;
  v9.receiver = self;
  v9.super_class = SUIBRegexMatch;
  v6 = [(SUIBRegexMatch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bridgedMatch, match);
  }

  return v7;
}

- (_NSRange)range
{
  bridgedMatch = [(SUIBRegexMatch *)self bridgedMatch];
  range = [bridgedMatch range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)captured
{
  bridgedMatch = [(SUIBRegexMatch *)self bridgedMatch];
  captured = [bridgedMatch captured];

  return captured;
}

@end