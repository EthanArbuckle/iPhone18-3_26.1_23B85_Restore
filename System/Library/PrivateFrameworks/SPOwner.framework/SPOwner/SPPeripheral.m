@interface SPPeripheral
- (BOOL)isEqual:(id)a3;
- (NSArray)keyAddressPairs;
- (SPPeripheral)initWithCoder:(id)a3;
- (SPPeripheral)initWithUserIdentifier:(id)a3 beaconIdentifier:(id)a4 groupIdentifier:(id)a5 name:(id)a6 partIdentifier:(unsigned __int8)a7 serialNumber:(id)a8 managedByFindMy:(BOOL)a9 primaryIndex:(unint64_t)a10 ltkIndexMap:(id)a11 lastConnectedLEMAC:(id)a12 allowedSessions:(id)a13 keyAddressPairs:(id)a14;
- (SPPeripheral)initWithUserIdentifier:(id)a3 beaconIdentifier:(id)a4 groupIdentifier:(id)a5 name:(id)a6 partIdentifier:(unsigned __int8)a7 serialNumber:(id)a8 managedByFindMy:(BOOL)a9 primaryIndex:(unint64_t)a10 ltkIndexMap:(id)a11 lastConnectedLEMAC:(id)a12 allowedSessions:(id)a13 longTermKeyMap:(id)a14;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForLEMAC:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPPeripheral

- (SPPeripheral)initWithUserIdentifier:(id)a3 beaconIdentifier:(id)a4 groupIdentifier:(id)a5 name:(id)a6 partIdentifier:(unsigned __int8)a7 serialNumber:(id)a8 managedByFindMy:(BOOL)a9 primaryIndex:(unint64_t)a10 ltkIndexMap:(id)a11 lastConnectedLEMAC:(id)a12 allowedSessions:(id)a13 keyAddressPairs:(id)a14
{
  v46 = a7;
  v61 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v54 = a4;
  v53 = a5;
  v52 = a6;
  v51 = a8;
  v50 = a11;
  v49 = a12;
  v48 = a13;
  v19 = a14;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v57;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        v27 = [v26 leMACAddress];
        v28 = [v20 objectForKeyedSubscript:v27];

        if (!v28)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v30 = [v26 leMACAddress];
          [v20 setObject:v29 forKeyedSubscript:v30];
        }

        v31 = [v26 leMACAddress];
        v32 = [v20 objectForKeyedSubscript:v31];

        v33 = [v26 longTermKey];
        [v32 addObject:v33];
      }

      v23 = [v21 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v23);
  }

  if ([v20 count] < 3)
  {
    v35 = [v20 copy];
    v40 = v48;
    v39 = v49;
    v42 = self;
    v38 = v50;
    v41 = v51;
    LOBYTE(v45) = a9;
    v37 = v52;
    v36 = v53;
    v34 = [(SPPeripheral *)v42 initWithUserIdentifier:v55 beaconIdentifier:v54 groupIdentifier:v53 name:v52 partIdentifier:v46 serialNumber:v51 managedByFindMy:v45 primaryIndex:a10 ltkIndexMap:v50 lastConnectedLEMAC:v49 allowedSessions:v48 longTermKeyMap:v35];
    v47 = v34;
  }

  else
  {
    v34 = self;
    v35 = LogCategory_CBPeripheralManagement();
    v37 = v52;
    v36 = v53;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SPPeripheral initWithUserIdentifier:v20 beaconIdentifier:v35 groupIdentifier:? name:? partIdentifier:? serialNumber:? managedByFindMy:? primaryIndex:? ltkIndexMap:? lastConnectedLEMAC:? allowedSessions:? keyAddressPairs:?];
    }

    v47 = 0;
    v39 = v49;
    v38 = v50;
    v40 = v48;
    v41 = v51;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v47;
}

- (SPPeripheral)initWithUserIdentifier:(id)a3 beaconIdentifier:(id)a4 groupIdentifier:(id)a5 name:(id)a6 partIdentifier:(unsigned __int8)a7 serialNumber:(id)a8 managedByFindMy:(BOOL)a9 primaryIndex:(unint64_t)a10 ltkIndexMap:(id)a11 lastConnectedLEMAC:(id)a12 allowedSessions:(id)a13 longTermKeyMap:(id)a14
{
  v44 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v43 = a11;
  v42 = a12;
  v23 = a13;
  v24 = a14;
  v45.receiver = self;
  v45.super_class = SPPeripheral;
  v25 = [(SPPeripheral *)&v45 init];
  if (v25)
  {
    v26 = [v44 copy];
    userIdentifier = v25->_userIdentifier;
    v25->_userIdentifier = v26;

    v28 = [v19 copy];
    beaconIdentifier = v25->_beaconIdentifier;
    v25->_beaconIdentifier = v28;

    v30 = [v20 copy];
    groupIdentifier = v25->_groupIdentifier;
    v25->_groupIdentifier = v30;

    v32 = [v21 copy];
    name = v25->_name;
    v25->_name = v32;

    v25->_partIdentifier = a7;
    v34 = [v22 copy];
    serialNumber = v25->_serialNumber;
    v25->_serialNumber = v34;

    v25->_managedByFindMy = a9;
    v25->_primaryIndex = a10;
    objc_storeStrong(&v25->_ltkIndexMap, a11);
    objc_storeStrong(&v25->_lastConnectedLEMAC, a12);
    v36 = [v23 copy];
    allowedSessions = v25->_allowedSessions;
    v25->_allowedSessions = v36;

    v38 = [v24 copy];
    longTermKeyMap = v25->_longTermKeyMap;
    v25->_longTermKeyMap = v38;
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = [SPPeripheral alloc];
  v18 = [(SPPeripheral *)self userIdentifier];
  v17 = [(SPPeripheral *)self beaconIdentifier];
  v4 = [(SPPeripheral *)self groupIdentifier];
  v5 = [(SPPeripheral *)self name];
  v6 = [(SPPeripheral *)self partIdentifier];
  v7 = [(SPPeripheral *)self serialNumber];
  v8 = [(SPPeripheral *)self managedByFindMy];
  v9 = [(SPPeripheral *)self primaryIndex];
  v10 = [(SPPeripheral *)self ltkIndexMap];
  v11 = [(SPPeripheral *)self lastConnectedLEMAC];
  v12 = [(SPPeripheral *)self allowedSessions];
  v13 = [(SPPeripheral *)self longTermKeyMap];
  LOBYTE(v16) = v8;
  v14 = [(SPPeripheral *)v19 initWithUserIdentifier:v18 beaconIdentifier:v17 groupIdentifier:v4 name:v5 partIdentifier:v6 serialNumber:v7 managedByFindMy:v16 primaryIndex:v9 ltkIndexMap:v10 lastConnectedLEMAC:v11 allowedSessions:v12 longTermKeyMap:v13];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPPeripheral *)self userIdentifier];
  [v4 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(SPPeripheral *)self beaconIdentifier];
  [v4 encodeObject:v6 forKey:@"beaconIdentifier"];

  v7 = [(SPPeripheral *)self groupIdentifier];
  [v4 encodeObject:v7 forKey:@"groupIdentifier"];

  v8 = [(SPPeripheral *)self name];
  [v4 encodeObject:v8 forKey:@"name"];

  [v4 encodeInt64:-[SPPeripheral partIdentifier](self forKey:{"partIdentifier"), @"partIdentifier"}];
  v9 = [(SPPeripheral *)self serialNumber];
  [v4 encodeObject:v9 forKey:@"serialNumber"];

  [v4 encodeBool:-[SPPeripheral managedByFindMy](self forKey:{"managedByFindMy"), @"managedByFindMy"}];
  [v4 encodeInt64:-[SPPeripheral primaryIndex](self forKey:{"primaryIndex"), @"primaryIndex"}];
  v10 = [(SPPeripheral *)self ltkIndexMap];
  [v4 encodeObject:v10 forKey:@"ltkIndexMap"];

  v11 = [(SPPeripheral *)self lastConnectedLEMAC];
  [v4 encodeObject:v11 forKey:@"lastConnectedLEMAC"];

  v12 = [(SPPeripheral *)self allowedSessions];
  [v4 encodeObject:v12 forKey:@"allowedSessions"];

  v13 = [(SPPeripheral *)self longTermKeyMap];
  [v4 encodeObject:v13 forKey:@"longTermKeyMap"];
}

- (SPPeripheral)initWithCoder:(id)a3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
  userIdentifier = self->_userIdentifier;
  self->_userIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v11;

  self->_partIdentifier = [v4 decodeInt64ForKey:@"partIdentifier"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v13;

  self->_managedByFindMy = [v4 decodeBoolForKey:@"managedByFindMy"];
  self->_primaryIndex = [v4 decodeInt64ForKey:@"primaryIndex"];
  v15 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v38[3] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  v17 = [v15 setWithArray:v16];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"ltkIndexMap"];
  ltkIndexMap = self->_ltkIndexMap;
  self->_ltkIndexMap = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastConnectedLEMAC"];
  lastConnectedLEMAC = self->_lastConnectedLEMAC;
  self->_lastConnectedLEMAC = v20;

  v22 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v24 = [v22 setWithArray:v23];
  v25 = [v4 decodeObjectOfClasses:v24 forKey:@"allowedSessions"];
  allowedSessions = self->_allowedSessions;
  self->_allowedSessions = v25;

  v27 = MEMORY[0x277CBEB98];
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:3];
  v29 = [v27 setWithArray:{v28, v34, v35}];
  v30 = [v4 decodeObjectOfClasses:v29 forKey:@"longTermKeyMap"];

  longTermKeyMap = self->_longTermKeyMap;
  self->_longTermKeyMap = v30;

  v32 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPPeripheral *)self userIdentifier];
      v7 = [(SPPeripheral *)v5 userIdentifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SPPeripheral *)self beaconIdentifier];
        v9 = [(SPPeripheral *)v5 beaconIdentifier];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SPPeripheral *)self userIdentifier];
  v4 = [v3 hash];
  v5 = [(SPPeripheral *)self beaconIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSArray)keyAddressPairs
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = self;
  v4 = [(SPPeripheral *)self longTermKeyMap];
  v5 = [v4 allKeys];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(SPPeripheral *)v22 longTermKeyMap];
        v11 = [v10 objectForKeyedSubscript:v9];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [[SPCBPeripheralKeyAddressPair alloc] initWithLEMACAddress:v9 longTermKey:*(*(&v23 + 1) + 8 * j)];
              [v3 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v14);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)descriptionForLEMAC:(id)a3
{
  v3 = a3;
  v4 = [v3 subdataWithRange:{0, 1}];
  v5 = [v3 subdataWithRange:{1, 6}];

  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 fm_hexString];
  v8 = [v5 fm_hexString];
  v9 = [v6 stringWithFormat:@"%@ %@", v7, v8];

  return v9;
}

- (id)description
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = [(SPPeripheral *)self groupIdentifier];

  if (v3)
  {
    v4 = [(SPPeripheral *)self groupIdentifier];
    v53 = [v4 description];
  }

  else
  {
    v53 = @"<nil>";
  }

  v5 = [(SPPeripheral *)self lastConnectedLEMAC];

  if (v5)
  {
    v6 = [(SPPeripheral *)self lastConnectedLEMAC];
    v52 = [(SPPeripheral *)self descriptionForLEMAC:v6];
  }

  else
  {
    v52 = &stru_2875DB468;
  }

  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(SPPeripheral *)self longTermKeyMap];
  v8 = [v7 allKeys];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v9)
  {
    v10 = v9;
    v55 = *v68;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v68 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v67 + 1) + 8 * i);
        v13 = [(SPPeripheral *)self longTermKeyMap];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v64;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v64 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v63 + 1) + 8 * j) fm_hexString];
              [v15 addObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v63 objects:v72 count:16];
          }

          while (v18);
        }

        v22 = [v15 componentsJoinedByString:{@", "}];
        v23 = MEMORY[0x277CCACA8];
        v24 = [(SPPeripheral *)self descriptionForLEMAC:v12];
        v25 = [v23 stringWithFormat:@"LEMAC: %@ -- LTKs: [%@]", v24, v22];
        [v58 addObject:v25];
      }

      v10 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v10);
  }

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v56 = [(SPPeripheral *)self ltkIndexMap];
  v27 = [v56 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v60;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(v56);
        }

        v31 = *(*(&v59 + 1) + 8 * k);
        v32 = MEMORY[0x277CCACA8];
        v33 = [v31 fm_hexString];
        v34 = [(SPPeripheral *)self ltkIndexMap];
        v35 = [v34 objectForKeyedSubscript:v31];
        v36 = [v32 stringWithFormat:@"  %@ -> %llu", v33, objc_msgSend(v35, "unsignedLongLongValue")];
        [v26 addObject:v36];
      }

      v28 = [v56 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v28);
  }

  v37 = MEMORY[0x277CCACA8];
  v51 = v26;
  v38 = [v26 componentsJoinedByString:@"\n"];
  v39 = [v37 stringWithFormat:@"\n%@\n", v38];

  v57 = MEMORY[0x277CCACA8];
  v50 = [(SPPeripheral *)self userIdentifier];
  v40 = [(SPPeripheral *)self beaconIdentifier];
  v41 = [(SPPeripheral *)self partIdentifier];
  v42 = [(SPPeripheral *)self name];
  v43 = [(SPPeripheral *)self serialNumber];
  v44 = [(SPPeripheral *)self managedByFindMy];
  v45 = [(SPPeripheral *)self primaryIndex];
  v46 = [(SPPeripheral *)self allowedSessions];
  v47 = [v57 stringWithFormat:@"<Uid: %@ Bid: %@ group: %@ part: %u name: [%@] S/N: [%@] managed: %d index: %llu lastConnectedMAC: [%@] acl: %@ ltkMap: %@ ltkIndexMap: %@>", v50, v40, v53, v41, v42, v43, v44, v45, v52, v46, v58, v39];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)initWithUserIdentifier:(void *)a1 beaconIdentifier:(NSObject *)a2 groupIdentifier:name:partIdentifier:serialNumber:managedByFindMy:primaryIndex:ltkIndexMap:lastConnectedLEMAC:allowedSessions:keyAddressPairs:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "Too many MAC addresses: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end