@interface SKGEntityRanker
- (id)addresses;
- (id)keyphrases;
- (id)links;
- (id)locations;
- (void)addEntity:(id)a3;
- (void)updateWithEntities:(id)a3;
@end

@implementation SKGEntityRanker

- (void)addEntity:(id)a3
{
  v43 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v43;
      links = self->_links;
      if (!links)
      {
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v23 = self->_links;
        self->_links = v22;

        links = self->_links;
      }

      v11 = [v4 link];
      v24 = [(NSMutableDictionary *)v11 lowercaseString];
      v25 = links;
      v26 = v4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v43;
        locations = self->_locations;
        if (!locations)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v28 = self->_locations;
          self->_locations = v27;

          locations = self->_locations;
        }

        v11 = [v4 description];
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v43;
        keyphrases = self->_keyphrases;
        if (!keyphrases)
        {
          v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v31 = self->_keyphrases;
          self->_keyphrases = v30;

          keyphrases = self->_keyphrases;
        }

        v32 = [v4 keyphrase];
        v33 = [(NSMutableDictionary *)keyphrases objectForKeyedSubscript:v32];

        if (!v33)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v35 = self->_keyphrases;
          v36 = [v4 keyphrase];
          [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v36];
        }

        v37 = self->_keyphrases;
        v11 = [v4 keyphrase];
        v24 = [(NSMutableDictionary *)v37 objectForKeyedSubscript:v11];
        [v24 addObject:v4];
        goto LABEL_15;
      }

      v4 = [objc_opt_class() description];
      entities = self->_entities;
      if (!entities)
      {
        v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v40 = self->_entities;
        self->_entities = v39;

        entities = self->_entities;
      }

      v41 = [(NSMutableDictionary *)entities objectForKeyedSubscript:v4];

      if (!v41)
      {
        v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)self->_entities setObject:v42 forKeyedSubscript:v4];
      }

      v11 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v4];
      v24 = [v43 description];
      v25 = v11;
      v26 = v43;
    }

    [(NSMutableDictionary *)v25 setObject:v26 forKeyedSubscript:v24];
LABEL_15:

    goto LABEL_21;
  }

  v4 = v43;
  dates = self->_dates;
  if (!dates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_dates;
    self->_dates = v6;

    dates = self->_dates;
  }

  v8 = [v4 date];
  v9 = [(NSMutableDictionary *)dates objectForKeyedSubscript:v8];

  locations = self->_dates;
  v11 = [v4 date];
  if (!v9)
  {
LABEL_20:
    [(NSMutableDictionary *)locations setObject:v4 forKeyedSubscript:v11];
    goto LABEL_21;
  }

  v12 = [(NSMutableDictionary *)locations objectForKeyedSubscript:v11];
  [v12 score];
  v14 = v13;
  [v4 score];
  v16 = v15;
  v17 = v4;
  if (v14 > v15)
  {
    v18 = self->_dates;
    v9 = [v4 date];
    v17 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v9];
  }

  v19 = self->_dates;
  v20 = [v4 date];
  [(NSMutableDictionary *)v19 setObject:v17 forKeyedSubscript:v20];

  if (v14 > v16)
  {
  }

LABEL_21:
}

- (void)updateWithEntities:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableDictionary *)self->_dates count]|| [(NSMutableDictionary *)self->_links count]|| [(NSMutableDictionary *)self->_locations count]|| [(NSMutableDictionary *)self->_entities count])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v5 = [(NSMutableDictionary *)self->_links allValues];
    v6 = [v5 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v55;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v55 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addLink:*(*(&v54 + 1) + 8 * i)];
          [v4 setDidProcessBreadcrumbs:1];
        }

        v7 = [v5 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v7);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [(NSMutableDictionary *)self->_locations allValues];
    v10 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v10)
    {
      v11 = v10;
      v36 = *v51;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v50 + 1) + 8 * j);
          v14 = [v13 address];
          if (v14)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v15 = [v13 expansions];
            v16 = [v15 countByEnumeratingWithState:&v46 objects:v60 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v47;
              do
              {
                for (k = 0; k != v17; ++k)
                {
                  if (*v47 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [v14 addComponent:*(*(&v46 + 1) + 8 * k)];
                }

                v17 = [v15 countByEnumeratingWithState:&v46 objects:v60 count:16];
              }

              while (v17);
            }

            if ([v13 fromPIR])
            {
              [v4 setDidMakePIRCall:1];
              if (([v4 errorCallingPIR] & 1) == 0)
              {
                [v4 setErrorCallingPIR:{objc_msgSend(v13, "hitPIRError")}];
              }
            }

            [v4 addLocation:v13];
            [v4 setDidProcessBreadcrumbs:1];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v11);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = self->_entities;
    obja = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (obja)
    {
      v33 = *v43;
      do
      {
        v20 = 0;
        do
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v32);
          }

          v37 = v20;
          v21 = *(*(&v42 + 1) + 8 * v20);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v22 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v21];
          v23 = [v22 countByEnumeratingWithState:&v38 objects:v58 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v39;
            do
            {
              v26 = 0;
              do
              {
                if (*v39 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v38 + 1) + 8 * v26);
                v28 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v21];
                v29 = [v28 objectForKeyedSubscript:v27];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v4 addLink:v29];
LABEL_43:
                  [v4 setDidProcessBreadcrumbs:1];
                  goto LABEL_46;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v4 addAddress:v29];
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v4 addLocation:v29];
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v4 addNamedLocation:v29];
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v4 addAirportLocation:v29];
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          objc_opt_isKindOfClass();
                        }
                      }
                    }
                  }
                }

LABEL_46:

                ++v26;
              }

              while (v24 != v26);
              v30 = [v22 countByEnumeratingWithState:&v38 objects:v58 count:16];
              v24 = v30;
            }

            while (v30);
          }

          v20 = v37 + 1;
        }

        while ((v37 + 1) != obja);
        obja = [(NSMutableDictionary *)v32 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (obja);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)links
{
  links = self->_links;
  if (links)
  {
    v3 = [(NSMutableDictionary *)links allValues];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_29];

  return v4;
}

uint64_t __24__SKGEntityRanker_links__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)addresses
{
  v3 = [objc_opt_class() description];
  v4 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v3];
    v6 = [v5 allValues];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_40_0];

  return v7;
}

uint64_t __28__SKGEntityRanker_addresses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)locations
{
  locations = self->_locations;
  if (locations)
  {
    v3 = [(NSMutableDictionary *)locations allValues];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_42];

  return v4;
}

uint64_t __28__SKGEntityRanker_locations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)keyphrases
{
  v69 = *MEMORY[0x277D85DE8];
  if (self->_keyphrases)
  {
    v2 = self;
    context = objc_autoreleasePoolPush();
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)v2->_keyphrases allKeys];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v64 = 0u;
    v47 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v47)
    {
      v45 = v2;
      v46 = *v62;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          v5 = v3;
          if (*v62 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v61 + 1) + 8 * i);
          v7 = [(NSMutableDictionary *)v2->_keyphrases objectForKeyedSubscript:v6];
          v8 = [v7 allObjects];

          v9 = [v8 firstObject];
          v10 = [SKGKeyphrase alloc];
          v11 = [v9 tokenCount];
          [v9 score];
          v12 = [(SKGKeyphrase *)v10 initWithKeyphrase:v6 components:MEMORY[0x277CBEBF8] tokenCount:v11 score:?];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v13 = v8;
          v14 = [v13 countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v58;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v58 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v57 + 1) + 8 * j) components];
                [(SKGKeyphrase *)v12 addComponents:v18];

                [(SKGKeyphrase *)v12 setCount:[(SKGKeyphrase *)v12 count]+ 1];
              }

              v15 = [v13 countByEnumeratingWithState:&v57 objects:v67 count:16];
            }

            while (v15);
          }

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKGKeyphrase tokenCount](v12, "tokenCount")}];
          v3 = v5;
          v20 = [v5 objectForKeyedSubscript:v19];

          if (!v20)
          {
            v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKGKeyphrase tokenCount](v12, "tokenCount")}];
            [v5 setObject:v21 forKeyedSubscript:v22];
          }

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKGKeyphrase tokenCount](v12, "tokenCount")}];
          v24 = [v5 objectForKeyedSubscript:v23];
          [v24 addObject:v12];

          v2 = v45;
        }

        v47 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v47);
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = v3;
    v28 = [v27 countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v48 = *v54;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v53 + 1) + 8 * k);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v32 = [v27 objectForKeyedSubscript:v31];
          v33 = [v32 countByEnumeratingWithState:&v49 objects:v65 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v50;
            do
            {
              for (m = 0; m != v34; ++m)
              {
                if (*v50 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v49 + 1) + 8 * m);
                [v37 score];
                if (fabs(v38) >= 1.0)
                {
                  v39 = v26;
                }

                else
                {
                  v39 = v25;
                }

                [v39 addObject:v37];
              }

              v34 = [v32 countByEnumeratingWithState:&v49 objects:v65 count:16];
            }

            while (v34);
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v29);
    }

    [v25 sortUsingSelector:sel_compareByRank_];
    [v26 sortUsingSelector:sel_compareByRank_];
    v40 = [v25 arrayByAddingObjectsFromArray:v26];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v40 = MEMORY[0x277CBEBF8];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

@end