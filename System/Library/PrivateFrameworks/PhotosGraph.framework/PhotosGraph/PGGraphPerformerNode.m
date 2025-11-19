@interface PGGraphPerformerNode
+ (id)filter;
- (BOOL)hasProperties:(id)a3;
- (NSString)featureIdentifier;
- (PGGraphPerformerNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphPerformerNode)initWithName:(id)a3 uuid:(id)a4;
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

- (PGGraphPerformerNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  v8 = [v6 objectForKeyedSubscript:@"id"];

  v9 = [(PGGraphPerformerNode *)self initWithName:v7 uuid:v8];
  return v9;
}

- (PGGraphPerformerNode)initWithName:(id)a3 uuid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGGraphPerformerNode;
  v9 = [(PGGraphNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_uuid, a4);
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
  v3 = [(PGGraphPerformerNode *)self name];
  v4 = v3;
  if (v3 && [v3 length])
  {
    if ([(PGGraphPerformerNode *)self domain]== 900)
    {
      v5 = [(PGGraphPerformerNode *)self label];
      v6 = [v5 isEqualToString:@"Performer"];

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

    v9 = [MEMORY[0x277CBEAF8] currentLocale];
    v10 = [v9 localeIdentifier];

    v8 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v4 category:v7 language:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end