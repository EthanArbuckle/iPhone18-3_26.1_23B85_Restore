@interface SFAirDropBrowser
- (SFAirDropBrowser)init;
- (SFAirDropBrowserBatchDelegate)batchDelegate;
- (SFAirDropBrowserDelegate)delegate;
- (SFAirDropBrowserDiffableDelegate)diffableDelegate;
- (void)dealloc;
- (void)getChangedIndexesForClientPeopleList:(id)list withCompletion:(id)completion;
- (void)pause;
- (void)resume;
- (void)start;
- (void)stop;
- (void)updateDiscoveredPeople;
@end

@implementation SFAirDropBrowser

- (SFAirDropBrowser)init
{
  v9.receiver = self;
  v9.super_class = SFAirDropBrowser;
  v2 = [(SFAirDropBrowser *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_browser = 0;
    v4 = objc_opt_new();
    nodes = v3->_nodes;
    v3->_nodes = v4;

    v6 = objc_opt_new();
    nodeIDToNode = v3->_nodeIDToNode;
    v3->_nodeIDToNode = v6;
  }

  return v3;
}

- (void)dealloc
{
  [(SFAirDropBrowser *)self stop];
  v3.receiver = self;
  v3.super_class = SFAirDropBrowser;
  [(SFAirDropBrowser *)&v3 dealloc];
}

- (void)start
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_browser)
  {
    *&v7 = 0;
    v8 = 0u;
    v9 = 0;
    *(&v7 + 1) = self;
    v3 = SFBrowserCreate(0, @"AirDrop");
    self->_browser = v3;
    SFBrowserSetClient(v3, browserCallBack, &v7);
    SFBrowserSetDispatchQueue(self->_browser, MEMORY[0x1E69E96A0]);
    sendingAppBundleID = self->_sendingAppBundleID;
    if (!sendingAppBundleID)
    {
      sendingAppBundleID = &stru_1F1D30528;
    }

    v11 = sendingAppBundleID;
    v10[0] = @"BundleID";
    v10[1] = @"URLsBeingShared";
    v12 = vbslq_s8(vceqzq_s64(*&self->_urlsBeingShared), vdupq_n_s64(MEMORY[0x1E695E0F0]), *&self->_urlsBeingShared);
    v10[2] = @"PhotosAssetIDs";
    v10[3] = @"ShouldCollectDiscoveryMetrics";
    v13 = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:v10 count:{4, v7, v8, v9}];
    SFBrowserSetOptions(self->_browser, v5);
    SFBrowserOpenNode(self->_browser, 0, self->_sessionID, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pause
{
  WeakRetained = objc_loadWeakRetained(&self->_batchDelegate);

  if (WeakRetained)
  {
    self->_shouldDeliverEmptyUpdates = 1;

    [(SFAirDropBrowser *)self stop];
  }
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_batchDelegate);

  if (WeakRetained)
  {

    [(SFAirDropBrowser *)self start];
  }
}

- (void)stop
{
  browser = self->_browser;
  if (browser)
  {
    SFBrowserInvalidate(browser);
    CFRelease(self->_browser);
    self->_browser = 0;
  }
}

- (void)updateDiscoveredPeople
{
  v179 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  browser = self->_browser;
  if (browser)
  {
    v5 = SFBrowserCopyChildren(browser, 0);
  }

  else
  {
    v5 = 0;
  }

  people = self->_people;
  if (people)
  {
    v7 = people;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v127 = v7;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v164 objects:v178 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v165;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v165 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v164 + 1) + 8 * i);
        v13 = [MEMORY[0x1E696B098] valueWithPointer:v12];
        v14 = [(NSMutableDictionary *)self->_nodes objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v14;
          [v14 updateWithSFNode:v12];
          nodeIDToNode = self->_nodeIDToNode;
          nodeIdentifier = [v15 nodeIdentifier];
          v18 = nodeIDToNode;
        }

        else
        {
          v15 = [SFAirDropNode nodeWithSFNode:v12];
          [(NSMutableDictionary *)self->_nodes setObject:v15 forKeyedSubscript:v13];
          nodeIdentifier = [MEMORY[0x1E696AFB0] UUID];
          [v15 setNodeIdentifier:nodeIdentifier];
          v18 = self->_nodeIDToNode;
        }

        [(NSMutableDictionary *)v18 setObject:v15 forKeyedSubscript:nodeIdentifier];

        [v3 addObject:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v164 objects:v178 count:16];
    }

    while (v9);
  }

  array = [v3 array];
  v20 = v127;
  v21 = [array differenceFromArray:v127];

  v118 = v21;
  if ([v21 hasChanges])
  {
    v22 = airdrop_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v177 = v21;
      _os_log_impl(&dword_1A9662000, v22, OS_LOG_TYPE_DEFAULT, "Updated people: %@", buf, 0xCu);
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    insertions = [v21 insertions];
    v24 = [insertions countByEnumeratingWithState:&v160 objects:v175 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v161;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v161 != v26)
          {
            objc_enumerationMutation(insertions);
          }

          v28 = *(*(&v160 + 1) + 8 * j);
          v29 = airdrop_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            object = [v28 object];
            *buf = 138412290;
            v177 = object;
            _os_log_impl(&dword_1A9662000, v29, OS_LOG_TYPE_DEFAULT, "Updated people: Adding person %@", buf, 0xCu);
          }
        }

        v25 = [insertions countByEnumeratingWithState:&v160 objects:v175 count:16];
      }

      while (v25);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    removals = [v118 removals];
    v32 = [removals countByEnumeratingWithState:&v156 objects:v174 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v157;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v157 != v34)
          {
            objc_enumerationMutation(removals);
          }

          v36 = *(*(&v156 + 1) + 8 * k);
          v37 = airdrop_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            object2 = [v36 object];
            *buf = 138412290;
            v177 = object2;
            _os_log_impl(&dword_1A9662000, v37, OS_LOG_TYPE_DEFAULT, "Updated people: Removing person %@", buf, 0xCu);
          }
        }

        v33 = [removals countByEnumeratingWithState:&v156 objects:v174 count:16];
      }

      while (v33);
    }

    v20 = v127;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v42 = v20;
  v43 = [(NSArray *)v42 countByEnumeratingWithState:&v152 objects:v173 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v153;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v153 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v152 + 1) + 8 * m);
        if ([v3 containsObject:v47])
        {
          v48 = array2;
        }

        else
        {
          v48 = array4;
        }

        [v48 addObject:v47];
      }

      v44 = [(NSArray *)v42 countByEnumeratingWithState:&v152 objects:v173 count:16];
    }

    while (v44);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v49 = v3;
  v50 = [v49 countByEnumeratingWithState:&v148 objects:v172 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v149;
    do
    {
      for (n = 0; n != v51; ++n)
      {
        if (*v149 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v148 + 1) + 8 * n);
        if (![(NSArray *)v42 containsObject:v54])
        {
          [array3 addObject:v54];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v148 objects:v172 count:16];
    }

    while (v51);
  }

  v122 = array4;
  v123 = v42;
  v121 = v49;

  [array3 sortUsingComparator:&__block_literal_global_2];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  v58 = array2;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  array9 = [MEMORY[0x1E695DF70] array];
  array10 = [MEMORY[0x1E695DF70] array];
  array11 = [MEMORY[0x1E695DF70] array];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v128 = array3;
  v60 = [v128 countByEnumeratingWithState:&v144 objects:v171 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v145;
    do
    {
      for (ii = 0; ii != v61; ++ii)
      {
        if (*v145 != v62)
        {
          objc_enumerationMutation(v128);
        }

        v64 = *(*(&v144 + 1) + 8 * ii);
        isSuggestion = [v64 isSuggestion];
        v66 = array8;
        if ((isSuggestion & 1) == 0)
        {
          isMe = [v64 isMe];
          v66 = array7;
          if ((isMe & 1) == 0)
          {
            if ([v64 isUnknown])
            {
              v66 = array6;
            }

            else
            {
              v66 = array5;
            }
          }
        }

        [v66 addObject:v64];
      }

      v61 = [v128 countByEnumeratingWithState:&v144 objects:v171 count:16];
    }

    while (v61);
  }

  if ([v58 count])
  {
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = [v58 objectAtIndexedSubscript:v68];
      if (([v70 isSuggestion] & 1) != 0 || objc_msgSend(v70, "isMe"))
      {
        ++v69;
      }

      ++v68;
    }

    while ([v58 count] > v68);
  }

  else
  {
    v69 = 0;
  }

  v120 = array6;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v71 = array8;
  v72 = [v71 countByEnumeratingWithState:&v140 objects:v170 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v141;
    do
    {
      v75 = 0;
      v76 = v69;
      do
      {
        if (*v141 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [v58 insertObject:*(*(&v140 + 1) + 8 * v75) atIndex:v76];
        v69 = v76 + 1;
        [indexSet addIndex:v76];
        ++v75;
        ++v76;
      }

      while (v73 != v75);
      v73 = [v71 countByEnumeratingWithState:&v140 objects:v170 count:16];
    }

    while (v73);
  }

  if ([v58 count])
  {
    v77 = 0;
    v78 = 0;
    v79 = array9;
    do
    {
      v80 = [v58 objectAtIndexedSubscript:v77];
      if ([v80 isMe])
      {
        [array9 addObject:v80];
        ++v78;
      }

      ++v77;
    }

    while ([v58 count] > v77);
  }

  else
  {
    v78 = 0;
    v79 = array9;
  }

  v115 = v71;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v126 = array7;
  v81 = [v126 countByEnumeratingWithState:&v136 objects:v169 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v137;
    do
    {
      v84 = 0;
      v85 = v78;
      do
      {
        if (*v137 != v83)
        {
          objc_enumerationMutation(v126);
        }

        v86 = *(*(&v136 + 1) + 8 * v84);
        [v58 insertObject:v86 atIndex:v85];
        v78 = v85 + 1;
        [indexSet addIndex:v85];
        [v79 addObject:v86];
        ++v84;
        ++v85;
      }

      while (v82 != v84);
      v82 = [v126 countByEnumeratingWithState:&v136 objects:v169 count:16];
    }

    while (v82);
  }

  if ([v58 count])
  {
    v87 = 0;
    v88 = 0;
    while (1)
    {
      v89 = [v58 objectAtIndexedSubscript:v87];
      if ([v89 isUnknown])
      {
        break;
      }

      ++v88;
      isMe2 = [v89 isMe];
      v90 = array10;
      if ((isMe2 & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_105:

      if ([v58 count] <= ++v87)
      {
        goto LABEL_108;
      }
    }

    v90 = array11;
LABEL_104:
    [v90 addObject:v89];
    goto LABEL_105;
  }

  v88 = 0;
LABEL_108:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v92 = array5;
  v93 = [v92 countByEnumeratingWithState:&v132 objects:v168 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v133;
    do
    {
      v96 = 0;
      v97 = v88;
      do
      {
        if (*v133 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v98 = *(*(&v132 + 1) + 8 * v96);
        [v58 insertObject:v98 atIndex:v97];
        v88 = v97 + 1;
        [indexSet addIndex:v97];
        [array10 addObject:v98];
        ++v96;
        ++v97;
      }

      while (v94 != v96);
      v94 = [v92 countByEnumeratingWithState:&v132 objects:v168 count:16];
    }

    while (v94);
  }

  v99 = [array11 arrayByAddingObjectsFromArray:v120];
  v125 = [v99 copy];

  v100 = [v58 arrayByAddingObjectsFromArray:v120];
  v101 = self->_people;
  self->_people = v100;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserWillChangePeople:self];

  v103 = v123;
  v104 = v121;
  if ([(NSArray *)v123 count])
  {
    v105 = 0;
    do
    {
      v106 = [(NSArray *)v103 objectAtIndexedSubscript:v105];
      if ([v122 containsObject:v106])
      {
        v107 = objc_loadWeakRetained(&self->_delegate);
        [v107 browser:self didDeletePersonAtIndex:v105];

        v104 = v121;
        [indexSet2 addIndex:v105];
      }

      ++v105;
      v103 = v123;
    }

    while ([(NSArray *)v123 count]> v105);
  }

  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __42__SFAirDropBrowser_updateDiscoveredPeople__block_invoke_2;
  v131[3] = &unk_1E788B0B8;
  v131[4] = self;
  [indexSet enumerateIndexesUsingBlock:v131];
  v108 = [v58 count];
  if (v108 < [v120 count] + v108)
  {
    v109 = v108;
    do
    {
      v110 = objc_loadWeakRetained(&self->_delegate);
      [v110 browser:self didInsertPersonAtIndex:v109];

      [indexSet addIndex:v109++];
    }

    while (v109 < [v120 count] + v108);
  }

  v111 = objc_loadWeakRetained(&self->_delegate);
  [v111 browserDidChangePeople:self];

  v112 = objc_loadWeakRetained(&self->_diffableDelegate);
  [v112 browserDidUpdateMePeople:array9 knownPeople:array10 unknownPeople:v125];

  if (!self->_shouldDeliverEmptyUpdates || [(NSArray *)self->_people count])
  {
    self->_shouldDeliverEmptyUpdates = 0;
    v113 = objc_loadWeakRetained(&self->_batchDelegate);
    [v113 browserDidUpdatePeople:self];
  }

  v114 = *MEMORY[0x1E69E9840];
}

uint64_t __42__SFAirDropBrowser_updateDiscoveredPeople__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  if (v6 && v7)
  {
    if (![v6 isClassroom] || objc_msgSend(v8, "isClassroom"))
    {
      if ([v6 isClassroom] & 1) == 0 && (objc_msgSend(v8, "isClassroom"))
      {
LABEL_14:
        v9 = 1;
        goto LABEL_17;
      }

      if (![v6 isClassroomCourse] || objc_msgSend(v8, "isClassroomCourse"))
      {
        if (([v6 isClassroomCourse] & 1) != 0 || (objc_msgSend(v8, "isClassroomCourse") & 1) == 0)
        {
          v10 = [v6 displayName];
          v11 = [v8 displayName];
          v9 = [v10 localizedCaseInsensitiveCompare:v11];

          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    v9 = -1;
  }

LABEL_17:

  return v9;
}

void __42__SFAirDropBrowser_updateDiscoveredPeople__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained browser:*(a1 + 32) didInsertPersonAtIndex:a2];
}

- (void)getChangedIndexesForClientPeopleList:(id)list withCompletion:(id)completion
{
  listCopy = list;
  if (listCopy)
  {
    v7 = listCopy;
    completionCopy = completion;
  }

  else
  {
    completionCopy2 = completion;
    v7 = objc_opt_new();
  }

  v10 = [(NSArray *)self->_people sortedArrayUsingComparator:&__block_literal_global_138];
  v13 = 0;
  v14 = 0;
  [v7 sf_differencesFromArray:v10 removedIndexes:&v14 insertedIndexes:&v13];
  v11 = v14;
  v12 = v13;
  (*(completion + 2))(completion, v10, v11, v12);
}

uint64_t __72__SFAirDropBrowser_getChangedIndexesForClientPeopleList_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  if (v6 && v7)
  {
    if ([v6 isClassroom] && !objc_msgSend(v8, "isClassroom"))
    {
      goto LABEL_30;
    }

    if (([v6 isClassroom] & 1) != 0 || (objc_msgSend(v8, "isClassroom") & 1) == 0)
    {
      if ([v6 isClassroomCourse] && !objc_msgSend(v8, "isClassroomCourse"))
      {
        goto LABEL_30;
      }

      if (([v6 isClassroomCourse] & 1) != 0 || (objc_msgSend(v8, "isClassroomCourse") & 1) == 0)
      {
        if ([v6 isSuggestion] && objc_msgSend(v8, "isSuggestion"))
        {
          v10 = [v6 model];
          v11 = [v8 model];
LABEL_33:
          v13 = v11;
          v9 = [v10 compare:v11];

          goto LABEL_31;
        }

        if ([v6 isSuggestion] && !objc_msgSend(v8, "isSuggestion"))
        {
          goto LABEL_30;
        }

        if (([v6 isSuggestion] & 1) != 0 || (objc_msgSend(v8, "isSuggestion") & 1) == 0)
        {
          if ([v6 isMe] && !objc_msgSend(v8, "isMe"))
          {
            goto LABEL_30;
          }

          if (([v6 isMe] & 1) != 0 || (objc_msgSend(v8, "isMe") & 1) == 0)
          {
            if (![v6 isKnown] || objc_msgSend(v8, "isKnown"))
            {
              if (([v6 isKnown] & 1) != 0 || (objc_msgSend(v8, "isKnown") & 1) == 0)
              {
                v10 = [v6 discoveryDate];
                v11 = [v8 discoveryDate];
                goto LABEL_33;
              }

              goto LABEL_29;
            }

LABEL_30:
            v9 = -1;
            goto LABEL_31;
          }
        }
      }
    }

LABEL_29:
    v9 = 1;
  }

LABEL_31:

  return v9;
}

- (SFAirDropBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFAirDropBrowserBatchDelegate)batchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_batchDelegate);

  return WeakRetained;
}

- (SFAirDropBrowserDiffableDelegate)diffableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_diffableDelegate);

  return WeakRetained;
}

@end