@interface REDependencyGraphNode
- (BOOL)isEqual:(id)a3;
- (REDependencyGraphNode)initWithItem:(id)a3;
@end

@implementation REDependencyGraphNode

- (REDependencyGraphNode)initWithItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = REDependencyGraphNode;
  v6 = [(REDependencyGraphNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    connections = v7->_connections;
    v7->_connections = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      item = self->_item;
      v6 = v4->_item;
      v7 = item;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end