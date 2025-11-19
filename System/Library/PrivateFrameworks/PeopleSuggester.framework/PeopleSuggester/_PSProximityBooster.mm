@interface _PSProximityBooster
- (_PSProximityBooster)init;
- (id)suggestionsByBoostingNearbySuggestions:(id)a3;
- (void)startMonitoringProximity;
- (void)stopMonitoringProximity;
@end

@implementation _PSProximityBooster

- (_PSProximityBooster)init
{
  v8.receiver = self;
  v8.super_class = _PSProximityBooster;
  v2 = [(_PSProximityBooster *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C6BA8]);
    peopleDiscovery = v2->_peopleDiscovery;
    v2->_peopleDiscovery = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.peoplesuggester.proximitybooster", v5);
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDispatchQueue:v6];

    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDiscoveryMode:400];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDiscoveryFlags:24];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setChangeFlags:0xFFFFFFFFLL];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonFoundHandler:&__block_literal_global_14];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonLostHandler:&__block_literal_global_15];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonChangedHandler:&__block_literal_global_19_0];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setInvalidationHandler:&__block_literal_global_24];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setInterruptionHandler:&__block_literal_global_27];
  }

  return v2;
}

- (void)startMonitoringProximity
{
  v2 = [(_PSProximityBooster *)self peopleDiscovery];
  [v2 activateWithCompletion:&__block_literal_global_30];
}

- (void)stopMonitoringProximity
{
  v2 = [(_PSProximityBooster *)self peopleDiscovery];
  [v2 invalidate];
}

- (id)suggestionsByBoostingNearbySuggestions:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(_PSProximityBooster *)self peopleDiscovery];
  v7 = [v6 dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke;
  block[3] = &unk_1E7C25528;
  block[4] = self;
  v42 = v5;
  v56 = v42;
  dispatch_sync(v7, block);

  v41 = [v4 mutableCopy];
  obj = [MEMORY[0x1E695DFA8] set];
  v45 = v4;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [v4 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = [v13 recipients];
        v15 = [v14 count];

        if (v15 == 1)
        {
          v16 = [v13 recipients];
          v17 = [v16 firstObject];

          v18 = [v17 contact];
          v19 = [v18 identifier];

          if (v19 && [v42 containsObject:v19])
          {
            [v41 removeObject:v13];
            [v41 insertObject:v13 atIndex:0];
            v20 = [v13 reason];
            [v20 stringByAppendingString:@" - "];
            v22 = v21 = v8;
            v23 = [v22 stringByAppendingString:@"Proximity Boosted"];
            [v13 setReason:v23];

            v24 = [v13 reasonType];
            v25 = [v24 stringByAppendingString:@" - "];
            v26 = [v25 stringByAppendingString:@"Proximity Boosted"];
            [v13 setReasonType:v26];

            v8 = v21;
            [obj addObject:v19];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v10);
  }

  v27 = [v41 copy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obja = obj;
  v28 = [obja countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v48;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v47 + 1) + 8 * j);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_38;
        v46[3] = &unk_1E7C25690;
        v46[4] = v32;
        v33 = MEMORY[0x1B8C8C060](v46);
        v34 = [v45 indexOfObjectPassingTest:v33];
        v35 = [v27 indexOfObjectPassingTest:v33];
        v36 = +[_PSLogging heuristicsChannel];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
          *buf = 138412802;
          v58 = v32;
          v59 = 2112;
          v60 = v37;
          v61 = 2112;
          v62 = v38;
          _os_log_debug_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_DEBUG, "Boosting suggestion with contactID %@ from index %@ to index %@", buf, 0x20u);
        }
      }

      v29 = [obja countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v29);
  }

  v39 = *MEMORY[0x1E69E9840];

  return v27;
}

@end