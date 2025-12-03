@interface SFCustom
- (SFCustom)init;
- (SFCustom)initWithCoder:(id)coder;
@end

@implementation SFCustom

- (SFCustom)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFCustom;
  return [(SFCustom *)&v4 init];
}

- (SFCustom)init
{
  v3.receiver = self;
  v3.super_class = SFCustom;
  return [(SFCustom *)&v3 init];
}

@end