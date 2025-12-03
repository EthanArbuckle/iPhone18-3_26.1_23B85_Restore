@interface PGGraphBuilderInsertedIdentifiedPerson
- (PGGraphBuilderInsertedIdentifiedPerson)initWithPersonNode:(id)node;
@end

@implementation PGGraphBuilderInsertedIdentifiedPerson

- (PGGraphBuilderInsertedIdentifiedPerson)initWithPersonNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = PGGraphBuilderInsertedIdentifiedPerson;
  v6 = [(PGGraphBuilderInsertedIdentifiedPerson *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personNode, node);
  }

  return v7;
}

@end