@interface SSMemoryEntity
+ (id)anyInDatabase:(id)database predicate:(id)predicate;
+ (id)queryWithDatabase:(id)database predicate:(id)predicate orderingProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (SSMemoryEntity)init;
- (SSMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)valueForExternalProperty:(id)property;
- (id)valueForProperty:(id)property;
- (void)dealloc;
- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties;
- (void)setValue:(id)value forExternalProperty:(id)property;
- (void)setValue:(id)value forProperty:(id)property;
- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count;
- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count;
@end

@implementation SSMemoryEntity

+ (id)anyInDatabase:(id)database predicate:(id)predicate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__60;
  v12 = __Block_byref_object_dispose__60;
  v13 = 0;
  v4 = [self queryWithDatabase:database predicate:predicate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSMemoryEntity_SSSQLiteQuery__anyInDatabase_predicate___block_invoke;
  v7[3] = &unk_1E84B2228;
  v7[4] = &v8;
  [v4 enumerateMemoryEntitiesUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __57__SSMemoryEntity_SSSQLiteQuery__anyInDatabase_predicate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a4 = 1;
  return result;
}

+ (id)queryWithDatabase:(id)database predicate:(id)predicate orderingProperties:(id)properties
{
  v9 = objc_alloc_init(SSSQLiteQueryDescriptor);
  -[SSSQLiteQueryDescriptor setEntityClass:](v9, "setEntityClass:", [self databaseEntityClass]);
  [(SSSQLiteQueryDescriptor *)v9 setMemoryEntityClass:self];
  [(SSSQLiteQueryDescriptor *)v9 setOrderingProperties:properties];
  [(SSSQLiteQueryDescriptor *)v9 setPredicate:predicate];
  v10 = [[SSSQLiteQuery alloc] initWithDatabase:database descriptor:v9];

  return v10;
}

- (SSMemoryEntity)init
{
  v4.receiver = self;
  v4.super_class = SSMemoryEntity;
  v2 = [(SSMemoryEntity *)&v4 init];
  if (v2)
  {
    v2->_propertyValues = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_externalPropertyValues = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (SSMemoryEntity)initWithDatabaseEntity:(id)entity properties:(id)properties
{
  v6 = [(SSMemoryEntity *)self init];
  v7 = v6;
  if (v6)
  {
    [(SSMemoryEntity *)v6 reloadFromDatabaseEntity:entity properties:properties];
    v7->_databaseID = [entity persistentID];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSMemoryEntity;
  [(SSMemoryEntity *)&v3 dealloc];
}

- (void)reloadFromDatabaseEntity:(id)entity properties:(id)properties
{
  v7 = [properties count];
  v8 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  if (v8)
  {
    v9 = v8;
    [properties getObjects:v8 range:{0, v7}];
    v10 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (v10)
    {
      v11 = v10;
      [entity getValues:v10 forProperties:v9 count:v7];
      [(SSMemoryEntity *)self setValues:v11 forProperties:v9 count:v7];
      free(v11);
    }

    free(v9);
  }
}

- (void)setValue:(id)value forProperty:(id)property
{
  propertyCopy = property;
  valueCopy = value;
  [(SSMemoryEntity *)self setValues:&valueCopy forProperties:&propertyCopy count:1];
}

- (void)setValues:(id *)values forProperties:(const void *)properties count:(int64_t)count
{
  if (count >= 1)
  {
    countCopy = count;
    do
    {
      propertyValues = self->_propertyValues;
      if (*values)
      {
        [(NSMutableDictionary *)propertyValues setObject:*values forKey:*properties];
      }

      else
      {
        [(NSMutableDictionary *)propertyValues removeObjectForKey:*properties];
      }

      ++properties;
      ++values;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)setValue:(id)value forExternalProperty:(id)property
{
  propertyCopy = property;
  valueCopy = value;
  [(SSMemoryEntity *)self setValues:&valueCopy forExternalProperties:&propertyCopy count:1];
}

- (void)setValues:(id *)values forExternalProperties:(const void *)properties count:(int64_t)count
{
  if (count >= 1)
  {
    countCopy = count;
    do
    {
      externalPropertyValues = self->_externalPropertyValues;
      if (*values)
      {
        [(NSMutableDictionary *)externalPropertyValues setObject:*values forKey:*properties];
      }

      else
      {
        [(NSMutableDictionary *)externalPropertyValues removeObjectForKey:*properties];
      }

      ++properties;
      ++values;
      --countCopy;
    }

    while (countCopy);
  }
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_propertyValues objectForKey:property];

  return v3;
}

- (id)valueForExternalProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_externalPropertyValues objectForKey:property];

  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSMemoryEntity;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %lld", -[SSMemoryEntity description](&v3, sel_description), self->_databaseID];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  databaseID = [(SSMemoryEntity *)self databaseID];
  if (databaseID != [equal databaseID] || !-[NSDictionary isEqualToDictionary:](-[SSMemoryEntity propertyValues](self, "propertyValues"), "isEqualToDictionary:", objc_msgSend(equal, "propertyValues")))
  {
    return 0;
  }

  externalPropertyValues = [(SSMemoryEntity *)self externalPropertyValues];
  externalPropertyValues2 = [equal externalPropertyValues];

  return [(NSDictionary *)externalPropertyValues isEqualToDictionary:externalPropertyValues2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_databaseID;
  [*(v4 + 16) addEntriesFromDictionary:self->_propertyValues];
  [*(v4 + 24) addEntriesFromDictionary:self->_externalPropertyValues];
  return v4;
}

@end