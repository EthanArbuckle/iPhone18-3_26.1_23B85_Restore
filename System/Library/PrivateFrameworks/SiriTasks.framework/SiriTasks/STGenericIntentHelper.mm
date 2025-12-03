@interface STGenericIntentHelper
+ (id)sharedHelper;
- (BOOL)_invokeHandlerForIntent:(id)intent;
- (STGenericIntentHelper)init;
- (void)_handleIntent:(id)intent withTask:(id)task andApplication:(id)application;
- (void)finishedLaunching:(BOOL)launching;
- (void)forIntent:(id)intent registerHandler:(id)handler;
- (void)forIntentParam:(id)param predict:(id)predict;
- (void)handleSiriTask:(id)task withApplication:(id)application;
@end

@implementation STGenericIntentHelper

- (BOOL)_invokeHandlerForIntent:(id)intent
{
  v21 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  handlers = self->_handlers;
  name = [intentCopy name];
  v7 = [(NSMutableDictionary *)handlers objectForKey:name];

  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__STGenericIntentHelper__invokeHandlerForIntent___block_invoke;
    v12[3] = &unk_279C52630;
    v14 = v7;
    v13 = intentCopy;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    v8 = *MEMORY[0x277CEF0F8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_ERROR))
    {
      v11 = self->_handlers;
      *buf = 136315650;
      v16 = "[STGenericIntentHelper _invokeHandlerForIntent:]";
      v17 = 2112;
      v18 = intentCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_269249000, v8, OS_LOG_TYPE_ERROR, "%s No handler registered for intent %@, registered handlers: %@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void __49__STGenericIntentHelper__invokeHandlerForIntent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__STGenericIntentHelper__invokeHandlerForIntent___block_invoke_2;
  block[3] = &unk_279C525B8;
  v5 = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __49__STGenericIntentHelper__invokeHandlerForIntent___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) finishedState];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 finished];
  }

  return result;
}

- (void)forIntent:(id)intent registerHandler:(id)handler
{
  intentCopy = intent;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__STGenericIntentHelper_forIntent_registerHandler___block_invoke;
  block[3] = &unk_279C52608;
  v12 = intentCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = intentCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __51__STGenericIntentHelper_forIntent_registerHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (void)forIntentParam:(id)param predict:(id)predict
{
  v5 = [MEMORY[0x277CBEB40] orderedSetWithArray:predict];
  v6 = dispatch_time(0, 10000000000);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__STGenericIntentHelper_forIntentParam_predict___block_invoke;
  block[3] = &unk_279C525B8;
  v10 = v5;
  v8 = v5;
  dispatch_after(v6, queue, block);
}

void __48__STGenericIntentHelper_forIntentParam_predict___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getINVocabularyUpdaterClass());
  [v2 setCustomPhotoAlbumNames:*(a1 + 32)];
}

- (void)_handleIntent:(id)intent withTask:(id)task andApplication:(id)application
{
  v96 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  taskCopy = task;
  applicationCopy = application;
  v11 = *MEMORY[0x277CEF0F8];
  v12 = os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_DEBUG);
  if (intentCopy)
  {
    selfCopy = self;
    v88 = taskCopy;
    v89 = applicationCopy;
    if (v12)
    {
      *buf = 136315394;
      v93 = "[STGenericIntentHelper _handleIntent:withTask:andApplication:]";
      v94 = 2112;
      v95 = intentCopy;
      _os_log_debug_impl(&dword_269249000, v11, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }

    info = [intentCopy info];
    v14 = [info objectForKeyedSubscript:@"address"];
    v15 = [v14 objectForKeyedSubscript:@"value"];

    info2 = [intentCopy info];
    v17 = [info2 objectForKeyedSubscript:@"photoTopic"];
    v18 = [v17 objectForKeyedSubscript:@"value"];

    info3 = [intentCopy info];
    v20 = [info3 objectForKeyedSubscript:@"photoAlbumName"];
    v21 = [v20 objectForKeyedSubscript:@"value"];

    info4 = [intentCopy info];
    v23 = [info4 objectForKeyedSubscript:@"photoContact"];
    v24 = [v23 objectForKeyedSubscript:@"value"];

    info5 = [intentCopy info];
    v26 = [info5 objectForKeyedSubscript:@"photoAttributes"];
    v27 = [v26 objectForKeyedSubscript:@"value"];
    v87 = [v27 objectForKeyedSubscript:@"semanticValue"];

    info6 = [intentCopy info];
    v29 = [info6 objectForKeyedSubscript:@"photoNoun"];
    v30 = [v29 objectForKeyedSubscript:@"value"];
    v90 = [v30 objectForKeyedSubscript:@"semanticValue"];

    if (v21)
    {
      v31 = objc_alloc_init(STGenericIntentGroup);
      v32 = [v21 objectForKeyedSubscript:@"inputValue"];
      v91 = v31;
      [(STGenericIntentGroup *)v31 setName:v32];
    }

    else
    {
      v91 = 0;
    }

    v82 = v24;
    if (!v24)
    {
      goto LABEL_11;
    }

    v33 = v24;
    v24 = objc_alloc_init(STGenericIntentPerson);
    v34 = [(STGenericIntentPerson *)v33 objectForKeyedSubscript:@"fullName"];
    [(STGenericIntentPerson *)v24 setName:v34];

    name = [(STGenericIntentPerson *)v24 name];
    v36 = [name length];

    if (!v36)
    {
      v39 = objc_alloc_init(MEMORY[0x277CCAC00]);
      v40 = [(STGenericIntentPerson *)v33 objectForKeyedSubscript:@"firstName"];
      [v39 setGivenName:v40];

      v41 = [(STGenericIntentPerson *)v33 objectForKeyedSubscript:@"lastName"];
      [v39 setFamilyName:v41];

      v42 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v39 style:2 options:0];
      [(STGenericIntentPerson *)v24 setName:v42];

      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_11:
      if (v18)
      {
LABEL_12:
        v37 = objc_alloc_init(STGenericIntentTopic);
        v38 = [v18 objectForKeyedSubscript:@"inputValue"];
        [(STGenericIntentTopic *)v37 setName:v38];

        goto LABEL_15;
      }
    }

    v37 = 0;
LABEL_15:
    v84 = v18;
    v85 = v15;
    if (!v15)
    {
      lowercaseString = 0;
      goto LABEL_30;
    }

    v43 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"regionType"];
    if ([v43 containsString:@"Address"])
    {
    }

    else
    {
      v45 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"regionType"];
      v46 = [v45 containsString:@"Street"];

      if (!v46)
      {
        v54 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"regionType"];
        v55 = [v54 containsString:@"State"];

        if (v55)
        {
          v56 = @"stateCode";
        }

        else
        {
          v57 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"regionType"];
          v58 = [v57 containsString:@"City"];

          if (v58)
          {
            v56 = @"city";
          }

          else
          {
            v59 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"regionType"];
            v60 = [v59 containsString:@"Country"];

            if (!v60)
            {
              v53 = 0;
              lowercaseString = 0;
              v50 = 0.0;
              v52 = 0.0;
              goto LABEL_29;
            }

            v56 = @"countryCode";
          }
        }

        v47 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:v56];
        lowercaseString = [v47 lowercaseString];
        v53 = 0;
        v50 = 0.0;
        v52 = 0.0;
LABEL_28:

LABEL_29:
        v15 = [[STGenericIntentLocation alloc] initWithName:lowercaseString latitude:v50 longitude:v52];
        [(STGenericIntentLocation *)v15 setIsLatLong:v53];
LABEL_30:
        v81 = lowercaseString;
        v83 = v21;
        info7 = [intentCopy info];
        v62 = [info7 objectForKeyedSubscript:@"photoDate"];
        v63 = [v62 objectForKeyedSubscript:@"value"];

        if (v63)
        {
          v64 = [v63 objectForKeyedSubscript:@"start"];
          v65 = [v63 objectForKeyedSubscript:@"end"];
          v66 = [v64 objectForKeyedSubscript:@"date"];
          v67 = [v65 objectForKeyedSubscript:@"date"];
          v68 = [[STGenericIntentDateRange alloc] initWithStartDate:v66 endDate:v67];
        }

        else
        {
          v68 = 0;
        }

        v69 = [[STGenericIntent alloc] initWithName:@"photosSearch"];
        utterance = [intentCopy utterance];
        [(STGenericIntent *)v69 setUtterance:utterance];

        taskCopy = v88;
        [(STGenericIntent *)v69 setSiriTask:v88];
        [(STGenericIntent *)v69 setIntentRequest:intentCopy];
        applicationCopy = v89;
        -[STGenericIntent setAppInForeground:](v69, "setAppInForeground:", [v89 applicationState] == 0);
        -[STGenericIntent setIsLaunch:](v69, "setIsLaunch:", [intentCopy isForegroundLaunch]);
        [(STGenericIntent *)v69 setAttributes:&stru_2879DBC30];
        if ([v90 containsString:@"videos"])
        {
          v71 = MEMORY[0x277CCACA8];
          attributes = [(STGenericIntent *)v69 attributes];
          v73 = [v71 stringWithFormat:@" %@ video", attributes];
          [(STGenericIntent *)v69 setAttributes:v73];

          applicationCopy = v89;
        }

        v74 = v87;
        if (![v87 length])
        {
          goto LABEL_41;
        }

        if ([v87 containsString:@"from_front_facing_camera"])
        {
          v75 = MEMORY[0x277CCACA8];
          attributes2 = [(STGenericIntent *)v69 attributes];
          [v75 stringWithFormat:@" %@ selfies", attributes2, v80];
        }

        else
        {
          if ([v87 isEqualToString:@"taken"])
          {
LABEL_41:
            if (v24)
            {
              [(STGenericIntent *)v69 addParam:@"byPeopleInPhoto" withValue:v24];
            }

            if (v15)
            {
              [(STGenericIntent *)v69 addParam:@"byPhotoLocation" withValue:v15];
            }

            if (v68)
            {
              [(STGenericIntent *)v69 addParam:@"byPhotoDateCreated" withValue:v68];
            }

            if (v91)
            {
              [(STGenericIntent *)v69 addParam:@"byPhotoAlbum" withValue:v91];
            }

            if (v37)
            {
              [(STGenericIntent *)v69 addParam:@"byPhotoTopic" withValue:v37];
            }

            [(STGenericIntentHelper *)selfCopy _invokeHandlerForIntent:v69];

            goto LABEL_52;
          }

          v77 = MEMORY[0x277CCACA8];
          attributes2 = [(STGenericIntent *)v69 attributes];
          [v77 stringWithFormat:@" %@ %@", attributes2, v87];
        }
        v78 = ;
        [(STGenericIntent *)v69 setAttributes:v78];

        taskCopy = v88;
        applicationCopy = v89;
        v74 = v87;
        goto LABEL_41;
      }
    }

    v47 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"latitude"];
    v48 = [(STGenericIntentLocation *)v15 objectForKeyedSubscript:@"longitude"];
    [v47 doubleValue];
    v50 = v49;
    [v48 doubleValue];
    v52 = v51;

    lowercaseString = 0;
    v53 = 1;
    goto LABEL_28;
  }

  if (v12)
  {
    *buf = 136315138;
    v93 = "[STGenericIntentHelper _handleIntent:withTask:andApplication:]";
    _os_log_debug_impl(&dword_269249000, v11, OS_LOG_TYPE_DEBUG, "%s nil intent, check to make sure you are linked against SiriTask", buf, 0xCu);
  }

LABEL_52:

  v79 = *MEMORY[0x277D85DE8];
}

- (void)handleSiriTask:(id)task withApplication:(id)application
{
  taskCopy = task;
  applicationCopy = application;
  v8 = taskCopy;
  request = [v8 request];
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__STGenericIntentHelper_handleSiriTask_withApplication___block_invoke;
  v14[3] = &unk_279C525E0;
  v14[4] = self;
  v15 = request;
  v16 = v8;
  v17 = applicationCopy;
  v11 = applicationCopy;
  v12 = v8;
  v13 = request;
  dispatch_async(queue, v14);
}

uint64_t __56__STGenericIntentHelper_handleSiriTask_withApplication___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0F8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[STGenericIntentHelper handleSiriTask:withApplication:]_block_invoke";
    _os_log_debug_impl(&dword_269249000, v2, OS_LOG_TYPE_DEBUG, "%s ", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) waitForIntentCompleteSemaphore];
  v4 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v3, v4);

  result = [*(a1 + 32) _handleIntent:*(a1 + 40) withTask:*(a1 + 48) andApplication:*(a1 + 56)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)finishedLaunching:(BOOL)launching
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__STGenericIntentHelper_finishedLaunching___block_invoke;
  block[3] = &unk_279C525B8;
  block[4] = self;
  if (finishedLaunching__onceToken != -1)
  {
    dispatch_once(&finishedLaunching__onceToken, block);
  }
}

void __43__STGenericIntentHelper_finishedLaunching___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__STGenericIntentHelper_finishedLaunching___block_invoke_2;
  block[3] = &unk_279C525B8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__STGenericIntentHelper_finishedLaunching___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) waitForIntentCompleteSemaphore];
  dispatch_semaphore_signal(v1);
}

- (STGenericIntentHelper)init
{
  v14.receiver = self;
  v14.super_class = STGenericIntentHelper;
  v2 = [(STGenericIntentHelper *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    handlers = v2->_handlers;
    v2->_handlers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.siri.GenericIntentHelper", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = dispatch_queue_create("com.apple.siri.GenericIntentResponse", v6);
    siriResponseQueue = v2->_siriResponseQueue;
    v2->_siriResponseQueue = v9;

    v11 = dispatch_semaphore_create(0);
    waitForIntentCompleteSemaphore = v2->_waitForIntentCompleteSemaphore;
    v2->_waitForIntentCompleteSemaphore = v11;

    AFLogInitIfNeeded();
  }

  return v2;
}

+ (id)sharedHelper
{
  if (sharedHelper_onceToken != -1)
  {
    dispatch_once(&sharedHelper_onceToken, &__block_literal_global_184);
  }

  v3 = sharedHelper_sHelper;

  return v3;
}

uint64_t __37__STGenericIntentHelper_sharedHelper__block_invoke()
{
  sharedHelper_sHelper = objc_alloc_init(STGenericIntentHelper);

  return MEMORY[0x2821F96F8]();
}

@end