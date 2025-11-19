@interface RSDeduplicateOpeningOpenDoor
- (RSDeduplicateOpeningOpenDoor)init;
- (id).cxx_construct;
@end

@implementation RSDeduplicateOpeningOpenDoor

- (id).cxx_construct
{
  *(self + 1) = &unk_2874EE8F0;
  *(self + 76) = 0x3F0000003E4CCCCDLL;
  *(self + 84) = 0x3F40000000000003;
  *(self + 23) = 3;
  *(self + 6) = xmmword_2623A75D0;
  *(self + 7) = xmmword_2623A75E0;
  *(self + 8) = xmmword_2623A75F0;
  *(self + 36) = 2;
  *(self + 1) = xmmword_2623A79C0;
  *(self + 2) = xmmword_2623A79D0;
  *(self + 3) = xmmword_2623A79E0;
  *(self + 8) = 0x3DCCCCCD3ECCCCCDLL;
  *(self + 18) = 1114636288;
  *(self + 12) = 0x3F0000003F4CCCCDLL;
  *(self + 108) = xmmword_2623A79F0;
  *(self + 17) = 0x3F0000003F19999ALL;
  return self;
}

- (RSDeduplicateOpeningOpenDoor)init
{
  v3.receiver = self;
  v3.super_class = RSDeduplicateOpeningOpenDoor;
  return [(RSDeduplicateOpeningOpenDoor *)&v3 init];
}

@end