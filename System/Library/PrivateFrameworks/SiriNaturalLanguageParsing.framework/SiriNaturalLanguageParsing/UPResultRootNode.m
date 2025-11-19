@interface UPResultRootNode
- (UPResultRootNode)initWithLabel:(id)a3 intermediateNodes:(id)a4 directLeafNodes:(id)a5;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultRootNode

- (id)_dictionaryRepresentation
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [(UPResultRootNode *)self directLeafNodes];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [(UPResultRootNode *)self directLeafNodes];
    v3 = [v4 initWithArray:v5 copyItems:0];

    if ([v3 count])
    {
      v6 = 0;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = [v7 _dictionaryRepresentation];
        [v3 replaceObjectAtIndex:v6 withObject:v8];

        ++v6;
      }

      while ([v3 count] > v6);
    }
  }

  v15[0] = @"label";
  v9 = [(UPResultNode *)self label];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = @"directLeafNodes";
  v16[0] = v10;
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (v3)
  {
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (UPResultRootNode)initWithLabel:(id)a3 intermediateNodes:(id)a4 directLeafNodes:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UPResultRootNode;
  v11 = [(UPResultNode *)&v14 initWithLabel:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_intermediateNodes, a4);
    objc_storeStrong(&v12->_directLeafNodes, a5);
  }

  return v12;
}

@end