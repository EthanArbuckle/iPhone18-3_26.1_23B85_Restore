@interface RDUserProfileImpl
- (RDUserProfileImpl)initWithLanguage:(id)a3 assetPath:(id)a4;
- (id)getUserProfileData;
- (id)readUserProfileFromCache;
- (id)writeUserProfileToCache;
- (void)adaptUserProfileWithUserData:(id)a3;
- (void)addPhraseToUserProfileWithIPAprons:(id)a3 wordTag:(id)a4 phrase:(id)a5 pronsArray:(id)a6;
- (void)addPhraseToUserProfileWithTemplateName:(id)a3 wordTag:(id)a4 namesToProns:(id)a5;
- (void)addPhraseToUserProfileWithTemplateName:(id)a3 wordTag:(id)a4 phrase:(id)a5;
- (void)addWordsToUserProfileWithTemplateName:(id)a3 wordArrays:(id)a4;
- (void)updateUserProfileWithPersonalData:(id)a3;
- (void)writeUserProfileAsJson:(id)a3;
@end

@implementation RDUserProfileImpl

- (void)adaptUserProfileWithUserData:(id)a3
{
  v4 = [a3 contactsWords];
  [(RDUserProfileImpl *)self addWordsToUserProfileWithTemplateName:@"\\NT-contact" wordArrays:v4];
}

- (void)addPhraseToUserProfileWithIPAprons:(id)a3 wordTag:(id)a4 phrase:(id)a5 pronsArray:(id)a6
{
  v10 = MEMORY[0x277CBEB18];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v22 = [v10 array];
  v15 = objc_alloc(MEMORY[0x277D072A8]);
  v16 = [MEMORY[0x277CBEB98] setWithArray:v11];
  v17 = [v15 initWithOrthography:v12 pronunciations:v16 tagName:v13 frequency:1];

  v18 = [v12 UTF8String];
  v19 = [v11 componentsJoinedByString:{@", "}];

  v20 = [v19 UTF8String];
  v21 = [v13 UTF8String];

  printf("Adding orthography %s with IPA %s, wordTag: %s, frequency: %lu", v18, v20, v21, 1);
  [v22 addObject:v17];

  [(_EARUserProfile *)self->_userProfile addWordWithParts:v22 templateName:v14];
}

- (void)addPhraseToUserProfileWithTemplateName:(id)a3 wordTag:(id)a4 phrase:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a5;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CBEB18] array];
        v16 = objc_alloc(MEMORY[0x277D072A8]);
        v17 = [MEMORY[0x277CBEB98] set];
        v18 = [v16 initWithOrthography:v14 pronunciations:v17 tagName:v9 frequency:1000];

        [v15 addObject:v18];
        [(_EARUserProfile *)self->_userProfile addWordWithParts:v15 templateName:v8];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addPhraseToUserProfileWithTemplateName:(id)a3 wordTag:(id)a4 namesToProns:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v10 allKeys];
  v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v11 = *v32;
    v12 = 0x277CBE000uLL;
    v28 = v10;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v10 objectForKeyedSubscript:v14];
        v16 = [v15 count];
        v17 = *(v12 + 2968);
        if (v16 <= 1)
        {
          v24 = [*(v12 + 2968) set];
        }

        else
        {
          [v10 objectForKeyedSubscript:v14];
          v18 = v12;
          v19 = v11;
          v20 = v9;
          v21 = self;
          v23 = v22 = v8;
          v24 = [v17 setWithArray:v23];

          v8 = v22;
          self = v21;
          v9 = v20;
          v11 = v19;
          v12 = v18;
          v10 = v28;
        }

        v25 = [MEMORY[0x277CBEB18] array];
        v26 = [objc_alloc(MEMORY[0x277D072A8]) initWithOrthography:v14 pronunciations:v24 tagName:v9 frequency:1000];
        [v25 addObject:v26];

        [(_EARUserProfile *)self->_userProfile addWordWithParts:v25 templateName:v8];
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addWordsToUserProfileWithTemplateName:(id)a3 wordArrays:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a4;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CBEB18] array];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_272375B18;
        v16[3] = &unk_279E40898;
        v17 = v12;
        v13 = v12;
        [v11 enumerateKeysAndObjectsUsingBlock:v16];
        [(_EARUserProfile *)self->_userProfile addWordWithParts:v13 templateName:v6];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)writeUserProfileToCache
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v3 systemUptime];
  v5 = v4;

  v6 = [(NSString *)self->_language copy];
  v20 = 0;
  v7 = sub_272375E10(v6, &v20);
  v8 = v20;
  if (v7)
  {
    v9 = [(RDUserProfileImpl *)self getUserProfileData];
    v10 = v9;
    if (v9)
    {
      v19 = v8;
      v11 = [v9 writeToFile:v7 options:1 error:&v19];
      v12 = v19;

      if (v11)
      {
        v13 = [MEMORY[0x277CCAC38] processInfo];
        [v13 systemUptime];
        v15 = v14 - v5;

        printf("Persisted user profile to path=%s in %.2fms\n", [v7 UTF8String], v15 * 1000.0);
        v16 = v7;
      }

      else
      {
        v17 = [v12 localizedDescription];
        printf("Persisting user profile to disk failed with error=%s\n", [v17 UTF8String]);

        v16 = 0;
      }

      v8 = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {

    v6 = [v8 localizedDescription];
    printf("writeUpdatedUserProfileToCache: Error in getting profile path: %s", [v6 UTF8String]);
    v16 = 0;
  }

  return v16;
}

- (id)getUserProfileData
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_language copy];
  v4 = [(RDUserProfileImpl *)self dataProfile];
  v5 = v4;
  if (v4)
  {
    v15[0] = @"data";
    v15[1] = @"version";
    v16[0] = v4;
    v16[1] = @"4.0";
    v15[2] = @"language";
    v16[2] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v14 = 0;
    v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v14];
    v8 = v14;
    v9 = v8;
    if (v7)
    {
      printf("Serialization of user profile done with size=%lu\n", [v7 length]);
      v10 = v7;
    }

    else
    {
      v11 = [v8 localizedDescription];
      printf("Serialization of user profile failed with error=%s\n", [v11 UTF8String]);
    }
  }

  else
  {

    printf("Empty data profile");
    v9 = 0;
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)writeUserProfileAsJson:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  assetPath = self->_assetPath;
  v6 = a3;
  v7 = [v4 stringWithFormat:@"%@/mini.json", assetPath];
  [(_EARUserProfile *)self->_userProfile writeOutUserDataToJson:v6 withConfig:v7];
}

- (id)readUserProfileFromCache
{
  v2 = [(NSString *)self->_language copy];
  v12 = 0;
  v3 = sub_272375E10(v2, &v12);
  if (!v3)
  {
    v5 = [v12 localizedDescription];
    printf("File path for SRC cache not found : %s", [v5 UTF8String]);
LABEL_7:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:0 error:&v12];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v12];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v5;
        v4 = v5;
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  v5 = [v12 localizedDescription];
  printf("No SpeechProfile cached for SRC : %s", [v5 UTF8String]);
LABEL_9:

  if (!v4)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v6 = [v4 valueForKey:@"language"];
  v7 = [v6 isEqual:v2];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 valueForKey:@"language"];
    printf("readUserProfileFromCache: Mismatch in speech profile language in content and filename, got %s instead of %s", [v8 UTF8String], objc_msgSend(v2, "UTF8String"));
  }

  v2 = [v4 valueForKey:@"version"];
  if (([v2 isEqual:@"4.0"] & 1) == 0)
  {
    printf("readUserProfileFromCache: Profile version on disk (%s) does not match the expected version (%s)", [v2 UTF8String], objc_msgSend(@"4.0", "UTF8String"));
    goto LABEL_16;
  }

  v9 = [v4 valueForKey:@"data"];
  v10 = v9;
  if (v9)
  {
    printf("Deserialization of user profile done with size=%lu\n", [v9 length]);
  }

LABEL_17:

  return v10;
}

- (void)updateUserProfileWithPersonalData:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_CreatingProfil.isa, self->_language);
  v5 = objc_autoreleasePoolPush();
  v6 = [(RDUserProfileImpl *)self readUserProfileFromCache];
  if (v6)
  {
    puts("Re-using existing profile data");
    [(_EARUserProfile *)self->_userProfile readUserProfile:v6];
  }

  else
  {
    puts("No existing cache found");
  }

  objc_autoreleasePoolPop(v5);
  objc_initWeak(&location, self);
  language = self->_language;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2723765BC;
  v11[3] = &unk_279E40820;
  objc_copyWeak(&v12, &location);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2723765F0;
  v9[3] = &unk_279E40870;
  v9[4] = self;
  v8 = v4;
  v10 = v8;
  [RDUserData fetchUserDataWithLanguage:language keepGoing:v11 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (RDUserProfileImpl)initWithLanguage:(id)a3 assetPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = RDUserProfileImpl;
  v8 = [(RDUserProfileImpl *)&v25 init];
  v9 = v8;
  if (v8)
  {
    [(RDUserProfileImpl *)v8 setLanguage:v6];
    [(RDUserProfileImpl *)v9 setAssetPath:v7];
    inactive = dispatch_workloop_create_inactive("RDMainWorkloop");
    dispatch_workloop_set_scheduler_priority();
    dispatch_set_qos_class_fallback();
    dispatch_activate(inactive);
    v11 = dispatch_queue_attr_make_initially_inactive(0);
    v12 = dispatch_queue_create("RDMainQueue", v11);

    dispatch_set_target_queue(v12, inactive);
    dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_activate(v12);
    v24 = v7;
    gRDServerQueue = v9->gRDServerQueue;
    v9->gRDServerQueue = v12;
    v14 = v12;

    v15 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"mini.json"];
    v16 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"ncs"];
    v17 = [v16 stringByAppendingPathComponent:@"en_US_napg.json"];
    v18 = [v16 stringByAppendingPathComponent:@"vocdelta.voc"];
    v19 = [v16 stringByAppendingPathComponent:@"pg.voc"];
    v20 = [v16 stringByAppendingPathComponent:@"mrec.psh"];
    v21 = [objc_alloc(MEMORY[0x277D07290]) initWithConfiguration:v15 language:v6 overrides:0 sdapiOverrides:v17 emptyVoc:v18 pgVoc:v19 paramsetHolder:v20];
    userProfile = v9->_userProfile;
    v9->_userProfile = v21;

    v7 = v24;
  }

  return v9;
}

@end