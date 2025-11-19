@interface TSWPDataDetectors
+ (BOOL)detectedDataInString:(id)a3 scanRange:(_NSRange)a4 withTextCheckingTypes:(unint64_t)a5;
+ (id)calculateScanRanges:(id)a3 changedRange:(_NSRange)a4;
+ (id)scanString:(id)a3 scanRanges:(id)a4;
+ (void)registerDataDetectorClass:(Class)a3;
@end

@implementation TSWPDataDetectors

+ (void)registerDataDetectorClass:(Class)a3
{
  if (class_conformsToProtocol(a3, &unk_2886532A0))
  {
    v6 = qword_280A58460;
    if (!qword_280A58460)
    {
      v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
      v8 = qword_280A58460;
      qword_280A58460 = v7;

      v6 = qword_280A58460;
    }

    objc_msgSend_addObject_(v6, v4, a3);
  }
}

+ (id)calculateScanRanges:(id)a3 changedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = qword_280A58460;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v26, v30, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = objc_msgSend_calculateScanRangeForString_changedRange_(v16, v12, v6, location, length);
        v19 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v18, v17, v18);
        v22 = objc_msgSend_detectorIdentifier(v16, v20, v21);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v19, v22);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v26, v30, 16);
    }

    while (v13);
  }

  return v9;
}

+ (id)scanString:(id)a3 scanRanges:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = qword_280A58460;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = objc_msgSend_detectorIdentifier(v17, v12, v13);
        v20 = objc_msgSend_objectForKeyedSubscript_(v6, v19, v18);
        v23 = objc_msgSend_rangeValue(v20, v21, v22);
        if (v23 != 0x7FFFFFFFFFFFFFFFLL && v24 != 0)
        {
          v27 = objc_msgSend_scanString_scanRange_(v17, v24, v5, v23, v24);
          if (v27)
          {
            objc_msgSend_addObjectsFromArray_(v29, v26, v27);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v30, v34, 16);
    }

    while (v14);
  }

  return v29;
}

+ (BOOL)detectedDataInString:(id)a3 scanRange:(_NSRange)a4 withTextCheckingTypes:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = qword_280A58460;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v9);
        }

        if (objc_msgSend_detectedDataInString_scanRange_withTextCheckingTypes_(*(*(&v18 + 1) + 8 * i), v12, v8, location, length, a5, v18))
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v18, v22, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

@end