@interface WOHealthBridgeProtoPersistence
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKeyedDatas:(id)datas;
- (void)addKeyedDates:(id)dates;
- (void)addKeyedNumbers:(id)numbers;
- (void)addKeyedStrings:(id)strings;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WOHealthBridgeProtoPersistence

- (void)addKeyedNumbers:(id)numbers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, numbers);
  if (!selfCopy->_keyedNumbers)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyedNumbers = selfCopy->_keyedNumbers;
    selfCopy->_keyedNumbers = v3;
    MEMORY[0x277D82BD8](keyedNumbers);
  }

  [(NSMutableArray *)selfCopy->_keyedNumbers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addKeyedStrings:(id)strings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, strings);
  if (!selfCopy->_keyedStrings)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyedStrings = selfCopy->_keyedStrings;
    selfCopy->_keyedStrings = v3;
    MEMORY[0x277D82BD8](keyedStrings);
  }

  [(NSMutableArray *)selfCopy->_keyedStrings addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addKeyedDates:(id)dates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dates);
  if (!selfCopy->_keyedDates)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyedDates = selfCopy->_keyedDates;
    selfCopy->_keyedDates = v3;
    MEMORY[0x277D82BD8](keyedDates);
  }

  [(NSMutableArray *)selfCopy->_keyedDates addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addKeyedDatas:(id)datas
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, datas);
  if (!selfCopy->_keyedDatas)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keyedDatas = selfCopy->_keyedDatas;
    selfCopy->_keyedDatas = v3;
    MEMORY[0x277D82BD8](keyedDatas);
  }

  [(NSMutableArray *)selfCopy->_keyedDatas addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeProtoPersistence;
  v5 = [(WOHealthBridgeProtoPersistence *)&v7 description];
  dictionaryRepresentation = [(WOHealthBridgeProtoPersistence *)selfCopy dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v5, dictionaryRepresentation];
  MEMORY[0x277D82BD8](dictionaryRepresentation);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)dictionaryRepresentation
{
  v65 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v59[1] = a2;
  v59[0] = [MEMORY[0x277CBEB38] dictionary];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_version];
  [v59[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v45);
  v46 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_type];
  [v59[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v46);
  if (selfCopy->_uuid)
  {
    [v59[0] setObject:selfCopy->_uuid forKey:@"uuid"];
  }

  if ([(NSMutableArray *)selfCopy->_keyedNumbers count])
  {
    v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](selfCopy->_keyedNumbers, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](selfCopy->_keyedNumbers);
    v44 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
    if (v44)
    {
      v40 = *__b[2];
      v41 = 0;
      v42 = v44;
      while (1)
      {
        v39 = v41;
        if (*__b[2] != v40)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(__b[1] + 8 * v41);
        v37 = v58;
        dictionaryRepresentation = [v57 dictionaryRepresentation];
        [v37 addObject:?];
        MEMORY[0x277D82BD8](dictionaryRepresentation);
        ++v41;
        if (v39 + 1 >= v42)
        {
          v41 = 0;
          v42 = [obj countByEnumeratingWithState:__b objects:v64 count:16];
          if (!v42)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    [v59[0] setObject:v58 forKey:@"keyedNumbers"];
    objc_storeStrong(&v58, 0);
  }

  if ([(NSMutableArray *)selfCopy->_keyedStrings count])
  {
    v34 = objc_alloc(MEMORY[0x277CBEB18]);
    v55 = [v34 initWithCapacity:{-[NSMutableArray count](selfCopy->_keyedStrings, "count")}];
    memset(v53, 0, sizeof(v53));
    v35 = MEMORY[0x277D82BE0](selfCopy->_keyedStrings);
    v36 = [v35 countByEnumeratingWithState:v53 objects:v63 count:16];
    if (v36)
    {
      v31 = *v53[2];
      v32 = 0;
      v33 = v36;
      while (1)
      {
        v30 = v32;
        if (*v53[2] != v31)
        {
          objc_enumerationMutation(v35);
        }

        v54 = *(v53[1] + 8 * v32);
        v28 = v55;
        dictionaryRepresentation2 = [v54 dictionaryRepresentation];
        [v28 addObject:?];
        MEMORY[0x277D82BD8](dictionaryRepresentation2);
        ++v32;
        if (v30 + 1 >= v33)
        {
          v32 = 0;
          v33 = [v35 countByEnumeratingWithState:v53 objects:v63 count:16];
          if (!v33)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v35);
    [v59[0] setObject:v55 forKey:@"keyedStrings"];
    objc_storeStrong(&v55, 0);
  }

  if ([(NSMutableArray *)selfCopy->_keyedDates count])
  {
    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    v52 = [v25 initWithCapacity:{-[NSMutableArray count](selfCopy->_keyedDates, "count")}];
    memset(v50, 0, sizeof(v50));
    v26 = MEMORY[0x277D82BE0](selfCopy->_keyedDates);
    v27 = [v26 countByEnumeratingWithState:v50 objects:v62 count:16];
    if (v27)
    {
      v22 = *v50[2];
      v23 = 0;
      v24 = v27;
      while (1)
      {
        v21 = v23;
        if (*v50[2] != v22)
        {
          objc_enumerationMutation(v26);
        }

        v51 = *(v50[1] + 8 * v23);
        v19 = v52;
        dictionaryRepresentation3 = [v51 dictionaryRepresentation];
        [v19 addObject:?];
        MEMORY[0x277D82BD8](dictionaryRepresentation3);
        ++v23;
        if (v21 + 1 >= v24)
        {
          v23 = 0;
          v24 = [v26 countByEnumeratingWithState:v50 objects:v62 count:16];
          if (!v24)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v26);
    [v59[0] setObject:v52 forKey:@"keyedDates"];
    objc_storeStrong(&v52, 0);
  }

  if ([(NSMutableArray *)selfCopy->_keyedDatas count])
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v49 = [v16 initWithCapacity:{-[NSMutableArray count](selfCopy->_keyedDatas, "count")}];
    memset(v47, 0, sizeof(v47));
    v17 = MEMORY[0x277D82BE0](selfCopy->_keyedDatas);
    v18 = [v17 countByEnumeratingWithState:v47 objects:v61 count:16];
    if (v18)
    {
      v13 = *v47[2];
      v14 = 0;
      v15 = v18;
      while (1)
      {
        v12 = v14;
        if (*v47[2] != v13)
        {
          objc_enumerationMutation(v17);
        }

        v48 = *(v47[1] + 8 * v14);
        v10 = v49;
        dictionaryRepresentation4 = [v48 dictionaryRepresentation];
        [v10 addObject:?];
        MEMORY[0x277D82BD8](dictionaryRepresentation4);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [v17 countByEnumeratingWithState:v47 objects:v61 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v17);
    [v59[0] setObject:v49 forKey:@"keyedDatas"];
    objc_storeStrong(&v49, 0);
  }

  if (selfCopy->_persistedData)
  {
    [v59[0] setObject:selfCopy->_persistedData forKey:@"persistedData"];
  }

  if (selfCopy->_persistedProtoData)
  {
    [v59[0] setObject:selfCopy->_persistedProtoData forKey:@"persistedProtoData"];
  }

  v6 = v59[0];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_objectState];
  [v6 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  v8 = v59[0];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_objectModificationTimeSinceReferenceDate];
  [v8 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  if (selfCopy->_syncIdentity)
  {
    v4 = v59[0];
    dictionaryRepresentation5 = [(WOHealthBridgeSyncIdentity *)selfCopy->_syncIdentity dictionaryRepresentation];
    [v4 setObject:? forKey:?];
    MEMORY[0x277D82BD8](dictionaryRepresentation5);
  }

  v3 = MEMORY[0x277D82BE0](v59[0]);
  objc_storeStrong(v59, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)readFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v4 = WOHealthBridgeProtoPersistenceReadFrom(selfCopy, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  version = selfCopy->_version;
  PBDataWriterWriteInt32Field();
  type = selfCopy->_type;
  PBDataWriterWriteInt32Field();
  if (!selfCopy->_uuid)
  {
    __assert_rtn("[WOHealthBridgeProtoPersistence writeTo:]", "WOHealthBridgeProtoPersistence.m", 375, "nil != self->_uuid");
  }

  uuid = selfCopy->_uuid;
  PBDataWriterWriteDataField();
  memset(__b, 0, 0x40uLL);
  obj = MEMORY[0x277D82BE0](selfCopy->_keyedNumbers);
  v34 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
  if (v34)
  {
    v30 = *__b[2];
    v31 = 0;
    v32 = v34;
    while (1)
    {
      v29 = v31;
      if (*__b[2] != v30)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v31);
      PBDataWriterWriteSubmessage();
      ++v31;
      if (v29 + 1 >= v32)
      {
        v31 = 0;
        v32 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (!v32)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v37, 0, 0x40uLL);
  v27 = MEMORY[0x277D82BE0](selfCopy->_keyedStrings);
  v28 = [v27 countByEnumeratingWithState:v37 objects:v43 count:16];
  if (v28)
  {
    v24 = *v37[2];
    v25 = 0;
    v26 = v28;
    while (1)
    {
      v23 = v25;
      if (*v37[2] != v24)
      {
        objc_enumerationMutation(v27);
      }

      v37[8] = *(v37[1] + 8 * v25);
      PBDataWriterWriteSubmessage();
      ++v25;
      if (v23 + 1 >= v26)
      {
        v25 = 0;
        v26 = [v27 countByEnumeratingWithState:v37 objects:v43 count:16];
        if (!v26)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v27);
  memset(v36, 0, 0x40uLL);
  v21 = MEMORY[0x277D82BE0](selfCopy->_keyedDates);
  v22 = [v21 countByEnumeratingWithState:v36 objects:v42 count:16];
  if (v22)
  {
    v18 = *v36[2];
    v19 = 0;
    v20 = v22;
    while (1)
    {
      v17 = v19;
      if (*v36[2] != v18)
      {
        objc_enumerationMutation(v21);
      }

      v36[8] = *(v36[1] + 8 * v19);
      PBDataWriterWriteSubmessage();
      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [v21 countByEnumeratingWithState:v36 objects:v42 count:16];
        if (!v20)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v21);
  memset(v35, 0, 0x40uLL);
  v15 = MEMORY[0x277D82BE0](selfCopy->_keyedDatas);
  v16 = [v15 countByEnumeratingWithState:v35 objects:v41 count:16];
  if (v16)
  {
    v12 = *v35[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*v35[2] != v12)
      {
        objc_enumerationMutation(v15);
      }

      v35[8] = *(v35[1] + 8 * v13);
      PBDataWriterWriteSubmessage();
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [v15 countByEnumeratingWithState:v35 objects:v41 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v15);
  if (!selfCopy->_persistedData)
  {
    __assert_rtn("[WOHealthBridgeProtoPersistence writeTo:]", "WOHealthBridgeProtoPersistence.m", 408, "nil != self->_persistedData");
  }

  persistedData = selfCopy->_persistedData;
  PBDataWriterWriteDataField();
  if (selfCopy->_persistedProtoData)
  {
    persistedProtoData = selfCopy->_persistedProtoData;
    PBDataWriterWriteDataField();
  }

  objectState = selfCopy->_objectState;
  PBDataWriterWriteInt32Field();
  objectModificationTimeSinceReferenceDate = selfCopy->_objectModificationTimeSinceReferenceDate;
  PBDataWriterWriteDoubleField();
  if (selfCopy->_syncIdentity)
  {
    syncIdentity = selfCopy->_syncIdentity;
    PBDataWriterWriteSubmessage();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  *(location[0] + 24) = selfCopy->_version;
  *(location[0] + 20) = selfCopy->_type;
  [location[0] setUuid:selfCopy->_uuid];
  if ([(WOHealthBridgeProtoPersistence *)selfCopy keyedNumbersCount])
  {
    [location[0] clearKeyedNumbers];
    keyedNumbersCount = [(WOHealthBridgeProtoPersistence *)selfCopy keyedNumbersCount];
    for (i = 0; i < keyedNumbersCount; ++i)
    {
      v9 = location[0];
      v10 = [(WOHealthBridgeProtoPersistence *)selfCopy keyedNumbersAtIndex:i];
      [v9 addKeyedNumbers:?];
      MEMORY[0x277D82BD8](v10);
    }
  }

  if ([(WOHealthBridgeProtoPersistence *)selfCopy keyedStringsCount])
  {
    [location[0] clearKeyedStrings];
    keyedStringsCount = [(WOHealthBridgeProtoPersistence *)selfCopy keyedStringsCount];
    for (j = 0; j < keyedStringsCount; ++j)
    {
      v7 = location[0];
      v8 = [(WOHealthBridgeProtoPersistence *)selfCopy keyedStringsAtIndex:j];
      [v7 addKeyedStrings:?];
      MEMORY[0x277D82BD8](v8);
    }
  }

  if ([(WOHealthBridgeProtoPersistence *)selfCopy keyedDatesCount])
  {
    [location[0] clearKeyedDates];
    keyedDatesCount = [(WOHealthBridgeProtoPersistence *)selfCopy keyedDatesCount];
    for (k = 0; k < keyedDatesCount; ++k)
    {
      v5 = location[0];
      v6 = [(WOHealthBridgeProtoPersistence *)selfCopy keyedDatesAtIndex:k];
      [v5 addKeyedDates:?];
      MEMORY[0x277D82BD8](v6);
    }
  }

  if ([(WOHealthBridgeProtoPersistence *)selfCopy keyedDatasCount])
  {
    [location[0] clearKeyedDatas];
    keyedDatasCount = [(WOHealthBridgeProtoPersistence *)selfCopy keyedDatasCount];
    for (m = 0; m < keyedDatasCount; ++m)
    {
      v3 = location[0];
      v4 = [(WOHealthBridgeProtoPersistence *)selfCopy keyedDatasAtIndex:m];
      [v3 addKeyedDatas:?];
      MEMORY[0x277D82BD8](v4);
    }
  }

  [location[0] setPersistedData:selfCopy->_persistedData];
  if (selfCopy->_persistedProtoData)
  {
    [location[0] setPersistedProtoData:selfCopy->_persistedProtoData];
  }

  *(location[0] + 12) = selfCopy->_objectState;
  *(location[0] + 1) = *&selfCopy->_objectModificationTimeSinceReferenceDate;
  if (selfCopy->_syncIdentity)
  {
    [location[0] setSyncIdentity:selfCopy->_syncIdentity];
  }

  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v51 = a2;
  zoneCopy = zone;
  v49 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v49[24] = selfCopy->_version;
  v49[20] = selfCopy->_type;
  v3 = [(NSData *)selfCopy->_uuid copyWithZone:zoneCopy];
  v4 = *(v49 + 11);
  *(v49 + 11) = v3;
  MEMORY[0x277D82BD8](v4);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_keyedNumbers);
  v36 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
  if (v36)
  {
    v32 = *__b[2];
    v33 = 0;
    v34 = v36;
    while (1)
    {
      v31 = v33;
      if (*__b[2] != v32)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(__b[1] + 8 * v33);
      v46 = [v48 copyWithZone:zoneCopy];
      [v49 addKeyedNumbers:v46];
      objc_storeStrong(&v46, 0);
      ++v33;
      if (v31 + 1 >= v34)
      {
        v33 = 0;
        v34 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
        if (!v34)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v44, 0, sizeof(v44));
  v29 = MEMORY[0x277D82BE0](selfCopy->_keyedStrings);
  v30 = [v29 countByEnumeratingWithState:v44 objects:v55 count:16];
  if (v30)
  {
    v26 = *v44[2];
    v27 = 0;
    v28 = v30;
    while (1)
    {
      v25 = v27;
      if (*v44[2] != v26)
      {
        objc_enumerationMutation(v29);
      }

      v45 = *(v44[1] + 8 * v27);
      v43 = [v45 copyWithZone:zoneCopy];
      [v49 addKeyedStrings:v43];
      objc_storeStrong(&v43, 0);
      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [v29 countByEnumeratingWithState:v44 objects:v55 count:16];
        if (!v28)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v29);
  memset(v41, 0, sizeof(v41));
  v23 = MEMORY[0x277D82BE0](selfCopy->_keyedDates);
  v24 = [v23 countByEnumeratingWithState:v41 objects:v54 count:16];
  if (v24)
  {
    v20 = *v41[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*v41[2] != v20)
      {
        objc_enumerationMutation(v23);
      }

      v42 = *(v41[1] + 8 * v21);
      v40 = [v42 copyWithZone:zoneCopy];
      [v49 addKeyedDates:v40];
      objc_storeStrong(&v40, 0);
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [v23 countByEnumeratingWithState:v41 objects:v54 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v23);
  memset(v38, 0, sizeof(v38));
  v17 = MEMORY[0x277D82BE0](selfCopy->_keyedDatas);
  v18 = [v17 countByEnumeratingWithState:v38 objects:v53 count:16];
  if (v18)
  {
    v14 = *v38[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*v38[2] != v14)
      {
        objc_enumerationMutation(v17);
      }

      v39 = *(v38[1] + 8 * v15);
      v37 = [v39 copyWithZone:zoneCopy];
      [v49 addKeyedDatas:v37];
      objc_storeStrong(&v37, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [v17 countByEnumeratingWithState:v38 objects:v53 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v17);
  v5 = [(NSData *)selfCopy->_persistedData copyWithZone:zoneCopy];
  v6 = *(v49 + 7);
  *(v49 + 7) = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = [(NSData *)selfCopy->_persistedProtoData copyWithZone:zoneCopy];
  v8 = *(v49 + 8);
  *(v49 + 8) = v7;
  MEMORY[0x277D82BD8](v8);
  v49[12] = selfCopy->_objectState;
  *(v49 + 1) = *&selfCopy->_objectModificationTimeSinceReferenceDate;
  v9 = [(WOHealthBridgeSyncIdentity *)selfCopy->_syncIdentity copyWithZone:zoneCopy];
  v10 = *(v49 + 9);
  *(v49 + 9) = v9;
  MEMORY[0x277D82BD8](v10);
  v12 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  v6 = MEMORY[0x277D82BE0](location[0]);
  v5 = 0;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v5 = 0;
    if (selfCopy->_version == *(v6 + 24))
    {
      v5 = 0;
      if (selfCopy->_type == *(v6 + 20))
      {
        if (!selfCopy->_uuid && !*(v6 + 11) || (v5 = 0, ([(NSData *)selfCopy->_uuid isEqual:*(v6 + 11)]& 1) != 0))
        {
          if (!selfCopy->_keyedNumbers && !*(v6 + 4) || (v5 = 0, ([(NSMutableArray *)selfCopy->_keyedNumbers isEqual:*(v6 + 4)]& 1) != 0))
          {
            if (!selfCopy->_keyedStrings && !*(v6 + 5) || (v5 = 0, ([(NSMutableArray *)selfCopy->_keyedStrings isEqual:*(v6 + 5)]& 1) != 0))
            {
              if (!selfCopy->_keyedDates && !*(v6 + 3) || (v5 = 0, ([(NSMutableArray *)selfCopy->_keyedDates isEqual:*(v6 + 3)]& 1) != 0))
              {
                if (!selfCopy->_keyedDatas && !*(v6 + 2) || (v5 = 0, ([(NSMutableArray *)selfCopy->_keyedDatas isEqual:*(v6 + 2)]& 1) != 0))
                {
                  if (!selfCopy->_persistedData && !*(v6 + 7) || (v5 = 0, ([(NSData *)selfCopy->_persistedData isEqual:*(v6 + 7)]& 1) != 0))
                  {
                    if (!selfCopy->_persistedProtoData && !*(v6 + 8) || (v5 = 0, ([(NSData *)selfCopy->_persistedProtoData isEqual:*(v6 + 8)]& 1) != 0))
                    {
                      v5 = 0;
                      if (selfCopy->_objectState == *(v6 + 12))
                      {
                        v5 = 0;
                        if (selfCopy->_objectModificationTimeSinceReferenceDate == *(v6 + 1))
                        {
                          if (selfCopy->_syncIdentity || (v4 = 1, *(v6 + 9)))
                          {
                            v4 = [(WOHealthBridgeSyncIdentity *)selfCopy->_syncIdentity isEqual:*(v6 + 9)];
                          }

                          v5 = v4;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (unint64_t)hash
{
  if (self->_version)
  {
    version = self->_version;
  }

  else
  {
    version = 0;
  }

  if (self->_type)
  {
    type = self->_type;
  }

  else
  {
    type = 0;
  }

  v5 = (2654435761 * version) ^ (2654435761 * type) ^ [(NSData *)self->_uuid hash];
  v6 = v5 ^ [(NSMutableArray *)self->_keyedNumbers hash];
  v7 = v6 ^ [(NSMutableArray *)self->_keyedStrings hash];
  v8 = v7 ^ [(NSMutableArray *)self->_keyedDates hash];
  v9 = v8 ^ [(NSMutableArray *)self->_keyedDatas hash];
  v10 = v9 ^ [(NSData *)self->_persistedData hash];
  v11 = v10 ^ [(NSData *)self->_persistedProtoData hash];
  if (self->_objectState)
  {
    objectState = self->_objectState;
  }

  else
  {
    objectState = 0;
  }

  if (self->_objectModificationTimeSinceReferenceDate >= 0.0)
  {
    objectModificationTimeSinceReferenceDate = self->_objectModificationTimeSinceReferenceDate;
  }

  else
  {
    objectModificationTimeSinceReferenceDate = -self->_objectModificationTimeSinceReferenceDate;
  }

  v17 = floor(objectModificationTimeSinceReferenceDate + 0.5);
  v16 = (objectModificationTimeSinceReferenceDate - v17) * 1.84467441e19;
  v15 = 2654435761u * fmod(v17, 1.84467441e19);
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v15 += v16;
    }
  }

  else
  {
    v15 -= fabs(v16);
  }

  return v11 ^ (2654435761 * objectState) ^ v15 ^ [(WOHealthBridgeSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  selfCopy->_version = *(location[0] + 24);
  selfCopy->_type = *(location[0] + 20);
  if (*(location[0] + 11))
  {
    [(WOHealthBridgeProtoPersistence *)selfCopy setUuid:*(location[0] + 11)];
  }

  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(location[0] + 4));
  v26 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
  if (v26)
  {
    v22 = *__b[2];
    v23 = 0;
    v24 = v26;
    while (1)
    {
      v21 = v23;
      if (*__b[2] != v22)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(__b[1] + 8 * v23);
      [(WOHealthBridgeProtoPersistence *)selfCopy addKeyedNumbers:v34];
      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v31, 0, sizeof(v31));
  v19 = MEMORY[0x277D82BE0](*(location[0] + 5));
  v20 = [v19 countByEnumeratingWithState:v31 objects:v39 count:16];
  if (v20)
  {
    v16 = *v31[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*v31[2] != v16)
      {
        objc_enumerationMutation(v19);
      }

      v32 = *(v31[1] + 8 * v17);
      [(WOHealthBridgeProtoPersistence *)selfCopy addKeyedStrings:v32];
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [v19 countByEnumeratingWithState:v31 objects:v39 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v19);
  memset(v29, 0, sizeof(v29));
  v13 = MEMORY[0x277D82BE0](*(location[0] + 3));
  v14 = [v13 countByEnumeratingWithState:v29 objects:v38 count:16];
  if (v14)
  {
    v10 = *v29[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*v29[2] != v10)
      {
        objc_enumerationMutation(v13);
      }

      v30 = *(v29[1] + 8 * v11);
      [(WOHealthBridgeProtoPersistence *)selfCopy addKeyedDates:v30];
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v13 countByEnumeratingWithState:v29 objects:v38 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v13);
  memset(v27, 0, sizeof(v27));
  v7 = MEMORY[0x277D82BE0](*(location[0] + 2));
  v8 = [v7 countByEnumeratingWithState:v27 objects:v37 count:16];
  if (v8)
  {
    v4 = *v27[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*v27[2] != v4)
      {
        objc_enumerationMutation(v7);
      }

      v28 = *(v27[1] + 8 * v5);
      [(WOHealthBridgeProtoPersistence *)selfCopy addKeyedDatas:v28];
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [v7 countByEnumeratingWithState:v27 objects:v37 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v7);
  if (*(location[0] + 7))
  {
    [(WOHealthBridgeProtoPersistence *)selfCopy setPersistedData:*(location[0] + 7)];
  }

  if (*(location[0] + 8))
  {
    [(WOHealthBridgeProtoPersistence *)selfCopy setPersistedProtoData:*(location[0] + 8)];
  }

  selfCopy->_objectState = *(location[0] + 12);
  selfCopy->_objectModificationTimeSinceReferenceDate = *(location[0] + 1);
  if (selfCopy->_syncIdentity && *(location[0] + 9))
  {
    [(WOHealthBridgeSyncIdentity *)selfCopy->_syncIdentity mergeFrom:*(location[0] + 9)];
  }

  else if (!selfCopy->_syncIdentity && *(location[0] + 9))
  {
    [(WOHealthBridgeProtoPersistence *)selfCopy setSyncIdentity:*(location[0] + 9)];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end