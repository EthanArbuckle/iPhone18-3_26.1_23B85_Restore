@interface WBSHistoryServiceURLCompletion
- (BOOL)queryVisitCounts:(id)a3 outVisitCountScore:(int64_t *)a4 outDailyVisitCounts:(id *)a5 outWeeklyVisitCounts:(id *)a6;
- (WBSHistoryServiceURLCompletion)init;
- (double)lastVisitTimeForURLString:(id)a3;
- (id).cxx_construct;
- (id)_endOfRedirectChain:(id)a3;
- (id)_warmUpWithDatabase:(id)a3;
- (id)warmUpWithDatabase:(id)a3;
- (void)computeFrequentlyVisitedSites:(unint64_t)a3 minimalVisitCountScore:(unint64_t)a4 blockList:(id)a5 allowList:(id)a6 options:(unint64_t)a7 currentTime:(double)a8 completionHandler:(id)a9;
- (void)noteRedirectFromURLString:(id)a3 toURLString:(id)a4;
- (void)recordVisit:(id)a3 sourceVisit:(id)a4 title:(id)a5 loadSuccessful:(BOOL)a6 origin:(int64_t)a7 increaseVisitCount:(BOOL)a8 score:(int)a9 statusCode:(int64_t)a10;
- (void)removeURLStrings:(id)a3;
- (void)searchForUserTypedString:(id)a3 options:(unint64_t)a4 currentTime:(double)a5 enumerationGroup:(id)a6 enumerationBlock:(id)a7;
- (void)updateItemWithLatestVisit:(id)a3 database:(id)a4;
- (void)updateURLString:(id)a3 autocompleteTriggerData:(id)a4;
- (void)updateVisit:(id)a3 oldScore:(int)a4 newScore:(int)a5 completionHandler:(id)a6;
- (void)updateVisit:(id)a3 title:(id)a4 databaseID:(id)a5;
@end

@implementation WBSHistoryServiceURLCompletion

- (WBSHistoryServiceURLCompletion)init
{
  v7.receiver = self;
  v7.super_class = WBSHistoryServiceURLCompletion;
  v2 = [(WBSHistoryServiceURLCompletion *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("WBSHistoryServiceURLCompletion", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2;
  }

  return v2;
}

- (id)warmUpWithDatabase:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25;
  v16 = __Block_byref_object_dispose__25;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSHistoryServiceURLCompletion_warmUpWithDatabase___block_invoke;
  block[3] = &unk_1E7FC4D50;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_barrier_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__WBSHistoryServiceURLCompletion_warmUpWithDatabase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _warmUpWithDatabase:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_warmUpWithDatabase:(id)a3
{
  v96[19] = *MEMORY[0x1E69E9840];
  v57 = a3;
  v3 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v57 query:{@"SELECT history_items.id, history_items.url, history_visits.title, redirect_destination, load_successful, visit_time, visit_count_score, status_code, daily_visit_counts, weekly_visit_counts, autocomplete_triggers, origin FROM history_items INNER JOIN history_visits ON history_visits.id = safari_latest_visit_for (history_items.id)"}];
  if (v3)
  {
    v56 = v3;
    v4 = [v3 handle];
    v81 = 0u;
    v82 = 0u;
    v83 = 1065353216;
    v78 = 0u;
    v79 = 0u;
    v80 = 1065353216;
    v70 = 0;
    v71 = &v70;
    v72 = 0x5812000000;
    v73 = __Block_byref_object_copy__27;
    v74 = __Block_byref_object_dispose__28;
    v75 = "";
    memset(v76, 0, sizeof(v76));
    v77 = 1065353216;
    v64 = objc_alloc_init(WBSMemoryPressureMonitor);
    while (1)
    {
      if ([(WBSMemoryPressureMonitor *)v64 pressured])
      {
        goto LABEL_16;
      }

      v5 = sqlite3_step(v4);
      if (v5 != 100)
      {
        break;
      }

      __p = sqlite3_column_int64(v4, 0);
      v6 = sqlite3_column_text(v4, 1);
      v7 = sqlite3_column_bytes(v4, 1);
      if (v6)
      {
        v8 = v7;
        if (strncmp(v6, "data:", 5uLL))
        {
          v61 = sqlite3_column_int64(v4, 6);
          v60 = sqlite3_column_blob(v4, 8);
          v9 = sqlite3_column_bytes(v4, 8);
          v10 = v9;
          if ((v9 & 3) != 0)
          {
            v10 = 0;
          }

          v59 = v10;
          v58 = sqlite3_column_blob(v4, 9);
          v11 = sqlite3_column_bytes(v4, 9);
          if ((v11 & 3) != 0)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11;
          }

          v13 = sqlite3_column_blob(v4, 10);
          v14 = sqlite3_column_bytes(v4, 10);
          v15 = sqlite3_column_int(v4, 4) != 0;
          v16 = sqlite3_column_int64(v4, 11) == 0;
          v17 = sqlite3_column_text(v4, 2);
          v18 = sqlite3_column_bytes(v4, 2);
          v19 = sqlite3_column_double(v4, 5);
          sqlite3_column_int64(v4, 7);
          v20 = WBSStatusCodeGroupFromStatusCode();
          *buf = v6;
          *&buf[8] = v8;
          *&buf[16] = v61;
          v87 = v60;
          v88[0].__locale_ = v59;
          v88[1].__locale_ = v58;
          v88[2].__locale_ = v12;
          v88[3].__locale_ = v13;
          v88[4].__locale_ = v14;
          v89 = v15;
          v90 = v16;
          v91 = v17;
          v92 = v18;
          v93 = v19;
          v94 = v20 == 4;
          SafariShared::URLCompletionEntryBuilder::validateVisitedCountsIfNeeded(buf);
          v69 = SafariShared::URLCompletionEntryMap::insert(&self->_map, buf, 1);
          std::__hash_table<std::__hash_value_type<long long,NSString * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,NSString * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,NSString * {__strong}>>>::__emplace_unique_key_args<long long,long long &,NSString * {__strong}&>(v71 + 6, &__p);
          v68 = sqlite3_column_int64(v4, 3);
          if (v68)
          {
            std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&v81, &v68);
            std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_multi<long long &,long long &>();
          }
        }
      }
    }

    if (v5 != 101)
    {
      v34 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
        [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSHistoryServiceURLCompletion _warmUpWithDatabase:];
      }

      v28 = [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
      goto LABEL_75;
    }

LABEL_16:
    [v56 invalidate];
    v21 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [WBSHistoryServiceURLCompletion _warmUpWithDatabase:v21];
    }

    if ([(WBSMemoryPressureMonitor *)v64 pressured])
    {
      *buf = -1;
      __p = buf;
      SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<long long &>>(v57, 0, @"SELECT count(*) FROM history_items", &__p);
      v22 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(WBSHistoryServiceURLCompletion *)&self->_map _warmUpWithDatabase:buf, v22];
      }
    }

    if (!*(&v79 + 1))
    {
      v35 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        m_table = self->_map._map.m_table;
        if (m_table)
        {
          m_table = *(m_table - 3);
        }

        size = self->_map._extras.__table_.__size_;
        *buf = 134218240;
        *&buf[4] = m_table;
        *&buf[12] = 2048;
        *&buf[14] = size;
        _os_log_impl(&dword_1BB6F3000, v35, OS_LOG_TYPE_INFO, "Ready (%zi) (%zi)", buf, 0x16u);
      }

      v28 = 0;
      goto LABEL_75;
    }

    v23 = objc_alloc(MEMORY[0x1E69C89F0]);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:sn200100](buf);
    std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&buf[16], "SELECT id, history_item FROM history_visits WHERE id IN (", 57);
    v24 = &v82;
    for (i = 1; ; i = 0)
    {
      v24 = *v24;
      if (!v24)
      {
        break;
      }

      v26 = *(v24 + 2);
      if ((i & 1) == 0)
      {
        LOBYTE(__p) = 44;
        std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&buf[16], &__p, 1);
      }

      MEMORY[0x1BFB133B0](&buf[16], v26);
    }

    std::__put_character_sequence[abi:sn200100]<char,std::char_traits<char>>(&buf[16], ")", 1);
    v29 = MEMORY[0x1E696AEC0];
    v30 = std::stringbuf::view[abi:sn200100](&v87);
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:sn200100]();
    }

    v32 = v30;
    if (v31 > 0x16)
    {
      operator new();
    }

    v85 = v31;
    result = &__p;
    v38 = (&__p + v31);
    if (&__p > v32 || v38 <= v32)
    {
      if (v31)
      {
        memmove(&__p, v32, v31);
      }

      *v38 = 0;
      if (v85 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v40 = [v29 stringWithUTF8String:p_p];
      if (v85 < 0)
      {
        operator delete(__p);
      }

      *buf = *MEMORY[0x1E69E54D8];
      v41 = *(MEMORY[0x1E69E54D8] + 72);
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
      *&buf[16] = v41;
      v87 = MEMORY[0x1E69E5548] + 16;
      if (v95 < 0)
      {
        operator delete(v92);
      }

      v87 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v88);
      std::iostream::~basic_iostream();
      MEMORY[0x1BFB13440](v96);
      v62 = [v23 initWithDatabase:v57 query:v40];

      if (!v62)
      {
        v54 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
          [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceURLCompletion _warmUpWithDatabase:];
        }

        v28 = [v57 lastErrorWithMethodName:{"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]", 0}];
        goto LABEL_76;
      }

      v42 = [v62 handle];
      while (1)
      {
        v43 = sqlite3_step(v42);
        if (v43 != 100)
        {
          break;
        }

        __p = sqlite3_column_int64(v42, 0);
        v69 = sqlite3_column_int64(v42, 1);
        v44 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>(&v78, &__p);
        v46 = v45;
        *buf = &v69;
        result = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v71 + 6, &v69);
        if (!result)
        {
          goto LABEL_81;
        }

        v47 = *(result + 3);
        v48 = v47;
        if (v47)
        {
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __54__WBSHistoryServiceURLCompletion__warmUpWithDatabase___block_invoke;
          v65[3] = &unk_1E7FC7F08;
          v67 = &v70;
          v65[4] = self;
          v66 = v47;
          v49 = std::for_each[abi:sn200100]<std::__hash_map_iterator<std::__hash_iterator<std::__hash_node<std::__hash_value_type<long long,long long>,void *> *>>,void({block_pointer} {__strong})(std::pair<long long,long long> const&)>(v44, v46, v65);
        }
      }

      if (v43 == 101)
      {
        [v62 invalidate];
        v50 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          [(WBSHistoryServiceURLCompletion *)&v79 + 1 _warmUpWithDatabase:v50];
        }

        v51 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = self->_map._map.m_table;
          if (v52)
          {
            v52 = *(v52 - 3);
          }

          v53 = self->_map._extras.__table_.__size_;
          *buf = 134218240;
          *&buf[4] = v52;
          *&buf[12] = 2048;
          *&buf[14] = v53;
          _os_log_impl(&dword_1BB6F3000, v51, OS_LOG_TYPE_INFO, "Ready (%zi) (%zi)", buf, 0x16u);
        }

        v28 = 0;
      }

      else
      {
        v55 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
          [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [WBSHistoryServiceURLCompletion _warmUpWithDatabase:];
        }

        v28 = [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
      }

      v56 = v62;
LABEL_75:

LABEL_76:
      _Block_object_dispose(&v70, 8);
      std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(v76);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v78);
      std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v81);
      goto LABEL_77;
    }

LABEL_81:
    __break(1u);
  }

  else
  {
    v27 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
      [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceURLCompletion _warmUpWithDatabase:];
    }

    v28 = [v57 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion _warmUpWithDatabase:]"];
LABEL_77:

    return v28;
  }

  return result;
}

void *__54__WBSHistoryServiceURLCompletion__warmUpWithDatabase___block_invoke(uint64_t a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((*(*(a1 + 48) + 8) + 48), (a2 + 8));
  if (result)
  {
    result = result[3];
    if (result)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__emplace_multi<NSString * const {__strong}&,NSString * {__strong}&>();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)updateItemWithLatestVisit:(id)a3 database:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v6 query:{@"SELECT url, visit_count_score, daily_visit_counts, weekly_visit_counts, autocomplete_triggers, status_code FROM history_items WHERE id = ?"}];
  if (!v7)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v6 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion updateItemWithLatestVisit:database:]"];
      [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceURLCompletion updateItemWithLatestVisit:database:];
    }

    goto LABEL_9;
  }

  v8 = [v5 itemID];
  [v7 bindInt64:v8 atParameterIndex:1];
  v9 = [v7 handle];
  v10 = sqlite3_step(v9);
  if (v10 == 100)
  {
    v13 = [v5 title];
    v14 = [v13 UTF8String];

    v32 = sqlite3_column_blob(v9, 0);
    v31 = sqlite3_column_bytes(v9, 0);
    v30 = sqlite3_column_int64(v9, 1);
    v29 = sqlite3_column_blob(v9, 2);
    v15 = sqlite3_column_bytes(v9, 2);
    v16 = v15;
    if ((v15 & 3) != 0)
    {
      v16 = 0;
    }

    v28 = v16;
    v27 = sqlite3_column_blob(v9, 3);
    v17 = sqlite3_column_bytes(v9, 3);
    v18 = v17;
    if ((v17 & 3) != 0)
    {
      v18 = 0;
    }

    v26 = v18;
    v25 = sqlite3_column_blob(v9, 4);
    v19 = sqlite3_column_bytes(v9, 4);
    v20 = [v5 loadSuccessful];
    v21 = [v5 origin] == 0;
    if (v14)
    {
      v22 = strlen(v14);
    }

    else
    {
      v22 = 0;
    }

    [v5 visitTime];
    v24 = v23;
    sqlite3_column_int64(v9, 5);
    *buf = v32;
    v35 = v31;
    v36 = v30;
    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = v26;
    v41 = v25;
    v42 = v19;
    v43 = v20;
    v44 = v21;
    v45 = v14;
    v46 = v22;
    v47 = v24;
    v48 = WBSStatusCodeGroupFromStatusCode() == 4;
    SafariShared::URLCompletionEntryBuilder::validateVisitedCountsIfNeeded(buf);
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3812000000;
    v33[3] = __Block_byref_object_copy__41;
    v33[4] = __Block_byref_object_dispose__42;
    v33[5] = "";
    SafariShared::URLCompletionEntryBuilder::buildEntry(buf);
  }

  if (v10 != 101)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v6 lastErrorWithMethodName:"-[WBSHistoryServiceURLCompletion updateItemWithLatestVisit:database:]"];
      [objc_claimAutoreleasedReturnValue() safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistoryServiceURLCompletion updateItemWithLatestVisit:database:];
    }

LABEL_9:

    goto LABEL_21;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    -[WBSHistoryServiceURLCompletion updateItemWithLatestVisit:database:].cold.1(buf, [v5 databaseID], v8, v11);
  }

LABEL_21:
}

- (void)updateURLString:(id)a3 autocompleteTriggerData:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSHistoryServiceURLCompletion_updateURLString_autocompleteTriggerData___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(queue, block);
}

- (void)noteRedirectFromURLString:(id)a3 toURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSHistoryServiceURLCompletion_noteRedirectFromURLString_toURLString___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_barrier_async(queue, block);
}

- (BOOL)queryVisitCounts:(id)a3 outVisitCountScore:(int64_t *)a4 outDailyVisitCounts:(id *)a5 outWeeklyVisitCounts:(id *)a6
{
  v10 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__25;
  v30 = __Block_byref_object_dispose__25;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__25;
  v24 = __Block_byref_object_dispose__25;
  v25 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __111__WBSHistoryServiceURLCompletion_queryVisitCounts_outVisitCountScore_outDailyVisitCounts_outWeeklyVisitCounts___block_invoke;
  v14[3] = &unk_1E7FC7F58;
  v14[4] = self;
  v15 = v10;
  v16 = &v32;
  v17 = &v26;
  v18 = &v20;
  v19 = a4;
  v12 = v10;
  dispatch_sync(queue, v14);
  *a5 = v27[5];
  *a6 = v21[5];
  LOBYTE(a6) = *(v33 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  return a6;
}

void __111__WBSHistoryServiceURLCompletion_queryVisitCounts_outVisitCountScore_outDailyVisitCounts_outWeeklyVisitCounts___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[9];
  v13 = 0;
  v14 = 0;
  v5 = SafariShared::URLCompletionEntryMap::queryVisitCounts((v3 + 16), v2, v4, &v14, &v13);
  v6 = v14;
  v7 = v13;
  *(*(a1[6] + 8) + 24) = v5;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(a1[8] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

- (void)recordVisit:(id)a3 sourceVisit:(id)a4 title:(id)a5 loadSuccessful:(BOOL)a6 origin:(int64_t)a7 increaseVisitCount:(BOOL)a8 score:(int)a9 statusCode:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__WBSHistoryServiceURLCompletion_recordVisit_sourceVisit_title_loadSuccessful_origin_increaseVisitCount_score_statusCode___block_invoke;
  block[3] = &unk_1E7FC7F80;
  block[4] = self;
  v24 = v16;
  v30 = a6;
  v27 = a10;
  v28 = a7;
  v31 = a8;
  v29 = a9;
  v25 = v18;
  v26 = v17;
  v20 = v17;
  v21 = v18;
  v22 = v16;
  dispatch_barrier_async(queue, block);
}

void __122__WBSHistoryServiceURLCompletion_recordVisit_sourceVisit_title_loadSuccessful_origin_increaseVisitCount_score_statusCode___block_invoke(uint64_t a1)
{
  v2 = WBSStatusCodeGroupFromStatusCode();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) urlString];
  v5 = *(a1 + 48);
  [*(a1 + 40) visitTime];
  SafariShared::URLCompletionEntryMap::recordVisit((v3 + 16), v4, v5, *(a1 + 84), *(a1 + 72), *(a1 + 85), *(a1 + 80), v2 == 4, v6);

  if (*(a1 + 56))
  {
    [*(a1 + 40) urlString];
    objc_claimAutoreleasedReturnValue();
    [*(a1 + 56) urlString];
    objc_claimAutoreleasedReturnValue();
    std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__emplace_multi<NSString * {__strong},NSString * {__strong}>();
  }
}

- (void)updateVisit:(id)a3 title:(id)a4 databaseID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__WBSHistoryServiceURLCompletion_updateVisit_title_databaseID___block_invoke;
  v15[3] = &unk_1E7FC5D00;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_barrier_async(queue, v15);
}

void __63__WBSHistoryServiceURLCompletion_updateVisit_title_databaseID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) urlString];
  [*(a1 + 40) visitTime];
  SafariShared::URLCompletionEntryMap::updateItemTitle((v2 + 16), v5, v4, *(a1 + 48), v3);
}

- (void)updateVisit:(id)a3 oldScore:(int)a4 newScore:(int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__WBSHistoryServiceURLCompletion_updateVisit_oldScore_newScore_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC59B0;
  v15[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_barrier_async(queue, v15);
}

void __82__WBSHistoryServiceURLCompletion_updateVisit_oldScore_newScore_completionHandler___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) urlString];
  [*(a1 + 40) visitTime];
  SafariShared::URLCompletionEntryMap::updateItemScore((v2 + 16), v3, v4, *(a1 + 56), *(a1 + 60), &v9);

  v5 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__WBSHistoryServiceURLCompletion_updateVisit_oldScore_newScore_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FC58E8;
  v7 = *(a1 + 48);
  v8 = v9;
  dispatch_async(v5, v6);
}

- (void)removeURLStrings:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WBSHistoryServiceURLCompletion_removeURLStrings___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(queue, v7);
}

- (double)lastVisitTimeForURLString:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSHistoryServiceURLCompletion_lastVisitTimeForURLString___block_invoke;
  block[3] = &unk_1E7FC4D50;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)_endOfRedirectChain:(id)a3
{
  v4 = a3;
  v5 = 16;
  while (1)
  {
    v6 = SafariShared::URLCompletionEntryMap::nextItemInRedirectChainOfItem(&self->_map, v4);
    if (!v6)
    {
      break;
    }

    v4 = v6;
    if (!--v5)
    {
      goto LABEL_6;
    }
  }

  v6 = v4;
LABEL_6:

  return v6;
}

- (void)searchForUserTypedString:(id)a3 options:(unint64_t)a4 currentTime:(double)a5 enumerationGroup:(id)a6 enumerationBlock:(id)a7
{
  v12 = a3;
  v13 = a7;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x6012000000;
  v28[3] = __Block_byref_object_copy__47;
  v28[4] = __Block_byref_object_dispose__48;
  v28[5] = 256;
  memset(&v28[6], 0, 40);
  v29 = 1065353216;
  v14 = a6;
  v15 = dispatch_queue_create("WBSHistoryServiceURLCompletion.redundancyPreventer", 0);
  v16 = v28[6];
  v28[6] = v15;

  queue = self->_queue;
  if (threadCountToEnumerateConcurrently(void)::onceToken != -1)
  {
    [WBSHistoryServiceURLCompletion searchForUserTypedString:options:currentTime:enumerationGroup:enumerationBlock:];
  }

  v18 = threadCountToEnumerateConcurrently(void)::threadCount;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113__WBSHistoryServiceURLCompletion_searchForUserTypedString_options_currentTime_enumerationGroup_enumerationBlock___block_invoke;
  v21[3] = &unk_1E7FC7FA8;
  v25 = v28;
  v26 = a4;
  v22 = v12;
  v23 = self;
  v27 = a5;
  v24 = v13;
  v19 = v13;
  v20 = v12;
  SafariShared::URLCompletionEntryMap::enumerateConcurrently(&self->_map, v14, queue, v18, v21);

  _Block_object_dispose(v28, 8);
  std::__hash_table<NSString * {__strong},std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::allocator<NSString * {__strong}>>::~__hash_table(&v28[7]);
}

void __113__WBSHistoryServiceURLCompletion_searchForUserTypedString_options_currentTime_enumerationGroup_enumerationBlock___block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = a1[4];
  v6 = a1[8];
  v7 = *(a2 + 16);
  LOBYTE(v4) = SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions(v7, v4, v5, v6);

  if (v4)
  {
    v8 = a1[5];
    v9 = *a2;
    v10 = [v8 _endOfRedirectChain:v9];
    v18 = v10;

    v11 = *(a1[7] + 8);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v12 = *(v11 + 48);
    v23 = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN12SafariShared32URLCompletionRedundancyPreventer22shouldProcessURLStringEP8NSString_block_invoke;
    block[3] = &unk_1E7FC8048;
    block[5] = v11 + 48;
    block[6] = v10;
    block[4] = &v20;
    dispatch_sync(v12, block);
    LOBYTE(v9) = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
    if (v9)
    {
      v13 = [[WBSHistoryServiceURLCompletionMatchData alloc] initWithLastVisitWasFailure:*(a2 + 48) >= 0 visitWasFromThisDevice:(*(a2 + 48) >> 59) & 1 visitWasClientError:(*(a2 + 48) >> 58) & 1];
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      SafariShared::URLCompletionEntryMap::addURLCompletionMatchEntryToArray((a1[5] + 16), v13, v14, v10);
      v15 = std::__hash_table<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},NSString * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},NSString * {__strong}>>>::__equal_range_multi<NSString * {__strong}>((a1[5] + 64), &v18);
      v17 = v16;
      while (v15 != v17)
      {
        if (!v15)
        {
          __break(1u);
          return;
        }

        SafariShared::URLCompletionEntryMap::addURLCompletionMatchEntryToArray((a1[5] + 16), v13, v14, v15[3]);
        v15 = *v15;
      }

      if ([v14 count])
      {
        [(WBSHistoryServiceURLCompletionMatchData *)v13 setEntries:v14];
        (*(a1[6] + 16))();
      }

      v10 = v18;
    }
  }
}

- (void)computeFrequentlyVisitedSites:(unint64_t)a3 minimalVisitCountScore:(unint64_t)a4 blockList:(id)a5 allowList:(id)a6 options:(unint64_t)a7 currentTime:(double)a8 completionHandler:(id)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a9;
  if (a3)
  {
    v19 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x4812000000;
    v47[3] = __Block_byref_object_copy__53;
    v47[4] = __Block_byref_object_dispose__54;
    v47[5] = "";
    memset(v48, 0, 24);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0x800000;
    if ((a7 & 2) != 0)
    {
      v19 = [MEMORY[0x1E695DF90] dictionary];
    }

    v29 = v18;
    v20 = v16;
    if ((a7 & 1) != 0 && [WBSHistoryServiceURLCompletion computeFrequentlyVisitedSites:minimalVisitCountScore:blockList:allowList:options:currentTime:completionHandler:]::filterExpressionOnce != -1)
    {
      [WBSHistoryServiceURLCompletion computeFrequentlyVisitedSites:minimalVisitCountScore:blockList:allowList:options:currentTime:completionHandler:];
    }

    v21 = dispatch_group_create();
    v22 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryServiceURLCompletion.computeFrequentlyVisitedSites", 0);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_2;
    block[3] = &unk_1E7FC8020;
    v41 = a4;
    block[4] = self;
    v34 = v21;
    v35 = v17;
    v43 = a8;
    v36 = v20;
    v37 = v22;
    v38 = v19;
    v39 = v45;
    v42 = a7;
    v40 = v47;
    v44 = a3;
    v24 = v19;
    v25 = v22;
    v16 = v20;
    v26 = v25;
    v27 = v21;
    dispatch_group_async(v27, queue, block);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_5;
    v30[3] = &unk_1E7FC4B78;
    v18 = v29;
    v31 = v29;
    v32 = v47;
    dispatch_group_notify(v27, v26, v30);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
    v45[0] = v48;
    std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::__destroy_vector::operator()[abi:sn200100](v45);
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v18 + 2))(v18, 0, v28);
  }
}

void __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(log(in|out|on)|sign(in|out|on)|authenticat)" options:1 error:0];
  v1 = [WBSHistoryServiceURLCompletion computeFrequentlyVisitedSites:minimalVisitCountScore:blockList:allowList:options:currentTime:completionHandler:]::filterExpression;
  [WBSHistoryServiceURLCompletion computeFrequentlyVisitedSites:minimalVisitCountScore:blockList:allowList:options:currentTime:completionHandler:]::filterExpression = v0;
}

void __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    v3 = SafariShared::URLCompletionEntryMap::uniqueLocalCanonicalURLVisitCount((*(a1 + 32) + 16));
    *&v4 = WBSTopSitesMinimumVisitCountThreshold(v3);
    LODWORD(v2) = [WBSHistoryVisit scoreForWeightedVisitCount:v4];
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  if (threadCountToEnumerateConcurrently(void)::onceToken != -1)
  {
    __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_2_cold_1();
  }

  v8 = threadCountToEnumerateConcurrently(void)::threadCount;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_3;
  v17[3] = &unk_1E7FC7FF8;
  v26 = v2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v23 = *(a1 + 104);
  v24 = *(a1 + 112);
  v15 = *(a1 + 32);
  v11 = *(&v15 + 1);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v15;
  v20 = *(a1 + 64);
  v16 = *(a1 + 72);
  v13 = v16;
  v21 = v16;
  v14 = *(a1 + 120);
  v22 = *(a1 + 88);
  v25 = v14;
  SafariShared::URLCompletionEntryMap::enumerateConcurrently(v6 + 16, v5, v7, v8, v17);
}

void __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v34 = *(a2 + 48);
    if (*(a1 + 120) <= v34)
    {
      v4 = *a2;
      v5 = [v4 safari_canonicalURLStringForFrequentlyVisitedSites];
      if (*(a2 + 48) & 0x8000000000000000) != 0 || (v6 = *(a1 + 32)) != 0 && ([v6 containsObject:v5])
      {
        v7 = *(a1 + 40);
        if ((!v7 || ([v7 containsObject:v5] & 1) == 0) && ((objc_msgSend(v4, "safari_hasCaseInsensitivePrefix:", @"http:") & 1) != 0 || objc_msgSend(v4, "safari_hasCaseInsensitivePrefix:", @"https:")) && ((*(a1 + 96) & 1) == 0 || objc_msgSend(-[WBSHistoryServiceURLCompletion computeFrequentlyVisitedSites:minimalVisitCountScore:blockList:allowList:options:currentTime:completionHandler:]::filterExpression, "rangeOfFirstMatchInString:options:range:", v4, 0, 0, objc_msgSend(v4, "length")) == 0x7FFFFFFFFFFFFFFFLL))
        {
          v8 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v4];
          v9 = [v8 host];
          if (v9)
          {
            SafariShared::URLCompletionEntryMap::visitedMoreThanOnceStatistics((*(a1 + 48) + 16), v4);
            v10 = WBSTopSitesScore();
            if (v10 > 0.0)
            {
              v11 = [WBSHistoryServiceURLCompletionMatchEntry alloc];
              v12 = *a2;
              v13 = *(a2 + 24);
              v14 = v12;
              *&v15 = v10;
              v16 = [(WBSHistoryServiceURLCompletionMatchEntry *)v11 initWithURLString:v14 title:v13 topSitesScore:v34 visitCountScore:v15];

              v17 = *(a1 + 56);
              v18 = *(a1 + 64);
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_4;
              v25[3] = &unk_1E7FC7FD0;
              v33 = v10;
              v19 = *(a1 + 96);
              v20 = *(a1 + 72);
              v29 = *(a1 + 80);
              v31 = v19;
              v26 = v20;
              v21 = v9;
              v22 = *(a1 + 88);
              v27 = v21;
              v28 = v16;
              v23 = *(a1 + 112);
              v30 = v22;
              v32 = v23;
              v24 = v16;
              dispatch_group_async(v17, v18, v25);
            }
          }
        }
      }
    }
  }
}

void __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) > *(a1 + 88))
  {
    return;
  }

  if ((*(a1 + 72) & 2) != 0)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    if (v2)
    {
      v3 = *(a1 + 88);
      v24 = v2;
      [v2 topSitesScore];
      if (v3 < v4)
      {

        return;
      }

      v5 = *(*(a1 + 64) + 8);
      v7 = *(v5 + 48);
      v6 = *(v5 + 56);
      v2 = v24;
      if (v7 != v6)
      {
        while (*v7 != v24)
        {
          if (++v7 == v6)
          {
            v7 = *(v5 + 56);
            break;
          }
        }
      }

      if (v6 != v7)
      {
        v8 = v7 + 1;
        if (v7 + 1 != v6)
        {
          do
          {
            v9 = *(v8 - 1);
            *(v8 - 1) = *v8;
            *v8 = 0;

            ++v8;
          }

          while (v8 != v6);
          v6 = *(v5 + 56);
          v7 = v8 - 1;
        }

        while (v6 != v7)
        {
          v10 = *--v6;
        }

        *(v5 + 56) = v7;
        v2 = v24;
      }
    }

    [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  }

  v11 = *(*(a1 + 64) + 8);
  v13 = *(v11 + 48);
  v12 = *(v11 + 56);
  if (*(a1 + 80) <= ((v12 - v13) >> 3))
  {
    if (v13 == v12)
    {
      goto LABEL_36;
    }

    [*(v12 - 8) topSitesScore];
    if (v14 > *(a1 + 88))
    {
      return;
    }

    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 56);
    if (*(v15 + 48) == v16)
    {
      goto LABEL_36;
    }

    *(v15 + 56) = v16 - 8;
    v11 = *(*(a1 + 64) + 8);
    v13 = *(v11 + 48);
    v12 = *(v11 + 56);
  }

  if (v12 != v13)
  {
    v17 = (v12 - v13) >> 3;
    do
    {
      v18 = &v13[v17 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      if (WBSHistoryServiceURLCompletionMatchEntrySorter(*(a1 + 48), v20))
      {
        v17 >>= 1;
      }

      else
      {
        v13 = v19;
        v17 += ~(v17 >> 1);
      }
    }

    while (v17);
    v12 = v13;
  }

  std::vector<WBSHistoryServiceURLCompletionMatchEntry * {__strong}>::insert(v11 + 48, v12, (a1 + 48));
  v22 = *(*(*(a1 + 64) + 8) + 48);
  v21 = *(*(*(a1 + 64) + 8) + 56);
  if (*(a1 + 80) <= ((v21 - v22) >> 3))
  {
    if (v22 != v21)
    {
      [*(v21 - 8) topSitesScore];
      *(*(*(a1 + 56) + 8) + 24) = v23;
      return;
    }

LABEL_36:
    __break(1u);
  }
}

void __145__WBSHistoryServiceURLCompletion_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  (*(v1 + 16))(v1);
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

- (void)_warmUpWithDatabase:.cold.1()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to Warm Up: %{public}@", v6);
}

- (void)_warmUpWithDatabase:(os_log_t)log .cold.3(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1)
  {
    v3 = *(v3 - 12);
  }

  v4 = *a2;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_fault_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_FAULT, "The warmup procedure was interrupted by a memory pressure warning; Loaded %zi, Total database is %zi", &v5, 0x16u);
}

- (void)_warmUpWithDatabase:(uint64_t *)a1 .cold.4(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Resolved indirections (%zi)", &v3, 0xCu);
}

- (void)_warmUpWithDatabase:.cold.6()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to resolve indirections from database: %{public}@", v6);
}

- (void)_warmUpWithDatabase:.cold.7()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to fetch URLs and Page's title from database: %{public}@", v6);
}

- (void)updateItemWithLatestVisit:(uint64_t)a3 database:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Could not find item corresponding to visit %lld (with item ID %lld)", buf, 0x16u);
}

- (void)updateItemWithLatestVisit:database:.cold.2()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to fetch item corresponding to visit: %{public}@", v6);
}

- (void)updateItemWithLatestVisit:database:.cold.3()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_2_1(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v4, v5, "Failed to initialize statement to fetch item corresponding to visit: %{public}@", v6);
}

@end