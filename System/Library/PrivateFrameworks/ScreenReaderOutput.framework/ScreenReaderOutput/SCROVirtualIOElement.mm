@interface SCROVirtualIOElement
+ (id)systemElement;
- (id)_initWithToken:(int)token;
@end

@implementation SCROVirtualIOElement

+ (id)systemElement
{
  if (systemElement_onceToken != -1)
  {
    +[SCROVirtualIOElement systemElement];
  }

  v3 = systemElement__systemElement;

  return v3;
}

uint64_t __37__SCROVirtualIOElement_systemElement__block_invoke()
{
  v0 = [SCROVirtualIOElement alloc];
  v1 = [(SCROVirtualIOElement *)v0 _initWithToken:kSCROSystemVirtualBrailleDisplayToken];
  systemElement__systemElement = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (id)_initWithToken:(int)token
{
  v5.receiver = self;
  v5.super_class = SCROVirtualIOElement;
  result = [(SCROVirtualIOElement *)&v5 init];
  if (result)
  {
    *(result + 2) = token;
  }

  return result;
}

@end