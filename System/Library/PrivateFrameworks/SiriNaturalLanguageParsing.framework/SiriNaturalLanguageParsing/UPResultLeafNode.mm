@interface UPResultLeafNode
- (UPResultLeafNode)initWithLabel:(id)label andText:(id)text andSemanticValue:(id)value;
- (id)_dictionaryRepresentation;
@end

@implementation UPResultLeafNode

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"label";
  label = [(UPResultNode *)self label];
  null = label;
  if (!label)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"text";
  text = [(UPResultLeafNode *)self text];
  null2 = text;
  if (!text)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v12[2] = @"semanticValue";
  semanticValue = [(UPResultLeafNode *)self semanticValue];
  null3 = semanticValue;
  if (!semanticValue)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!semanticValue)
  {
  }

  if (!text)
  {
  }

  if (!label)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (UPResultLeafNode)initWithLabel:(id)label andText:(id)text andSemanticValue:(id)value
{
  textCopy = text;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = UPResultLeafNode;
  v11 = [(UPResultNode *)&v14 initWithLabel:label];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, text);
    objc_storeStrong(&v12->_semanticValue, value);
  }

  return v12;
}

@end