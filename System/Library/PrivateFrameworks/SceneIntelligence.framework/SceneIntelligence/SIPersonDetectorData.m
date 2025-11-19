@interface SIPersonDetectorData
- (SIPersonDetectorData)init;
@end

@implementation SIPersonDetectorData

- (SIPersonDetectorData)init
{
  v7.receiver = self;
  v7.super_class = SIPersonDetectorData;
  v2 = [(SIPersonDetectorData *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    boundingBoxes = v2->_boundingBoxes;
    v2->_boundingBoxes = v3;

    v5 = v2;
  }

  return v2;
}

@end