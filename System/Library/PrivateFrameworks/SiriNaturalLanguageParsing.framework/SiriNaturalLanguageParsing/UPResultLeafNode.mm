@interface UPResultLeafNode
- (UPResultLeafNode)initWithLabel:(id)a3 andText:(id)a4 andSemanticValue:(id)a5;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultLeafNode

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"label";
  v3 = [(UPResultNode *)self label];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v12[1] = @"text";
  v5 = [(UPResultLeafNode *)self text];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v12[2] = @"semanticValue";
  v7 = [(UPResultLeafNode *)self semanticValue];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (UPResultLeafNode)initWithLabel:(id)a3 andText:(id)a4 andSemanticValue:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UPResultLeafNode;
  v11 = [(UPResultNode *)&v14 initWithLabel:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, a4);
    objc_storeStrong(&v12->_semanticValue, a5);
  }

  return v12;
}

@end