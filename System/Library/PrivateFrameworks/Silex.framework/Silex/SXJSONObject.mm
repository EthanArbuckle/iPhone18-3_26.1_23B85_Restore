@interface SXJSONObject
+ (id)propertyDefinitions;
+ (id)propertyHashTable;
+ (id)protocolPropertyDefinitions;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SXJSONObject)init;
- (SXJSONObject)initWithJSONData:(id)data andVersion:(id)version;
- (SXJSONObject)initWithJSONObject:(id)object andVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectForLookupKey:(uint64_t)key;
- (id)valueForLookupKey:(id)key;
- (void)storeObject:(id)object forLookupKey:(id)key;
- (void)storeValue:(id)value forLookupKey:(id)key;
@end

@implementation SXJSONObject

- (SXJSONObject)initWithJSONData:(id)data andVersion:(id)version
{
  v19[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  versionCopy = version;
  if (!dataCopy)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:@"InvalidJSON" reason:@"No JSON to parse" userInfo:0];
    objc_exception_throw(v12);
  }

  v17 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v17];
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

  v10 = [(SXJSONObject *)self initWithJSONObject:v8 andVersion:versionCopy];

  return v10;
}

- (SXJSONObject)initWithJSONObject:(id)object andVersion:(id)version
{
  objectCopy = object;
  versionCopy = version;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15.receiver = self;
    v15.super_class = SXJSONObject;
    v9 = [(SXJSONObject *)&v15 init];
    v10 = v9;
    if (v9)
    {
      v9->_unfairLock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v9->_specificationVersion, version);
      objc_storeStrong(&v10->_jsonDictionary, object);
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objectStorage = v10->_objectStorage;
      v10->_objectStorage = v11;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  jsonDictionary = equalCopy->_jsonDictionary;
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
  if (objc_opt_class() == self)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  jsonDictionary = self->_jsonDictionary;
  specificationVersion = self->_specificationVersion;

  return [v4 initWithJSONObject:jsonDictionary andVersion:specificationVersion];
}

- (void)storeObject:(id)object forLookupKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  objectStorage = self->_objectStorage;
  if (objectCopy)
  {
    [(NSMutableDictionary *)objectStorage setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)objectStorage removeObjectForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)objectForLookupKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    os_unfair_lock_lock_with_options();
    v4 = [*(key + 32) objectForKey:v3];
    os_unfair_lock_unlock((key + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)storeValue:(id)value forLookupKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:@"NotImplemented" reason:@"Currently not implemented yet" userInfo:0];
  objc_exception_throw(v7);
}

- (id)valueForLookupKey:(id)key
{
  v3 = [(NSDictionary *)self->_jsonDictionary objectForKey:key];

  return v3;
}

@end