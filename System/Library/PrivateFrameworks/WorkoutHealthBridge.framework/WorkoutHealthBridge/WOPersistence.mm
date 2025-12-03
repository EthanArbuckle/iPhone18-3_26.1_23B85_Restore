@interface WOPersistence
+ (id)persistenceFromProto:(id)proto;
+ (id)zeroObjectModificationDate;
- (WOPersistence)initWithCoder:(id)coder;
- (WOPersistence)initWithData:(id)data;
- (WOPersistence)initWithVersion:(int64_t)version type:(unint64_t)type uuid:(id)uuid persistedData:(id)data objectState:(unint64_t)state objectModificationDate:(id)date syncIdentity:(id)identity;
- (WOPersistence)initWithVersion:(int64_t)version type:(unint64_t)type uuid:(id)uuid persistedData:(id)data persistedProtoData:(id)protoData objectState:(unint64_t)state objectModificationDate:(id)date syncIdentity:(id)self0;
- (id)data;
- (id)protobuf;
- (int64_t)encodedByteCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WOPersistence

- (WOPersistence)initWithVersion:(int64_t)version type:(unint64_t)type uuid:(id)uuid persistedData:(id)data objectState:(unint64_t)state objectModificationDate:(id)date syncIdentity:(id)identity
{
  selfCopy = self;
  v22 = a2;
  versionCopy = version;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, uuid);
  v18 = 0;
  objc_storeStrong(&v18, data);
  stateCopy = state;
  v16 = 0;
  objc_storeStrong(&v16, date);
  v15 = 0;
  objc_storeStrong(&v15, identity);
  v9 = selfCopy;
  selfCopy = 0;
  selfCopy = [(WOPersistence *)v9 initWithVersion:versionCopy type:typeCopy uuid:location persistedData:v18 persistedProtoData:0 objectState:stateCopy objectModificationDate:v16 syncIdentity:v15];
  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (WOPersistence)initWithVersion:(int64_t)version type:(unint64_t)type uuid:(id)uuid persistedData:(id)data persistedProtoData:(id)protoData objectState:(unint64_t)state objectModificationDate:(id)date syncIdentity:(id)self0
{
  selfCopy = self;
  v29 = a2;
  versionCopy = version;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, uuid);
  v25 = 0;
  objc_storeStrong(&v25, data);
  v24 = 0;
  objc_storeStrong(&v24, protoData);
  stateCopy = state;
  v22 = 0;
  objc_storeStrong(&v22, date);
  v21 = 0;
  objc_storeStrong(&v21, identity);
  v10 = selfCopy;
  selfCopy = 0;
  v20.receiver = v10;
  v20.super_class = WOPersistence;
  selfCopy = [(WOPersistence *)&v20 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(WOPersistence *)selfCopy setVersion:versionCopy];
    [(WOPersistence *)selfCopy setType:typeCopy];
    [(WOPersistence *)selfCopy setUuid:location];
    [(WOPersistence *)selfCopy setPersistedData:v25];
    [(WOPersistence *)selfCopy setPersistedProtoData:v24];
    [(WOPersistence *)selfCopy setObjectState:stateCopy];
    [(WOPersistence *)selfCopy setObjectModificationDate:v22];
    [(WOPersistence *)selfCopy setSyncIdentity:v21];
    v13 = objc_opt_new();
    [(WOPersistence *)selfCopy setKeyedNumbers:?];
    MEMORY[0x277D82BD8](v13);
    v14 = objc_opt_new();
    [(WOPersistence *)selfCopy setKeyedStrings:?];
    MEMORY[0x277D82BD8](v14);
    v15 = objc_opt_new();
    [(WOPersistence *)selfCopy setKeyedDatas:?];
    MEMORY[0x277D82BD8](v15);
    v16 = objc_opt_new();
    [(WOPersistence *)selfCopy setKeyedDatas:?];
    MEMORY[0x277D82BD8](v16);
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeInteger:selfCopy->_version forKey:@"version"];
  [location[0] encodeInteger:selfCopy->_type forKey:@"type"];
  [location[0] encodeObject:selfCopy->_uuid forKey:@"uuid"];
  [location[0] encodeObject:selfCopy->_keyedNumbers forKey:@"numbers"];
  [location[0] encodeObject:selfCopy->_keyedStrings forKey:@"strings"];
  [location[0] encodeObject:selfCopy->_keyedDates forKey:@"dates"];
  [location[0] encodeObject:selfCopy->_persistedData forKey:@"data"];
  [location[0] encodeObject:selfCopy->_keyedDatas forKey:@"keyedDatas"];
  [location[0] encodeObject:selfCopy->_persistedProtoData forKey:@"proto_data"];
  [location[0] encodeInteger:selfCopy->_objectState forKey:@"objectState"];
  [location[0] encodeObject:selfCopy->_objectModificationDate forKey:@"objectModificationDate"];
  [location[0] encodeObject:selfCopy->_syncIdentity forKey:@"syncIdentity"];
  objc_storeStrong(location, 0);
}

- (WOPersistence)initWithCoder:(id)coder
{
  v41[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v35.receiver = v3;
  v35.super_class = WOPersistence;
  selfCopy = [(WOPersistence *)&v35 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeIntegerForKey:@"version"];
    [(WOPersistence *)selfCopy setVersion:v4];
    v5 = [location[0] decodeIntegerForKey:@"type"];
    [(WOPersistence *)selfCopy setType:v5];
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    [(WOPersistence *)selfCopy setUuid:?];
    MEMORY[0x277D82BD8](v14);
    v16 = location[0];
    v15 = MEMORY[0x277CBEB98];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v41[2] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:?];
    v18 = [v15 setWithArray:?];
    v17 = [v16 decodeObjectOfClasses:? forKey:?];
    [(WOPersistence *)selfCopy setKeyedNumbers:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v21 = location[0];
    v20 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v23 = [v20 setWithArray:?];
    v22 = [v21 decodeObjectOfClasses:? forKey:?];
    [(WOPersistence *)selfCopy setKeyedStrings:?];
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v26 = location[0];
    v25 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    v28 = [v25 setWithArray:?];
    v27 = [v26 decodeObjectOfClasses:? forKey:?];
    [(WOPersistence *)selfCopy setKeyedDates:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    v31 = location[0];
    v30 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    v33 = [v30 setWithArray:?];
    v32 = [v31 decodeObjectOfClasses:? forKey:?];
    [(WOPersistence *)selfCopy setKeyedDatas:?];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    if ([location[0] containsValueForKey:@"proto_data"])
    {
      v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"proto_data"];
      [(WOPersistence *)selfCopy setPersistedProtoData:?];
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      [(WOPersistence *)selfCopy setPersistedProtoData:0];
    }

    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(WOPersistence *)selfCopy setPersistedData:?];
    MEMORY[0x277D82BD8](v12);
    if ([location[0] containsValueForKey:@"objectState"])
    {
      v6 = [location[0] decodeIntegerForKey:@"objectState"];
      [(WOPersistence *)selfCopy setObjectState:v6];
    }

    else
    {
      [(WOPersistence *)selfCopy setObjectState:0];
    }

    if ([location[0] containsValueForKey:@"objectModificationDate"])
    {
      v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"objectModificationDate"];
      [(WOPersistence *)selfCopy setObjectModificationDate:?];
      MEMORY[0x277D82BD8](v11);
    }

    else
    {
      v10 = +[WOPersistence zeroObjectModificationDate];
      [(WOPersistence *)selfCopy setObjectModificationDate:?];
      MEMORY[0x277D82BD8](v10);
    }

    if ([location[0] containsValueForKey:@"syncIdentity"])
    {
      v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"syncIdentity"];
      [(WOPersistence *)selfCopy setSyncIdentity:?];
      MEMORY[0x277D82BD8](v9);
    }
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v8;
}

- (WOPersistence)initWithData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v11 = 0;
  v6 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();
  v9 = v11;
  v7 = [v6 unarchivedObjectOfClass:v3 fromData:location[0] error:&v9];
  objc_storeStrong(&v11, v9);
  v10 = v7;
  if (!v7)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v14, v11);
      _os_log_error_impl(&dword_274C77000, oslog, OS_LOG_TYPE_ERROR, "Unable to decode persistence data: %{public}@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)zeroObjectModificationDate
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:0.0];

  return v2;
}

- (id)data
{
  v11 = *MEMORY[0x277D85DE8];
  v8[2] = self;
  v8[1] = a2;
  v8[0] = 0;
  obj = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  if (v4)
  {
    data = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v10, v8[0]);
      _os_log_error_impl(&dword_274C77000, oslog, OS_LOG_TYPE_ERROR, "Unable to archive WOPersistence object: %{public}@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    data = [MEMORY[0x277CBEA90] data];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  *MEMORY[0x277D85DE8];
  v2 = data;

  return v2;
}

- (int64_t)encodedByteCount
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(WOPersistence *)self data];
  v3 = [v4[0] length];
  objc_storeStrong(v4, 0);
  return v3;
}

- (id)protobuf
{
  v58 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v52[1] = a2;
  v52[0] = objc_opt_new();
  context = objc_autoreleasePoolPush();
  [v52[0] setVersion:selfCopy->_version];
  [v52[0] setType:selfCopy->_type];
  hk_dataForUUIDBytes = [(NSUUID *)selfCopy->_uuid hk_dataForUUIDBytes];
  [v52[0] setUuid:?];
  MEMORY[0x277D82BD8](hk_dataForUUIDBytes);
  [v52[0] setPersistedProtoData:selfCopy->_persistedProtoData];
  [v52[0] setPersistedData:selfCopy->_persistedData];
  [v52[0] setObjectState:selfCopy->_objectState];
  [(NSDate *)selfCopy->_objectModificationDate timeIntervalSinceReferenceDate];
  [v52[0] setObjectModificationTimeSinceReferenceDate:?];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_keyedNumbers);
  v34 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
  if (v34)
  {
    v28 = *__b[2];
    v29 = 0;
    v30 = v34;
    while (1)
    {
      v27 = v29;
      if (*__b[2] != v28)
      {
        objc_enumerationMutation(obj);
      }

      v51 = *(__b[1] + 8 * v29);
      v49 = [(NSDictionary *)selfCopy->_keyedNumbers objectForKeyedSubscript:v51];
      v48 = objc_opt_new();
      [v48 setKey:v51];
      [v49 doubleValue];
      [v48 setNumber:?];
      [v52[0] addKeyedNumbers:v48];
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v49, 0);
      ++v29;
      if (v27 + 1 >= v30)
      {
        v29 = 0;
        v30 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
        if (!v30)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  memset(v46, 0, sizeof(v46));
  v25 = MEMORY[0x277D82BE0](selfCopy->_keyedStrings);
  v26 = [v25 countByEnumeratingWithState:v46 objects:v56 count:16];
  if (v26)
  {
    v22 = *v46[2];
    v23 = 0;
    v24 = v26;
    while (1)
    {
      v21 = v23;
      if (*v46[2] != v22)
      {
        objc_enumerationMutation(v25);
      }

      v47 = *(v46[1] + 8 * v23);
      v45 = [(NSDictionary *)selfCopy->_keyedStrings objectForKeyedSubscript:v47];
      v44 = objc_opt_new();
      [v44 setKey:v47];
      [v44 setString:v45];
      [v52[0] addKeyedStrings:v44];
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [v25 countByEnumeratingWithState:v46 objects:v56 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v25);
  memset(v42, 0, sizeof(v42));
  v19 = MEMORY[0x277D82BE0](selfCopy->_keyedDates);
  v20 = [v19 countByEnumeratingWithState:v42 objects:v55 count:16];
  if (v20)
  {
    v16 = *v42[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*v42[2] != v16)
      {
        objc_enumerationMutation(v19);
      }

      v43 = *(v42[1] + 8 * v17);
      v41 = [(NSDictionary *)selfCopy->_keyedDates objectForKeyedSubscript:v43];
      v40 = objc_opt_new();
      [v40 setKey:v43];
      [v41 timeIntervalSinceReferenceDate];
      [v40 setTimeSinceReferenceDate:?];
      [v52[0] addKeyedDates:v40];
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [v19 countByEnumeratingWithState:v42 objects:v55 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v19);
  memset(v38, 0, sizeof(v38));
  v13 = MEMORY[0x277D82BE0](selfCopy->_keyedDatas);
  v14 = [v13 countByEnumeratingWithState:v38 objects:v54 count:16];
  if (v14)
  {
    v10 = *v38[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*v38[2] != v10)
      {
        objc_enumerationMutation(v13);
      }

      v39 = *(v38[1] + 8 * v11);
      v37 = [(NSDictionary *)selfCopy->_keyedDatas objectForKeyedSubscript:v39];
      v36 = objc_opt_new();
      [v36 setKey:v39];
      [v36 setOurData:v37];
      [v52[0] addKeyedDatas:v36];
      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v13 countByEnumeratingWithState:v38 objects:v54 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v13);
  if (selfCopy->_syncIdentity)
  {
    v35 = objc_opt_new();
    databaseIdentifier = [(WOSyncIdentity *)selfCopy->_syncIdentity databaseIdentifier];
    hk_dataForUUIDBytes2 = [(NSUUID *)databaseIdentifier hk_dataForUUIDBytes];
    [v35 setDatabaseIdentifier:?];
    MEMORY[0x277D82BD8](hk_dataForUUIDBytes2);
    MEMORY[0x277D82BD8](databaseIdentifier);
    hardwareIdentifier = [(WOSyncIdentity *)selfCopy->_syncIdentity hardwareIdentifier];
    hk_dataForUUIDBytes3 = [(NSUUID *)hardwareIdentifier hk_dataForUUIDBytes];
    [v35 setHardwareIdentifier:?];
    MEMORY[0x277D82BD8](hk_dataForUUIDBytes3);
    MEMORY[0x277D82BD8](hardwareIdentifier);
    instanceDiscriminator = [(WOSyncIdentity *)selfCopy->_syncIdentity instanceDiscriminator];
    [v35 setInstanceDiscriminator:?];
    MEMORY[0x277D82BD8](instanceDiscriminator);
    [v52[0] setSyncIdentity:v35];
    objc_storeStrong(&v35, 0);
  }

  objc_autoreleasePoolPop(context);
  v3 = MEMORY[0x277D82BE0](v52[0]);
  objc_storeStrong(v52, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)persistenceFromProto:(id)proto
{
  v84 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, proto);
  v59 = [WOPersistence alloc];
  version = [location[0] version];
  type = [location[0] type];
  v54 = MEMORY[0x277CCAD78];
  uuid = [location[0] uuid];
  v63 = [v54 hk_UUIDWithData:?];
  persistedData = [location[0] persistedData];
  persistedProtoData = [location[0] persistedProtoData];
  objectState = [location[0] objectState];
  v55 = MEMORY[0x277CBEAA8];
  [location[0] objectModificationTimeSinceReferenceDate];
  v60 = [v55 dateWithTimeIntervalSinceReferenceDate:?];
  v78 = [(WOPersistence *)v59 initWithVersion:version type:type uuid:v63 persistedData:persistedData persistedProtoData:persistedProtoData objectState:objectState objectModificationDate:v60 syncIdentity:0];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](persistedProtoData);
  MEMORY[0x277D82BD8](persistedData);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](uuid);
  if ([location[0] hasSyncIdentity])
  {
    v45 = [WOSyncIdentity alloc];
    v43 = MEMORY[0x277CCAD78];
    syncIdentity = [location[0] syncIdentity];
    hardwareIdentifier = [syncIdentity hardwareIdentifier];
    v51 = [v43 hk_UUIDWithData:?];
    v44 = MEMORY[0x277CCAD78];
    syncIdentity2 = [location[0] syncIdentity];
    databaseIdentifier = [syncIdentity2 databaseIdentifier];
    v48 = [v44 hk_UUIDWithData:?];
    syncIdentity3 = [location[0] syncIdentity];
    instanceDiscriminator = [syncIdentity3 instanceDiscriminator];
    v77 = [(WOSyncIdentity *)v45 initWithHardwareIdentifier:v51 databaseIdentifier:v48 instanceDiscriminator:?];
    MEMORY[0x277D82BD8](instanceDiscriminator);
    MEMORY[0x277D82BD8](syncIdentity3);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](databaseIdentifier);
    MEMORY[0x277D82BD8](syncIdentity2);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](hardwareIdentifier);
    MEMORY[0x277D82BD8](syncIdentity);
    [(WOPersistence *)v78 setSyncIdentity:v77];
    objc_storeStrong(&v77, 0);
  }

  v76 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = [location[0] keyedNumbers];
  v42 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
  if (v42)
  {
    v38 = *__b[2];
    v39 = 0;
    v40 = v42;
    while (1)
    {
      v37 = v39;
      if (*__b[2] != v38)
      {
        objc_enumerationMutation(obj);
      }

      v75 = *(__b[1] + 8 * v39);
      v33 = MEMORY[0x277CCABB0];
      [v75 number];
      v36 = [v33 numberWithDouble:?];
      v34 = v76;
      v35 = [v75 key];
      [v34 setObject:v36 forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      ++v39;
      if (v37 + 1 >= v40)
      {
        v39 = 0;
        v40 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
        if (!v40)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [(WOPersistence *)v78 setKeyedNumbers:v76];
  objc_storeStrong(&v76, 0);
  v73 = objc_opt_new();
  memset(v71, 0, sizeof(v71));
  keyedStrings = [location[0] keyedStrings];
  v32 = [keyedStrings countByEnumeratingWithState:v71 objects:v82 count:16];
  if (v32)
  {
    v28 = *v71[2];
    v29 = 0;
    v30 = v32;
    while (1)
    {
      v27 = v29;
      if (*v71[2] != v28)
      {
        objc_enumerationMutation(keyedStrings);
      }

      v72 = *(v71[1] + 8 * v29);
      string = [v72 string];
      v24 = v73;
      v25 = [v72 key];
      [v24 setObject:string forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](string);
      ++v29;
      if (v27 + 1 >= v30)
      {
        v29 = 0;
        v30 = [keyedStrings countByEnumeratingWithState:v71 objects:v82 count:16];
        if (!v30)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](keyedStrings);
  [(WOPersistence *)v78 setKeyedStrings:v73];
  objc_storeStrong(&v73, 0);
  v70 = objc_opt_new();
  memset(v68, 0, sizeof(v68));
  keyedDatas = [location[0] keyedDatas];
  v23 = [keyedDatas countByEnumeratingWithState:v68 objects:v81 count:16];
  if (v23)
  {
    v19 = *v68[2];
    v20 = 0;
    v21 = v23;
    while (1)
    {
      v18 = v20;
      if (*v68[2] != v19)
      {
        objc_enumerationMutation(keyedDatas);
      }

      v69 = *(v68[1] + 8 * v20);
      ourData = [v69 ourData];
      v15 = v70;
      v16 = [v69 key];
      [v15 setObject:ourData forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](ourData);
      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [keyedDatas countByEnumeratingWithState:v68 objects:v81 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](keyedDatas);
  [(WOPersistence *)v78 setKeyedDatas:v70];
  objc_storeStrong(&v70, 0);
  v67 = objc_opt_new();
  memset(v65, 0, sizeof(v65));
  keyedDates = [location[0] keyedDates];
  v14 = [keyedDates countByEnumeratingWithState:v65 objects:v80 count:16];
  if (v14)
  {
    v10 = *v65[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*v65[2] != v10)
      {
        objc_enumerationMutation(keyedDates);
      }

      v66 = *(v65[1] + 8 * v11);
      v5 = MEMORY[0x277CBEAA8];
      [v66 timeSinceReferenceDate];
      v8 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
      v6 = v67;
      v7 = [v66 key];
      [v6 setObject:v8 forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [keyedDates countByEnumeratingWithState:v65 objects:v80 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](keyedDates);
  [(WOPersistence *)v78 setKeyedDates:v67];
  objc_storeStrong(&v67, 0);
  v4 = MEMORY[0x277D82BE0](v78);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end