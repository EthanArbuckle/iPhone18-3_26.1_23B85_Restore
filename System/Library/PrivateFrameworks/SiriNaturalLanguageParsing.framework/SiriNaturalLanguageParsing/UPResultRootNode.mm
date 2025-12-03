@interface UPResultRootNode
- (UPResultRootNode)initWithLabel:(id)label intermediateNodes:(id)nodes directLeafNodes:(id)leafNodes;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultRootNode

- (id)_dictionaryRepresentation
{
  v16[2] = *MEMORY[0x277D85DE8];
  directLeafNodes = [(UPResultRootNode *)self directLeafNodes];

  if (directLeafNodes)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    directLeafNodes2 = [(UPResultRootNode *)self directLeafNodes];
    directLeafNodes = [v4 initWithArray:directLeafNodes2 copyItems:0];

    if ([directLeafNodes count])
    {
      v6 = 0;
      do
      {
        v7 = [directLeafNodes objectAtIndexedSubscript:v6];
        _dictionaryRepresentation = [v7 _dictionaryRepresentation];
        [directLeafNodes replaceObjectAtIndex:v6 withObject:_dictionaryRepresentation];

        ++v6;
      }

      while ([directLeafNodes count] > v6);
    }
  }

  v15[0] = @"label";
  label = [(UPResultNode *)self label];
  null = label;
  if (!label)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = @"directLeafNodes";
  v16[0] = null;
  null2 = directLeafNodes;
  if (!directLeafNodes)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = null2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (directLeafNodes)
  {
    if (label)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (label)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (UPResultRootNode)initWithLabel:(id)label intermediateNodes:(id)nodes directLeafNodes:(id)leafNodes
{
  nodesCopy = nodes;
  leafNodesCopy = leafNodes;
  v14.receiver = self;
  v14.super_class = UPResultRootNode;
  v11 = [(UPResultNode *)&v14 initWithLabel:label];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_intermediateNodes, nodes);
    objc_storeStrong(&v12->_directLeafNodes, leafNodes);
  }

  return v12;
}

@end