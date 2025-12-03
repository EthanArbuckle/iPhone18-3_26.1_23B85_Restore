@interface NSDictionary(SKGJournalRecordValidation)
- (id)journalRecordNumberValueForKey:()SKGJournalRecordValidation;
- (uint64_t)journalRecordIncludesAttributes:()SKGJournalRecordValidation;
- (uint64_t)journalRecordIncludesBundles:()SKGJournalRecordValidation;
@end

@implementation NSDictionary(SKGJournalRecordValidation)

- (uint64_t)journalRecordIncludesBundles:()SKGJournalRecordValidation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (recordHasKey(self, *(*(&v12 + 1) + 8 * v8)))
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)journalRecordIncludesAttributes:()SKGJournalRecordValidation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (recordHasKey(self, *(*(&v12 + 1) + 8 * v8)))
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)journalRecordNumberValueForKey:()SKGJournalRecordValidation
{
  v4 = a3;
  selfCopy = self;
  v6 = v4;
  if (selfCopy)
  {
    ValueForKey = getValueForKey(selfCopy, v6);
    v8 = ValueForKey;
    if (!ValueForKey)
    {
      goto LABEL_9;
    }

    v9 = CFGetTypeID(ValueForKey);
    if (v9 == CFNumberGetTypeID())
    {
      v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{objc_msgSend(v8, "intValue")}];
LABEL_7:
      v8 = v10;
      goto LABEL_9;
    }

    if (v9 == CFBooleanGetTypeID())
    {
      v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:CFBooleanGetValue(v8) != 0];
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

@end