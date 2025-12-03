@interface PGGraphPerformerNode
+ (id)filter;
- (BOOL)hasProperties:(id)properties;
- (NSString)featureIdentifier;
- (PGGraphPerformerNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPerformerNode)initWithName:(id)name uuid:(id)uuid;
- (PGGraphPerformerNodeCollection)collection;
- (PPNamedEntity)pg_namedEntity;
- (id)propertyDictionary;
@end

@implementation PGGraphPerformerNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  v7 = [v3 stringWithFormat:@"%@|%@|%@", v5, name, self->_uuid];

  return v7;
}

- (PGGraphPerformerNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPerformerNodeCollection alloc] initWithNode:self];

  return v2;
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

- (PGGraphPerformerNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v8 = [propertiesCopy objectForKeyedSubscript:@"id"];

  v9 = [(PGGraphPerformerNode *)self initWithName:v7 uuid:v8];
  return v9;
}

- (PGGraphPerformerNode)initWithName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = PGGraphPerformerNode;
  v9 = [(PGGraphNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_uuid, uuid);
  }

  return v10;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Performer" domain:900];

  return v2;
}

- (PPNamedEntity)pg_namedEntity
{
  name = [(PGGraphPerformerNode *)self name];
  v4 = name;
  if (name && [name length])
  {
    if ([(PGGraphPerformerNode *)self domain]== 900)
    {
      label = [(PGGraphPerformerNode *)self label];
      v6 = [label isEqualToString:@"Performer"];

      if (v6)
      {
        v7 = 7;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 2;
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v8 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v4 category:v7 language:localeIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end