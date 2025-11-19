@interface PGGraphHolidayNode
+ (MARelation)datesOfCelebration;
+ (id)filter;
+ (id)holidayNodeFilterWithCategory:(unint64_t)a3;
+ (id)holidayNodeFilterWithNames:(id)a3;
+ (id)localizedNameForName:(id)a3;
- (BOOL)hasProperties:(id)a3;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (PGGraphHolidayNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphHolidayNode)initWithName:(id)a3 category:(unint64_t)a4;
- (PGGraphHolidayNodeCollection)collection;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
@end

@implementation PGGraphHolidayNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphHolidayNode *)self name];
  v7 = [v3 stringWithFormat:@"%@|%@|%lu", v5, v6, -[PGGraphHolidayNode category](self, "category")];

  return v7;
}

- (PGGraphHolidayNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphHolidayNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSArray)localizedSynonyms
{
  v2 = [(PGGraphHolidayNode *)self name];
  v3 = [MEMORY[0x277D276C8] localizedSynonymsForHolidayName:v2];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(PGGraphHolidayNode *)self name];
  v3 = [objc_opt_class() localizedNameForName:v2];

  return v3;
}

- (id)propertyForKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"name"])
  {
    v5 = self->_name;
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"holc"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 32)];
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphHolidayNode.", &v9, 0xCu);
  }

  v6 = 0;
LABEL_9:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)propertyDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  name = self->_name;
  v7[0] = @"name";
  v7[1] = @"holc";
  v8[0] = name;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 32)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    v9 = 0;
    if (!v6 || [v6 isEqual:self->_name])
    {

      v8 = [v5 objectForKeyedSubscript:@"holc"];
      v7 = v8;
      if (!v8 || [v8 unsignedIntegerValue] == *(self + 32))
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphHolidayNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  v8 = [v6 objectForKeyedSubscript:@"holc"];

  v9 = [v8 unsignedIntegerValue];
  v10 = [(PGGraphHolidayNode *)self initWithName:v7 category:v9];

  return v10;
}

- (PGGraphHolidayNode)initWithName:(id)a3 category:(unint64_t)a4
{
  v4 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGGraphHolidayNode;
  v8 = [(PGGraphNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    *(v9 + 32) = v4;
  }

  return v9;
}

+ (id)holidayNodeFilterWithNames:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v10 = @"name";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"Holiday" domain:401 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)holidayNodeFilterWithCategory:(unint64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D22C78]);
  v10 = @"holc";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithLabel:@"Holiday" domain:401 properties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)localizedNameForName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x277D276C8] localizedNameForName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MARelation)datesOfCelebration
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphCelebratingEdge filter];
  v4 = [v3 inRelation];
  v15[0] = v4;
  v5 = +[PGGraphMomentNode filter];
  v6 = [v5 relation];
  v15[1] = v6;
  v7 = +[PGGraphDateEdge filter];
  v8 = [v7 outRelation];
  v15[2] = v8;
  v9 = +[PGGraphDateNode filter];
  v10 = [v9 relation];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v12 = [v2 chain:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Holiday" domain:401];

  return v2;
}

@end