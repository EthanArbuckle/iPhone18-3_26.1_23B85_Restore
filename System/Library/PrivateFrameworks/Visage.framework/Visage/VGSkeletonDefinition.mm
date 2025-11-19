@interface VGSkeletonDefinition
- (BOOL)isEqual:(id)a3;
- (VGSkeletonDefinition)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGSkeletonDefinition

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:-[VGSkeletonDefinition jointCount](self forKey:{"jointCount"), @"jointCount"}];
  [v5 encodeInteger:-[VGSkeletonDefinition rootJointIndex](self forKey:{"rootJointIndex"), @"rootJointIndex"}];
  v4 = [(VGSkeletonDefinition *)self parentChildOrder];
  [v5 encodeObject:v4 forKey:@"parentChildOrder"];

  [v5 encodeInt:-[VGSkeletonDefinition skeletonType](self forKey:{"skeletonType"), @"skeletonType"}];
}

- (VGSkeletonDefinition)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VGSkeletonDefinition;
  v5 = [(VGSkeletonDefinition *)&v13 init];
  if (v5)
  {
    -[VGSkeletonDefinition setJointCount:](v5, "setJointCount:", [v4 decodeInt64ForKey:@"jointCount"]);
    -[VGSkeletonDefinition setRootJointIndex:](v5, "setRootJointIndex:", [v4 decodeIntegerForKey:@"rootJointIndex"]);
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parentChildOrder"];
    [(VGSkeletonDefinition *)v5 setParentChildOrder:v9];

    -[VGSkeletonDefinition setSkeletonType:](v5, "setSkeletonType:", [v4 decodeIntForKey:@"skeletonType"]);
    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(VGSkeletonDefinition *)self jointCount]== *(v5 + 2) && [(VGSkeletonDefinition *)self rootJointIndex]== *(v5 + 3))
    {
      v6 = [(VGSkeletonDefinition *)self parentChildOrder];
      if (v6 || *(v5 + 4))
      {
        v7 = [(VGSkeletonDefinition *)self parentChildOrder];
        if ([v7 isEqual:*(v5 + 4)])
        {
          v8 = [(VGSkeletonDefinition *)self skeletonType]== v5[2];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = [(VGSkeletonDefinition *)self skeletonType]== v5[2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end