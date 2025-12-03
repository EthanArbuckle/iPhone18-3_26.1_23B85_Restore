@interface APOdmlLogUtility
+ (id)printInSegments:(id)segments log:(id)log isPlugin:(BOOL)plugin;
+ (void)logModelInputWithAdamID:(id)d adamID:(id)iD;
+ (void)logTrainingRowFeatures:(id)features;
+ (void)logWithLoggerKey:(id)key message:(id)message category:(unint64_t)category;
+ (void)printDESRecordInSegments:(id)segments isPlugin:(BOOL)plugin rowID:(id)d;
+ (void)printDESRecordRowOrder:(id)order iterationNumber:(id)number;
@end

@implementation APOdmlLogUtility

+ (void)logWithLoggerKey:(id)key message:(id)message category:(unint64_t)category
{
  v26[3] = *MEMORY[0x277D85DE8];
  v26[0] = key;
  v25[0] = @"loggerKey";
  v25[1] = @"uniqueIdentifier";
  v7 = MEMORY[0x277CCAD78];
  messageCopy = message;
  keyCopy = key;
  v12 = objc_msgSend_UUID(v7, v10, v11);
  v15 = objc_msgSend_UUIDString(v12, v13, v14);
  v25[2] = @"message";
  v26[1] = v15;
  v26[2] = messageCopy;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v26, v25, 3);

  v18 = OdmlLogForCategory(category);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_msgSend_mlJSONString(v17, v19, v20);
    v23 = 138477827;
    v24 = v21;
    _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_DEFAULT, "%{private}@", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)logModelInputWithAdamID:(id)d adamID:(id)iD
{
  v29[3] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  v8 = objc_msgSend_mlDictionaryForJSON(d, v6, v7);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v12, iDCopy, @"adamID");
    v29[0] = @"adFeatures";
    v28[0] = @"loggerKey";
    v28[1] = @"uniqueIdentifier";
    v15 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v13, v14);
    v18 = objc_msgSend_UUIDString(v15, v16, v17);
    v28[2] = @"message";
    v29[1] = v18;
    v29[2] = v11;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v29, v28, 3);

    v21 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_msgSend_description(v20, v22, v23);
      v26 = 138477827;
      v27 = v24;
      _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_DEFAULT, "%{private}@", &v26, 0xCu);
    }
  }

  else
  {
    v20 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_260ECB000, v20, OS_LOG_TYPE_ERROR, "Model inputs: Cannot Parse the Inputs.", &v26, 2u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)logTrainingRowFeatures:(id)features
{
  v33 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = objc_msgSend_features(featuresCopy, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v28, v32, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
        v17 = objc_msgSend_rowID(featuresCopy, v15, v16);
        objc_msgSend_setValue_forKey_(v14, v18, v17, @"trainingRowID");

        v21 = objc_msgSend_features(featuresCopy, v19, v20);
        v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v13);
        objc_msgSend_setValue_forKey_(v14, v24, v23, v13);

        objc_msgSend_logWithLoggerKey_message_category_(APOdmlLogUtility, v25, @"TrainingRowFeatures", v14, 11);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v28, v32, 16);
    }

    while (v10);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)printDESRecordRowOrder:(id)order iterationNumber:(id)number
{
  orderCopy = order;
  numberCopy = number;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7);
  if (objc_msgSend_count(orderCopy, v9, v10))
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"index_%lu", v12);
      v15 = objc_msgSend_objectAtIndexedSubscript_(orderCopy, v14, v12);
      v18 = objc_msgSend_rowID(v15, v16, v17);
      objc_msgSend_setValue_forKey_(v8, v19, v18, v13);

      ++v12;
    }

    while (v12 < objc_msgSend_count(orderCopy, v20, v21));
  }

  objc_msgSend_setValue_forKey_(v8, v11, numberCopy, @"IterationNumber");
  objc_msgSend_logWithLoggerKey_message_category_(APOdmlLogUtility, v22, @"RowOrder", v8, 11);
}

+ (void)printDESRecordInSegments:(id)segments isPlugin:(BOOL)plugin rowID:(id)d
{
  pluginCopy = plugin;
  v45 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  dCopy = d;
  if (!dCopy)
  {
    v9 = OdmlLogForCategory(9uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v36 = objc_opt_class();
      v10 = v36;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@]: Generating random DES record ID for logging presave.", buf, 0xCu);
    }

    v13 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v11, v12);
    dCopy = objc_msgSend_UUIDString(v13, v14, v15);
  }

  v32 = segmentsCopy;
  v34 = objc_msgSend_mlJSONStringWithPrettyPrint_(segmentsCopy, v8, 0);
  v18 = objc_msgSend_length(v34, v16, v17);
  v21 = 0;
  if (pluginCopy)
  {
    v22 = 11;
  }

  else
  {
    v22 = 9;
  }

  v23 = v18 / 5;
  do
  {
    v24 = v21 * v23;
    v25 = v23;
    if (v21 == 4)
    {
      v25 = objc_msgSend_length(v34, v19, v20) - v24;
    }

    v26 = OdmlLogForCategory(v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      ++v21;
      v28 = v27;
      v30 = objc_msgSend_substringWithRange_(v34, v29, v24, v25);
      *buf = 138478851;
      v36 = v27;
      v37 = 2113;
      v38 = dCopy;
      v39 = 2049;
      v40 = v21;
      v41 = 2049;
      v42 = 5;
      v43 = 2113;
      v44 = v30;
      _os_log_impl(&dword_260ECB000, v26, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Unarchived DES Record Dictionary %{private}@ (%{private}lu of %{private}lu): %{private}@", buf, 0x34u);
    }

    else
    {
      ++v21;
    }
  }

  while (v21 != 5);

  v31 = *MEMORY[0x277D85DE8];
}

+ (id)printInSegments:(id)segments log:(id)log isPlugin:(BOOL)plugin
{
  pluginCopy = plugin;
  v59 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  logCopy = log;
  v8 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_length(logCopy, v9, v10);
  v13 = objc_msgSend_numberWithUnsignedInteger_(v8, v12, v11);
  objc_msgSend_floatValue(v13, v14, v15);
  v19 = objc_msgSend_numberWithDouble_(v8, v17, v18, ceilf(v16 / 30000.0));

  objc_msgSend_floatValue(v19, v20, v21);
  if (v24 < 1.0)
  {

    v19 = &unk_28736F218;
  }

  v44 = v19;
  v25 = objc_msgSend_unsignedIntegerValue(v19, v22, v23);
  v28 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v26, v27);
  v45 = objc_msgSend_UUIDString(v28, v29, v30);

  if (v25)
  {
    v33 = 0;
    if (pluginCopy)
    {
      v34 = 11;
    }

    else
    {
      v34 = 9;
    }

    do
    {
      v35 = 30000 * v33;
      v36 = 30000;
      if (v33 == v25 - 1)
      {
        v36 = objc_msgSend_length(logCopy, v31, v32) - v35;
      }

      v37 = OdmlLogForCategory(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        ++v33;
        v39 = v38;
        v41 = objc_msgSend_substringWithRange_(logCopy, v40, v35, v36);
        *buf = 138479107;
        v48 = v38;
        v49 = 2112;
        v50 = segmentsCopy;
        v51 = 2113;
        v52 = v45;
        v53 = 2049;
        v54 = v33;
        v55 = 2049;
        v56 = v25;
        v57 = 2113;
        v58 = v41;
        _os_log_impl(&dword_260ECB000, v37, OS_LOG_TYPE_DEFAULT, "[%{private}@]: %@ %{private}@ (%{private}lu of %{private}lu): %{private}@", buf, 0x3Eu);
      }

      else
      {
        ++v33;
      }
    }

    while (v33 != v25);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v45;
}

@end