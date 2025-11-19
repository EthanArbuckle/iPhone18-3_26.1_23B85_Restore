@interface LipMovementData
- (LipMovementData)initWithBlendshape:(id)a3 andTime:(unint64_t)a4;
@end

@implementation LipMovementData

- (LipMovementData)initWithBlendshape:(id)a3 andTime:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = LipMovementData;
  v8 = [(LipMovementData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_blendshapes, a3);
    v9->_absMachTime = a4;
  }

  return v9;
}

@end