@interface APOdmlInstalledAppVectorBuilder
- (APOdmlInstalledAppVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual;
- (id)_installedStoreAppEnumerator;
- (id)eventsBetween:(id)between and:(id)and;
- (id)retrieveFilteredEvents:(id)events;
- (void)buildBundleIDtoAdamIDCache:(id)cache;
@end

@implementation APOdmlInstalledAppVectorBuilder

- (APOdmlInstalledAppVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual
{
  v16.receiver = self;
  v16.super_class = APOdmlInstalledAppVectorBuilder;
  v11 = [(APOdmlVectorBuilder *)&v16 initWithVersion:version lookbackPeriod:period maxQueryElements:elements task:task exponentialDecayConstant:constant weightByDuration:duration isCounterfactual:counterfactual];
  if (v11)
  {
    v12 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10);
    bundleIDtoAppInfo = v11->_bundleIDtoAppInfo;
    v11->_bundleIDtoAppInfo = v12;
  }

  return v11;
}

- (id)eventsBetween:(id)between and:(id)and
{
  v52 = *MEMORY[0x277D85DE8];
  betweenCopy = between;
  andCopy = and;
  v8 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7);
  context = objc_autoreleasePoolPush();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = objc_msgSend__installedStoreAppEnumerator(self, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v47, v51, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v48;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = objc_msgSend_bundleIdentifier(v19, v14, v15);

        if (v20)
        {
          v21 = objc_msgSend_iTunesMetadata(v19, v14, v15);
          v24 = objc_msgSend_storeItemIdentifier(v21, v22, v23);

          v25 = [APOdmlAppInfo alloc];
          v28 = objc_msgSend_bundleIdentifier(v19, v26, v27);
          v30 = objc_msgSend_initWithBundleID_adamID_(v25, v29, v28, v24);

          objc_msgSend_addObject_(v8, v31, v30);
          v34 = objc_msgSend_bundleIDtoAppInfo(self, v32, v33);
          v37 = objc_msgSend_bundleIdentifier(v19, v35, v36);
          objc_msgSend_setObject_forKeyedSubscript_(v34, v38, v30, v37);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v47, v51, 16);
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
  v41 = objc_msgSend_allObjects(v8, v39, v40);

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)buildBundleIDtoAdamIDCache:(id)cache
{
  v30 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(cacheCopy, v5, &v25, v29, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(cacheCopy);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = objc_msgSend_bundleID(v12, v7, v8);
        v16 = objc_msgSend_adamIDtoBundleID(self, v14, v15);
        v17 = MEMORY[0x277CCABB0];
        v20 = objc_msgSend_adamID(v12, v18, v19);
        v22 = objc_msgSend_numberWithUnsignedLongLong_(v17, v21, v20);
        objc_msgSend_setObject_forKeyedSubscript_(v16, v23, v13, v22);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(cacheCopy, v7, &v25, v29, 16);
    }

    while (v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)retrieveFilteredEvents:(id)events
{
  v34 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = objc_msgSend_bundleIDtoAppInfo(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, eventsCopy);

  if (v9)
  {
    v31 = v9;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, &v31, 1);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = objc_msgSend_events(self, v10, v11, 0);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v33, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v28;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = objc_msgSend_bundleID(v21, v16, v17);
          isEqualToString = objc_msgSend_isEqualToString_(v22, v23, eventsCopy);

          if (isEqualToString)
          {
            v32 = v21;
            v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v32, 1);

            goto LABEL_13;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v27, v33, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_installedStoreAppEnumerator
{
  v2 = objc_msgSend_enumeratorWithOptions_(MEMORY[0x277CC1E70], a2, 0);
  objc_msgSend_setFilter_(v2, v3, &unk_287367620);

  return v2;
}

@end