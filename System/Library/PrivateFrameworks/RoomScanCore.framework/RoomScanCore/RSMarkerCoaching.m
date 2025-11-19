@interface RSMarkerCoaching
- (id).cxx_construct;
@end

@implementation RSMarkerCoaching

- (id).cxx_construct
{
  *(self + 1) = &unk_2874EED40;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = xmmword_2623A7D30;
  *(self + 12) = 0x41F000003F333333;
  *(self + 13) = 0x143E99999ALL;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 1) = xmmword_2623A7D40;
  *(self + 2) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  return self;
}

@end