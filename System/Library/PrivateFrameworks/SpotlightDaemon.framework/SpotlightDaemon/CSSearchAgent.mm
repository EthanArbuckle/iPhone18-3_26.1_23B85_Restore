@interface CSSearchAgent
+ (id)searchAgent:(BOOL)agent serviceName:(id)name;
- (BOOL)addClientConnectionIfAllowedForConfiguration:(id)configuration;
- (BOOL)addClientConnectionIfAllowedForConnection:(id)connection;
- (BOOL)handleCommand:(const char *)command info:(id)info connection:(id)connection;
- (BOOL)lostClientConnection:(id)connection error:(id)error;
- (id)searchConnection:(id)connection;
- (void)_prepareQueryContext:(id)context searchConnection:(id)connection;
- (void)addHiddenAppFiltersToQueryContext:(id)context;
- (void)cancelQuery:(id)query;
- (void)cancelSimpleQuery:(id)query;
- (void)handleEngagement:(id)engagement forConnection:(id)connection;
- (void)pollResults:(id)results;
- (void)preheat:(id)preheat;
- (void)startQuery:(id)query;
- (void)startSimpleQuery:(id)query;
@end

@implementation CSSearchAgent

+ (id)searchAgent:(BOOL)agent serviceName:(id)name
{
  nameCopy = name;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CSSearchAgent_searchAgent_serviceName___block_invoke;
  v11[3] = &unk_278934400;
  agentCopy = agent;
  v12 = nameCopy;
  v6 = searchAgent_serviceName__onceToken;
  v7 = nameCopy;
  if (v6 != -1)
  {
    dispatch_once(&searchAgent_serviceName__onceToken, v11);
  }

  v8 = sSearchAgent;
  v9 = sSearchAgent;

  return v8;
}

uint64_t __41__CSSearchAgent_searchAgent_serviceName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [CSSearchAgent alloc];
  v4 = *MEMORY[0x277CC2378];
  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = *MEMORY[0x277CC2378];
  }

  if (v2 == 1)
  {
    v6 = [(CSXPCConnection *)v3 initWithServiceName:v5];
    v7 = sSearchAgent;
    sSearchAgent = v6;

    sSearchAgentIsPrivate = 1;
  }

  else
  {
    v8 = [(CSXPCConnection *)v3 initMachServiceListenerWithName:v5];
    v9 = sSearchAgent;
    sSearchAgent = v8;
  }

  v10 = objc_opt_new();
  [sSearchAgent setSearchConnections:v10];

  return MEMORY[0x282187210](CSSearchAgentFieldNameCallback);
}

- (BOOL)addClientConnectionIfAllowedForConfiguration:(id)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [[CSSearchClientConnection alloc] initWithConnectionConfiguration:configurationCopy];
  bundleID = [(CSSearchClientConnection *)v5 bundleID];
  if (bundleID)
  {

LABEL_4:
    connection = [configurationCopy connection];
    v8 = [CSSearchClientConnectionKey keyWithConnection:connection];

    searchConnections = [(CSSearchAgent *)self searchConnections];
    v10 = [searchConnections objectForKeyedSubscript:v8];

    if (v10)
    {
      v11 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        searchConnections2 = [(CSSearchAgent *)self searchConnections];
        v13 = [searchConnections2 objectForKeyedSubscript:v8];
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "Attempted to recreate search connection for existing connection:%@ key:%@", &v18, 0x16u);
      }
    }

    else
    {
      searchConnections3 = [(CSSearchAgent *)self searchConnections];
      [searchConnections3 setObject:v5 forKeyedSubscript:v8];
    }

    v15 = 1;
    goto LABEL_10;
  }

  if ([(CSSearchClientConnection *)v5 searchInternal])
  {
    goto LABEL_4;
  }

  v8 = logForCSLogCategoryQuery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CSSearchAgent addClientConnectionIfAllowedForConfiguration:configurationCopy];
  }

  v15 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [SDConnectionConfiguration alloc];
  v6 = [(SDConnectionConfiguration *)v5 initWithConnection:connectionCopy isPrivate:sSearchAgentIsPrivate];

  LOBYTE(self) = [(CSSearchAgent *)self addClientConnectionIfAllowedForConfiguration:v6];
  return self;
}

- (BOOL)lostClientConnection:(id)connection error:(id)error
{
  error = [CSSearchClientConnectionKey keyWithConnection:connection, error];
  v6 = [(NSMutableDictionary *)self->_searchConnections objectForKeyedSubscript:error];
  searchConnections = [(CSSearchAgent *)self searchConnections];
  [searchConnections setObject:0 forKeyedSubscript:error];

  [v6 cancelQueryTasks];
  return 0;
}

- (id)searchConnection:(id)connection
{
  v4 = [CSSearchClientConnectionKey keyWithConnection:connection];
  v5 = [(NSMutableDictionary *)self->_searchConnections objectForKeyedSubscript:v4];

  return v5;
}

- (void)cancelQuery:(id)query
{
  original = query;
  v4 = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  v6 = reply;
  if (v4 && reply)
  {
    v7 = [(CSSearchAgent *)self searchConnection:v4];
    if (v7)
    {
      uint64 = xpc_dictionary_get_uint64(original, "qid");
      [v7 cancelQueryTask:uint64];
    }

    else
    {
      uint64 = 0;
    }

    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
  }
}

- (void)pollResults:(id)results
{
  original = results;
  v4 = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  v6 = reply;
  if (v4 && reply)
  {
    v7 = [(CSSearchAgent *)self searchConnection:v4];
    if (v7)
    {
      uint64 = xpc_dictionary_get_uint64(original, "qid");
      [v7 pollResultsForQueryTask:uint64];
    }

    else
    {
      uint64 = 0;
    }

    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
  }
}

- (void)preheat:(id)preheat
{
  v22 = *MEMORY[0x277D85DE8];
  preheatCopy = preheat;
  v5 = MEMORY[0x277CC3510];
  v6 = xpc_dictionary_get_value(preheatCopy, "pcs");
  v7 = [v5 copyNSStringArrayFromXPCArray:v6];

  v8 = [v7 count];
  v9 = logForCSLogCategoryQuery();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v20 = 138412290;
    v21 = v7;
    v11 = "query preheat %@";
    v12 = v9;
    v13 = 12;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    LOWORD(v20) = 0;
    v11 = "query preheat";
    v12 = v9;
    v13 = 2;
  }

  _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_INFO, v11, &v20, v13);
LABEL_7:

  indexer = self->_indexer;
  if (objc_opt_respondsToSelector())
  {
    [(MDIndexer *)self->_indexer queryPreheat:v7];
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v16 = xpc_dictionary_get_remote_connection(preheatCopy);
  if (v16)
  {
    reply = xpc_dictionary_create_reply(preheatCopy);
    v18 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", v15);
      xpc_connection_send_message(v16, v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_prepareQueryContext:(id)context searchConnection:(id)connection
{
  v103 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  connectionCopy = connection;
  bundleID = [connectionCopy bundleID];
  internal = [contextCopy internal];
  bundleIDs = [contextCopy bundleIDs];
  v10 = bundleIDs;
  v11 = MEMORY[0x277CBEBF8];
  if (bundleIDs)
  {
    v12 = bundleIDs;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  additionalBundleIDs = [contextCopy additionalBundleIDs];
  v15 = additionalBundleIDs;
  if (additionalBundleIDs)
  {
    v16 = additionalBundleIDs;
  }

  else
  {
    v16 = v11;
  }

  bundleIDs8 = v16;

  instantAnswersBundleIDs = [contextCopy instantAnswersBundleIDs];
  v19 = instantAnswersBundleIDs;
  if (instantAnswersBundleIDs)
  {
    v20 = instantAnswersBundleIDs;
  }

  else
  {
    v20 = v11;
  }

  v21 = v20;

  v87 = bundleIDs8;
  v88 = connectionCopy;
  v85 = v13;
  v86 = v21;
  if (internal)
  {
    if (([contextCopy includeUserActivities] & 1) == 0)
    {
      [bundleID hasPrefix:@"com.apple.search"];
    }

    goto LABEL_44;
  }

  if (![v13 count])
  {
    if ([contextCopy sourceOptions] & 1) != 0 && (objc_msgSend(connectionCopy, "configuration"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "allowMail"), v30, (v31))
    {
      v32 = &unk_2846C9458;
    }

    else
    {
      v99 = bundleID;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    }

    [contextCopy setBundleIDs:v32];

LABEL_44:
    v26 = 0;
    goto LABEL_49;
  }

  allowedBundleIDs = [connectionCopy allowedBundleIDs];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v94;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v94 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = *(*(&v93 + 1) + 8 * i);
        if (([bundleID isEqualToString:v29] & 1) == 0)
        {
          if (([allowedBundleIDs containsObject:v29] & 1) == 0)
          {
            v33 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [CSSearchAgent _prepareQueryContext:searchConnection:];
            }

            if (v26)
            {
              v34 = objc_opt_new();
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v35 = v23;
              v36 = [v35 countByEnumeratingWithState:&v89 objects:v101 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v90;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v90 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v89 + 1) + 8 * j);
                    if (([allowedBundleIDs containsObject:v40] & 1) != 0 || objc_msgSend(bundleID, "isEqualToString:", v40))
                    {
                      [v34 addObject:bundleID];
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:&v89 objects:v101 count:16];
                }

                while (v37);
              }

              v26 = 1;
            }

            else
            {
              v100 = bundleID;
              v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
              v26 = 0;
            }

            [contextCopy setBundleIDs:v34];
            v23 = v34;
            goto LABEL_48;
          }

          v26 = 1;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_48:

  bundleIDs8 = v87;
  connectionCopy = v88;
  v21 = v86;
LABEL_49:
  if ([contextCopy generateSuggestions])
  {
    if ([bundleIDs8 count])
    {
      bundleIDs2 = [contextCopy bundleIDs];
      v42 = [bundleIDs2 count];

      if (v42)
      {
        bundleIDs3 = [contextCopy bundleIDs];
        v44 = [bundleIDs3 arrayByAddingObjectsFromArray:bundleIDs8];
        [contextCopy setBundleIDs:v44];
      }
    }
  }

  if ([contextCopy enableInstantAnswers] && objc_msgSend(v21, "count"))
  {
    bundleIDs4 = [contextCopy bundleIDs];
    if (![bundleIDs4 count])
    {
LABEL_61:

      goto LABEL_62;
    }

    v46 = bundleID;
    if (([v46 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v46, "hasPrefix:", @"com.apple.intelligenceflow") & 1) != 0 || objc_msgSend(v46, "hasPrefix:", @"com.apple.ondeviceeval"))
    {

LABEL_60:
      bundleIDs4 = [contextCopy bundleIDs];
      v47 = [bundleIDs4 arrayByAddingObjectsFromArray:v21];
      [contextCopy setBundleIDs:v47];

      goto LABEL_61;
    }

    v79 = [v46 isEqualToString:@"com.apple.mobilemail"];

    if (v79)
    {
      goto LABEL_60;
    }
  }

LABEL_62:
  configuration = [connectionCopy configuration];
  [contextCopy setEntitledAttributes:{objc_msgSend(configuration, "entitledAttributes")}];

  configuration2 = [connectionCopy configuration];
  allowNotifications = [configuration2 allowNotifications];

  if (allowNotifications)
  {
    v51 = logForCSLogCategoryQuery();
    selfCopy2 = self;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      [CSSearchAgent _prepareQueryContext:contextCopy searchConnection:v51];
    }
  }

  else
  {
    disableBundles = [contextCopy disableBundles];
    selfCopy2 = self;
    if (disableBundles)
    {
      disableBundles2 = [contextCopy disableBundles];
      v51 = [disableBundles2 arrayByAddingObject:@"com.apple.usernotificationsd"];
    }

    else
    {
      v51 = &unk_2846C9470;
    }

    [contextCopy setDisableBundles:v51];
  }

  if (([contextCopy filterOutHiddenApps] & 1) != 0 || objc_msgSend(bundleID, "isEqualToString:", @"com.apple.Preferences"))
  {
    [contextCopy setFilterOutHiddenApps:1];
    [(CSSearchAgent *)selfCopy2 addHiddenAppFiltersToQueryContext:contextCopy];
  }

  bundleIDs5 = [contextCopy bundleIDs];
  if ([bundleIDs5 count])
  {
    bundleIDs6 = [contextCopy bundleIDs];
    v57 = [bundleIDs6 containsObject:@"com.apple.mobileslideshow"];

    if (v57)
    {
      goto LABEL_91;
    }
  }

  else
  {
  }

  array = [MEMORY[0x277CBEB18] array];
  v59 = array;
  if ((internal & 1) == 0)
  {
    [array addObject:@"_kMDItemUserActivityType != *"];
  }

  if (v26)
  {
    [v59 addObject:@"kMDItemHashtags==*"];
  }

  indexer = selfCopy2->_indexer;
  if (objc_opt_respondsToSelector())
  {
    fileProviderDomainFilterQueries = [(MDIndexer *)selfCopy2->_indexer fileProviderDomainFilterQueries];
    v62 = fileProviderDomainFilterQueries;
    if (fileProviderDomainFilterQueries && [fileProviderDomainFilterQueries count])
    {
      [v59 addObjectsFromArray:v62];
    }
  }

  if ([v59 count])
  {
    filterQueries = [contextCopy filterQueries];
    if (filterQueries)
    {
      filterQueries2 = [contextCopy filterQueries];
      v65 = [filterQueries2 arrayByAddingObjectsFromArray:v59];
      [contextCopy setFilterQueries:v65];
    }

    else
    {
      [contextCopy setFilterQueries:v59];
    }
  }

LABEL_91:
  protectionClasses = [contextCopy protectionClasses];
  bundleIDs7 = [contextCopy bundleIDs];
  v68 = [bundleIDs7 containsObject:@"com.apple.spotlight.events"];
  if ((v68 & 1) == 0)
  {
    bundleIDs8 = [contextCopy bundleIDs];
    if (![bundleIDs8 containsObject:@"com.apple.spotlight.contacts"])
    {
      goto LABEL_99;
    }
  }

  protectionClasses2 = [contextCopy protectionClasses];
  v70 = *MEMORY[0x277CCA1A0];
  if ([protectionClasses2 containsObject:*MEMORY[0x277CCA1A0]])
  {
LABEL_98:

    if (v68)
    {
LABEL_100:
      v74 = v87;
      v73 = v88;
      v75 = v86;
      goto LABEL_101;
    }

LABEL_99:

    goto LABEL_100;
  }

  clientBundleID = [contextCopy clientBundleID];
  if ([clientBundleID hasPrefix:@"com.apple.omniSearch"])
  {
LABEL_97:

    goto LABEL_98;
  }

  clientBundleID2 = [contextCopy clientBundleID];
  if ([clientBundleID2 hasPrefix:@"com.apple.ondeviceeval"])
  {

    goto LABEL_97;
  }

  clientBundleID3 = [contextCopy clientBundleID];
  if ([clientBundleID3 hasPrefix:@"com.apple.intelligenceflow"])
  {
    v84 = 0;
  }

  else
  {
    clientBundleID4 = [contextCopy clientBundleID];
    v84 = [clientBundleID4 hasPrefix:@"com.apple.SpotlightUITests"] ^ 1;
  }

  if (v68)
  {

    v74 = v87;
    v73 = v88;
    if (!v84)
    {
      goto LABEL_110;
    }

LABEL_113:
    v75 = v86;
    if ([protectionClasses count])
    {
      [protectionClasses arrayByAddingObject:v70];
    }

    else
    {
      v98 = v70;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
    }
    v80 = ;
    [contextCopy setProtectionClasses:v80];

    [contextCopy protectionClasses];
    protectionClasses = bundleIDs7 = protectionClasses;
LABEL_101:

    if (!protectionClasses)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v74 = v87;
  v73 = v88;
  if (v84)
  {
    goto LABEL_113;
  }

LABEL_110:
  v75 = v86;
  if (!protectionClasses)
  {
    goto LABEL_104;
  }

LABEL_102:
  if (![protectionClasses count])
  {
    protectionClass = [v73 protectionClass];
    v97 = protectionClass;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    [contextCopy setProtectionClasses:v77];
  }

LABEL_104:

  v78 = *MEMORY[0x277D85DE8];
}

- (void)startQuery:(id)query
{
  v156[3] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v4 = xpc_dictionary_get_remote_connection(queryCopy);
  reply = xpc_dictionary_create_reply(queryCopy);
  v6 = reply;
  if (v4 && reply)
  {
    val = [(CSSearchAgent *)self searchConnection:v4];
    if (val)
    {
      uint64 = xpc_dictionary_get_uint64(queryCopy, "qid");
    }

    else
    {
      uint64 = 0;
    }

    v10 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = uint64;
      _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "os_signpost_interval_begin qid=%ld", buf, 0xCu);
    }

    v11 = (*MEMORY[0x277D286C8])();
    v12 = *(v11 + 16);
    v151 = *v11;
    v152 = v12;
    v153 = *(v11 + 32);
    v13 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v11 = v13;
    *(v11 + 8) = spanid;
    *(v11 + 16) = 0;
    *(v11 + 24) = uint64;
    *(v11 + 28) = 102;
    *(v11 + 32) = "csquery_command_start_query";
    si_tracing_log_span_begin();
    v15 = logForCSLogCategoryQuery();
    v16 = v15;
    if (uint64 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      if (!uint64)
      {
        v9 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_231A35000, v16, OS_SIGNPOST_INTERVAL_BEGIN, uint64, "CSSearchLatency", &unk_231AF625D, buf, 2u);
      }
    }

    string = xpc_dictionary_get_string(queryCopy, "query");
    v18 = string;
    if (!string || !strcmp(string, "false"))
    {
      v9 = 0;
    }

    else
    {
      v19 = xpc_dictionary_get_value(queryCopy, "context");
      v9 = [objc_alloc(MEMORY[0x277CC34A0]) initWithXPCDictionary:v19];

      if (v9)
      {
        bundleID = [val bundleID];
        searchInternal = [val searchInternal];
        playback = [v9 playback];
        v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
        if (playback)
        {
          if (!searchInternal)
          {
            searchInternal = 0;
            goto LABEL_54;
          }

          clientBundleID = [v9 clientBundleID];
          v22 = clientBundleID;
          if (clientBundleID)
          {
            v23 = clientBundleID;

            bundleID = v23;
          }

          searchInternal = [v9 internal];
LABEL_53:

LABEL_54:
          [v9 setClientBundleID:bundleID];
          [v9 setInternal:searchInternal];
          v37 = v81;
          v38 = [(__CFString *)v37 length];
          v39 = v37;
          if (!v38)
          {

            v39 = @"(true)";
          }

          v73 = v39;

          [(CSSearchAgent *)self _prepareQueryContext:v9 searchConnection:val];
          clientBundleID2 = [v9 clientBundleID];
          v41 = [clientBundleID2 hasPrefix:@"com.apple.omniSearch"];

          if (v41)
          {
            indexer = self->_indexer;
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
            v150 = 0;
            v149 = 0;
            [(MDIndexer *)indexer processSearchString:v43 intoTrimmedString:&v150 andTokens:&v149];
            v67 = v150;
            v71 = v149;

            v44 = self->_indexer;
            if (objc_opt_respondsToSelector())
            {
              [(MDIndexer *)self->_indexer rewriteFirstPassQueryWithQueryString:v73 context:v9 trimmedSearchStringTokens:v71 populateDateSynonyms:1];
            }
          }

          else
          {
            v67 = 0;
            v71 = 0;
          }

          live = [v9 live];
          lowPriority = [v9 lowPriority];
          v69 = [v9 qos];
          v68 = [v9 copy];
          v147[0] = 0;
          v147[1] = v147;
          v147[2] = 0x2020000000;
          v148 = 0;
          v145[0] = 0;
          v145[1] = v145;
          v145[2] = 0x2020000000;
          v146 = 0;
          if ([v9 pommes])
          {
            bundleIDs = [v9 bundleIDs];
            userQuery = [v9 userQuery];
            v46 = self->_indexer;
            v47 = objc_opt_respondsToSelector();
            counting = [v9 counting];
            queryEmbedding = [v9 queryEmbedding];
            v75 = [SDPommesFeature usingRewritesForContextBundleIDs:bundleIDs clientBundleID:bundleID userQuery:userQuery indexSupportsRewrites:v47 & 1 isCounting:counting embeddingsEnabled:queryEmbedding != 0];

            v50 = logForCSLogCategoryQuery();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              rankingType = [v9 rankingType];
              v52 = @"NO";
              if (v75)
              {
                v53 = @"YES";
              }

              else
              {
                v53 = @"NO";
              }

              *buf = 134218754;
              *&buf[4] = uint64;
              if (rankingType == 1)
              {
                v54 = @"YES";
              }

              else
              {
                v54 = @"NO";
              }

              *&buf[14] = v53;
              *&buf[12] = 2112;
              *&buf[22] = 2112;
              if (live)
              {
                v52 = @"YES";
              }

              *&buf[24] = v54;
              LOWORD(v156[0]) = 2112;
              *(v156 + 2) = v52;
              _os_log_impl(&dword_231A35000, v50, OS_LOG_TYPE_INFO, "[qid=%ld][rewrite] rewriteAllowed:%@ topHit:%@ live:%@", buf, 0x2Au);
            }
          }

          else
          {
            LOBYTE(v75) = 0;
          }

          v143[0] = 0;
          v143[1] = v143;
          v143[2] = 0x2020000000;
          v144 = 0;
          v141[0] = 0;
          v141[1] = v141;
          v141[2] = 0x2020000000;
          v142 = 0;
          v139[0] = 0;
          v139[1] = v139;
          v139[2] = 0x2020000000;
          v140 = 0;
          v137[0] = 0;
          v137[1] = v137;
          v137[2] = 0x2020000000;
          v138 = 0;
          v135[0] = 0;
          v135[1] = v135;
          v135[2] = 0x2020000000;
          v136 = 0;
          objc_initWeak(&location, val);
          v55 = *(v11 + 16);
          *buf = *v11;
          *&buf[16] = v55;
          v156[0] = *(v11 + 32);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __28__CSSearchAgent_startQuery___block_invoke;
          v112[3] = &unk_278937528;
          v125 = *buf;
          v126 = v55;
          v127 = v156[0];
          v130 = searchInternal;
          objc_copyWeak(&v124, &location);
          v9 = v9;
          v131 = v75;
          v113 = v9;
          v117 = v147;
          v118 = v143;
          v119 = v139;
          v132 = live;
          v120 = v141;
          v121 = v135;
          v128 = uint64;
          v122 = v137;
          v66 = bundleID;
          v114 = v66;
          v56 = v4;
          v115 = v56;
          selfCopy = self;
          v133 = lowPriority;
          v129 = v69;
          v123 = v145;
          v57 = [v112 copy];
          objc_initWeak(&from, val);
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __28__CSSearchAgent_startQuery___block_invoke_172;
          v101[3] = &unk_278937550;
          v106 = *buf;
          v107 = *&buf[16];
          v108 = v156[0];
          v110 = live;
          v58 = v57;
          v104 = v58;
          v102 = v6;
          v109 = uint64;
          v103 = v56;
          objc_copyWeak(&v105, &from);
          v59 = MEMORY[0x2383760E0](v101);
          v80 = self->_indexer;
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __28__CSSearchAgent_startQuery___block_invoke_2_175;
          v86[3] = &unk_2789375F0;
          objc_copyWeak(&v94, &from);
          v95 = *buf;
          v96 = *&buf[16];
          v97 = v156[0];
          v98 = uint64;
          v92 = v143;
          v99 = v75;
          v78 = v59;
          v90 = v78;
          v93 = v147;
          v91 = v58;
          v86[4] = self;
          v87 = v73;
          v76 = v68;
          v88 = v76;
          v100 = live;
          v60 = queryCopy;
          v89 = v60;
          v83 = v87;
          v61 = v91;
          v62 = [(MDIndexer *)v80 taskForQueryWithQueryString:v87 queryContext:v9 eventHandler:0 resultsHandler:v91 completionHandler:v86];
          if (v62)
          {
            [val setQueryTask:v62 forQueryID:{uint64, v66, v67}];
            [(MDIndexer *)self->_indexer startQueryTask:v62];
          }

          else
          {
            v63 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v64 = xpc_dictionary_get_uint64(v60, "qid");
              [(CSSearchAgent *)v60 startQuery:v154, v64, v63];
            }
          }

          objc_destroyWeak(&v94);
          objc_destroyWeak(&v105);

          objc_destroyWeak(&from);
          objc_destroyWeak(&v124);
          objc_destroyWeak(&location);
          _Block_object_dispose(v135, 8);
          _Block_object_dispose(v137, 8);
          _Block_object_dispose(v139, 8);
          _Block_object_dispose(v141, 8);
          _Block_object_dispose(v143, 8);
          _Block_object_dispose(v145, 8);
          _Block_object_dispose(v147, 8);

          if (v62)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        [val overrideMailHitCounts:v9];
        if (![MEMORY[0x277CC3510] journalEnabled])
        {
          goto LABEL_54;
        }

        v22 = [MEMORY[0x277CC3510] copyPlistFromXPCObject:queryCopy];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_53;
        }

        if (bundleID)
        {
          v32 = 1;
        }

        else
        {
          v32 = searchInternal;
        }

        if (v32 != 1)
        {
LABEL_52:
          v35 = MEMORY[0x277CC3510];
          pid = xpc_connection_get_pid(v4);
          [v35 journalDictionary:v22 toFolderPath:"/private/tmp" forPID:pid withLabel:"query" andID:{xpc_dictionary_get_uint64(queryCopy, "qid")}];
          goto LABEL_53;
        }

        v74 = [v22 objectForKeyedSubscript:@"context"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_51;
        }

        if (bundleID)
        {
          [v74 setObject:bundleID forKeyedSubscript:@"cbi"];
        }

        if (!searchInternal)
        {
LABEL_51:

          goto LABEL_52;
        }

        v72 = [v74 objectForKeyedSubscript:@"f"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntValue = [v72 unsignedIntValue];
          if (unsignedIntValue)
          {
            goto LABEL_50;
          }
        }

        else
        {
          unsignedIntValue = 0;
        }

        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:unsignedIntValue | 1u];
        [v74 setObject:v34 forKeyedSubscript:@"f"];

LABEL_50:
        goto LABEL_51;
      }
    }

LABEL_30:
    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
LABEL_31:
    v24 = *v11;
    v25 = *(v11 + 8);
    v26 = *(v11 + 16);
    v27 = *(v11 + 24);
    v28 = *(v11 + 28);
    v29 = *(v11 + 32);
    si_tracing_log_span_end();
    v30 = v152;
    *v11 = v151;
    *(v11 + 16) = v30;
    *(v11 + 32) = v153;

LABEL_32:
    goto LABEL_33;
  }

  if (!v4)
  {
    v8 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSSearchAgent startQuery:queryCopy];
    }
  }

  if (!v6)
  {
    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSSearchAgent startQuery:queryCopy];
    }

    goto LABEL_32;
  }

LABEL_33:

  v31 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v93 = *MEMORY[0x277D85DE8];
  v74 = a6;
  v10 = (*MEMORY[0x277D286C8])();
  v11 = *(v10 + 16);
  v89 = *v10;
  v90 = v11;
  v91 = *(v10 + 32);
  v12 = *(a1 + 144);
  *v10 = *(a1 + 128);
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a1 + 160);
  v13 = *(a1 + 144);
  v86 = *(a1 + 128);
  v87 = v13;
  v88 = *(a1 + 160);
  v14 = *v10;
  spanid = si_tracing_calc_next_spanid();
  v16 = *(v10 + 8);
  v17 = *(v10 + 24);
  *v10 = v14;
  *(v10 + 8) = spanid;
  *(v10 + 16) = v16;
  *(v10 + 28) = 102;
  *(v10 + 32) = "resultsHandler";
  si_tracing_log_span_begin();
  v18 = v74;
  if (!*(a1 + 180))
  {
    v18 = 0;
  }

  v72 = v18;
  WeakRetained = objc_loadWeakRetained((a1 + 120));
  v19 = 0;
  if (a2 > 6)
  {
    if (a2 > 8)
    {
      if (a2 == 9)
      {
        if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
        {
          v28 = [WeakRetained queryTask:*(a1 + 168)];
          [v28 addMatchInfo:a5];
        }

        goto LABEL_38;
      }

      if (a2 == 10)
      {
        v27 = 0;
        v26 = 0;
        v20 = 0;
        goto LABEL_72;
      }

      v20 = 0;
      if (a2 != 11)
      {
        goto LABEL_107;
      }

      v20 = 0;
      v19 = 0;
LABEL_52:
      v27 = 0;
      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v20 = 0;
      v19 = 0;
      v26 = 0;
      v27 = 1;
      goto LABEL_72;
    }

    if (a5)
    {
      v22 = _MDPlistBytesCopyPlistAtIndex();
      v19 = v22;
      if (v22)
      {
        v23 = [v22 count] != 0;
        goto LABEL_45;
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = 0;
LABEL_45:
    *(*(*(a1 + 88) + 8) + 24) = v23;
    v29 = *(*(a1 + 72) + 8);
    if (*(v29 + 24))
    {
      v30 = 1;
    }

    else
    {
      v30 = *(*(*(a1 + 88) + 8) + 24);
    }

    *(v29 + 24) = v30 & 1;
    if (*(a1 + 181) == 1)
    {
      v20 = 0;
      if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_52;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_25;
    }

    v20 = 0;
    if (a2 != 1)
    {
      goto LABEL_107;
    }

    if (*(a1 + 181) != 1 || (*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v21 = 1;
      *(*(*(a1 + 96) + 8) + 24) = 1;
      if ((*(a1 + 181) & 1) == 0)
      {
        v20 = 0;
LABEL_40:
        v19 = 0;
        v27 = 0;
        v26 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v21 = 0;
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v31 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __28__CSSearchAgent_startQuery___block_invoke_cold_1(a1);
      }

LABEL_67:

      v20 = 0;
      if ((v21 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_70;
    }

LABEL_69:
    v20 = 0;
    if (!v21)
    {
      goto LABEL_68;
    }

    goto LABEL_70;
  }

  if (a2 == 2)
  {
    if (v74)
    {
      if ([*(a1 + 32) priorityIndexQuery])
      {
        v20 = 0;
        if (([v74 isEqual:@"Priority"] & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_70:
        v27 = 0;
        v26 = 0;
        goto LABEL_71;
      }

LABEL_38:
      v19 = 0;
      v20 = 0;
      goto LABEL_107;
    }

    if (*(a1 + 181) != 1 || (*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v21 = 1;
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      v67 = [WeakRetained queryTask:*(a1 + 168)];
      [v67 cancel];

      v21 = 0;
    }

    if (*(a1 + 181) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v31 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __28__CSSearchAgent_startQuery___block_invoke_cold_2(a1);
      }

      goto LABEL_67;
    }

    goto LABEL_69;
  }

  if (a2 == 5)
  {
    *v92 = a3;
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:v92 length:8];
    goto LABEL_40;
  }

  v20 = 0;
  if (a2 != 6)
  {
    goto LABEL_107;
  }

LABEL_25:
  v24 = *(*(a1 + 72) + 8);
  if (*(v24 + 24))
  {
    v25 = 1;
  }

  else
  {
    v25 = _MDStoreOIDArrayGetVectorCount() != 0;
    v24 = *(*(a1 + 72) + 8);
  }

  *(v24 + 24) = v25;
  v27 = *(a1 + 182);
  if (*(a1 + 181) != 1)
  {
    v20 = 0;
    v19 = 0;
LABEL_53:
    v26 = 1;
    goto LABEL_72;
  }

  v20 = 0;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
LABEL_68:
    v19 = 0;
    goto LABEL_107;
  }

  v26 = 1;
LABEL_71:
  v19 = 0;
LABEL_72:
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || ([WeakRetained queryTask:*(a1 + 168)], (v32 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
      goto LABEL_107;
    }

    v32 = 0;
  }

  v33 = xpc_dictionary_create(0, 0, 0);
  v71 = (a1 + 168);
  xpc_dictionary_set_uint64(v33, "qid", *(a1 + 168));
  xpc_dictionary_set_uint64(v33, "t", a2);
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v34 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __28__CSSearchAgent_startQuery___block_invoke_cold_3(v71);
    }
  }

  else
  {
    if (v20)
    {
      v35 = v20;
      xpc_dictionary_set_data(v33, "rd", [v20 bytes], objc_msgSend(v20, "length"));
    }

    else if (v26)
    {
      [MEMORY[0x277CC3510] dictionary:v33 setPlistBytes:a5 forKey:"rd" sizeKey:"rdl"];
      v36 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v68 = [WeakRetained outBatchCount];
        v69 = *(a1 + 40);
        v70 = *(a1 + 168);
        *v92 = 67110146;
        *&v92[4] = a2;
        *&v92[8] = 1024;
        *&v92[10] = v68;
        *&v92[14] = 2112;
        *&v92[16] = v69;
        *&v92[24] = 2112;
        *&v92[26] = v74;
        *&v92[34] = 2048;
        *&v92[36] = v70;
        _os_log_debug_impl(&dword_231A35000, v36, OS_LOG_TYPE_DEBUG, "Found query results, type:%d outBatchCount:%u, clientBundleID:%@, dataclass:%@ qid:%ld", v92, 0x2Cu);
      }
    }

    if (v27)
    {
      VectorCount = _MDStoreOIDArrayGetVectorCount();
      Vector = _MDStoreOIDArrayGetVector();
      xpc_dictionary_set_data(v33, "od", Vector, 8 * VectorCount);
      v39 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v64 = [WeakRetained outBatchCount];
        v65 = *(a1 + 40);
        v66 = *(a1 + 168);
        *v92 = 67110146;
        *&v92[4] = v64;
        *&v92[8] = 2048;
        *&v92[10] = 8 * VectorCount;
        *&v92[18] = 2112;
        *&v92[20] = v65;
        *&v92[28] = 2112;
        *&v92[30] = v74;
        *&v92[38] = 2048;
        *&v92[40] = v66;
        _os_log_debug_impl(&dword_231A35000, v39, OS_LOG_TYPE_DEBUG, "Remove query results, outBatchCount:%u, size:%ld, clientBundleID:%@, dataclass:%@ qid: %ld", v92, 0x30u);
      }
    }

    if (v72)
    {
      v40 = v72;
      v41 = xpc_string_create([v72 UTF8String]);
      xpc_dictionary_set_value(v33, "pc", v41);
    }

    v34 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v62 = *(a1 + 40);
      v63 = *(a1 + 168);
      *v92 = 138412802;
      *&v92[4] = v62;
      *&v92[12] = 2112;
      *&v92[14] = v74;
      *&v92[22] = 2048;
      *&v92[24] = v63;
      _os_log_debug_impl(&dword_231A35000, v34, OS_LOG_TYPE_DEBUG, "Found query results clientBundleID:%@, dataclass:%@ qid:%ld", v92, 0x20u);
    }
  }

  v42 = *(v10 + 16);
  *v92 = *v10;
  *&v92[16] = v42;
  *&v92[32] = *(v10 + 32);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __28__CSSearchAgent_startQuery___block_invoke_168;
  v76[3] = &unk_278937500;
  v77 = WeakRetained;
  v43 = v32;
  v44 = *(a1 + 168);
  v78 = v43;
  v82 = v44;
  v79 = *(a1 + 48);
  v45 = v33;
  v46 = *(a1 + 56);
  v80 = v45;
  v81 = v46;
  v83 = *v92;
  v84 = *&v92[16];
  v85 = *&v92[32];
  v47 = MEMORY[0x2383760E0](v76);
  if (*(a1 + 182) == 1 && *(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if (*(a1 + 183))
    {
      v48 = QOS_CLASS_BACKGROUND;
    }

    else
    {
      v48 = *(a1 + 176);
    }

    v49 = [*(a1 + 56) queue];
    v50 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v48, 0, v47);
    tracing_dispatch_async();
  }

  else
  {
    v49 = [*(a1 + 56) queue];
    v50 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, *(a1 + 176), 0, v47);
    tracing_dispatch_async();
  }

  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    v51 = logForCSLogCategoryQuery();
    v52 = v51;
    v53 = *v71;
    if ((*v71 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v52, OS_SIGNPOST_INTERVAL_END, v53, "CSSearchLatency", &unk_231AF625D, buf, 2u);
    }

    *(*(*(a1 + 112) + 8) + 24) = 1;
  }

LABEL_107:
  v54 = *v10;
  v55 = *(v10 + 8);
  v56 = *(v10 + 16);
  v57 = *(v10 + 24);
  v58 = *(v10 + 28);
  v59 = *(v10 + 32);
  si_tracing_log_span_end();
  v60 = v90;
  *v10 = v89;
  *(v10 + 16) = v60;
  *(v10 + 32) = v91;

  v61 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke_168(uint64_t a1)
{
  [*(a1 + 32) _willSendResultsBatch:*(a1 + 40) qid:*(a1 + 72)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 64) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v5 = *(a1 + 96);
  v8 = *(a1 + 80);
  v6[2] = __28__CSSearchAgent_startQuery___block_invoke_2;
  v6[3] = &unk_2789374D8;
  v9 = v5;
  v10 = *(a1 + 112);
  v7 = *(a1 + 32);
  xpc_connection_send_message_with_reply(v2, v3, v4, v6);
}

void __28__CSSearchAgent_startQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v19 = *v3;
  v20 = *(v3 + 16);
  v21 = *(v3 + 32);
  v4 = *(a1 + 56);
  *v3 = *(a1 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 72);
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "received XPC reply";
  si_tracing_log_span_begin();
  [*(a1 + 32) _didReceiveResultsBatchCompletion];
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 28);
  v14 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v19;
  *(v3 + 16) = v20;
  *(v3 + 32) = v21;
}

void __28__CSSearchAgent_startQuery___block_invoke_172(uint64_t a1, int a2, void *a3)
{
  v19 = a3;
  v5 = (*MEMORY[0x277D286C8])();
  v23 = *v5;
  v24 = *(v5 + 16);
  v25 = *(v5 + 32);
  v6 = *(a1 + 80);
  *v5 = *(a1 + 64);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a1 + 96);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "completionHandler";
  si_tracing_log_span_begin();
  if (a2)
  {
    if (*(a1 + 112) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    (*(*(a1 + 48) + 16))();
  }

  xpc_dictionary_set_uint64(*(a1 + 32), "qid", *(a1 + 104));
  v11 = *(a1 + 32);
  csquery_xpc_dictionary_encode_status_with_error();
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setQueryTask:0 forQueryID:*(a1 + 104)];

  v13 = *v5;
  v14 = *(v5 + 8);
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  v17 = *(v5 + 28);
  v18 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v23;
  *(v5 + 16) = v24;
  *(v5 + 32) = v25;
}

void __28__CSSearchAgent_startQuery___block_invoke_2_175(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = (*MEMORY[0x277D286C8])();
  v6 = *(v5 + 16);
  v70 = *v5;
  v71 = v6;
  v72 = *(v5 + 32);
  v7 = *(a1 + 120);
  *v5 = *(a1 + 104);
  *(v5 + 16) = v7;
  *(v5 + 32) = *(a1 + 136);
  v8 = *(a1 + 120);
  v67 = *(a1 + 104);
  v68 = v8;
  v69 = *(a1 + 136);
  v9 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v11 = *(v5 + 8);
  v12 = *(v5 + 24);
  *v5 = v9;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v11;
  *(v5 + 28) = 102;
  *(v5 + 32) = "query task completion handler";
  si_tracing_log_span_begin();
  v13 = [WeakRetained queryTask:*(a1 + 144)];
  v14 = v13;
  if (v13 && !((v3 != 0) | [v13 wasCanceledByClient] & 1 | *(*(*(a1 + 80) + 8) + 24) & 1) && (*(a1 + 152) & 1) != 0)
  {
    (*(*(a1 + 72) + 16))();
    v15 = logForCSLogCategoryQuery();
    v44 = v14;
    v41 = WeakRetained;
    v42 = v3;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 144);
      *buf = 134217984;
      v74 = v16;
      _os_log_impl(&dword_231A35000, v15, OS_LOG_TYPE_INFO, "[qid=%ld][rewrite] Requesting rewrite candidates", buf, 0xCu);
    }

    v43 = a1;

    *(*(*(a1 + 88) + 8) + 24) = 1;
    v17 = [MEMORY[0x277CBEB38] dictionary];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = [v14 matchInfo];
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v19)
    {
      v20 = *v64;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v64 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v63 + 1) + 8 * i);
          _MDPlistGetRootPlistObjectFromPlist();
          v58 = MEMORY[0x277D85DD0];
          v59 = 3221225472;
          v60 = __28__CSSearchAgent_startQuery___block_invoke_177;
          v61 = &unk_278937578;
          v62 = v17;
          _MDPlistDictionaryIterate();
          CFRelease(v22);
        }

        v19 = [v18 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v19);
    }

    v23 = *(v43 + 40);
    v24 = *(*(v43 + 32) + 56);
    v25 = *(v43 + 48);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v26 = *(v5 + 16);
    v53 = *v5;
    v54 = v26;
    v45[2] = __28__CSSearchAgent_startQuery___block_invoke_2_179;
    v45[3] = &unk_2789375C8;
    v55 = *(v5 + 32);
    v46 = v44;
    v50 = *(v43 + 64);
    v47 = 0;
    v57 = *(v43 + 153);
    v27 = *(v43 + 40);
    v28 = *(v43 + 48);
    v56 = *(v43 + 144);
    v40 = *(v43 + 32);
    v51 = *(v43 + 72);
    v29 = *(v43 + 56);
    *&v30 = v40;
    *(&v30 + 1) = v29;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    v48 = v31;
    v49 = v30;
    objc_copyWeak(&v52, (v43 + 96));
    [v24 rewriteQueryWithQueryString:v23 context:v25 matchInfo:v17 rewriteHandler:v45];
    objc_destroyWeak(&v52);

    WeakRetained = v41;
    v3 = v42;
    v14 = v44;
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  v32 = *v5;
  v33 = *(v5 + 8);
  v34 = *(v5 + 16);
  v35 = *(v5 + 24);
  v36 = *(v5 + 28);
  v37 = *(v5 + 32);
  si_tracing_log_span_end();
  v38 = v71;
  *v5 = v70;
  *(v5 + 16) = v38;
  *(v5 + 32) = v72;

  v39 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke_177(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v14 = *a4;
  v15 = *(a4 + 2);
  IntValue = _MDPlistNumberGetIntValue();
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{a2, v14, v15}];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 longLongValue];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v10 + IntValue];
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v12 setObject:v11 forKeyedSubscript:v13];
}

void __28__CSSearchAgent_startQuery___block_invoke_2_179(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*MEMORY[0x277D286C8])();
  v8 = *(v7 + 16);
  v50 = *v7;
  v51 = v8;
  v52 = *(v7 + 32);
  v9 = *(a1 + 120);
  *v7 = *(a1 + 104);
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a1 + 136);
  v10 = *(a1 + 120);
  v47 = *(a1 + 104);
  v48 = v10;
  v49 = *(a1 + 136);
  v11 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v13 = *(v7 + 8);
  v14 = *(v7 + 24);
  *v7 = v11;
  *(v7 + 8) = spanid;
  *(v7 + 16) = v13;
  *(v7 + 28) = 102;
  *(v7 + 32) = "rewriteHandler";
  si_tracing_log_span_begin();
  if (![*(a1 + 32) wasCanceledByClient])
  {
    v16 = [v5 firstObject];
    v17 = v16;
    if (v6 || !v16)
    {
      if ((*(a1 + 152) & 1) == 0)
      {
        (*(*(a1 + 80) + 16))();
LABEL_16:

        goto LABEL_17;
      }

      v18 = [objc_alloc(MEMORY[0x277D286A8]) initWithSearchQueryString:*(a1 + 48) searchQueryContext:*(a1 + 56) score:0.0];

      v17 = v18;
    }

    v19 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 144);
      *buf = 134218240;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = [v5 count];
      _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_INFO, "[qid=%ld][rewrite] Found %lu rewrite candidate", buf, 0x16u);
    }

    v21 = *(v7 + 16);
    *buf = *v7;
    *&buf[16] = v21;
    v55 = *(v7 + 32);
    v22 = *(*(a1 + 64) + 56);
    v23 = [v17 queryString];
    v24 = [v17 searchQueryContext];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v44 = *buf;
    v41 = __28__CSSearchAgent_startQuery___block_invoke_182;
    v42 = &unk_2789375A0;
    v45 = *&buf[16];
    v46 = v55;
    v25 = *(a1 + 88);
    v43 = *(a1 + 80);
    v26 = [v22 taskForQueryWithQueryString:v23 queryContext:v24 eventHandler:0 resultsHandler:v25 completionHandler:&v39];

    if (v26)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      [WeakRetained setQueryTask:v26 forQueryID:{*(a1 + 144), v39, v40, v41, v42}];

      [*(*(a1 + 64) + 56) startQueryTask:v26];
    }

    else
    {
      v28 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        uint64 = xpc_dictionary_get_uint64(*(a1 + 72), "qid");
        __28__CSSearchAgent_startQuery___block_invoke_2_179_cold_1((a1 + 72), v53, uint64, v28);
      }

      (*(*(a1 + 80) + 16))(*(a1 + 80), 1, 0, v30);
    }

    goto LABEL_16;
  }

  v15 = *(a1 + 40);
  (*(*(a1 + 80) + 16))();
LABEL_17:
  v31 = *v7;
  v32 = *(v7 + 8);
  v33 = *(v7 + 16);
  v34 = *(v7 + 24);
  v35 = *(v7 + 28);
  v36 = *(v7 + 32);
  si_tracing_log_span_end();
  v37 = v51;
  *v7 = v50;
  *(v7 + 16) = v37;
  *(v7 + 32) = v52;

  v38 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke_182(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v19 = *v3;
  v20 = *(v3 + 16);
  v21 = *(v3 + 32);
  v4 = *(a1 + 56);
  *v3 = *(a1 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 72);
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "rewrite query completion handler";
  si_tracing_log_span_begin();
  (*(*(a1 + 32) + 16))();
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 28);
  v14 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v19;
  *(v3 + 16) = v20;
  *(v3 + 32) = v21;
}

- (void)cancelSimpleQuery:(id)query
{
  original = query;
  v4 = xpc_dictionary_get_remote_connection(original);
  reply = xpc_dictionary_create_reply(original);
  v6 = reply;
  if (v4 && reply)
  {
    v7 = [(CSSearchAgent *)self searchConnection:v4];
    if (v7)
    {
      uint64 = xpc_dictionary_get_uint64(original, "qid");
      [v7 cancelQueryTask:uint64];
    }

    else
    {
      uint64 = 0;
    }

    xpc_dictionary_set_uint64(v6, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v4, v6);
  }
}

- (void)startSimpleQuery:(id)query
{
  queryCopy = query;
  v5 = xpc_dictionary_get_remote_connection(queryCopy);
  reply = xpc_dictionary_create_reply(queryCopy);
  v7 = reply;
  if (v5 && reply)
  {
    v8 = [(CSSearchAgent *)self searchConnection:v5];
    if (v8)
    {
      uint64 = xpc_dictionary_get_uint64(queryCopy, "qid");
    }

    else
    {
      uint64 = 0;
    }

    v10 = (*MEMORY[0x277D286C8])();
    v11 = *(v10 + 16);
    v56 = *v10;
    v57 = v11;
    v58 = *(v10 + 32);
    v12 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = 0;
    *(v10 + 24) = uint64;
    *(v10 + 28) = 102;
    *(v10 + 32) = "CSSearchAgent::startSimpleQuery";
    si_tracing_log_span_begin();
    if (uint64)
    {
      string = xpc_dictionary_get_string(queryCopy, "query");
      v15 = string;
      if (!string || !strcmp(string, "false"))
      {
        v17 = 0;
      }

      else
      {
        v16 = xpc_dictionary_get_value(queryCopy, "context");
        v17 = [objc_alloc(MEMORY[0x277CC34A0]) initWithXPCDictionary:v16];

        if (v17)
        {
          bundleID = [v8 bundleID];
          searchInternal = [v8 searchInternal];
          [v17 setMaxCount:1];
          [v17 setClientBundleID:bundleID];
          [v17 setInternal:searchInternal];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
          if (![(__CFString *)v19 length])
          {

            v19 = @"true";
          }

          [(CSSearchAgent *)self _prepareQueryContext:v17 searchConnection:v8];
          v54[0] = 0;
          v54[1] = v54;
          v54[2] = 0x2020000000;
          v55 = 0;
          objc_initWeak(&location, v8);
          v20 = *(v10 + 16);
          v50 = *v10;
          v51 = v20;
          v52 = *(v10 + 32);
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __34__CSSearchAgent_startSimpleQuery___block_invoke;
          v44[3] = &unk_278937618;
          v46 = v50;
          v47 = v20;
          v48 = v52;
          v44[4] = v54;
          objc_copyWeak(&v45, &location);
          v49 = uint64;
          v21 = [v44 copy];
          objc_initWeak(&from, v8);
          indexer = self->_indexer;
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __34__CSSearchAgent_startSimpleQuery___block_invoke_2;
          v34[3] = &unk_278937640;
          v39 = v50;
          v40 = v51;
          v41 = v52;
          v42 = uint64;
          v35 = v7;
          v37 = v54;
          v36 = v5;
          objc_copyWeak(&v38, &from);
          v22 = indexer;
          v32 = v21;
          v23 = [(MDIndexer *)v22 taskForQueryWithQueryString:v19 queryContext:v17 eventHandler:0 resultsHandler:v21 completionHandler:v34];
          if (v23)
          {
            [v8 setQueryTask:v23 forQueryID:uint64];
            [(MDIndexer *)self->_indexer startQueryTask:v23];
          }

          objc_destroyWeak(&v38);
          objc_destroyWeak(&from);

          objc_destroyWeak(&v45);
          objc_destroyWeak(&location);
          _Block_object_dispose(v54, 8);

          if (v23)
          {
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v17 = 0;
    }

    xpc_dictionary_set_uint64(v7, "qid", uint64);
    csquery_xpc_dictionary_encode_status();
    xpc_connection_send_message(v5, v7);
LABEL_17:
    v24 = *v10;
    v25 = *(v10 + 8);
    v26 = *(v10 + 16);
    v27 = *(v10 + 24);
    v28 = *(v10 + 28);
    v29 = *(v10 + 32);
    si_tracing_log_span_end();
    v30 = v57;
    *v10 = v56;
    *(v10 + 16) = v30;
    *(v10 + 32) = v58;
  }
}

void __34__CSSearchAgent_startSimpleQuery___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = a6;
  v8 = (*MEMORY[0x277D286C8])();
  v26 = *v8;
  v27 = *(v8 + 16);
  v28 = *(v8 + 32);
  v9 = *(a1 + 64);
  *v8 = *(a1 + 48);
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a1 + 80);
  v23 = *(a1 + 48);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  v13 = *(v8 + 24);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "resultsHandler";
  si_tracing_log_span_begin();
  if ((!a2 || a2 == 6) && _MDStoreOIDArrayGetVectorCount() >= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v15 = [WeakRetained queryTask:*(a1 + 88)];

    [v15 cancel];
  }

  v16 = *v8;
  v17 = *(v8 + 8);
  v18 = *(v8 + 16);
  v19 = *(v8 + 24);
  v20 = *(v8 + 28);
  v21 = *(v8 + 32);
  si_tracing_log_span_end();
  *v8 = v26;
  *(v8 + 16) = v27;
  *(v8 + 32) = v28;
}

void __34__CSSearchAgent_startSimpleQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = (*MEMORY[0x277D286C8])();
  v21 = *v3;
  v22 = *(v3 + 16);
  v23 = *(v3 + 32);
  v4 = *(a1 + 80);
  *v3 = *(a1 + 64);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 96);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v20 = *(a1 + 96);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "completionHandler";
  si_tracing_log_span_begin();
  v9 = *(a1 + 32);
  csquery_xpc_dictionary_encode_status_with_error();
  xpc_dictionary_set_uint64(*(a1 + 32), "qid", *(a1 + 104));
  xpc_dictionary_set_uint64(*(a1 + 32), "t", 1uLL);
  xpc_dictionary_set_BOOL(*(a1 + 32), "exists", *(*(*(a1 + 48) + 8) + 24));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setQueryTask:0 forQueryID:*(a1 + 104)];

  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = *(v3 + 28);
  v16 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v21;
  *(v3 + 16) = v22;
  *(v3 + 32) = v23;
}

- (void)handleEngagement:(id)engagement forConnection:(id)connection
{
  engagementCopy = engagement;
  v6 = [(CSSearchAgent *)self searchConnection:connection];
  searchInternal = [v6 searchInternal];
  bundleID = [v6 bundleID];
  v9 = [MEMORY[0x277CC3510] copyNSStringForKey:"qenb" fromXPCDictionary:engagementCopy];
  v10 = v9;
  if (searchInternal)
  {
    goto LABEL_5;
  }

  if (!v9 || [bundleID isEqual:v9])
  {
    v11 = bundleID;

    v10 = v11;
LABEL_5:
    v12 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:engagementCopy];
    v13 = [MEMORY[0x277CC3510] copyNSStringForKey:"userquery" fromXPCDictionary:engagementCopy];
    v14 = [MEMORY[0x277CC3510] copyNSStringForKey:"qenr" fromXPCDictionary:engagementCopy];
    indexer = self->_indexer;
    date = [MEMORY[0x277CBEAA8] date];
    [(MDIndexer *)indexer recordEngagementForBundleID:v10 uniqueIdentifier:v14 protectionClass:v12 userQuery:v13 date:date];
  }
}

- (BOOL)handleCommand:(const char *)command info:(id)info connection:(id)connection
{
  v72 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  connectionCopy = connection;
  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v70 = 136315394;
    *&v70[4] = command;
    *&v70[12] = 1024;
    *&v70[14] = xpc_connection_get_pid(connectionCopy);
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "search %s pid: %d", v70, 0x12u);
  }

  if (!strcmp(command, "startQuery"))
  {
    [(CSSearchAgent *)self startQuery:infoCopy];
LABEL_19:
    v11 = 1;
    goto LABEL_20;
  }

  if (!strcmp(command, "cancelQuery"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v13 = *(v12 + 16);
    *v70 = *v12;
    *&v70[16] = v13;
    v71 = *(v12 + 32);
    v14 = si_tracing_calc_traceid();
    spanid = si_tracing_calc_next_spanid();
    *v12 = v14;
    *(v12 + 8) = spanid;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_cancel_query";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self cancelQuery:infoCopy];
    v16 = *v12;
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    v19 = *(v12 + 24);
    v20 = *(v12 + 28);
    v21 = *(v12 + 32);
    si_tracing_log_span_end();
LABEL_18:
    v67 = *&v70[16];
    *v12 = *v70;
    *(v12 + 16) = v67;
    *(v12 + 32) = v71;
    goto LABEL_19;
  }

  if (!strcmp(command, "pollResults"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v22 = *(v12 + 16);
    *v70 = *v12;
    *&v70[16] = v22;
    v71 = *(v12 + 32);
    v23 = si_tracing_calc_traceid();
    v24 = si_tracing_calc_next_spanid();
    *v12 = v23;
    *(v12 + 8) = v24;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_poll_results";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self pollResults:infoCopy];
    v25 = *v12;
    v26 = *(v12 + 8);
    v27 = *(v12 + 16);
    v28 = *(v12 + 24);
    v29 = *(v12 + 28);
    v30 = *(v12 + 32);
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "simpleQuery"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v31 = *(v12 + 16);
    *v70 = *v12;
    *&v70[16] = v31;
    v71 = *(v12 + 32);
    v32 = si_tracing_calc_traceid();
    v33 = si_tracing_calc_next_spanid();
    *v12 = v32;
    *(v12 + 8) = v33;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_start_simple_query";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self startSimpleQuery:infoCopy];
    v34 = *v12;
    v35 = *(v12 + 8);
    v36 = *(v12 + 16);
    v37 = *(v12 + 24);
    v38 = *(v12 + 28);
    v39 = *(v12 + 32);
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "simpleCancel"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v40 = *(v12 + 16);
    *v70 = *v12;
    *&v70[16] = v40;
    v71 = *(v12 + 32);
    v41 = si_tracing_calc_traceid();
    v42 = si_tracing_calc_next_spanid();
    *v12 = v41;
    *(v12 + 8) = v42;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_cancel_simple_query";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self cancelSimpleQuery:infoCopy];
    v43 = *v12;
    v44 = *(v12 + 8);
    v45 = *(v12 + 16);
    v46 = *(v12 + 24);
    v47 = *(v12 + 28);
    v48 = *(v12 + 32);
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "userEngaged"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v49 = *(v12 + 16);
    *v70 = *v12;
    *&v70[16] = v49;
    v71 = *(v12 + 32);
    v50 = si_tracing_calc_traceid();
    v51 = si_tracing_calc_next_spanid();
    *v12 = v50;
    *(v12 + 8) = v51;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_user_engaged";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self handleEngagement:infoCopy forConnection:connectionCopy];
    v52 = *v12;
    v53 = *(v12 + 8);
    v54 = *(v12 + 16);
    v55 = *(v12 + 24);
    v56 = *(v12 + 28);
    v57 = *(v12 + 32);
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  if (!strcmp(command, "preheat"))
  {
    v12 = (*MEMORY[0x277D286C8])();
    v58 = *(v12 + 16);
    *v70 = *v12;
    *&v70[16] = v58;
    v71 = *(v12 + 32);
    v59 = si_tracing_calc_traceid();
    v60 = si_tracing_calc_next_spanid();
    *v12 = v59;
    *(v12 + 8) = v60;
    *(v12 + 16) = 0;
    *(v12 + 24) = -1;
    *(v12 + 28) = 102;
    *(v12 + 32) = "csquery_command_preheat";
    si_tracing_log_span_begin();
    [(CSSearchAgent *)self preheat:infoCopy];
    v61 = *v12;
    v62 = *(v12 + 8);
    v63 = *(v12 + 16);
    v64 = *(v12 + 24);
    v65 = *(v12 + 28);
    v66 = *(v12 + 32);
    si_tracing_log_span_end();
    goto LABEL_18;
  }

  v11 = 0;
LABEL_20:

  v68 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)addHiddenAppFiltersToQueryContext:(id)context
{
  v89 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v66 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v63 = contextCopy;
  disableBundles = [contextCopy disableBundles];
  v6 = [disableBundles countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v6)
  {
    v7 = *v76;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(disableBundles);
        }

        v9 = *(*(&v75 + 1) + 8 * i);
        v10 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          queryID = [v63 queryID];
          clientBundleID = [v63 clientBundleID];
          v13 = clientBundleID;
          uTF8String = [clientBundleID UTF8String];
          v15 = v9;
          uTF8String2 = [v9 UTF8String];
          *buf = 134218498;
          *&buf[4] = queryID;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String;
          *&buf[22] = 2080;
          v87 = uTF8String2;
          _os_log_debug_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, context) Filtering out disabled bundle %s", buf, 0x20u);
        }

        [v66 addObject:v9];
      }

      v6 = [disableBundles countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v6);
  }

  [MEMORY[0x277CEBE80] hiddenApplications];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  obj = v72 = 0u;
  v17 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v17)
  {
    v18 = *v72;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v72 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v71 + 1) + 8 * j);
        v21 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          queryID2 = [v63 queryID];
          clientBundleID2 = [v63 clientBundleID];
          v25 = clientBundleID2;
          uTF8String3 = [clientBundleID2 UTF8String];
          bundleIdentifier = [v20 bundleIdentifier];
          v28 = bundleIdentifier;
          uTF8String4 = [bundleIdentifier UTF8String];
          *buf = 134218498;
          *&buf[4] = queryID2;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String3;
          *&buf[22] = 2080;
          v87 = uTF8String4;
          _os_log_debug_impl(&dword_231A35000, v21, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, AP) Filtering out hidden app %s", buf, 0x20u);
        }

        bundleIdentifier2 = [v20 bundleIdentifier];
        [v4 addObject:bundleIdentifier2];
      }

      v17 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v17);
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v30 = getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr;
  v82 = getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr;
  if (!getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSPFastHiddenAppsGetNoBuildSymbolLoc_block_invoke;
    v87 = &unk_2789363E0;
    v88 = &v79;
    v31 = SearchLibrary();
    v32 = dlsym(v31, "SPFastHiddenAppsGetNoBuild");
    *(v88[1] + 24) = v32;
    getSPFastHiddenAppsGetNoBuildSymbolLoc_ptr = *(v88[1] + 24);
    v30 = v80[3];
  }

  _Block_object_dispose(&v79, 8);
  if (!v30)
  {
    [CSSearchAgent addHiddenAppFiltersToQueryContext:];
    __break(1u);
  }

  v33 = v30();
  v34 = [v33 copy];

  v79 = 0;
  v80 = &v79;
  v81 = 0x2050000000;
  v35 = getSDAppUninstallMonitorClass_softClass;
  v82 = getSDAppUninstallMonitorClass_softClass;
  if (!getSDAppUninstallMonitorClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSDAppUninstallMonitorClass_block_invoke;
    v87 = &unk_2789363E0;
    v88 = &v79;
    __getSDAppUninstallMonitorClass_block_invoke(buf);
    v35 = v80[3];
  }

  v36 = v35;
  _Block_object_dispose(&v79, 8);
  if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    applicationsExcludedFromUninstall = [v35 applicationsExcludedFromUninstall];
  }

  else
  {
    applicationsExcludedFromUninstall = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v64 = v34;
  v38 = [v64 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v38)
  {
    v40 = *v68;
    *&v39 = 134218498;
    v62 = v39;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v68 != v40)
        {
          objc_enumerationMutation(v64);
        }

        v42 = *(*(&v67 + 1) + 8 * k);
        v43 = [applicationsExcludedFromUninstall containsObject:{v42, v62}];
        v44 = logForCSLogCategoryDefault();
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
        if (v43)
        {
          v46 = v4;
          if (v45)
          {
            queryID3 = [v63 queryID];
            clientBundleID3 = [v63 clientBundleID];
            v49 = clientBundleID3;
            uTF8String5 = [clientBundleID3 UTF8String];
            v51 = v42;
            uTF8String6 = [v42 UTF8String];
            *buf = v62;
            *&buf[4] = queryID3;
            *&buf[12] = 2080;
            *&buf[14] = uTF8String5;
            *&buf[22] = 2080;
            v87 = uTF8String6;
            _os_log_debug_impl(&dword_231A35000, v44, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, SP/E) Filtering out hidden app %s", buf, 0x20u);

            v46 = v4;
          }
        }

        else
        {
          v46 = v66;
          if (v45)
          {
            queryID4 = [v63 queryID];
            clientBundleID4 = [v63 clientBundleID];
            v55 = clientBundleID4;
            uTF8String7 = [clientBundleID4 UTF8String];
            v57 = v42;
            uTF8String8 = [v42 UTF8String];
            *buf = v62;
            *&buf[4] = queryID4;
            *&buf[12] = 2080;
            *&buf[14] = uTF8String7;
            *&buf[22] = 2080;
            v87 = uTF8String8;
            _os_log_debug_impl(&dword_231A35000, v44, OS_LOG_TYPE_DEBUG, "(qid=%ld, bid=%s, SP) Filtering out hidden app %s", buf, 0x20u);

            v46 = v66;
          }
        }

        [v46 addObject:v42];
      }

      v38 = [v64 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v38);
  }

  allObjects = [v66 allObjects];
  [v63 setDisableBundles:allObjects];

  allObjects2 = [v4 allObjects];
  [v63 setPrefsDisabledBundles:allObjects2];

  v61 = *MEMORY[0x277D85DE8];
}

- (void)addClientConnectionIfAllowedForConfiguration:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_prepareQueryContext:searchConnection:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC3588];
  OUTLINED_FUNCTION_4_0();
  v6 = 2112;
  v7 = v1;
  v8 = 2112;
  v9 = v2;
  _os_log_error_impl(&dword_231A35000, v3, OS_LOG_TYPE_ERROR, "Client %@ trying to search other bundles (%@) without having entitlement %@", v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_prepareQueryContext:(void *)a1 searchConnection:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 clientBundleID];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "Notifications allowed for bid: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)startQuery:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  xpc_dictionary_get_uint64(a1, "qid");
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startQuery:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  xpc_dictionary_get_uint64(a1, "qid");
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startQuery:(uint64_t)a3 .cold.3(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "startQuery: Failed to create query task for query id %lld, xpc object %@", buf, 0x16u);
}

void __28__CSSearchAgent_startQuery___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1, *MEMORY[0x277D85DE8]);
  *(v1 + 24);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2(a1, *MEMORY[0x277D85DE8]);
  *(v1 + 24);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke_cold_3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __28__CSSearchAgent_startQuery___block_invoke_2_179_cold_1(uint64_t *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *a1;
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "[rewrite] qid=%lld startQuery: Failed to create rewrite query task, xpc object %@", buf, 0x16u);
}

- (uint64_t)addHiddenAppFiltersToQueryContext:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getSDAppUninstallMonitorClass_block_invoke_cold_1();
}

@end