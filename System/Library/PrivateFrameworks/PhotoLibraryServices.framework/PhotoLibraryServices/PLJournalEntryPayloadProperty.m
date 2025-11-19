@interface PLJournalEntryPayloadProperty
+ (id)payloadPropertyForUUID;
+ (id)payloadPropertyWithKey:(id)a3 andType:(unint64_t)a4 info:(id)a5;
+ (id)payloadPropertyWithKey:(id)a3 andType:(unint64_t)a4 requiresConversion:(BOOL)a5 info:(id)a6;
+ (id)payloadPropertyWithKey:(id)a3 relatedEntityPropertyNames:(id)a4 shouldPrefetchRelationship:(BOOL)a5;
+ (id)payloadPropertyWithKey:(id)a3 subRelationshipProperties:(id)a4 subRelationshipEntityName:(id)a5 isToMany:(BOOL)a6 isAdditionalEntityName:(BOOL)a7 info:(id)a8;
- (BOOL)hasSourceObjectValue;
- (BOOL)requiresConversion;
- (PLJournalEntryPayloadProperty)initWithKey:(id)a3 andType:(unint64_t)a4 subRelationshipProperties:(id)a5 subRelationshipEntityName:(id)a6 requiresConversion:(BOOL)a7 relatedEntityPropertyNames:(id)a8 isUUIDKey:(BOOL)a9 isToManySubRelationship:(BOOL)a10 shouldPrefetchRelationship:(BOOL)a11 isAdditionalEntityName:(BOOL)a12 info:(id)a13;
@end

@implementation PLJournalEntryPayloadProperty

+ (id)payloadPropertyForUUID
{
  LODWORD(v4) = 65537;
  v2 = [[a1 alloc] initWithKey:0 andType:0 subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:0 relatedEntityPropertyNames:0 isUUIDKey:v4 isToManySubRelationship:0 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

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
    v6 = [(PLJournalEntryPayloadProperty *)self subRelationshipProperties];
    v4 = v6 != 0;
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

- (PLJournalEntryPayloadProperty)initWithKey:(id)a3 andType:(unint64_t)a4 subRelationshipProperties:(id)a5 subRelationshipEntityName:(id)a6 requiresConversion:(BOOL)a7 relatedEntityPropertyNames:(id)a8 isUUIDKey:(BOOL)a9 isToManySubRelationship:(BOOL)a10 shouldPrefetchRelationship:(BOOL)a11 isAdditionalEntityName:(BOOL)a12 info:(id)a13
{
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v27 = a8;
  v26 = a13;
  v28.receiver = self;
  v28.super_class = PLJournalEntryPayloadProperty;
  v22 = [(PLJournalEntryPayloadProperty *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_key, a3);
    v23->_type = a4;
    objc_storeStrong(&v23->_subRelationshipProperties, a5);
    objc_storeStrong(&v23->_subRelationshipEntityName, a6);
    v23->_requiresConversion = a7;
    objc_storeStrong(&v23->_relatedEntityPropertyNames, a8);
    v23->_isUUIDKey = a9;
    v23->_isToManySubRelationship = a10;
    v23->_shouldPrefetchRelationship = a11;
    v23->_isAdditionalEntityName = a12;
    objc_storeStrong(&v23->_info, a13);
  }

  return v23;
}

+ (id)payloadPropertyWithKey:(id)a3 subRelationshipProperties:(id)a4 subRelationshipEntityName:(id)a5 isToMany:(BOOL)a6 isAdditionalEntityName:(BOOL)a7 info:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  BYTE3(v20) = a7;
  BYTE2(v20) = 1;
  BYTE1(v20) = a6;
  LOBYTE(v20) = 0;
  v18 = [[a1 alloc] initWithKey:v17 andType:0 subRelationshipProperties:v16 subRelationshipEntityName:v15 requiresConversion:1 relatedEntityPropertyNames:0 isUUIDKey:v20 isToManySubRelationship:v14 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v18;
}

+ (id)payloadPropertyWithKey:(id)a3 andType:(unint64_t)a4 requiresConversion:(BOOL)a5 info:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  LODWORD(v14) = 0x10000;
  v12 = [[a1 alloc] initWithKey:v11 andType:a4 subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:v6 relatedEntityPropertyNames:0 isUUIDKey:v14 isToManySubRelationship:v10 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v12;
}

+ (id)payloadPropertyWithKey:(id)a3 andType:(unint64_t)a4 info:(id)a5
{
  v8 = a5;
  v9 = a3;
  LODWORD(v12) = 0x10000;
  v10 = [[a1 alloc] initWithKey:v9 andType:a4 subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:0 relatedEntityPropertyNames:0 isUUIDKey:v12 isToManySubRelationship:v8 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v10;
}

+ (id)payloadPropertyWithKey:(id)a3 relatedEntityPropertyNames:(id)a4 shouldPrefetchRelationship:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  BYTE3(v12) = 0;
  BYTE2(v12) = a5;
  LOWORD(v12) = 0;
  v10 = [[a1 alloc] initWithKey:v9 andType:0 subRelationshipProperties:0 subRelationshipEntityName:0 requiresConversion:1 relatedEntityPropertyNames:v8 isUUIDKey:v12 isToManySubRelationship:0 shouldPrefetchRelationship:? isAdditionalEntityName:? info:?];

  return v10;
}

@end