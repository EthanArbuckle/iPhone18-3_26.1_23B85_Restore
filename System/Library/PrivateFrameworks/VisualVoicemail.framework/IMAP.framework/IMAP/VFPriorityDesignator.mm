@interface VFPriorityDesignator
+ (VFPriorityDesignator)currentDesignator;
+ (id)currentDesignatorIfExists;
+ (id)currentDesignatorStack;
+ (id)currentDesignatorStackIfExists;
+ (id)installNewDesignator;
+ (id)pushNewDesignator;
+ (void)destroyCurrentDesignator;
@end

@implementation VFPriorityDesignator

+ (VFPriorityDesignator)currentDesignator
{
  v3 = [a1 currentDesignatorIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 installNewDesignator];
  }

  v6 = v5;

  return v6;
}

+ (id)installNewDesignator
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 threadDictionary];

  [v4 setObject:v2 forKeyedSubscript:@"VFThreadPriorityDesignator"];

  return v2;
}

+ (id)currentDesignatorIfExists
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"VFThreadPriorityDesignator"];

  return v4;
}

+ (id)currentDesignatorStackIfExists
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"VFThreadPriorityDesignatorStack"];

  return v4;
}

+ (id)currentDesignatorStack
{
  v2 = [a1 currentDesignatorStackIfExists];
  if (!v2)
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [v3 threadDictionary];

    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v4 setObject:v2 forKeyedSubscript:@"VFThreadPriorityDesignatorStack"];
  }

  return v2;
}

+ (id)pushNewDesignator
{
  v3 = [a1 currentDesignatorIfExists];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 currentDesignatorStack];
    [v5 addObject:v4];

    v6 = [a1 installNewDesignator];
  }

  else
  {
    v6 = [a1 currentDesignator];
  }

  return v6;
}

+ (void)destroyCurrentDesignator
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v3 threadDictionary];

  [v7 removeObjectForKey:@"VFThreadPriorityDesignator"];
  v4 = [a1 currentDesignatorStackIfExists];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lastObject];
    [v7 setObject:v6 forKeyedSubscript:@"VFThreadPriorityDesignator"];

    [v5 removeLastObject];
    if (![v5 count])
    {
      [v7 setObject:0 forKeyedSubscript:@"VFThreadPriorityDesignatorStack"];
    }
  }
}

@end