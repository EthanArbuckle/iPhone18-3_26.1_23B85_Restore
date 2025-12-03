@interface TSDImageProviderPool
+ (Class)p_providerClassForData:(id)data;
+ (TSDImageProviderPool)sharedPool;
- (BOOL)isBitmapData:(id)data;
- (TSDImageProviderPool)init;
- (id)p_providerForData:(id)data temporary:(BOOL)temporary shouldValidate:(BOOL)validate;
- (unint64_t)p_estimatedSizeOfAllProviders;
- (unint64_t)p_imageProviderMemoryThreshold;
- (unint64_t)p_removeProvidersWithZeroInterest;
- (void)addInterestInProviderForData:(id)data;
- (void)dealloc;
- (void)flushImageProviders;
- (void)flushProvidersToFreeMemoryIfNecessaryExcludingProvider:(id)provider;
- (void)p_applicationDidEnterBackground:(id)background;
- (void)p_clearCacheForDataUniqueIdentifier:(id)identifier flags:(unint64_t)flags;
- (void)p_didReceiveMemoryWarning:(id)warning;
- (void)p_flushProvidersWithNoOneActivelyHoldingAReference;
- (void)p_flushRandomImageProvidersExcludingProvider:(id)provider;
- (void)p_freeFileDescriptorsWithProviderCount:(unint64_t)count;
- (void)p_updateFileDescriptorLimit;
- (void)removeInterestInProviderForData:(id)data;
- (void)willCloseDocumentContext:(id)context;
@end

@implementation TSDImageProviderPool

+ (TSDImageProviderPool)sharedPool
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766A0C00;
  block[3] = &unk_27A6CC4B8;
  block[4] = self;
  if (qword_280A4C238 != -1)
  {
    dispatch_once(&qword_280A4C238, block);
  }

  v2 = qword_280A4C230;

  return v2;
}

- (TSDImageProviderPool)init
{
  v24.receiver = self;
  v24.super_class = TSDImageProviderPool;
  v2 = [(TSDImageProviderPool *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAB00]);
    v5 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v3, v4, 5, 0, 0);
    mImageDataUniqueIdentifierToImageProviderMap = v2->mImageDataUniqueIdentifierToImageProviderMap;
    v2->mImageDataUniqueIdentifierToImageProviderMap = v5;

    objc_msgSend_p_updateFileDescriptorLimit(v2, v7, v8);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10);
    v12 = *MEMORY[0x277D76670];
    v15 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v13, v14);
    objc_msgSend_addObserver_selector_name_object_(v11, v16, v2, sel_p_didReceiveMemoryWarning_, v12, v15);

    v17 = *MEMORY[0x277D76660];
    v20 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v18, v19);
    objc_msgSend_addObserver_selector_name_object_(v11, v21, v2, sel_p_applicationDidEnterBackground_, v17, v20);

    objc_msgSend_addCullingListener_(MEMORY[0x277D80828], v22, v2);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_removeCullingListener_(MEMORY[0x277D80828], a2, self);
  v3.receiver = self;
  v3.super_class = TSDImageProviderPool;
  [(TSDImageProviderPool *)&v3 dealloc];
}

- (BOOL)isBitmapData:(id)data
{
  dataCopy = data;
  v6 = objc_msgSend_type(dataCopy, v4, v5);
  v8 = objc_msgSend_tsu_conformsToUTI_(v6, v7, *MEMORY[0x277D81480]);

  if (v8)
  {
    isSubclassOfClass = 0;
  }

  else
  {
    v10 = objc_opt_class();
    v12 = objc_msgSend_p_providerClassForData_(v10, v11, dataCopy);
    v13 = objc_opt_class();
    isSubclassOfClass = objc_msgSend_isSubclassOfClass_(v12, v14, v13);
  }

  return isSubclassOfClass;
}

+ (Class)p_providerClassForData:(id)data
{
  dataCopy = data;
  v6 = objc_msgSend_null(MEMORY[0x277D80828], v4, v5);

  if (v6 == dataCopy)
  {
LABEL_13:
    if (qword_280A4CEC8 != -1)
    {
      sub_276808618();
    }

    v19 = 0;
    goto LABEL_16;
  }

  v9 = objc_msgSend_type(dataCopy, v7, v8);
  if (objc_msgSend_tsu_conformsToUTI_(v9, v10, *MEMORY[0x277D81480]))
  {
    if (qword_280A4CEC8 != -1)
    {
      sub_276808604();
    }

    goto LABEL_13;
  }

  if (objc_msgSend_tsu_conformsToUTI_(v9, v11, *MEMORY[0x277D81470]) || (objc_msgSend_identifier(*MEMORY[0x277CE1DB0], v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_tsu_conformsToUTI_(v9, v15, v14), v14, v16) || (objc_msgSend_identifier(*MEMORY[0x277CE1E08], v17, v18), v22 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend_tsu_conformsToUTI_(v9, v23, v22), v22, v24))
  {
    v19 = objc_opt_class();
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2766A11F8;
    v30[3] = &unk_27A6CCA98;
    v30[4] = &v31;
    v30[5] = &v35;
    objc_msgSend_performInputStreamReadWithAccessor_(dataCopy, v25, v30);
    if (*(v32 + 24) == 1 && (v35 == 1178882085 ? (v28 = v36 == 45) : (v28 = 0), v28))
    {
      v19 = objc_opt_class();
    }

    else
    {
      v29 = objc_msgSend_newCGImage(dataCopy, v26, v27);
      if (v29)
      {
        v19 = objc_opt_class();
        CGImageRelease(v29);
      }

      else
      {
        v19 = 0;
      }
    }

    _Block_object_dispose(&v31, 8);
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  if (qword_280A4CEC8 != -1)
  {
    sub_2768085DC();
  }

LABEL_16:
  v20 = v19;

  return v19;
}

- (id)p_providerForData:(id)data temporary:(BOOL)temporary shouldValidate:(BOOL)validate
{
  validateCopy = validate;
  dataCopy = data;
  v11 = dataCopy;
  if (!dataCopy || (objc_msgSend_needsDownload(dataCopy, v9, v10) & 1) != 0)
  {
    if (objc_msgSend_needsDownload(v11, v9, v10))
    {
      if (qword_280A4CEC8 == -1)
      {
        mOpenFileDescriptorLimit = 0;
        v15 = 0;
LABEL_23:
        if (qword_280A4CEC8 != -1)
        {
          sub_276808668();
        }

        v22 = objc_msgSend_sharedInstance(TSDErrorImageProvider, v12, v13);
        goto LABEL_26;
      }

      sub_276808654();
    }

    mOpenFileDescriptorLimit = 0;
    v15 = 0;
    goto LABEL_23;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mImageDataUniqueIdentifierToImageProviderMap = selfCopy->mImageDataUniqueIdentifierToImageProviderMap;
  mOpenFileDescriptorLimit = selfCopy->mOpenFileDescriptorLimit;
  v20 = objc_msgSend_uniqueIdentifier(v11, v18, v19);
  v22 = objc_msgSend_objectForKeyedSubscript_(mImageDataUniqueIdentifierToImageProviderMap, v21, v20);

  if (!v22)
  {
    objc_sync_exit(selfCopy);

    v25 = selfCopy;
    objc_sync_enter(v25);
    v26 = selfCopy->mImageDataUniqueIdentifierToImageProviderMap;
    v29 = objc_msgSend_uniqueIdentifier(v11, v27, v28);
    v22 = objc_msgSend_objectForKeyedSubscript_(v26, v30, v29);

    if (v22)
    {
LABEL_11:
      v15 = objc_msgSend_count(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v31, v32);
      goto LABEL_12;
    }

    v33 = objc_opt_class();
    v35 = objc_msgSend_p_providerClassForData_(v33, v34, v11);
    if (v35)
    {
      v36 = [v35 alloc];
      v22 = objc_msgSend_initWithImageData_(v36, v37, v11);
      if (v22)
      {
        if (!temporary)
        {
          v38 = selfCopy->mImageDataUniqueIdentifierToImageProviderMap;
          v39 = objc_msgSend_uniqueIdentifier(v11, v31, v32);
          objc_msgSend_setObject_forKeyedSubscript_(v38, v40, v22, v39);
        }

        goto LABEL_11;
      }

      v15 = 0;
    }

    else
    {
      v15 = 0;
      v22 = 0;
    }

LABEL_12:
    objc_sync_exit(v25);

    if (v22)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (qword_280A4CEC8 != -1)
  {
    sub_276808640();
  }

  v15 = objc_msgSend_count(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v23, v24);
  objc_sync_exit(selfCopy);

LABEL_26:
  if (validateCopy && (objc_msgSend_isError(v22, v12, v13) & 1) == 0 && (objc_msgSend_isValid(v22, v12, v13) & 1) == 0)
  {
    if (qword_280A4CEC8 != -1)
    {
      sub_27680867C();
    }

    v41 = objc_msgSend_sharedInstance(TSDErrorImageProvider, v12, v13);

    v22 = v41;
  }

  if (objc_msgSend_isError(v22, v12, v13) && qword_280A4CEC8 != -1)
  {
    sub_276808690();
  }

  if (v15 > objc_msgSend_p_providerLimitForFileDescriptorLimit_(self, v42, mOpenFileDescriptorLimit))
  {
    objc_msgSend_p_freeFileDescriptorsWithProviderCount_(self, v43, v15);
  }

  return v22;
}

- (void)addInterestInProviderForData:(id)data
{
  if (data)
  {
    v13 = objc_msgSend_providerForData_shouldValidate_(self, a2, data, 0);
    objc_msgSend_addInterest(v13, v3, v4);
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageProviderPool addInterestInProviderForData:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProviderPool.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 267, 0, "invalid nil value for '%{public}s'", "imageData");

    v12 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v12, v10, v11);
  }
}

- (void)removeInterestInProviderForData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    mImageDataUniqueIdentifierToImageProviderMap = selfCopy->mImageDataUniqueIdentifierToImageProviderMap;
    v9 = objc_msgSend_uniqueIdentifier(dataCopy, v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(mImageDataUniqueIdentifierToImageProviderMap, v10, v9);

    objc_msgSend_removeInterest(v11, v12, v13);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDImageProviderPool removeInterestInProviderForData:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProviderPool.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 275, 0, "invalid nil value for '%{public}s'", "imageData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }
}

- (void)willCloseDocumentContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v6, v7);
  v10 = 0;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v46, 16);
  if (v13)
  {
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = objc_msgSend_imageData(v16, v11, v12);
        v20 = v17;
        if (v17)
        {
          v22 = objc_msgSend_context(v17, v18, v19);
          if (v22 == contextCopy)
          {
            if (!v10)
            {
              v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            objc_msgSend_addObject_(v10, v21, v16);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v41, v46, 16);
    }

    while (v13);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = v10;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v37, v45, 16);
  if (v27)
  {
    v28 = *v38;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_imageData(*(*(&v37 + 1) + 8 * j), v25, v26, v37);
        v33 = v30;
        if (v30)
        {
          mImageDataUniqueIdentifierToImageProviderMap = selfCopy->mImageDataUniqueIdentifierToImageProviderMap;
          v35 = objc_msgSend_uniqueIdentifier(v30, v31, v32);
          objc_msgSend_removeObjectForKey_(mImageDataUniqueIdentifierToImageProviderMap, v36, v35);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v37, v45, 16);
    }

    while (v27);
  }

  objc_sync_exit(selfCopy);
}

- (void)p_flushRandomImageProvidersExcludingProvider:(id)provider
{
  v21 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v6, v7, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (v15 != providerCopy && objc_msgSend_p_rngSaysToFlush(selfCopy, v10, v11))
        {
          if (qword_280A4CEC8 != -1)
          {
            sub_2768086A4();
          }

          objc_msgSend_flush(v15, v10, v11);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v16, v20, 16);
    }

    while (v12);
  }

  objc_sync_exit(selfCopy);
}

- (void)flushImageProviders
{
  v20 = *MEMORY[0x277D85DE8];
  if (qword_280A4CEC8 != -1)
  {
    sub_2768086CC();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v4, v5, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_flush(*(*(&v15 + 1) + 8 * i), v8, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v15, v19, 16);
    }

    while (v10);
  }

  objc_msgSend_removeAllObjects(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v13, v14);
  objc_sync_exit(selfCopy);
}

- (void)p_clearCacheForDataUniqueIdentifier:(id)identifier flags:(unint64_t)flags
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v6, identifierCopy);
  if (v8)
  {
    objc_msgSend_removeObjectForKey_(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v7, identifierCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)p_freeFileDescriptorsWithProviderCount:(unint64_t)count
{
  v76 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  objc_msgSend_p_updateFileDescriptorLimit(selfCopy, v5, v6);
  v10 = objc_msgSend_p_providerLimitForFileDescriptorLimit_(selfCopy, v7, selfCopy->mOpenFileDescriptorLimit);
  if (v10 < count)
  {
    if (qword_280A4CEC0 != -1)
    {
      sub_2768086E0();
    }

    count -= objc_msgSend_p_removeProvidersWithZeroInterest(selfCopy, v8, v9);
    if (qword_280A4CEC0 != -1)
    {
      sub_2768086F4();
    }
  }

  if (count > v10)
  {
    if (selfCopy->mHaveRaisedFileDescriptorLimit)
    {
      if (qword_280A4CEC0 != -1)
      {
        sub_276808758();
      }
    }

    else if (selfCopy->mOpenFileDescriptorLimit > 0x7FF)
    {
      if (qword_280A4CEC0 != -1)
      {
        sub_276808708();
      }
    }

    else
    {
      if (qword_280A4CEC0 != -1)
      {
        sub_27680871C();
      }

      if (selfCopy->mOpenFileDescriptorLimit <= 0x7FF)
      {
        v11 = 2048;
        do
        {
          v73.rlim_cur = 0;
          v73.rlim_max = 0;
          if (getrlimit(8, &v73) || v73.rlim_cur >= v11)
          {
            break;
          }

          v73.rlim_cur = 2048;
          if (setrlimit(8, &v73))
          {
            v11 -= 256;
          }

          else
          {
            rlim_cur = v73.rlim_cur;
            selfCopy->mOpenFileDescriptorLimit = v73.rlim_cur;
            v10 = objc_msgSend_p_providerLimitForFileDescriptorLimit_(selfCopy, v12, rlim_cur);
          }
        }

        while (selfCopy->mOpenFileDescriptorLimit < v11);
      }

      selfCopy->mHaveRaisedFileDescriptorLimit = 1;
      if (qword_280A4CEC0 != -1)
      {
        sub_276808730();
      }
    }
  }

  if (count > v10)
  {
    if (qword_280A4CEC0 != -1)
    {
      sub_27680876C();
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v17 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v15, v16);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v69, v75, 16);
    if (v19)
    {
      v22 = count - ((3 * v10) >> 2);
      v63 = *v70;
      v60 = v22;
      v61 = v17;
      do
      {
        v64 = v19;
        for (i = 0; i != v64; ++i)
        {
          if (*v70 != v63)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v69 + 1) + 8 * i);
          v27 = objc_msgSend_count(v14, v20, v21);
          if (v27 >= v22)
          {
            v28 = objc_msgSend_interest(v24, v25, v26);
            if (v27)
            {
              v29 = v28;
              v30 = 0;
              v31 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                objc_opt_class();
                v33 = objc_msgSend_objectAtIndexedSubscript_(v14, v32, v30);
                v34 = TSUDynamicCast();

                if (objc_msgSend_interest(v34, v35, v36) > v29)
                {
                  v29 = objc_msgSend_interest(v34, v37, v38);
                  v31 = v30;
                }

                ++v30;
              }

              while (v27 != v30);
              v22 = v60;
              v17 = v61;
              if (v31 != 0x7FFFFFFFFFFFFFFFLL)
              {
                objc_msgSend_replaceObjectAtIndex_withObject_(v14, v20, v31, v24);
              }
            }
          }

          else
          {
            objc_msgSend_addObject_(v14, v25, v24);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v69, v75, 16);
      }

      while (v19);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v39 = v14;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v65, v74, 16);
    if (v43)
    {
      v44 = *v66;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v66 != v44)
          {
            objc_enumerationMutation(v39);
          }

          v46 = objc_msgSend_imageData(*(*(&v65 + 1) + 8 * j), v41, v42);
          v49 = v46;
          if (v46)
          {
            mImageDataUniqueIdentifierToImageProviderMap = obj->mImageDataUniqueIdentifierToImageProviderMap;
            v51 = objc_msgSend_uniqueIdentifier(v46, v47, v48);
            objc_msgSend_removeObjectForKey_(mImageDataUniqueIdentifierToImageProviderMap, v52, v51);
          }

          else
          {
            v53 = MEMORY[0x277D81150];
            v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSDImageProviderPool p_freeFileDescriptorsWithProviderCount:]");
            v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProviderPool.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 459, 0, "invalid nil value for '%{public}s'", "imageData");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
          }
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v65, v74, 16);
      }

      while (v43);
    }
  }

  objc_sync_exit(obj);
}

- (unint64_t)p_imageProviderMemoryThreshold
{
  v3 = objc_msgSend_currentCapabilities(TSDCapabilities, a2, v2);
  objc_msgSend_isRendererH5OrBelow(v3, v4, v5);

  return 0x4000000;
}

- (unint64_t)p_estimatedSizeOfAllProviders
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v3, v4, 0);
  v7 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v7 += objc_msgSend_i_flushableMemoryEstimate(*(*(&v14 + 1) + 8 * v12++), v8, v9);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v14, v18, 16);
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)flushProvidersToFreeMemoryIfNecessaryExcludingProvider:(id)provider
{
  providerCopy = provider;
  v6 = objc_msgSend_p_estimatedSizeOfAllProviders(self, v4, v5);
  if (v6 > objc_msgSend_p_imageProviderMemoryThreshold(self, v7, v8))
  {
    objc_msgSend_p_flushRandomImageProvidersExcludingProvider_(self, v9, providerCopy);
  }
}

- (void)p_didReceiveMemoryWarning:(id)warning
{
  objc_msgSend_p_removeProvidersWithZeroInterest(self, a2, warning);

  MEMORY[0x2821F9670](self, sel_p_flushProvidersWithNoOneActivelyHoldingAReference, v4);
}

- (void)p_applicationDidEnterBackground:(id)background
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766A2940;
  block[3] = &unk_27A6CC658;
  block[4] = self;
  dispatch_async(v4, block);
}

- (unint64_t)p_removeProvidersWithZeroInterest
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v3, v4);
  v7 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v36, v41, 16);
  if (v10)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_interest(v13, v8, v9) <= 0)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          objc_msgSend_addObject_(v7, v8, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v36, v41, 16);
    }

    while (v10);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v7;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v32, v40, 16);
  if (v18)
  {
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_imageData(*(*(&v32 + 1) + 8 * j), v16, v17, v32);
        v24 = v21;
        if (v21)
        {
          mImageDataUniqueIdentifierToImageProviderMap = selfCopy->mImageDataUniqueIdentifierToImageProviderMap;
          v26 = objc_msgSend_uniqueIdentifier(v21, v22, v23);
          objc_msgSend_removeObjectForKey_(mImageDataUniqueIdentifierToImageProviderMap, v27, v26);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v32, v40, 16);
    }

    while (v18);
  }

  v30 = objc_msgSend_count(v14, v28, v29);
  objc_sync_exit(selfCopy);

  return v30;
}

- (void)p_flushProvidersWithNoOneActivelyHoldingAReference
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = objc_msgSend_objectEnumerator(selfCopy->mImageDataUniqueIdentifierToImageProviderMap, v3, v4, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_i_flushIfNoOneUsing(*(*(&v12 + 1) + 8 * v11++), v7, v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
}

- (void)p_updateFileDescriptorLimit
{
  v13.rlim_cur = 0;
  v13.rlim_max = 0;
  if (getrlimit(8, &v13))
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDImageProviderPool p_updateFileDescriptorLimit]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageProviderPool.m");
    v8 = __error();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v7, 563, 0, "Failed to get fd limit: getrlimit set errno to %d. Assuming limit of 256.", *v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    rlim_cur = 256;
  }

  else
  {
    rlim_cur = v13.rlim_cur;
  }

  self->mOpenFileDescriptorLimit = rlim_cur;
}

@end