@interface CNVCardParsedDictionaryResultBuilder
+ (id)factory;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValues:(id)a3 labels:(id)a4 isPrimaries:(id)a5 forProperty:(id)a6;
- (CNVCardParsedDictionaryResultBuilder)init;
- (id)build;
- (void)setUnknownProperties:(id)a3;
@end

@implementation CNVCardParsedDictionaryResultBuilder

+ (id)factory
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__CNVCardParsedDictionaryResultBuilder_factory__block_invoke;
  v4[3] = &__block_descriptor_40_e35____CNVCardParsedResultBuilder__8__0l;
  v4[4] = a1;
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

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_dictionaryRep setObject:a3 forKey:a4];
  }

  return a3 != 0;
}

- (BOOL)setValues:(id)a3 labels:(id)a4 isPrimaries:(id)a5 forProperty:(id)a6
{
  v24[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v22 = self;
    v14 = [MEMORY[0x277CBEB18] array];
    if ([v10 count])
    {
      v15 = 0;
      do
      {
        v16 = [v10 objectAtIndex:v15];
        v17 = [v11 objectAtIndex:v15];
        v18 = [v12 objectAtIndex:v15];
        v23[0] = @"value";
        v23[1] = @"label";
        v24[0] = v16;
        v24[1] = v17;
        v23[2] = @"isPrimary";
        v24[2] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
        [v14 addObject:v19];

        ++v15;
      }

      while (v15 < [v10 count]);
    }

    [(NSMutableDictionary *)v22->_dictionaryRep setObject:v14 forKey:v13];
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setUnknownProperties:(id)a3
{
  dictionaryRep = self->_dictionaryRep;
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:a3];
  [(NSMutableDictionary *)dictionaryRep setObject:v4 forKey:@"_unknownProperties"];
}

@end