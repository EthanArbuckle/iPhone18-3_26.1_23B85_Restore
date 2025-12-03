@interface PGGraphHolidayNode
+ (MARelation)datesOfCelebration;
+ (id)filter;
+ (id)holidayNodeFilterWithCategory:(unint64_t)category;
+ (id)holidayNodeFilterWithNames:(id)names;
+ (id)localizedNameForName:(id)name;
- (BOOL)hasProperties:(id)properties;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (PGGraphHolidayNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphHolidayNode)initWithName:(id)name category:(unint64_t)category;
- (PGGraphHolidayNodeCollection)collection;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
@end

@implementation PGGraphHolidayNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(PGGraphHolidayNode *)self name];
  v7 = [v3 stringWithFormat:@"%@|%@|%lu", v5, name, -[PGGraphHolidayNode category](self, "category")];

  return v7;
}

- (PGGraphHolidayNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphHolidayNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSArray)localizedSynonyms
{
  name = [(PGGraphHolidayNode *)self name];
  v3 = [MEMORY[0x277D276C8] localizedSynonymsForHolidayName:name];

  return v3;
}

- (NSString)localizedName
{
  name = [(PGGraphHolidayNode *)self name];
  v3 = [objc_opt_class() localizedNameForName:name];

  return v3;
}

- (id)propertyForKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"name"])
  {
    v5 = self->_name;
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([keyCopy isEqualToString:@"holc"])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(self + 32)];
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v9 = 138412290;
    v10 = keyCopy;
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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
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

- (PGGraphHolidayNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v8 = [propertiesCopy objectForKeyedSubscript:@"holc"];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v10 = [(PGGraphHolidayNode *)self initWithName:v7 category:unsignedIntegerValue];

  return v10;
}

- (PGGraphHolidayNode)initWithName:(id)name category:(unint64_t)category
{
  categoryCopy = category;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PGGraphHolidayNode;
  v8 = [(PGGraphNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    *(v9 + 32) = categoryCopy;
  }

  return v9;
}

+ (id)holidayNodeFilterWithNames:(id)names
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D22C78];
  namesCopy = names;
  v5 = [v3 alloc];
  v10 = @"name";
  v11[0] = namesCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithLabel:@"Holiday" domain:401 properties:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)holidayNodeFilterWithCategory:(unint64_t)category
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D22C78]);
  v10 = @"holc";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 initWithLabel:@"Holiday" domain:401 properties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)localizedNameForName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = [MEMORY[0x277D276C8] localizedNameForName:nameCopy];
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
  inRelation = [v3 inRelation];
  v15[0] = inRelation;
  v5 = +[PGGraphMomentNode filter];
  relation = [v5 relation];
  v15[1] = relation;
  v7 = +[PGGraphDateEdge filter];
  outRelation = [v7 outRelation];
  v15[2] = outRelation;
  v9 = +[PGGraphDateNode filter];
  relation2 = [v9 relation];
  v15[3] = relation2;
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