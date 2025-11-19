@interface PGGraphNamedLocationNode
+ (id)filter;
+ (id)filterBySettingNameNotEmptyPropertyOnFilter:(id)a3;
+ (id)filterWithName:(id)a3;
+ (id)filterWithUUID:(id)a3;
- (BOOL)hasProperties:(id)a3;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (PGGraphNamedLocationNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphNamedLocationNode)initWithName:(id)a3 uuid:(id)a4;
- (id)description;
- (id)featureIdentifier;
- (id)propertyDictionary;
@end

@implementation PGGraphNamedLocationNode

- (id)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphNamedLocationNode *)self UUID];
  v7 = [(PGGraphNamedLocationNode *)self name];
  v8 = [v3 stringWithFormat:@"%@|%@|%@", v5, v6, v7];

  return v8;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_opt_class();
  uuid = self->_uuid;

  return [v3 filterWithUUID:uuid];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ (%@)", v5, self->_name];

  return v6;
}

- (id)propertyDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_uuid forKeyedSubscript:@"id"];

  return v3;
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

      v8 = [v5 objectForKeyedSubscript:@"id"];
      v7 = v8;
      if (!v8 || [v8 isEqual:self->_uuid])
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

- (PGGraphNamedLocationNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  v8 = [v6 objectForKeyedSubscript:@"id"];

  v9 = [(PGGraphNamedLocationNode *)self initWithName:v7 uuid:v8];
  return v9;
}

- (PGGraphNamedLocationNode)initWithName:(id)a3 uuid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGGraphNamedLocationNode;
  v9 = [(PGGraphLocationNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_uuid, a4);
  }

  return v10;
}

+ (id)filterBySettingNameNotEmptyPropertyOnFilter:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"name";
  v3 = MEMORY[0x277D22B98];
  v4 = a3;
  v5 = [[v3 alloc] initWithComparator:2 value:&stru_2843F5C58];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:200];

  return v2;
}

+ (id)filterWithUUID:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filter];
  v6 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = [v5 labels];
  v12 = @"id";
  v13[0] = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v6 initWithLabels:v7 domain:200 properties:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filterWithName:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 filter];
  v6 = objc_alloc(MEMORY[0x277D22C78]);
  v7 = [v5 labels];
  v12 = @"name";
  v13[0] = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v6 initWithLabels:v7 domain:200 properties:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end