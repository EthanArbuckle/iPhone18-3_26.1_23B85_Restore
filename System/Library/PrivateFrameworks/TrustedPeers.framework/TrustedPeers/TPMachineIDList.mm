@interface TPMachineIDList
- (TPMachineIDList)initWithEntries:(id)entries;
- (id)description;
- (id)entryFor:(id)for;
- (id)machineIDsInStatus:(unint64_t)status;
@end

@implementation TPMachineIDList

- (id)machineIDsInStatus:(unint64_t)status
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  entries = [(TPMachineIDList *)self entries];
  v7 = [entries countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(entries);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 status] == status)
        {
          machineID = [v11 machineID];
          [v5 addObject:machineID];
        }
      }

      v8 = [entries countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  entries = [(TPMachineIDList *)self entries];
  v4 = [v2 stringWithFormat:@"<TPMachineIDList: %@>", entries];

  return v4;
}

- (id)entryFor:(id)for
{
  v19 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  entries = [(TPMachineIDList *)self entries];
  v6 = [entries countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(entries);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        machineID = [v9 machineID];
        v11 = [forCopy isEqualToString:machineID];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [entries countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (TPMachineIDList)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = TPMachineIDList;
  v6 = [(TPMachineIDList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entries, entries);
  }

  return v7;
}

@end