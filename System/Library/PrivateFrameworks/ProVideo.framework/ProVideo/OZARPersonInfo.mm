@interface OZARPersonInfo
- (OZARPersonInfo)init;
- (__n128)simdTransform:(uint64_t)transform;
- (id)init:(id)init;
- (uint64_t)simdTransform;
- (void)dealloc;
@end

@implementation OZARPersonInfo

- (OZARPersonInfo)init
{
  v3 = [MEMORY[0x277CCAE60] PCValueWithSIMDFloat4x4:{*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)}];

  return [(OZARPersonInfo *)self init:v3];
}

- (id)init:(id)init
{
  v7.receiver = self;
  v7.super_class = OZARPersonInfo;
  v4 = [(OZARPersonInfo *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(OZARPersonInfo *)v4 setTransform:init];
    [(OZARPersonInfo *)v5 setJointTransforms:objc_opt_new()];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZARPersonInfo;
  [(OZARPersonInfo *)&v3 dealloc];
}

- (uint64_t)simdTransform
{
  transform = [self transform];

  return [transform PCSIMDFloat4x4Value];
}

- (__n128)simdTransform:(uint64_t)transform
{
  jointTransforms = [self jointTransforms];
  v5 = [jointTransforms objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", transform)}];
  if (v5)
  {
    [v5 PCSIMDFloat4x4Value];
  }

  else
  {
    return *MEMORY[0x277D860B8];
  }

  return result;
}

@end