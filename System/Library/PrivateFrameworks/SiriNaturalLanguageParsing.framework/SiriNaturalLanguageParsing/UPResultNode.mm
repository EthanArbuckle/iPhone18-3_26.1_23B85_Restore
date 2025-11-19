@interface UPResultNode
- (UPResultNode)initWithLabel:(id)a3;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultNode

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"label";
  v2 = [(UPResultNode *)self label];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (UPResultNode)initWithLabel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UPResultNode;
  v6 = [(UPResultNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, a3);
  }

  return v7;
}

@end