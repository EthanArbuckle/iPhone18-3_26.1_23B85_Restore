@interface SPDaemonQueryToken
- (SPDaemonQueryDelegate)delegate;
- (SPDaemonQueryToken)initWithQuery:(id)query queue:(id)queue delegate:(id)delegate;
- (void)handleLocalQueryWithResultSet:(id)set;
- (void)handleMessage:(id)message;
@end

@implementation SPDaemonQueryToken

- (void)handleMessage:(id)message
{
  v84 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (handleMessage__onceToken != -1)
  {
    [SPDaemonQueryToken handleMessage:];
  }

  info = [messageCopy info];
  v6 = [info objectForKey:@"QID"];
  unsignedIntValue = [v6 unsignedIntValue];
  queryID = self->_queryID;

  if (unsignedIntValue == queryID)
  {
    name = [messageCopy name];
    v10 = [name isEqualToString:@"Suggestions"];

    if (v10)
    {
      v11 = [messageCopy rootObjectOfClasses:handleMessage__allowedSuggestions];
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_2;
      block[3] = &unk_1E82F8E68;
      block[4] = self;
      v82 = v11;
      v13 = v11;
      v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(queue, v14);

      v15 = v82;
LABEL_8:

      goto LABEL_9;
    }

    name2 = [messageCopy name];
    v17 = [name2 isEqualToString:@"LocalSuggestions"];

    if (v17)
    {
      v18 = [messageCopy rootObjectOfClasses:handleMessage__allowedLocalSuggestions];
      v19 = self->_queue;
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_3;
      v79[3] = &unk_1E82F8E68;
      v79[4] = self;
      v80 = v18;
      v13 = v18;
      v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v79);
      dispatch_async(v19, v20);

      v15 = v80;
      goto LABEL_8;
    }

    name3 = [messageCopy name];
    v23 = [name3 isEqualToString:@"DebugRanking"];

    if (v23)
    {
      info2 = [messageCopy info];
      v25 = [info2 objectForKeyedSubscript:@"RD"];
      v26 = self->_queue;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_32;
      v77[3] = &unk_1E82F8E68;
      v77[4] = self;
      v78 = v25;
      v27 = v25;
      dispatch_async(v26, v77);
    }

    else
    {
      name4 = [messageCopy name];
      v29 = [name4 isEqualToString:@"SearchResults"];

      if (v29)
      {
        selfCopy = self;
        info3 = [messageCopy info];
        v30 = [info3 objectForKeyedSubscript:@"TBC"];
        intValue = [v30 intValue];
        v32 = intValue;

        v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:intValue];
        v34 = MEMORY[0x1E695E738];
        if (intValue)
        {
          v35 = *MEMORY[0x1E695E738];
          v36 = v32;
          do
          {
            [v33 addObject:v35];
            --v36;
          }

          while (v36);
        }

        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_2_40;
        v74[3] = &unk_1E82F9170;
        v75 = messageCopy;
        v37 = v33;
        v76 = v37;
        dispatch_apply(v32, 0, v74);
        v38 = objc_opt_new();
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v39 = v37;
        v40 = [v39 countByEnumeratingWithState:&v70 objects:v83 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = 0;
          v43 = *v71;
          v44 = *v34;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v71 != v43)
              {
                objc_enumerationMutation(v39);
              }

              v46 = *(*(&v70 + 1) + 8 * i);
              if (v46 != v44)
              {
                resultSections = [*(*(&v70 + 1) + 8 * i) resultSections];
                [v38 addObjectsFromArray:resultSections];

                stableSections = [v46 stableSections];

                if (stableSections)
                {
                  stableSections2 = [v46 stableSections];

                  v42 = stableSections2;
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v70 objects:v83 count:16];
          }

          while (v41);
        }

        else
        {
          v42 = 0;
        }

        v56 = [[SPResultSet alloc] initWithSections:v38 stableSections:v42];
        v57 = selfCopy->_queue;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_3_42;
        v67[3] = &unk_1E82F9018;
        v67[4] = selfCopy;
        v68 = info3;
        v69 = v56;
        v58 = v56;
        v59 = info3;
        v60 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v67);
        dispatch_async(v57, v60);
      }

      else
      {
        name5 = [messageCopy name];
        v51 = [name5 isEqualToString:@"SearchReset"];

        if (v51)
        {
          v52 = self->_queue;
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_4;
          v66[3] = &unk_1E82F8F28;
          v66[4] = self;
          dispatch_async(v52, v66);
        }

        else
        {
          name6 = [messageCopy name];
          v54 = [name6 isEqualToString:@"SearchError"];

          if (v54)
          {
            v55 = self->_queue;
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_5;
            v63[3] = &unk_1E82F8E68;
            v64 = messageCopy;
            selfCopy2 = self;
            dispatch_async(v55, v63);
          }
        }
      }
    }
  }

LABEL_9:

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __36__SPDaemonQueryToken_handleMessage___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v1 = handleMessage__allowedClasses;
  handleMessage__allowedClasses = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = handleMessage__allowedSuggestions;
  handleMessage__allowedSuggestions = v4;

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v7 = handleMessage__allowedLocalSuggestions;
  handleMessage__allowedLocalSuggestions = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 searchDaemonSuggestionsArray:*(a1 + 40)];
  }
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    v6 = *(a1 + 40);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C81BF000, v4, v5, "Local suggestions: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 searchDaemonLocalSuggestionsData:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 searchDaemonRankingLog:*(a1 + 40)];
}

uint64_t __36__SPDaemonQueryToken_handleMessage___block_invoke_2_40(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectsOfClasses:handleMessage__allowedClasses atIndex:a2];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [*(a1 + 40) setObject:v4 atIndexedSubscript:a2];
    v5 = v7;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_3_42(uint64_t a1)
{
  v31 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) objectForKeyedSubscript:@"QDC"];
    v3 = [v2 BOOLValue];

    if (v3)
    {
      *(*(a1 + 32) + 33) = 1;
    }

    v4 = *(a1 + 32);
    v26 = v4;
    v27 = *(a1 + 48);
    v30 = [*(a1 + 40) objectForKeyedSubscript:@"QDR"];
    v24 = [v30 BOOLValue];
    v29 = [*(a1 + 40) objectForKeyedSubscript:@"QDP"];
    v23 = [v29 BOOLValue];
    v28 = [*(a1 + 40) objectForKeyedSubscript:@"QFP"];
    v21 = [v28 BOOLValue];
    v25 = [*(a1 + 40) objectForKeyedSubscript:@"QDU"];
    v20 = [v25 BOOLValue];
    v22 = [*(a1 + 40) objectForKeyedSubscript:@"QDC"];
    v19 = [v22 BOOLValue];
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"DTH"];
    v18 = [v5 BOOLValue];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"QNC"];
    v7 = [v6 BOOLValue];
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"QFS"];
    v9 = [v8 BOOLValue];
    v10 = [*(a1 + 40) objectForKeyedSubscript:@"BT"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [*(a1 + 40) objectForKeyedSubscript:@"GES"];
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"SAS"];
    v15 = [*(a1 + 40) objectForKeyedSubscript:@"SMIA"];
    BYTE3(v17) = v9;
    BYTE2(v17) = v7;
    BYTE1(v17) = v18;
    LOBYTE(v17) = v19;
    [v31 searchDaemonQuery:v26 gotResultSet:v27 replace:v24 partiallyComplete:v23 priorityFastPath:v21 update:v20 complete:v12 delayedTopHit:v17 unchanged:v13 forceStable:v14 blendingDuration:v15 geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];

    v16 = [*(a1 + 40) objectForKeyedSubscript:@"QDC"];
    LODWORD(v15) = [v16 BOOLValue];

    if (v15)
    {
      [*(a1 + 32) setQueryFinished:1];
    }
  }
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = 0;
  [v3 searchDaemonQuery:*(a1 + 32) gotResultSet:0 replace:1 partiallyComplete:0 priorityFastPath:0 update:0 complete:0.0 delayedTopHit:v2 unchanged:&stru_1F47D3128 forceStable:0 blendingDuration:0 geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [*(a1 + 32) info];
  v4 = [v3 objectForKey:@"ERR"];
  v6 = [v2 initWithDomain:@"SearchError" code:objc_msgSend(v4 userInfo:{"unsignedIntValue"), 0}];

  v5 = [*(a1 + 40) delegate];
  [v5 searchDaemonQuery:*(a1 + 40) encounteredError:v6];
}

- (void)handleLocalQueryWithResultSet:(id)set
{
  setCopy = set;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SPDaemonQueryToken_handleLocalQueryWithResultSet___block_invoke;
  v8[3] = &unk_1E82F8E68;
  v8[4] = self;
  v9 = setCopy;
  v6 = setCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(queue, v7);
}

void __52__SPDaemonQueryToken_handleLocalQueryWithResultSet___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 33) = 1;
    LODWORD(v2) = 1;
    [v3 searchDaemonQuery:*(a1 + 32) gotResultSet:*(a1 + 40) replace:1 partiallyComplete:0 priorityFastPath:0 update:0 complete:0.0 delayedTopHit:v2 unchanged:&stru_1F47D3128 forceStable:0 blendingDuration:0 geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
    [*(a1 + 32) setQueryFinished:1];
  }
}

- (SPDaemonQueryToken)initWithQuery:(id)query queue:(id)queue delegate:(id)delegate
{
  queryCopy = query;
  queueCopy = queue;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SPDaemonQueryToken;
  v12 = [(SPDaemonQueryToken *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_query, query);
    v13->_queryID = atomic_fetch_add(__queryTokenGen, 1u);
    objc_storeStrong(&v13->_queue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (SPDaemonQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end