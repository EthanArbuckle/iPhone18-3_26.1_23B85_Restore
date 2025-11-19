@interface RSFloorEstimation
- (RSFloorEstimation)init;
- (id).cxx_construct;
@end

@implementation RSFloorEstimation

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 16) = 0;
  *(self + 32) = 0;
  *(self + 40) = 0;
  return self;
}

- (RSFloorEstimation)init
{
  v6.receiver = self;
  v6.super_class = RSFloorEstimation;
  v2 = [(RSFloorEstimation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

@end