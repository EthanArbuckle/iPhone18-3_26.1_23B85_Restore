@interface VisionCoreE5RTExecutionContextConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VisionCoreE5RTExecutionContextConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(VisionCoreNamedObjects *)self->_boundInputObjects copy];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    v7 = [(VisionCoreNamedObjects *)self->_boundOutputObjects copy];
    v8 = *(v4 + 2);
    *(v4 + 2) = v7;

    *(v4 + 32) = self->_prewireInUseAllocations;
    objc_storeStrong(v4 + 3, self->_completionQueue);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreE5RTExecutionContextConfiguration *)self boundInputObjects];
      v7 = [(VisionCoreE5RTExecutionContextConfiguration *)v5 boundInputObjects];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [v6 isEqual:v7];

        if (!v9)
        {
          goto LABEL_14;
        }
      }

      v11 = [(VisionCoreE5RTExecutionContextConfiguration *)self boundOutputObjects];
      v12 = [(VisionCoreE5RTExecutionContextConfiguration *)v5 boundOutputObjects];
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        v14 = [v11 isEqual:v12];

        if (!v14)
        {
          goto LABEL_14;
        }
      }

      v15 = [(VisionCoreE5RTExecutionContextConfiguration *)self prewireInUseAllocations];
      if (v15 == [(VisionCoreE5RTExecutionContextConfiguration *)v5 prewireInUseAllocations])
      {
        v16 = [(VisionCoreE5RTExecutionContextConfiguration *)self completionQueue];
        v17 = [(VisionCoreE5RTExecutionContextConfiguration *)v5 completionQueue];
        v10 = v16 == v17;

        goto LABEL_16;
      }

LABEL_14:
      v10 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

@end