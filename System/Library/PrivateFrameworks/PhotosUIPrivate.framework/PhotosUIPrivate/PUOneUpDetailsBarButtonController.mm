@interface PUOneUpDetailsBarButtonController
+ (id)defaultGlyphNameFor:(id)for;
- (void)currentAssetDidChange;
- (void)update;
@end

@implementation PUOneUpDetailsBarButtonController

- (void)update
{
  selfCopy = self;
  sub_1B37150D4();
}

+ (id)defaultGlyphNameFor:(id)for
{
  forCopy = for;
  sub_1B371592C(forCopy);

  v4 = sub_1B3C9C5A8();

  return v4;
}

- (void)currentAssetDidChange
{
  selfCopy = self;
  sub_1B3715AB0();
}

@end