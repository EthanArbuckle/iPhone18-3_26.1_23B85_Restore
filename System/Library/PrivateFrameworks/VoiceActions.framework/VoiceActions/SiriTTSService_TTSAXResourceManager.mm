@interface SiriTTSService_TTSAXResourceManager
+ (id)sharedInstance;
- (SiriTTSService_TTSAXResourceManager)init;
- (id)allCompactResourcesForLanguage:(id)language;
@end

@implementation SiriTTSService_TTSAXResourceManager

- (id)allCompactResourcesForLanguage:(id)language
{
  v31 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  allCompactResources = self->_allCompactResources;
  if (allCompactResources)
  {
    v6 = allCompactResources;
  }

  else
  {
    selfCopy = self;
    v7 = [(TTSAXResourceManager *)self->_axManager resourcesWithType:4 subType:2];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if ([v14 isInstalled])
          {
            primaryLanguage = [v14 primaryLanguage];
            v16 = [primaryLanguage isEqualToString:languageCopy];

            if (v16)
            {
              v17 = objc_alloc_init(CompactVoice);
              primaryLanguage2 = [v14 primaryLanguage];
              [(CompactVoice *)v17 setLanguage:primaryLanguage2];

              name = [v14 name];
              [(CompactVoice *)v17 setName:name];

              contentPath = [v14 contentPath];
              [(CompactVoice *)v17 setPath:contentPath];

              [(NSArray *)v8 addObject:v17];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v21 = selfCopy->_allCompactResources;
    selfCopy->_allCompactResources = v8;
    v22 = v8;

    v6 = selfCopy->_allCompactResources;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

- (SiriTTSService_TTSAXResourceManager)init
{
  v6.receiver = self;
  v6.super_class = SiriTTSService_TTSAXResourceManager;
  v2 = [(SiriTTSService_TTSAXResourceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D703C8]);
    axManager = v2->_axManager;
    v2->_axManager = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_2808938A8 != -1)
  {
    dispatch_once(&qword_2808938A8, &unk_288190638);
  }

  v3 = qword_2808938A0;

  return v3;
}

@end