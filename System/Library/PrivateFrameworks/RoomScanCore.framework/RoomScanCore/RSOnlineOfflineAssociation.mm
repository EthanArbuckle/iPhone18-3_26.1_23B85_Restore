@interface RSOnlineOfflineAssociation
- (RSOnlineOfflineAssociation)init;
- (id).cxx_construct;
@end

@implementation RSOnlineOfflineAssociation

- (id).cxx_construct
{
  *(self + 1) = &unk_2874EE4F8;
  *(self + 8) = 0x3F0000003E4CCCCDLL;
  *(self + 9) = 0x3F40000000000003;
  *(self + 20) = 3;
  *(self + 84) = xmmword_2623A75D0;
  *(self + 100) = xmmword_2623A75E0;
  *(self + 116) = xmmword_2623A75F0;
  *(self + 33) = 2;
  *(self + 136) = 1;
  *(self + 1) = xmmword_2623A7D10;
  *(self + 2) = xmmword_2623A7D20;
  *(self + 3) = xmmword_2623A75C0;
  *(self + 84) = 0x3F0000003F4CCCCDLL;
  *(self + 6) = xmmword_2623A79F0;
  *(self + 124) = 0x3F0000003F19999ALL;
  return self;
}

- (RSOnlineOfflineAssociation)init
{
  v3.receiver = self;
  v3.super_class = RSOnlineOfflineAssociation;
  result = [(RSOnlineOfflineAssociation *)&v3 init];
  if (result)
  {
    result->_isCurveEnabled = 1;
  }

  return result;
}

@end