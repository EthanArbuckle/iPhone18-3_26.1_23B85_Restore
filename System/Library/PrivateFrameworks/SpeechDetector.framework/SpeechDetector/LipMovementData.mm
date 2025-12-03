@interface LipMovementData
- (LipMovementData)initWithBlendshape:(id)blendshape andTime:(unint64_t)time;
@end

@implementation LipMovementData

- (LipMovementData)initWithBlendshape:(id)blendshape andTime:(unint64_t)time
{
  blendshapeCopy = blendshape;
  v11.receiver = self;
  v11.super_class = LipMovementData;
  v8 = [(LipMovementData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_blendshapes, blendshape);
    v9->_absMachTime = time;
  }

  return v9;
}

@end