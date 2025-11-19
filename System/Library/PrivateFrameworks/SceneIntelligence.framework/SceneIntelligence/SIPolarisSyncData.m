@interface SIPolarisSyncData
- (SIPolarisSyncData)init;
@end

@implementation SIPolarisSyncData

- (SIPolarisSyncData)init
{
  v6.receiver = self;
  v6.super_class = SIPolarisSyncData;
  v2 = [(SIPolarisSyncData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

id __44__SIPolarisSyncData_generateSyncDataStream___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3]; v3; --v3)
  {
    v5 = objc_alloc_init(SIPolarisSyncData);
    [i addObject:v5];
  }

  return i;
}

@end