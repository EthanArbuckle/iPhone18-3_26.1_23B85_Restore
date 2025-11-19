@interface MDAgent
+ (id)sharedAgent;
- (MDAgent)init;
@end

@implementation MDAgent

+ (id)sharedAgent
{
  if (sharedAgent_onceToken != -1)
  {
    +[MDAgent sharedAgent];
  }

  v3 = sharedAgent_sMDAgent;

  return v3;
}

uint64_t __22__MDAgent_sharedAgent__block_invoke()
{
  sharedAgent_sMDAgent = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (MDAgent)init
{
  v3.receiver = self;
  v3.super_class = MDAgent;
  return [(MDAgent *)&v3 init];
}

@end