@interface PLPairing
- (BOOL)processPairingForEntireLibraryInContext:(id)a3 error:(id *)a4;
- (BOOL)processPairingForGroupIDs:(id)a3 inContext:(id)a4 error:(id *)a5;
- (PLPairing)init;
@end

@implementation PLPairing

- (BOOL)processPairingForGroupIDs:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if ((!MEMORY[0x19EAEE520]() || (PLIsAssetsd() & 1) == 0) && (PLIsReallyAssetsd() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = NSStringFromSelector(a2);
    [v15 handleFailureInMethod:a2 object:self file:@"PLPairing.m" lineNumber:99 description:{@"%@: Only do pairing in server", v16}];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  if (v9 && ![v9 count])
  {
    v13 = 1;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__60370;
    v26 = __Block_byref_object_dispose__60371;
    v27 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__PLPairing_processPairingForGroupIDs_inContext_error___block_invoke;
    v17[3] = &unk_1E7578898;
    v18 = v9;
    v20 = &v28;
    v19 = v10;
    v21 = &v22;
    [v19 performBlockAndWait:v17];
    v11 = *(v29 + 24);
    v12 = v23[5];
    if (a5 && (v11 & 1) == 0)
    {
      v12 = v12;
      *a5 = v12;
    }

    os_unfair_lock_unlock(&self->_lock);
    v13 = *(v29 + 24);

    _Block_object_dispose(&v22, 8);
  }

  _Block_object_dispose(&v28, 8);

  return v13 & 1;
}

void __55__PLPairing_processPairingForGroupIDs_inContext_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F0FBD1B0];
  if ([v2 count])
  {
    v3 = objc_alloc_init(PLLivePhotoPairingProcessor);
    v4 = [(PLLivePhotoPairingProcessor *)v3 fetchRequestForSortedGroupIDs:v2];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = [(PLPairingProcessor *)v3 processPairingForFetchRequest:v4 inContext:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }
}

- (BOOL)processPairingForEntireLibraryInContext:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ((!MEMORY[0x19EAEE520]() || (PLIsAssetsd() & 1) == 0) && (PLIsReallyAssetsd() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:@"PLPairing.m" lineNumber:80 description:{@"%@: Only do pairing in server", v12}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  os_unfair_lock_lock(&self->_lock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PLPairing_processPairingForEntireLibraryInContext_error___block_invoke;
  v13[3] = &unk_1E7576208;
  v15 = &v17;
  v8 = v7;
  v14 = v8;
  v16 = a4;
  [v8 performBlockAndWait:v13];
  os_unfair_lock_unlock(&self->_lock);
  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __59__PLPairing_processPairingForEntireLibraryInContext_error___block_invoke(void *a1)
{
  v2 = objc_alloc_init(PLLivePhotoPairingProcessor);
  v3 = [(PLLivePhotoPairingProcessor *)v2 fetchRequestForLibrary];
  v4 = a1[4];
  v9 = 0;
  v5 = [(PLPairingProcessor *)v2 processPairingForFetchRequest:v3 inContext:v4 error:&v9];
  v6 = v9;
  *(*(a1[5] + 8) + 24) = v5;

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v7 = a1[6];
    if (v7)
    {
      v8 = v6;
      *v7 = v6;
    }
  }
}

- (PLPairing)init
{
  v3.receiver = self;
  v3.super_class = PLPairing;
  result = [(PLPairing *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end