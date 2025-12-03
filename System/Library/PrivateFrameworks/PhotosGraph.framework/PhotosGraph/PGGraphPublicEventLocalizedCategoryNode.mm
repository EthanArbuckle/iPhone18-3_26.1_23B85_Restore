@interface PGGraphPublicEventLocalizedCategoryNode
- (BOOL)hasProperties:(id)properties;
- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)label level:(unint64_t)level;
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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
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

- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v8 = [properties objectForKeyedSubscript:@"lvl"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [(PGGraphPublicEventLocalizedCategoryNode *)self initWithLabel:labelCopy level:unsignedIntegerValue];
  return v10;
}

- (PGGraphPublicEventLocalizedCategoryNode)initWithLabel:(id)label level:(unint64_t)level
{
  levelCopy = level;
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = PGGraphPublicEventLocalizedCategoryNode;
  v7 = [(PGGraphNode *)&v11 init];
  if (v7)
  {
    v8 = [labelCopy copy];
    label = v7->_label;
    v7->_label = v8;

    *(v7 + 32) = levelCopy;
  }

  return v7;
}

@end