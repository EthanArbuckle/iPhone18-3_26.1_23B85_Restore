@interface RSRecessedAreaReconstructor
- (RSRecessedAreaReconstructor)init;
- (id).cxx_construct;
@end

@implementation RSRecessedAreaReconstructor

- (id).cxx_construct
{
  *(self + 24) = xmmword_2623A75A0;
  *(self + 40) = xmmword_2623A75B0;
  *(self + 56) = xmmword_2623A75C0;
  *(self + 9) = 0x3F0000003E4CCCCDLL;
  *(self + 10) = 0x3F40000000000003;
  *(self + 22) = 3;
  *(self + 92) = xmmword_2623A75D0;
  *(self + 108) = xmmword_2623A75E0;
  *(self + 124) = xmmword_2623A75F0;
  *(self + 35) = 2;
  *(self + 5) = 0x41F0000041A00000;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  return self;
}

- (RSRecessedAreaReconstructor)init
{
  v12.receiver = self;
  v12.super_class = RSRecessedAreaReconstructor;
  v4 = [(RSRecessedAreaReconstructor *)&v12 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
    current_frame_recessed_area_list = v4->_current_frame_recessed_area_list;
    v4->_current_frame_recessed_area_list = v5;

    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
    recessed_area_pool = v4->_recessed_area_pool;
    v4->_recessed_area_pool = v9;
  }

  return v4;
}

@end