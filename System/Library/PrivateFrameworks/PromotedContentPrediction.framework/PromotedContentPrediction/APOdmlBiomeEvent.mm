@interface APOdmlBiomeEvent
+ (id)_customClassesForDataDict;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (APOdmlBiomeEvent)initWithDictionary:(id)dictionary andIdentifier:(id)identifier;
- (NSDictionary)dictionary;
- (NSUUID)identifier;
- (id)serialize;
@end

@implementation APOdmlBiomeEvent

- (APOdmlBiomeEvent)initWithDictionary:(id)dictionary andIdentifier:(id)identifier
{
  v26[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = APOdmlBiomeEvent;
  v10 = [(APOdmlBiomeEvent *)&v24 init];
  if (v10)
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
    outerDictionary = v10->_outerDictionary;
    v10->_outerDictionary = v11;

    v13 = v10->_outerDictionary;
    v16 = objc_msgSend_copy(dictionaryCopy, v14, v15);
    objc_msgSend_setObject_forKey_(v13, v17, v16, @"data");

    if (identifierCopy)
    {
      v19 = v10->_outerDictionary;
      v25 = @"identifier";
      v26[0] = identifierCopy;
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v26, &v25, 1);
      objc_msgSend_setValuesForKeysWithDictionary_(v19, v21, v20);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSDictionary)dictionary
{
  v3 = objc_msgSend_outerDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"data");

  return v5;
}

- (NSUUID)identifier
{
  v3 = objc_msgSend_outerDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"identifier");

  return v5;
}

+ (id)_customClassesForDataDict
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_setWithObject_, v3);
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = objc_msgSend_classesForDataDict(APOdmlTrainingSetBuilder, v6, v7);
  v11 = objc_msgSend__customClassesForDataDict(self, v9, v10);
  v13 = objc_msgSend_setByAddingObjectsFromSet_(v8, v12, v11);

  v32 = 0;
  v15 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v14, v13, dataCopy, &v32);

  v17 = v32;
  if (v15)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"data");
    if (v18)
    {
      v19 = objc_alloc(objc_opt_class());
      v21 = objc_msgSend_objectForKeyedSubscript_(v15, v20, @"identifier");
      v23 = objc_msgSend_initWithDictionary_andIdentifier_(v19, v22, v18, v21);
    }

    else
    {
      v21 = OdmlLogForCategory(0xCuLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_ERROR, "No data in deserialized dictionary:\n%@", buf, 0xCu);
      }

      v23 = 0;
    }
  }

  else
  {
    v18 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_msgSend_code(v17, v24, v25);
      v29 = objc_msgSend_localizedDescription(v17, v27, v28);
      *buf = 134218242;
      v34 = v26;
      v35 = 2112;
      v36 = v29;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "Error %ld unarchiving event data: %@", buf, 0x16u);
    }

    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)serialize
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAB0];
  v5 = objc_msgSend_outerDictionary(self, a2, v2);
  v22 = 0;
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v4, v6, v5, 1, &v22);
  v8 = v22;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_code(v8, v11, v12);
      v16 = objc_msgSend_localizedDescription(v8, v14, v15);
      v19 = objc_msgSend_outerDictionary(self, v17, v18);
      *buf = 134218498;
      v24 = v13;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "Error %ld encoding event data: %@\nData:\n%@", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

@end