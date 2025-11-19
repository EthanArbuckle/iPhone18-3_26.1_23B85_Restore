@interface RTLearnedLocationReconcilerPerDevice
+ (id)sortReconciledVisitsByMapItemQuality:(id)a3;
- (RTLearnedLocationReconcilerPerDevice)initWithPersistenceManager:(id)a3;
- (void)collapseReconciledVisitsToLocationsOfInterest:(id)a3 context:(id)a4 handler:(id)a5;
- (void)performReconciliationWithHandler:(id)a3;
@end

@implementation RTLearnedLocationReconcilerPerDevice

- (RTLearnedLocationReconcilerPerDevice)initWithPersistenceManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = RTLearnedLocationReconcilerPerDevice;
    v6 = [(RTLearnedLocationReconcilerPerDevice *)&v17 init];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(RTLearnedLocationReconcilerPerDevice *)v8 UTF8String];
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v8];
        v10 = [v13 UTF8String];
      }

      v14 = dispatch_queue_create(v10, v9);

      queue = v8->_queue;
      v8->_queue = v14;

      objc_storeStrong(&v8->_persistenceManager, a3);
    }

    self = v7;
    v12 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __72__RTLearnedLocationReconcilerPerDevice__sortDescriptorForReconciliation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isEqualToString:@"iPhone"])
  {
    v6 = [v5 isEqualToString:@"iPhone"] - 1;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"Watch"])
  {
    if (([v5 isEqualToString:@"Watch"] & 1) == 0)
    {
      v7 = @"iPhone";
      goto LABEL_6;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"iPad"])
  {
    if ([v5 isEqualToString:@"iPad"])
    {
      goto LABEL_15;
    }

    if (([v5 isEqualToString:@"iPhone"] & 1) == 0)
    {
      v7 = @"Watch";
      goto LABEL_6;
    }

LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  if (![v4 isEqualToString:@"Mac"])
  {
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Mac"])
  {
    goto LABEL_15;
  }

  if ([v5 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"Watch"))
  {
    goto LABEL_18;
  }

  v7 = @"iPad";
LABEL_6:
  if ([v5 isEqualToString:v7])
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

LABEL_19:

  return v6;
}

- (void)performReconciliationWithHandler:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(queue, block);
}

void __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_2;
  v7[3] = &unk_2788C4FB0;
  v7[4] = v3;
  v5 = v2;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  [v4 createManagedObjectContext:v7];
}

void __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_3;
  v8[3] = &unk_2788C4C20;
  v4 = a1[5];
  v8[4] = a1[4];
  v9 = v3;
  v5 = v4;
  v6 = a1[6];
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v7 performBlock:v8];
}

void __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_3(uint64_t a1)
{
  v118[3] = *MEMORY[0x277D85DE8];
  v88 = objc_opt_new();
  v74 = +[RTDeviceMO fetchRequest];
  v71 = [*(a1 + 32) _sortDescriptorForReconciliation];
  v70 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  [v74 setFetchBatchSize:1];
  v1 = *(a1 + 40);
  v105 = 0;
  v72 = [v1 executeFetchRequest:v74 error:&v105];
  v73 = v105;
  if (v73)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(v2 + 16))(v2, 0, v73);
    }
  }

  else
  {
    v3 = [*(a1 + 40) currentDevice];
    v4 = [v3 deviceClass];
    v69 = [v4 isEqualToString:@"iPhone"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(*(a1 + 56));
        if (v69)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        v8 = [*(a1 + 40) currentDevice];
        *buf = 138412802;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        *&buf[22] = 2112;
        v113 = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, prioritizeCurrentDevice, %@, current device, %@", buf, 0x20u);
      }
    }

    if (v69)
    {
      v9 = MEMORY[0x277CCAC98];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_30;
      v103[3] = &unk_2788D2D70;
      v104 = *(a1 + 40);
      v10 = [v9 sortDescriptorWithKey:@"identifier" ascending:1 comparator:v103];
      v118[0] = v71;
      v118[1] = v10;
      v118[2] = v70;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:3];
      v12 = [v72 sortedArrayUsingDescriptors:v11];

      v13 = v104;
    }

    else
    {
      v117[0] = v71;
      v117[1] = v70;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
      v12 = [v72 sortedArrayUsingDescriptors:v13];
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v12;
    v79 = [obj countByEnumeratingWithState:&v99 objects:v116 count:16];
    if (v79)
    {
      v80 = 0;
      v78 = *v100;
      do
      {
        for (i = 0; i != v79; ++i)
        {
          if (*v100 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v99 + 1) + 8 * i);
          v86 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"place.mapItem"];
          v84 = +[RTCloudManagedObject notTombstonedPredicate];
          v16 = MEMORY[0x277CCA920];
          v115[0] = v86;
          v115[1] = v84;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
          v82 = [v16 andPredicateWithSubpredicates:v17];

          v18 = [v15 visits];
          v19 = [v18 allObjects];
          v20 = [v19 filteredArrayUsingPredicate:v82];

          v21 = MEMORY[0x277CCAC30];
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_2_42;
          v97[3] = &unk_2788C91B0;
          v88 = v88;
          v98 = v88;
          v22 = [v21 predicateWithBlock:v97];
          v23 = [v20 filteredArrayUsingPredicate:v22];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v77 = NSStringFromSelector(*(a1 + 56));
              v25 = [v23 count];
              v26 = [v88 firstObject];
              v27 = [v26 entryDate];
              v28 = [v27 stringFromDate];
              *buf = 138413314;
              *&buf[4] = v77;
              *&buf[12] = 2048;
              *&buf[14] = v80;
              *&buf[22] = 2112;
              v113 = v15;
              *v114 = 2048;
              *&v114[2] = v25;
              *&v114[10] = 2112;
              *&v114[12] = v28;
              _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, idx, %lu, device, %@, filtered visit count, %lu, filter date, %@", buf, 0x34u);
            }
          }

          if ([v23 count])
          {
            v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
            v111 = v29;
            v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
            v31 = [v23 sortedArrayUsingDescriptors:v30];

            v32 = [v31 arrayByAddingObjectsFromArray:v88];
            v33 = [v32 mutableCopy];

            v88 = v33;
          }

          ++v80;
        }

        v79 = [obj countByEnumeratingWithState:&v99 objects:v116 count:16];
      }

      while (v79);
    }

    if (v69)
    {
      goto LABEL_45;
    }

    v96 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v81 = obj;
    v85 = [v81 countByEnumeratingWithState:&v93 objects:v110 count:16];
    if (v85)
    {
      v83 = *v94;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v94 != v83)
          {
            objc_enumerationMutation(v81);
          }

          v35 = *(*(&v93 + 1) + 8 * j);
          v87 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"place.mapItem"];
          v36 = +[RTCloudManagedObject notTombstonedPredicate];
          v37 = MEMORY[0x277CCA920];
          v109[0] = v87;
          v109[1] = v36;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
          v39 = [v37 andPredicateWithSubpredicates:v38];

          v40 = [v35 visits];
          v41 = [v40 allObjects];
          v42 = [v41 filteredArrayUsingPredicate:v39];

          v43 = MEMORY[0x277CCAC30];
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_47;
          v91[3] = &unk_2788C91B0;
          v44 = v88;
          v92 = v44;
          v45 = [v43 predicateWithBlock:v91];
          v46 = [v42 filteredArrayUsingPredicate:v45];
          if ([v46 count])
          {
            v47 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
            v108 = v47;
            v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
            v49 = [v46 sortedArrayUsingDescriptors:v48];

            [v44 addObjectsFromArray:v49];
          }
        }

        v85 = [v81 countByEnumeratingWithState:&v93 objects:v110 count:16];
      }

      while (v85);
    }

    v50 = +[RTLearnedVisitMO fetchRequest];
    v51 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
    v107 = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
    [v50 setSortDescriptors:v52];

    v53 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != $RT_CURRENT_DEVICE", @"device"];
    v54 = MEMORY[0x277CCAC30];
    v55 = [v88 lastObject];
    v56 = [v55 exitDate];
    v57 = v56;
    if (v56)
    {
      v58 = [v54 predicateWithFormat:@"%K > %@", @"entryDate", v56];
    }

    else
    {
      v59 = [MEMORY[0x277CBEAA8] distantPast];
      v58 = [v54 predicateWithFormat:@"%K > %@", @"entryDate", v59];
    }

    v60 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"place.mapItem"];
    v61 = MEMORY[0x277CCA920];
    v106[0] = v53;
    v106[1] = v58;
    v106[2] = v60;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:3];
    v63 = [v61 andPredicateWithSubpredicates:v62];
    [v50 setPredicate:v63];

    v64 = *(a1 + 40);
    v90 = 0;
    v65 = [v64 executeFetchRequest:v50 error:&v90];
    v66 = v90;
    if (v66)
    {
      v67 = *(a1 + 48);
      if (v67)
      {
        (*(v67 + 16))(v67, 0, v66);
      }
    }

    else
    {
      [v88 addObjectsFromArray:v65];
    }

    if (!v66)
    {
LABEL_45:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v113 = __Block_byref_object_copy__196;
      *v114 = __Block_byref_object_dispose__196;
      *&v114[8] = 0;
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_59;
      v89[3] = &unk_2788C9160;
      v89[4] = buf;
      v68 = [MEMORY[0x277CCAC30] predicateWithBlock:v89];
      [v88 filterUsingPredicate:v68];
      [*(a1 + 32) collapseReconciledVisitsToLocationsOfInterest:v88 context:*(a1 + 40) handler:*(a1 + 48)];

      _Block_object_dispose(buf, 8);
    }
  }
}

uint64_t __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 currentDevice];
  v9 = [v8 identifier];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = -1;
  }

  else
  {
    v12 = [*(a1 + 32) currentDevice];
    v13 = [v12 identifier];
    v14 = [v5 isEqual:v13];

    v11 = v14;
  }

  return v11;
}

uint64_t __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_2_42(uint64_t a1, void *a2)
{
  v3 = [a2 exitDate];
  v4 = [*(a1 + 32) firstObject];
  v5 = [v4 entryDate];
  v6 = [v3 isOnOrBefore:v5];

  return v6;
}

uint64_t __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = [a2 entryDate];
  v4 = [*(a1 + 32) lastObject];
  v5 = [v4 exitDate];
  v6 = [v3 isOnOrAfter:v5];

  return v6;
}

uint64_t __73__RTLearnedLocationReconcilerPerDevice_performReconciliationWithHandler___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 40))
  {
    v9 = [v6 entryDate];
    v10 = [*(*(*(a1 + 32) + 8) + 40) exitDate];
    v11 = [v9 isAfterDate:v10];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v8 + 40), a2);
  v12 = 1;
LABEL_6:

  return v12;
}

+ (id)sortReconciledVisitsByMapItemQuality:(id)a3
{
  v16[8] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  v4 = a3;
  v15 = [v3 sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_67];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_69];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_71];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_73_0];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_77];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_80_0];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"place" ascending:1 comparator:&__block_literal_global_83_0];
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
  v16[0] = v8;
  v16[1] = v15;
  v16[2] = v5;
  v16[3] = v6;
  v16[4] = v7;
  v16[5] = v9;
  v16[6] = v10;
  v16[7] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:8];
  v13 = [v4 sortedArrayUsingDescriptors:v12];

  return v13;
}

uint64_t __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [v6 mapItem];
  v9 = [v8 address];
  v10 = [v9 iso3166SubdivisionCode];
  if (v10)
  {
    v3 = [v7 mapItem];
    v4 = [v3 address];
    v11 = [v4 iso3166SubdivisionCode];
    if (v11)
    {

      v12 = 0;
LABEL_14:

      goto LABEL_15;
    }
  }

  v13 = [v6 mapItem];
  v14 = [v13 address];
  v15 = [v14 iso3166SubdivisionCode];
  if (v15)
  {
    v21 = 0;
  }

  else
  {
    v19 = [v7 mapItem];
    [v19 address];
    v16 = v20 = v7;
    v17 = [v16 iso3166SubdivisionCode];
    v21 = v17 == 0;

    v7 = v20;
  }

  if (v10)
  {
  }

  if (!v21)
  {
    v8 = [v6 mapItem];
    v9 = [v8 address];
    v10 = [v9 iso3166SubdivisionCode];
    if (v10)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

uint64_t __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [v6 mapItem];
  v9 = [v8 address];
  v10 = [v9 iso3166CountryCode];
  if (v10)
  {
    v3 = [v7 mapItem];
    v4 = [v3 address];
    v11 = [v4 iso3166CountryCode];
    if (v11)
    {

      v12 = 0;
LABEL_14:

      goto LABEL_15;
    }
  }

  v13 = [v6 mapItem];
  v14 = [v13 address];
  v15 = [v14 iso3166CountryCode];
  if (v15)
  {
    v21 = 0;
  }

  else
  {
    v19 = [v7 mapItem];
    [v19 address];
    v16 = v20 = v7;
    v17 = [v16 iso3166CountryCode];
    v21 = v17 == 0;

    v7 = v20;
  }

  if (v10)
  {
  }

  if (!v21)
  {
    v8 = [v6 mapItem];
    v9 = [v8 address];
    v10 = [v9 iso3166CountryCode];
    if (v10)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

uint64_t __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mapItem];
  v7 = [v6 category];

  if (!v7)
  {
    v12 = [v5 mapItem];
    v19 = [v12 category];
    if (v19)
    {
      v20 = v19;
      v21 = [v5 mapItem];
      v22 = [v21 category];
      v23 = ~[v22 isEqualToString:*MEMORY[0x277D01468]];

      v18 = v23 & 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v8 = [v4 mapItem];
  v9 = [v8 category];
  v10 = *MEMORY[0x277D01468];
  v11 = [v9 isEqualToString:*MEMORY[0x277D01468]];

  v12 = [v5 mapItem];
  v13 = [v12 category];
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      v15 = [v5 mapItem];
      v16 = [v15 category];
      v17 = ~[v16 isEqualToString:v10];

      v18 = v17 & 1;
      goto LABEL_11;
    }

LABEL_9:

    v18 = 0;
    goto LABEL_11;
  }

  if (v13)
  {
    v24 = [v5 mapItem];
    v25 = [v24 category];
    v26 = [v25 isEqualToString:v10];

    v18 = v26 << 63 >> 63;
  }

  else
  {

    v18 = -1;
  }

LABEL_11:

  return v18;
}

uint64_t __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mapItem];
  v7 = [v6 categoryMUID];

  if (!v7)
  {
    v11 = [v5 mapItem];
    v14 = [v11 categoryMUID];
    if (!v14)
    {
LABEL_10:

      v18 = 0;
      goto LABEL_12;
    }

    v13 = v14;
    goto LABEL_7;
  }

  v8 = [v4 mapItem];
  v9 = [v8 categoryMUID];
  v10 = [v9 isEqual:&unk_2845A0788];

  v11 = [v5 mapItem];
  v12 = [v11 categoryMUID];
  v13 = v12;
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_7:
    v15 = [v5 mapItem];
    v16 = [v15 categoryMUID];
    v17 = ~[v16 isEqual:&unk_2845A0788];

    v18 = v17 & 1;
    goto LABEL_12;
  }

  if (v12)
  {
    v19 = [v5 mapItem];
    v20 = [v19 categoryMUID];
    v21 = [v20 isEqual:&unk_2845A0788];

    v18 = v21 << 63 >> 63;
  }

  else
  {

    v18 = -1;
  }

LABEL_12:

  return v18;
}

BOOL __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mapItem];
  v6 = [v5 geoMapItemIdentifier];

  v7 = [v4 mapItem];

  v8 = [v7 geoMapItemIdentifier];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6)
  {
    return v9;
  }

  else
  {
    return v8 != 0;
  }
}

uint64_t __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke_2_78(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mapItem];
  v7 = [v6 address];
  v8 = [v7 geoAddressData];
  v9 = [v5 mapItem];

  v10 = [v9 address];
  v11 = [v10 geoAddressData];
  v12 = (v8 == 0) ^ (v11 != 0);

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v4 mapItem];
    v15 = [v14 address];
    v16 = [v15 geoAddressData];
    if (v16)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

uint64_t __77__RTLearnedLocationReconcilerPerDevice_sortReconciledVisitsByMapItemQuality___block_invoke_3_81(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mapItem];
  v7 = [v6 mapItemPlaceType] == 1000;
  v8 = [v5 mapItem];

  LOBYTE(v5) = v7 ^ ([v8 mapItemPlaceType] != 1000);
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v4 mapItem];
    if ([v10 mapItemPlaceType] == 1000)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (void)collapseReconciledVisitsToLocationsOfInterest:(id)a3 context:(id)a4 handler:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v64 = a5;
  v65 = v9;
  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v96 = "[RTLearnedLocationReconcilerPerDevice collapseReconciledVisitsToLocationsOfInterest:context:handler:]";
      v97 = 1024;
      v98 = 467;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }
  }

  v11 = [objc_opt_class() sortReconciledVisitsByMapItemQuality:v8];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v91;
    v69 = self;
    v70 = v8;
    v67 = *v91;
    v68 = v12;
    do
    {
      v16 = 0;
      v71 = v14;
      do
      {
        if (*v91 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v82 = v16;
        v17 = *(*(&v90 + 1) + 8 * v16);
        v81 = objc_autoreleasePoolPush();
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __102__RTLearnedLocationReconcilerPerDevice_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke;
        v89[3] = &unk_2788C9188;
        v89[4] = v17;
        if ([v12 indexOfObjectPassingTest:v89] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = objc_alloc(MEMORY[0x277D01160]);
          v19 = [v17 locationLatitude];
          [v19 doubleValue];
          v21 = v20;
          v22 = [v17 locationLongitude];
          [v22 doubleValue];
          v24 = v23;
          v25 = [v17 locationHorizontalUncertainty];
          [v25 doubleValue];
          v27 = v26;
          v28 = [v17 locationAltitude];
          [v28 doubleValue];
          v30 = v29;
          v31 = [v17 locationVerticalUncertainty];
          [v31 doubleValue];
          v33 = v32;
          v34 = [v17 locationReferenceFrame];
          v35 = [v34 intValue];
          v36 = [v17 locationSourceAccuracy];
          v37 = [v18 initWithLatitude:0 longitude:v35 horizontalUncertainty:objc_msgSend(v36 altitude:"intValue") verticalUncertainty:v21 date:v24 referenceFrame:v27 speed:v30 sourceAccuracy:{v33, 0.0}];

          v38 = [RTLearnedLocation alloc];
          v39 = [v17 locationSourceAccuracy];
          v78 = v37;
          v80 = -[RTLearnedLocation initWithLocation:dataPointCount:type:](v38, "initWithLocation:dataPointCount:type:", v37, [v39 intValue] == 2, 2);

          v40 = [v17 place];
          v41 = [v40 mapItem];

          if (v41)
          {
            v42 = MEMORY[0x277D011A0];
            v43 = [v17 place];
            v44 = [v43 mapItem];
            v79 = [v42 createWithManagedObject:v44];
          }

          else
          {
            v79 = 0;
          }

          v75 = [RTLearnedPlace alloc];
          v77 = [v17 place];
          v45 = [v77 identifier];
          v46 = v45;
          if (!v45)
          {
            v45 = [MEMORY[0x277CCAD78] UUID];
            v66 = v45;
          }

          v73 = v45;
          v76 = [v17 place];
          v74 = [v76 type];
          v47 = [v74 unsignedIntegerValue];
          v48 = [v17 place];
          v49 = [v48 typeSource];
          v50 = [v49 unsignedIntegerValue];
          v51 = [v17 place];
          v52 = [v51 customLabel];
          v53 = [MEMORY[0x277CBEAA8] date];
          v54 = [v17 expirationDate];
          v55 = [(RTLearnedPlace *)v75 initWithIdentifier:v73 type:v47 typeSource:v50 mapItem:v79 customLabel:v52 creationDate:v53 expirationDate:v54];

          if (!v46)
          {
          }

          v56 = [RTLearnedLocationOfInterest alloc];
          v57 = [(RTLearnedPlace *)v55 identifier];
          v58 = [(RTLearnedLocationOfInterest *)v56 initWithIdentifier:v57 location:v80 place:v55 visits:0 transitions:0];

          v8 = v70;
          v14 = v71;
          v12 = v68;
          if (v58)
          {
            [v68 addObject:v58];
          }

          else
          {
            v59 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *buf = 138739971;
              v96 = v17;
              _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "the learned location of interest was nil, visit, %{sensitive}@", buf, 0xCu);
            }
          }

          self = v69;
          v15 = v67;
        }

        objc_autoreleasePoolPop(v81);
        v16 = v82 + 1;
      }

      while (v14 != v82 + 1);
      v14 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
    }

    while (v14);
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __102__RTLearnedLocationReconcilerPerDevice_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke_91;
  v83[3] = &unk_2788C5580;
  v84 = v8;
  v85 = v12;
  v86 = self;
  v87 = v65;
  v88 = v64;
  v60 = v64;
  v61 = v65;
  v62 = v12;
  v63 = v8;
  [v61 performBlock:v83];
}

uint64_t __102__RTLearnedLocationReconcilerPerDevice_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D011A0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 place];
  v6 = [v5 mapItem];
  v7 = [v2 createWithManagedObject:v6];

  v8 = [v4 place];

  v9 = [v8 mapItem];
  v10 = [v9 isEqualToMapItem:v7];

  return v10;
}

void __102__RTLearnedLocationReconcilerPerDevice_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke_91(uint64_t a1)
{
  v1 = a1;
  v122 = *MEMORY[0x277D85DE8];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v102 = *v112;
    v103 = v1;
    do
    {
      v5 = 0;
      v94 = v3;
      do
      {
        if (*v112 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v111 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = *(v1 + 40);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __102__RTLearnedLocationReconcilerPerDevice_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke_2;
        v110[3] = &unk_2788C9188;
        v110[4] = v6;
        v108 = [v8 indexOfObjectPassingTest:v110];
        if (v108 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v6;
          v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138739971;
            v116 = v9;
            _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "the learned location of interest was not found, visit, %{sensitive}@", buf, 0xCu);
          }
        }

        else
        {
          v100 = v7;
          v101 = v5;
          v104 = v4;
          v11 = objc_alloc(MEMORY[0x277D01160]);
          v12 = [v6 locationLatitude];
          [v12 doubleValue];
          v14 = v13;
          v15 = [v6 locationLongitude];
          [v15 doubleValue];
          v17 = v16;
          v18 = [v6 locationHorizontalUncertainty];
          [v18 doubleValue];
          v20 = v19;
          v21 = [v6 locationAltitude];
          [v21 doubleValue];
          v23 = v22;
          v24 = [v6 locationVerticalUncertainty];
          [v24 doubleValue];
          v26 = v25;
          v27 = [v6 locationReferenceFrame];
          v28 = [v27 intValue];
          v29 = [v6 locationSourceAccuracy];
          v30 = [v11 initWithLatitude:0 longitude:v28 horizontalUncertainty:objc_msgSend(v29 altitude:"intValue") verticalUncertainty:v14 date:v17 referenceFrame:v20 speed:v23 sourceAccuracy:{v26, 0.0}];

          v31 = [RTLearnedLocation alloc];
          v32 = [v6 dataPointCount];
          v33 = [v32 unsignedIntegerValue];
          v34 = [v6 confidence];
          [v34 doubleValue];
          v99 = v30;
          v35 = [(RTLearnedLocation *)v31 initWithLocation:v30 dataPointCount:v33 confidence:?];

          v106 = [RTLearnedVisit alloc];
          v36 = [v6 identifier];
          v37 = [v6 entryDate];
          v38 = [v6 exitDate];
          v39 = [v6 creationDate];
          v40 = v39;
          if (!v39)
          {
            v40 = [MEMORY[0x277CBEAA8] distantPast];
            v91 = v40;
          }

          v41 = [v6 expirationDate];
          v42 = [v6 placeConfidence];
          [v42 doubleValue];
          v44 = v43;
          [v6 placeSource];
          v45 = v109 = v6;
          v90 = [v45 unsignedIntegerValue];
          v46 = v106;
          v107 = v35;
          v105 = [(RTLearnedVisit *)v46 initWithIdentifier:v36 location:v35 entryDate:v37 exitDate:v38 creationDate:v40 expirationDate:v41 placeConfidence:v44 placeSource:v90];

          if (!v39)
          {
          }

          v96 = [v104 device];
          v47 = [v96 identifier];
          v48 = [v6 device];
          v49 = [v48 identifier];
          v50 = [v104 outbound];
          v51 = [v50 predominantMotionActivityType];
          v52 = [v51 unsignedIntegerValue];
          v53 = [v6 inbound];
          v54 = [v53 predominantMotionActivityType];
          v55 = [v54 unsignedIntegerValue];
          v56 = [v47 isEqual:v49];
          if (v52 == v55)
          {
            v57 = 1;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            v58 = v55;
          }

          else
          {
            v58 = 0;
          }

          v98 = v58;

          v97 = [RTLearnedTransition alloc];
          v59 = [MEMORY[0x277CCAD78] UUID];
          v60 = [v104 exitDate];
          v61 = v60;
          if (!v60)
          {
            v61 = [MEMORY[0x277CBEAA8] distantPast];
            v92 = v61;
          }

          v62 = [v6 entryDate];
          v63 = [v104 identifier];
          v64 = v63;
          if (!v63)
          {
            v64 = [MEMORY[0x277CCAD78] nilUUID];
            v93 = v64;
          }

          v65 = [v6 identifier];
          v66 = [MEMORY[0x277CBEAA8] date];
          v67 = [v6 expirationDate];
          v68 = [(RTLearnedTransition *)v97 initWithIdentifier:v59 startDate:v61 stopDate:v62 visitIdentifierOrigin:v64 visitIdentifierDestination:v65 creationDate:v66 expirationDate:v67 predominantMotionActivityType:v98];

          if (!v63)
          {
          }

          if (!v60)
          {
          }

          v69 = [*(v103 + 40) objectAtIndex:v108];
          v70 = MEMORY[0x277CBEB18];
          v71 = [v69 visits];
          v72 = [v70 arrayWithArray:v71];

          if (v105)
          {
            [v72 addObject:v105];
          }

          else
          {
            v73 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 138740483;
              v116 = v107;
              v117 = 2117;
              v118 = 0;
              v119 = 2117;
              v120 = v68;
              _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "dropping reconciled visit because the learned visit was nil, location, %{sensitive}@, visit, %{sensitive}@, transition, %{sensitive}@", buf, 0x20u);
            }
          }

          v74 = MEMORY[0x277CBEB18];
          v75 = [v69 transitions];
          v76 = [v74 arrayWithArray:v75];

          if (v68)
          {
            v77 = v68;
            [v76 addObject:v68];
          }

          else
          {
            v78 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 138740483;
              v116 = v107;
              v117 = 2117;
              v118 = v105;
              v119 = 2117;
              v120 = 0;
              _os_log_error_impl(&dword_2304B3000, v78, OS_LOG_TYPE_ERROR, "dropping reconciled transition because the learned visit was nil, location, %{sensitive}@, visit, %{sensitive}@, transition, %{sensitive}@", buf, 0x20u);
            }

            v77 = 0;
          }

          v79 = [RTLearnedLocationOfInterest alloc];
          v80 = [v69 place];
          v81 = [v80 identifier];
          v82 = [v69 location];
          v83 = [v69 place];
          v84 = [(RTLearnedLocationOfInterest *)v79 initWithIdentifier:v81 location:v82 place:v83 visits:v72 transitions:v76];

          if (v84)
          {
            v1 = v103;
            [*(v103 + 40) setObject:v84 atIndexedSubscript:v108];
            v3 = v94;
            v7 = v100;
            v5 = v101;
            v85 = v109;
          }

          else
          {
            v86 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            v3 = v94;
            v7 = v100;
            v5 = v101;
            v85 = v109;
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              *buf = 138740483;
              v116 = v107;
              v117 = 2117;
              v118 = v105;
              v119 = 2112;
              v120 = v77;
              _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "dropping reconciled visit because the updated learned location of interest was nil, location, %{sensitive}@, visit, %{sensitive}@, transition, %@", buf, 0x20u);
            }

            v1 = v103;
          }

          v87 = v85;

          v4 = v87;
          v10 = v99;
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  logReconciledGraph(*(v1 + 40), 1);
  [RTLearnedLocationReconcilerPerVisit submitMetricsOnReconciledGraphDensity:*(v1 + 32) algorithm:1 persistenceManager:*(*(v1 + 48) + 16) managedObjectContext:*(v1 + 56)];
  v88 = *(v1 + 64);
  if (v88)
  {
    v89 = [*(v1 + 40) copy];
    (*(v88 + 16))(v88, v89, 0);
  }
}

uint64_t __102__RTLearnedLocationReconcilerPerDevice_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D011A0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 place];
  v6 = [v5 mapItem];
  v7 = [v2 createWithManagedObject:v6];

  v8 = [v4 place];

  v9 = [v8 mapItem];
  v10 = [v9 isEqualToMapItem:v7];

  return v10;
}

@end