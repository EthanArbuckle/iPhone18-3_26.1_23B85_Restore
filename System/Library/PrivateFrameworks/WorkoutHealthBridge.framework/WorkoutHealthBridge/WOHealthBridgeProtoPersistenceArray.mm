@interface WOHealthBridgeProtoPersistenceArray
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPersistences:(id)persistences;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WOHealthBridgeProtoPersistenceArray

- (void)addPersistences:(id)persistences
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, persistences);
  if (!selfCopy->_persistences)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    persistences = selfCopy->_persistences;
    selfCopy->_persistences = v3;
    MEMORY[0x277D82BD8](persistences);
  }

  [(NSMutableArray *)selfCopy->_persistences addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeProtoPersistenceArray;
  v5 = [(WOHealthBridgeProtoPersistenceArray *)&v7 description];
  dictionaryRepresentation = [(WOHealthBridgeProtoPersistenceArray *)selfCopy dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v5, dictionaryRepresentation];
  MEMORY[0x277D82BD8](dictionaryRepresentation);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15[1] = a2;
  v15[0] = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)selfCopy->_persistences count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](selfCopy->_persistences, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](selfCopy->_persistences);
    v11 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v8);
        v4 = v14;
        dictionaryRepresentation = [v13 dictionaryRepresentation];
        [v4 addObject:?];
        MEMORY[0x277D82BD8](dictionaryRepresentation);
        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    [v15[0] setObject:v14 forKey:@"persistences"];
    objc_storeStrong(&v14, 0);
  }

  v3 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)readFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v4 = WOHealthBridgeProtoPersistenceArrayReadFrom(selfCopy, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)to
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  memset(__b, 0, 0x40uLL);
  obj = MEMORY[0x277D82BE0](selfCopy->_persistences);
  v8 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v5);
      PBDataWriterWriteSubmessage();
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  if ([(WOHealthBridgeProtoPersistenceArray *)selfCopy persistencesCount])
  {
    [location[0] clearPersistences];
    persistencesCount = [(WOHealthBridgeProtoPersistenceArray *)selfCopy persistencesCount];
    for (i = 0; i < persistencesCount; ++i)
    {
      v3 = location[0];
      v4 = [(WOHealthBridgeProtoPersistenceArray *)selfCopy persistencesAtIndex:i];
      [v3 addPersistences:?];
      MEMORY[0x277D82BD8](v4);
    }
  }

  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  zoneCopy = zone;
  v14 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_persistences);
  v10 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v7);
      v11 = [v13 copyWithZone:zoneCopy];
      [v14 addPersistences:v11];
      objc_storeStrong(&v11, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v4;
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
    if (selfCopy->_persistences || (v4 = 1, *(v6 + 1)))
    {
      v4 = [(NSMutableArray *)selfCopy->_persistences isEqual:*(v6 + 1)];
    }

    v5 = v4;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(location[0] + 1));
  v9 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [(WOHealthBridgeProtoPersistenceArray *)selfCopy addPersistences:v11, v7];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end