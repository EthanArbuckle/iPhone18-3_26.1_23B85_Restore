@interface APOdmlVectorBuilder
- (APOdmlVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual;
- (BOOL)shouldDefer;
- (double)weightForEvents:(id)events;
- (id)adamIDForBundleID:(id)d;
- (id)eventsForLookbackPeriod:(double)period;
- (id)pullEvents;
- (id)retrieveFilteredEvents:(id)events;
- (id)retrieveVector:(id *)vector;
- (id)updateVector:(id)vector withVector:(id)withVector usingWeight:(double)weight;
- (void)addAppVector:(id)vector;
- (void)buildBundleIDtoAdamIDCache:(id)cache;
@end

@implementation APOdmlVectorBuilder

- (APOdmlVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual
{
  versionCopy = version;
  periodCopy = period;
  elementsCopy = elements;
  taskCopy = task;
  constantCopy = constant;
  durationCopy = duration;
  v46.receiver = self;
  v46.super_class = APOdmlVectorBuilder;
  v22 = [(APOdmlVectorBuilder *)&v46 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v22->_version, version);
  v24 = [APOdmlVector alloc];
  v26 = objc_msgSend_initWithVersion_andArray_(v24, v25, versionCopy, 0);
  vector = v23->_vector;
  v23->_vector = v26;

  v23->_vectorWeightTotal = 0.0;
  v28 = [APOdmlUnfairLock alloc];
  v30 = objc_msgSend_initWithOptions_(v28, v29, 1);
  setVectorAndWeightLock = v23->_setVectorAndWeightLock;
  v23->_setVectorAndWeightLock = v30;

  v34 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v32, v33);
  adamIDtoBundleID = v23->_adamIDtoBundleID;
  v23->_adamIDtoBundleID = v34;

  objc_storeStrong(&v23->_task, task);
  if (periodCopy)
  {
    objc_msgSend_doubleValue(periodCopy, v36, v37);
  }

  else
  {
    v38 = 0x4122750000000000;
  }

  *&v23->_lookbackPeriod = v38;
  v39 = elementsCopy ? objc_msgSend_longValue(elementsCopy, v36, v37) : 1000;
  v23->_maxQueryElements = v39;
  if (constantCopy)
  {
    objc_msgSend_doubleValue(constantCopy, v36, v37);
  }

  else
  {
    v40 = 0.0;
  }

  v23->_exponentialDecayConstant = v40;
  v41 = durationCopy ? objc_msgSend_BOOLValue(durationCopy, v36, v37) : 0;
  v23->_weightByDuration = v41;
  v23->_assetManagerIsCounterfactual = counterfactual;
  v42 = objc_msgSend_pullEvents(v23, v36, v37);
  events = v23->_events;
  v23->_events = v42;

  if (!v23->_events)
  {
    v44 = 0;
  }

  else
  {
LABEL_15:
    v44 = v23;
  }

  return v44;
}

- (void)addAppVector:(id)vector
{
  v67 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v7 = vectorCopy;
  if (vectorCopy)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = objc_msgSend_adamID(vectorCopy, v5, v6);
    v11 = objc_msgSend_numberWithUnsignedLongLong_(v8, v10, v9);
    v14 = objc_msgSend_adamIDtoBundleID(self, v12, v13);
    v16 = objc_msgSend_objectForKey_(v14, v15, v11);

    if (v16)
    {
      v17 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 138412290;
        v58 = objc_opt_class();
        v18 = v58;
        _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%@]: App vector found; updating.", &v57, 0xCu);
      }

      v20 = objc_msgSend_retrieveFilteredEvents_(self, v19, v16);
      if (objc_msgSend_count(v20, v21, v22))
      {
        objc_msgSend_weightForEvents_(self, v23, v20);
        v25 = v24;
        v28 = objc_msgSend_vector(self, v26, v27);
        v30 = objc_msgSend_updateVector_withVector_usingWeight_(self, v29, v28, v7, v25);

        v33 = objc_msgSend_setVectorAndWeightLock(self, v31, v32);
        objc_msgSend_lock(v33, v34, v35);

        objc_msgSend_setVector_(self, v36, v30);
        objc_msgSend_vectorWeightTotal(self, v37, v38);
        objc_msgSend_setVectorWeightTotal_(self, v40, v41, v25 + v39);
        v44 = objc_msgSend_setVectorAndWeightLock(self, v42, v43);
        objc_msgSend_unlock(v44, v45, v46);

        v47 = OdmlLogForCategory(2uLL);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = objc_opt_class();
          v49 = v48;
          v52 = objc_msgSend_count(v20, v50, v51);
          objc_msgSend_vectorWeightTotal(self, v53, v54);
          v57 = 138413314;
          v58 = v48;
          v59 = 2112;
          v60 = v16;
          v61 = 2048;
          v62 = v52;
          v63 = 2048;
          v64 = v25;
          v65 = 2048;
          v66 = v55;
          _os_log_impl(&dword_260ECB000, v47, OS_LOG_TYPE_DEFAULT, "[%@]: Vector updated for bundleID %@ with %lu events for a weight of %f. Vector weight total: %f", &v57, 0x34u);
        }
      }
    }

    goto LABEL_12;
  }

  v11 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v57 = 138412290;
    v58 = objc_opt_class();
    v16 = v58;
    _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] ERROR: We cannot update the vector with a nil vector.", &v57, 0xCu);
LABEL_12:
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (id)retrieveVector:(id *)vector
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 138412290;
    *&v38[4] = objc_opt_class();
    v6 = *&v38[4];
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Retrieving normalized app vectors.", v38, 0xCu);
  }

  v9 = objc_msgSend_vector(self, v7, v8);

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v23 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *v38 = 138412290;
      *&v38[4] = v24;
      v25 = v24;
      _os_log_impl(&dword_260ECB000, v23, OS_LOG_TYPE_ERROR, "[%@]: Vector is not found.", v38, 0xCu);
    }

    v27 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v26, @"APOdmlFeatureCalculatorErrorDomain", 1006, 0);
    v12 = v27;
    if (vector && v27)
    {
      v28 = v27;
      v22 = 0;
      *vector = v12;
      goto LABEL_18;
    }
  }

  objc_msgSend_vectorWeightTotal(self, v10, v11, *v38);
  if (v15 <= 0.0)
  {
    v16 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      *v38 = 138412290;
      *&v38[4] = v17;
      v18 = v17;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "[%@]: Vector weight total not greater than 0.", v38, 0xCu);
    }

    v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"APOdmlFeatureCalculatorErrorDomain", 1005, 0);

    if (vector && v20)
    {
      v21 = v20;
      v22 = 0;
      *vector = v20;
      v12 = v20;
      goto LABEL_18;
    }

    v12 = v20;
  }

  v29 = objc_msgSend_vector(self, v13, v14);
  objc_msgSend_vectorWeightTotal(self, v30, v31);
  v33 = 1.0 / v32;
  *&v33 = v33;
  v22 = objc_msgSend_scalarMultiply_(v29, v34, v35, v33);

LABEL_18:
  v36 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)retrieveFilteredEvents:(id)events
{
  v28 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = objc_msgSend_events(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKey_(v17, v13, @"bundleID");
        isEqualToString = objc_msgSend_isEqualToString_(v18, v19, eventsCopy);

        if (isEqualToString)
        {
          objc_msgSend_addObject_(v7, v13, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v23, v27, 16);
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)pullEvents
{
  v29 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldDefer(self, a2, v2))
  {
    v6 = 0;
  }

  else
  {
    objc_msgSend_lookbackPeriod(self, v4, v5);
    v6 = objc_msgSend_eventsForLookbackPeriod_(self, v7, v8);
    if (v6)
    {
      objc_msgSend_buildBundleIDtoAdamIDCache_(self, v9, v6);
      v10 = v6;
    }

    else
    {
      v11 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = objc_opt_class();
        v12 = v28;
        _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] ERROR: No usage events found.", &v27, 0xCu);
      }

      v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, @"APOdmlFeatureCalculatorErrorDomain", 1004, 0);
      v15 = MEMORY[0x277CBEAC0];
      v18 = objc_msgSend_eventName(self, v16, v17);
      v20 = objc_msgSend_dictionaryWithObject_forKey_(v15, v19, v18, @"featureName");

      IsCounterfactual = objc_msgSend_assetManagerIsCounterfactual(self, v21, v22);
      objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v24, v14, v20, IsCounterfactual);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventsForLookbackPeriod:(double)period
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3);
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v7, v8);
  objc_msgSend_timeIntervalSince1970(v9, v10, v11);
  v13 = v12;

  v17 = v13 - period;
  if (v13 >= v13 - period)
  {
    v18 = 0;
    *&v16 = 138412290;
    v36 = v16;
    do
    {
      if (v18 > objc_msgSend_maxQueryElements(self, v14, v15, v36))
      {
        break;
      }

      v20 = v13 + -43200.0;
      v21 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v14, v19, v13 + -43200.0);
      v24 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v22, v23, v13);
      v26 = objc_msgSend_eventsBetween_and_(self, v25, v21, v24);

      if (v26)
      {
        objc_msgSend_addObjectsFromArray_(v6, v27, v26);
        v18 += objc_msgSend_count(v26, v28, v29);
      }

      else
      {
        v30 = OdmlLogForCategory(2uLL);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          *buf = v36;
          v38 = v31;
          v32 = v31;
          _os_log_impl(&dword_260ECB000, v30, OS_LOG_TYPE_DEFAULT, "[%@] No events found in date range.", buf, 0xCu);
        }
      }

      v13 = v13 + -43200.0;
    }

    while (v20 >= v17);
  }

  v33 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v14, v6);

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (double)weightForEvents:(id)events
{
  v45 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = eventsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v44, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v41;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v19 = 1.0;
        if (objc_msgSend_weightByDuration(self, v11, v12, v40))
        {
          v20 = objc_msgSend_objectForKey_(v17, v18, @"duration");
          v23 = v20;
          if (v20)
          {
            objc_msgSend_doubleValue(v20, v21, v22);
            v19 = v24;
          }
        }

        v25 = objc_msgSend_objectForKey_(v17, v18, @"absoluteTimestamp");
        v26 = MEMORY[0x277CBEAA8];
        objc_msgSend_doubleValue(v25, v27, v28);
        v31 = objc_msgSend_dateWithTimeIntervalSince1970_(v26, v29, v30);
        objc_msgSend_timeIntervalSinceDate_(v7, v32, v31);
        v34 = v33;

        objc_msgSend_exponentialDecayConstant(self, v35, v36);
        v15 = v15 + v19 * exp(v34 / -86400.0 * v37);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v40, v44, 16);
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)updateVector:(id)vector withVector:(id)withVector usingWeight:(double)weight
{
  vectorCopy = vector;
  *&v8 = weight;
  v11 = objc_msgSend_scalarMultiply_(withVector, v9, v10, v8);
  if (objc_msgSend_length(vectorCopy, v12, v13))
  {
    v16 = objc_msgSend_vectorAdd_(vectorCopy, v14, v11);
  }

  else
  {
    v17 = objc_msgSend_version(vectorCopy, v14, v15);

    if (v17)
    {
      v20 = objc_msgSend_version(vectorCopy, v18, v19);
      objc_msgSend_setVersion_(v11, v21, v20);
    }

    v16 = v11;
  }

  v22 = v16;

  return v22;
}

- (void)buildBundleIDtoAdamIDCache:(id)cache
{
  v37 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = cacheCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v32, v36, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if (objc_msgSend_shouldDefer(self, v16, v17))
        {
          objc_autoreleasePoolPop(v15);

          goto LABEL_16;
        }

        v19 = objc_msgSend_objectForKey_(v14, v18, @"bundleID");
        v21 = objc_msgSend_objectForKey_(v7, v20, v19);

        if (!v21)
        {
          v23 = objc_msgSend_adamIDForBundleID_(self, v22, v19);
          v26 = v23;
          if (v23 && objc_msgSend_intValue(v23, v24, v25))
          {
            objc_msgSend_setObject_forKey_(v7, v27, v26, v19);
          }
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v28, &v32, v36, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_260EDE278;
  v31[3] = &unk_279AC62A0;
  v31[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v29, v31);
LABEL_16:

  v30 = *MEMORY[0x277D85DE8];
}

- (id)adamIDForBundleID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CC1E70]);
  v19 = 0;
  v7 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v5, v6, dCopy, 0, &v19);
  v10 = v7;
  if (v7)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_iTunesMetadata(v7, v8, v9);
    v15 = objc_msgSend_storeItemIdentifier(v12, v13, v14);
    v17 = objc_msgSend_numberWithUnsignedLongLong_(v11, v16, v15);
  }

  else
  {
    v17 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v17;
}

- (BOOL)shouldDefer
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_task(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_task(self, v4, v5);
    shouldDefer = objc_msgSend_shouldDefer(v7, v8, v9);

    if (shouldDefer)
    {
      v13 = objc_msgSend_task(self, v11, v12);
      LODWORD(v6) = objc_msgSend_deferTask(v13, v14, v15);

      v16 = OdmlLogForCategory(2uLL);
      v17 = v16;
      if (v6)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 138412290;
          v34 = objc_opt_class();
          v18 = v34;
          _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%@] We are no longer in an acceptable state to continue processing. Bailing out...", &v33, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v33 = 138412290;
          v34 = objc_opt_class();
          v19 = v34;
          _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, "[%@] Unable to successfully defer task.", &v33, 0xCu);
        }

        v17 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v20, @"APOdmlFeatureCalculatorErrorDomain", 1003, 0);
        v21 = MEMORY[0x277CBEAC0];
        v24 = objc_msgSend_eventName(self, v22, v23);
        v26 = objc_msgSend_dictionaryWithObject_forKey_(v21, v25, v24, @"featureName");

        IsCounterfactual = objc_msgSend_assetManagerIsCounterfactual(self, v27, v28);
        objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v30, v17, v26, IsCounterfactual);
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

@end