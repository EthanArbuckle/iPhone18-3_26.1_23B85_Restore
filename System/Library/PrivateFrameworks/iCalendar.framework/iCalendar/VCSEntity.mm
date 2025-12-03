@interface VCSEntity
+ (id)stringForType:(unint64_t)type;
- (BOOL)hasPropertyWithName:(id)name;
- (NSArray)children;
- (NSString)description;
- (VCSEntity)init;
- (VCSEntity)parent;
- (id)dictify;
- (id)propertyForName:(id)name;
- (void)addChildEntity:(id)entity;
- (void)removePropertyForName:(id)name;
- (void)setProperty:(id)property;
@end

@implementation VCSEntity

+ (id)stringForType:(unint64_t)type
{
  if (type >= 5)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", type];
  }

  else
  {
    type = off_27A64C480[type];
  }

  return type;
}

- (VCSEntity)init
{
  v8.receiver = self;
  v8.super_class = VCSEntity;
  v2 = [(VCSEntity *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    children = v2->_children;
    v2->_children = v3;

    v5 = objc_opt_new();
    propertyMap = v2->_propertyMap;
    v2->_propertyMap = v5;
  }

  return v2;
}

- (id)dictify
{
  v3 = objc_opt_new();
  v4 = [objc_opt_class() stringForType:{-[VCSEntity entityType](self, "entityType")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  if ([(NSMutableDictionary *)self->_propertyMap count])
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_propertyMap, "count")}];
    propertyMap = self->_propertyMap;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __20__VCSEntity_dictify__block_invoke;
    v11[3] = &unk_27A64C420;
    v12 = v5;
    v7 = v5;
    [(NSMutableDictionary *)propertyMap enumerateKeysAndObjectsUsingBlock:v11];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"properties"];
  }

  if ([(NSMutableArray *)self->_children count])
  {
    v9 = [(NSMutableArray *)self->_children VCS_map:&__block_literal_global_28];
    [v3 setObject:v9 forKeyedSubscript:@"children"];
  }

  return v3;
}

void __20__VCSEntity_dictify__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 values];
  v6 = [v7 VCS_map:&__block_literal_global_12];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictify = [(VCSEntity *)self dictify];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, dictify];

  return v6;
}

- (NSArray)children
{
  v2 = [(NSMutableArray *)self->_children copy];

  return v2;
}

- (void)setProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy)
  {
    v8 = propertyCopy;
    name = [propertyCopy name];

    propertyCopy = v8;
    if (name)
    {
      propertyMap = self->_propertyMap;
      name2 = [v8 name];
      [(NSMutableDictionary *)propertyMap setObject:v8 forKeyedSubscript:name2];

      propertyCopy = v8;
    }
  }
}

- (void)removePropertyForName:(id)name
{
  if (name)
  {
    [(NSMutableDictionary *)self->_propertyMap removeObjectForKey:?];
  }
}

- (BOOL)hasPropertyWithName:(id)name
{
  if (!name)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_propertyMap objectForKeyedSubscript:?];
  v4 = v3 != 0;

  return v4;
}

- (id)propertyForName:(id)name
{
  if (name)
  {
    v4 = [(NSMutableDictionary *)self->_propertyMap objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addChildEntity:(id)entity
{
  entityCopy = entity;
  [entityCopy setParent:self];
  [(NSMutableArray *)self->_children addObject:entityCopy];
}

- (VCSEntity)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end