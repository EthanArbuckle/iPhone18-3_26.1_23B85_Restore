@interface PGGraphBuilderInsertedIdentifiedPerson
- (PGGraphBuilderInsertedIdentifiedPerson)initWithPersonNode:(id)a3;
@end

@implementation PGGraphBuilderInsertedIdentifiedPerson

- (PGGraphBuilderInsertedIdentifiedPerson)initWithPersonNode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphBuilderInsertedIdentifiedPerson;
  v6 = [(PGGraphBuilderInsertedIdentifiedPerson *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personNode, a3);
  }

  return v7;
}

@end