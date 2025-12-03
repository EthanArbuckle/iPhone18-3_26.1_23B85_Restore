@interface PGShareBackCoreRoutineSource
- (BOOL)suggesterInput:(id)input isCloseEnoughToLocation:(id)location inDateInterval:(id)interval;
- (PGShareBackCoreRoutineSource)initWithRoutineService:(id)service loggingConnection:(id)connection;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackCoreRoutineSource

- (BOOL)suggesterInput:(id)input isCloseEnoughToLocation:(id)location inDateInterval:(id)interval
{
  inputCopy = input;
  locationCopy = location;
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  creationDate = [inputCopy creationDate];
  [creationDate timeIntervalSinceDate:startDate];
  v14 = fabs(v13);
  [creationDate timeIntervalSinceDate:endDate];
  v16 = fmin(v14, fabs(v15));
  v17 = [intervalCopy containsDate:creationDate];

  if ((v17 & 1) == 0 && v16 > 7200.0)
  {
    goto LABEL_6;
  }

  location = [inputCopy location];
  [locationCopy distanceFromLocation:location];
  v20 = v19;

  v21 = [MEMORY[0x277D3ACD0] locationIsCoarse:locationCopy];
  v22 = 125.0;
  if (v21)
  {
    v22 = 250.0;
  }

  if (v20 <= v22)
  {
    v24 = v16 / 3600.0;
    if (v16 < 300.0)
    {
      v24 = 2.0;
    }

    v23 = v20 * 0.001 / v24 <= 7.0;
  }

  else
  {
LABEL_6:
    v23 = 0;
  }

  return v23;
}

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  nodesCopy = nodes;
  selfCopy = self;
  loggingConnection = [(PGShareBackSource *)self loggingConnection];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v11 = inputsCopy;
  v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
  oslog = loggingConnection;
  if (v12)
  {
    v13 = v12;
    v14 = *v65;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v64 + 1) + 8 * i);
        asset = [v16 asset];
        v18 = asset;
        if (asset)
        {
          mediaAnalysisProperties = [asset mediaAnalysisProperties];
          syndicationProcessingValue = [mediaAnalysisProperties syndicationProcessingValue];

          if ((syndicationProcessingValue & 0x400) != 0)
          {
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v69 = v16;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGShareBackCoreRoutineSource] Suggester input %{private}@ previously matched with CoreRoutine visit", buf, 0xCu);
            }

            v38 = [PGShareBackSuggesterResult alloc];
            v39 = [MEMORY[0x277CBEB98] set];
            v40 = [(PGShareBackSuggesterResult *)v38 initWithInputs:v11 processingValue:1024 momentNodes:v39];

            v41 = [MEMORY[0x277CBEA60] arrayWithObject:v40];

            goto LABEL_46;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (([(CLSRoutineService *)selfCopy->_routineService hasLocationsOfInterestInformation]& 1) != 0)
  {
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45779];
    v22 = [v11 filteredArrayUsingPredicate:v21];

    if ([v22 count])
    {
      v23 = [PGShareBackSuggesterInput universalDateIntervalForSuggesterInputs:v11 withTimeIntervalPadding:7200.0];
      v24 = [(CLSRoutineService *)selfCopy->_routineService locationOfInterestVisitsInDateInterval:v23];
      if ([v24 count])
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v25 = v24;
        v46 = [v25 countByEnumeratingWithState:&v60 objects:v73 count:16];
        if (v46)
        {
          v26 = *v61;
          v51 = v22;
          v52 = nodesCopy;
          v49 = v24;
          v50 = v23;
          v48 = v25;
          v45 = *v61;
          do
          {
            v27 = 0;
            do
            {
              if (*v61 != v26)
              {
                objc_enumerationMutation(v25);
              }

              v47 = v27;
              v28 = *(*(&v60 + 1) + 8 * v27);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              obj = v22;
              v29 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v57;
                while (2)
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v57 != v31)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v33 = *(*(&v56 + 1) + 8 * j);
                    locationOfInterest = [v28 locationOfInterest];
                    location = [locationOfInterest location];
                    visitInterval = [v28 visitInterval];
                    v37 = [(PGShareBackCoreRoutineSource *)selfCopy suggesterInput:v33 isCloseEnoughToLocation:location inDateInterval:visitInterval];

                    if (v37)
                    {
                      v23 = v50;
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138478083;
                        v69 = v33;
                        v70 = 2113;
                        v71 = v28;
                        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "[PGShareBackCoreRoutineSource] Suggester input %{private}@ matched with CoreRoutine visit %{private}@", buf, 0x16u);
                      }

                      nodesCopy = v52;
                      v42 = [[PGShareBackSuggesterResult alloc] initWithInputs:v11 processingValue:1024 momentNodes:v52];
                      v41 = [MEMORY[0x277CBEA60] arrayWithObject:v42];

                      v22 = v51;
                      v24 = v49;
                      goto LABEL_44;
                    }
                  }

                  v30 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

              v27 = v47 + 1;
              v22 = v51;
              nodesCopy = v52;
              v24 = v49;
              v23 = v50;
              v25 = v48;
              v26 = v45;
            }

            while (v47 + 1 != v46);
            v46 = [v48 countByEnumeratingWithState:&v60 objects:v73 count:16];
          }

          while (v46);
        }
      }

      else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v69 = v23;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackCoreRoutineSource] Can't find core routine visits in date interval: %@", buf, 0xCu);
      }

      v41 = MEMORY[0x277CBEBF8];
LABEL_44:
    }

    else
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PGShareBackCoreRoutineSource] No inputs with valid location", buf, 2u);
      }

      v41 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackCoreRoutineSource] Can't find any recent core routine visits", buf, 2u);
    }

    v41 = MEMORY[0x277CBEBF8];
  }

LABEL_46:

  v43 = *MEMORY[0x277D85DE8];

  return v41;
}

BOOL __84__PGShareBackCoreRoutineSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 location];
  v3 = v2 != 0;

  return v3;
}

- (PGShareBackCoreRoutineSource)initWithRoutineService:(id)service loggingConnection:(id)connection
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = PGShareBackCoreRoutineSource;
  v8 = [(PGShareBackSource *)&v11 initWithLoggingConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_routineService, service);
  }

  return v9;
}

@end