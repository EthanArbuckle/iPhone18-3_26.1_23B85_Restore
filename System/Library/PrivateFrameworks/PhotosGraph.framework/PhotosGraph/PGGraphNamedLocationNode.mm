@interface PGGraphNamedLocationNode
+ (id)filter;
+ (id)filterBySettingNameNotEmptyPropertyOnFilter:(id)filter;
+ (id)filterWithName:(id)name;
+ (id)filterWithUUID:(id)d;
- (BOOL)hasProperties:(id)properties;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (PGGraphNamedLocationNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphNamedLocationNode)initWithName:(id)name uuid:(id)uuid;
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
  uUID = [(PGGraphNamedLocationNode *)self UUID];
  name = [(PGGraphNamedLocationNode *)self name];
  v8 = [v3 stringWithFormat:@"%@|%@|%@", v5, uUID, name];

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

- (PGGraphNamedLocationNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v8 = [propertiesCopy objectForKeyedSubscript:@"id"];

  v9 = [(PGGraphNamedLocationNode *)self initWithName:v7 uuid:v8];
  return v9;
}

- (PGGraphNamedLocationNode)initWithName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = PGGraphNamedLocationNode;
  v9 = [(PGGraphLocationNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_uuid, uuid);
  }

  return v10;
}

+ (id)filterBySettingNameNotEmptyPropertyOnFilter:(id)filter
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"name";
  v3 = MEMORY[0x277D22B98];
  filterCopy = filter;
  v5 = [[v3 alloc] initWithComparator:2 value:&stru_2843F5C58];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [filterCopy filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:200];

  return v2;
}

+ (id)filterWithUUID:(id)d
{
  v13[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  filter = [self filter];
  v6 = objc_alloc(MEMORY[0x277D22C78]);
  labels = [filter labels];
  v12 = @"id";
  v13[0] = dCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v6 initWithLabels:labels domain:200 properties:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filterWithName:(id)name
{
  v13[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  filter = [self filter];
  v6 = objc_alloc(MEMORY[0x277D22C78]);
  labels = [filter labels];
  v12 = @"name";
  v13[0] = nameCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [v6 initWithLabels:labels domain:200 properties:v8];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end