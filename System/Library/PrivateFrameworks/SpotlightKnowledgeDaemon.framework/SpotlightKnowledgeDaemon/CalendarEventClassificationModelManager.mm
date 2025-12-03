@interface CalendarEventClassificationModelManager
+ (id)sharedInstance;
- (BOOL)loadModel;
- (CalendarEventClassificationModelManager)init;
- (id)predictForReferenceItemId:(id)id withEmbedding:(id)embedding;
- (void)loadModel;
@end

@implementation CalendarEventClassificationModelManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CalendarEventClassificationModelManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __57__CalendarEventClassificationModelManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CalendarEventClassificationModelManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  v2 = sharedInstance_sharedInstance;
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v2)
  {
    if (CurrentLoggingLevel < 4)
    {
      return;
    }

    v4 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "Created shared CalendarEventClassifierModelManager instance.", v5, 2u);
    }
  }

  else
  {
    if (CurrentLoggingLevel < 2)
    {
      return;
    }

    v4 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__CalendarEventClassificationModelManager_sharedInstance__block_invoke_cold_1(v4);
    }
  }
}

- (CalendarEventClassificationModelManager)init
{
  v14.receiver = self;
  v14.super_class = CalendarEventClassificationModelManager;
  v2 = [(CalendarEventClassificationModelManager *)&v14 init];
  if (v2)
  {
    mEMORY[0x277D657E8] = [MEMORY[0x277D657E8] sharedResourcesManager];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [mEMORY[0x277D657E8] loadAllParametersForClient:@"SpotlightKnowledge" locale:currentLocale];

    mEMORY[0x277D657E8]2 = [MEMORY[0x277D657E8] sharedResourcesManager];
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"root"];
    v7 = [mEMORY[0x277D657E8]2 resourcesForClient:@"SpotlightKnowledge" locale:v6 options:&unk_2846E85B0];
    [(CalendarEventClassificationModelManager *)v2 setResources:v7];

    [(CalendarEventClassificationModelManager *)v2 setIsLoaded:0];
    v8 = dispatch_queue_create("com.apple.SpotlightKnowledge.CalendarClassificationModel", 0);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__CalendarEventClassificationModelManager_init__block_invoke;
    block[3] = &unk_27893CE68;
    v13 = v2;
    dispatch_sync(v10, block);
  }

  return v2;
}

- (BOOL)loadModel
{
  if (![(CalendarEventClassificationModelManager *)self isLoaded])
  {
    [(CalendarEventClassificationModelManager *)self setIsLoaded:0];
    resources = [(CalendarEventClassificationModelManager *)self resources];
    v20 = 0;
    v5 = [resources filePathArrayForKey:@"DocumentUnderstanding" didFailWithError:&v20];
    v6 = v20;

    if ([v5 count])
    {
      v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF CONTAINS[c] %@", @"ios"];
      v8 = [v5 filteredArrayUsingPredicate:v7];
      firstObject = [v8 firstObject];

      CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
      if (firstObject)
      {
        if (CurrentLoggingLevel >= 6)
        {
          v11 = SKGLogDocUnderstandingInit();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [CalendarEventClassificationModelManager loadModel];
          }
        }

        v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:firstObject];
        v19 = v6;
        v13 = [[CalendarEventClassificationModel alloc] initWithContentsOfURL:v12 error:&v19];
        v14 = v19;

        [(CalendarEventClassificationModelManager *)self setCalendarEventClassificationModel:v13];
        v15 = SKGLogGetCurrentLoggingLevel();
        if (v14)
        {
          if (v15 >= 2)
          {
            v16 = SKGLogDocUnderstandingInit();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [CalendarEventClassificationModelManager loadModel];
            }
          }

          v3 = 0;
        }

        else
        {
          if (v15 >= 6)
          {
            v17 = SKGLogDocUnderstandingInit();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              [(CalendarEventClassificationModelManager *)v17 loadModel];
            }
          }

          v3 = 1;
          [(CalendarEventClassificationModelManager *)self setIsLoaded:1];
        }

LABEL_29:

        v6 = v14;
        goto LABEL_30;
      }

      if (CurrentLoggingLevel >= 2)
      {
        v12 = SKGLogDocUnderstandingInit();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CalendarEventClassificationModelManager loadModel];
        }

        v3 = 0;
        v14 = v6;
        goto LABEL_29;
      }
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() < 2)
      {
        v3 = 0;
LABEL_31:

        return v3;
      }

      firstObject = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [CalendarEventClassificationModelManager loadModel];
      }
    }

    v3 = 0;
LABEL_30:

    goto LABEL_31;
  }

  return 1;
}

- (id)predictForReferenceItemId:(id)id withEmbedding:(id)embedding
{
  v76[2] = *MEMORY[0x277D85DE8];
  idCopy = id;
  embeddingCopy = embedding;
  if (self->_isLoaded || (queue = self->_queue, block[0] = MEMORY[0x277D85DD0], block[1] = 3221225472, block[2] = __83__CalendarEventClassificationModelManager_predictForReferenceItemId_withEmbedding___block_invoke, block[3] = &unk_27893CE68, block[4] = self, dispatch_sync(queue, block), self->_isLoaded))
  {
    v9 = embeddingCopy;
    v10 = v9;
    if (v9 && ([v9 format] == 1 || !objc_msgSend(v10, "format")) && (objc_msgSend(v10, "primaryEmbeddings"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v12))
    {
      primaryEmbeddings = [v10 primaryEmbeddings];
      firstObject = [primaryEmbeddings firstObject];

      if ([v10 format] == 1)
      {
        v15 = firstObject;
        v16 = [v15 length];
        v17 = v16 >> 1;
        firstObject = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * (v16 >> 1)];
        bytes = [v15 bytes];
        mutableBytes = [firstObject mutableBytes];
        if (v16 >= 2)
        {
          do
          {
            v20 = *bytes++;
            _H0 = v20;
            __asm { FCVT            S0, H0 }

            *mutableBytes++ = _S0;
            --v17;
          }

          while (v17);
        }
      }

      v27 = [firstObject length];
      v28 = v27 >> 2;
      bytes2 = [firstObject bytes];
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v27 >> 2];
      if (v27 >= 4)
      {
        do
        {
          v32 = *bytes2++;
          LODWORD(v31) = v32;
          v33 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
          [v30 addObject:v33];

          --v28;
        }

        while (v28);
      }
    }

    else
    {
      v30 = 0;
    }

    if ([v30 count])
    {
      v34 = objc_alloc(MEMORY[0x277CBFF48]);
      v76[0] = &unk_2846E7980;
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v30, "count")}];
      v76[1] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
      v71 = 0;
      v37 = [v34 initWithShape:v36 dataType:65568 error:&v71];
      v38 = v71;

      if (v38 || !v37)
      {
        if (SKGLogGetCurrentLoggingLevel() < 2)
        {
          v44 = 0;
LABEL_58:

LABEL_59:
          goto LABEL_60;
        }

        v45 = SKGLogDocUnderstandingInit();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [CalendarEventClassificationModelManager predictForReferenceItemId:withEmbedding:];
        }

        v44 = 0;
LABEL_57:

        goto LABEL_58;
      }

      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __83__CalendarEventClassificationModelManager_predictForReferenceItemId_withEmbedding___block_invoke_28;
      v69[3] = &unk_27893DAB0;
      v39 = v37;
      v70 = v39;
      [v30 enumerateObjectsUsingBlock:v69];
      v40 = [[CalendarEventClassificationModelInput alloc] initWithEmb:v39];
      calendarEventClassificationModel = self->_calendarEventClassificationModel;
      v68 = 0;
      v42 = [(CalendarEventClassificationModel *)calendarEventClassificationModel predictionFromFeatures:v40 error:&v68];
      v38 = v68;
      if (v38)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v43 = SKGLogDocUnderstandingInit();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [CalendarEventClassificationModelManager predictForReferenceItemId:withEmbedding:];
          }

LABEL_54:
        }
      }

      else
      {
        if (v42)
        {
          v46 = [v42 y];
          v47 = [v46 count];

          if (v47)
          {
            if (SKGLogGetCurrentLoggingLevel() >= 6)
            {
              v48 = SKGLogDocUnderstandingInit();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                [(CalendarEventClassificationModelManager *)idCopy predictForReferenceItemId:v42 withEmbedding:v48];
              }
            }

            v49 = [v42 y];
            v50 = [v49 objectAtIndexedSubscript:0];
            [v50 floatValue];
            v52 = v51;

            v53 = [v42 y];
            v54 = [v53 count];

            if (v54 < 2)
            {
              goto LABEL_64;
            }

            v67 = v40;
            v55 = 0;
            v56 = 1;
            do
            {
              v57 = [v42 y];
              v58 = [v57 objectAtIndexedSubscript:v56];
              [v58 floatValue];
              v60 = v59;

              if (v60 > v52)
              {
                v55 = v56;
                v52 = v60;
              }

              ++v56;
              v61 = [v42 y];
              v62 = [v61 count];
            }

            while (v56 < v62);
            v40 = v67;
            if (v55)
            {
              if (v55 == 1)
              {
                v74 = *MEMORY[0x277CC22B0];
                v63 = MEMORY[0x277CBEA60];
                v64 = &v74;
              }

              else
              {
                if (v55 != 2)
                {
                  v44 = MEMORY[0x277CBEBF8];
                  goto LABEL_56;
                }

                v73 = *MEMORY[0x277CC2298];
                v63 = MEMORY[0x277CBEA60];
                v64 = &v73;
              }
            }

            else
            {
LABEL_64:
              v75 = *MEMORY[0x277CC22A8];
              v63 = MEMORY[0x277CBEA60];
              v64 = &v75;
            }

            v44 = [v63 arrayWithObjects:v64 count:1];
LABEL_56:

            v45 = v70;
            goto LABEL_57;
          }
        }

        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v43 = SKGLogDocUnderstandingInit();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [CalendarEventClassificationModelManager predictForReferenceItemId:withEmbedding:];
          }

          goto LABEL_54;
        }
      }

      v44 = 0;
      goto LABEL_56;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v38 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [CalendarEventClassificationModelManager predictForReferenceItemId:withEmbedding:];
      }

      v44 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() < 2)
    {
      v44 = 0;
      goto LABEL_61;
    }

    v30 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CalendarEventClassificationModelManager predictForReferenceItemId:withEmbedding:];
    }
  }

  v44 = 0;
LABEL_60:

LABEL_61:
  v65 = *MEMORY[0x277D85DE8];

  return v44;
}

- (void)loadModel
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, v0, v1, "Calendar event classification model file not found. Error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictForReferenceItemId:withEmbedding:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, v0, v1, "Model loading failed while processing item with reference id %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictForReferenceItemId:withEmbedding:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "MLMultiArray creation failed. Skipping model prediction for item reference id %@. Error=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)predictForReferenceItemId:withEmbedding:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "Calendar event classification model prediction failed item reference id %@. Error=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)predictForReferenceItemId:(NSObject *)a3 withEmbedding:.cold.4(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 y];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_231B25000, a3, OS_LOG_TYPE_DEBUG, "Calendar event classification model prediction with item reference id %@ is %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictForReferenceItemId:withEmbedding:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, v0, v1, "Calendar event classification model prediction failed for item reference id %@. Output missing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictForReferenceItemId:withEmbedding:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_9(&dword_231B25000, v0, v1, "Missing embedding. Skipping model prediction for item reference id %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end