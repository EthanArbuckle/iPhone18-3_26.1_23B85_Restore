@interface SUIBBridgedMatch
- (_NSRange)range;
- (id)captured;
@end

@implementation SUIBBridgedMatch

- (_NSRange)range
{
  v2 = self;
  v3 = sub_222DF7948();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)captured
{
  v2 = self;
  sub_222DF7B08();

  v3 = sub_222E098B0();

  return v3;
}

@end