@interface PUVFXLayer
- (id)actionForKey:(id)a3;
- (void)layoutSublayers;
@end

@implementation PUVFXLayer

- (id)actionForKey:(id)a3
{
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  v7 = self;
  v8 = sub_1B38770D0(v4, v6);

  return v8;
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1B3877268();
}

@end