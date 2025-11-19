@interface RSDriftDetection
- (RSDriftDetection)init;
- (id).cxx_construct;
@end

@implementation RSDriftDetection

- (id).cxx_construct
{
  *(self + 1) = &unk_2874EE350;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 3) = xmmword_2623A7640;
  *(self + 4) = xmmword_2623A7650;
  *(self + 5) = xmmword_2623A7660;
  *(self + 12) = 0x33A03126FLL;
  *(self + 13) = 0;
  *(self + 4) = 0;
  *(self + 7) = xmmword_2623A7670;
  return self;
}

- (RSDriftDetection)init
{
  v3.receiver = self;
  v3.super_class = RSDriftDetection;
  return [(RSDriftDetection *)&v3 init];
}

@end