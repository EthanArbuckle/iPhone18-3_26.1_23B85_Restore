@interface PKPagedTransactionListDataSource
- (BOOL)isListLayoutForSection:(unint64_t)section;
- (PKPagedTransactionListDataSource)init;
- (PKTransactionHistoryDataSourceDelegate)customDelegate;
- (id)itemAtIndexPath:(id)path;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (unint64_t)transactionHistoryItemsCount;
- (void)_loadWithLimit:(unint64_t)limit;
- (void)loadTransactionsIfNeeded;
- (void)willDisplayItemAtIndexPath:(id)path;
@end

@implementation PKPagedTransactionListDataSource

- (PKPagedTransactionListDataSource)init
{
  v15.receiver = self;
  v15.super_class = PKPagedTransactionListDataSource;
  v2 = [(PKPagedTransactionListDataSource *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.PKPagedTransactionListDataSource", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_loading = 0;
    v5 = [[PKPagedTransactionListDataSourceData alloc] initWithWalletTotalCount:0 bankConnectTotalCount:0 transactions:0 transactionIdentifiers:0 transactionSourceIdentifiers:0 transactionSourceIdentifierToPass:0 transactionIDToFPANID:0 fpanIDToPass:0 transactionIDToInstitution:0];
    data = v2->_data;
    v2->_data = v5;

    v7 = NewStateFromData(v2->_data);
    itemsState = v2->_itemsState;
    v2->_itemsState = v7;

    memset(v14, 0, sizeof(v14));
    __copy_assignment_8_8_S_s0_s8_t16w1_s24(&v2->_walletPagingState, v14);
    __copy_assignment_8_8_S_s0_s8_t16w1_s24(&v2->_bankConnectPagingState, v14);
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v2->_paymentDataProvider;
    v2->_paymentDataProvider = defaultDataProvider;

    v11 = objc_alloc_init(_TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher);
    bankConnectFetcher = v2->_bankConnectFetcher;
    v2->_bankConnectFetcher = v11;
  }

  return v2;
}

- (void)loadTransactionsIfNeeded
{
  if (self->_walletPagingState.loadedUntilBound.transactionDate)
  {
    endReached = 1;
  }

  else
  {
    endReached = self->_walletPagingState.endReached;
  }

  if (!self->_bankConnectPagingState.loadedUntilBound.transactionDate && !endReached && !self->_bankConnectPagingState.endReached && !self->_loading)
  {
    [(PKPagedTransactionListDataSource *)self _loadWithLimit:10];
  }
}

- (void)willDisplayItemAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(PKDashboardItemsState *)self->_itemsState sections];
  v5 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  identifier = [v5 identifier];
  v7 = [identifier isEqual:@"transactions"];

  if (v7 && (!self->_walletPagingState.endReached || !self->_bankConnectPagingState.endReached) && !self->_loading)
  {
    data = self->_data;
    v9 = data ? data->_transactions : 0;
    v10 = [(NSArray *)v9 count];
    if ([pathCopy item] >= v10 >> 1)
    {
      v11 = 20;
      if (v10 > 0x14)
      {
        v11 = v10;
      }

      if (v11 >= 0x12C)
      {
        v12 = 300;
      }

      else
      {
        v12 = v11;
      }

      [(PKPagedTransactionListDataSource *)self _loadWithLimit:v12];
    }
  }
}

- (void)_loadWithLimit:(unint64_t)limit
{
  self->_loading = 1;
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = __Block_byref_object_copy__47;
  v169 = __Block_byref_object_dispose__47;
  data = self->_data;
  if (data)
  {
    data = data->_walletTotalCount;
  }

  v170 = data;
  v159 = 0;
  v160 = &v159;
  v161 = 0x3032000000;
  v162 = __Block_byref_object_copy__47;
  v163 = __Block_byref_object_dispose__47;
  v6 = self->_data;
  if (v6)
  {
    v6 = v6->_bankConnectTotalCount;
  }

  v164 = v6;
  v157[0] = 0;
  v157[1] = v157;
  v157[2] = 0x3032000000;
  v157[3] = __Block_byref_object_copy__47;
  v157[4] = __Block_byref_object_dispose__47;
  v7 = self->_data;
  if (v7)
  {
    v7 = v7->_transactions;
  }

  v8 = v7;
  v9 = [(PKPagedTransactionListDataSourceData *)v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v158 = v11;

  v155[0] = 0;
  v155[1] = v155;
  v155[2] = 0x3032000000;
  v155[3] = __Block_byref_object_copy__47;
  v155[4] = __Block_byref_object_dispose__47;
  v12 = self->_data;
  if (v12)
  {
    v12 = v12->_transactionIdentifiers;
  }

  v13 = v12;
  v14 = [(PKPagedTransactionListDataSourceData *)v13 mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v156 = v16;

  v17 = self->_data;
  if (v17)
  {
    v17 = v17->_transactionSourceIdentifiers;
  }

  v18 = v17;
  v153[0] = 0;
  v153[1] = v153;
  v153[2] = 0x3032000000;
  v153[3] = __Block_byref_object_copy__47;
  v153[4] = __Block_byref_object_dispose__47;
  v19 = self->_data;
  if (v19)
  {
    v19 = v19->_transactionSourceIdentifierToPass;
  }

  v20 = v19;
  v21 = [(PKPagedTransactionListDataSourceData *)v20 mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v154 = v23;

  v151[0] = 0;
  v151[1] = v151;
  v151[2] = 0x3032000000;
  v151[3] = __Block_byref_object_copy__47;
  v151[4] = __Block_byref_object_dispose__47;
  v24 = self->_data;
  if (v24)
  {
    v24 = v24->_transactionIDToFPANID;
  }

  v25 = v24;
  v26 = [(PKPagedTransactionListDataSourceData *)v25 mutableCopy];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v152 = v28;

  v149[0] = 0;
  v149[1] = v149;
  v149[2] = 0x3032000000;
  v149[3] = __Block_byref_object_copy__47;
  v149[4] = __Block_byref_object_dispose__47;
  v29 = self->_data;
  if (v29)
  {
    v29 = v29->_fpanIDToPass;
  }

  v30 = v29;
  v31 = [(PKPagedTransactionListDataSourceData *)v30 mutableCopy];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v150 = v33;

  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x3032000000;
  v147[3] = __Block_byref_object_copy__47;
  v147[4] = __Block_byref_object_dispose__47;
  v34 = self->_data;
  if (v34)
  {
    v34 = v34->_transactionIDToInstitution;
  }

  v35 = v34;
  v36 = [(PKPagedTransactionListDataSourceData *)v35 mutableCopy];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v148 = v38;

  v139 = 0;
  v140 = &v139;
  v141 = 0x5012000000;
  v142 = __Block_byref_object_copy__95;
  v143 = __Block_byref_object_dispose__96;
  v144 = "1 0";
  v145 = 0u;
  v146 = 0u;
  __copy_constructor_8_8_S_s0_s8_t16w1_s24(&v145, &self->_walletPagingState);
  v131 = 0;
  v132 = &v131;
  v133 = 0x5012000000;
  v134 = __Block_byref_object_copy__95;
  v135 = __Block_byref_object_dispose__96;
  v136 = "1 0";
  v137 = 0u;
  v138 = 0u;
  __copy_constructor_8_8_S_s0_s8_t16w1_s24(&v137, &self->_bankConnectPagingState);
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x3032000000;
  v129[3] = __Block_byref_object_copy__47;
  v129[4] = __Block_byref_object_dispose__47;
  v130 = 0;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x3032000000;
  v127[3] = __Block_byref_object_copy__47;
  v127[4] = __Block_byref_object_dispose__47;
  v128 = 0;
  v125[0] = 0;
  v125[1] = v125;
  v125[2] = 0x3032000000;
  v125[3] = __Block_byref_object_copy__47;
  v125[4] = __Block_byref_object_dispose__47;
  v126 = 0;
  v123[0] = 0;
  v123[1] = v123;
  v123[2] = 0x3032000000;
  v123[3] = __Block_byref_object_copy__47;
  v123[4] = __Block_byref_object_dispose__47;
  v124 = 0;
  v121[0] = 0;
  v121[1] = v121;
  v121[2] = 0x3032000000;
  v121[3] = __Block_byref_object_copy__47;
  v121[4] = __Block_byref_object_dispose__47;
  v122 = 0;
  v39 = self->_itemsState;
  v40 = dispatch_group_create();
  v41 = v40;
  if (!v18)
  {
    dispatch_group_enter(v40);
    v42 = dispatch_group_create();
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x3032000000;
    v119[3] = __Block_byref_object_copy__47;
    v119[4] = __Block_byref_object_dispose__47;
    v120 = 0;
    dispatch_group_enter(v42);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke;
    block[3] = &unk_1E8014BD0;
    v118 = v119;
    v44 = v42;
    v117 = v44;
    dispatch_async(queue, block);
    v114[0] = 0;
    v114[1] = v114;
    v114[2] = 0x3032000000;
    v114[3] = __Block_byref_object_copy__47;
    v114[4] = __Block_byref_object_dispose__47;
    v115 = 0;
    dispatch_group_enter(v44);
    bankConnectFetcher = self->_bankConnectFetcher;
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_2;
    v111[3] = &unk_1E801DE18;
    v113 = v114;
    v46 = v44;
    v112 = v46;
    [(PKPagedTransactionListBankConnectFetcher *)bankConnectFetcher accountExternalIDsWithCompletionHandler:v111];
    v47 = self->_queue;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_3;
    v106[3] = &unk_1E801FDC8;
    v108 = v119;
    v106[4] = self;
    v109 = v114;
    v110 = v129;
    v107 = v41;
    dispatch_group_notify(v46, v47, v106);

    _Block_object_dispose(v114, 8);
    _Block_object_dispose(v119, 8);
  }

  v48 = dispatch_group_create();
  v49 = v48;
  if (!v166[5])
  {
    dispatch_group_enter(v48);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_7;
    aBlock[3] = &unk_1E801FE18;
    aBlock[4] = self;
    v105 = &v165;
    v104 = v49;
    v50 = _Block_copy(aBlock);
    v51 = v50;
    if (v18)
    {
      (*(v50 + 2))(v50, v18);
    }

    else
    {
      v52 = self->_queue;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_2_112;
      v100[3] = &unk_1E8017240;
      v101 = v50;
      v102 = v129;
      dispatch_group_notify(v41, v52, v100);
    }
  }

  if (!v160[5])
  {
    dispatch_group_enter(v49);
    v53 = self->_bankConnectFetcher;
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_3_113;
    v97[3] = &unk_1E801FE40;
    v99 = &v159;
    v98 = v49;
    [(PKPagedTransactionListBankConnectFetcher *)v53 countTransactionsWithCompletionHandler:v97];
  }

  if ((v140[8] & 1) == 0)
  {
    dispatch_group_enter(v49);
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_4_116;
    v91[3] = &unk_1E801FEE0;
    v93 = &v139;
    v91[4] = self;
    v94 = v127;
    v95 = v153;
    limitCopy = limit;
    v92 = v49;
    v54 = _Block_copy(v91);
    v55 = v54;
    if (v18)
    {
      (*(v54 + 2))(v54, v18);
    }

    else
    {
      v56 = self->_queue;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_8;
      v88[3] = &unk_1E8017240;
      v89 = v54;
      v90 = v129;
      dispatch_group_notify(v41, v56, v88);
    }
  }

  if ((v132[8] & 1) == 0)
  {
    dispatch_group_enter(v49);
    v57 = [_TtC9PassKitUI26PKTransactionsPageBoundary alloc];
    v58 = [(PKTransactionsPageBoundary *)v57 initWithDate:v132[6] identifier:v132[7]];
    v59 = self->_bankConnectFetcher;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_9;
    v83[3] = &unk_1E801FF08;
    v85 = v125;
    v86 = v123;
    v87 = v121;
    v84 = v49;
    [(PKPagedTransactionListBankConnectFetcher *)v59 fetchTransactionsWithLimit:limit before:v58 completionHandler:v83];
  }

  v60 = self->_queue;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_10;
  v63[3] = &unk_1E801FFE0;
  limitCopy2 = limit;
  v68 = v127;
  v69 = &v131;
  v70 = v125;
  v71 = v155;
  v72 = v157;
  v73 = v123;
  v74 = v151;
  v75 = v149;
  v76 = v121;
  v77 = v147;
  v78 = v129;
  v79 = &v165;
  v80 = &v159;
  v81 = v153;
  v64 = v18;
  v65 = v39;
  selfCopy = self;
  v67 = &v139;
  v61 = v39;
  v62 = v18;
  dispatch_group_notify(v49, v60, v63);

  _Block_object_dispose(v121, 8);
  _Block_object_dispose(v123, 8);

  _Block_object_dispose(v125, 8);
  _Block_object_dispose(v127, 8);

  _Block_object_dispose(v129, 8);
  _Block_object_dispose(&v131, 8);

  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(v147, 8);

  _Block_object_dispose(v149, 8);
  _Block_object_dispose(v151, 8);

  _Block_object_dispose(v153, 8);
  _Block_object_dispose(v155, 8);

  _Block_object_dispose(v157, 8);
  _Block_object_dispose(&v159, 8);

  _Block_object_dispose(&v165, 8);
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B8A58] sharedInstance];
  v3 = [v2 passesOfType:1];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_4;
  v11[3] = &unk_1E801FD80;
  v11[4] = *(a1 + 56);
  v3 = [v2 pk_objectsPassingTest:v11];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(*(a1 + 48) + 8) + 40) pk_createSetByApplyingBlock:&__block_literal_global_193];
  v7 = *(*(a1 + 32) + 112);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_6;
  v8[3] = &unk_1E8016A70;
  v10 = *(a1 + 64);
  v9 = *(a1 + 40);
  [v7 transactionSourceIdentifiersForPassUniqueIdentifiers:v6 completion:v8];
}

uint64_t __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 primaryAccountIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_6(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B8EC8];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setTransactionSourceIdentifiers:v4];

  [v5 setExcludedAccountStates:&unk_1F3CC8618];
  [v5 setExcludedPeerPaymentAccountStates:&unk_1F3CC8630];
  v6 = *(*(a1 + 32) + 112);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_110;
  v9[3] = &unk_1E801FDF0;
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [v6 transactionCountForRequest:v5 completion:v9];
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_110(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_3_113(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_4_116(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B8EC8];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setTransactionSourceIdentifiers:v4];

  [v5 setEndDate:*(*(*(a1 + 48) + 8) + 48)];
  [v5 setLimit:*(a1 + 72)];
  [v5 setExcludedAccountStates:&unk_1F3CC8648];
  [v5 setExcludedPeerPaymentAccountStates:&unk_1F3CC8660];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 112);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_5_123;
  v9[3] = &unk_1E801FEB8;
  v11 = *(a1 + 56);
  v9[4] = v7;
  v10 = v6;
  [v8 transactionsForRequest:v5 completion:v9];
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_5_123(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * v10) transactionSourceIdentifier];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [*(*(*(a1 + 56) + 8) + 40) allKeys];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v5 removeObject:*(*(&v21 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  if ([v5 count])
  {
    v17 = *(*(a1 + 32) + 112);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_6_124;
    v18[3] = &unk_1E801FE90;
    v20 = *(a1 + 56);
    v19 = *(a1 + 40);
    [v17 passUniqueIdentifiersForTransactionSourceIdentifiers:v5 completion:v18];
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_6_124(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E69B8A58] sharedInstance];
  v13 = [v5 allValues];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_7_125;
  v17[3] = &unk_1E801FE68;
  v18 = v4;
  v16 = *(a1 + 32);
  v14 = v16;
  v19 = v16;
  v15 = v4;
  [v12 getPassesWithUniqueIdentifiers:v13 handler:v17];
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_7_125(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 count])
  {
    v3 = 0;
    do
    {
      v4 = [v8 objectAtIndex:v3];
      v5 = *(a1 + 32);
      v6 = [v4 uniqueID];
      v7 = [v5 objectForKey:v6];

      [*(*(*(a1 + 48) + 8) + 40) setObject:v4 forKey:v7];
      ++v3;
    }

    while ([v8 count] > v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_group_leave(*(a1 + 32));
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_10(uint64_t a1)
{
  v104[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_11;
  aBlock[3] = &__block_descriptor_40_e41___NSArray_24__0__________B__8__NSArray_16l;
  aBlock[4] = *(a1 + 176);
  v2 = _Block_copy(aBlock);
  v3 = v2[2](v2, *(*(a1 + 56) + 8) + 48, *(*(*(a1 + 64) + 8) + 40));
  v73 = v2;
  v4 = v2[2](v2, *(*(a1 + 72) + 8) + 48, *(*(*(a1 + 80) + 8) + 40));
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72 = v3;
  v6 = [v3 objectEnumerator];
  v71 = v4;
  v7 = [v4 objectEnumerator];
  v8 = [v6 nextObject];
  v9 = [v7 nextObject];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    do
    {
      v8 = v8;
      v10 = v10;
      v12 = [v8 transactionDate];
      v13 = [v10 transactionDate];
      v2 = [v12 compare:v13];

      if (!v2)
      {
        v14 = [v8 identifier];
        v15 = [v10 identifier];
        v2 = [v14 compare:v15];
      }

      if (v2 == -1)
      {
        [v5 addObject:v10];
        v18 = [v7 nextObject];
        v17 = v10;
        v10 = v18;
      }

      else
      {
        if (v2 != 1)
        {
          continue;
        }

        [v5 addObject:v8];
        v16 = [v6 nextObject];
        v17 = v8;
        v8 = v16;
      }
    }

    while (v8 && v10);
  }

  while (*(*(*(a1 + 56) + 8) + 64) == 1 && v10 != 0)
  {
    v2 = v10;
    [v5 addObject:v10];
    v10 = [v7 nextObject];
  }

  while (*(*(*(a1 + 72) + 8) + 64) == 1 && v8 != 0)
  {
    v2 = v8;
    [v5 addObject:v8];
    v8 = [v6 nextObject];
  }

  if (v8)
  {
    v104[0] = v8;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:1];
    v2 = [v6 allObjects];
    v70 = v21;
    [v21 arrayByAddingObjectsFromArray:v2];
  }

  else
  {
    [v6 allObjects];
  }
  v22 = ;
  objc_storeStrong((*(*(a1 + 56) + 8) + 72), v22);
  if (v8)
  {

    v22 = v70;
  }

  if (v10)
  {
    v103 = v10;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
    v2 = [v7 allObjects];
    [v22 arrayByAddingObjectsFromArray:v2];
  }

  else
  {
    [v7 allObjects];
  }
  v23 = ;
  objc_storeStrong((*(*(a1 + 72) + 8) + 72), v23);
  if (v10)
  {

    v23 = v22;
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v25 = v5;
  v26 = [v25 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v95;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v95 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v94 + 1) + 8 * i) identifier];
        if ([*(*(*(a1 + 88) + 8) + 40) containsObject:v30])
        {
          [v24 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v27);
  }

  if ([v24 count])
  {
    v31 = *(*(*(a1 + 96) + 8) + 40);
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_13;
    v92[3] = &unk_1E801FF50;
    v93 = v24;
    [v31 pk_removeObjectsPassingTest:v92];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v32 = v25;
  v33 = [v32 countByEnumeratingWithState:&v88 objects:v101 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v89;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v89 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(*(a1 + 88) + 8) + 40);
        v38 = [*(*(&v88 + 1) + 8 * j) identifier];
        [v37 addObject:v38];
      }

      v34 = [v32 countByEnumeratingWithState:&v88 objects:v101 count:16];
    }

    while (v34);
  }

  [*(*(*(a1 + 96) + 8) + 40) addObjectsFromArray:v32];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v39 = *(*(*(a1 + 104) + 8) + 40);
  v40 = [v39 countByEnumeratingWithState:&v84 objects:v100 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v85;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v85 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v84 + 1) + 8 * k);
        v45 = [*(*(*(a1 + 112) + 8) + 40) objectForKey:v44];

        if (!v45)
        {
          v46 = [*(*(*(a1 + 104) + 8) + 40) objectForKey:v44];
          [*(*(*(a1 + 112) + 8) + 40) setObject:v46 forKey:v44];
          v47 = [*(*(*(a1 + 120) + 8) + 40) objectForKey:v46];

          if (!v47)
          {
            v48 = [MEMORY[0x1E69B8A58] sharedInstance];
            v49 = [v48 passWithFPANIdentifier:v46];

            [*(*(*(a1 + 120) + 8) + 40) setObject:v49 forKey:v46];
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v84 objects:v100 count:16];
    }

    while (v41);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v50 = *(*(*(a1 + 128) + 8) + 40);
  v51 = [v50 countByEnumeratingWithState:&v80 objects:v99 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v81;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v81 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v80 + 1) + 8 * m);
        v56 = [*(*(*(a1 + 136) + 8) + 40) objectForKey:v55];

        if (!v56)
        {
          v57 = [*(*(*(a1 + 128) + 8) + 40) objectForKey:v55];
          [*(*(*(a1 + 136) + 8) + 40) setObject:v57 forKey:v55];
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v80 objects:v99 count:16];
    }

    while (v52);
  }

  v58 = *(a1 + 32);
  if (!v58)
  {
    v58 = *(*(*(a1 + 144) + 8) + 40);
  }

  v59 = v58;
  v60 = [[PKPagedTransactionListDataSourceData alloc] initWithWalletTotalCount:*(*(*(a1 + 152) + 8) + 40) bankConnectTotalCount:*(*(*(a1 + 160) + 8) + 40) transactions:*(*(*(a1 + 96) + 8) + 40) transactionIdentifiers:*(*(*(a1 + 88) + 8) + 40) transactionSourceIdentifiers:v59 transactionSourceIdentifierToPass:*(*(*(a1 + 168) + 8) + 40) transactionIDToFPANID:*(*(*(a1 + 112) + 8) + 40) fpanIDToPass:*(*(*(a1 + 120) + 8) + 40) transactionIDToInstitution:*(*(*(a1 + 136) + 8) + 40)];
  v61 = NewStateFromData(v60);
  v62 = [*(a1 + 40) sections];
  v63 = [v61 sections];
  v64 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:v62 andNewSections:v63 sectionIdentifierAccessor:&__block_literal_global_140 sectionItemsAccessor:&__block_literal_global_143_1 firstSectionIndex:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_16;
  block[3] = &unk_1E801FFB8;
  v65 = *(a1 + 56);
  block[4] = *(a1 + 48);
  v75 = v60;
  v66 = *(a1 + 72);
  v78 = v65;
  v79 = v66;
  v76 = v61;
  v77 = v64;
  v67 = v64;
  v68 = v61;
  v69 = v60;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 count] < *(a1 + 32))
  {
    *(a2 + 16) = 1;
  }

  if ([v5 count])
  {
    v6 = [v5 lastObject];
    v7 = [v6 transactionDate];
    v8 = *a2;
    *a2 = v7;

    v9 = [v6 identifier];
    v10 = *(a2 + 8);
    *(a2 + 8) = v9;

    v11 = [*(a2 + 24) mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v14 = v13;

    [v14 addObjectsFromArray:v5];
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = v15;

  return v15;
}

uint64_t __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_16(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  __copy_assignment_8_8_S_s0_s8_t16w1_s24(*(a1 + 32) + 48, *(*(a1 + 64) + 8) + 48);
  __copy_assignment_8_8_S_s0_s8_t16w1_s24(*(a1 + 32) + 80, *(*(a1 + 72) + 8) + 48);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (WeakRetained && (v3 = WeakRetained, v4 = objc_loadWeakRetained((*(a1 + 32) + 8)), v5 = [v4 isViewLoaded], v4, v3, v5))
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_17;
    v7[3] = &unk_1E8010A88;
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v6 performBatchUpdates:v7 completion:0];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 48));
  }
}

void __51__PKPagedTransactionListDataSource__loadWithLimit___block_invoke_17(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [*(a1 + 48) deletedSections];
  [WeakRetained deleteSections:v3];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [*(a1 + 48) insertedSections];
  [v4 insertSections:v5];

  v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [*(a1 + 48) deletedIndexPaths];
  [v6 deleteItemsAtIndexPaths:v7];

  v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = [*(a1 + 48) insertedIndexPaths];
  [v8 insertItemsAtIndexPaths:v9];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [*(a1 + 48) changedIndexPaths];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = [*(a1 + 40) sections];
        v17 = [v16 objectAtIndex:{objc_msgSend(v15, "section")}];

        v18 = [v17 items];
        v19 = [v18 objectAtIndex:{objc_msgSend(v15, "item")}];

        v20 = objc_loadWeakRetained((*(a1 + 32) + 8));
        [v20 itemChanged:v19 atIndexPath:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (id)titleForSection:(unint64_t)section
{
  sections = [(PKDashboardItemsState *)self->_itemsState sections];
  v5 = [sections objectAtIndex:section];

  identifier = [v5 identifier];
  v7 = [identifier isEqual:@"header"];

  if ((v7 & 1) != 0 || ([v5 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", @"transactions"), v8, !v9))
  {
    v11 = 0;
  }

  else
  {
    v10 = PKLocalizedPaymentString(&cfstr_PaymentTransac.isa);
    v11 = [PKDashboardHeaderTextItem itemWithHeaderText:v10];
  }

  return v11;
}

- (BOOL)isListLayoutForSection:(unint64_t)section
{
  sections = [(PKDashboardItemsState *)self->_itemsState sections];
  v5 = [sections objectAtIndex:section];

  identifier = [v5 identifier];
  v7 = [identifier isEqual:@"header"];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    identifier2 = [v5 identifier];
    v8 = [identifier2 isEqual:@"transactions"];
  }

  return v8;
}

- (unint64_t)numberOfSections
{
  sections = [(PKDashboardItemsState *)self->_itemsState sections];
  v3 = [sections count];

  return v3;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  sections = [(PKDashboardItemsState *)self->_itemsState sections];
  v5 = [sections objectAtIndex:section];

  items = [v5 items];
  v7 = [items count];

  return v7;
}

- (id)itemAtIndexPath:(id)path
{
  itemsState = self->_itemsState;
  pathCopy = path;
  sections = [(PKDashboardItemsState *)itemsState sections];
  v6 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  items = [v6 items];
  item = [pathCopy item];

  v9 = [items objectAtIndex:item];

  return v9;
}

- (unint64_t)transactionHistoryItemsCount
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sections = [(PKDashboardItemsState *)self->_itemsState sections];
  v3 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(sections);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        identifier = [v7 identifier];
        v9 = [identifier isEqual:@"transactions"];

        if (v9)
        {
          items = [v7 items];
          v10 = [items count];

          goto LABEL_11;
        }
      }

      v4 = [sections countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (PKTransactionHistoryDataSourceDelegate)customDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->customDelegate);

  return WeakRetained;
}

@end