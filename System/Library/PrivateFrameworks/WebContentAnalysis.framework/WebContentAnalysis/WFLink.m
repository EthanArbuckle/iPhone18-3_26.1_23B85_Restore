@interface WFLink
+ (id)linkWithNode:(_xmlNode *)a3;
- (id)url;
- (void)dealloc;
@end

@implementation WFLink

+ (id)linkWithNode:(_xmlNode *)a3
{
  v3 = [[a1 alloc] initWithNode:a3];

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