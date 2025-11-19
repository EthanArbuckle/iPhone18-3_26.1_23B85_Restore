@interface PUOneUpDetailsBarButtonController
+ (id)defaultGlyphNameFor:(id)a3;
- (void)currentAssetDidChange;
- (void)update;
@end

@implementation PUOneUpDetailsBarButtonController

- (void)update
{
  v2 = self;
  sub_1B37150D4();
}

+ (id)defaultGlyphNameFor:(id)a3
{
  v3 = a3;
  sub_1B371592C(v3);

  v4 = sub_1B3C9C5A8();

  return v4;
}

- (void)currentAssetDidChange
{
  v2 = self;
  sub_1B3715AB0();
}

@end