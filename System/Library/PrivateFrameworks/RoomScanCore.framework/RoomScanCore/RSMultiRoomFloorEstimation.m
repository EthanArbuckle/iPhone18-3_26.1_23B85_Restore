@interface RSMultiRoomFloorEstimation
- (RSMultiRoomFloorEstimation)init;
- (id).cxx_construct;
@end

@implementation RSMultiRoomFloorEstimation

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 16) = 0;
  return self;
}

- (RSMultiRoomFloorEstimation)init
{
  v6.receiver = self;
  v6.super_class = RSMultiRoomFloorEstimation;
  v2 = [(RSMultiRoomFloorEstimation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

@end