@interface PPQuickTypeContactsServant
- (PPQuickTypeContactsServant)initWithOptions:(unsigned __int8)a3;
- (id)_mePredictionCacheKeyForQuery:(void *)a1;
- (id)_scoredMeContactWithMeContact:(uint64_t)a1;
- (id)quickTypeItemsWithQuery:(id)a3 limit:(unint64_t)a4 explanationSet:(id)a5;
- (uint64_t)_isSemanticTagEligible:(uint64_t)result;
@end

@implementation PPQuickTypeContactsServant

- (id)quickTypeItemsWithQuery:(id)a3 limit:(unint64_t)a4 explanationSet:(id)a5
{
  v150 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = -[PPQuickTypeContactsServant _isSemanticTagEligible:](self, [v8 semanticTag]);
  if ([v8 type] != 1 && !v10)
  {
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_131;
  }

  v12 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "prediction request to PPQuickTypeContactsServant-quickTypeItemsForQuery", buf, 2u);
  }

  if (([v8 fields] & 0x200000) == 0 && !+[PPQuickTypeSettings servantShouldRespondToQuery:](PPQuickTypeSettings, "servantShouldRespondToQuery:", self))
  {
    v21 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "ignoring prediction request for Contacts due to settings", buf, 2u);
    }

    [v9 push:47];
    v22 = 0;
    v23 = MEMORY[0x277CBEBF8];
    goto LABEL_132;
  }

  v13 = v8;
  v129 = v9;
  v123 = v9;
  if (!self)
  {
    v11 = 0;
    goto LABEL_130;
  }

  v121 = v13;
  v14 = v13;
  v122 = v8;
  v124 = a4;
  if ([v14 subtype] == 1)
  {

    goto LABEL_12;
  }

  v15 = -[PPQuickTypeContactsServant _isSemanticTagEligible:](self, [v14 semanticTag]);

  if (v15)
  {
LABEL_12:
    v16 = [v14 subtype];
    v17 = v14;
    v18 = v17;
    if (v16 != 1)
    {
      v19 = [v17 semanticTag] - 1;
      if (v19 > 0x10)
      {
        v20 = 0;
      }

      else
      {
        v20 = dword_2324188D4[v19];
      }

      v80 = [v18 copy];

      [v80 setType:1];
      [v80 setSubtype:1];
      [v80 setFields:v20];
      v18 = v80;
    }

    v66 = v18;
    v81 = v129;
    v82 = [PPQuickTypeContactsServant _mePredictionCacheKeyForQuery:v66];
    v11 = [(NSCache *)self->_meQuickTypeItemCache objectForKey:v82];
    v83 = pp_quicktype_log_handle();
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v84)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v83, OS_LOG_TYPE_DEBUG, "Me card prediction cache HIT", buf, 2u);
      }
    }

    else
    {
      if (v84)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v83, OS_LOG_TYPE_DEBUG, "Me card prediction cache MISS", buf, 2u);
      }

      v85 = [(PPLocalContactStore *)self->_localContactStore meCard];
      if (!v85)
      {
        v100 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v100, OS_LOG_TYPE_DEFAULT, "No Me card available to make Me prediction", buf, 2u);
        }

        [v81 push:9];
        v11 = 0;
        goto LABEL_116;
      }

      v83 = v85;
      [(PPQuickTypeContactsServant *)self _scoredMeContactWithMeContact:v85];
      v86 = v133 = self;
      *&v139 = v86;
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
      v88 = [v66 label];
      v89 = [v66 fields];
      v90 = [PPQuickTypeFormatter formatterWithQuery:v66];
      v11 = PPQuickTypeItemsForContacts(v87, v88, v89, v90, 0x14uLL, 1, v81);

      [(NSCache *)v133->_meQuickTypeItemCache setObject:v11 forKey:v82];
    }

    if (v10 && ([v66 fields] & 4) != 0 && objc_msgSend(v11, "count") >= 2)
    {
      v91 = objc_opt_new();
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v92 = v11;
      v93 = [v92 countByEnumeratingWithState:&v135 objects:buf count:16];
      if (v93)
      {
        v94 = v93;
        v95 = *v136;
        do
        {
          for (i = 0; i != v94; ++i)
          {
            if (*v136 != v95)
            {
              objc_enumerationMutation(v92);
            }

            v97 = *(*(&v135 + 1) + 8 * i);
            if (([v97 fields] & 4) != 0)
            {
              [v91 addObject:v97];
            }
          }

          v94 = [v92 countByEnumeratingWithState:&v135 objects:buf count:16];
        }

        while (v94);
      }

      v11 = [v91 copy];
    }

    if ([v11 count] > v124)
    {
      v98 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
      {
        v120 = [v11 count];
        *v147 = 134218240;
        *&v147[4] = v120;
        *&v147[12] = 2048;
        *&v147[14] = v124;
        _os_log_debug_impl(&dword_23224A000, v98, OS_LOG_TYPE_DEBUG, "Trimming down Me card prediction result from %lu to %lu", v147, 0x16u);
      }

      v99 = [v11 subarrayWithRange:{0, v124}];

      v11 = v99;
    }

LABEL_116:

    goto LABEL_129;
  }

  v24 = [v14 people];
  v25 = [v24 count];

  if (!v25)
  {
    v66 = objc_opt_new();
    localContactStore = self->_localContactStore;
    *&v135 = 0;
    v102 = [(PPLocalContactStore *)localContactStore rankedContactsWithQuery:v66 error:&v135];
    v103 = v135;
    if (v102)
    {
      v104 = [v14 label];
      v105 = [v14 fields];
      v106 = [PPQuickTypeFormatter formatterWithQuery:v14];
      v11 = PPQuickTypeItemsForContacts(v102, v104, v105, v106, v124, 0, v129);
    }

    else
    {
      v117 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v103;
        _os_log_error_impl(&dword_23224A000, v117, OS_LOG_TYPE_ERROR, "_predictionForPeopleQuery call to rankedContactsWithQuery with empty query returned nil and error = %@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v11 = MEMORY[0x277CBEBF8];
    }

    goto LABEL_128;
  }

  v128 = objc_opt_new();
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v26 = objc_alloc(MEMORY[0x277CBEB98]);
  v27 = [v14 people];
  v28 = [v26 initWithArray:v27];

  obj = v28;
  v29 = [v28 countByEnumeratingWithState:&v139 objects:&v135 count:16];
  if (!v29)
  {
    goto LABEL_72;
  }

  v30 = v29;
  v130 = *v140;
  v132 = self;
  v125 = v14;
  do
  {
    v31 = 0;
    v126 = v30;
    do
    {
      if (*v140 != v130)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v139 + 1) + 8 * v31);
      if ([v32 length])
      {
        v33 = [v14 fields];
        if (!v33)
        {
          v34 = pp_quicktype_log_handle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEFAULT, "query.fields is PPQuickTypeFieldNone. Setting justPreloadCache to YES.", buf, 2u);
          }
        }

        v35 = [v14 subtype];
        v36 = [v14 timeoutSeconds];
        v37 = v32;
        v38 = v129;
        v39 = v36;
        v40 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_23224A000, v40, OS_LOG_TYPE_DEBUG, "PPQuickTypeContactsServant: lookupScoredPeopleWithNamePrefix", buf, 2u);
        }

        v134 = v38;
        if (v35 != 12)
        {
          v41 = objc_opt_new();
          [v41 setOnlyQueryMostRelevantContacts:1];
          [v41 setMatchingName:v37];
          v42 = self->_localContactStore;
          *v147 = 0;
          v43 = [(PPLocalContactStore *)v42 rankedContactsWithQuery:v41 error:v147];
          v44 = *v147;
          if (v43)
          {
            if (!v33)
            {
              goto LABEL_42;
            }

LABEL_38:
            if (![v43 count])
            {
              goto LABEL_42;
            }

            v46 = pp_quicktype_log_handle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = [v43 count];
              *buf = 134217984;
              *&buf[4] = v47;
              _os_log_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEFAULT, "found and using %tu matches in most relevant contacts", buf, 0xCu);
            }

LABEL_66:
            [v128 addObjectsFromArray:v43];

            self = v132;
            goto LABEL_67;
          }

          v45 = pp_quicktype_log_handle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v44;
            _os_log_error_impl(&dword_23224A000, v45, OS_LOG_TYPE_ERROR, "error during most relevant contact lookup: %@", buf, 0xCu);
          }

          if (v33)
          {
            goto LABEL_38;
          }

LABEL_42:

          self = v132;
          v38 = v134;
        }

        v131 = v37;
        v48 = v37;
        v49 = v38;
        v50 = v39;
        v51 = [(NSCache *)self->_cachedNameLookups objectForKey:v48];
        v52 = pp_quicktype_log_handle();
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
        if (v51)
        {
          if (v53)
          {
            *buf = 138412290;
            *&buf[4] = v48;
            _os_log_debug_impl(&dword_23224A000, v52, OS_LOG_TYPE_DEBUG, "cache HIT for name prefix: %@", buf, 0xCu);
          }

          dispatch_semaphore_wait(*(v51 + 8), 0xFFFFFFFFFFFFFFFFLL);
          v41 = *(v51 + 16);
          if (![v41 count])
          {
            [v49 push:13];
          }

          dispatch_semaphore_signal(*(v51 + 8));
        }

        else
        {
          if (v53)
          {
            *buf = 138412290;
            *&buf[4] = v48;
            _os_log_debug_impl(&dword_23224A000, v52, OS_LOG_TYPE_DEBUG, "cache MISS for name prefix: %@", buf, 0xCu);
          }

          v54 = objc_opt_new();
          v55 = dispatch_semaphore_create(0);
          if (v54)
          {
            objc_storeStrong(v54 + 1, v55);
          }

          [(NSCache *)v132->_cachedNameLookups setObject:v54 forKey:v48];
          v56 = objc_opt_new();
          [v56 setMatchingName:v48];
          v57 = v132->_localContactStore;
          *buf = 0;
          if (v33)
          {
            [(PPLocalContactStore *)v57 contactsWithQuery:v56 explanationSet:v49 timeoutSeconds:v50 error:buf];
          }

          else
          {
            [(PPLocalContactStore *)v57 contactsWithQuery:v56 error:buf];
          }
          v58 = ;
          v59 = *buf;
          if (v54)
          {
            objc_storeStrong(v54 + 2, v58);

            dispatch_semaphore_signal(v54[1]);
            v60 = v54[2];
          }

          else
          {

            dispatch_semaphore_signal(0);
            v60 = 0;
          }

          if (![v60 count])
          {
            [v49 push:13];
          }

          if (v54)
          {
            v61 = v54[2];
          }

          else
          {
            v61 = 0;
          }

          v41 = v61;

          self = v132;
        }

        v43 = [(PPLocalContactStore *)self->_localContactStore scoredContactsWithContacts:v41];
        v44 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v62 = [v43 count];
          *buf = 134218242;
          *&buf[4] = v62;
          v145 = 2112;
          v146 = v43;
          _os_log_debug_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEBUG, "Scored %tu name matches: %@", buf, 0x16u);
        }

        v14 = v125;
        v30 = v126;
        v37 = v131;
        goto LABEL_66;
      }

LABEL_67:
      ++v31;
    }

    while (v30 != v31);
    v63 = [obj countByEnumeratingWithState:&v139 objects:&v135 count:16];
    v30 = v63;
  }

  while (v63);
LABEL_72:

  v64 = v128;
  v65 = v129;
  memset(v147, 0, sizeof(v147));
  v148 = 0u;
  v149 = 0u;
  v66 = v64;
  v67 = [v66 countByEnumeratingWithState:v147 objects:buf count:16];
  v68 = v66;
  v69 = v66;
  if (!v67)
  {
    goto LABEL_122;
  }

  v70 = v67;
  v71 = 0;
  v72 = **&v147[16];
  v73 = -1.0;
  while (2)
  {
    for (j = 0; j != v70; ++j)
    {
      if (**&v147[16] != v72)
      {
        objc_enumerationMutation(v66);
      }

      v75 = *(*&v147[8] + 8 * j);
      v76 = [v75 contact];
      v77 = [v76 source];

      if (v77 == 1)
      {
        ++v71;
        [v75 score];
        if (v73 == -1.0)
        {
          v73 = v78;
        }

        else if (vabdd_f64(v73, v78) > 0.0001)
        {

          v68 = [v66 sortedArrayUsingComparator:&__block_literal_global_24138];
          v107 = [v68 objectAtIndexedSubscript:0];
          [v107 score];
          v109 = v108;
          v110 = [v68 objectAtIndexedSubscript:1];
          [v110 score];
          v112 = v111 + v111;

          if (v109 <= v112)
          {
            v69 = v66;
          }

          else
          {
            v113 = [v68 objectAtIndexedSubscript:0];
            *v143 = v113;
            v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:1];
          }

          goto LABEL_122;
        }
      }
    }

    v70 = [v66 countByEnumeratingWithState:v147 objects:buf count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

  v69 = v66;
  if (v71 > 2 * v124)
  {
    v79 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      *v143 = 0;
      _os_log_debug_impl(&dword_23224A000, v79, OS_LOG_TYPE_DEBUG, "too many ambiguous matches, not returning anything", v143, 2u);
    }

    [v65 push:14];
    v69 = objc_opt_new();
    v68 = v66;
LABEL_122:
  }

  v103 = v69;

  v114 = [v14 label];
  v115 = [v14 fields];
  v116 = [PPQuickTypeFormatter formatterWithQuery:v14];
  v11 = PPQuickTypeItemsForContacts(v103, v114, v115, v116, v124, 0, v65);

LABEL_128:
LABEL_129:

  v13 = v121;
  v8 = v122;
LABEL_130:

  v9 = v123;
LABEL_131:
  v23 = v11;
  v22 = v23;
LABEL_132:

  v118 = *MEMORY[0x277D85DE8];

  return v22;
}

- (uint64_t)_isSemanticTagEligible:(uint64_t)result
{
  if (result)
  {
    objc_opt_self();
    if (_supportedPeopleSemanticTypes_onceToken != -1)
    {
      dispatch_once(&_supportedPeopleSemanticTypes_onceToken, &__block_literal_global_33_24159);
    }

    v3 = _supportedPeopleSemanticTypes_supportedPeopleSemanticTypes;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
    v5 = [v3 containsObject:v4];

    return v5;
  }

  return result;
}

uint64_t __89__PPQuickTypeContactsServant__applySmartLimitingToCandidates_clientLimit_explanationSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 compareDouble:v7 withDouble:v9];
}

- (id)_mePredictionCacheKeyForQuery:(void *)a1
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 fields];
  v5 = [v2 label];
  v6 = [v2 localeIdentifier];

  v7 = [v3 initWithFormat:@"%lu:%@:%@", v4, v5, v6];

  return v7;
}

- (id)_scoredMeContactWithMeContact:(uint64_t)a1
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v10 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = [v2 scoredContactsWithContacts:{v5, v10, v11}];

  v7 = [v6 firstObject];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __59__PPQuickTypeContactsServant__supportedPeopleSemanticTypes__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784F20, &unk_284784F38, &unk_284784F50, &unk_284784F68, &unk_284784F80, &unk_284784F98, &unk_284784FB0, &unk_284784FC8, &unk_284784FE0, &unk_284784FF8, &unk_284785010, 0}];
  objc_autoreleasePoolPop(v0);
  v2 = _supportedPeopleSemanticTypes_supportedPeopleSemanticTypes;
  _supportedPeopleSemanticTypes_supportedPeopleSemanticTypes = v1;
}

- (PPQuickTypeContactsServant)initWithOptions:(unsigned __int8)a3
{
  v67[4] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = PPQuickTypeContactsServant;
  v4 = [(PPQuickTypeContactsServant *)&v56 init];
  if (v4)
  {
    v5 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPQuickTypeContactsServant initializing", buf, 2u);
    }

    v6 = +[PPLocalContactStore defaultStore];
    localContactStore = v4->_localContactStore;
    v4->_localContactStore = v6;

    v8 = objc_opt_new();
    meQuickTypeItemCache = v4->_meQuickTypeItemCache;
    v4->_meQuickTypeItemCache = v8;

    [(NSCache *)v4->_meQuickTypeItemCache setCountLimit:6];
    if ((a3 & 1) == 0)
    {
      objc_initWeak(&location, v4->_cachedNameLookups);
      objc_initWeak(&from, v4->_meQuickTypeItemCache);
      v10 = MEMORY[0x277D3A458];
      *buf = MEMORY[0x277D85DD0];
      v64 = 3221225472;
      v65 = __55__PPQuickTypeContactsServant__registerForNotifications__block_invoke;
      v66 = &unk_2789797B8;
      objc_copyWeak(v67, &from);
      [v10 addMeCardObserverForLifetimeOfObject:v4 block:buf];
      v11 = MEMORY[0x277D3A458];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __55__PPQuickTypeContactsServant__registerForNotifications__block_invoke_19;
      v61[3] = &unk_2789797B8;
      objc_copyWeak(&v62, &location);
      [v11 addContactsObserverForLifetimeOfObject:v4 block:v61];
      v12 = MEMORY[0x277D3A458];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __55__PPQuickTypeContactsServant__registerForNotifications__block_invoke_20;
      v59[3] = &unk_2789797B8;
      objc_copyWeak(&v60, &location);
      [v12 addSuggestionsObserverForLifetimeOfObject:v4 block:v59];
      objc_destroyWeak(&v60);
      objc_destroyWeak(&v62);
      objc_destroyWeak(v67);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      v13 = objc_opt_new();
      v14 = v13;
      objc_storeStrong(&v4->_cachedNameLookups, v13);

      v15 = +[PPLabelMatcher sharedInstance];
      v16 = MEMORY[0x277D3A480];
      v17 = [MEMORY[0x277CBEAF8] currentLocale];
      v18 = [v17 localeIdentifier];
      v19 = [v16 quickTypeQueryWithType:0 subtype:0 semanticTag:0 fields:0 time:0 options:0 subFields:0 label:0 people:0 localeIdentifier:v18 bundleIdentifier:0 recipients:0];
      v20 = [PPQuickTypeFormatter formatterWithQuery:v19];

      v21 = [v20 makeBirthdayFormatter];
      if ([(PPLocalContactStore *)v4->_localContactStore chineseBirthdayFound])
      {
        v22 = [v20 makeChineseBirthdayFormatter];
        v23 = [v20 makeYearlessChineseBirthdayFormatter];
      }

      v24 = *MEMORY[0x277CBD940];
      *buf = *MEMORY[0x277CBD8E0];
      v64 = v24;
      v25 = *MEMORY[0x277CBD8D8];
      v65 = *MEMORY[0x277CBD8E8];
      v66 = v25;
      v26 = *MEMORY[0x277CBD928];
      v67[0] = *MEMORY[0x277CBD900];
      v67[1] = v26;
      v67[2] = *MEMORY[0x277CBD908];
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:7];
      v28 = [v20 formattedStringsForLabels:v27];

      v29 = [(PPLocalContactStore *)v4->_localContactStore meCard];
      if (v29)
      {
        v55 = [(PPQuickTypeContactsServant *)v4 _scoredMeContactWithMeContact:v29];
        v30 = pp_quicktype_log_handle();
        v31 = v30;
        if (v55)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "Precalculating basic Me card predictions", buf, 2u);
          }

          v32 = [MEMORY[0x277CBEAF8] currentLocale];
          v31 = [v32 localeIdentifier];

          [(NSCache *)v4->_meQuickTypeItemCache removeAllObjects];
          v54 = [MEMORY[0x277D3A480] quickTypeQueryWithType:1 subtype:1 semanticTag:0 fields:1 time:0 options:0 subFields:0 label:0 people:0 localeIdentifier:v31 bundleIdentifier:0 recipients:0];
          v33 = v4->_meQuickTypeItemCache;
          *buf = v55;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v35 = [PPQuickTypeFormatter formatterWithQuery:v54];
          v36 = PPQuickTypeItemsForContacts(v34, 0, 1u, v35, 0x14uLL, 1, 0);
          v37 = [PPQuickTypeContactsServant _mePredictionCacheKeyForQuery:v54];
          [(NSCache *)v33 setObject:v36 forKey:v37];

          v53 = [MEMORY[0x277D3A480] quickTypeQueryWithType:1 subtype:1 semanticTag:0 fields:2 time:0 options:0 subFields:0 label:0 people:0 localeIdentifier:v31 bundleIdentifier:0 recipients:0];
          v38 = v4->_meQuickTypeItemCache;
          v61[0] = v55;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
          v40 = [PPQuickTypeFormatter formatterWithQuery:v53];
          v41 = PPQuickTypeItemsForContacts(v39, 0, 2u, v40, 0x14uLL, 1, 0);
          v42 = [PPQuickTypeContactsServant _mePredictionCacheKeyForQuery:v53];
          [(NSCache *)v38 setObject:v41 forKey:v42];

          v43 = [MEMORY[0x277D3A480] quickTypeQueryWithType:1 subtype:1 semanticTag:0 fields:4 time:0 options:0 subFields:0 label:0 people:0 localeIdentifier:v31 bundleIdentifier:0 recipients:0];
          v44 = v4->_meQuickTypeItemCache;
          v59[0] = v55;
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
          v46 = [PPQuickTypeFormatter formatterWithQuery:v43];
          v47 = PPQuickTypeItemsForContacts(v45, 0, 4u, v46, 0x14uLL, 1, 0);
          v48 = [PPQuickTypeContactsServant _mePredictionCacheKeyForQuery:v43];
          [(NSCache *)v44 setObject:v47 forKey:v48];
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, v31, OS_LOG_TYPE_ERROR, "failed to score me card so cannot preload me card item cache", buf, 2u);
        }

        v49 = v55;
      }

      else
      {
        v49 = pp_quicktype_log_handle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v49, OS_LOG_TYPE_DEFAULT, "No me card available during preloading in Contacts servant", buf, 2u);
        }
      }
    }

    v50 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v50, OS_LOG_TYPE_INFO, "PPQuickTypeContactsServant initialization complete", buf, 2u);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
  return v4;
}

void __55__PPQuickTypeContactsServant__registerForNotifications__block_invoke(uint64_t a1)
{
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "clearing Me card cache due to Me Card change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeAllObjects];
}

void __55__PPQuickTypeContactsServant__registerForNotifications__block_invoke_19(uint64_t a1)
{
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "clearing PQT name lookup cache due to Contacts change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeAllObjects];
}

void __55__PPQuickTypeContactsServant__registerForNotifications__block_invoke_20(uint64_t a1)
{
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Notification: FoD contacts did change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeAllObjects];
}

@end