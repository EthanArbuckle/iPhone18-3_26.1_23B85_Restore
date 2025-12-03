@interface UPResultNode
- (UPResultNode)initWithLabel:(id)label;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultNode

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"label";
  label = [(UPResultNode *)self label];
  null = label;
  if (!label)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!label)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (UPResultNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = UPResultNode;
  v6 = [(UPResultNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, label);
  }

  return v7;
}

@end