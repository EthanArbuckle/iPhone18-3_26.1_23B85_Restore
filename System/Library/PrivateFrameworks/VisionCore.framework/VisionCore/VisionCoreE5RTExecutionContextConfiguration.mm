@interface VisionCoreE5RTExecutionContextConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VisionCoreE5RTExecutionContextConfiguration

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      boundInputObjects = [(VisionCoreE5RTExecutionContextConfiguration *)self boundInputObjects];
      boundInputObjects2 = [(VisionCoreE5RTExecutionContextConfiguration *)v5 boundInputObjects];
      v8 = boundInputObjects2;
      if (boundInputObjects == boundInputObjects2)
      {
      }

      else
      {
        v9 = [boundInputObjects isEqual:boundInputObjects2];

        if (!v9)
        {
          goto LABEL_14;
        }
      }

      boundOutputObjects = [(VisionCoreE5RTExecutionContextConfiguration *)self boundOutputObjects];
      boundOutputObjects2 = [(VisionCoreE5RTExecutionContextConfiguration *)v5 boundOutputObjects];
      v13 = boundOutputObjects2;
      if (boundOutputObjects == boundOutputObjects2)
      {
      }

      else
      {
        v14 = [boundOutputObjects isEqual:boundOutputObjects2];

        if (!v14)
        {
          goto LABEL_14;
        }
      }

      prewireInUseAllocations = [(VisionCoreE5RTExecutionContextConfiguration *)self prewireInUseAllocations];
      if (prewireInUseAllocations == [(VisionCoreE5RTExecutionContextConfiguration *)v5 prewireInUseAllocations])
      {
        completionQueue = [(VisionCoreE5RTExecutionContextConfiguration *)self completionQueue];
        completionQueue2 = [(VisionCoreE5RTExecutionContextConfiguration *)v5 completionQueue];
        v10 = completionQueue == completionQueue2;

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