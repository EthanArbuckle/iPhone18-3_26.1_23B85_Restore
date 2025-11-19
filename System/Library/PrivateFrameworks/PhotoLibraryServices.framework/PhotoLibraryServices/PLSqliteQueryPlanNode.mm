@interface PLSqliteQueryPlanNode
- (PLSqliteQueryPlanNode)initWithIdentifier:(int)a3 parentIdentifier:(int)a4 unused:(int)a5 nodeDescription:(id)a6;
@end

@implementation PLSqliteQueryPlanNode

- (PLSqliteQueryPlanNode)initWithIdentifier:(int)a3 parentIdentifier:(int)a4 unused:(int)a5 nodeDescription:(id)a6
{
  v10 = a6;
  v17.receiver = self;
  v17.super_class = PLSqliteQueryPlanNode;
  v11 = [(PLSqliteQueryPlanNode *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = a3;
    v11->_parentIdentifier = a4;
    v11->_unused = a5;
    v13 = [v10 copy];
    nodeDescription = v12->_nodeDescription;
    v12->_nodeDescription = v13;

    v15 = v12;
  }

  return v12;
}

@end