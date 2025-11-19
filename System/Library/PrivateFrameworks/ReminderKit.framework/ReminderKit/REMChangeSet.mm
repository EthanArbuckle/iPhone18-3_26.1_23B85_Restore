@interface REMChangeSet
+ (id)errorChangeSetWithError:(id)a3;
- (BOOL)_filterAndFlattenAndConsolidateChanges;
- (BOOL)enumerateChanges:(int64_t)a3 forModelsOfClass:(Class)a4 withBlock:(id)a5;
- (BOOL)isEqual:(id)a3;
- (REMChangeSet)initWithChangeTransactions:(id)a3;
- (REMChangeSet)initWithCoder:(id)a3;
- (REMChangeSet)initWithError:(id)a3;
- (id)description;
- (id)lastChangeTokenForAccountID:(id)a3;
- (void)_filterAndFlattenAndConsolidateChanges;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMChangeSet

+ (id)errorChangeSetWithError:(id)a3
{
  v3 = a3;
  v4 = [[REMChangeSet alloc] initWithError:v3];

  return v4;
}

- (REMChangeSet)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = REMChangeSet;
  v6 = [(REMChangeSet *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    transactions = v7->_transactions;
    v7->_transactions = MEMORY[0x1E695E0F0];

    v7->_isTruncated = [v5 code] == 4;
  }

  return v7;
}

- (REMChangeSet)initWithChangeTransactions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMChangeSet;
  v6 = [(REMChangeSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactions, a3);
  }

  return v7;
}

- (id)description
{
  v12 = MEMORY[0x1E696AEC0];
  v11 = [(NSArray *)self->_transactions count];
  v13 = [(NSArray *)self->_transactions firstObject];
  v3 = [v13 changes];
  v4 = [v3 firstObject];
  v10 = [v4 changeID];
  v5 = [(NSArray *)self->_transactions lastObject];
  v6 = [v5 changes];
  v7 = [v6 lastObject];
  v8 = [v12 stringWithFormat:@"REMChangeSet<%p>: {raw-txn-count=%lu, chg-ids-from=%lld, chg-ids-to=%lld} {filtered-txn-count=%lu, cnsld-inserts=%lu, cnsld-updates=%lu, #cnsld-deletes=%lu}; {error=%@}", self, v11, v10, objc_msgSend(v7, "changeID"), -[NSArray count](self->_filteredTransactions, "count"), -[NSArray count](self->_inserts, "count"), -[NSArray count](self->_updates, "count"), -[NSArray count](self->_deletes, "count"), self->_error];;

  return v8;
}

- (BOOL)_filterAndFlattenAndConsolidateChanges
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v84 = [MEMORY[0x1E695DFA8] set];
  v83 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v82 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DF70] array];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v6 = [(REMChangeSet *)self transactions];
  v7 = [v6 countByEnumeratingWithState:&v106 objects:v123 count:16];
  v85 = self;
  v86 = v3;
  v89 = v4;
  v81 = v5;
  if (!v7)
  {

    [(REMChangeSet *)self setFilteredTransactions:v5];
    goto LABEL_57;
  }

  v9 = v7;
  v79 = 0;
  v10 = *v107;
  *&v8 = 138412290;
  v77 = v8;
  obj = v6;
  v80 = *v107;
  do
  {
    v11 = 0;
    v90 = v9;
    do
    {
      if (*v107 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v106 + 1) + 8 * v11);
      context = objc_autoreleasePoolPush();
      v13 = [v12 accountID];

      if (!v13)
      {
        v35 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:6];
        [(REMChangeSet *)v85 setError:v35];

        v36 = +[REMLog changeTracking];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          [(REMChangeSet *)v12 _filterAndFlattenAndConsolidateChanges];
        }

        objc_autoreleasePoolPop(context);
        [(REMChangeSet *)v85 setFilteredTransactions:v5];
        v3 = v86;
        goto LABEL_53;
      }

      v14 = [(REMChangeSet *)v85 filterByTransactionAuthorStrings];

      if (v14)
      {
        v15 = [v12 author];
        if ([(REMChangeSet *)v85 filterByTransactionAuthorsIsExclusion])
        {
          if (v15)
          {
            v16 = [(REMChangeSet *)v85 filterByTransactionAuthorStrings];
            v17 = [v16 containsObject:v15];

            if (v17)
            {
              goto LABEL_43;
            }
          }
        }

        else if (!v15 || (-[REMChangeSet filterByTransactionAuthorStrings](v85, "filterByTransactionAuthorStrings"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 containsObject:v15], v18, !v19))
        {
LABEL_43:
          v34 = context;
          goto LABEL_46;
        }
      }

      [v5 addObject:{v12, v77}];
      v20 = [v12 changes];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v15 = v20;
      v21 = [v15 countByEnumeratingWithState:&v102 objects:v122 count:16];
      if (!v21)
      {
        v5 = v81;
        goto LABEL_45;
      }

      v22 = v21;
      v23 = *v103;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v103 != v23)
          {
            objc_enumerationMutation(v15);
          }

          v25 = *(*(&v102 + 1) + 8 * i);
          v26 = [(REMChangeSet *)v25 transaction];

          if (!v26)
          {
            v33 = os_log_create("com.apple.reminderkit", "default");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = v77;
              v119 = v25;
              _os_log_debug_impl(&dword_19A0DB000, v33, OS_LOG_TYPE_DEBUG, "Trying to populate flattened changes with a change that lost back pointer to its transaction %@.", buf, 0xCu);
            }

            v79 = 1;
            goto LABEL_42;
          }

          v27 = [(REMChangeSet *)v25 changedObjectID];

          if (v27)
          {
            v28 = [(REMChangeSet *)v25 changedObjectID];
            if ([(REMChangeSet *)v25 changeType]== 1)
            {
              v29 = [v86 objectForKeyedSubscript:v28];
              v30 = v29;
              if (v29)
              {
                [v29 addObject:v25];
              }

              else
              {
                v32 = [MEMORY[0x1E695DF70] arrayWithObject:v25];
                [v86 setObject:v32 forKey:v28];
              }

LABEL_35:

              goto LABEL_36;
            }

            if ([(REMChangeSet *)v25 changeType])
            {
              if ([(REMChangeSet *)v25 changeType]!= 2)
              {
                v30 = +[REMLog changeTracking];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  [(REMChangeSet *)v116 _filterAndFlattenAndConsolidateChanges:v25];
                }

                goto LABEL_35;
              }

              [v83 addObject:v28];
              v31 = v82;
            }

            else
            {
              [v84 addObject:v28];
              v31 = v89;
            }

            [v31 setObject:v25 forKey:v28];
            goto LABEL_36;
          }

          v28 = +[REMLog changeTracking];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v119 = v25;
            v120 = 2112;
            v121 = v12;
            _os_log_error_impl(&dword_19A0DB000, v28, OS_LOG_TYPE_ERROR, "chg.changedObjectID is nil! {chg: %@, txn: %@}", buf, 0x16u);
          }

LABEL_36:
        }

        v22 = [v15 countByEnumeratingWithState:&v102 objects:v122 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_42:
      v10 = v80;
      v5 = v81;
      v6 = obj;
      v9 = v90;
LABEL_45:
      v34 = context;

LABEL_46:
      objc_autoreleasePoolPop(v34);
      ++v11;
      v4 = v89;
    }

    while (v11 != v9);
    v9 = [v6 countByEnumeratingWithState:&v106 objects:v123 count:16];
  }

  while (v9);

  [(REMChangeSet *)v85 setFilteredTransactions:v5];
  v3 = v86;
  if ((v79 & 1) == 0)
  {
LABEL_57:
    v39 = [MEMORY[0x1E695DF90] dictionary];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v40 = [v3 allValues];
    v41 = [v40 countByEnumeratingWithState:&v98 objects:v115 count:16];
    contexta = v39;
    if (!v41)
    {
      goto LABEL_72;
    }

    v42 = v41;
    v43 = *v99;
    while (1)
    {
      v44 = 0;
      do
      {
        if (*v99 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v98 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        if ([v45 count] < 2)
        {
          v48 = [v45 objectAtIndexedSubscript:0];
          v49 = [v48 changedObjectID];
          if (v49)
          {
            goto LABEL_66;
          }

          [REMChangeSet _filterAndFlattenAndConsolidateChanges];
        }

        else
        {
          [v45 sortUsingComparator:&__block_literal_global_14];
          v47 = [v45 objectAtIndexedSubscript:0];
          v48 = [v47 copyForCoalescing];

          v49 = [v48 changedObjectID];
          if (v49)
          {
            v50 = [v45 subarrayWithRange:{1, objc_msgSend(v45, "count") - 1}];
            [v48 setCoalescedChanges:v50];

            [v48 setIsCoalesced:1];
            v39 = contexta;
LABEL_66:
            [v39 setObject:v48 forKey:v49];
            goto LABEL_67;
          }

          [REMChangeSet _filterAndFlattenAndConsolidateChanges];
          v39 = contexta;
        }

LABEL_67:

        objc_autoreleasePoolPop(v46);
        ++v44;
      }

      while (v42 != v44);
      v51 = [v40 countByEnumeratingWithState:&v98 objects:v115 count:16];
      v42 = v51;
      if (!v51)
      {
LABEL_72:

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        obja = v84;
        v52 = [obja countByEnumeratingWithState:&v94 objects:v114 count:16];
        v53 = v89;
        if (v52)
        {
          v54 = v52;
          v91 = *v95;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v95 != v91)
              {
                objc_enumerationMutation(obja);
              }

              v56 = *(*(&v94 + 1) + 8 * j);
              v57 = objc_autoreleasePoolPush();
              v58 = [v39 objectForKeyedSubscript:v56];
              if (v58)
              {
                v59 = [v53 objectForKeyedSubscript:v56];
                if (!v59)
                {
                  [REMChangeSet _filterAndFlattenAndConsolidateChanges];
                }

                v60 = [v59 copyForCoalescing];
                [v60 setIsCoalesced:1];
                v61 = [v58 coalescedChanges];
                if (v61)
                {
                  v113 = v58;
                  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
                  v63 = [v62 arrayByAddingObjectsFromArray:v61];
                  [v60 setCoalescedChanges:v63];

                  v53 = v89;
                }

                else
                {
                  v112 = v58;
                  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
                  [v60 setCoalescedChanges:v62];
                }

                [v53 setObject:v60 forKey:v56];
                v39 = contexta;
                [contexta removeObjectForKey:v56];
              }

              objc_autoreleasePoolPop(v57);
            }

            v54 = [obja countByEnumeratingWithState:&v94 objects:v114 count:16];
          }

          while (v54);
        }

        v64 = [v83 allObjects];
        [v39 removeObjectsForKeys:v64];

        v65 = [v39 allValues];
        [v65 sortedArrayUsingComparator:&__block_literal_global_14];
        v67 = v66 = v53;
        [(REMChangeSet *)v85 setUpdates:v67];

        v68 = [v83 allObjects];
        [v66 removeObjectsForKeys:v68];

        v69 = [obja allObjects];
        [v82 removeObjectsForKeys:v69];

        v70 = [v66 allValues];
        v71 = [v70 sortedArrayUsingComparator:&__block_literal_global_14];
        [(REMChangeSet *)v85 setInserts:v71];

        v72 = [v82 allValues];
        v73 = [v72 sortedArrayUsingComparator:&__block_literal_global_14];
        [(REMChangeSet *)v85 setDeletes:v73];

        v74 = +[REMLog changeTracking];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *v110 = 138412290;
          v111 = v85;
          _os_log_impl(&dword_19A0DB000, v74, OS_LOG_TYPE_INFO, "REMChangeSet _filterAndFlattenAndConsolidateChanges was successful. ChangeSet: %@", v110, 0xCu);
        }

        v38 = 1;
        v3 = v86;
        v4 = v89;
        v5 = v81;
        v37 = contexta;
        goto LABEL_89;
      }
    }
  }

LABEL_53:
  v37 = +[REMLog changeTracking];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = v78;
    v119 = v85;
    _os_log_impl(&dword_19A0DB000, v37, OS_LOG_TYPE_INFO, "REMChangeSet _filterAndFlattenAndConsolidateChanges failed. ChangeSet: %@", buf, 0xCu);
  }

  v38 = 0;
LABEL_89:

  v75 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t __54__REMChangeSet__filterAndFlattenAndConsolidateChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 transaction];
  v7 = [v6 timestamp];

  v8 = [v5 transaction];
  v9 = [v8 timestamp];

  v10 = [v7 compare:v9];
  if (!v10)
  {
    v11 = [v4 changeID];
    v12 = [v5 changeID];
    if (v11 < v12)
    {
      v10 = -1;
    }

    else
    {
      v10 = v11 > v12;
    }
  }

  return v10;
}

- (BOOL)enumerateChanges:(int64_t)a3 forModelsOfClass:(Class)a4 withBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (v8)
  {
    if (![(REMChangeSet *)self isTruncated])
    {
      v9 = [(REMChangeSet *)self error];

      if (!v9)
      {
        if (!a4)
        {
          v14 = &__block_literal_global_17;
LABEL_11:
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_2;
          v20[3] = &unk_1E7508AC0;
          v21 = v14;
          v22 = v8;
          v15 = v14;
          v16 = MEMORY[0x19A8FD720](v20);
          if (v6)
          {
            v18 = [(REMChangeSet *)self inserts];
            (v16)[2](v16, v18, 0);

            if ((v6 & 2) == 0)
            {
LABEL_13:
              if ((v6 & 4) == 0)
              {
LABEL_15:

                v10 = 1;
LABEL_22:

                goto LABEL_5;
              }

LABEL_14:
              v17 = [(REMChangeSet *)self deletes];
              (v16)[2](v16, v17, 2);

              goto LABEL_15;
            }
          }

          else if ((v6 & 2) == 0)
          {
            goto LABEL_13;
          }

          v19 = [(REMChangeSet *)self updates];
          (v16)[2](v16, v19, 1);

          if ((v6 & 4) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [(objc_class *)a4 performSelector:sel_cdEntityName];
          if (v12)
          {
LABEL_9:
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke;
            v23[3] = &unk_1E7508A78;
            v24 = v12;
            v13 = v12;
            v14 = MEMORY[0x19A8FD720](v23);

            goto LABEL_11;
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          if (([(objc_class *)a4 methodForSelector:sel_conformsToREMChangeTrackingIdentifiable])(a4, sel_conformsToREMChangeTrackingIdentifiable))
          {
            v12 = NSStringFromClass(a4);
            if (v12)
            {
              goto LABEL_9;
            }
          }
        }

        v15 = +[REMLog changeTracking];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [REMChangeSet enumerateChanges:a4 forModelsOfClass:v15 withBlock:?];
        }

        v10 = 0;
        goto LABEL_22;
      }
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

uint64_t __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changedObjectID];
  v5 = [v4 entityName];

  if (v5)
  {
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = +[REMLog changeTracking];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_cold_1(v3, v7);
    }

    v6 = 0;
  }

  return v6;
}

void __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        if ((*(*(a1 + 32) + 16))(*(a1 + 32)))
        {
          (*(*(a1 + 40) + 16))(*(a1 + 40));
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)lastChangeTokenForAccountID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(REMChangeSet *)self isTruncated]|| ([(REMChangeSet *)self error], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = +[REMLog changeTracking];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(REMChangeSet *)v4 lastChangeTokenForAccountID:v6];
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(REMChangeSet *)self transactions];
    v6 = [v10 reverseObjectEnumerator];

    v11 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 accountID];
          if ([v4 isEqual:v16])
          {
            v7 = [v15 token];

            goto LABEL_6;
          }
        }

        v12 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v6 = +[REMLog changeTracking];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(REMChangeSet *)self transactions];
      *buf = 138543618;
      v23 = v4;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "REMChangeset does not contain token for accountID (this is not an error). Returning nil {accountID: %{public}@, transactions: %@}", buf, 0x16u);
    }
  }

  v7 = 0;
LABEL_6:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMChangeSet *)self error];
  [v4 encodeObject:v5 forKey:@"error"];

  v6 = [(REMChangeSet *)self transactions];
  [v4 encodeObject:v6 forKey:@"transactions"];
}

- (REMChangeSet)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"transactions"];

  if (v5)
  {
    if ([v9 count])
    {
      [(REMChangeSet *)v5 initWithCoder:v9];
    }

    v10 = [(REMChangeSet *)self initWithError:v5];
  }

  else
  {
    v11 = +[REMLog changeTracking];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = self;
      _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_INFO, "REMChangeSet initWithCoder: {self=%p}", buf, 0xCu);
    }

    v10 = [(REMChangeSet *)self initWithChangeTransactions:v9];
  }

  v12 = v10;

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMChangeSet *)self transactions];
      v8 = [(REMChangeSet *)v6 transactions];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(REMChangeSet *)self transactions];
        v10 = [(REMChangeSet *)v6 transactions];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (void)_filterAndFlattenAndConsolidateChanges
{
  OUTLINED_FUNCTION_1_7();
  v3 = +[REMLog changeTracking];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v0 = 138543362;
    *v1 = v2;
    OUTLINED_FUNCTION_0_9(&dword_19A0DB000, v4, v5, "rem_log_fault_if (!ins) -- Nil change for insertedID {insertedID: %{public}@}");
  }
}

- (void)enumerateChanges:(uint64_t)a1 forModelsOfClass:(NSObject *)a2 withBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Requested change tracking for unsupported class {klass: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __60__REMChangeSet_enumerateChanges_forModelsOfClass_withBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Missing changeEntityName {change: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)lastChangeTokenForAccountID:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a2 error];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "isTruncated")}];
  v8 = [a2 transactions];
  v10 = 138544130;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  _os_log_error_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_ERROR, "REMChangeSet is in error or truncated. Returning nil token for account {accountID: %{public}@, error: %@, isTruncated: %{public}@, transactions: %@}", &v10, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 2112;
    v9 = a2;
    _os_log_fault_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_FAULT, "rem_log_fault_if (transactions.count != 0) -- Attempt to decode an error change set with non-empty transaction list. {error: %@, transaction: %@}", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end