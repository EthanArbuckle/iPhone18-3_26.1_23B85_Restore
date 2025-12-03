@interface PLJournalEntryPayloadProperty
+ (id)payloadPropertyForUUID;
+ (id)payloadPropertyWithKey:(id)key andType:(unint64_t)type info:(id)info;
+ (id)payloadPropertyWithKey:(id)key andType:(unint64_t)type requiresConversion:(BOOL)conversion info:(id)info;
+ (id)payloadPropertyWithKey:(id)key relatedEntityPropertyNames:(id)names shouldPrefetchRelationship:(BOOL)relationship;
+ (id)payloadPropertyWithKey:(id)key subRelationshipProperties:(id)properties subRelationshipEntityName:(id)name isToMany:(BOOL)many isAdditionalEntityName:(BOOL)entityName info:(id)info;
- (BOOL)hasSourceObjectValue;
- (BOOL)requiresConversion;
- (PLJournalEntryPayloadProperty)initWithKey:(id)key andType:(unint64_t)type subRelationshipProperties:(id)properties subRelationshipEntityName:(id)name requiresConversion:(BOOL)conversion relatedEntityPropertyNames:(id)names isUUIDKey:(BOOL)dKey isToManySubRelationship:(BOOL)self0 shouldPrefetchRelationship:(BOOL)self1 isAdditionalEntityName:(BOOL)self2 info:(id)self3;
@end

@implementation PLJournalEntryPayloadProperty

+ (id)payloadPropertyForUUID
{
  LODWORD(v4) = 65537;
  v2 = [[self alloc] initWithKey:0 andType:0 subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:0 relatedEntityPropertyNames:0 isUUIDKey:v4 isToManySubRelationship:0 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v2;
}

- (BOOL)hasSourceObjectValue
{
  v3 = [(PLJournalEntryPayloadProperty *)self key];
  if (v3 || [(PLJournalEntryPayloadProperty *)self isUUIDKey])
  {
    v4 = 1;
  }

  else
  {
    subRelationshipProperties = [(PLJournalEntryPayloadProperty *)self subRelationshipProperties];
    v4 = subRelationshipProperties != 0;
  }

  return v4;
}

- (BOOL)requiresConversion
{
  if (self->_requiresConversion)
  {
    return 1;
  }

  result = 0;
  type = self->_type;
  if (type <= 1799)
  {
    if (type && type != 1100 && type != 1200)
    {
      return result;
    }

    return 1;
  }

  if (type == 1800 || type == 2100 || type == 2000)
  {
    return 1;
  }

  return result;
}

- (PLJournalEntryPayloadProperty)initWithKey:(id)key andType:(unint64_t)type subRelationshipProperties:(id)properties subRelationshipEntityName:(id)name requiresConversion:(BOOL)conversion relatedEntityPropertyNames:(id)names isUUIDKey:(BOOL)dKey isToManySubRelationship:(BOOL)self0 shouldPrefetchRelationship:(BOOL)self1 isAdditionalEntityName:(BOOL)self2 info:(id)self3
{
  keyCopy = key;
  propertiesCopy = properties;
  nameCopy = name;
  namesCopy = names;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = PLJournalEntryPayloadProperty;
  v22 = [(PLJournalEntryPayloadProperty *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_key, key);
    v23->_type = type;
    objc_storeStrong(&v23->_subRelationshipProperties, properties);
    objc_storeStrong(&v23->_subRelationshipEntityName, name);
    v23->_requiresConversion = conversion;
    objc_storeStrong(&v23->_relatedEntityPropertyNames, names);
    v23->_isUUIDKey = dKey;
    v23->_isToManySubRelationship = relationship;
    v23->_shouldPrefetchRelationship = prefetchRelationship;
    v23->_isAdditionalEntityName = entityName;
    objc_storeStrong(&v23->_info, info);
  }

  return v23;
}

+ (id)payloadPropertyWithKey:(id)key subRelationshipProperties:(id)properties subRelationshipEntityName:(id)name isToMany:(BOOL)many isAdditionalEntityName:(BOOL)entityName info:(id)info
{
  infoCopy = info;
  nameCopy = name;
  propertiesCopy = properties;
  keyCopy = key;
  BYTE3(v20) = entityName;
  BYTE2(v20) = 1;
  BYTE1(v20) = many;
  LOBYTE(v20) = 0;
  v18 = [[self alloc] initWithKey:keyCopy andType:0 subRelationshipProperties:propertiesCopy subRelationshipEntityName:nameCopy requiresConversion:1 relatedEntityPropertyNames:0 isUUIDKey:v20 isToManySubRelationship:infoCopy shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v18;
}

+ (id)payloadPropertyWithKey:(id)key andType:(unint64_t)type requiresConversion:(BOOL)conversion info:(id)info
{
  conversionCopy = conversion;
  infoCopy = info;
  keyCopy = key;
  LODWORD(v14) = 0x10000;
  v12 = [[self alloc] initWithKey:keyCopy andType:type subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:conversionCopy relatedEntityPropertyNames:0 isUUIDKey:v14 isToManySubRelationship:infoCopy shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v12;
}

+ (id)payloadPropertyWithKey:(id)key andType:(unint64_t)type info:(id)info
{
  infoCopy = info;
  keyCopy = key;
  LODWORD(v12) = 0x10000;
  v10 = [[self alloc] initWithKey:keyCopy andType:type subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:0 relatedEntityPropertyNames:0 isUUIDKey:v12 isToManySubRelationship:infoCopy shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v10;
}

+ (id)payloadPropertyWithKey:(id)key relatedEntityPropertyNames:(id)names shouldPrefetchRelationship:(BOOL)relationship
{
  namesCopy = names;
  keyCopy = key;
  BYTE3(v12) = 0;
  BYTE2(v12) = relationship;
  LOWORD(v12) = 0;
  v10 = [[self alloc] initWithKey:keyCopy andType:0 subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:1 relatedEntityPropertyNames:namesCopy isUUIDKey:v12 isToManySubRelationship:0 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v10;
}

@end