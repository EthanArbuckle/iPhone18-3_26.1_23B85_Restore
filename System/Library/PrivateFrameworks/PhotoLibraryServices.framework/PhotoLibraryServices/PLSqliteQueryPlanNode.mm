@interface PLSqliteQueryPlanNode
- (PLSqliteQueryPlanNode)initWithIdentifier:(int)identifier parentIdentifier:(int)parentIdentifier unused:(int)unused nodeDescription:(id)description;
@end

@implementation PLSqliteQueryPlanNode

- (PLSqliteQueryPlanNode)initWithIdentifier:(int)identifier parentIdentifier:(int)parentIdentifier unused:(int)unused nodeDescription:(id)description
{
  descriptionCopy = description;
  v17.receiver = self;
  v17.super_class = PLSqliteQueryPlanNode;
  v11 = [(PLSqliteQueryPlanNode *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = identifier;
    v11->_parentIdentifier = parentIdentifier;
    v11->_unused = unused;
    v13 = [descriptionCopy copy];
    nodeDescription = v12->_nodeDescription;
    v12->_nodeDescription = v13;

    v15 = v12;
  }

  return v12;
}

@end