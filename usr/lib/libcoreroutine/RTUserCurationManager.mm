@interface RTUserCurationManager
+ (id)vendedClasses;
- (RTUserCurationManager)initWithUserCurationStore:(id)store;
- (void)_addUserCuration:(id)curation handler:(id)handler;
- (void)_fetchStoredUserCurationsWithOptions:(id)options handler:(id)handler;
- (void)addUserCuration:(id)curation handler:(id)handler;
- (void)createAndStoreCurationWithEntryDate:(id)date exitDate:(id)exitDate curatedLabel:(id)label handler:(id)handler;
- (void)createAndStoreCurationWithEntryDate:(id)date exitDate:(id)exitDate visitIdentifier:(id)identifier originalLabel:(id)label curatedLabel:(id)curatedLabel handler:(id)handler;
- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler;
- (void)fetchStoredUserCurationsWithOptions:(id)options handler:(id)handler;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)purgeUserCurationsPredating:(id)predating handler:(id)handler;
@end

@implementation RTUserCurationManager

- (RTUserCurationManager)initWithUserCurationStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    v11.receiver = self;
    v11.super_class = RTUserCurationManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_userCurationStore, store);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userCurationStore", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)createAndStoreCurationWithEntryDate:(id)date exitDate:(id)exitDate curatedLabel:(id)label handler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  exitDateCopy = exitDate;
  labelCopy = label;
  handlerCopy = handler;
  if (dateCopy)
  {
    if (exitDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:curatedLabel:handler:]";
      v35 = 1024;
      v36 = 53;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entryDate (in %s:%d)", buf, 0x12u);
    }

    if (exitDateCopy)
    {
LABEL_3:
      if (labelCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:curatedLabel:handler:]";
    v35 = 1024;
    v36 = 54;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: exitDate (in %s:%d)", buf, 0x12u);
  }

  if (labelCopy)
  {
LABEL_4:
    if (handlerCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:curatedLabel:handler:]";
    v35 = 1024;
    v36 = 55;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curatedLabel (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_15:
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:curatedLabel:handler:]";
      v35 = 1024;
      v36 = 56;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  date = [MEMORY[0x277CBEAA8] date];
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:date sinceDate:2419200.0];
  v21 = objc_alloc(MEMORY[0x277D01410]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v23 = [v21 initWithIdentifier:uUID submissionDate:date expirationDate:v20 entryDate:dateCopy exitDate:exitDateCopy curatedLabel:labelCopy];

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_curatedLabel_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  v31 = handlerCopy;
  v32 = a2;
  block[4] = self;
  v29 = v23;
  v30 = date;
  v25 = date;
  v26 = handlerCopy;
  v27 = v23;
  dispatch_async(queue, block);
}

void __91__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_curatedLabel_handler___block_invoke(uint64_t a1)
{
  v81[1] = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(*(a1 + 64));
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = *(a1 + 40);
      *buf = 138413058;
      *&buf[4] = v53;
      v75 = 2112;
      v76 = v54;
      v77 = 2112;
      v78 = v56;
      v79 = 2112;
      v80 = v57;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%@, %@, adding %@: %@", buf, 0x2Au);
    }
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __91__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_curatedLabel_handler___block_invoke_5;
  v71[3] = &unk_2788C51C8;
  v73 = *(a1 + 56);
  v6 = v2;
  v72 = v6;
  [v4 _addUserCuration:v5 handler:v71];
  v7 = v6;
  v8 = 0x277CBE000uLL;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_136];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v81[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v81 count:1];
    v23 = [v20 errorWithDomain:v21 code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }

    v8 = 0x277CBE000;
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1 + 48) endDate:*(a1 + 48)];
    v27 = [objc_alloc(MEMORY[0x277D01330]) initWithAscending:0 submissionDateInterval:v26 limit:0];
    v28 = dispatch_semaphore_create(0);
    v65 = v27;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = NSStringFromSelector(*(a1 + 64));
        v61 = *(a1 + 48);
        *buf = 138412802;
        *&buf[4] = v59;
        v75 = 2112;
        v76 = v60;
        v77 = 2112;
        v78 = v61;
        _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "%@, %@, retrieving curation submitted on %@", buf, 0x20u);

        v27 = v65;
      }
    }

    v30 = *(a1 + 32);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __91__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_curatedLabel_handler___block_invoke_8;
    v66[3] = &unk_2788D0D80;
    v31 = *(a1 + 56);
    v32 = *(a1 + 40);
    v66[4] = *(a1 + 32);
    v33 = *(a1 + 64);
    v69 = v31;
    v70 = v33;
    v67 = v32;
    v34 = v28;
    v68 = v34;
    [v30 _fetchStoredUserCurationsWithOptions:v27 handler:v66];
    v35 = v34;
    v36 = [*(v8 + 2728) now];
    v37 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v35, v37))
    {
      v64 = v26;
      v62 = [*(v8 + 2728) now];
      v63 = v36;
      [v62 timeIntervalSinceDate:v36];
      v39 = v38;
      v40 = objc_opt_new();
      v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_136];
      v42 = [MEMORY[0x277CCACC8] callStackSymbols];
      v43 = [v42 filteredArrayUsingPredicate:v41];
      v44 = [v43 firstObject];

      [v40 submitToCoreAnalytics:v44 type:1 duration:v39];
      v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v46 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277D01448];
      v81[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v81 count:1];
      v49 = [v46 errorWithDomain:v47 code:15 userInfo:v48];

      if (v49)
      {
        v50 = v49;
      }

      v36 = v63;
      v26 = v64;
    }

    else
    {
      v49 = 0;
    }

    v51 = v49;
    if (v51)
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

intptr_t __91__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_curatedLabel_handler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __91__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_curatedLabel_handler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_32;
  }

  if (!v5 || ![v5 count])
  {
    v47 = *MEMORY[0x277CCA450];
    v48[0] = @"No stored curations found";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v28];
    (*(*(a1 + 56) + 16))();

    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v42 = v9;
      v43 = 2112;
      v44 = v10;
      v45 = 2048;
      v46 = [v5 count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, found %lu curations matching submission date", buf, 0x20u);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v12)
  {

    goto LABEL_30;
  }

  v13 = v12;
  v31 = v5;
  v32 = 0;
  v14 = *v35;
  do
  {
    v15 = 0;
    v33 = v13;
    do
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      v17 = [v16 visitEntryDate];
      v18 = [*(a1 + 40) visitEntryDate];
      if (([v17 isEqual:v18] & 1) == 0)
      {

LABEL_22:
        goto LABEL_24;
      }

      v19 = [v16 visitExitDate];
      v20 = a1;
      v21 = [*(a1 + 40) visitExitDate];
      v22 = [v19 isEqual:v21];

      if (v22)
      {
        a1 = v20;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v26 = NSStringFromSelector(*(v20 + 64));
            *buf = 138412802;
            v42 = v25;
            v43 = 2112;
            v44 = v26;
            v45 = 2112;
            v46 = v16;
            _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, returning matching curation, %@", buf, 0x20u);

            a1 = v20;
          }
        }

        v17 = v32;
        v13 = v33;
        v32 = v16;
        goto LABEL_22;
      }

      a1 = v20;
      v13 = v33;
LABEL_24:
      ++v15;
    }

    while (v13 != v15);
    v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v13);

  v5 = v31;
  v27 = v32;
  if (v32)
  {
    (*(*(a1 + 56) + 16))();
    dispatch_semaphore_signal(*(a1 + 48));
    goto LABEL_31;
  }

LABEL_30:
  v38 = *MEMORY[0x277CCA450];
  v39 = @"No matching stored curations found";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v27];
  (*(*(a1 + 56) + 16))();

LABEL_31:
  v6 = 0;

LABEL_32:
}

- (void)createAndStoreCurationWithEntryDate:(id)date exitDate:(id)exitDate visitIdentifier:(id)identifier originalLabel:(id)label curatedLabel:(id)curatedLabel handler:(id)handler
{
  v108 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  exitDateCopy = exitDate;
  identifierCopy = identifier;
  labelCopy = label;
  curatedLabelCopy = curatedLabel;
  handlerCopy = handler;
  v74 = dateCopy;
  if (!dateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v103 = 136315394;
      *&v103[4] = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:visitIdentifier:originalLabel:curatedLabel:handler:]";
      *&v103[12] = 1024;
      *&v103[14] = 167;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entryDate (in %s:%d)", v103, 0x12u);
    }
  }

  v75 = exitDateCopy;
  if (!exitDateCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v103 = 136315394;
      *&v103[4] = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:visitIdentifier:originalLabel:curatedLabel:handler:]";
      *&v103[12] = 1024;
      *&v103[14] = 168;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: exitDate (in %s:%d)", v103, 0x12u);
    }
  }

  if (!curatedLabelCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v103 = 136315394;
      *&v103[4] = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:visitIdentifier:originalLabel:curatedLabel:handler:]";
      *&v103[12] = 1024;
      *&v103[14] = 169;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: curatedLabel (in %s:%d)", v103, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v103 = 136315394;
      *&v103[4] = "[RTUserCurationManager createAndStoreCurationWithEntryDate:exitDate:visitIdentifier:originalLabel:curatedLabel:handler:]";
      *&v103[12] = 1024;
      *&v103[14] = 170;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v103, 0x12u);
    }
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  date = [MEMORY[0x277CBEAA8] date];
  v77 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:date sinceDate:2419200.0];
  v20 = [objc_alloc(MEMORY[0x277D01410]) initWithIdentifier:uUID submissionDate:date expirationDate:v77 entryDate:dateCopy exitDate:exitDateCopy visitIdentifier:identifierCopy originalLabel:labelCopy curatedLabel:curatedLabelCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = NSStringFromSelector(a2);
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *v103 = 138413058;
      *&v103[4] = v63;
      *&v103[12] = 2112;
      *&v103[14] = v64;
      *&v103[22] = 2112;
      v104 = v66;
      LOWORD(v105) = 2112;
      *(&v105 + 2) = v20;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@, %@, storing %@: %@", v103, 0x2Au);
    }
  }

  *v103 = 0;
  *&v103[8] = v103;
  *&v103[16] = 0x3032000000;
  v104 = __Block_byref_object_copy__163;
  *&v105 = __Block_byref_object_dispose__163;
  *(&v105 + 1) = 0;
  v22 = dispatch_semaphore_create(0);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __121__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_visitIdentifier_originalLabel_curatedLabel_handler___block_invoke;
  v90[3] = &unk_2788C4618;
  v92 = v103;
  v23 = v22;
  v91 = v23;
  [(RTUserCurationManager *)self addUserCuration:v20 handler:v90];
  v24 = v23;
  v25 = [MEMORY[0x277CBEAA8] now];
  v26 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v24, v26))
  {
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceDate:v25];
    v29 = v28;
    v30 = objc_opt_new();
    v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_136];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
    firstObject = [v33 firstObject];

    [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v36 = MEMORY[0x277CCA9B8];
    v93 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v93 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

    if (v38)
    {
      v39 = v38;
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = v38;
  if (v40)
  {
    [RTUserCurationMetrics collectMetricsForSubmittedUserCuration:v20 submissionResult:3];
    handlerCopy[2](handlerCopy, 0, v40);
  }

  else if (*(*&v103[8] + 40))
  {
    [RTUserCurationMetrics collectMetricsForSubmittedUserCuration:v20 submissionResult:3];
    handlerCopy[2](handlerCopy, 0, *(*&v103[8] + 40));
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        v69 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v68;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        *&buf[22] = 2112;
        v100 = uUID;
        _os_log_debug_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEBUG, "%@, %@, retrieving curation with identifier, %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v100 = __Block_byref_object_copy__163;
    v101 = __Block_byref_object_dispose__163;
    v102 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__163;
    v97 = __Block_byref_object_dispose__163;
    v98 = 0;
    v42 = dispatch_semaphore_create(0);
    userCurationStore = self->_userCurationStore;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __121__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_visitIdentifier_originalLabel_curatedLabel_handler___block_invoke_18;
    v82[3] = &unk_2788D0DA8;
    v87 = buf;
    v44 = v42;
    v83 = v44;
    selfCopy = self;
    v89 = a2;
    v85 = uUID;
    v86 = date;
    v88 = &v93;
    [(RTUserCurationStore *)userCurationStore fetchStoredUserCurationWithIdentifier:v85 handler:v82];
    dsemaa = v44;
    aSelectora = [MEMORY[0x277CBEAA8] now];
    v45 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsemaa, v45))
    {
      v46 = [MEMORY[0x277CBEAA8] now];
      [v46 timeIntervalSinceDate:aSelectora];
      v48 = v47;
      v49 = objc_opt_new();
      v50 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_136];
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v52 = [callStackSymbols2 filteredArrayUsingPredicate:v50];
      firstObject2 = [v52 firstObject];

      [v49 submitToCoreAnalytics:firstObject2 type:1 duration:v48];
      v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        *v107 = 0;
        _os_log_fault_impl(&dword_2304B3000, v54, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v107, 2u);
      }

      v55 = MEMORY[0x277CCA9B8];
      v106 = *MEMORY[0x277CCA450];
      *v107 = @"semaphore wait timeout";
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
      v57 = [v55 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v56];

      if (v57)
      {
        v58 = v57;
      }
    }

    else
    {
      v57 = 0;
    }

    v59 = v57;
    if (v59)
    {
      [RTUserCurationMetrics collectMetricsForSubmittedUserCuration:v20 submissionResult:2];
      handlerCopy[2](handlerCopy, 0, v59);
    }

    else
    {
      if (*(*&buf[8] + 40))
      {
        [RTUserCurationMetrics collectMetricsForSubmittedUserCuration:v20 submissionResult:2];
        v60 = 0;
        v61 = *(*&buf[8] + 40);
      }

      else
      {
        [RTUserCurationMetrics collectMetricsForSubmittedUserCuration:v20 submissionResult:1];
        v61 = 0;
        v60 = v94[5];
      }

      handlerCopy[2](handlerCopy, v60, v61);
    }

    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(v103, 8);
}

void __121__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_visitIdentifier_originalLabel_curatedLabel_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __121__RTUserCurationManager_createAndStoreCurationWithEntryDate_exitDate_visitIdentifier_originalLabel_curatedLabel_handler___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v6)
    {
      v10 = [v6 submissionDate];
      v11 = [v10 isEqual:*(a1 + 56)];

      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromSelector(*(a1 + 80));
            v16 = *(a1 + 48);
            v32 = 138412802;
            v33 = v14;
            v34 = 2112;
            v35 = v15;
            v36 = 2112;
            v37 = v16;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, fetched newly submitted curation with identifier, %@", &v32, 0x20u);
          }
        }

        v8 = (*(*(a1 + 72) + 8) + 40);
        v9 = a2;
        goto LABEL_3;
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(*(a1 + 80));
        v31 = *(a1 + 48);
        v32 = 138412802;
        v33 = v29;
        v34 = 2112;
        v35 = v30;
        v36 = 2112;
        v37 = v31;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, while attempting to fetch a newly submitted user curation with identifier, %@, a different curation was found - this should not happen", &v32, 0x20u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = @"Mismatched curation retrieved";
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(*(a1 + 80));
        v27 = *(a1 + 48);
        v32 = 138412802;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        v36 = 2112;
        v37 = v27;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, while attempting to fetch a newly submitted user curation with identifier, %@, no curation was found - this should not happen", &v32, 0x20u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = @"No stored curations found";
    }

    v21 = [v18 rt_errorWithCode:0 description:v19];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    goto LABEL_18;
  }

  v8 = (*(*(a1 + 64) + 8) + 40);
  v9 = a3;
LABEL_3:
  objc_storeStrong(v8, v9);
LABEL_18:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_fetchStoredUserCurationsWithOptions:(id)options handler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  userCurationStore = [(RTUserCurationManager *)self userCurationStore];
  [userCurationStore fetchStoredUserCurationsWithOptions:optionsCopy handler:handlerCopy];
}

- (void)fetchStoredUserCurationsWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTUserCurationManager fetchStoredUserCurationsWithOptions:handler:]";
    v19 = 1024;
    v20 = 300;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTUserCurationManager fetchStoredUserCurationsWithOptions:handler:]";
      v19 = 1024;
      v20 = 301;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTUserCurationManager_fetchStoredUserCurationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = optionsCopy;
  v16 = v8;
  v12 = v8;
  v13 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_addUserCuration:(id)curation handler:(id)handler
{
  handlerCopy = handler;
  curationCopy = curation;
  userCurationStore = [(RTUserCurationManager *)self userCurationStore];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__RTUserCurationManager__addUserCuration_handler___block_invoke;
  v11[3] = &unk_2788C56C0;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v10 = handlerCopy;
  [userCurationStore storeUserCuration:curationCopy handler:v11];
}

void __50__RTUserCurationManager__addUserCuration_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, %@, error,%@", &v9, 0x20u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)addUserCuration:(id)curation handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  curationCopy = curation;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (curationCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[RTUserCurationManager addUserCuration:handler:]";
    v21 = 1024;
    v22 = 329;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userCuration (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTUserCurationManager addUserCuration:handler:]";
      v21 = 1024;
      v22 = 330;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__RTUserCurationManager_addUserCuration_handler___block_invoke;
  v15[3] = &unk_2788C4C20;
  v15[4] = self;
  v16 = curationCopy;
  v17 = v9;
  v18 = a2;
  v13 = v9;
  v14 = curationCopy;
  dispatch_async(queue, v15);
}

uint64_t __49__RTUserCurationManager_addUserCuration_handler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 40);
      v10 = 138413058;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %@, %@: %@", &v10, 0x2Au);
    }
  }

  return [*(a1 + 32) _addUserCuration:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTUserCurationManager_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v17 = completionCopy;
  typeCopy = type;
  v15 = dateCopy;
  selfCopy = self;
  v19 = a2;
  v12 = completionCopy;
  v13 = dateCopy;
  dispatch_async(queue, block);
}

void __69__RTUserCurationManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v4 = [*(a1 + 40) userCurationStore];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__RTUserCurationManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v6[3] = &unk_2788C4780;
    v8 = *(a1 + 64);
    v7 = *(a1 + 48);
    [v4 purgeUserCurationsPredating:v3 handler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __69__RTUserCurationManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, performPurgeOfType, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)purgeUserCurationsPredating:(id)predating handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (predatingCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTUserCurationManager purgeUserCurationsPredating:handler:]";
    v19 = 1024;
    v20 = 378;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTUserCurationManager purgeUserCurationsPredating:handler:]";
      v19 = 1024;
      v20 = 379;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTUserCurationManager_purgeUserCurationsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = predatingCopy;
  v16 = v8;
  v12 = v8;
  v13 = predatingCopy;
  dispatch_async(queue, block);
}

void __61__RTUserCurationManager_purgeUserCurationsPredating_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userCurationStore];
  [v2 purgeUserCurationsPredating:*(a1 + 40) handler:*(a1 + 48)];
}

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_6;
  if (!vendedClasses_vendedClasses_6)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v4 = vendedClasses_vendedClasses_6;
    vendedClasses_vendedClasses_6 = v3;

    v2 = vendedClasses_vendedClasses_6;
  }

  return v2;
}

- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__RTUserCurationManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = optionsCopy;
    selfCopy = self;
    v15 = handlerCopy;
    offsetCopy = offset;
    dispatch_async(queue, v12);

    v11 = v13;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __74__RTUserCurationManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v17;
    v10 = &v16;
LABEL_8:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [v6 errorWithDomain:v7 code:7 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v15;
    v10 = &v14;
    goto LABEL_8;
  }

  v13 = [*(a1 + 40) userCurationStore];
  [v13 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

@end