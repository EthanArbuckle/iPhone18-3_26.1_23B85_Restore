@interface RSParentAssociation
- (RSParentAssociation)init;
- (id).cxx_construct;
@end

@implementation RSParentAssociation

- (id).cxx_construct
{
  *(self + 1) = &unk_2874EED60;
  *(self + 1) = xmmword_2623A75A0;
  *(self + 2) = xmmword_2623A75B0;
  *(self + 3) = xmmword_2623A75C0;
  *(self + 8) = 0x3F0000003E4CCCCDLL;
  *(self + 9) = 0x3F40000000000003;
  *(self + 20) = 3;
  *(self + 84) = xmmword_2623A75D0;
  *(self + 100) = xmmword_2623A75E0;
  *(self + 116) = xmmword_2623A75F0;
  *(self + 33) = 2;
  return self;
}

- (RSParentAssociation)init
{
  v3.receiver = self;
  v3.super_class = RSParentAssociation;
  return [(RSParentAssociation *)&v3 init];
}

@end