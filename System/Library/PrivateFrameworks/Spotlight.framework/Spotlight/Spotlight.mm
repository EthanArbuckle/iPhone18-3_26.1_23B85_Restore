void __updateSiriEnabledStatus_block_invoke()
{
  AFSupportPreferencesSynchronize();
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v0 languageCode];

  v1 = [MEMORY[0x277CEF368] sharedPreferences];
  v2 = [v1 languageCode];
  v3 = [v2 componentsSeparatedByString:@"-"];
  v4 = [v3 firstObject];

  v5 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v5 assistantIsEnabled] && (AFAssistantRestricted() & 1) == 0)
  {
    [v4 isEqualToString:v6];
  }
}

unint64_t sp_analytics_log_timing(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - a3;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "label", a2);
  xpc_dictionary_set_double(empty, "latency", v4 / 1000000000.0);
  analytics_send_event();

  return v4;
}

uint64_t isSearchToolDebugModeOn(void)
{
  if (isSearchToolDebugModeOn(void)::onceToken != -1)
  {
    isSearchToolDebugModeOn();
  }

  return isSearchToolDebugModeOn(void)::debugEnabled;
}

uint64_t ___Z23isSearchToolDebugModeOnv_block_invoke()
{
  result = _os_feature_enabled_impl();
  isSearchToolDebugModeOn(void)::debugEnabled = result;
  return result;
}

uint64_t canLogIdentifierForBundle(NSString *a1)
{
  v1 = a1;
  if (isSearchToolDebugModeOn(void)::onceToken != -1)
  {
    isSearchToolDebugModeOn();
  }

  if (isSearchToolDebugModeOn(void)::debugEnabled)
  {
    v2 = 1;
  }

  else
  {
    if (canLogIdentifierForBundle(NSString *)::onceToken != -1)
    {
      canLogIdentifierForBundle();
    }

    v2 = [canLogIdentifierForBundle(NSString *)::ALLOWED_BUNDELS_FOR_ID_LOGGING containsObject:v1];
  }

  return v2;
}

void ___Z25canLogIdentifierForBundleP8NSString_block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D65A18];
  v4[0] = *MEMORY[0x277D65AB8];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = canLogIdentifierForBundle(NSString *)::ALLOWED_BUNDELS_FOR_ID_LOGGING;
  canLogIdentifierForBundle(NSString *)::ALLOWED_BUNDELS_FOR_ID_LOGGING = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void SPResultValueItem::SPResultValueItem(SPResultValueItem *this, CSSearchableItem *a2, double a3)
{
  v46 = a2;
  *(this + 4) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v45 = [(CSSearchableItem *)v46 attributeSet];
  v5 = [v45 attributeDictionary];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
  v44 = v6;
  v7 = [v5 objectForKey:*MEMORY[0x277CC3358]];
  v8 = *(this + 4);
  *(this + 4) = v7;

  *(this + 10) = 0;
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC3360]];
  v42 = v9;
  if (v9)
  {
    [v9 floatValue];
    *(this + 10) = v10;
  }

  *(this + 11) = 0;
  v11 = [v5 objectForKeyedSubscript:{*MEMORY[0x277CC3338], v42}];
  v12 = v11;
  v13 = *MEMORY[0x277CBEEE8];
  if (v11)
  {
    v14 = v11 == v13;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && [v11 count] == 3)
  {
    v15 = 0;
    v16 = 3.4028e38;
    do
    {
      v17 = [v12 objectAtIndexedSubscript:v15];
      [v17 floatValue];
      v19 = v18;

      if (v16 >= v19)
      {
        v16 = v19;
      }

      ++v15;
    }

    while (v15 != 3);
    if (v16 >= 0.0 && v16 <= 4.0)
    {
      *(this + 11) = (v16 * -0.5) + 1.0;
    }
  }

  v21 = *(this + 10);
  v22 = *(this + 11);
  v23 = [v6 isEqualToString:*MEMORY[0x277D65AD0]];
  v24 = (v22 * 0.6) + (v21 * 0.4);
  if (!v23)
  {
    v24 = (v22 * 0.9) + (v21 * 0.1);
  }

  *(this + 12) = v24;
  v25 = [v5 objectForKey:*MEMORY[0x277CC3348]];
  if (v25)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 length] == 16)
    {
      v26 = [v25 bytes];
      v27 = v26[1];
      *this = *v26;
      *(this + 1) = v27;
    }
  }

  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    SPResultValueItem::SPResultValueItem();
  }

  if ([v6 isEqualToString:*MEMORY[0x277D65A18]])
  {
    v28 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC3128]];
    *(this + 6) = 1;
    [v28 timeIntervalSinceReferenceDate];
    v30 = -vabdd_f64(v29, a3);
LABEL_27:
    *(this + 2) = v30;
    goto LABEL_28;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D65AB8]])
  {
    v28 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC2640]];
    if (v28 == v13)
    {
      goto LABEL_28;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    *(this + 6) = 1;
    [v28 timeIntervalSinceReferenceDate];
    goto LABEL_27;
  }

  v37 = &qword_281229E30;
  v38 = 7;
  while (1)
  {
    v28 = *v37;
    v39 = [v5 objectForKeyedSubscript:v28];
    if (v39 != v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v39 timeIntervalSinceReferenceDate];
        if (v40 > 0.0)
        {
          break;
        }
      }
    }

    ++v37;
    if (!--v38)
    {
      goto LABEL_29;
    }
  }

  *(this + 6) = v38;
  [v39 timeIntervalSinceReferenceDate];
  *(this + 2) = v41;

LABEL_28:
LABEL_29:
  v31 = [v45 curationScore];
  [v31 floatValue];
  *(this + 7) = v32;

  v33 = [(CSSearchableItem *)v46 protection];
  v34 = [v33 copy];
  v35 = *(this + 7);
  *(this + 7) = v34;

  v36 = *(this + 8);
  *(this + 8) = v46;
}

void getGreaterOperator(NSString *a1@<X2>, char a2@<W0>, void *a3@<X8>)
{
  v8 = a1;
  if (!SSPommesRankingIsEnabled())
  {
    *a3 = &unk_287C34EE0;
    goto LABEL_6;
  }

  v5 = [(NSString *)v8 isEqualToString:*MEMORY[0x277D65A18]];
  v6 = a2 & 3;
  if (v5)
  {
    if (v6 == 3)
    {
      *a3 = &unk_287C34EE0;
      v7 = calendarHybridGreaterOperator;
      goto LABEL_7;
    }

    *a3 = &unk_287C34EE0;
    if ((a2 & 1) == 0)
    {
      if ((a2 & 2) != 0)
      {
        v7 = calendarDenseGreaterOperator;
        goto LABEL_7;
      }

LABEL_6:
      v7 = rankingbitsGreaterOperator;
      goto LABEL_7;
    }

    v7 = calendarSparseGreaterOperator;
  }

  else
  {
    if (v6 == 3)
    {
      *a3 = &unk_287C34EE0;
      v7 = baseHybridGreaterOperator;
      goto LABEL_7;
    }

    *a3 = &unk_287C34EE0;
    if (a2)
    {
      v7 = baseSparseGreaterOperator;
    }

    else
    {
      if ((a2 & 2) == 0)
      {
        goto LABEL_6;
      }

      v7 = baseDenseGreaterOperator;
    }
  }

LABEL_7:
  a3[1] = v7;
  a3[3] = a3;
}

BOOL calendarHybridGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  v2 = *(a2 + 12);
  v3 = *(a1 + 12);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return *(a2 + 2) < *(a1 + 2);
  }

  return 0;
}

BOOL calendarSparseGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a1 + 10);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return *(a2 + 2) < *(a1 + 2);
  }

  return 0;
}

BOOL calendarDenseGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  v2 = *(a2 + 11);
  v3 = *(a1 + 11);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 >= v2)
  {
    return *(a2 + 2) < *(a1 + 2);
  }

  return 0;
}

BOOL rankingbitsGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0;
  }

  v3 = *(a2 + 7);
  v4 = *(a1 + 7);
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v5 = *(a2 + 6);
  v6 = *(a1 + 6);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  return *(a2 + 2) < *(a1 + 2);
}

BOOL baseHybridGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  v2 = *(a2 + 12);
  v3 = *(a1 + 12);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 < v2)
  {
    return 0;
  }

  v5 = *(a2 + 7);
  v6 = *(a1 + 7);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = *(a2 + 6);
  v8 = *(a1 + 6);
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 < v7)
  {
    return 0;
  }

  return *(a2 + 2) < *(a1 + 2);
}

BOOL baseSparseGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a1 + 10);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 < v2)
  {
    return 0;
  }

  v5 = *(a2 + 7);
  v6 = *(a1 + 7);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = *(a2 + 6);
  v8 = *(a1 + 6);
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 < v7)
  {
    return 0;
  }

  return *(a2 + 2) < *(a1 + 2);
}

BOOL baseDenseGreaterOperator(const SPResultValueItem *a1, const SPResultValueItem *a2)
{
  v2 = *(a2 + 11);
  v3 = *(a1 + 11);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 < v2)
  {
    return 0;
  }

  v5 = *(a2 + 7);
  v6 = *(a1 + 7);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = *(a2 + 6);
  v8 = *(a1 + 6);
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 < v7)
  {
    return 0;
  }

  return *(a2 + 2) < *(a1 + 2);
}

id getContainerId(CSSearchableItemAttributeSet *a1)
{
  v1 = a1;
  v2 = [(CSSearchableItemAttributeSet *)v1 bundleID];
  v3 = v2;
  if (!v2)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v4 = [v2 isEqualToString:*MEMORY[0x277D65AD0]];
  v5 = [v3 isEqualToString:*MEMORY[0x277D65B58]];
  v6 = [v3 isEqualToString:*MEMORY[0x277D65AB8]];
  if (v4)
  {
    v7 = [(CSSearchableItemAttributeSet *)v1 domainIdentifier];
LABEL_9:
    v8 = v7;
    goto LABEL_10;
  }

  if (v6)
  {
    v7 = [(CSSearchableItemAttributeSet *)v1 mailConversationID];
    goto LABEL_9;
  }

  if (v5)
  {
    v7 = [(CSSearchableItemAttributeSet *)v1 photosContainerIdentifier];
    goto LABEL_9;
  }

  v10 = [(CSSearchableItemAttributeSet *)v1 attributeDictionary];
  v8 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC3208]];

LABEL_10:

  return v8;
}

BOOL SPResultItemHashTableEntryRecencyLess::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 64))
  {
    v3 = *(a3 + 64) == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3 || *(a2 + 16) < *(a3 + 16);
}

uint64_t SPResultItemHashTableEntryRankingLess::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v6;
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v21 = v7;
  v22 = v8;
  v23 = *(a3 + 48);
  v24 = *(a3 + 56);
  v25 = *(a3 + 64);
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v15 = v10;
  v16 = v11;
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  result = std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a1, v20, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    v10 = std::__throw_bad_function_call[abi:nn200100]();
    SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(v4);
    SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(v3);
    _Unwind_Resume(v10);
  }

  v8 = (*(*v5 + 48))(v5);

  return v8;
}

uint64_t getMaxHeapSize(NSString *a1, int a2, int a3, unsigned int a4, uint64_t a5)
{
  v9 = [(NSString *)a1 isEqualToString:*MEMORY[0x277D65AB8]];
  v10 = 30;
  if (!a2)
  {
    v10 = a5;
  }

  v11 = 5 * v10;
  if (a3)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = v11;
  }

  v12 = a4;
  if (v10 < a4)
  {
    v12 = v10;
  }

  if (v10 >= 1)
  {
    return v12;
  }

  else
  {
    return a4;
  }
}

uint64_t collectIndexResults(void *a1, void *a2, int a3, int a4, uint64_t a5, uint64_t *a6)
{
  v66 = *MEMORY[0x277D85DE8];
  v45 = a1;
  v44 = a2;
  [v44 currentTime];
  v11 = v10;
  *v50 = [v44 isSearchToolClient];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v45;
  v12 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v12)
  {
    v53 = 0;
    v54 = *v57;
    v13 = 30;
    if (!*v50)
    {
      v13 = a5;
    }

    v48 = v13;
    v49 = *MEMORY[0x277D65AB8];
    v14 = 5 * v13;
    if (a3)
    {
      v14 = 0;
    }

    v47 = v14;
    v15 = a4;
    v46 = *MEMORY[0x277CC3358];
    do
    {
      v55 = v12;
      for (i = 0; i != v55; ++i)
      {
        if (*v57 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        v18 = [v17 attributeSet];
        v19 = [v18 bundleID];

        if (v19)
        {
          v20 = SPLogForSPLogCategoryDefault();
          v21 = v20;
          if (*MEMORY[0x277D4BF48])
          {
            v22 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v22 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v20, v22))
          {
            v23 = *a6;
            v24 = a6[1];
            *buf = 134218498;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            *&buf[24] = v19;
            _os_log_impl(&dword_26B71B000, v21, v22, "[qid=%llu][%@][SpotlightRanking] Got result for bundle %@", buf, 0x20u);
          }

          v25 = [v17 attributeSet];
          v26 = [v25 expirationDate];

          if (v26 && ([v26 timeIntervalSinceReferenceDate], v27 < v11))
          {
            v28 = SPLogForSPLogCategoryDefault();
            v29 = v28;
            if (*MEMORY[0x277D4BF48])
            {
              v30 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v30 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v28, v30))
            {
              v31 = *a6;
              v32 = a6[1];
              *buf = 134219010;
              *&buf[4] = v31;
              *&buf[12] = 2112;
              *&buf[14] = v32;
              *&buf[22] = 2112;
              *&buf[24] = v26;
              v61 = 2112;
              v62 = v17;
              v63 = 2112;
              v64 = v19;
              _os_log_impl(&dword_26B71B000, v29, v30, "[qid=%llu][%@][SpotlightRanking] dropping expired (%@) item (%@) from %@", buf, 0x34u);
            }
          }

          else
          {
            v33 = [v19 isEqualToString:v49];
            v34 = v47;
            if (!v33)
            {
              v34 = 0;
            }

            if (!v34)
            {
              v34 = v48;
            }

            if (v34 >= v15)
            {
              v35 = v15;
            }

            else
            {
              v35 = v34;
            }

            if (v34 >= 1)
            {
              v36 = v35;
            }

            else
            {
              v36 = v15;
            }

            v37 = [v17 attributeSet];
            v38 = [v37 attributeDictionary];
            v39 = [v38 objectForKey:v46];
            v40 = v39;
            v41 = &unk_287C3B710;
            if (v39)
            {
              v41 = v39;
            }

            v29 = v41;

            memset(buf, 0, sizeof(buf));
            getGreaterOperator(v19, [v29 intValue], buf);
            v53 |= IndexResultsRegistry::collectResult(a6, v36, v19, v29, v17, buf, v11);
            std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](buf);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v53) = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v53 & 1;
}

uint64_t IndexResultsRegistry::collectResult(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5, uint64_t a6, double a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  IndexResults = IndexResultsRegistry::getOrCreateIndexResults(a1, a2, v13, v14, a6);
  v17 = IndexResults::collectResult(IndexResults, *a1, *(a1 + 8), v15, a7);

  return v17;
}

uint64_t IndexResults::IndexResults(uint64_t a1, unsigned int a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  *a1 = a2;
  v11 = v9;
  *(a1 + 8) = v11;
  v12 = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = 0;
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](a1 + 32, a5);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  SPResultValueItem::SPResultValueItem(v16, 0, 0.0);
  v20 = 0;
  *(a1 + 88) = a2;
  std::vector<SPResultValueItemHashTableEntry>::vector[abi:nn200100]((a1 + 96), a2);

  SPResultValueItem::SPResultValueItem(v16, 0, 0.0);
  v20 = 0;
  *(a1 + 120) = a2;
  std::vector<SPResultValueItemHashTableEntry>::vector[abi:nn200100]((a1 + 128), a2);

  v13 = objc_opt_new();
  v14 = *(a1 + 24);
  *(a1 + 24) = v13;

  return a1;
}

void sub_26B71FADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v13 = v12;
  a9 = v13;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100]((v9 + 4));

  _Unwind_Resume(a1);
}

uint64_t IndexResults::collectResult(IndexResults *this, uint64_t a2, NSString *a3, CSSearchableItem *a4, double a5)
{
  v133 = *MEMORY[0x277D85DE8];
  v90 = a3;
  v8 = a4;
  v9 = *(this + 3);
  v89 = v8;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = *(this + 3);
    *(this + 3) = v10;

    v9 = *(this + 3);
  }

  v12 = [(CSSearchableItem *)v8 uniqueIdentifier];
  [v9 addObject:v12];

  memset(v122, 0, sizeof(v122));
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  SPResultValueItem::SPResultValueItem(&v119, v8, a5);
  v91 = (this + 64);
  v92 = v90;
  *&v98 = this + 64;
  if (isSearchToolDebugModeOn(void)::onceToken != -1)
  {
    IndexResults::collectResult();
  }

  if (isSearchToolDebugModeOn(void)::debugEnabled == 1)
  {
    v13 = [*&v122[1] bundleID];
    v14 = canLogIdentifierForBundle(v13);

    if (v14)
    {
      v15 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*&v122[1] bundleID];
        v17 = [*&v122[1] uniqueIdentifier];
        v18 = v121;
        v19 = [*&v122[1] attributeSet];
        v20 = getContainerId(v19);
        *buf = 134220802;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = v92;
        *&buf[22] = 2112;
        *&buf[24] = @"add item";
        *&buf[32] = 2048;
        *&buf[34] = &v98;
        *&buf[42] = 2112;
        *&buf[44] = v16;
        *&buf[52] = 2112;
        *&buf[54] = v17;
        *&buf[62] = 2112;
        *v124 = v18;
        *&v124[8] = 2112;
        *&v124[10] = v20;
        v125 = 2048;
        v126 = *(&v121 + 2);
        v127 = 2048;
        v128 = *(&v121 + 3);
        v129 = 2048;
        v130 = *v122;
        v131 = 2048;
        v132 = v120;
        _os_log_impl(&dword_26B71B000, v15, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> %@ queue: %p, bundle = %@, item = %@, retrievalType = %@ containerId = %@, score: (sparseScore: %f denseScore: %f, hybridScore: %f, timestamp: %f)", buf, 0x7Au);
      }
    }

    else
    {
      v15 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*&v122[1] bundleID];
        v22 = [*&v122[1] uniqueIdentifier];
        v23 = CFHash(v22);
        v24 = v121;
        v25 = [*&v122[1] attributeSet];
        v26 = getContainerId(v25);
        *buf = 134220802;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = v92;
        *&buf[22] = 2112;
        *&buf[24] = @"add item";
        *&buf[32] = 2048;
        *&buf[34] = &v98;
        *&buf[42] = 2112;
        *&buf[44] = v21;
        *&buf[52] = 2048;
        *&buf[54] = v23;
        *&buf[62] = 2112;
        *v124 = v24;
        *&v124[8] = 2112;
        *&v124[10] = v26;
        v125 = 2048;
        v126 = *(&v121 + 2);
        v127 = 2048;
        v128 = *(&v121 + 3);
        v129 = 2048;
        v130 = *v122;
        v131 = 2048;
        v132 = v120;
        _os_log_impl(&dword_26B71B000, v15, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> %@ queue: %p, bundle = %@, item = %lu, retrievalType = %@ containerId = %@, score: (sparseScore: %f denseScore: %f, hybridScore: %f, timestamp: %f)", buf, 0x7Au);
      }
    }
  }

  v27 = *(this + 9);
  if (0xCCCCCCCCCCCCCCCDLL * ((v27 - *(this + 8)) >> 4) >= *this)
  {
    v112[0] = v119;
    v112[1] = v120;
    v113 = v121;
    v114 = *(&v121 + 1);
    v115 = v122[0];
    v116 = *(&v122[0] + 1);
    v117 = *&v122[1];
    v29 = *(this + 8);
    v30 = *(v29 + 16);
    v106[0] = *v29;
    v106[1] = v30;
    v31 = *(v29 + 32);
    v32 = *(v29 + 48);
    v33 = *(v29 + 40);
    v107 = v31;
    v108 = v33;
    v109 = v32;
    v110 = *(v29 + 56);
    v111 = *(v29 + 64);
    v34 = std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(this + 32, v112, v106);
    if (v34)
    {
      v35 = *(this + 8);
      v36 = *(this + 9);
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](v105, this + 32);
      std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>,std::__wrap_iter<SPResultValueItem*>>(v35, v36, v105, 0xCCCCCCCCCCCCCCCDLL * ((v36 - v35) >> 4));
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v105);
      *&buf[48] = 0u;
      *v124 = 0u;
      v37 = *(this + 9);
      v38 = *(v37 - 64);
      *buf = *(v37 - 80);
      *&buf[16] = v38;
      v39 = *(v37 - 48);
      *(v37 - 48) = 0;
      *&buf[32] = v39;
      v40 = *(v37 - 40);
      *&buf[48] = *(v37 - 32);
      *&buf[40] = v40;
      v42 = *(v37 - 24);
      v41 = *(v37 - 16);
      *(v37 - 24) = 0;
      *(v37 - 16) = 0;
      *&buf[56] = v42;
      *v124 = v41;
      std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(v91, v37 - 80);
      *(this + 9) = v37 - 80;
      if ((v37 - 80) >= *(this + 10))
      {
        v37 = std::vector<SPResultValueItem>::__emplace_back_slow_path<SPResultValueItem>(v91, &v119);
      }

      else
      {
        v43 = v120;
        *(v37 - 80) = v119;
        *(v37 - 64) = v43;
        v44 = v121;
        *&v121 = 0;
        *(v37 - 48) = v44;
        v45 = *(&v121 + 1);
        *(v37 - 32) = v122[0];
        *(v37 - 40) = v45;
        v46 = *(v122 + 8);
        *&v122[1] = 0;
        *(&v122[0] + 1) = 0;
        *(v37 - 24) = v46;
      }

      *(this + 9) = v37;
      v48 = *(this + 8);
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](v104, this + 32);
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(v48, v37, v104, 0xCCCCCCCCCCCCCCCDLL * ((v37 - v48) >> 4));
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v104);
      v119 = *buf;
      v120 = *&buf[16];
      v49 = v121;
      *&v121 = v39;
      v50 = v39;

      *(&v121 + 1) = *&buf[40];
      LODWORD(v122[0]) = *&buf[48];
      v51 = *(&v122[0] + 1);
      *(&v122[0] + 1) = v42;
      v52 = v42;

      v53 = *&v122[1];
      *&v122[1] = v41;
      v54 = v41;
    }

    v55 = [*&v122[1] attributeSet];
    v56 = getContainerId(v55);

    if (!v56)
    {
      v65 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v85 = [*&v122[1] bundleID];
        v86 = [*&v122[1] uniqueIdentifier];
        v87 = CFHash(v86);
        *buf = 134219010;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = v92;
        *&buf[22] = 2048;
        *&buf[24] = v91;
        *&buf[32] = 2112;
        *&buf[34] = v85;
        *&buf[42] = 2048;
        *&buf[44] = v87;
      }

      goto LABEL_51;
    }

    *v124 = 0u;
    memset(buf, 0, sizeof(buf));
    v57 = CFHash(v56);
    SPResultValueItem::SPResultValueItem(buf, *&v122[1], a5);
    *&v124[8] = v57;
    *v101 = 0u;
    *v102 = 0u;
    v99 = 0u;
    *obj = 0u;
    v98 = 0u;
    SPResultValueItem::SPResultValueItem(&v98, 0, a5);
    v102[1] = 0;
    std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](v103, this + 32);
    v58 = *(this + 22);
    if (v58 && ((v59 = (*&v124[8] - 1) % v58, v60 = SPResultItemHashTableEntryRankingLess::operator()(v103, *(this + 12) + 80 * v59, buf), v61 = *(this + 12), (v60 & 1) != 0) || !*(v61 + 80 * v59 + 72)))
    {
      v66 = (v61 + 80 * v59);
      v67 = *(v66 + 1);
      v98 = *v66;
      v99 = v67;
      objc_storeStrong(obj, v66[4]);
      v68 = v66[5];
      LODWORD(v101[0]) = *(v66 + 12);
      obj[1] = v68;
      objc_storeStrong(&v101[1], v66[7]);
      objc_storeStrong(v102, v66[8]);
      v102[1] = v66[9];
      v69 = *(this + 12) + 80 * v59;
      v70 = *&buf[16];
      *v69 = *buf;
      *(v69 + 16) = v70;
      objc_storeStrong((v69 + 32), *&buf[32]);
      v71 = *&buf[40];
      *(v69 + 48) = *&buf[48];
      *(v69 + 40) = v71;
      objc_storeStrong((v69 + 56), *&buf[56]);
      objc_storeStrong((v69 + 64), *v124);
      *(v69 + 72) = *&v124[8];
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v103);
      if (!v102[0])
      {
        goto LABEL_50;
      }

      logSPResultValueItemHashTableEntry(a2, v92, v91, &cfstr_PutNewentryToR_0.isa, buf);
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      SPResultValueItem::SPResultValueItem(&v93, 0, a5);
      *(&v97 + 1) = 0;
      v72 = *(this + 30);
      if (!v72 || (v73 = (v102[1] - 1) % v72, v74 = *(this + 16) + 80 * v73, *(v74 + 64)) && v102[0] && *(v74 + 16) >= *&v99 && *(v74 + 72))
      {
        v75 = @"cannot put existingEntry to RecencyTables";
      }

      else
      {
        v78 = *(v74 + 16);
        v93 = *v74;
        v94 = v78;
        objc_storeStrong(&v95, *(v74 + 32));
        v79 = *(v74 + 40);
        LODWORD(v96) = *(v74 + 48);
        *(&v95 + 1) = v79;
        objc_storeStrong(&v96 + 1, *(v74 + 56));
        objc_storeStrong(&v97, *(v74 + 64));
        *(&v97 + 1) = *(v74 + 72);
        v80 = *(this + 16) + 80 * v73;
        v81 = v99;
        *v80 = v98;
        *(v80 + 16) = v81;
        objc_storeStrong((v80 + 32), obj[0]);
        v82 = obj[1];
        *(v80 + 48) = v101[0];
        *(v80 + 40) = v82;
        objc_storeStrong((v80 + 56), v101[1]);
        objc_storeStrong((v80 + 64), v102[0]);
        *(v80 + 72) = v102[1];
        if (v97)
        {
          logSPResultValueItemHashTableEntry(a2, v92, v91, &cfstr_DiscardedOlden.isa, &v93);
        }

        v75 = @"put existingEntry to RecencyTables";
      }

      logSPResultValueItemHashTableEntry(a2, v92, v91, &v75->isa, &v98);
    }

    else
    {
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v103);
      v62 = *(this + 30);
      if (!v62 || ((v63 = *(this + 16) + 80 * ((*&v124[8] - 1) % v62), *(v63 + 64)) ? (v64 = *v124 == 0) : (v64 = 1), !v64 && *(v63 + 16) >= *&buf[16] && *(v63 + 72)))
      {
        logSPResultValueItemHashTableEntry(a2, v92, v91, &cfstr_CannotPutNewen.isa, buf);
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      v76 = *&buf[16];
      *v63 = *buf;
      *(v63 + 16) = v76;
      objc_storeStrong((v63 + 32), *&buf[32]);
      v77 = *&buf[40];
      *(v63 + 48) = *&buf[48];
      *(v63 + 40) = v77;
      objc_storeStrong((v63 + 56), *&buf[56]);
      objc_storeStrong((v63 + 64), *v124);
      *(v63 + 72) = *&v124[8];
      logSPResultValueItemHashTableEntry(a2, v92, v91, &cfstr_PutNewentryToR.isa, buf);
    }

    v34 = 1;
    goto LABEL_50;
  }

  if (v27 >= *(this + 10))
  {
    v28 = std::vector<SPResultValueItem>::__emplace_back_slow_path<SPResultValueItem&>(v91, &v119);
  }

  else
  {
    std::allocator_traits<std::allocator<SPResultValueItem>>::construct[abi:nn200100]<SPResultValueItem,SPResultValueItem&,0>(v91, *(this + 9), &v119);
    v28 = v27 + 80;
    *(this + 9) = v28;
  }

  *(this + 9) = v28;
  v47 = *(this + 8);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](v118, this + 32);
  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(v47, v28, v118, 0xCCCCCCCCCCCCCCCDLL * ((v28 - v47) >> 4));
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v118);
  v34 = 1;
LABEL_52:

  v83 = *MEMORY[0x277D85DE8];
  return v34;
}

void sub_26B720748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(&a25);
  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry((v72 - 256));

  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(&a71);
  _Unwind_Resume(a1);
}

void logSPResultValueItemHashTableEntry(uint64_t a1, NSString *a2, void *a3, NSString *a4, id *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v36 = a3;
  v10 = a4;
  if (isSearchToolDebugModeOn(void)::onceToken != -1)
  {
    isSearchToolDebugModeOn();
  }

  if (isSearchToolDebugModeOn(void)::debugEnabled == 1)
  {
    v11 = [a5[8] bundleID];
    v12 = canLogIdentifierForBundle(v11);

    if (v12)
    {
      v13 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [a5[8] bundleID];
        v15 = [a5[8] uniqueIdentifier];
        v16 = a5[4];
        v17 = [a5[8] attributeSet];
        v18 = getContainerId(v17);
        v19 = a5[9];
        v20 = *(a5 + 10);
        v21 = *(a5 + 11);
        v22 = *(a5 + 12);
        v23 = a5[2];
        *buf = 134221058;
        v38 = a1;
        v39 = 2112;
        v40 = v9;
        v41 = 2112;
        v42 = v10;
        v43 = 2048;
        v44 = &v36;
        v45 = 2112;
        v46 = v14;
        v47 = 2112;
        v48 = v15;
        v49 = 2112;
        v50 = v16;
        v51 = 2112;
        v52 = v18;
        v53 = 2048;
        v54 = v19;
        v55 = 2048;
        v56 = v20;
        v57 = 2048;
        v58 = v21;
        v59 = 2048;
        v60 = v22;
        v61 = 2048;
        v62 = v23;
        _os_log_impl(&dword_26B71B000, v13, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> %@ queue: %p, bundle = %@, item = %@, retrievalType = %@ containerId = (%@, %lu), score: (sparseScore: %f denseScore: %f, hybridScore: %f, timestamp: %f)", buf, 0x84u);
      }
    }

    else
    {
      v13 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [a5[8] bundleID];
        v24 = [a5[8] uniqueIdentifier];
        v25 = CFHash(v24);
        v26 = a5[4];
        v27 = [a5[8] attributeSet];
        v28 = getContainerId(v27);
        v29 = a5[9];
        v30 = *(a5 + 10);
        v31 = *(a5 + 11);
        v32 = *(a5 + 12);
        v33 = a5[2];
        *buf = 134221058;
        v38 = a1;
        v39 = 2112;
        v40 = v9;
        v41 = 2112;
        v42 = v10;
        v43 = 2048;
        v44 = &v36;
        v45 = 2112;
        v46 = v35;
        v47 = 2048;
        v48 = v25;
        v49 = 2112;
        v50 = v26;
        v51 = 2112;
        v52 = v28;
        v53 = 2048;
        v54 = v29;
        v55 = 2048;
        v56 = v30;
        v57 = 2048;
        v58 = v31;
        v59 = 2048;
        v60 = v32;
        v61 = 2048;
        v62 = v33;
        _os_log_impl(&dword_26B71B000, v13, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> %@ queue: %p, bundle = %@, item = %lu, retrievalType = %@ containerId = (%@, %lu), score: (sparseScore: %f denseScore: %f, hybridScore: %f, timestamp: %f)", buf, 0x84u);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t IndexResults::removeResult(IndexResults *this, unint64_t a2, NSString *a3, CSSearchableItemAttributeSet *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v61 = a4;
  v59 = [(CSSearchableItemAttributeSet *)v61 uniqueIdentifier];
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](v72, this + 32);
  v6 = *(this + 8);
  v7 = *(this + 9);
  v8 = v59;
  if (v6 != v7)
  {
    while (1)
    {
      v9 = [*(v6 + 8) uniqueIdentifier];
      v10 = [v9 isEqualToString:v8];

      if (v10)
      {
        break;
      }

      v6 += 5;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  v11 = *(this + 9);
  if (v6 == v11)
  {

    std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v72);
    v33 = getContainerId(v61);
    if ([v33 length])
    {
      v34 = CFHash(v33) - 1;
      v35 = *(this + 12) + 80 * (v34 % *(this + 22));
      v36 = *(v35 + 64);
      if (v36)
      {
        v37 = [v36 attributeSet];
        v38 = [v37 uniqueIdentifier];
        v39 = [v38 isEqualToString:v8];

        if (v39)
        {
          SPResultValueItem::SPResultValueItem(&v62, 0, 0.0);
          v69 = 0;
          v40 = *(this + 12) + 80 * (v34 % *(this + 22));
          v41 = v63;
          *v40 = v62;
          *(v40 + 16) = v41;
          objc_storeStrong((v40 + 32), obj);
          v42 = v65;
          *(v40 + 48) = v66;
          *(v40 + 40) = v42;
          objc_storeStrong((v40 + 56), v67);
          objc_storeStrong((v40 + 64), v68);
          *(v40 + 72) = v69;

LABEL_20:
          v54 = v33;
          v43 = 1;
LABEL_22:

          goto LABEL_23;
        }
      }

      v44 = *(this + 16) + 80 * (v34 % *(this + 30));
      v45 = *(v44 + 16);
      *v35 = *v44;
      *(v35 + 16) = v45;
      objc_storeStrong((v35 + 32), *(v44 + 32));
      v46 = *(v44 + 40);
      *(v35 + 48) = *(v44 + 48);
      *(v35 + 40) = v46;
      objc_storeStrong((v35 + 56), *(v44 + 56));
      objc_storeStrong((v35 + 64), *(v44 + 64));
      *(v35 + 72) = *(v44 + 72);
      v47 = *(v35 + 64);
      if (v47)
      {
        v48 = [v47 attributeSet];
        v49 = [v48 uniqueIdentifier];
        v50 = [v49 isEqualToString:v8];

        if (v50)
        {
          SPResultValueItem::SPResultValueItem(&v62, 0, 0.0);
          v69 = 0;
          v51 = *(this + 16) + 80 * (v34 % *(this + 30));
          v52 = v63;
          *v51 = v62;
          *(v51 + 16) = v52;
          objc_storeStrong((v51 + 32), obj);
          v53 = v65;
          *(v51 + 48) = v66;
          *(v51 + 40) = v53;
          objc_storeStrong((v51 + 56), v67);
          objc_storeStrong((v51 + 64), v68);
          *(v51 + 72) = v69;

          goto LABEL_20;
        }
      }
    }

    v54 = v33;
    v43 = 0;
    goto LABEL_22;
  }

  v12 = v11 - 5;
  if (v6 == v11 - 5)
  {
    std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(this + 64, (v11 - 5));
    *(this + 9) = v12;
  }

  else
  {
    v13 = v6[1];
    v62 = *v6;
    v63 = v13;
    v14 = *(v6 + 4);
    *(v6 + 4) = 0;
    v70 = *(v6 + 5);
    v71 = *(v6 + 12);
    v57 = *(v6 + 8);
    v58 = *(v6 + 7);
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    v15 = *(v11 - 4);
    *v6 = *v12;
    v6[1] = v15;
    v17 = (v11 - 3);
    v16 = *(v11 - 6);
    *(v12 + 4) = 0;
    v18 = *(v6 + 4);
    *(v6 + 4) = v16;

    v19 = *(v12 + 5);
    *(v6 + 12) = *(v12 + 12);
    *(v6 + 5) = v19;
    v20 = *(v12 + 7);
    *(v12 + 7) = 0;
    v21 = *(v6 + 7);
    *(v6 + 7) = v20;

    v22 = *(v12 + 8);
    *(v12 + 8) = 0;
    v23 = *(v6 + 8);
    *(v6 + 8) = v22;

    *v12 = v62;
    v12[1] = v63;
    v24 = *v17;
    *v17 = v14;

    *(v12 + 5) = v70;
    *(v12 + 12) = v71;
    v25 = *(v12 + 7);
    *(v12 + 7) = v58;

    v26 = *(v12 + 8);
    *(v12 + 8) = v57;

    v27 = *(this + 9) - 80;
    std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(this + 64, v27);
    *(this + 9) = v27;
    v28 = *(this + 8);
    std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](v73, v72);
    if (v27 - v28 >= 81)
    {
      v29 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 4);
      v30 = (v29 - 2) >> 1;
      v31 = v30 + 1;
      v32 = (v28 + 80 * v30);
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(v28, v73, v29, v32);
        v32 -= 10;
        --v31;
      }

      while (v31);
    }

    std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v73);
  }

  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v72);
  v43 = 1;
LABEL_23:

  v55 = *MEMORY[0x277D85DE8];
  return v43;
}

void IndexResults::printHeapInfo(IndexResults *this, uint64_t a2, NSString *a3, BOOL a4)
{
  v113 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v111 = 0u;
  v112 = 0u;
  v7 = *(this + 8);
  v8 = *(v7 + 1);
  v107 = *v7;
  v108 = v8;
  v9 = v7[4];
  v10 = *(v7 + 12);
  v11 = v7[5];
  v109 = v9;
  v110 = v11;
  LODWORD(v111) = v10;
  *(&v111 + 1) = v7[7];
  *&v112 = v7[8];
  v105 = 0u;
  v106 = 0u;
  v12 = *(this + 8);
  v13 = *(v12 + 1);
  v101 = *v12;
  v102 = v13;
  v14 = v12[4];
  v15 = *(v12 + 12);
  v16 = v12[5];
  v103 = v14;
  v104 = v16;
  LODWORD(v105) = v15;
  *(&v105 + 1) = v12[7];
  *&v106 = v12[8];
  v17 = *(this + 8);
  v18 = *(v17 + 16);
  memset(v100, 0, sizeof(v100));
  getGreaterOperator(*(this + 1), [*(v17 + 32) intValue], v100);
  v56 = a4;
  v55 = a2;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - *(this + 8)) >> 4) < 2)
  {
    v21 = v18;
  }

  else
  {
    v19 = 1;
    v20 = 144;
    v21 = v18;
    do
    {
      v94[0] = v107;
      v94[1] = v108;
      v9 = v9;
      v95 = v9;
      v96 = v110;
      v97 = v111;
      v98 = *(&v111 + 1);
      v99 = v112;
      v22 = (*(this + 8) + v20);
      v23 = *(v22 - 3);
      v88[0] = *(v22 - 4);
      v88[1] = v23;
      v89 = *(v22 - 4);
      v24 = *(v22 - 3);
      v91 = *(v22 - 4);
      v90 = v24;
      v92 = *(v22 - 1);
      v93 = *v22;
      if (std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(v100, v94, v88))
      {
        v25 = (*(this + 8) + v20);
        v26 = *(v25 - 3);
        v107 = *(v25 - 4);
        v108 = v26;
        v27 = *(v25 - 4);
        v109 = v27;

        v28 = *(v25 - 3);
        LODWORD(v111) = *(v25 - 4);
        v110 = v28;
        objc_storeStrong(&v111 + 1, *(v25 - 1));
        objc_storeStrong(&v112, *v25);
        v9 = v27;
      }

      v29 = (*(this + 8) + v20);
      v30 = *(v29 - 3);
      v82[0] = *(v29 - 4);
      v82[1] = v30;
      v83 = *(v29 - 4);
      v31 = *(v29 - 3);
      v85 = *(v29 - 4);
      v84 = v31;
      v86 = *(v29 - 1);
      v87 = *v29;
      v76[0] = v101;
      v76[1] = v102;
      v32 = v103;
      v77 = v32;
      v78 = v104;
      v79 = v105;
      v33 = *(&v105 + 1);
      v80 = v33;
      v34 = v106;
      v81 = v34;
      if (std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(v100, v82, v76))
      {
        v35 = (*(this + 8) + v20);
        v36 = *(v35 - 3);
        v101 = *(v35 - 4);
        v102 = v36;
        v103 = *(v35 - 4);

        v37 = *(v35 - 3);
        LODWORD(v105) = *(v35 - 4);
        v104 = v37;
        *(&v105 + 1) = *(v35 - 1);

        *&v106 = *v35;
      }

      v38 = *(this + 8);
      v39 = *(v38 + v20 - 48);
      v18 = fmin(v18, v39);
      v21 = fmax(v21, v39);
      ++v19;
      v20 += 80;
    }

    while (v19 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v38) >> 4));
  }

  getScore(&v107, v56);
  v41 = v40;
  getScore(&v101, v56);
  v43 = v42;
  if ([*(this + 1) isEqualToString:*MEMORY[0x277D65A18]])
  {
    v44 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(this + 8);
      v45 = *(this + 9);
      v47 = *(this + 1);
      *buf = 134220034;
      v59 = v55;
      v60 = 2112;
      v61 = v57;
      v62 = 1024;
      v63 = -858993459 * ((v45 - v46) >> 4);
      v64 = 2112;
      v65 = v47;
      v66 = 1024;
      v67 = [v9 intValue];
      v68 = 2048;
      v69 = v41;
      v70 = 2048;
      v71 = v43;
      v72 = 2048;
      v73 = v18 / 86400.0;
      v74 = 2048;
      v75 = v21 / 86400.0;
      v48 = "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> added %d items for bundle = %@, retrievalType = %d (minScore: %f, maxScore: %f - minTS: %f, maxTS: %f)";
      v49 = v44;
      v50 = 84;
LABEL_15:
      _os_log_impl(&dword_26B71B000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
    }
  }

  else
  {
    v44 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v52 = *(this + 8);
      v51 = *(this + 9);
      v53 = *(this + 1);
      *buf = 134219522;
      v59 = v55;
      v60 = 2112;
      v61 = v57;
      v62 = 1024;
      v63 = -858993459 * ((v51 - v52) >> 4);
      v64 = 2112;
      v65 = v53;
      v66 = 1024;
      v67 = [v9 intValue];
      v68 = 2048;
      v69 = v41;
      v70 = 2048;
      v71 = v43;
      v48 = "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> added %d items for bundle = %@, retrievalType = %d (min: %f, max: %f)";
      v49 = v44;
      v50 = 64;
      goto LABEL_15;
    }
  }

  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v100);
  v54 = *MEMORY[0x277D85DE8];
}

void sub_26B721878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&a65);
  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(&a69);
  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry((v70 - 208));

  _Unwind_Resume(a1);
}

void IndexResults::printTablesInfo(IndexResults *this, uint64_t a2, NSString *a3, double a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0x7FEFFFFFFFFFFFFFLL;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v36 = ___ZN12IndexResults15printTablesInfoEyPK8NSStringd_block_invoke;
  v37 = &unk_279CFDFE8;
  v38 = &v49;
  v39 = &v45;
  v40 = &v41;
  v8 = v35;
  v9 = *(this + 30);
  if (v9)
  {
    v10 = 0;
    for (i = 0; i < v9; ++i)
    {
      v12 = *(this + 16) + v10;
      if (*(v12 + 72))
      {
        v13 = *(v12 + 16);
        *buf = *v12;
        *&buf[16] = v13;
        *&buf[32] = *(v12 + 32);
        v14 = *(v12 + 40);
        *&v54[8] = *(v12 + 48);
        *v54 = v14;
        v56 = *(v12 + 56);
        *&v57 = *(v12 + 64);
        *(&v57 + 1) = *(v12 + 72);
        v36(v8, buf);
        v9 = *(this + 30);
      }

      v10 += 80;
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v30 = ___ZN12IndexResults15printTablesInfoEyPK8NSStringd_block_invoke_2;
  v31 = &unk_279CFDFE8;
  v32 = &v49;
  v33 = &v45;
  v34 = &v41;
  v15 = v29;
  v16 = *(this + 22);
  if (v16)
  {
    v17 = 0;
    for (j = 0; j < v16; ++j)
    {
      v19 = *(this + 12) + v17;
      if (*(v19 + 72))
      {
        v20 = *(v19 + 16);
        *buf = *v19;
        *&buf[16] = v20;
        *&buf[32] = *(v19 + 32);
        v21 = *(v19 + 40);
        *&v54[8] = *(v19 + 48);
        *v54 = v21;
        v56 = *(v19 + 56);
        *&v57 = *(v19 + 64);
        *(&v57 + 1) = *(v19 + 72);
        v30(v15, buf);
        v16 = *(this + 22);
      }

      v17 += 80;
    }
  }

  if (*(v42 + 6) >= 1)
  {
    v22 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v42 + 6);
      v24 = *(this + 1);
      v25 = [*(this + 2) intValue];
      v26 = v50[3];
      v27 = v46[3];
      *buf = 134219778;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 1024;
      *&buf[24] = v23;
      *&buf[28] = 2112;
      *&buf[30] = v24;
      *&buf[38] = 1024;
      *v54 = v25;
      *&v54[4] = 2048;
      *&v54[6] = v26;
      v55 = 2048;
      v56 = v27;
      LOWORD(v57) = 2048;
      *(&v57 + 2) = a4;
      _os_log_impl(&dword_26B71B000, v22, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> hash tables added %d items for bundle = %@, retrievalType = %d (min timestamp: %f, max timestamp: %f, queryTime: %f)", buf, 0x4Au);
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void sub_26B721D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void ___ZN12IndexResults15printTablesInfoEyPK8NSStringd_block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = fmin(*(*(a1[4] + 8) + 24), *(a2 + 16));
  *(*(a1[5] + 8) + 24) = fmax(*(*(a1[5] + 8) + 24), *(a2 + 16));
  ++*(*(a1[6] + 8) + 24);

  v3 = *(a2 + 32);
}

void ___ZN12IndexResults15printTablesInfoEyPK8NSStringd_block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[4] + 8) + 24) = fmin(*(*(a1[4] + 8) + 24), *(a2 + 16));
  *(*(a1[5] + 8) + 24) = fmax(*(*(a1[5] + 8) + 24), *(a2 + 16));
  ++*(*(a1[6] + 8) + 24);

  v3 = *(a2 + 32);
}

void IndexResults::printRetrievedItems(IndexResults *this, uint64_t a2, NSString *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v29 = a3;
  if (canLogIdentifierForBundle(*(this + 1)))
  {
    v4 = [MEMORY[0x277CCAB68] string];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = *(this + 3);
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v7)
    {
      v8 = @" %@";
      v9 = *v31;
      v26 = *v31;
      v27 = v5;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          [v4 appendFormat:v8, v11];
          ++v6;
          if ([v4 length]>= 0x385)
          {
            v12 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = v7;
              v14 = v8;
              v15 = [*(this + 3) count];
              v16 = *(this + 1);
              v17 = [*(this + 2) intValue];
              *buf = 134219522;
              v35 = a2;
              v36 = 2112;
              v37 = v29;
              v38 = 1024;
              *v39 = v6;
              *&v39[4] = 2048;
              *&v39[6] = v15;
              *&v39[14] = 2112;
              *&v39[16] = v16;
              v40 = 1024;
              v41 = v17;
              v42 = 2112;
              v43 = v4;
              _os_log_impl(&dword_26B71B000, v12, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> retrieved %d (out of %ld) items for bundle = %@, retrievalType = %d: %@", buf, 0x40u);
              v8 = v14;
              v7 = v13;
              v9 = v26;
              v5 = v27;
            }

            [v4 setString:&stru_287C35638];
            v6 = 0;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v7);
    }

    if ([v4 length])
    {
      v18 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(this + 3) count];
        v20 = *(this + 1);
        v21 = [*(this + 2) intValue];
        *buf = 134219522;
        v35 = a2;
        v36 = 2112;
        v37 = v29;
        v38 = 1024;
        *v39 = v6;
        *&v39[4] = 2048;
        *&v39[6] = v19;
        *&v39[14] = 2112;
        *&v39[16] = v20;
        v40 = 1024;
        v41 = v21;
        v42 = 2112;
        v43 = v4;
        _os_log_impl(&dword_26B71B000, v18, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> retrieved %d (out of %ld) items for bundle = %@, retrievalType = %d: %@", buf, 0x40u);
      }
    }
  }

  else
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(this + 3) count];
      v23 = *(this + 1);
      v24 = [*(this + 2) intValue];
      *buf = 134219010;
      v35 = a2;
      v36 = 2112;
      v37 = v29;
      v38 = 2048;
      *v39 = v22;
      *&v39[8] = 2112;
      *&v39[10] = v23;
      *&v39[18] = 1024;
      *&v39[20] = v24;
      _os_log_impl(&dword_26B71B000, v4, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking]<_resultHeaps> retrieved %ld items for bundle = %@, retrievalType = %d", buf, 0x30u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void IndexResults::printAllResultsInfo(IndexResults *this, uint64_t a2, NSString *a3, double a4, int a5)
{
  v9 = a3;
  if (a5)
  {
    IndexResults::printRetrievedItems(this, a2, v9);
    IndexResults::printHeapInfo(this, a2, v9, 1);
    IndexResults::printTablesInfo(this, a2, v9, a4);
  }
}

uint64_t IndexResultsRegistry::getIndexResultsIdx(IndexResultsRegistry *this, NSString *a2, NSNumber *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = -1;
  if (v5)
  {
    indexMapping = this->indexMapping;
    if (indexMapping)
    {
      v9 = [(NSMutableDictionary *)indexMapping objectForKeyedSubscript:v5];

      if (v9)
      {
        v10 = [(NSMutableDictionary *)this->indexMapping objectForKeyedSubscript:v5];
        v11 = v10;
        if (v6)
        {
          v12 = v6;
        }

        else
        {
          v12 = &unk_287C3B710;
        }

        v13 = [v10 objectForKeyedSubscript:v12];
        v14 = v13;
        if (!v13)
        {
          v13 = &unk_287C3B728;
        }

        v7 = [v13 longValue];
      }

      else
      {
        v7 = -1;
      }
    }
  }

  return v7;
}

uint64_t IndexResultsRegistry::getOrCreateIndexResults(uint64_t *a1, unsigned int a2, void *a3, void *a4, uint64_t a5)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a1[5];
  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = a1[5];
    a1[5] = v12;

    v11 = a1[5];
  }

  v14 = [v11 objectForKeyedSubscript:v9];

  if (!v14)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    [a1[5] setObject:v15 forKeyedSubscript:v9];
  }

  IndexResultsIdx = IndexResultsRegistry::getIndexResultsIdx(a1, v9, v10);
  if (IndexResultsIdx == -1)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x86BCA1AF286BCA1BLL * ((a1[3] - a1[2]) >> 3)];
    v18 = [a1[5] objectForKeyedSubscript:v9];
    [v18 setObject:v17 forKeyedSubscript:v10];

    v19 = [a1[5] objectForKeyedSubscript:v9];
    v20 = [v19 objectForKeyedSubscript:v10];
    IndexResultsIdx = [v20 longValue];

    IndexResults::IndexResults(buf, a2, v9, v10, a5);
    v21 = a1[3];
    if (v21 >= a1[4])
    {
      v22 = std::vector<IndexResults>::__emplace_back_slow_path<IndexResults>(a1 + 2, buf);
    }

    else
    {
      IndexResults::IndexResults(a1[3], buf);
      v22 = v21 + 152;
      a1[3] = v21 + 152;
    }

    a1[3] = v22;
    v33 = v45;
    std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v33);
    v33 = &v44;
    std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v33);
    v33 = &v43;
    std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v33);
    std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&v37);

    v23 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *a1;
      v24 = a1[1];
      v26 = [(NSNumber *)v10 intValue];
      v27 = [a1[5] objectForKeyedSubscript:v9];
      v28 = [v27 objectForKeyedSubscript:v10];
      *buf = 134219266;
      *v35 = v25;
      *&v35[8] = 2112;
      *&v35[10] = v24;
      *&v35[18] = 2048;
      v36 = a1;
      v37 = 2112;
      v38 = v9;
      v39 = 1024;
      v40 = v26;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_26B71B000, v23, OS_LOG_TYPE_DEFAULT, "[qid=%llu][%@][SpotlightRanking][thread=%p]<_resultHeaps> create IndexResults for bundle = %@, retrievalType = %d index:%@", buf, 0x3Au);
    }
  }

  v30 = a1 + 2;
  v29 = a1[2];
  if (0x86BCA1AF286BCA1BLL * ((v30[1] - v29) >> 3) <= IndexResultsIdx)
  {
    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  v31 = *MEMORY[0x277D85DE8];
  return v29 + 152 * IndexResultsIdx;
}

void IndexResults::~IndexResults(IndexResults *this)
{
  v2 = (this + 128);
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 96);
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 64);
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](this + 32);
}

uint64_t IndexResultsRegistry::removeResult(IndexResultsRegistry *this, NSString *a2, CSSearchableItemAttributeSet *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(CSSearchableItemAttributeSet *)v6 retrievalType];
  IndexResultsIdx = IndexResultsRegistry::getIndexResultsIdx(this, v5, v7);

  if (IndexResultsIdx == -1)
  {
    v11 = 0;
  }

  else
  {
    begin = this->results.__begin_;
    if (0x86BCA1AF286BCA1BLL * ((this->results.__end_ - begin) >> 3) <= IndexResultsIdx)
    {
      std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
    }

    v11 = IndexResults::removeResult((begin + 152 * IndexResultsIdx), v9, this->redactedQuery, v6);
  }

  return v11;
}

void IndexResultsRegistry::processResults(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v5 = a3;
  v32 = a1;
  v33 = *(a1 + 24);
  if (*(a1 + 16) != v33)
  {
    v6 = *(a1 + 16);
    v31 = &v60;
    do
    {
      v85 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v78 = 0u;
      memset(v79, 0, sizeof(v79));
      v77 = 0u;
      IndexResults::IndexResults(&v77, v6);
      v7 = *(&v80 + 1);
      v8 = v80;
      if (*(&v80 + 1) != v80)
      {
        do
        {
          IndexResults::IndexResults(v69, &v77);
          v9 = *(v8 + 16);
          v63[0] = *v8;
          v63[1] = v9;
          v64 = *(v8 + 32);
          v10 = *(v8 + 48);
          v65 = *(v8 + 40);
          v66 = v10;
          v67 = *(v8 + 56);
          v68 = *(v8 + 64);
          v5[2](v5, v69, v63);
          *&v37 = &v76;
          std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
          *&v37 = &v75;
          std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
          *&v37 = &v74;
          std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v37);
          std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&v73);

          v8 += 80;
        }

        while (v8 != v7);
        v34 = v6;
        v11 = *v32;
        v12 = v32[1];
        [v36 currentTime];
        IndexResults::printAllResultsInfo(&v77, v11, v12, v13, [v36 isSearchToolClient]);
        v14 = *(&v80 + 1);
        v15 = v80;
        while (v14 != v15)
        {
          v14 -= 80;
          std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(&v80, v14);
        }

        *(&v80 + 1) = v15;
        [*(&v78 + 1) removeAllObjects];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3321888768;
        v55 = ___ZN20IndexResultsRegistry14processResultsEPK20SPSearchQueryContextU13block_pointerFv12IndexResults17SPResultValueItemE_block_invoke;
        v56 = &unk_287C34EA0;
        v35 = v5;
        v57 = v35;
        IndexResults::IndexResults(v58, &v77);
        v16 = v54;
        v17 = DWORD2(v81);
        if (DWORD2(v81))
        {
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = (v82 + v18);
            if (*(v82 + v18 + 72))
            {
              v21 = *(v20 + 1);
              v37 = *v20;
              v38 = v21;
              v39 = v20[4];
              v22 = v20[5];
              v41 = *(v20 + 12);
              v40 = v22;
              v42 = v20[7];
              v43 = v20[8];
              v44 = v20[9];
              v55(v16, &v37);
              v17 = DWORD2(v81);
            }

            ++v19;
            v18 += 80;
          }

          while (v19 < v17);
        }

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3321888768;
        v46 = ___ZN20IndexResultsRegistry14processResultsEPK20SPSearchQueryContextU13block_pointerFv12IndexResults17SPResultValueItemE_block_invoke_119;
        v47 = &unk_287C34EA0;
        v48 = v35;
        IndexResults::IndexResults(v49, &v77);
        v23 = v45;
        v24 = DWORD2(v83);
        if (DWORD2(v83))
        {
          v25 = 0;
          v26 = 0;
          do
          {
            v27 = (v84 + v25);
            if (*(v84 + v25 + 72))
            {
              v28 = *(v27 + 1);
              v37 = *v27;
              v38 = v28;
              v39 = v27[4];
              v29 = v27[5];
              v41 = *(v27 + 12);
              v40 = v29;
              v42 = v27[7];
              v43 = v27[8];
              v44 = v27[9];
              v46(v23, &v37);
              v24 = DWORD2(v83);
            }

            ++v26;
            v25 += 80;
          }

          while (v26 < v24);
        }

        v6 = v34;
        *&v37 = &v53;
        std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
        *&v37 = &v52;
        std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
        *&v37 = &v51;
        std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v37);
        std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&v50);

        *&v37 = &v62;
        std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
        *&v37 = &v61;
        std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
        *&v37 = v31;
        std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v37);
        std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&v59);
      }

      *&v37 = &v84;
      std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
      *&v37 = &v82;
      std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v37);
      *&v37 = &v80;
      std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v37);
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](v79);

      v6 = (v6 + 152);
    }

    while (v6 != v33);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_26B722EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  IndexResults::~IndexResults(&a64);

  IndexResults::~IndexResults(&STACK[0x340]);
  _Unwind_Resume(a1);
}

void ___ZN20IndexResultsRegistry14processResultsEPK20SPSearchQueryContextU13block_pointerFv12IndexResults17SPResultValueItemE_block_invoke(uint64_t a1, uint64_t a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  IndexResults::IndexResults(v15, (a1 + 40));
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v10 = v5;
  v11 = v6;
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  (*(v3 + 16))(v3, v15, v9);
  v8 = v22;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = &v21;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = &v20;
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&v19);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_26B7230CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IndexResults::~IndexResults(va);
  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(v13);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c18_ZTS12IndexResults(id *a1)
{
  v2 = a1 + 21;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 17;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 13;
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100]((a1 + 9));
}

void ___ZN20IndexResultsRegistry14processResultsEPK20SPSearchQueryContextU13block_pointerFv12IndexResults17SPResultValueItemE_block_invoke_119(uint64_t a1, uint64_t a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  IndexResults::IndexResults(v15, (a1 + 40));
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v10 = v5;
  v11 = v6;
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  (*(v3 + 16))(v3, v15, v9);
  v8 = v22;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = &v21;
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = &v20;
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](&v19);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_26B7232A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IndexResults::~IndexResults(va);
  SPResultValueItemHashTableEntry::~SPResultValueItemHashTableEntry(v13);
  _Unwind_Resume(a1);
}

void IndexResults::IndexResults(IndexResults *this, const IndexResults *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = *(a2 + 3);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](this + 32, a2 + 32);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<SPResultValueItem>::__init_with_size[abi:nn200100]<SPResultValueItem*,SPResultValueItem*>(this + 64, *(a2 + 8), *(a2 + 9), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 9) - *(a2 + 8)) >> 4));
  v4 = *(a2 + 22);
  *(this + 12) = 0;
  *(this + 22) = v4;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<SPResultValueItemHashTableEntry>::__init_with_size[abi:nn200100]<SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*>(this + 96, *(a2 + 12), *(a2 + 13), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 13) - *(a2 + 12)) >> 4));
  v5 = *(a2 + 30);
  *(this + 16) = 0;
  *(this + 30) = v5;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<SPResultValueItemHashTableEntry>::__init_with_size[abi:nn200100]<SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*>(this + 128, *(a2 + 16), *(a2 + 17), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 17) - *(a2 + 16)) >> 4));
}

void sub_26B7233D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100]((v2 + 4));

  _Unwind_Resume(a1);
}

uint64_t std::vector<SPResultValueItem>::__init_with_size[abi:nn200100]<SPResultValueItem*,SPResultValueItem*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SPResultValueItem>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<SPResultValueItem>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<SPResultValueItem>>(a1, a2);
  }

  std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SPResultValueItem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
}

id std::allocator_traits<std::allocator<SPResultValueItem>>::construct[abi:nn200100]<SPResultValueItem,SPResultValueItem&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(a3 + 32);
  v6 = *(a3 + 40);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 40) = v6;
  *(a2 + 56) = *(a3 + 56);
  result = *(a3 + 64);
  *(a2 + 64) = result;
  return result;
}

uint64_t std::vector<SPResultValueItemHashTableEntry>::__init_with_size[abi:nn200100]<SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SPResultValueItemHashTableEntry>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<SPResultValueItemHashTableEntry>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<SPResultValueItemHashTableEntry>>(a1, a2);
  }

  std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SPResultValueItemHashTableEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<SPResultValueItemHashTableEntry>,SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 40) = v8;
      *(a4 + 56) = *(v6 + 56);
      v9 = *(v6 + 64);
      v10 = *(v6 + 72);
      *(a4 + 64) = v9;
      *(a4 + 72) = v10;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
  }

  return a4;
}

uint64_t std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIPDoFbRK17SPResultValueItemS4_ENS_9allocatorIS6_EEFbS2_S2_EE7__cloneEPNS0_6__baseIS9_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287C34EE0;
  a2[1] = v2;
  return result;
}

void *std::vector<SPResultValueItemHashTableEntry>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SPResultValueItemHashTableEntry>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SPResultValueItemHashTableEntry>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SPResultValueItemHashTableEntry>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {

      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t std::vector<SPResultValueItem>::__emplace_back_slow_path<SPResultValueItem&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<SPResultValueItem>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  std::allocator_traits<std::allocator<SPResultValueItem>>::construct[abi:nn200100]<SPResultValueItem,SPResultValueItem&,0>(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<SPResultValueItem>,SPResultValueItem*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<SPResultValueItem>::~__split_buffer(&v13);
  return v12;
}

void sub_26B723C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SPResultValueItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<SPResultValueItem>,SPResultValueItem*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      v9 = *(v7 + 32);
      *(v7 + 32) = 0;
      *(a4 + 32) = v9;
      v10 = *(v7 + 40);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 40) = v10;
      v11 = *(v7 + 56);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(a4 + 56) = v11;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(a1, v5);
      v5 += 80;
    }
  }
}

void std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
}

void **std::__split_buffer<SPResultValueItem>::~__split_buffer(void **a1)
{
  std::__split_buffer<SPResultValueItem>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SPResultValueItem>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    std::allocator_traits<std::allocator<SPResultValueItem>>::destroy[abi:nn200100]<SPResultValueItem,0>(v4, i - 80);
  }
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 80 * (v4 >> 1);
    v8 = *(v7 + 16);
    v64[0] = *v7;
    v64[1] = v8;
    v9 = *(v7 + 32);
    v10 = *(v7 + 48);
    v11 = *(v7 + 40);
    v65 = v9;
    v66 = v11;
    v67 = v10;
    v68 = *(v7 + 56);
    v69 = *(v7 + 64);
    v12 = *(a2 - 64);
    v58[0] = *(a2 - 80);
    v58[1] = v12;
    v59 = *(a2 - 48);
    v13 = *(a2 - 40);
    v61 = *(a2 - 32);
    v60 = v13;
    v62 = *(a2 - 24);
    v63 = *(a2 - 16);
    if (std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a3, v64, v58))
    {
      v14 = a2 - 80;
      memset(v57, 0, sizeof(v57));
      v15 = *(a2 - 64);
      v53 = *(a2 - 80);
      v54 = v15;
      v16 = *(a2 - 48);
      *(a2 - 48) = 0;
      v55 = v16;
      v17 = *(a2 - 40);
      LODWORD(v57[0]) = *(a2 - 32);
      v56 = v17;
      v18 = *(a2 - 24);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(v57 + 8) = v18;
      while (1)
      {
        v19 = v7;
        v20 = *(v7 + 16);
        *v14 = *v7;
        *(v14 + 16) = v20;
        v21 = *(v7 + 32);
        *(v7 + 32) = 0;
        v22 = *(v14 + 32);
        *(v14 + 32) = v21;

        v23 = *(v7 + 40);
        *(v14 + 48) = *(v7 + 48);
        *(v14 + 40) = v23;
        v24 = *(v7 + 56);
        *(v7 + 56) = 0;
        v25 = *(v14 + 56);
        *(v14 + 56) = v24;

        v26 = *(v7 + 64);
        *(v7 + 64) = 0;
        v27 = *(v14 + 64);
        *(v14 + 64) = v26;

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 80 * v6;
        v28 = *(v7 + 16);
        v47[0] = *v7;
        v47[1] = v28;
        v48 = *(v7 + 32);
        v29 = *(v7 + 48);
        v49 = *(v7 + 40);
        v50 = v29;
        v51 = *(v7 + 56);
        v52 = *(v7 + 64);
        v41[0] = v53;
        v41[1] = v54;
        v30 = v55;
        v42 = v30;
        v43 = v56;
        v44 = v57[0];
        v31 = *(&v57[0] + 1);
        v45 = v31;
        v32 = *&v57[1];
        v46 = v32;
        v14 = v19;
        if ((std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a3, v47, v41) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v30 = v55;
      v31 = *(&v57[0] + 1);
      v32 = *&v57[1];
LABEL_8:
      v33 = v54;
      *v19 = v53;
      *(v19 + 16) = v33;
      v34 = *(v19 + 32);
      *(v19 + 32) = v30;

      v35 = v56;
      *(v19 + 48) = v57[0];
      *(v19 + 40) = v35;
      v36 = *(v19 + 56);
      *(v19 + 56) = v31;

      v37 = *(v19 + 64);
      *(v19 + 64) = v32;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>,std::__wrap_iter<SPResultValueItem*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v29 = *a1;
    v30 = *(a1 + 16);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    *(a1 + 32) = 0;
    v32 = *(a1 + 48);
    v31 = v7;
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v11 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(a1, a3, a4);
    v12 = v11;
    v13 = (a2 - 80);
    if (a2 - 80 == v11)
    {
      *v11 = v29;
      *(v11 + 16) = v30;
      v25 = *(v11 + 32);
      *(v11 + 32) = v8;

      *(v12 + 48) = v32;
      *(v12 + 40) = v31;
      v26 = *(v12 + 56);
      *(v12 + 56) = v10;

      v27 = *(v12 + 64);
      *(v12 + 64) = v9;
    }

    else
    {
      v14 = *(a2 - 64);
      *v11 = *v13;
      *(v11 + 16) = v14;
      v15 = *(a2 - 48);
      *(a2 - 48) = 0;
      v16 = *(v11 + 32);
      *(v11 + 32) = v15;

      v17 = *(a2 - 40);
      *(v12 + 48) = *(a2 - 32);
      *(v12 + 40) = v17;
      v18 = *(a2 - 24);
      *(a2 - 24) = 0;
      v19 = *(v12 + 56);
      *(v12 + 56) = v18;

      v20 = *(a2 - 16);
      *(a2 - 16) = 0;
      v21 = *(v12 + 64);
      *(v12 + 64) = v20;

      *v13 = v29;
      *(a2 - 64) = v30;
      v22 = *(a2 - 48);
      *(a2 - 48) = v8;

      *(a2 - 32) = v32;
      *(a2 - 40) = v31;
      v23 = *(a2 - 24);
      *(a2 - 24) = v10;

      v24 = *(a2 - 16);
      *(a2 - 16) = v9;

      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(a1, v12 + 80, a3, 0xCCCCCCCCCCCCCCCDLL * ((v12 + 80 - a1) >> 4));
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v39 = *MEMORY[0x277D85DE8];
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 80 * v6 + 80;
    v9 = 2 * v6;
    v6 = (2 * v6) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *(v8 + 16);
      v33[0] = *v8;
      v33[1] = v11;
      v34 = *(v8 + 32);
      v12 = *(v8 + 40);
      v36 = *(v8 + 48);
      v35 = v12;
      v37 = *(v8 + 56);
      v38 = *(v8 + 64);
      v13 = *(v8 + 96);
      v27[0] = *(v8 + 80);
      v27[1] = v13;
      v28 = *(v8 + 112);
      v14 = *(v8 + 128);
      v29 = *(v8 + 120);
      v30 = v14;
      v31 = *(v8 + 136);
      v32 = *(v8 + 144);
      v15 = std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a2, v33, v27);
      if (v15)
      {
        v16 = 80;
      }

      else
      {
        v16 = 0;
      }

      v8 += v16;
      if (v15)
      {
        v6 = v10;
      }
    }

    v17 = *(v8 + 16);
    *a1 = *v8;
    *(a1 + 16) = v17;
    v18 = *(v8 + 32);
    *(v8 + 32) = 0;
    v19 = *(a1 + 32);
    *(a1 + 32) = v18;

    v20 = *(v8 + 40);
    *(a1 + 48) = *(v8 + 48);
    *(a1 + 40) = v20;
    v21 = *(v8 + 56);
    *(v8 + 56) = 0;
    v22 = *(a1 + 56);
    *(a1 + 56) = v21;

    v23 = *(v8 + 64);
    *(v8 + 64) = 0;
    v24 = *(a1 + 64);
    *(a1 + 64) = v23;

    a1 = v8;
  }

  while (v6 <= v7);
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t std::vector<SPResultValueItem>::__emplace_back_slow_path<SPResultValueItem>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<SPResultValueItem>>(a1, v6);
  }

  v7 = 80 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v7 + 32) = v9;
  v10 = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 40) = v10;
  v11 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v7 + 56) = v11;
  *&v20 = 80 * v2 + 80;
  v12 = a1[1];
  v13 = 80 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<SPResultValueItem>,SPResultValueItem*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<SPResultValueItem>::~__split_buffer(&v18);
  return v17;
}

void sub_26B724564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SPResultValueItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(SPResultValueItem,SPResultValueItem)> &,std::__wrap_iter<SPResultValueItem*>>(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v115 = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v61 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 4)))
    {
      v9 = (0x999999999999999ALL * ((a4 - a1) >> 4)) | 1;
      v10 = (a1 + 80 * v9);
      v11 = 0x999999999999999ALL * ((a4 - a1) >> 4) + 2;
      if (v11 < a3)
      {
        v12 = *(v10 + 1);
        v109[0] = *v10;
        v109[1] = v12;
        v13 = v10[4];
        v14 = *(v10 + 12);
        v15 = v10[5];
        v110 = v13;
        v111 = v15;
        v112 = v14;
        v113 = v10[7];
        v114 = v10[8];
        v16 = *(v10 + 6);
        v103[0] = *(v10 + 5);
        v103[1] = v16;
        v17 = v10[14];
        v18 = *(v10 + 32);
        v19 = v10[15];
        v104 = v17;
        v105 = v19;
        v106 = v18;
        v107 = v10[17];
        v108 = v10[18];
        v20 = std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a2, v109, v103);
        v21 = 80;
        if (!v20)
        {
          v21 = 0;
        }

        v10 = (v10 + v21);
        if (v20)
        {
          v9 = v11;
        }
      }

      v22 = *(v10 + 1);
      v97[0] = *v10;
      v97[1] = v22;
      v23 = v10[4];
      v24 = *(v10 + 12);
      v25 = v10[5];
      v98 = v23;
      v99 = v25;
      v100 = v24;
      v101 = v10[7];
      v102 = v10[8];
      v26 = *(v5 + 1);
      v91[0] = *v5;
      v91[1] = v26;
      v27 = v5[4];
      v28 = v5[5];
      v29 = *(v5 + 12);
      v92 = v27;
      v93 = v28;
      v94 = v29;
      v95 = v5[7];
      v96 = v5[8];
      if ((std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a2, v97, v91) & 1) == 0)
      {
        memset(v90, 0, sizeof(v90));
        v30 = *(v5 + 1);
        v86 = *v5;
        v87 = v30;
        v31 = v5[4];
        v5[4] = 0;
        v32 = v5[5];
        LODWORD(v90[0]) = *(v5 + 12);
        v88 = v31;
        v89 = v32;
        v33 = *(v5 + 7);
        v5[7] = 0;
        v5[8] = 0;
        *(v90 + 8) = v33;
        do
        {
          v34 = v10;
          v35 = *(v10 + 1);
          *v5 = *v10;
          *(v5 + 1) = v35;
          v36 = v10[4];
          v10[4] = 0;
          v37 = v5[4];
          v5[4] = v36;

          v38 = v10[5];
          *(v5 + 12) = *(v10 + 12);
          v5[5] = v38;
          v39 = v10[7];
          v10[7] = 0;
          v40 = v5[7];
          v5[7] = v39;

          v41 = v10[8];
          v10[8] = 0;
          v42 = v5[8];
          v5[8] = v41;

          if (v61 < v9)
          {
            break;
          }

          v43 = (2 * v9) | 1;
          v10 = (a1 + 80 * v43);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v43;
          }

          else
          {
            v44 = *(v10 + 1);
            v80[0] = *v10;
            v80[1] = v44;
            v81 = v10[4];
            v45 = *(v10 + 12);
            v82 = v10[5];
            v83 = v45;
            v84 = v10[7];
            v85 = v10[8];
            v46 = *(v10 + 6);
            v74[0] = *(v10 + 5);
            v74[1] = v46;
            v75 = v10[14];
            v47 = *(v10 + 32);
            v76 = v10[15];
            v77 = v47;
            v78 = v10[17];
            v79 = v10[18];
            v48 = std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a2, v80, v74);
            v49 = 80;
            if (!v48)
            {
              v49 = 0;
            }

            v10 = (v10 + v49);
            if (!v48)
            {
              v9 = v43;
            }
          }

          v50 = *(v10 + 1);
          v68[0] = *v10;
          v68[1] = v50;
          v69 = v10[4];
          v51 = *(v10 + 12);
          v70 = v10[5];
          v71 = v51;
          v72 = v10[7];
          v73 = v10[8];
          v62[0] = v86;
          v62[1] = v87;
          v63 = v88;
          v64 = v89;
          v65 = v90[0];
          v66 = *(&v90[0] + 1);
          v67 = *&v90[1];
          v5 = v34;
        }

        while (!std::function<BOOL ()(SPResultValueItem,SPResultValueItem)>::operator()(a2, v68, v62));
        v52 = v87;
        *v34 = v86;
        *(v34 + 1) = v52;
        v53 = v88;
        v88 = 0;
        v54 = v34[4];
        v34[4] = v53;

        v55 = v89;
        *(v34 + 12) = v90[0];
        v34[5] = v55;
        v56 = *(&v90[0] + 1);
        *(&v90[0] + 1) = 0;
        v57 = v34[7];
        v34[7] = v56;

        v58 = *&v90[1];
        *&v90[1] = 0;
        v59 = v34[8];
        v34[8] = v58;
      }
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<IndexResults>::__emplace_back_slow_path<IndexResults>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<IndexResults>>(a1, v6);
  }

  v13 = 0;
  v14 = 152 * v2;
  IndexResults::IndexResults(152 * v2, a2);
  v15 = 152 * v2 + 152;
  v7 = a1[1];
  v8 = 152 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<IndexResults>,IndexResults*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<IndexResults>::~__split_buffer(&v13);
  return v12;
}

void sub_26B724B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<IndexResults>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t IndexResults::IndexResults(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0u;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 24) = v5;
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::__value_func[abi:nn200100](a1 + 32, a2 + 32);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  v6 = *(a2 + 88);
  *(a1 + 96) = 0;
  *(a1 + 88) = v6;
  *(a1 + 104) = 0u;
  std::vector<SPResultValueItemHashTableEntry>::__init_with_size[abi:nn200100]<SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
  v7 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<SPResultValueItemHashTableEntry>::__init_with_size[abi:nn200100]<SPResultValueItemHashTableEntry*,SPResultValueItemHashTableEntry*>(a1 + 128, *(a2 + 128), *(a2 + 136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
  return a1;
}

void sub_26B724C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](va);
  std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100]((v2 + 4));

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<IndexResults>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<IndexResults>,IndexResults*>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v13[5] = v4;
    v13[6] = v5;
    v9 = a2;
    do
    {
      v10 = IndexResults::IndexResults(a4, v9);
      v9 += 152;
      a4 = v10 + 152;
    }

    while (v9 != a3);
    if (a2 != a3)
    {
      v11 = (a2 + 64);
      do
      {
        v13[0] = v11 + 8;
        std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](v13);
        v13[0] = v11 + 4;
        std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](v13);
        v13[0] = v11;
        std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](v13);
        std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100]((v11 - 4));

        v12 = v11 + 11;
        v11 += 19;
      }

      while (v12 != a3);
    }
  }
}

uint64_t std::__split_buffer<IndexResults>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    v5 = (i - 24);
    std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (i - 56);
    std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (i - 88);
    std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100](i - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26B725AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t priorityIndexEligibleBundleIdentifer(void *a1)
{
  v1 = a1;
  if (SSPriorityIndexLimitBundles())
  {
    v2 = [sEligibleBundleSet containsObject:v1];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void hideResultFromSection(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a1;
  v8 = a3;
  if (a5 != a2)
  {
    v9 = a2;
    handleHiddenResult();
    [v9 removeResults:v10];
  }
}

id copyForResending(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = objc_alloc(MEMORY[0x277D65848]);
        if (isKindOfClass)
        {
          v11 = [v10 initWithPrototype:v8];
          v12 = [v8 resultSet];
          [v11 setResultSet:v12];
        }

        else
        {
          v11 = [v10 initWithSection:{v8, v15}];
        }

        [v2 addObject:{v11, v15}];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

void query_analytics_log_complete(void *a1, const char *a2, uint64_t a3)
{
  v7 = a1;
  clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  os_unfair_lock_lock(&perfDictLock);
  empty = [v7 perfDictionary];
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
  }

  xpc_dictionary_set_string(empty, "label", a2);
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  xpc_dictionary_set_double(empty, "latency", (v6 - a3) / 1000000000.0);
  analytics_send_event();
  [v7 setPerfDictionary:0];
  os_unfair_lock_unlock(&perfDictLock);
}

unint64_t query_analytics_log_timing(void *a1, const char *a2, const char *a3, uint64_t a4)
{
  v7 = a1;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  key = 0;
  asprintf(&key, "%s_label", a3);
  v12 = 0;
  asprintf(&v12, "%s_latency", a3);
  os_unfair_lock_lock(&perfDictLock);
  empty = [v7 perfDictionary];
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
    [v7 setPerfDictionary:empty];
  }

  v10 = v8 - a4;
  xpc_dictionary_set_string(empty, key, a2);
  xpc_dictionary_set_double(empty, v12, v10 / 1000000000.0);
  os_unfair_lock_unlock(&perfDictLock);
  free(key);
  free(v12);

  return v10;
}

void sub_26B732C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void sub_26B733354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, uint64_t a31)
{
  si_tracing_restore_current_span(&a23);
  v32 = a30;
  *a11 = a29;
  *(a11 + 16) = v32;
  *(a11 + 32) = a31;
  _Unwind_Resume(a1);
}

__n128 si_tracing_restore_current_span(uint64_t a1)
{
  v2 = (*MEMORY[0x277D286C8])();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 28);
  v8 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *a1;
  v10 = *(a1 + 16);
  *(v2 + 32) = *(a1 + 32);
  *v2 = result;
  *(v2 + 16) = v10;
  return result;
}

void sub_26B734E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  si_tracing_restore_current_span(va);
  _Unwind_Resume(a1);
}

void createDedupeDicts(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  LODWORD(v39) = a8;
  v46 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = [v14 bundleIdentifier];
  HIDWORD(v39) = [v21 isEqualToString:*MEMORY[0x277D65B08]];

  v22 = [v14 bundleIdentifier];
  v23 = [v22 isEqualToString:*MEMORY[0x277D65B20]];

  v24 = [v14 bundleIdentifier];
  v25 = [v24 isEqualToString:*MEMORY[0x277D65B28]];

  v40 = v14;
  v26 = [v14 bundleIdentifier];
  v27 = [v26 hasPrefix:*MEMORY[0x277D65B10]];

  if ((v39 & 0x100000000) != 0 || (v23 & 1) != 0 || (v25 & 1) != 0 || (v27 & v39 & 1) != 0 || ([v40 bundleIdentifier], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "hasPrefix:", @"com.apple.parsec."), v28, (v29 & 1) == 0))
  {
    v30 = [v40 results];
    v31 = [v30 copy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v42;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = updateDedupeDictsForResult(*(*(&v41 + 1) + 8 * i), v15, v16, v17, v18, v19, v20);
        }

        v34 = [v32 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v34);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

id updateDedupeDictsForResult(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v89 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v67 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v77 = a7;
  v18 = [v13 sectionBundleIdentifier];
  v19 = *MEMORY[0x277D65B20];
  LODWORD(a5) = [v18 isEqualToString:*MEMORY[0x277D65B20]];

  if (a5 || ([v13 sectionBundleIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v19 = *MEMORY[0x277D65B28], v21 = objc_msgSend(v20, "isEqualToString:", *MEMORY[0x277D65B28]), v20, v21))
  {
    v22 = [v17 objectForKey:v19];
    v23 = v22;
    if (v22)
    {
      if (v22 != v13)
      {
        v24 = v22;
LABEL_8:
        v25 = v24;

        goto LABEL_61;
      }
    }

    else
    {
      [v17 setObject:v13 forKey:v19];
    }

    v24 = 0;
    goto LABEL_8;
  }

  v26 = [v13 storeIdentifier];
  v66 = v26;
  if (!v26)
  {
    v78 = 0;
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v14 objectForKey:v26];
  v29 = v28;
  if (!v28)
  {
    [v14 setObject:v13 forKey:v27];
    goto LABEL_15;
  }

  if (v28 == v13)
  {
LABEL_15:
    v78 = 0;
    goto LABEL_16;
  }

  v78 = v28;
LABEL_16:

LABEL_17:
  v30 = [v13 calendarIdentifier];
  v64 = v30;
  if (v30)
  {
    v31 = v30;
    v32 = [v15 objectForKey:{v30, v30, v66, v67}];
    v33 = v32;
    if (v32)
    {
      if (v32 != v13)
      {
        v34 = v32;

        v78 = v34;
      }
    }

    else
    {
      [v15 setObject:v13 forKey:v31];
    }
  }

  v35 = [v13 sectionBundleIdentifier];
  v36 = [v35 isEqualToString:*MEMORY[0x277D65B08]];

  if (!v36)
  {
    goto LABEL_30;
  }

  v37 = [v13 identifier];
  v38 = [v16 objectForKey:v37];

  if (!v38)
  {
    v39 = [v13 identifier];
    [v16 setObject:v13 forKey:v39];
    goto LABEL_28;
  }

  if (v38 != v13)
  {
    v39 = v78;
    v78 = v38;
LABEL_28:
  }

LABEL_30:
  v40 = [v13 sectionBundleIdentifier];
  v41 = [v40 hasPrefix:*MEMORY[0x277D65B10]];

  if (v41)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v42 = [v13 inlineCard];
    v43 = [v42 cardSections];

    obj = v43;
    v74 = [v43 countByEnumeratingWithState:&v83 objects:v88 count:16];
    if (v74)
    {
      v72 = v14;
      v73 = *v84;
      v70 = v16;
      v71 = v15;
      v69 = v17;
      do
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v84 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v83 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          v47 = v46;
          if (v47)
          {
            v75 = v47;
            v76 = i;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v48 = [v47 cardSections];
            v49 = [v48 countByEnumeratingWithState:&v79 objects:v87 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v80;
              v52 = v77;
              do
              {
                for (j = 0; j != v50; ++j)
                {
                  if (*v80 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v54 = [*(*(&v79 + 1) + 8 * j) command];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v55 = v54;
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v56 = v55;
                  v57 = [v56 applicationBundleIdentifier];
                  if (v57)
                  {
                    v58 = [v52 objectForKey:v57];
                    v59 = v58;
                    if (v58)
                    {
                      if (v58 != v13)
                      {
                        v60 = v13;
                        v61 = v58;

                        v78 = v61;
                        v13 = v60;
                        v52 = v77;
                      }
                    }

                    else
                    {
                      [v52 setObject:v13 forKey:v57];
                    }
                  }
                }

                v50 = [v48 countByEnumeratingWithState:&v79 objects:v87 count:16];
              }

              while (v50);
            }

            v15 = v71;
            v14 = v72;
            v17 = v69;
            v16 = v70;
            v47 = v75;
            i = v76;
          }
        }

        v74 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
      }

      while (v74);
    }
  }

  v25 = v78;

LABEL_61:
  v62 = *MEMORY[0x277D85DE8];

  return v25;
}

void sub_26B73B018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

unint64_t query_analytics_log_timing_with_extras(void *a1, const char *a2, const char *a3, uint64_t a4, const char *a5, unint64_t a6, const char *a7, unint64_t a8, const char *a9, unint64_t a10)
{
  v17 = a1;
  v18 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  key = 0;
  asprintf(&key, "%s_label", a3);
  v25 = 0;
  asprintf(&v25, "%s_latency", a3);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (a5)
  {
    asprintf(&v24, "%s_%s", a3, a5);
  }

  if (a7)
  {
    asprintf(&v23, "%s_%s", a3, a7);
  }

  if (a9)
  {
    asprintf(&v22, "%s_%s", a3, a9);
  }

  v19 = v18 - a4;
  os_unfair_lock_lock(&perfDictLock);
  empty = [v17 perfDictionary];
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
    [v17 setPerfDictionary:empty];
  }

  xpc_dictionary_set_string(empty, key, a2);
  xpc_dictionary_set_double(empty, v25, v19 / 1000000000.0);
  if (v24)
  {
    xpc_dictionary_set_double(empty, v24, a6 / 1000000000.0);
  }

  if (v23)
  {
    xpc_dictionary_set_double(empty, v23, a8 / 1000000000.0);
  }

  if (v22)
  {
    xpc_dictionary_set_double(empty, v22, a10 / 1000000000.0);
  }

  os_unfair_lock_unlock(&perfDictLock);
  free(key);
  free(v25);
  free(v24);
  free(v23);
  free(v22);

  return v19;
}

void anonymous namespace::updatePhoneFavorites(_anonymous_namespace_ *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBDAF8] sharedInstance];
  v2 = [v1 entries];
  v3 = [v2 copy];

  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v17 + 1) + 8 * v8) contactProperty];
        v10 = [v9 contact];

        if (v10)
        {
          v11 = [v10 identifier];
          v12 = v11 == 0;

          if (!v12)
          {
            v13 = [v10 identifier];
            [v4 addObject:v13];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [v4 copy];

  v16 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::updateMailVIPList(_anonymous_namespace_ *this)
{
  v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C4CD28];
  v2 = [MEMORY[0x277D25868] remoteProxyForXPCInterface:v1 connectionErrorHandler:&__block_literal_global_648];
  v3 = os_transaction_create();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke_650;
  v5[3] = &unk_279CFE6D0;
  v6 = v3;
  v4 = v3;
  [v2 orderedVIPAddressesAndUnreadCountsWithCompletion:v5];
}

void sub_26B73CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void md_dispatch_async_propagating(void *a1, void *a2)
{
  queue = a1;
  v3 = a2;
  v4 = qos_class_self();
  if (v4 < 0x1A)
  {
    v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v3);
  }

  else
  {
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, v3);
  }

  v6 = v5;
  dispatch_async(queue, v5);
}

void sub_26B73D7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_26B73D9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SPCSSearchQuery;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26B73F460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_26B741F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_26B74310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{

  _Unwind_Resume(a1);
}

void sub_26B745D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{

  _Unwind_Resume(a1);
}

void sub_26B74704C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, void *a54, void *a55, uint64_t a56, uint64_t a57, id location)
{
  objc_destroyWeak(&a56);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_26B747DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id anonymous namespace::BundleIdToResultMap::resultSet(_anonymous_namespace_::BundleIdToResultMap *this, NSString *a2)
{
  v3 = a2;
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](v3, "UTF8String"));
  v8 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p)[6];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_26B747FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_26B74CB10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, void *a59, void *a60, uint64_t a61, void *a62, void *a63)
{
  STACK[0x200] = a1;

  _Unwind_Resume(STACK[0x200]);
}

void sub_26B74DB84(unint64_t a1)
{
  STACK[0x200] = a1;

  JUMPOUT(0x26B74DBB0);
}

NSArray *anonymous namespace::rankingQueriesAddingQueryTerms(_anonymous_namespace_ *this, NSArray *a2, NSArray *a3)
{
  v4 = this;
  v5 = a2;
  v6 = [(_anonymous_namespace_ *)v4 count];
  if (v6)
  {
    v7 = [(_anonymous_namespace_ *)v4 objectAtIndex:v6 - 1];
    v8 = [(NSArray *)v5 arrayByAddingObject:v7];

    v5 = v8;
  }

  return v5;
}

void ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke_cold_1(v4, v6, v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke_650(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke_650_cold_1();
    }
  }

  else
  {
    if ([v5 count] >= 0x65)
    {
      v8 = [v5 subarrayWithRange:{0, 100}];

      v5 = v8;
    }

    v9 = SPLogForSPLogCategoryDefault();
    v7 = v9;
    if (*MEMORY[0x277D4BF48])
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v9, v10))
    {
      *v13 = 0;
      _os_log_impl(&dword_26B71B000, v7, v10, "Finish Fetching VIPs", v13, 2u);
    }
  }

  v11 = *(a1 + 32);
  v12 = objc_opt_self();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    memset(v16, 0, sizeof(v16));
    std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_26B74F8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,void *>>>::operator()[abi:nn200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B74F9AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<SPResultValueItem>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,void *>>>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::pair<std::string const,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

uint64_t ___ZN12_GLOBAL__N_136topHitQueryParametersForSearchStringEP8NSStringP7NSArraydS1_11SPQueryKindbbbbbbS4_S1_S1_lP12NSDictionaryb_block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    v2 = &unk_287C3B8D8;
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<IndexResults>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IndexResults>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<IndexResults>::clear[abi:nn200100](void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 7;
    do
    {
      v6 = v4 + 4;
      std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v6);
      v6 = v4;
      std::vector<SPResultValueItemHashTableEntry>::__destroy_vector::operator()[abi:nn200100](&v6);
      v6 = v4 - 4;
      std::vector<SPResultValueItem>::__destroy_vector::operator()[abi:nn200100](&v6);
      std::__function::__value_func<BOOL ()(SPResultValueItem,SPResultValueItem)>::~__value_func[abi:nn200100]((v4 - 8));

      v5 = v4 - 12;
      v4 -= 19;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

id anonymous namespace::BundleIdToResultMap::addSectionWithBundleIdentifier(_anonymous_namespace_::BundleIdToResultMap *this, NSString *a2, uint64_t a3)
{
  v5 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](v5, "UTF8String"));
  if (std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::find<std::string>(this, __p))
  {
    v15 = __p;
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, __p)[5];
  }

  else
  {
    v7 = [MEMORY[0x277D65848] mutableSectionWithBundleId:v5];
    [v7 setDomain:1];
    [v7 setDoNotFold:a3];
    v8 = objc_opt_new();
    v6 = v7;
    v15 = __p;
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, __p);
    v10 = v9[5];
    v9[5] = v6;

    v11 = v9[6];
    v9[6] = v8;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_26B75035C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__erase_unique<std::string>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,void *>>>::operator()[abi:nn200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t sp_analytics_log_timing_with_bundle_id(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - a3;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "label", a2);
  xpc_dictionary_set_double(empty, "latency", v7 / 1000000000.0);
  if (v6)
  {
    xpc_dictionary_set_string(empty, "bundleid", [v6 UTF8String]);
  }

  analytics_send_event();

  return v7;
}

void sub_26B7567C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26B7574F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id SPAppStoreSearchURLFromQuery(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCACE0];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    [v3 setScheme:@"itms-apps"];
    [v3 setHost:&stru_287C35638];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"action" value:@"search"];
    [v4 addObject:v5];

    v6 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"term" value:v2];
    [v4 addObject:v6];

    [v3 setQueryItems:v4];
    v7 = [v3 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SPWebSearchURLFromQuery(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (SPWebSearchURLFromQuery_onceToken != -1)
    {
      SPWebSearchURLFromQuery_cold_1();
    }

    v2 = [MEMORY[0x277CDB8A8] sharedInstance];
    v3 = [v2 defaultSearchEngine];
    v4 = [v3 searchURLForUserTypedString:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __SPWebSearchURLFromQuery_block_invoke()
{
  v0 = objc_alloc_init(SPSafariObserver);
  v1 = SPWebSearchURLFromQuery_safariObserver;
  SPWebSearchURLFromQuery_safariObserver = v0;

  v2 = [MEMORY[0x277CBEBD0] _sf_safariSharedDefaults];
  [v2 addObserver:SPWebSearchURLFromQuery_safariObserver forKeyPath:*MEMORY[0x277CDBA30] options:3 context:0];
}

void sub_26B75AB4C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x26B75AB58);
}

void sub_26B75AE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  si_tracing_restore_current_span(va);
  _Unwind_Resume(a1);
}

void sub_26B75C418(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x3A0]);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Unwind_Resume(a1);
}

id _makeQueryStringForField(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      v9 = 1;
      do
      {
        v10 = 0;
        v11 = v7;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v17 + 1) + 8 * v10);
          v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%@ = %@", v3, v12];

          if ((v9 & 1) == 0)
          {
            [v7 appendFormat:@"|| %@ = %@", v3, v12];
          }

          v9 = 0;
          ++v10;
          v11 = v7;
        }

        while (v6 != v10);
        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v9 = 0;
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v4 = v15;
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_26B75E9A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak(&STACK[0x560]);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_26B7606D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned int *SPResultValueItemCreate2(void *a1)
{
  v27[7] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v26 = [v1 attributeSet];
  v2 = [v26 attributeDictionary];
  v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x1080040DC77DE92uLL);
  atomic_store(1u, v3);
  v4 = [v2 objectForKey:*MEMORY[0x277CC3348]];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length] == 16)
    {
      v5 = [v4 bytes];
      v6 = v5[1];
      *(v3 + 2) = *v5;
      *(v3 + 3) = v6;
    }
  }

  if (!SPResultValueItemCreate2_dateAttributeNames)
  {
    v7 = *MEMORY[0x277CC2D10];
    v27[0] = *MEMORY[0x277CC30F0];
    v27[1] = v7;
    v8 = *MEMORY[0x277CC3128];
    v27[2] = *MEMORY[0x277CC2778];
    v27[3] = v8;
    v9 = *MEMORY[0x277CC25E0];
    v27[4] = *MEMORY[0x277CC27A0];
    v27[5] = v9;
    v27[6] = *MEMORY[0x277CC2640];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];
    v11 = SPResultValueItemCreate2_dateAttributeNames;
    SPResultValueItemCreate2_dateAttributeNames = v10;

    SPResultValueItemCreate2_dateAttributeCount = [SPResultValueItemCreate2_dateAttributeNames count];
  }

  v12 = [v2 objectForKey:*MEMORY[0x277CC2500]];
  if ([v12 isEqualToString:@"com.apple.mobilemail"])
  {
    v13 = [v2 objectForKey:*MEMORY[0x277CC2640]];
    v14 = v13;
    if (v13)
    {
      v3[12] = 1;
      [v13 timeIntervalSinceReferenceDate];
      *(v3 + 5) = v15;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (SPResultValueItemCreate2_dateAttributeCount)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v14 = [SPResultValueItemCreate2_dateAttributeNames objectAtIndexedSubscript:v16];
      v18 = [v2 objectForKey:v14];
      v19 = v18;
      if (v18)
      {
        [v18 timeIntervalSinceReferenceDate];
        if (v20 > 0.0)
        {
          break;
        }
      }

      v16 = ++v17;
      if (SPResultValueItemCreate2_dateAttributeCount <= v17)
      {
        goto LABEL_18;
      }
    }

    v3[12] = SPResultValueItemCreate2_dateAttributeCount - v17;
    [v19 timeIntervalSinceReferenceDate];
    *(v3 + 5) = v21;

    goto LABEL_17;
  }

LABEL_18:
  v22 = [v2 objectForKey:*MEMORY[0x277CC26C8]];
  [v22 floatValue];
  v3[13] = v23;

  *(v3 + 4) = [v1 protection];
  *(v3 + 8) = CFRetain(v1);

  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

void sprvdestroyResultValueArray2(CFTypeRef *a1)
{
  CFRelease(a1[8]);

  free(a1);
}

void sprvreleaseCallback(uint64_t a1, CFTypeRef *a2)
{
  if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
  {
    CFRelease(a2[8]);

    free(a2);
  }
}

atomic_uint *sprvretainCallback(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  atomic_fetch_add(a2, 1u);
  return result;
}

uint64_t sprvcompareResultArrays(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (*(a2 + 16) < __PAIR128__(v2, v3))
  {
    return 1;
  }

  if (__PAIR128__(v2, v3) < *(a2 + 16))
  {
    return -1;
  }

  v5 = *(a1 + 52);
  v6 = *(a2 + 52);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return -1;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return -1;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9 > v10)
  {
    return 1;
  }

  if (v9 >= v10)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sprvcompareRecencyResultArrays(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t BOOLValueForAttr(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id authorStringFromAttrs(void *a1)
{
  v1 = a1;
  v2 = 0;
  if (![0 length])
  {
    v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277CC24E0]];
    if ([v3 count])
    {
      v2 = [v3 firstObject];
    }

    else
    {
      v2 = 0;
    }
  }

  if (![v2 length])
  {
    v4 = [v1 objectForKeyedSubscript:*MEMORY[0x277CC24C8]];
    if ([v4 count])
    {
      v5 = [v4 firstObject];

      v2 = v5;
    }
  }

  if (![v2 length])
  {
    v6 = [v1 objectForKeyedSubscript:*MEMORY[0x277CC24B0]];
    if ([v6 count])
    {
      v7 = [v6 firstObject];

      v2 = v7;
    }
  }

  return v2;
}

id getURLString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 absoluteString];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void SPResultValueItem::SPResultValueItem()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_281229E30 = *MEMORY[0x277CC30F0];
    qword_281229E38 = *MEMORY[0x277CC2D10];
    qword_281229E40 = *MEMORY[0x277CC2778];
    qword_281229E48 = *MEMORY[0x277CC3128];
    qword_281229E50 = *MEMORY[0x277CC27A0];
    qword_281229E58 = *MEMORY[0x277CC25E0];
    qword_281229E60 = *MEMORY[0x277CC2640];

    __cxa_guard_release(&_MergedGlobals);
  }
}

void ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26B71B000, log, OS_LOG_TYPE_ERROR, "** Mail VIP Widget failed to connect to MailServices: %@", buf, 0xCu);
}

void ___ZN12_GLOBAL__N_117updateMailVIPListEv_block_invoke_650_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26B71B000, v0, v1, "There was an XPC error when fetching VIPs: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}