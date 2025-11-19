@interface SXJSONObject
+ (id)propertyDefinitions;
+ (id)propertyHashTable;
+ (id)protocolPropertyDefinitions;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SXJSONObject)init;
- (SXJSONObject)initWithJSONData:(id)a3 andVersion:(id)a4;
- (SXJSONObject)initWithJSONObject:(id)a3 andVersion:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForLookupKey:(uint64_t)a1;
- (id)valueForLookupKey:(id)a3;
- (void)storeObject:(id)a3 forLookupKey:(id)a4;
- (void)storeValue:(id)a3 forLookupKey:(id)a4;
@end

@implementation SXJSONObject

- (SXJSONObject)initWithJSONData:(id)a3 andVersion:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:@"InvalidJSON" reason:@"No JSON to parse" userInfo:0];
    objc_exception_throw(v12);
  }

  v17 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v17];
  v9 = v17;
  if (v9)
  {
    v13 = MEMORY[0x1E695DF30];
    v18 = @"error";
    v19[0] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v13 exceptionWithName:@"InvalidJSON" reason:@"Error while parsing JSON" userInfo:v14];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v10 = [(SXJSONObject *)self initWithJSONObject:v8 andVersion:v7];

  return v10;
}

- (SXJSONObject)initWithJSONObject:(id)a3 andVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15.receiver = self;
    v15.super_class = SXJSONObject;
    v9 = [(SXJSONObject *)&v15 init];
    v10 = v9;
    if (v9)
    {
      v9->_unfairLock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v9->_specificationVersion, a4);
      objc_storeStrong(&v10->_jsonDictionary, a3);
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objectStorage = v10->_objectStorage;
      v10->_objectStorage = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (SXJSONObject)init
{
  v3.receiver = self;
  v3.super_class = SXJSONObject;
  result = [(SXJSONObject *)&v3 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  jsonDictionary = v4->_jsonDictionary;
  if (jsonDictionary == self->_jsonDictionary)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSDictionary *)jsonDictionary isEqualToDictionary:?];
  }

LABEL_7:

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    unfairLock = 0;
    +[SXJSONPrimitives initializePrimitives];
  }

  v2 = objc_opt_class();

  SXJSONObjectRuntimeGenerateAccessorsForClass(v2);
}

+ (id)propertyHashTable
{
  if (+[SXJSONObject propertyHashTable]::onceToken != -1)
  {
    +[SXJSONObject propertyHashTable];
  }

  v3 = +[SXJSONObject propertyHashTable]::propertyHashTable;

  return v3;
}

uint64_t __33__SXJSONObject_propertyHashTable__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = +[SXJSONObject propertyHashTable]::propertyHashTable;
  +[SXJSONObject propertyHashTable]::propertyHashTable = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)propertyDefinitions
{
  if (+[SXJSONObject propertyDefinitions]::onceToken != -1)
  {
    +[SXJSONObject propertyDefinitions];
  }

  v3 = +[SXJSONObject propertyDefinitions]::propertyDefinitions;

  return v3;
}

uint64_t __35__SXJSONObject_propertyDefinitions__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = +[SXJSONObject propertyDefinitions]::propertyDefinitions;
  +[SXJSONObject propertyDefinitions]::propertyDefinitions = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)protocolPropertyDefinitions
{
  if (+[SXJSONObject protocolPropertyDefinitions]::onceToken != -1)
  {
    +[SXJSONObject protocolPropertyDefinitions];
  }

  v3 = +[SXJSONObject protocolPropertyDefinitions]::protocolPropertyDefinitions;

  return v3;
}

uint64_t __43__SXJSONObject_protocolPropertyDefinitions__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = +[SXJSONObject protocolPropertyDefinitions]::protocolPropertyDefinitions;
  +[SXJSONObject protocolPropertyDefinitions]::protocolPropertyDefinitions = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  jsonDictionary = self->_jsonDictionary;
  specificationVersion = self->_specificationVersion;

  return [v4 initWithJSONObject:jsonDictionary andVersion:specificationVersion];
}

- (void)storeObject:(id)a3 forLookupKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  objectStorage = self->_objectStorage;
  if (v8)
  {
    [(NSMutableDictionary *)objectStorage setObject:v8 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)objectStorage removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)objectForLookupKey:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [*(a1 + 32) objectForKey:v3];
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)storeValue:(id)a3 forLookupKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Currently not implemented yet" userInfo:0];
  objc_exception_throw(v7);
}

- (id)valueForLookupKey:(id)a3
{
  v3 = [(NSDictionary *)self->_jsonDictionary objectForKey:a3];

  return v3;
}

@end