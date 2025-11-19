@interface PGSocialGroupsQuestion
- (PGSocialGroupsQuestion)initWithSocialGroupID:(id)a3 personLocalIdentifiers:(id)a4 personNames:(id)a5 localFactoryScore:(double)a6;
@end

@implementation PGSocialGroupsQuestion

- (PGSocialGroupsQuestion)initWithSocialGroupID:(id)a3 personLocalIdentifiers:(id)a4 personNames:(id)a5 localFactoryScore:(double)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v29.receiver = self;
  v29.super_class = PGSocialGroupsQuestion;
  v12 = [(PGSocialGroupsQuestion *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, a3);
    v13->_localFactoryScore = a6;
    v13->_state = 0;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v11 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:{*(*(&v25 + 1) + 8 * v19), v25}];
            if (v20)
            {
              [v14 addObject:v20];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v17);
      }
    }

    v30 = @"personUUIDs";
    v31 = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:{1, v25}];
    additionalInfo = v13->_additionalInfo;
    v13->_additionalInfo = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

@end