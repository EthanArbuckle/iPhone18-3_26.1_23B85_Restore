@interface SKGPersonaNode
+ (id)personaWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (SKGPersonaNode)initWithPersona:(id)persona;
@end

@implementation SKGPersonaNode

+ (id)personaWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graph = [graph graph];
  v6 = [graph nodeForIdentifier:identifier];

  v7 = [SKGPersonaNode alloc];
  v8 = [v6 propertyForKey:@"value"];
  v9 = [(SKGPersonaNode *)v7 initWithPersona:v8];

  return v9;
}

- (SKGPersonaNode)initWithPersona:(id)persona
{
  v4.receiver = self;
  v4.super_class = SKGPersonaNode;
  return [(SKGNode *)&v4 initWithValue:persona];
}

@end