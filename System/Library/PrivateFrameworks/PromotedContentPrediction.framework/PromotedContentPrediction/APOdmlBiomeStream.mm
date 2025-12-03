@interface APOdmlBiomeStream
- (APOdmlBiomeStream)initWithName:(id)name;
- (id)_applicationSupportDirectory;
- (id)publisher;
- (void)enumerateEvents:(id)events;
- (void)enumerateEvents:(id)events result:(id)result;
- (void)enumerateEventsWithDictionary:(id)dictionary;
- (void)filterEvents:(id)events result:(id)result;
- (void)filterEventsWithDictionary:(id)dictionary result:(id)result;
- (void)removeEvents:(id)events;
- (void)removeEventsWithDictionary:(id)dictionary;
- (void)writeEvent:(id)event;
@end

@implementation APOdmlBiomeStream

- (APOdmlBiomeStream)initWithName:(id)name
{
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = APOdmlBiomeStream;
  v6 = [(APOdmlBiomeStream *)&v27 init];
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend__applicationSupportDirectory(v6, v7, v8);
    v12 = objc_msgSend_stringByAppendingPathComponent_(v10, v11, @"odml_biome");

    v14 = objc_msgSend_newPrivateStreamDefaultConfigurationWithStoreBasePath_(MEMORY[0x277CF17F8], v13, v12);
    config = v9->_config;
    v9->_config = v14;

    objc_storeStrong(&v9->_streamName, name);
    v16 = objc_alloc(MEMORY[0x277CF1B30]);
    v19 = objc_msgSend_streamName(v9, v17, v18);
    v22 = objc_msgSend_config(v9, v20, v21);
    v24 = objc_msgSend_initWithPrivateStreamIdentifier_storeConfig_(v16, v23, v19, v22);
    stream = v9->_stream;
    v9->_stream = v24;
  }

  return v9;
}

- (void)enumerateEventsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_260ED157C;
  v7[3] = &unk_279AC6028;
  v8 = dictionaryCopy;
  v5 = dictionaryCopy;
  objc_msgSend_enumerateEvents_(self, v6, v7);
}

- (void)filterEventsWithDictionary:(id)dictionary result:(id)result
{
  dictionaryCopy = dictionary;
  resultCopy = result;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_260ED16E4;
  v13[3] = &unk_279AC6050;
  v14 = dictionaryCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_260ED1734;
  v11[3] = &unk_279AC6028;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = dictionaryCopy;
  objc_msgSend_filterEvents_result_(self, v10, v13, v11);
}

- (void)enumerateEvents:(id)events
{
  eventsCopy = events;
  v8 = objc_msgSend_publisher(self, v5, v6);
  objc_msgSend_enumerateEvents_result_(self, v7, v8, eventsCopy);
}

- (void)filterEvents:(id)events result:(id)result
{
  eventsCopy = events;
  resultCopy = result;
  v10 = objc_msgSend_publisher(self, v8, v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_260ED18EC;
  v15[3] = &unk_279AC6078;
  v16 = eventsCopy;
  v11 = eventsCopy;
  v13 = objc_msgSend_filterWithIsIncluded_(v10, v12, v15);

  objc_msgSend_enumerateEvents_result_(self, v14, v13, resultCopy);
}

- (void)removeEventsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_260ED19E4;
  v7[3] = &unk_279AC60C0;
  v8 = dictionaryCopy;
  v5 = dictionaryCopy;
  objc_msgSend_removeEvents_(self, v6, v7);
}

- (void)removeEvents:(id)events
{
  eventsCopy = events;
  v7 = objc_msgSend_stream(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_260ED1AF0;
  v10[3] = &unk_279AC60E8;
  v11 = eventsCopy;
  v8 = eventsCopy;
  objc_msgSend_pruneWithPredicateBlock_(v7, v9, v10);
}

- (void)writeEvent:(id)event
{
  eventCopy = event;
  v11 = objc_msgSend_stream(self, v5, v6);
  v9 = objc_msgSend_source(v11, v7, v8);
  objc_msgSend_sendEvent_(v9, v10, eventCopy);
}

- (void)enumerateEvents:(id)events result:(id)result
{
  eventsCopy = events;
  resultCopy = result;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_260ED1CF4;
  v14[3] = &unk_279AC6110;
  v14[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_260ED1E60;
  v11[3] = &unk_279AC6138;
  v8 = resultCopy;
  v12 = v8;
  v13 = v15;
  v10 = objc_msgSend_sinkWithCompletion_shouldContinue_(eventsCopy, v9, v14, v11);

  _Block_object_dispose(v15, 8);
}

- (id)publisher
{
  v6 = objc_msgSend_startDate(self, a2, v2);
  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = objc_msgSend_startDate(self, v4, v5);
    objc_msgSend_timeIntervalSinceReferenceDate(v8, v9, v10);
    v13 = objc_msgSend_numberWithDouble_(v7, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  v18 = objc_msgSend_endDate(self, v14, v15);
  if (v18)
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = objc_msgSend_endDate(self, v16, v17);
    objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22);
    v25 = objc_msgSend_numberWithDouble_(v19, v23, v24);
  }

  else
  {
    v25 = 0;
  }

  v28 = objc_msgSend_stream(self, v26, v27);
  v31 = objc_msgSend_maxEvents(self, v29, v30);
  v34 = objc_msgSend_reverse(self, v32, v33);
  v36 = objc_msgSend_publisherWithStartTime_endTime_maxEvents_lastN_reversed_(v28, v35, v13, v25, v31, 0, v34);

  return v36;
}

- (id)_applicationSupportDirectory
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
  v4 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v7 = objc_msgSend_lastObject(v4, v5, v6);

  v9 = objc_msgSend_stringByAppendingPathComponent_(v7, v8, @"com.apple.ap.promotedcontentd");
  v28 = 0;
  v11 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v3, v10, v9, 1, 0, &v28);
  v12 = v28;
  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v14 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v19 = objc_msgSend_code(v12, v17, v18);
      v22 = objc_msgSend_localizedFailureReason(v12, v20, v21);
      v25 = objc_msgSend_userInfo(v12, v23, v24);
      *buf = 138478851;
      v30 = v15;
      v31 = 2048;
      v32 = v19;
      v33 = 2113;
      v34 = v9;
      v35 = 2113;
      v36 = v22;
      v37 = 2113;
      v38 = v25;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%{private}@] Error %ld creating 'Application Support' subdirectory '%{private}@': %{private}@ %{private}@", buf, 0x34u);
    }

    v13 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

@end