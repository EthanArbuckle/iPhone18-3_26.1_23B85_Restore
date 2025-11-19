@interface PXLemonadeShelfIdentifierHelper
+ (NSString)photosChallengeShelfSlug;
- (PXLemonadeShelfIdentifierHelper)init;
@end

@implementation PXLemonadeShelfIdentifierHelper

+ (NSString)photosChallengeShelfSlug
{
  v2 = sub_1A524C7A4();
  v3 = sub_1A524C7A4();
  v4 = __OFSUB__(v2, v3);
  result = (v2 - v3);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1A3DD1E84(result);
    MEMORY[0x1A5907AC0](v6);

    v7 = sub_1A524C634();

    return v7;
  }

  return result;
}

- (PXLemonadeShelfIdentifierHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeShelfIdentifierHelper();
  return [(PXLemonadeShelfIdentifierHelper *)&v3 init];
}

@end