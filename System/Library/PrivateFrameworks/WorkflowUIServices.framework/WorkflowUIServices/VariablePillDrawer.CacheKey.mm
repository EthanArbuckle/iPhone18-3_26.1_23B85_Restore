@interface VariablePillDrawer.CacheKey
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation VariablePillDrawer.CacheKey

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C83CBCF0();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C840D35C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1C83CBDD4(v8);

  sub_1C83C5FC4(v8);
  return v6 & 1;
}

@end