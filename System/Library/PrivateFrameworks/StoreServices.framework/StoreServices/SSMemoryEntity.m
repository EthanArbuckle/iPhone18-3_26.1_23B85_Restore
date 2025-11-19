@interface SSMemoryEntity
+ (id)anyInDatabase:(id)a3 predicate:(id)a4;
+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 orderingProperties:(id)a5;
- (BOOL)isEqual:(id)a3;
- (SSMemoryEntity)init;
- (SSMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)valueForExternalProperty:(id)a3;
- (id)valueForProperty:(id)a3;
- (void)dealloc;
- (void)reloadFromDatabaseEntity:(id)a3 properties:(id)a4;
- (void)setValue:(id)a3 forExternalProperty:(id)a4;
- (void)setValue:(id)a3 forProperty:(id)a4;
- (void)setValues:(id *)a3 forExternalProperties:(const void *)a4 count:(int64_t)a5;
- (void)setValues:(id *)a3 forProperties:(const void *)a4 count:(int64_t)a5;
@end

@implementation SSMemoryEntity

+ (id)anyInDatabase:(id)a3 predicate:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__60;
  v12 = __Block_byref_object_dispose__60;
  v13 = 0;
  v4 = [a1 queryWithDatabase:a3 predicate:a4];
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

+ (id)queryWithDatabase:(id)a3 predicate:(id)a4 orderingProperties:(id)a5
{
  v9 = objc_alloc_init(SSSQLiteQueryDescriptor);
  -[SSSQLiteQueryDescriptor setEntityClass:](v9, "setEntityClass:", [a1 databaseEntityClass]);
  [(SSSQLiteQueryDescriptor *)v9 setMemoryEntityClass:a1];
  [(SSSQLiteQueryDescriptor *)v9 setOrderingProperties:a5];
  [(SSSQLiteQueryDescriptor *)v9 setPredicate:a4];
  v10 = [[SSSQLiteQuery alloc] initWithDatabase:a3 descriptor:v9];

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

- (SSMemoryEntity)initWithDatabaseEntity:(id)a3 properties:(id)a4
{
  v6 = [(SSMemoryEntity *)self init];
  v7 = v6;
  if (v6)
  {
    [(SSMemoryEntity *)v6 reloadFromDatabaseEntity:a3 properties:a4];
    v7->_databaseID = [a3 persistentID];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSMemoryEntity;
  [(SSMemoryEntity *)&v3 dealloc];
}

- (void)reloadFromDatabaseEntity:(id)a3 properties:(id)a4
{
  v7 = [a4 count];
  v8 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  if (v8)
  {
    v9 = v8;
    [a4 getObjects:v8 range:{0, v7}];
    v10 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (v10)
    {
      v11 = v10;
      [a3 getValues:v10 forProperties:v9 count:v7];
      [(SSMemoryEntity *)self setValues:v11 forProperties:v9 count:v7];
      free(v11);
    }

    free(v9);
  }
}

- (void)setValue:(id)a3 forProperty:(id)a4
{
  v4 = a4;
  v5 = a3;
  [(SSMemoryEntity *)self setValues:&v5 forProperties:&v4 count:1];
}

- (void)setValues:(id *)a3 forProperties:(const void *)a4 count:(int64_t)a5
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      propertyValues = self->_propertyValues;
      if (*a3)
      {
        [(NSMutableDictionary *)propertyValues setObject:*a3 forKey:*a4];
      }

      else
      {
        [(NSMutableDictionary *)propertyValues removeObjectForKey:*a4];
      }

      ++a4;
      ++a3;
      --v5;
    }

    while (v5);
  }
}

- (void)setValue:(id)a3 forExternalProperty:(id)a4
{
  v4 = a4;
  v5 = a3;
  [(SSMemoryEntity *)self setValues:&v5 forExternalProperties:&v4 count:1];
}

- (void)setValues:(id *)a3 forExternalProperties:(const void *)a4 count:(int64_t)a5
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      externalPropertyValues = self->_externalPropertyValues;
      if (*a3)
      {
        [(NSMutableDictionary *)externalPropertyValues setObject:*a3 forKey:*a4];
      }

      else
      {
        [(NSMutableDictionary *)externalPropertyValues removeObjectForKey:*a4];
      }

      ++a4;
      ++a3;
      --v5;
    }

    while (v5);
  }
}

- (id)valueForProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_propertyValues objectForKey:a3];

  return v3;
}

- (id)valueForExternalProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_externalPropertyValues objectForKey:a3];

  return v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSMemoryEntity;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %lld", -[SSMemoryEntity description](&v3, sel_description), self->_databaseID];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v6 = [(SSMemoryEntity *)self databaseID];
  if (v6 != [a3 databaseID] || !-[NSDictionary isEqualToDictionary:](-[SSMemoryEntity propertyValues](self, "propertyValues"), "isEqualToDictionary:", objc_msgSend(a3, "propertyValues")))
  {
    return 0;
  }

  v7 = [(SSMemoryEntity *)self externalPropertyValues];
  v8 = [a3 externalPropertyValues];

  return [(NSDictionary *)v7 isEqualToDictionary:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_databaseID;
  [*(v4 + 16) addEntriesFromDictionary:self->_propertyValues];
  [*(v4 + 24) addEntriesFromDictionary:self->_externalPropertyValues];
  return v4;
}

@end