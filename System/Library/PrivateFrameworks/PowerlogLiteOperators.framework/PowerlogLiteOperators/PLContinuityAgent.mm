@interface PLContinuityAgent
+ (id)entryEventPointDefinitions;
+ (int64_t)unlockPeerTypeStringToEnum:(id)a3;
+ (void)load;
- (PLContinuityAgent)init;
@end

@implementation PLContinuityAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLContinuityAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"AutoUnlock";
  v2 = [a1 entryEventPointDefinitionAutoUnlock];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PLContinuityAgent)init
{
  v3.receiver = self;
  v3.super_class = PLContinuityAgent;
  return [(PLAgent *)&v3 init];
}

+ (int64_t)unlockPeerTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Phone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Mac"])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end