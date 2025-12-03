@interface RDUserProfileImpl
- (RDUserProfileImpl)initWithLanguage:(id)language assetPath:(id)path;
- (id)getUserProfileData;
- (id)readUserProfileFromCache;
- (id)writeUserProfileToCache;
- (void)adaptUserProfileWithUserData:(id)data;
- (void)addPhraseToUserProfileWithIPAprons:(id)aprons wordTag:(id)tag phrase:(id)phrase pronsArray:(id)array;
- (void)addPhraseToUserProfileWithTemplateName:(id)name wordTag:(id)tag namesToProns:(id)prons;
- (void)addPhraseToUserProfileWithTemplateName:(id)name wordTag:(id)tag phrase:(id)phrase;
- (void)addWordsToUserProfileWithTemplateName:(id)name wordArrays:(id)arrays;
- (void)updateUserProfileWithPersonalData:(id)data;
- (void)writeUserProfileAsJson:(id)json;
@end

@implementation RDUserProfileImpl

- (void)adaptUserProfileWithUserData:(id)data
{
  contactsWords = [data contactsWords];
  [(RDUserProfileImpl *)self addWordsToUserProfileWithTemplateName:@"\\NT-contact" wordArrays:contactsWords];
}

- (void)addPhraseToUserProfileWithIPAprons:(id)aprons wordTag:(id)tag phrase:(id)phrase pronsArray:(id)array
{
  v10 = MEMORY[0x277CBEB18];
  arrayCopy = array;
  phraseCopy = phrase;
  tagCopy = tag;
  apronsCopy = aprons;
  array = [v10 array];
  v15 = objc_alloc(MEMORY[0x277D072A8]);
  v16 = [MEMORY[0x277CBEB98] setWithArray:arrayCopy];
  v17 = [v15 initWithOrthography:phraseCopy pronunciations:v16 tagName:tagCopy frequency:1];

  uTF8String = [phraseCopy UTF8String];
  v19 = [arrayCopy componentsJoinedByString:{@", "}];

  uTF8String2 = [v19 UTF8String];
  uTF8String3 = [tagCopy UTF8String];

  printf("Adding orthography %s with IPA %s, wordTag: %s, frequency: %lu", uTF8String, uTF8String2, uTF8String3, 1);
  [array addObject:v17];

  [(_EARUserProfile *)self->_userProfile addWordWithParts:array templateName:apronsCopy];
}

- (void)addPhraseToUserProfileWithTemplateName:(id)name wordTag:(id)tag phrase:(id)phrase
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  tagCopy = tag;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = phrase;
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
        array = [MEMORY[0x277CBEB18] array];
        v16 = objc_alloc(MEMORY[0x277D072A8]);
        v17 = [MEMORY[0x277CBEB98] set];
        v18 = [v16 initWithOrthography:v14 pronunciations:v17 tagName:tagCopy frequency:1000];

        [array addObject:v18];
        [(_EARUserProfile *)self->_userProfile addWordWithParts:array templateName:nameCopy];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addPhraseToUserProfileWithTemplateName:(id)name wordTag:(id)tag namesToProns:(id)prons
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  tagCopy = tag;
  pronsCopy = prons;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [pronsCopy allKeys];
  v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v11 = *v32;
    v12 = 0x277CBE000uLL;
    v28 = pronsCopy;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [pronsCopy objectForKeyedSubscript:v14];
        v16 = [v15 count];
        v17 = *(v12 + 2968);
        if (v16 <= 1)
        {
          v24 = [*(v12 + 2968) set];
        }

        else
        {
          [pronsCopy objectForKeyedSubscript:v14];
          v18 = v12;
          v19 = v11;
          v20 = tagCopy;
          selfCopy = self;
          v23 = v22 = nameCopy;
          v24 = [v17 setWithArray:v23];

          nameCopy = v22;
          self = selfCopy;
          tagCopy = v20;
          v11 = v19;
          v12 = v18;
          pronsCopy = v28;
        }

        array = [MEMORY[0x277CBEB18] array];
        v26 = [objc_alloc(MEMORY[0x277D072A8]) initWithOrthography:v14 pronunciations:v24 tagName:tagCopy frequency:1000];
        [array addObject:v26];

        [(_EARUserProfile *)self->_userProfile addWordWithParts:array templateName:nameCopy];
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addWordsToUserProfileWithTemplateName:(id)name wordArrays:(id)arrays
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = arrays;
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
        array = [MEMORY[0x277CBEB18] array];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_272375B18;
        v16[3] = &unk_279E40898;
        v17 = array;
        v13 = array;
        [v11 enumerateKeysAndObjectsUsingBlock:v16];
        [(_EARUserProfile *)self->_userProfile addWordWithParts:v13 templateName:nameCopy];

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
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v5 = v4;

  localizedDescription2 = [(NSString *)self->_language copy];
  v20 = 0;
  v7 = sub_272375E10(localizedDescription2, &v20);
  v8 = v20;
  if (v7)
  {
    getUserProfileData = [(RDUserProfileImpl *)self getUserProfileData];
    v10 = getUserProfileData;
    if (getUserProfileData)
    {
      v19 = v8;
      v11 = [getUserProfileData writeToFile:v7 options:1 error:&v19];
      v12 = v19;

      if (v11)
      {
        processInfo2 = [MEMORY[0x277CCAC38] processInfo];
        [processInfo2 systemUptime];
        v15 = v14 - v5;

        printf("Persisted user profile to path=%s in %.2fms\n", [v7 UTF8String], v15 * 1000.0);
        v16 = v7;
      }

      else
      {
        localizedDescription = [v12 localizedDescription];
        printf("Persisting user profile to disk failed with error=%s\n", [localizedDescription UTF8String]);

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

    localizedDescription2 = [v8 localizedDescription];
    printf("writeUpdatedUserProfileToCache: Error in getting profile path: %s", [localizedDescription2 UTF8String]);
    v16 = 0;
  }

  return v16;
}

- (id)getUserProfileData
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_language copy];
  dataProfile = [(RDUserProfileImpl *)self dataProfile];
  v5 = dataProfile;
  if (dataProfile)
  {
    v15[0] = @"data";
    v15[1] = @"version";
    v16[0] = dataProfile;
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
      localizedDescription = [v8 localizedDescription];
      printf("Serialization of user profile failed with error=%s\n", [localizedDescription UTF8String]);
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

- (void)writeUserProfileAsJson:(id)json
{
  v4 = MEMORY[0x277CCACA8];
  assetPath = self->_assetPath;
  jsonCopy = json;
  assetPath = [v4 stringWithFormat:@"%@/mini.json", assetPath];
  [(_EARUserProfile *)self->_userProfile writeOutUserDataToJson:jsonCopy withConfig:assetPath];
}

- (id)readUserProfileFromCache
{
  v2 = [(NSString *)self->_language copy];
  v12 = 0;
  v3 = sub_272375E10(v2, &v12);
  if (!v3)
  {
    localizedDescription = [v12 localizedDescription];
    printf("File path for SRC cache not found : %s", [localizedDescription UTF8String]);
LABEL_7:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:0 error:&v12];
  if (v4)
  {
    localizedDescription = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v12];

    if (localizedDescription)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        localizedDescription = localizedDescription;
        v4 = localizedDescription;
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  localizedDescription = [v12 localizedDescription];
  printf("No SpeechProfile cached for SRC : %s", [localizedDescription UTF8String]);
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

- (void)updateUserProfileWithPersonalData:(id)data
{
  dataCopy = data;
  NSLog(&cfstr_CreatingProfil.isa, self->_language);
  v5 = objc_autoreleasePoolPush();
  readUserProfileFromCache = [(RDUserProfileImpl *)self readUserProfileFromCache];
  if (readUserProfileFromCache)
  {
    puts("Re-using existing profile data");
    [(_EARUserProfile *)self->_userProfile readUserProfile:readUserProfileFromCache];
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
  v8 = dataCopy;
  v10 = v8;
  [RDUserData fetchUserDataWithLanguage:language keepGoing:v11 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (RDUserProfileImpl)initWithLanguage:(id)language assetPath:(id)path
{
  languageCopy = language;
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = RDUserProfileImpl;
  v8 = [(RDUserProfileImpl *)&v25 init];
  v9 = v8;
  if (v8)
  {
    [(RDUserProfileImpl *)v8 setLanguage:languageCopy];
    [(RDUserProfileImpl *)v9 setAssetPath:pathCopy];
    inactive = dispatch_workloop_create_inactive("RDMainWorkloop");
    dispatch_workloop_set_scheduler_priority();
    dispatch_set_qos_class_fallback();
    dispatch_activate(inactive);
    v11 = dispatch_queue_attr_make_initially_inactive(0);
    v12 = dispatch_queue_create("RDMainQueue", v11);

    dispatch_set_target_queue(v12, inactive);
    dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_activate(v12);
    v24 = pathCopy;
    gRDServerQueue = v9->gRDServerQueue;
    v9->gRDServerQueue = v12;
    v14 = v12;

    v15 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"mini.json"];
    v16 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"ncs"];
    v17 = [v16 stringByAppendingPathComponent:@"en_US_napg.json"];
    v18 = [v16 stringByAppendingPathComponent:@"vocdelta.voc"];
    v19 = [v16 stringByAppendingPathComponent:@"pg.voc"];
    v20 = [v16 stringByAppendingPathComponent:@"mrec.psh"];
    v21 = [objc_alloc(MEMORY[0x277D07290]) initWithConfiguration:v15 language:languageCopy overrides:0 sdapiOverrides:v17 emptyVoc:v18 pgVoc:v19 paramsetHolder:v20];
    userProfile = v9->_userProfile;
    v9->_userProfile = v21;

    pathCopy = v24;
  }

  return v9;
}

@end