@interface SKGPhoneNode
+ (id)phoneWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGPhoneNode)initWithPhoneNumber:(id)number;
@end

@implementation SKGPhoneNode

+ (id)phoneWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGPhoneNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGPhoneNode *)v7 initWithPhoneNumber:v8];

  return v9;
}

- (SKGPhoneNode)initWithPhoneNumber:(id)number
{
  v4.receiver = self;
  v4.super_class = SKGPhoneNode;
  return [(SKGNode *)&v4 initWithValue:number];
}

@end