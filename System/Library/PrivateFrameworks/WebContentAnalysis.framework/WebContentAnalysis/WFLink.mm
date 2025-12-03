@interface WFLink
+ (id)linkWithNode:(_xmlNode *)node;
- (id)url;
- (void)dealloc;
@end

@implementation WFLink

+ (id)linkWithNode:(_xmlNode *)node
{
  v3 = [[self alloc] initWithNode:node];

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WFLink;
  [(XMLNode *)&v2 dealloc];
}

- (id)url
{
  result = [(XMLNode *)self _stringValueFromAttribute:@"href"];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x277CBEBC0];

    return [v4 URLWithString:v3];
  }

  return result;
}

@end