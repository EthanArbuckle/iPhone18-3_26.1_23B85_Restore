@interface SFCustom
- (SFCustom)init;
- (SFCustom)initWithCoder:(id)a3;
@end

@implementation SFCustom

- (SFCustom)initWithCoder:(id)a3
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