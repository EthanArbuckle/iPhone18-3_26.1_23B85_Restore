@interface PLDirectoryJournal
- (BOOL)enumeratePayloadsUsingBlock:(id)a3 error:(id *)a4;
- (BOOL)persistManagedObject:(id)a3 error:(id *)a4;
- (BOOL)removeAllPersistenceFilesWithError:(id *)a3;
- (BOOL)removePersistenceForManagedObject:(id)a3 error:(id *)a4;
- (BOOL)shouldPersistManagedObject:(id)a3;
- (PLDirectoryJournal)initWithPathManager:(id)a3 payloadClass:(Class)a4;
- (id)baseURLCreateIfNeeded:(BOOL)a3;
@end

@implementation PLDirectoryJournal

- (BOOL)enumeratePayloadsUsingBlock:(id)a3 error:(id *)a4
{
  v26 = a4;
  v60[2] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = self;
  v30 = [(PLDirectoryJournal *)self baseURLCreateIfNeeded:0];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 1;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3284;
  v53 = __Block_byref_object_dispose__3285;
  v54 = 0;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *MEMORY[0x1E695DBB8];
  v60[0] = *MEMORY[0x1E695DC30];
  v60[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __56__PLDirectoryJournal_enumeratePayloadsUsingBlock_error___block_invoke;
  v48[3] = &unk_1E75655C8;
  v48[4] = &v49;
  v48[5] = &v55;
  v8 = [v5 enumeratorAtURL:v30 includingPropertiesForKeys:v7 options:5 errorHandler:v48];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v9)
  {
    v10 = *v45;
    v27 = v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v44 + 1) + 8 * i) lastPathComponent];
        v13 = [v12 length];
        if (v13 < [MEMORY[0x1E69BF320] UUIDStringLength])
        {
          v14 = 0;
LABEL_14:

          continue;
        }

        v14 = [v12 substringWithRange:{0, objc_msgSend(MEMORY[0x1E69BF320], "UUIDStringLength")}];
        if (!v14 || (PLIsValidUUIDString() & 1) == 0)
        {
          goto LABEL_14;
        }

        v15 = [[PLJournal alloc] initWithBaseURL:v30 name:v14 payloadClass:v29->_payloadClass hasMetadata:0];
        v16 = [(PLJournal *)v15 snapshotJournal];
        v17 = [v16 url];
        v18 = [v17 lastPathComponent];
        v19 = [v12 isEqualToString:v18];

        if ((v19 & 1) == 0)
        {

          goto LABEL_14;
        }

        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2020000000;
        v43 = 0;
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v34[0] = __56__PLDirectoryJournal_enumeratePayloadsUsingBlock_error___block_invoke_2;
        v34[1] = &unk_1E75655F0;
        v36 = v42;
        v35 = v28;
        v37 = &v38;
        v20 = (v50 + 5);
        v32 = v50[5];
        v21 = [(PLJournal *)v15 enumeratePayloadsUsingBlock:v33 error:&v32];
        objc_storeStrong(v20, v32);
        *(v56 + 24) = v21;
        LODWORD(v20) = *(v39 + 24);

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(v42, 8);

        if ((v21 & ~v20 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v59 count:16];
    }

    while (v9);
  }

LABEL_17:

  v22 = *(v56 + 24);
  v23 = v50[5];
  if (v26 && (v22 & 1) == 0)
  {
    v23 = v23;
    *v26 = v23;
  }

  v24 = *(v56 + 24);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  return v24 & 1;
}

uint64_t __56__PLDirectoryJournal_enumeratePayloadsUsingBlock_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PLIsErrorFileNotFound();
  if ((v6 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v6;
}

uint64_t __56__PLDirectoryJournal_enumeratePayloadsUsingBlock_error___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(*(*(result + 40) + 8) + 24))
  {
    *a3 = 1;
  }

  else
  {
    v3 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v3 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)removeAllPersistenceFilesWithError:(id *)a3
{
  v4 = [(PLDirectoryJournal *)self baseURLCreateIfNeeded:0];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v13];
  v7 = v13;

  v8 = PLIsErrorFileNotFound() | v6;
  v9 = v7;
  v10 = v9;
  if ((v8 & 1) == 0 && a3)
  {
    v11 = v9;
    *a3 = v10;
  }

  return v8 & 1;
}

- (BOOL)removePersistenceForManagedObject:(id)a3 error:(id *)a4
{
  v6 = [(objc_class *)self->_payloadClass payloadAdapterForManagedObject:a3];
  v7 = [v6 payloadID];

  if (v7)
  {
    v8 = [PLJournal alloc];
    v9 = [(PLDirectoryJournal *)self baseURLCreateIfNeeded:0];
    v10 = [v6 payloadID];
    v11 = [v10 payloadIDString];
    v12 = [(PLJournal *)v8 initWithBaseURL:v9 name:v11 payloadClass:self->_payloadClass hasMetadata:0];

    v13 = [(PLJournal *)v12 removeJournalFilesWithError:a4];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)persistManagedObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(objc_class *)self->_payloadClass payloadAdapterForManagedObject:v6];
  v8 = [v7 payloadID];

  if (v8)
  {
    if ([v7 isValidForJournalPersistence])
    {
      v9 = [PLJournal alloc];
      v10 = [(PLDirectoryJournal *)self baseURLCreateIfNeeded:1];
      v11 = [v7 payloadID];
      v12 = [v11 payloadIDString];
      v13 = [(PLJournal *)v9 initWithBaseURL:v10 name:v12 payloadClass:self->_payloadClass hasMetadata:0];

      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v20 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__PLDirectoryJournal_persistManagedObject_error___block_invoke;
      v16[3] = &unk_1E75655A0;
      v18 = v19;
      v17 = v7;
      v14 = [(PLJournal *)v13 createSnapshotUsingNextPayloadBlock:v16 createOnlyIfNecessary:0 error:a4];

      _Block_object_dispose(v19, 8);
    }

    else
    {
      v14 = [(PLDirectoryJournal *)self removePersistenceForManagedObject:v6 error:a4];
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

id __49__PLDirectoryJournal_persistManagedObject_error___block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24))
  {
    v4 = 0;
  }

  else
  {
    *(v3 + 24) = 1;
    v4 = [*(a1 + 32) payloadForChangedKeys:{0, v1}];
  }

  return v4;
}

- (BOOL)shouldPersistManagedObject:(id)a3
{
  v4 = a3;
  if ([v4 isDeleted])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    if ([v4 isInserted])
    {
      goto LABEL_8;
    }

    v6 = [v4 changedValues];
    if ([v6 count])
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = [v4 changedValues];
      v9 = [v8 allKeys];
      v10 = [v7 setWithArray:v9];
    }

    else
    {
      v10 = 0;
    }

    payloadClass = self->_payloadClass;
    v12 = [(objc_class *)payloadClass entityName];
    v5 = [(objc_class *)payloadClass shouldPersistForChangedKeys:v10 entityName:v12];

    if (v5)
    {
LABEL_8:
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)baseURLCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  pathManager = self->_pathManager;
  v5 = [(objc_class *)self->_payloadClass payloadClassID];
  v6 = [(PLPhotoLibraryPathManager *)pathManager photoDirectoryWithType:8 leafType:1 additionalPathComponents:v5 createIfNeeded:v3 error:0];

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];

  return v7;
}

- (PLDirectoryJournal)initWithPathManager:(id)a3 payloadClass:(Class)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PLDirectoryJournal;
  v8 = [(PLDirectoryJournal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pathManager, a3);
    v9->_payloadClass = a4;
  }

  return v9;
}

@end