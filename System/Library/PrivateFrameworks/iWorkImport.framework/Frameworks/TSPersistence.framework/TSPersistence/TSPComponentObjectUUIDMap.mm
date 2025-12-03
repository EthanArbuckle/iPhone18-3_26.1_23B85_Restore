@interface TSPComponentObjectUUIDMap
- (TSPComponentObjectUUIDMap)initWithComponentObjectUUIDMap:(id)map;
- (TSPComponentObjectUUIDMap)initWithMessage:(const void *)message;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectUUIDForIdentifier:(int64_t)identifier;
- (int64_t)identifierForObjectUUID:(id)d;
- (unint64_t)count;
- (void)dealloc;
- (void)enumerateIdentifiersAndObjectUUIDsUsingBlock:(id)block;
- (void)saveToMessage:(void *)message;
@end

@implementation TSPComponentObjectUUIDMap

- (TSPComponentObjectUUIDMap)initWithMessage:(const void *)message
{
  v6.receiver = self;
  v6.super_class = TSPComponentObjectUUIDMap;
  v4 = [(TSPComponentObjectUUIDMap *)&v6 init];
  if (v4 && *(message + 2) >= 1)
  {
    operator new();
  }

  return v4;
}

- (TSPComponentObjectUUIDMap)initWithComponentObjectUUIDMap:(id)map
{
  mapCopy = map;
  v8.receiver = self;
  v8.super_class = TSPComponentObjectUUIDMap;
  v5 = [(TSPComponentObjectUUIDMap *)&v8 init];
  v6 = v5;
  if (mapCopy && v5 && mapCopy[1])
  {
    operator new();
  }

  return v6;
}

- (void)dealloc
{
  identifierToUUIDMap = self->_identifierToUUIDMap;
  if (identifierToUUIDMap)
  {
    v4 = sub_2769ABBE4(identifierToUUIDMap);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  uuidToIdentifierMap = self->_uuidToIdentifierMap;
  if (uuidToIdentifierMap)
  {
    v6 = sub_276A16E7C(uuidToIdentifierMap);
    MEMORY[0x277C9F670](v6, 0x10A0C408EF24B1CLL);
  }

  v7.receiver = self;
  v7.super_class = TSPComponentObjectUUIDMap;
  [(TSPComponentObjectUUIDMap *)&v7 dealloc];
}

- (unint64_t)count
{
  identifierToUUIDMap = self->_identifierToUUIDMap;
  if (identifierToUUIDMap)
  {
    return identifierToUUIDMap[3];
  }

  else
  {
    return 0;
  }
}

- (id)objectUUIDForIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  identifierToUUIDMap = self->_identifierToUUIDMap;
  if (identifierToUUIDMap)
  {
    identifierToUUIDMap = sub_2769ABC64(identifierToUUIDMap, &identifierCopy);
    if (identifierToUUIDMap)
    {
      identifierToUUIDMap = identifierToUUIDMap[3];
    }
  }

  return identifierToUUIDMap;
}

- (int64_t)identifierForObjectUUID:(id)d
{
  dCopy = d;
  uuidToIdentifierMap = self->_uuidToIdentifierMap;
  if (uuidToIdentifierMap && (v6 = sub_276A174D4(uuidToIdentifierMap, &dCopy, v4)) != 0)
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateIdentifiersAndObjectUUIDsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    identifierToUUIDMap = self->_identifierToUUIDMap;
    if (identifierToUUIDMap)
    {
      v7 = 0;
      v6 = identifierToUUIDMap + 16;
      do
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        (*(blockCopy + 2))(blockCopy, v6[2], v6[3], &v7);
      }

      while ((v7 & 1) == 0);
    }
  }
}

- (void)saveToMessage:(void *)message
{
  identifierToUUIDMap = self->_identifierToUUIDMap;
  if (identifierToUUIDMap)
  {
    v4 = identifierToUUIDMap[2];
    if (v4)
    {
      while (1)
      {
        v6 = *(message + 2);
        if (!v6)
        {
          break;
        }

        v7 = *(message + 2);
        v8 = *v6;
        if (v7 >= *v6)
        {
          if (v8 == *(message + 3))
          {
LABEL_8:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message, v8 + 1);
            v6 = *(message + 2);
            v8 = *v6;
          }

          *v6 = v8 + 1;
          v9 = sub_2769F5280(*message);
          v10 = *(message + 2);
          v11 = *(message + 2) + 8 * v10;
          *(message + 2) = v10 + 1;
          *(v11 + 8) = v9;
          goto LABEL_10;
        }

        *(message + 2) = v7 + 1;
        v9 = *&v6[2 * v7 + 2];
LABEL_10:
        *(v9 + 16) |= 2u;
        v12 = v4[3];
        *(v9 + 32) = v4[2];
        sub_2769C65D4(v15, v12);
        *(v9 + 16) |= 1u;
        v13 = *(v9 + 24);
        if (!v13)
        {
          v14 = *(v9 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v14);
          *(v9 + 24) = v13;
        }

        TSP::UUIDData::saveToMessage(v15, v13);
        v4 = *v4;
        if (!v4)
        {
          return;
        }
      }

      v8 = *(message + 3);
      goto LABEL_8;
    }
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSPMutableComponentObjectUUIDMap, a2, zone);

  return MEMORY[0x2821F9670](v4, sel_initWithComponentObjectUUIDMap_, self);
}

@end