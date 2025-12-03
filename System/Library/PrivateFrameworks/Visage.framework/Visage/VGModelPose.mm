@interface VGModelPose
- (BOOL)isEqual:(id)equal;
- (VGModelPose)initWithCoder:(id)coder;
- (__n128)modelPose;
- (__n128)setModelPose:(__n128)pose;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGModelPose

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEA90];
  coderCopy = coder;
  v6 = [v4 dataWithBytes:&self[1] length:64];
  [coderCopy encodeObject:v6 forKey:@"modelPose"];
}

- (VGModelPose)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VGModelPose;
  v5 = [(VGModelPose *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelPose"];
    [v6 getBytes:&v5[1] length:64];
    v7 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(VGModelPose *)self modelPose];
    v16 = v7;
    v17 = v6;
    v18 = v9;
    v19 = v8;
    v12 = v5[2];
    v13 = v5[1];
    v14 = v5[4];
    v15 = v5[3];

    v10 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v17, v13), vceqq_f32(v16, v12)), vandq_s8(vceqq_f32(v19, v15), vceqq_f32(v18, v14)))) >> 31;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (__n128)modelPose
{
  result = *(self + 16);
  v2 = *(self + 32);
  v3 = *(self + 48);
  v4 = *(self + 64);
  return result;
}

- (__n128)setModelPose:(__n128)pose
{
  result[1] = a2;
  result[2] = pose;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end