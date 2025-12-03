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
  currentDesignatorIfExists = [self currentDesignatorIfExists];
  v4 = currentDesignatorIfExists;
  if (currentDesignatorIfExists)
  {
    installNewDesignator = currentDesignatorIfExists;
  }

  else
  {
    installNewDesignator = [self installNewDesignator];
  }

  v6 = installNewDesignator;

  return v6;
}

+ (id)installNewDesignator
{
  v2 = objc_alloc_init(self);
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  [threadDictionary setObject:v2 forKeyedSubscript:@"VFThreadPriorityDesignator"];

  return v2;
}

+ (id)currentDesignatorIfExists
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"VFThreadPriorityDesignator"];

  return v4;
}

+ (id)currentDesignatorStackIfExists
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"VFThreadPriorityDesignatorStack"];

  return v4;
}

+ (id)currentDesignatorStack
{
  currentDesignatorStackIfExists = [self currentDesignatorStackIfExists];
  if (!currentDesignatorStackIfExists)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    currentDesignatorStackIfExists = objc_alloc_init(MEMORY[0x277CBEB18]);
    [threadDictionary setObject:currentDesignatorStackIfExists forKeyedSubscript:@"VFThreadPriorityDesignatorStack"];
  }

  return currentDesignatorStackIfExists;
}

+ (id)pushNewDesignator
{
  currentDesignatorIfExists = [self currentDesignatorIfExists];
  if (currentDesignatorIfExists)
  {
    v4 = currentDesignatorIfExists;
    currentDesignatorStack = [self currentDesignatorStack];
    [currentDesignatorStack addObject:v4];

    installNewDesignator = [self installNewDesignator];
  }

  else
  {
    installNewDesignator = [self currentDesignator];
  }

  return installNewDesignator;
}

+ (void)destroyCurrentDesignator
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  [threadDictionary removeObjectForKey:@"VFThreadPriorityDesignator"];
  currentDesignatorStackIfExists = [self currentDesignatorStackIfExists];
  v5 = currentDesignatorStackIfExists;
  if (currentDesignatorStackIfExists)
  {
    lastObject = [currentDesignatorStackIfExists lastObject];
    [threadDictionary setObject:lastObject forKeyedSubscript:@"VFThreadPriorityDesignator"];

    [v5 removeLastObject];
    if (![v5 count])
    {
      [threadDictionary setObject:0 forKeyedSubscript:@"VFThreadPriorityDesignatorStack"];
    }
  }
}

@end