@interface APOdmlSLPResponseParser
+ (BOOL)isValidResponse:(id)a3;
+ (id)convertArrayToFeatureValue:(id)a3;
+ (id)convertStringToFeatureValue:(id)a3;
+ (id)convertToFeatureValue:(id)a3;
+ (id)parseFeature:(id)a3 withTopLevelKey:(id)a4 forKey:(id)a5;
+ (id)parseFeatureDictionaryForFeatureValues:(id)a3;
+ (id)parseResponseForFeatureValues:(id)a3;
@end

@implementation APOdmlSLPResponseParser

+ (BOOL)isValidResponse:(id)a3
{
  v3 = objc_msgSend_objectForKey_(a3, a2, @"odmlEnabled");

  return v3 != 0;
}

+ (id)parseResponseForFeatureValues:(id)a3
{
  v4 = objc_msgSend_objectForKey_(a3, a2, @"features");
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_count(v4, v5, v6))
  {
    v8 = objc_msgSend_parseFeatureDictionaryForFeatureValues_(a1, v7, v4);
    if (objc_msgSend_count(v8, v9, v10))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)parseFeatureDictionaryForFeatureValues:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = v4;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v46, v56, 16);
  if (v45)
  {
    v10 = *v47;
    v11 = @"value";
    v43 = v7;
    v44 = *v47;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v16 = objc_msgSend_objectForKey_(v8, v15, v13);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v19 = objc_msgSend_objectForKey_(v8, v18, v13);
          v21 = objc_msgSend_parseFeature_withTopLevelKey_forKey_(a1, v20, v19, v13, v11);

          objc_msgSend_addEntriesFromDictionary_(v7, v22, v21);
        }

        else
        {
          v21 = OdmlLogForCategory(5uLL);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = v23;
            objc_msgSend_objectForKey_(v8, v25, v13);
            v26 = v11;
            v27 = v8;
            v29 = v28 = a1;
            *buf = 138412802;
            v51 = v23;
            v52 = 2112;
            v53 = v29;
            v54 = 2112;
            v55 = v13;
            _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_ERROR, "[%@] Failed to parse feature %@ with key %@", buf, 0x20u);

            a1 = v28;
            v8 = v27;
            v11 = v26;

            v7 = v43;
            v10 = v44;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v30, &v46, v56, 16);
    }

    while (v45);
  }

  v31 = OdmlLogForCategory(5uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    v33 = v32;
    objc_msgSend_mlJSONString(v7, v34, v35);
    v37 = v36 = v8;
    *buf = 138412546;
    v51 = v32;
    v52 = 2112;
    v53 = v37;
    _os_log_impl(&dword_260ECB000, v31, OS_LOG_TYPE_DEFAULT, "[%@] Successfully parsed feature dictionary: %@", buf, 0x16u);

    v8 = v36;
  }

  v40 = objc_msgSend_copy(v7, v38, v39);
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)parseFeature:(id)a3 withTopLevelKey:(id)a4 forKey:(id)a5
{
  v47[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend_objectForKey_(v8, v11, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v10;
    v40 = v8;
    v14 = objc_msgSend_stringByAppendingString_(v9, v13, @"_");

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v12;
    v18 = v12;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v41, v45, 16);
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v41 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          v27 = objc_msgSend_stringByAppendingString_(v14, v26, v24);
          v29 = objc_msgSend_parseFeature_withTopLevelKey_forKey_(a1, v28, v18, v27, v24);
          objc_msgSend_addEntriesFromDictionary_(v17, v30, v29);

          objc_autoreleasePoolPop(v25);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v31, &v41, v45, 16);
      }

      while (v21);
    }

    v34 = objc_msgSend_copy(v17, v32, v33);
    v10 = v39;
    v8 = v40;
    v12 = v38;
  }

  else
  {
    v46 = v9;
    v17 = objc_msgSend_convertToFeatureValue_(a1, v13, v12);
    v47[0] = v17;
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v47, &v46, 1);
    v14 = v9;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)convertToFeatureValue:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_convertStringToFeatureValue_(a1, v5, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_convertArrayToFeatureValue_(a1, v7, v4);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x277CBFEF8];
        objc_msgSend_doubleValue(v4, v8, v9);
        v6 = objc_msgSend_featureValueWithDouble_(v10, v11, v12);
      }

      else
      {
        v13 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412546;
          v20 = objc_opt_class();
          v21 = 2112;
          v22 = v4;
          v14 = v20;
          _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Failed to convert the following to an MLFeatureValue: %@", &v19, 0x16u);
        }

        v6 = objc_msgSend_undefinedFeatureValueWithType_(MEMORY[0x277CBFEF8], v15, 2);
      }
    }
  }

  v16 = v6;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)convertStringToFeatureValue:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_containsOnlyDecimalCharacters(v3, v4, v5);
  v9 = MEMORY[0x277CBFEF8];
  if (v6)
  {
    objc_msgSend_doubleValue(v3, v7, v8);
    v11 = v10;

    v14 = objc_msgSend_featureValueWithDouble_(v9, v12, v13, v11);
  }

  else
  {
    v14 = objc_msgSend_featureValueWithString_(MEMORY[0x277CBFEF8], v7, v3);
  }

  return v14;
}

+ (id)convertArrayToFeatureValue:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v8 = objc_msgSend_firstObject(v3, v6, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_firstObject(v3, v9, v10);
      v14 = objc_msgSend_containsOnlyDecimalCharacters(v11, v12, v13);

      if ((v14 & 1) == 0)
      {
        v17 = MEMORY[0x277CBFEF8];
        v18 = objc_msgSend_sequenceWithStringArray_(MEMORY[0x277CBFF78], v15, v3);
        v20 = objc_msgSend_featureValueWithSequence_(v17, v19, v18);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
    if (objc_msgSend_count(v3, v26, v27))
    {
      v30 = 0;
      do
      {
        v31 = MEMORY[0x277CCABB0];
        v32 = objc_msgSend_objectAtIndexedSubscript_(v3, v28, v30);
        objc_msgSend_doubleValue(v32, v33, v34);
        v37 = objc_msgSend_numberWithDouble_(v31, v35, v36);
        objc_msgSend_addObject_(v18, v38, v37);

        ++v30;
      }

      while (v30 < objc_msgSend_count(v3, v39, v40));
    }

    v41 = MEMORY[0x277CBFEF8];
    v42 = MEMORY[0x277CBFF48];
    v43 = objc_msgSend_copy(v18, v28, v29);
    v45 = objc_msgSend_multiarrayFromArray_(v42, v44, v43);
    v20 = objc_msgSend_featureValueWithMultiArray_(v41, v46, v45);
  }

  else
  {
    v21 = MEMORY[0x277CBFEF8];
    v22 = MEMORY[0x277CBFF48];
    v18 = objc_msgSend_array(MEMORY[0x277CBEA60], v6, v7);
    v24 = objc_msgSend_multiarrayFromArray_(v22, v23, v18);
    v20 = objc_msgSend_featureValueWithMultiArray_(v21, v25, v24);
  }

LABEL_11:

  return v20;
}

@end