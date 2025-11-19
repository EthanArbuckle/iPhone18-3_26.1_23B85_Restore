@interface OKDynamicPushBehavior
+ (id)supportedSettings;
- (OKDynamicPushBehavior)init;
- (OKDynamicPushBehavior)initWithSettings:(id)a3;
- (void)dealloc;
@end

@implementation OKDynamicPushBehavior

- (OKDynamicPushBehavior)init
{
  v3.receiver = self;
  v3.super_class = OKDynamicPushBehavior;
  return [(UIPushBehavior *)&v3 init];
}

- (OKDynamicPushBehavior)initWithSettings:(id)a3
{
  v4 = [(UIPushBehavior *)self initWithItems:MEMORY[0x277CBEBF8] mode:0];
  if (v4)
  {
    v5 = [a3 objectForKey:@"angle"];
    if (v5)
    {
      [v5 doubleValue];
      [(UIPushBehavior *)v4 setAngle:?];
    }

    v6 = [a3 objectForKey:@"magnitude"];
    if (v6)
    {
      [v6 doubleValue];
      [(UIPushBehavior *)v4 setMagnitude:?];
    }
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKDynamicPushBehavior;
  [(OKDynamicPushBehavior *)&v2 dealloc];
}

+ (id)supportedSettings
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v8[0] = @"angle";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF11A8;
  v7[1] = &unk_287AF11C0;
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[1] = @"magnitude";
  v4[0] = @"type";
  v4[1] = @"default";
  v5[0] = &unk_287AF11A8;
  v5[1] = &unk_287AF11C0;
  v9[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  return v2;
}

@end