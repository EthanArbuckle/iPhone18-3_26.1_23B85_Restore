@interface SKGProcessor(PeopleUtils)
- (uint64_t)needsPeopleForRecord:()PeopleUtils;
- (uint64_t)shouldGeneratePeopleForRecord:()PeopleUtils;
@end

@implementation SKGProcessor(PeopleUtils)

- (uint64_t)needsPeopleForRecord:()PeopleUtils
{
  v3 = a3;
  if ([v3 count])
  {
    mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
    v5 = [mEMORY[0x277D65798] recordIsValid:v3];

    if (v5)
    {
      mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
      v7 = [mEMORY[0x277D65798]2 copyPeopleVersionFromRecord:v3];

      if (v7)
      {
        intValue = [v7 intValue];
        mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
        v5 = [mEMORY[0x277D657A0] knowledgeVersion] != intValue;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)shouldGeneratePeopleForRecord:()PeopleUtils
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  peopleExtractionAttributes = [mEMORY[0x277D657A0] peopleExtractionAttributes];

  v6 = [peopleExtractionAttributes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(peopleExtractionAttributes);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];

        if (v9)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [peopleExtractionAttributes countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

@end