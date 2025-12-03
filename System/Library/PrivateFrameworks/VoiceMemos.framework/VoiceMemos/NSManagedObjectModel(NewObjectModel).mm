@interface NSManagedObjectModel(NewObjectModel)
+ (id)modelCandidatesForCloudRecordings;
+ (id)modelCompatibleWithStoreMetadata:()NewObjectModel forStoreURL:;
+ (id)mutableModelForModelFileName:()NewObjectModel;
+ (id)rc_currentObjectModel;
+ (id)rc_newObjectModel;
+ (id)rc_v10ObjectModel;
+ (id)rc_v11ObjectModel;
+ (id)rc_v12ObjectModel;
+ (id)rc_v13ObjectModel;
+ (id)rc_v14ObjectModel;
+ (id)rc_v6ObjectModel;
+ (id)rc_v7ObjectModel;
+ (id)rc_v7bObjectModel;
+ (id)rc_v8ObjectModel;
+ (id)rc_v9ObjectModel;
+ (uint64_t)updateAudioFutureAttribute:()NewObjectModel;
+ (void)rc_newObjectModel;
+ (void)updateAllowsCloudEncryptionAttributes:()NewObjectModel;
@end

@implementation NSManagedObjectModel(NewObjectModel)

+ (id)rc_newObjectModel
{
  rc_currentObjectModel = [self rc_currentObjectModel];
  if (!rc_currentObjectModel)
  {
    v2 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      +[(NSManagedObjectModel(NewObjectModel) *)v2];
    }
  }

  return rc_currentObjectModel;
}

+ (id)rc_currentObjectModel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"VoiceMemos" withExtension:@"momd"];

  v4 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v3];
  v5 = [v4 mutableCopy];

  [self updateAudioFutureAttribute:v5];
  [self updateAllowsCloudEncryptionAttributes:v5];

  return v5;
}

+ (id)rc_v14ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos14.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v13ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos13.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v12ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos12.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v11ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos11.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v10ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos10.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v9ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos9.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v8ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos8.mom"];
  [self updateAudioFutureAttribute:v2];
  [self updateAllowsCloudEncryptionAttributes:v2];

  return v2;
}

+ (id)rc_v7bObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos7b.mom"];
  [self updateAudioFutureAttribute:v2];

  return v2;
}

+ (id)rc_v7ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos7.mom"];
  [self updateAudioFutureAttribute:v2];

  return v2;
}

+ (id)rc_v6ObjectModel
{
  v2 = [self mutableModelForModelFileName:@"VoiceMemos6.mom"];
  [self updateAudioFutureAttribute:v2];

  return v2;
}

+ (uint64_t)updateAudioFutureAttribute:()NewObjectModel
{
  v12 = a3;
  if ([MEMORY[0x277CBE358] instancesRespondToSelector:sel_isFileBackedFuture])
  {
    entitiesByName = [v12 entitiesByName];
    v4 = [entitiesByName objectForKeyedSubscript:@"CloudRecording"];
    attributesByName = [v4 attributesByName];
    v6 = [attributesByName objectForKeyedSubscript:@"audioFuture"];

    if (([v6 isFileBackedFuture] & 1) == 0)
    {
      entitiesByName2 = [v12 entitiesByName];
      v8 = [entitiesByName2 objectForKeyedSubscript:@"CloudRecording"];
      attributesByName2 = [v8 attributesByName];
      v10 = [attributesByName2 objectForKeyedSubscript:@"audioFuture"];

      [v10 setIsFileBackedFuture:1];
    }
  }

  return MEMORY[0x2821F96F8]();
}

+ (void)updateAllowsCloudEncryptionAttributes:()NewObjectModel
{
  v20[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20[0] = @"encryptedAudioFuture";
  v20[1] = @"encryptedCustomLabel";
  v20[2] = @"encryptedDate";
  v20[3] = @"encryptedDuration";
  v20[4] = @"encryptedEvictionDate";
  v20[5] = @"encryptedSharedFlags";
  v20[6] = @"encryptedUniqueID";
  [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:7];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        entitiesByName = [v3 entitiesByName];
        v11 = [entitiesByName objectForKey:@"CloudRecording"];
        attributesByName = [v11 attributesByName];
        v13 = [attributesByName objectForKey:v9];
        [v13 setAllowsCloudEncryption:1];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)modelCompatibleWithStoreMetadata:()NewObjectModel forStoreURL:
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  modelCandidatesForCloudRecordings = [self modelCandidatesForCloudRecordings];
  v29 = v4;
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE2F0]];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = modelCandidatesForCloudRecordings;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v30 = *v36;
    v27 = @"Cloud";
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        entityVersionHashesByName = [v10 entityVersionHashesByName];
        v12 = [entityVersionHashesByName objectForKeyedSubscript:@"CloudRecording"];
        v13 = [v6 objectForKeyedSubscript:@"CloudRecording"];
        v14 = [v12 isEqual:v13];

        v15 = [v6 objectForKeyedSubscript:@"Folder"];
        v16 = [entityVersionHashesByName objectForKeyedSubscript:@"Folder"];
        if (v15 == v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = [v15 isEqual:v16];
        }

        if (v14 & v17) == 1 && ([v10 isConfiguration:v27 compatibleWithStoreMetadata:v29])
        {
          v24 = v10;

          goto LABEL_25;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = obj;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        if ([v23 isConfiguration:@"Cloud" compatibleWithStoreMetadata:v29])
        {
          v24 = v23;
          goto LABEL_25;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v24 = 0;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_25:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)mutableModelForModelFileName:()NewObjectModel
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:@"VoiceMemos" withExtension:@"momd"];

  v7 = [v6 URLByAppendingPathComponent:v4];

  v8 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v7];
  v9 = [v8 mutableCopy];

  return v9;
}

+ (id)modelCandidatesForCloudRecordings
{
  v15[10] = *MEMORY[0x277D85DE8];
  rc_v14ObjectModel = [self rc_v14ObjectModel];
  v15[0] = rc_v14ObjectModel;
  rc_v13ObjectModel = [self rc_v13ObjectModel];
  v15[1] = rc_v13ObjectModel;
  rc_v12ObjectModel = [self rc_v12ObjectModel];
  v15[2] = rc_v12ObjectModel;
  rc_v11ObjectModel = [self rc_v11ObjectModel];
  v15[3] = rc_v11ObjectModel;
  rc_v10ObjectModel = [self rc_v10ObjectModel];
  v15[4] = rc_v10ObjectModel;
  rc_v9ObjectModel = [self rc_v9ObjectModel];
  v15[5] = rc_v9ObjectModel;
  rc_v8ObjectModel = [self rc_v8ObjectModel];
  v15[6] = rc_v8ObjectModel;
  rc_v7bObjectModel = [self rc_v7bObjectModel];
  v15[7] = rc_v7bObjectModel;
  rc_v7ObjectModel = [self rc_v7ObjectModel];
  v15[8] = rc_v7ObjectModel;
  rc_v6ObjectModel = [self rc_v6ObjectModel];
  v15[9] = rc_v6ObjectModel;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)rc_newObjectModel
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[NSManagedObjectModel(NewObjectModel) rc_newObjectModel]";
  _os_log_fault_impl(&dword_272442000, log, OS_LOG_TYPE_FAULT, "%s -- ERROR: Attempt to load model into NSManagedObjectModel failed, possibly due to file handle exhaustion....", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end