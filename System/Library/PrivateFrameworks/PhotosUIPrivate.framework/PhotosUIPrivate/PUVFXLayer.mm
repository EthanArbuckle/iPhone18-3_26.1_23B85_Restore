@interface PUVFXLayer
- (id)actionForKey:(id)key;
- (void)layoutSublayers;
@end

@implementation PUVFXLayer

- (id)actionForKey:(id)key
{
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B38770D0(v4, v6);

  return v8;
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_1B3877268();
}

@end