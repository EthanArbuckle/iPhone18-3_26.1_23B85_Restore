@interface CNVCardParsedDictionaryResultBuilder
+ (id)factory;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValues:(id)values labels:(id)labels isPrimaries:(id)primaries forProperty:(id)property;
- (CNVCardParsedDictionaryResultBuilder)init;
- (id)build;
- (void)setUnknownProperties:(id)properties;
@end

@implementation CNVCardParsedDictionaryResultBuilder

+ (id)factory
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__CNVCardParsedDictionaryResultBuilder_factory__block_invoke;
  v4[3] = &__block_descriptor_40_e35____CNVCardParsedResultBuilder__8__0l;
  v4[4] = self;
  v2 = [CNVCardParsedResultBuilderFactory factoryWithBlock:v4];

  return v2;
}

id __47__CNVCardParsedDictionaryResultBuilder_factory__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));

  return v1;
}

- (CNVCardParsedDictionaryResultBuilder)init
{
  v7.receiver = self;
  v7.super_class = CNVCardParsedDictionaryResultBuilder;
  v2 = [(CNVCardParsedDictionaryResultBuilder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionaryRep = v2->_dictionaryRep;
    v2->_dictionaryRep = v3;

    v5 = v2;
  }

  return v2;
}

- (id)build
{
  v2 = [(NSMutableDictionary *)self->_dictionaryRep copy];

  return v2;
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  if (value)
  {
    [(NSMutableDictionary *)self->_dictionaryRep setObject:value forKey:property];
  }

  return value != 0;
}

- (BOOL)setValues:(id)values labels:(id)labels isPrimaries:(id)primaries forProperty:(id)property
{
  v24[3] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  labelsCopy = labels;
  primariesCopy = primaries;
  propertyCopy = property;
  if ([valuesCopy count])
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    if ([valuesCopy count])
    {
      v15 = 0;
      do
      {
        v16 = [valuesCopy objectAtIndex:v15];
        v17 = [labelsCopy objectAtIndex:v15];
        v18 = [primariesCopy objectAtIndex:v15];
        v23[0] = @"value";
        v23[1] = @"label";
        v24[0] = v16;
        v24[1] = v17;
        v23[2] = @"isPrimary";
        v24[2] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
        [array addObject:v19];

        ++v15;
      }

      while (v15 < [valuesCopy count]);
    }

    [(NSMutableDictionary *)selfCopy->_dictionaryRep setObject:array forKey:propertyCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setUnknownProperties:(id)properties
{
  dictionaryRep = self->_dictionaryRep;
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:properties];
  [(NSMutableDictionary *)dictionaryRep setObject:v4 forKey:@"_unknownProperties"];
}

@end