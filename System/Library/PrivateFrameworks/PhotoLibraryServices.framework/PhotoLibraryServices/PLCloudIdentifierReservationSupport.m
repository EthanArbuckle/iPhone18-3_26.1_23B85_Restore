@interface PLCloudIdentifierReservationSupport
- (BOOL)cancelReservedCloudIdentifiers:(id)a3 clientBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)cancelReservedCloudIdentifiersWithEntityName:(id)a3 clientBundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)takeReservedCloudIdentifierWithEntityName:(id)a3 uuid:(id)a4 clientBundleIdentifier:(id)a5 error:(id *)a6;
- (PLCloudIdentifierReservationSupport)init;
- (id)_lock_reservedIdentifiersForEntityName:(id)a3 clientBundleIdentifier:(id)a4;
- (id)reserveCloudIdentifierUUIDsWithEntityName:(id)a3 count:(unint64_t)a4 clientBundleIdentifier:(id)a5 error:(id *)a6;
- (id)reservedCloudIdentifierUUIDsWithEntityName:(id)a3 clientBundleIdentifier:(id)a4 error:(id *)a5;
@end

@implementation PLCloudIdentifierReservationSupport

- (BOOL)cancelReservedCloudIdentifiers:(id)a3 clientBundleIdentifier:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  if (!v8)
  {
    v12 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"Missing bundle identifier";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E69BFF48] code:46201 userInfo:v13];

    *(v20 + 24) = 0;
    v10 = v14;
    if (!a5)
    {
LABEL_7:

      v11 = *(v20 + 24);
      goto LABEL_8;
    }

LABEL_6:
    v15 = v10;
    *a5 = v10;
    goto LABEL_7;
  }

  v17 = v8;
  v18 = v7;
  PLRunWithUnfairLock();

  v10 = 0;
  v11 = *(v20 + 24);
  if ((v11 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:

  _Block_object_dispose(&v19, 8);
  return v11 & 1;
}

void __99__PLCloudIdentifierReservationSupport_cancelReservedCloudIdentifiers_clientBundleIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __99__PLCloudIdentifierReservationSupport_cancelReservedCloudIdentifiers_clientBundleIdentifier_error___block_invoke_2;
  v3[3] = &unk_1E7568408;
  v4 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (BOOL)cancelReservedCloudIdentifiersWithEntityName:(id)a3 clientBundleIdentifier:(id)a4 error:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if (!v7 || !v8)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    if (v8)
    {
      v26 = *MEMORY[0x1E696A278];
      v27[0] = @"Unsupported object type";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    }

    else
    {
      v24 = *MEMORY[0x1E696A278];
      v25 = @"Missing bundle identifier";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    }
    v14 = ;
    v15 = [v12 errorWithDomain:v13 code:46201 userInfo:v14];

    *(v21 + 24) = 0;
    v10 = v15;
    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = v10;
    *a5 = v10;
LABEL_11:

    v11 = *(v21 + 24);
    goto LABEL_12;
  }

  v18 = v7;
  v19 = v9;
  PLRunWithUnfairLock();

  v10 = 0;
  v11 = *(v21 + 24);
  if ((v11 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:

  _Block_object_dispose(&v20, 8);
  return v11 & 1;
}

void __113__PLCloudIdentifierReservationSupport_cancelReservedCloudIdentifiersWithEntityName_clientBundleIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lock_reservedIdentifiersForEntityName:*(a1 + 40) clientBundleIdentifier:*(a1 + 48)];
  [v2 removeAllObjects];
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (BOOL)takeReservedCloudIdentifierWithEntityName:(id)a3 uuid:(id)a4 clientBundleIdentifier:(id)a5 error:(id *)a6
{
  v38[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__17542;
  v29 = __Block_byref_object_dispose__17543;
  v30 = 0;
  if (v9 && v11)
  {
    v22 = v9;
    v23 = v12;
    v24 = v10;
    PLRunWithUnfairLock();
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    if (v11)
    {
      v37 = *MEMORY[0x1E696A278];
      v38[0] = @"Unsupported object type";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    }

    else
    {
      v35 = *MEMORY[0x1E696A278];
      v36 = @"Missing bundle identifier";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    }
    v15 = ;
    v16 = [v13 errorWithDomain:v14 code:46201 userInfo:v15];
    v17 = v26[5];
    v26[5] = v16;
  }

  v18 = *(v32 + 24);
  v19 = v26[5];
  if (a6 && (v18 & 1) == 0)
  {
    v19 = v19;
    *a6 = v19;
  }

  v20 = *(v32 + 24);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v20 & 1;
}

void __115__PLCloudIdentifierReservationSupport_takeReservedCloudIdentifierWithEntityName_uuid_clientBundleIdentifier_error___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _lock_reservedIdentifiersForEntityName:*(a1 + 40) clientBundleIdentifier:*(a1 + 48)];
  v3 = [v2 indexOfObject:*(a1 + 56)];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E69BFF48];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"No matching reserved cloud identifier found";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v4 errorWithDomain:v5 code:46111 userInfo:v6];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = 0;
  }

  else
  {
    [v2 removeObjectAtIndex:v3];
    v10 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v10;
}

- (id)reservedCloudIdentifierUUIDsWithEntityName:(id)a3 clientBundleIdentifier:(id)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__17542;
  v26 = __Block_byref_object_dispose__17543;
  v27 = 0;
  if (v7 && v8)
  {
    v20 = v7;
    v21 = v9;
    PLRunWithUnfairLock();

    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    if (v8)
    {
      v30 = *MEMORY[0x1E696A278];
      v31[0] = @"Unsupported object type";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    }

    else
    {
      v28 = *MEMORY[0x1E696A278];
      v29 = @"Missing bundle identifier";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }
    v13 = ;
    v10 = [v11 errorWithDomain:v12 code:46201 userInfo:v13];
  }

  v14 = v23[5];
  v15 = v10;
  v16 = v15;
  if (!v14 && a5)
  {
    v17 = v15;
    *a5 = v16;
  }

  v18 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v18;
}

void __111__PLCloudIdentifierReservationSupport_reservedCloudIdentifierUUIDsWithEntityName_clientBundleIdentifier_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _lock_reservedIdentifiersForEntityName:*(a1 + 40) clientBundleIdentifier:*(a1 + 48)];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)reserveCloudIdentifierUUIDsWithEntityName:(id)a3 count:(unint64_t)a4 clientBundleIdentifier:(id)a5 error:(id *)a6
{
  v42[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__17542;
  v37 = __Block_byref_object_dispose__17543;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__17542;
  v31 = __Block_byref_object_dispose__17543;
  v32 = 0;
  if (v9 && v10)
  {
    v25 = v9;
    v26 = v11;
    PLRunWithUnfairLock();
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    if (v10)
    {
      v41 = *MEMORY[0x1E696A278];
      v42[0] = @"Unsupported object type";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    }

    else
    {
      v39 = *MEMORY[0x1E696A278];
      v40 = @"Missing bundle identifier";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    }
    v14 = ;
    v15 = [v12 errorWithDomain:v13 code:46201 userInfo:v14];
    v16 = v28[5];
    v28[5] = v15;
  }

  if ([v34[5] count] != a4)
  {
    v17 = v34[5];
    v34[5] = 0;
  }

  v18 = v28[5];
  if (v34[5])
  {
    v19 = v18;
    goto LABEL_17;
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:0];
    v21 = v28[5];
    v28[5] = v20;

    v22 = v34[5];
    v19 = v28[5];
    if (v22)
    {
      goto LABEL_17;
    }
  }

  if (a6)
  {
    v19 = v19;
    *a6 = v19;
  }

LABEL_17:

  v23 = v34[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v23;
}

void __116__PLCloudIdentifierReservationSupport_reserveCloudIdentifierUUIDsWithEntityName_count_clientBundleIdentifier_error___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) _lock_reservedIdentifiersForEntityName:*(a1 + 40) clientBundleIdentifier:*(a1 + 48)];
  if ((*(a1 + 72) + [v10 count]) > 0xC350)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46202 userInfo:0];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (*(a1 + 72))
    {
      v5 = 0;
      do
      {
        v6 = [MEMORY[0x1E696AFB0] UUID];
        [v10 addObject:v6];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v6];

        ++v5;
      }

      while (*(a1 + 72) > v5);
    }
  }
}

- (id)_lock_reservedIdentifiersForEntityName:(id)a3 clientBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_reservedEntityIdentifiersByBundle objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_lock_reservedEntityIdentifiersByBundle setObject:v8 forKeyedSubscript:v7];
  }

  v9 = [v8 objectForKeyedSubscript:v6];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v8 setObject:v9 forKeyedSubscript:v6];
  }

  return v9;
}

- (PLCloudIdentifierReservationSupport)init
{
  v6.receiver = self;
  v6.super_class = PLCloudIdentifierReservationSupport;
  v2 = [(PLCloudIdentifierReservationSupport *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_reservedEntityIdentifiersByBundle = v2->_lock_reservedEntityIdentifiersByBundle;
    v2->_lock_reservedEntityIdentifiersByBundle = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

@end