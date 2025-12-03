@interface PSConstants
+ (id)anePrioritiesDictionary;
+ (id)bufferCountDict;
+ (id)bufferCountDictLock;
+ (unint64_t)getOverridenANEPriorityForGraphTag:(id)tag;
+ (void)bufferDepthsFromDict:(id)dict writerDepth:(unsigned int *)depth readerDepth:(unsigned int *)readerDepth;
+ (void)getBufferDepthsForKey:(id)key writerDepth:(unsigned int *)depth readerDepth:(unsigned int *)readerDepth;
@end

@implementation PSConstants

+ (id)bufferCountDictLock
{
  if (bufferCountDictLock_onceToken != -1)
  {
    +[PSConstants bufferCountDictLock];
  }

  v3 = bufferCountDictLock_lock;

  return v3;
}

uint64_t __34__PSConstants_bufferCountDictLock__block_invoke()
{
  bufferCountDictLock_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);

  return MEMORY[0x2821F96F8]();
}

+ (id)bufferCountDict
{
  if (bufferCountDict_onceToken != -1)
  {
    +[PSConstants bufferCountDict];
  }

  v3 = bufferCountDict_bufferCounts;

  return v3;
}

void __30__PSConstants_bufferCountDict__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = MEMORY[0x277CBEAC0];
  v11 = v0;
  v2 = [v0 pathForResource:@"PSBufferDepths" ofType:@"plist"];
  v3 = [v1 dictionaryWithContentsOfFile:v2];

  v4 = [v3 objectForKeyedSubscript:@"FixedCounts"];
  v5 = [v3 objectForKeyedSubscript:@"CustomCounts"];
  if (!v4)
  {
    __30__PSConstants_bufferCountDict__block_invoke_cold_4();
  }

  v6 = v5;
  if (!v5)
  {
    __30__PSConstants_bufferCountDict__block_invoke_cold_3();
  }

  v7 = [v4 objectForKeyedSubscript:@"Default"];
  v8 = [v4 objectForKeyedSubscript:@"Display"];
  if (!v7)
  {
    __30__PSConstants_bufferCountDict__block_invoke_cold_2();
  }

  if (!v8)
  {
    __30__PSConstants_bufferCountDict__block_invoke_cold_1();
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v3, 1uLL);
  v10 = bufferCountDict_bufferCounts;
  bufferCountDict_bufferCounts = DeepCopy;
}

+ (id)anePrioritiesDictionary
{
  if (anePrioritiesDictionary_onceToken != -1)
  {
    +[PSConstants anePrioritiesDictionary];
  }

  v3 = anePrioritiesDictionary_anePrioritiesDictionary;

  return v3;
}

void __38__PSConstants_anePrioritiesDictionary__block_invoke()
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = MEMORY[0x277CBEAC0];
  v1 = [v4 pathForResource:@"PSANEPriorities" ofType:@"plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = anePrioritiesDictionary_anePrioritiesDictionary;
  anePrioritiesDictionary_anePrioritiesDictionary = v2;
}

+ (void)bufferDepthsFromDict:(id)dict writerDepth:(unsigned int *)depth readerDepth:(unsigned int *)readerDepth
{
  dictCopy = dict;
  if (!dictCopy)
  {
    +[PSConstants bufferDepthsFromDict:writerDepth:readerDepth:];
  }

  v12 = dictCopy;
  v8 = [dictCopy objectForKeyedSubscript:@"Writer"];
  if (!v8)
  {
    +[PSConstants bufferDepthsFromDict:writerDepth:readerDepth:];
  }

  v9 = [v12 objectForKeyedSubscript:@"Reader"];
  if (!v9)
  {
    +[PSConstants bufferDepthsFromDict:writerDepth:readerDepth:];
  }

  v10 = [v12 objectForKeyedSubscript:@"Writer"];
  *depth = [v10 unsignedIntValue];

  v11 = [v12 objectForKeyedSubscript:@"Reader"];
  *readerDepth = [v11 unsignedIntValue];
}

+ (unint64_t)getOverridenANEPriorityForGraphTag:(id)tag
{
  tagCopy = tag;
  v4 = +[PSConstants anePrioritiesDictionary];
  v5 = v4;
  if (tagCopy && ([v4 objectForKeyedSubscript:tagCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:tagCopy];
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  return unsignedIntValue;
}

+ (void)getBufferDepthsForKey:(id)key writerDepth:(unsigned int *)depth readerDepth:(unsigned int *)readerDepth
{
  keyCopy = key;
  v7 = +[PSConstants bufferCountDictLock];
  [v7 lock];

  v8 = +[PSConstants bufferCountDict];
  v9 = [v8 objectForKeyedSubscript:@"FixedCounts"];
  v10 = [v8 objectForKeyedSubscript:@"CustomCounts"];
  v11 = [v10 objectForKeyedSubscript:keyCopy];

  if (v11)
  {
    v12 = v10;
    v13 = keyCopy;
  }

  else
  {
    v13 = @"Default";
    v12 = v9;
  }

  v14 = [v12 objectForKeyedSubscript:v13];
  [PSConstants bufferDepthsFromDict:v14 writerDepth:depth readerDepth:readerDepth];
  v15 = +[PSConstants bufferCountDictLock];
  [v15 unlock];
}

@end