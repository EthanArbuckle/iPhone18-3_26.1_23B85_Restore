@interface VariablePillDrawer.CacheKey
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
@end

@implementation VariablePillDrawer.CacheKey

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C83CBCF0();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C840D35C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C83CBDD4(v8);

  sub_1C83C5FC4(v8);
  return v6 & 1;
}

@end