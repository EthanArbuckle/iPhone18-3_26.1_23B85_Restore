@interface VUISymbolContentTransition
+ (id)symbolAutomaticContentTransition;
+ (id)symbolReplaceContentDownUpTransition;
+ (id)symbolReplaceContentOffUpTransition;
+ (id)symbolReplaceContentTransition;
+ (id)symbolReplaceContentUpUpTransition;
- (VUISymbolContentTransition)initWithTransition:(id)a3;
@end

@implementation VUISymbolContentTransition

+ (id)symbolReplaceContentTransition
{
  v2 = [VUISymbolContentTransition alloc];
  v3 = [MEMORY[0x277CE1600] transition];
  v4 = [(VUISymbolContentTransition *)v2 initWithTransition:v3];

  return v4;
}

+ (id)symbolReplaceContentDownUpTransition
{
  v2 = [VUISymbolContentTransition alloc];
  v3 = [MEMORY[0x277CE1600] replaceDownUpTransition];
  v4 = [(VUISymbolContentTransition *)v2 initWithTransition:v3];

  return v4;
}

+ (id)symbolReplaceContentUpUpTransition
{
  v2 = [VUISymbolContentTransition alloc];
  v3 = [MEMORY[0x277CE1600] replaceUpUpTransition];
  v4 = [(VUISymbolContentTransition *)v2 initWithTransition:v3];

  return v4;
}

+ (id)symbolReplaceContentOffUpTransition
{
  v2 = [VUISymbolContentTransition alloc];
  v3 = [MEMORY[0x277CE1600] replaceOffUpTransition];
  v4 = [(VUISymbolContentTransition *)v2 initWithTransition:v3];

  return v4;
}

+ (id)symbolAutomaticContentTransition
{
  v2 = [VUISymbolContentTransition alloc];
  v3 = [MEMORY[0x277CE15B8] transition];
  v4 = [(VUISymbolContentTransition *)v2 initWithTransition:v3];

  return v4;
}

- (VUISymbolContentTransition)initWithTransition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUISymbolContentTransition;
  v6 = [(VUISymbolContentTransition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_symbolTransition, a3);
  }

  return v7;
}

@end