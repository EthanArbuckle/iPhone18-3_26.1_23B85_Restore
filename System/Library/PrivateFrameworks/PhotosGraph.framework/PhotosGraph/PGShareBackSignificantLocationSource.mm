@interface PGShareBackSignificantLocationSource
- (BOOL)prepareSourceWithGraph:(id)graph;
- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error;
@end

@implementation PGShareBackSignificantLocationSource

- (id)suggesterResultsForInputs:(id)inputs momentNodes:(id)nodes inGraph:(id)graph error:(id *)error
{
  inputsCopy = inputs;
  loggingConnection = [(PGShareBackSource *)self loggingConnection];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  homeNodes = self->_homeNodes;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__PGShareBackSignificantLocationSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke;
  v17[3] = &unk_278883B30;
  v18 = inputsCopy;
  v19 = loggingConnection;
  v11 = v9;
  v20 = v11;
  v12 = loggingConnection;
  v13 = inputsCopy;
  [(MANodeCollection *)homeNodes enumerateNodesUsingBlock:v17];
  v14 = v20;
  v15 = v11;

  return v11;
}

void __92__PGShareBackSignificantLocationSource_suggesterResultsForInputs_momentNodes_inGraph_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 coordinate];
  v30 = v6;
  v31 = v7;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) location];
        v14 = v13;
        if (v13)
        {
          [v13 coordinate];
          v24 = v15;
          v25 = v16;
          CLLocationCoordinate2DGetDistanceFrom();
          if (v17 <= 200.0)
          {
            v18 = *(a1 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v33 = v5;
              _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGShareBackSignificantLocationSource] Matched home %@", buf, 0xCu);
            }

            v19 = [PGShareBackSuggesterResult alloc];
            v20 = *(a1 + 32);
            v21 = [MEMORY[0x277CBEB98] set];
            v22 = [(PGShareBackSuggesterResult *)v19 initWithInputs:v20 processingValue:2048 momentNodes:v21];

            [*(a1 + 48) addObject:v22];
            *a3 = 1;

            goto LABEL_14;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepareSourceWithGraph:(id)graph
{
  graphCopy = graph;
  loggingConnection = [(PGShareBackSource *)self loggingConnection];
  meNodeCollection = [graphCopy meNodeCollection];

  homeNodes = [meNodeCollection homeNodes];
  homeNodes = self->_homeNodes;
  self->_homeNodes = homeNodes;

  v9 = [(MAElementCollection *)self->_homeNodes count];
  if (!v9 && os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGShareBackSignificantLocationSource] No home available", v11, 2u);
  }

  return v9 != 0;
}

@end