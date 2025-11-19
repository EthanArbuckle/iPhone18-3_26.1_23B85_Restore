@interface APOdmlAppDownloadVectorBuilder
- (double)weightForEvents:(id)a3;
- (id)eventsBetween:(id)a3 and:(id)a4;
@end

@implementation APOdmlAppDownloadVectorBuilder

- (id)eventsBetween:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(APOdmlBiomeSQLQuery);
  v9 = objc_msgSend_query_startDate_endDate_(v7, v8, @"App.Install", v6, v5);

  return v9;
}

- (double)weightForEvents:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v31, v35, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v32;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_objectForKey_(*(*(&v31 + 1) + 8 * i), v11, @"absoluteTimestamp", v31);
        v17 = MEMORY[0x277CBEAA8];
        objc_msgSend_doubleValue(v16, v18, v19);
        v22 = objc_msgSend_dateWithTimeIntervalSince1970_(v17, v20, v21);
        objc_msgSend_timeIntervalSinceDate_(v7, v23, v22);
        v25 = v24;

        objc_msgSend_exponentialDecayConstant(self, v26, v27);
        v14 = v14 + exp(v25 / -86400.0 * v28);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v31, v35, 16);
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

@end