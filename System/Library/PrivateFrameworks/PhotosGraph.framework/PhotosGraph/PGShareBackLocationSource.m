@interface PGShareBackLocationSource
+ (id)suggesterInputsByDateIntervalForInputs:(id)a3;
- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6;
@end

@implementation PGShareBackLocationSource

+ (id)suggesterInputsByDateIntervalForInputs:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v33)
  {
    v31 = v4;
    v32 = *v43;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v7 creationDate];
        if (v8)
        {
          v9 = [v7 location];
          v10 = [v7 timeZone];
          v36 = v9;
          v37 = v8;
          v34 = v10;
          v35 = v7;
          if (v10)
          {
            v11 = [MEMORY[0x277D27690] localDateFromUniversalDate:v8 inTimeZone:v10];
          }

          else
          {
            if (v9)
            {
              [MEMORY[0x277D27690] localDateFromUniversalDate:v8 atLocation:v9];
            }

            else
            {
              [MEMORY[0x277D27690] localDateFromUniversalDate:v8];
            }
            v11 = ;
          }

          v12 = v11;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v13 = [v4 allKeys];
          v14 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v39;
LABEL_15:
            v17 = 0;
            while (1)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v38 + 1) + 8 * v17);
              v19 = [v18 startDate];
              v20 = [v5 isDate:v12 inSameDayAsDate:v19];

              if (v20)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
                if (v15)
                {
                  goto LABEL_15;
                }

                goto LABEL_21;
              }
            }

            v21 = v18;

            if (!v21)
            {
              goto LABEL_24;
            }

            v22 = [v21 startDate];
            v23 = [v22 earlierDate:v12];

            v24 = [v21 endDate];
            v25 = [v24 laterDate:v12];

            v4 = v31;
            v26 = [v31 objectForKeyedSubscript:v21];
            [v31 removeObjectForKey:v21];
          }

          else
          {
LABEL_21:

LABEL_24:
            v23 = v12;
            v26 = objc_opt_new();
            v25 = v23;
            v4 = v31;
          }

          v8 = v37;
          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v25];
          [v4 setObject:v26 forKeyedSubscript:v27];
          [v26 addObject:v35];
        }
      }

      v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v33);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6
{
  v86 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v41 = a4;
  v36 = a5;
  v44 = [(PGShareBackSource *)self loggingConnection];
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v45 = objc_opt_new();
  if (![v41 count])
  {
    goto LABEL_32;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v37;
  v40 = [obj countByEnumeratingWithState:&v64 objects:v85 count:16];
  if (v40)
  {
    v39 = *v65;
LABEL_4:
    v42 = 0;
    while (1)
    {
      if (*v65 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v47 = *(*(&v64 + 1) + 8 * v42);
      v48 = [v47 location];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v43 = v41;
      v9 = [v43 countByEnumeratingWithState:&v60 objects:v84 count:16];
      if (v9)
      {
        v46 = *v61;
LABEL_9:
        v10 = 0;
        while (1)
        {
          if (*v61 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v11 = *(*(&v60 + 1) + 8 * v10);
          v12 = [v11 collection];
          v13 = [v12 urbanRoiNodes];
          if ([v13 isEmpty])
          {
            v14 = [v12 addressNodes];
            v15 = [v14 cityNodes];
            v16 = [v15 momentNodes];
            v17 = [v16 urbanRoiNodes];
            v18 = [v17 isEmpty];

            v19 = v18 ^ 1;
          }

          else
          {
            v19 = 1;
          }

          v20 = [v11 happensAtFrequentLocation];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __81__PGShareBackLocationSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke;
          v49[3] = &unk_27888A328;
          v55 = &v72;
          v21 = v48;
          v56 = &v68;
          v50 = v21;
          v51 = v47;
          v58 = v19;
          v59 = v20;
          v52 = v44;
          v53 = v11;
          v57 = &v76;
          v54 = v45;
          [v11 enumerateAddressEdgesAndNodesUsingBlock:v49];
          v22 = *(v77 + 12) == 16;

          if (v22)
          {
            break;
          }

          if (v9 == ++v10)
          {
            v9 = [v43 countByEnumeratingWithState:&v60 objects:v84 count:16];
            if (v9)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v23 = *(v77 + 12) == 16;
      if (v23)
      {
        break;
      }

      if (++v42 == v40)
      {
        v40 = [obj countByEnumeratingWithState:&v64 objects:v85 count:16];
        if (v40)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  if ((v73[3] & 1) == 0)
  {
    *(v77 + 12) = 2;
    [v45 unionSet:v41];
    v25 = v44;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v77 + 12);
      v27 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
      *buf = 138412547;
      v81 = v27;
      v82 = 2113;
      v83 = v45;
      _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEFAULT, "[PGShareBackLocationSource] Moment nodes in interval has no location, processingValue: %@, possible contributions: %{private}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (*(v69 + 24))
  {
    if ([v45 count])
    {
      goto LABEL_29;
    }

    v24 = 8;
  }

  else
  {
    v24 = 4;
  }

  *(v77 + 12) = v24;
LABEL_29:
  v28 = v44;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(v77 + 12);
    v30 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
    *buf = 138412547;
    v81 = v30;
    v82 = 2113;
    v83 = v45;
    _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_DEFAULT, "[PGShareBackLocationSource] Moment nodes in interval has location, processingValue: %@, possible contributions: %{private}@", buf, 0x16u);
  }

LABEL_31:

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
LABEL_32:
  if (*(v77 + 12))
  {
    v31 = [PGShareBackSuggesterResult alloc];
    v32 = [(PGShareBackSuggesterResult *)v31 initWithInputs:v37 processingValue:*(v77 + 12) momentNodes:v45];
    v33 = [MEMORY[0x277CBEA60] arrayWithObject:v32];
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v76, 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __81__PGShareBackLocationSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 72) + 8) + 24) = 1;
  if (*(a1 + 32))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v9 = [*(a1 + 40) creationDate];
    v10 = [v7 universalStartDate];
    v11 = [v7 universalEndDate];
    v12 = v11;
    if (!v10 || !v11)
    {
      goto LABEL_25;
    }

    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v11];
    if ([v13 containsDate:v9])
    {

      v14 = 0.0;
    }

    else
    {
      [v9 timeIntervalSinceDate:v10];
      v16 = fabs(v15);
      [v9 timeIntervalSinceDate:v12];
      v14 = fmin(v16, fabs(v17));

      if (v14 >= 7200.0)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    v18 = [v8 location];
    if (v18)
    {
      [*(a1 + 32) distanceFromLocation:v18];
      v20 = v19;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    v21 = [v7 photoLocation];
    if (v21)
    {
      [*(a1 + 32) distanceFromLocation:v21];
      v20 = fmin(v20, v22);
    }

    v23 = [MEMORY[0x277D3ACD0] locationIsCoarse:*(a1 + 32)];
    v24 = 0x408F400000000000;
    v25 = 1800.0;
    if (*(a1 + 96) && (v23 & 1) == 0 && ([v8 isCoarse] & 1) == 0)
    {
      if (*(a1 + 97))
      {
        v24 = 0x405F400000000000;
        v25 = 0.0;
      }

      else
      {
        if (v20 > 1000.0)
        {
LABEL_24:

          goto LABEL_25;
        }

        v24 = 0x405F400000000000;
        v25 = 300.0;
      }
    }

    if (v20 <= 125.0 || v20 / 1.4 <= v25)
    {
      v32 = a4;
      v26 = *(a1 + 48);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 56);
        log = v26;
        v27 = [v30 uuid];
        v28 = *(a1 + 96);
        *buf = 138413826;
        v34 = v27;
        v35 = 2048;
        v36 = v20;
        v37 = 2048;
        v38 = v24;
        v39 = 1024;
        v40 = v28;
        v41 = 2048;
        v42 = v20 / 1.4;
        v43 = 2048;
        v44 = v14;
        v45 = 2048;
        v46 = v25;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGShareBackLocationSource] Moment node %@ matched with distance %.0f location threshold %.0f (urban: %d), timeToWalkToDestination %.0f, timeDistance %.0f, walking threshold %.0f", buf, 0x44u);
      }

      *(*(*(a1 + 88) + 8) + 24) = 16;
      [*(a1 + 64) addObject:*(a1 + 56)];
      *v32 = 1;
    }

    goto LABEL_24;
  }

LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
}

@end