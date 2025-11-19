@interface PGGraphPublicEventLocalizedCategoryNode
- (BOOL)hasProperties:(id)a3;
- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)a3 level:(unint64_t)a4;
- (id)description;
- (id)propertyDictionary;
@end

@implementation PGGraphPublicEventLocalizedCategoryNode

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphPublicEventLocalizedCategoryNode;
  v4 = [(PGGraphOptimizedNode *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (level = %d)", v4, *(self + 32)];

  return v5;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"lvl";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 32)];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"lvl"];
    v7 = v6;
    v8 = !v6 || [v6 unsignedIntegerValue] == *(self + 32);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:@"lvl"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [(PGGraphPublicEventLocalizedCategoryNode *)self initWithLabel:v7 level:v9];
  return v10;
}

- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)a3 level:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PGGraphPublicEventLocalizedCategoryNode;
  v7 = [(PGGraphNode *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    label = v7->_label;
    v7->_label = v8;

    *(v7 + 32) = v4;
  }

  return v7;
}

@end