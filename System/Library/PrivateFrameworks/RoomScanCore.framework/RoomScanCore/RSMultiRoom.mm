@interface RSMultiRoom
- (id).cxx_construct;
@end

@implementation RSMultiRoom

- (id).cxx_construct
{
  *(self + 8) = xmmword_2623A7D60;
  *(self + 24) = xmmword_2623A7D70;
  *(self + 40) = xmmword_2623A7D80;
  *(self + 56) = xmmword_2623A7D90;
  *(self + 72) = xmmword_2623A7DA0;
  *(self + 88) = xmmword_2623A7DB0;
  *(self + 104) = xmmword_2623A7DC0;
  *(self + 120) = xmmword_2623A7DD0;
  *(self + 136) = xmmword_2623A7DE0;
  *(self + 152) = xmmword_2623A7DF0;
  *(self + 168) = xmmword_2623A7E00;
  *(self + 184) = xmmword_2623A7E10;
  *(self + 200) = xmmword_2623A7E20;
  *(self + 216) = xmmword_2623A7E30;
  *(self + 232) = xmmword_2623A7E40;
  *(self + 62) = 1045220557;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 90) = 1065353216;
  *(self + 23) = 0u;
  *(self + 24) = 0u;
  *(self + 100) = 1065353216;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 110) = 1065353216;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  *(self + 62) = 0;
  *(self + 126) = 1065353216;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 136) = 1065353216;
  *(self + 552) = 0u;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 75) = 0;
  *(self + 152) = 1065353216;
  *(self + 79) = 0;
  *(self + 616) = 0u;
  return self;
}

@end