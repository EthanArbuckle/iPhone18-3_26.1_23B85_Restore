@interface VGSkeleton
- (BOOL)isEqual:(id)a3;
- (VGSkeleton)initWithCoder:(id)a3;
- (__n128)floorAlignedRootTransform;
- (__n128)rootTransform;
- (__n128)setFloorAlignedRootTransform:(__n128)a3;
- (__n128)setRootTransform:(__n128)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGSkeleton

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[VGSkeleton skeletonType](self forKey:{"skeletonType"), @"skeletonType"}];
  v5 = [(VGSkeleton *)self skeletonDefinition];
  [v4 encodeObject:v5 forKey:@"skeletonDefinition"];

  v6 = [(VGSkeleton *)self localPoses];
  [v4 encodeObject:v6 forKey:@"localPoses"];

  v7 = [(VGSkeleton *)self modelPoses];
  [v4 encodeObject:v7 forKey:@"modelPoses"];

  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:self->_anon_40 length:64];
  [v4 encodeObject:v11 forKey:@"rootTransform"];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&self[1] length:64];
  [v4 encodeObject:v8 forKey:@"floorAlignedRootTransform"];
  v9 = [(VGSkeleton *)self jointConfidence];
  [v4 encodeObject:v9 forKey:@"jointConfidence"];

  v10 = [(VGSkeleton *)self debugInfo];
  [v4 encodeObject:v10 forKey:@"debugInfo"];
}

- (VGSkeleton)initWithCoder:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = VGSkeleton;
  v5 = [(VGSkeleton *)&v30 init];
  if (v5)
  {
    -[VGSkeleton setSkeletonType:](v5, "setSkeletonType:", [v4 decodeIntForKey:@"skeletonType"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skeletonDefinition"];
    [(VGSkeleton *)v5 setSkeletonDefinition:v6];

    v7 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"localPoses"];
    [(VGSkeleton *)v5 setLocalPoses:v10];

    v11 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"modelPoses"];
    [(VGSkeleton *)v5 setModelPoses:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rootTransform"];
    [v15 getBytes:v5->_anon_40 length:64];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floorAlignedRootTransform"];
    [v16 getBytes:&v5[1] length:64];
    v17 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"jointConfidence"];
    [(VGSkeleton *)v5 setJointConfidence:v20];

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v21 setWithObjects:{v22, v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"debugInfo"];
    [(VGSkeleton *)v5 setDebugInfo:v26];

    v27 = v5;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(VGSkeleton *)self skeletonType]== v5->i32[2])
    {
      v6 = [(VGSkeleton *)self skeletonDefinition];
      if ([v6 isEqual:v5[1].i64[0]])
      {
        v7 = [(VGSkeleton *)self localPoses];
        if ([v7 isEqual:v5[1].i64[1]])
        {
          v8 = [(VGSkeleton *)self modelPoses];
          if ([v8 isEqual:v5[2].i64[0]] && (-[VGSkeleton rootTransform](self, "rootTransform"), (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v9, v5[4]), vceqq_f32(v10, v5[5])), vandq_s8(vceqq_f32(v11, v5[6]), vceqq_f32(v12, v5[7])))) & 0x80000000) != 0) && (-[VGSkeleton floorAlignedRootTransform](self, "floorAlignedRootTransform"), (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v13, v5[8]), vceqq_f32(v14, v5[9])), vandq_s8(vceqq_f32(v15, v5[10]), vceqq_f32(v16, v5[11])))) & 0x80000000) != 0))
          {
            v19 = [(VGSkeleton *)self jointConfidence];
            v17 = [v19 isEqual:v5[2].i64[1]];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (__n128)rootTransform
{
  result = *(a1 + 64);
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  v4 = *(a1 + 112);
  return result;
}

- (__n128)setRootTransform:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (__n128)floorAlignedRootTransform
{
  result = *(a1 + 128);
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 176);
  return result;
}

- (__n128)setFloorAlignedRootTransform:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

@end