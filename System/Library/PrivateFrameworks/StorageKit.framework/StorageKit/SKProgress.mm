@interface SKProgress
+ (SKProgress)progressWithTotalUnitCount:(int64_t)count;
- (SKProgress)init;
- (void)chainChildProgress:(id)progress withPendingUnitCount:(int64_t)count;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLocalizedAdditionalDescription:(id)description;
@end

@implementation SKProgress

- (void)setLocalizedAdditionalDescription:(id)description
{
  v4 = MEMORY[0x277CCA900];
  descriptionCopy = description;
  newlineCharacterSet = [v4 newlineCharacterSet];
  v7 = [descriptionCopy stringByTrimmingCharactersInSet:newlineCharacterSet];

  [(SKProgress *)self setUserInfoObject:v7 forKey:*MEMORY[0x277CCAED0]];
  v8.receiver = self;
  v8.super_class = SKProgress;
  [(SKProgress *)&v8 setLocalizedAdditionalDescription:v7];
}

+ (SKProgress)progressWithTotalUnitCount:(int64_t)count
{
  v4 = objc_opt_new();
  [v4 setTotalUnitCount:count];

  return v4;
}

- (SKProgress)init
{
  v7.receiver = self;
  v7.super_class = SKProgress;
  v2 = [(SKProgress *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SKProgress *)v2 set_adoptChildUserInfo:1];
    [(SKProgress *)v3 setLocalizedAdditionalDescription:&stru_287C8F598];
    v4 = objc_opt_new();
    children = v3->_children;
    v3->_children = v4;
  }

  return v3;
}

- (void)chainChildProgress:(id)progress withPendingUnitCount:(int64_t)count
{
  progressCopy = progress;
  [(SKProgress *)self addChild:progressCopy withPendingUnitCount:count];
  children = [(SKProgress *)self children];
  [children addObject:progressCopy];

  userInfo = [progressCopy userInfo];

  [userInfo addObserver:self forKeyPath:*MEMORY[0x277CCAED0] options:0 context:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = *MEMORY[0x277CCAED0];
  if ([path isEqualToString:{*MEMORY[0x277CCAED0], object, change, context}])
  {
    userInfo = [(SKProgress *)self userInfo];
    v8 = [userInfo objectForKeyedSubscript:v7];
    [(SKProgress *)self setLocalizedAdditionalDescription:v8];
  }
}

- (void)dealloc
{
  children = [(SKProgress *)self children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__SKProgress_dealloc__block_invoke;
  v5[3] = &unk_279D1F548;
  v5[4] = self;
  [children enumerateObjectsUsingBlock:v5];

  v4.receiver = self;
  v4.super_class = SKProgress;
  [(SKProgress *)&v4 dealloc];
}

void __21__SKProgress_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  [v3 removeObserver:*(a1 + 32) forKeyPath:*MEMORY[0x277CCAED0]];
}

@end