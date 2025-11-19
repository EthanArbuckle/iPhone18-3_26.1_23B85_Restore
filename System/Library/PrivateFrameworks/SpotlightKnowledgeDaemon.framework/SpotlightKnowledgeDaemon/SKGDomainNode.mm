@interface SKGDomainNode
+ (id)domainWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (SKGDomainNode)initWithDomain:(id)a3;
@end

@implementation SKGDomainNode

+ (id)domainWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = [a4 graph];
  v6 = [v5 nodeForIdentifier:a3];

  v7 = [SKGDomainNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGDomainNode *)v7 initWithDomain:v8];

  return v9;
}

- (SKGDomainNode)initWithDomain:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKGDomainNode;
  return [(SKGNode *)&v4 initWithValue:a3];
}

@end