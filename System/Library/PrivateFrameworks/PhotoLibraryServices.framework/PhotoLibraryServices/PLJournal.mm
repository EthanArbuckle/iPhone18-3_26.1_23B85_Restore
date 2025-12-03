@interface PLJournal
+ (BOOL)_finishFullSnapshotForBaseURL:(id)l snapshotSucceeded:(BOOL)succeeded snapshotMode:(unsigned __int8)mode journals:(id)journals error:(id *)error;
+ (BOOL)_performSnapshotsForBaseURL:(id)l snapshotMode:(unsigned __int8)mode payloadClasses:(id)classes snapshotJournalBlock:(id)block createOnlyIfNecessary:(BOOL)necessary error:(id *)error;
+ (BOOL)createSnapshotFinishMarkerForBaseURL:(id)l error:(id *)error;
+ (BOOL)recoverJournalsIfNecessaryForBaseURL:(id)l payloadClasses:(id)classes error:(id *)error;
+ (BOOL)removeSnapshotFinishMarkerForBaseURL:(id)l error:(id *)error;
+ (BOOL)snapshotFinishMarkerExistsForBaseURL:(id)l;
+ (id)journalURLForBaseURL:(id)l name:(id)name journalType:(id)type;
+ (id)metadataURLForBaseURL:(id)l payloadClassId:(id)id pending:(BOOL)pending;
- (BOOL)_finishSnapshotWithMode:(unsigned __int8)mode snapshotSuccess:(BOOL)success error:(id *)error;
- (BOOL)_performSnapshotWithMode:(unsigned __int8)mode usingNextEntryBlock:(id)block createOnlyIfNecessary:(BOOL)necessary error:(id *)error;
- (BOOL)_prepareForSnapshotWithMode:(unsigned __int8)mode error:(id *)error;
- (BOOL)_recoverJournalWithError:(id *)error;
- (BOOL)_removeMetadataPending:(BOOL)pending error:(id *)error;
- (BOOL)_replaceMetadataWithPendingMetadataError:(id *)error;
- (BOOL)_updateMetadataWithMetadata:(id)metadata replace:(BOOL)replace pending:(BOOL)pending error:(id *)error;
- (BOOL)appendChangeEntries:(id)entries error:(id *)error;
- (BOOL)appendChangeEntryAfterPrepare:(id)prepare error:(id *)error;
- (BOOL)appendUpdatePayloadWithPayloadID:(id)d rawAttributes:(id)attributes error:(id *)error;
- (BOOL)coalesceChangesToSnapshotWithError:(id *)error;
- (BOOL)createSnapshotUsingNextPayloadBlock:(id)block createOnlyIfNecessary:(BOOL)necessary error:(id *)error;
- (BOOL)enumerateEntriesUsingBlock:(id)block decodePayload:(BOOL)payload error:(id *)error;
- (BOOL)enumeratePayloadsUsingBlock:(id)block error:(id *)error;
- (BOOL)finishAppendChangeEntriesWithError:(id *)error;
- (BOOL)prepareForAppendChangeEntriesWithError:(id *)error;
- (BOOL)removeJournalFilesWithError:(id *)error;
- (BOOL)snapshotJournalFileSize:(unint64_t *)size changeJournalFileSize:(unint64_t *)fileSize error:(id *)error;
- (NSDictionary)metadata;
- (PLJournal)initWithBaseURL:(id)l name:(id)name payloadClass:(Class)class hasMetadata:(BOOL)metadata;
- (PLJournal)initWithBaseURL:(id)l payloadClass:(Class)class;
- (PLJournalFile)changeJournal;
- (PLJournalFile)snapshotJournal;
- (id)_payloadTooNewErrorWithPayloadVersion:(int64_t)version;
- (id)_readMetadataPending:(BOOL)pending;
- (id)metadataURLPending:(BOOL)pending;
- (unint64_t)countOfInsertEntriesWithError:(id *)error;
- (unint64_t)currentPayloadVersionWithError:(id *)error;
- (void)removeMetadata;
@end

@implementation PLJournal

- (BOOL)appendUpdatePayloadWithPayloadID:(id)d rawAttributes:(id)attributes error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  attributesCopy = attributes;
  if ([attributesCopy count])
  {
    payloadClass = [(PLJournal *)self payloadClass];
    v11 = [[payloadClass alloc] initWithPayloadID:dCopy payloadVersion:-[objc_class payloadVersion](payloadClass nilAttributes:{"payloadVersion"), 0}];
    [v11 setRawPayloadAttributes:attributesCopy];
    v12 = [[PLJournalEntry alloc] initForUpdateWithPayload:v11];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v14 = [(PLJournal *)self appendChangeEntries:v13 error:error];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)_payloadTooNewErrorWithPayloadVersion:(int64_t)version
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E69BFF48];
  v13 = *MEMORY[0x1E696A578];
  v7 = MEMORY[0x1E696AEC0];
  payloadClassID = [(objc_class *)self->_payloadClass payloadClassID];
  v9 = [v7 stringWithFormat:@"Payload (%@) too new, payload version %lu greater than payload class version %u", payloadClassID, version, -[objc_class payloadVersion](self->_payloadClass, "payloadVersion")];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v5 errorWithDomain:v6 code:51007 userInfo:v10];

  return v11;
}

- (BOOL)enumerateEntriesUsingBlock:(id)block decodePayload:(BOOL)payload error:(id *)error
{
  blockCopy = block;
  snapshotJournal = [(PLJournal *)self snapshotJournal];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__70434;
  v78 = __Block_byref_object_dispose__70435;
  changeJournal = [(PLJournal *)self changeJournal];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v12 = v75[5];
  if (v12)
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke;
    v66[3] = &unk_1E7570D40;
    v66[4] = self;
    v69[1] = &v70;
    v67 = v10;
    v68 = v11;
    v69[0] = v30;
    v13 = [v12 enumerateEntriesUsingBlock:v66 decodePayload:0 error:error];
    v28 = &v68;
    v29 = &v67;
    v24 = v69;
    if (v71[3])
    {
      if (error)
      {
        [(PLJournal *)self _payloadTooNewErrorWithPayloadVersion:?];
        v15 = &v68;
        v14 = &v67;
        *error = v16 = 0;
LABEL_13:

        goto LABEL_14;
      }

LABEL_10:
      v16 = 0;
      v15 = &v68;
      v14 = &v67;
      goto LABEL_13;
    }

    if (!v13)
    {
      goto LABEL_10;
    }

    v26 = v11;
    v27 = v10;
    v23 = snapshotJournal;
    v25 = blockCopy;
  }

  else
  {
    v26 = v11;
    v27 = v10;
    v23 = snapshotJournal;
    v25 = blockCopy;
  }

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 1;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__70434;
  v62[4] = __Block_byref_object_dispose__70435;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__70434;
  v56[4] = __Block_byref_object_dispose__70435;
  v57 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke_2;
  aBlock[3] = &unk_1E7570D90;
  aBlock[4] = self;
  v49 = &v70;
  v45 = v30;
  v50 = v58;
  v46 = v26;
  v51 = v56;
  payloadCopy = payload;
  v47 = v27;
  v52 = v64;
  v53 = v62;
  v48 = v25;
  v54 = v60;
  v17 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke_4;
  v31[3] = &unk_1E7570DB8;
  v35 = v56;
  snapshotJournal = v23;
  v32 = v23;
  v18 = v17;
  payloadCopy2 = payload;
  selfCopy = self;
  v34 = v18;
  v36 = &v70;
  v37 = v64;
  v38 = v62;
  v39 = v60;
  v40 = v58;
  v41 = &v74;
  errorCopy = error;
  v19 = _Block_copy(v31);
  v20 = v75[5];
  if (v20)
  {
    v21 = [v20 openForReadingUsingBlock:v19 error:error];
  }

  else
  {
    v21 = v19[2](v19, 0);
  }

  v15 = v28;
  v14 = v29;
  v16 = v21;
  blockCopy = v25;

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  v11 = v26;
  v10 = v27;
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v74, 8);
  return v16;
}

void __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [v14 payloadVersion];
  if (v7 > [*(*(a1 + 32) + 8) payloadVersion])
  {
    *(*(*(a1 + 64) + 8) + 24) = [v14 payloadVersion];
    *a4 = 1;
    goto LABEL_13;
  }

  v8 = [v14 payloadID];
  v9 = *(a1 + 40);
  v10 = [v14 header];
  v11 = [v10 entryType];

  switch(v11)
  {
    case 2:
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
      [*(a1 + 56) setObject:v13 forKeyedSubscript:v8];
LABEL_11:

      break;
    case 1:
LABEL_7:
      v13 = [v9 objectForKeyedSubscript:v8];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
        [v9 setObject:v13 forKeyedSubscript:v8];
      }

      [v13 addIndex:a3];
      goto LABEL_11;
    case 0:
      v12 = *(a1 + 48);

      v9 = v12;
      goto LABEL_7;
  }

LABEL_13:
}

void __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 header];
  v9 = [v8 entryType];

  if (!v9)
  {
    v10 = [v7 payloadVersion];
    if (v10 > [*(*(a1 + 32) + 8) payloadVersion])
    {
      *(*(*(a1 + 72) + 8) + 24) = [v7 payloadVersion];
      *a4 = 1;
      goto LABEL_25;
    }

    v11 = [v7 payloadID];
    v12 = [*(a1 + 40) objectForKeyedSubscript:v11];
    v13 = v12;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      if ([v12 unsignedLongLongValue] > a3)
      {
        goto LABEL_24;
      }
    }

    else if (v12)
    {
LABEL_24:

      goto LABEL_25;
    }

    v14 = [*(a1 + 48) objectForKeyedSubscript:v11];
    v15 = v14;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      if (![v14 containsIndex:a3] || objc_msgSend(v15, "lastIndex") > a3)
      {
        goto LABEL_23;
      }
    }

    else if (v14)
    {
LABEL_23:

      goto LABEL_24;
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (*(*(*(a1 + 88) + 8) + 40) && *(a1 + 120) == 1)
    {
      v17 = [*(a1 + 56) objectForKeyedSubscript:v11];
      if (v17)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v18 = *(a1 + 96);
        v25 = *(a1 + 80);
        v22[2] = __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke_3;
        v22[3] = &unk_1E7570D68;
        v27 = a3;
        v22[4] = *(a1 + 32);
        v26 = v18;
        v23 = v16;
        v24 = v7;
        [v17 enumerateIndexesUsingBlock:v22];
      }
    }

    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      v19 = [v7 payload];
      [v19 migrateMergedPayloadWithUpdatePayloads:v16];

      (*(*(a1 + 64) + 16))(*(a1 + 64), v7, a4, v20, v21);
      if (*a4 == 1)
      {
        *(*(*(a1 + 112) + 8) + 24) = 1;
      }
    }

    else
    {
      *a4 = 1;
    }

    goto LABEL_23;
  }

LABEL_25:
}

uint64_t __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v5 = [*(a1 + 32) enumerateEntriesUsingBlock:*(a1 + 48) decodePayload:*(a1 + 120) error:*(a1 + 112)];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (*(a1 + 112))
    {
      [*(a1 + 40) _payloadTooNewErrorWithPayloadVersion:?];
      **(a1 + 112) = LOBYTE(v6) = 0;
      goto LABEL_13;
    }

LABEL_12:
    LOBYTE(v6) = 0;
    goto LABEL_13;
  }

  v7 = v5;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!*(a1 + 112))
    {
      LOBYTE(v6) = 0;
      goto LABEL_13;
    }

    **(a1 + 112) = *(*(*(a1 + 80) + 8) + 40);
    if (!v7 || (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(*(*(a1 + 88) + 8) + 24))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = 1;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *(*(*(a1 + 96) + 8) + 24) = 1;
      v9 = [*(a1 + 40) changeJournal];
      v10 = *(*(a1 + 104) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(*(*(a1 + 104) + 8) + 40);
      if (v12)
      {
        v6 = [v12 enumerateEntriesUsingBlock:*(a1 + 48) decodePayload:*(a1 + 120) error:*(a1 + 112)];
      }

      if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || !*(a1 + 112))
      {
        if (v6)
        {
          LOBYTE(v6) = *(*(*(a1 + 72) + 8) + 24);
        }
      }

      else
      {
        **(a1 + 112) = *(*(*(a1 + 80) + 8) + 40);
        if (v6)
        {
          LOBYTE(v6) = *(*(*(a1 + 72) + 8) + 24);
        }
      }
    }
  }

LABEL_13:

  return v6 & 1;
}

void __60__PLJournal_enumerateEntriesUsingBlock_decodePayload_error___block_invoke_3(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 56) + 8) + 24) != 1 || *(a1 + 88) < a2)
  {
    [*(*(*(a1 + 64) + 8) + 40) seekToFileOffset:a2];
    v5 = objc_alloc_init(PLJournalEntry);
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [*(a1 + 32) payloadClass];
    v8 = *(*(a1 + 80) + 8);
    obj = *(v8 + 40);
    LOBYTE(v6) = [(PLJournalEntry *)v5 readFromFileHandle:v6 decodePayload:1 payloadClass:v7 entryOffset:0 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v6;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v9 = [(PLJournalEntry *)v5 payload];

      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = [(PLJournalEntry *)v5 payload];
        [v10 addObject:v11];

        v12 = [*(a1 + 48) payload];
        v13 = [(PLJournalEntry *)v5 payload];
        [v12 mergePayload:v13];
      }
    }

    else
    {
      *a3 = 1;
    }
  }
}

- (unint64_t)currentPayloadVersionWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  metadata = [(PLJournal *)self metadata];
  v6 = [metadata objectForKeyedSubscript:@"currentPayloadVersion"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v19 = unsignedIntegerValue;
  v8 = v17[3];
  if (!v8)
  {
    changeJournal = [(PLJournal *)self changeJournal];
    v10 = changeJournal;
    if (changeJournal && (v15[0] = MEMORY[0x1E69E9820], v15[1] = 3221225472, v15[2] = __44__PLJournal_currentPayloadVersionWithError___block_invoke, v15[3] = &unk_1E7570D18, v15[4] = &v16, ([changeJournal enumerateEntriesUsingBlock:v15 decodePayload:0 error:error] & 1) == 0))
    {
      v17[3] = 0;
    }

    else if (!v17[3])
    {
      snapshotJournal = [(PLJournal *)self snapshotJournal];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__PLJournal_currentPayloadVersionWithError___block_invoke_2;
      v14[3] = &unk_1E7570D18;
      v14[4] = &v16;
      v12 = [snapshotJournal enumerateEntriesUsingBlock:v14 decodePayload:0 error:error];

      if (v12)
      {
        if (error && !v17[3])
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:51006 userInfo:0];
        }
      }
    }

    v8 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __44__PLJournal_currentPayloadVersionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) < [v3 payloadVersion])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v3 payloadVersion];
  }
}

uint64_t __44__PLJournal_currentPayloadVersionWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 payloadVersion];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = 1;
  return result;
}

- (unint64_t)countOfInsertEntriesWithError:(id *)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PLJournal_countOfInsertEntriesWithError___block_invoke;
  v5[3] = &unk_1E7570CF0;
  v5[4] = &v6;
  [(PLJournal *)self enumerateEntriesUsingBlock:v5 decodePayload:0 error:error];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enumeratePayloadsUsingBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PLJournal_enumeratePayloadsUsingBlock_error___block_invoke;
  v9[3] = &unk_1E7570CC8;
  v10 = blockCopy;
  v7 = blockCopy;
  LOBYTE(error) = [(PLJournal *)self enumerateEntriesUsingBlock:v9 decodePayload:1 error:error];

  return error;
}

void __47__PLJournal_enumeratePayloadsUsingBlock_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 payloadID];

  if (!v6)
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      v11 = "Skipping nil payloadID on enumeration for entry: %@";
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0xCu);
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = [v5 payload];

  if (!v7)
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      v11 = "Skipping nil payload on enumeration for entry: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = *(a1 + 32);
  v9 = [v5 payload];
  (*(v8 + 16))(v8, v9, a3);

LABEL_10:
}

- (PLJournalFile)changeJournal
{
  if ([(PLJournal *)self _isPendingJournalAuthoritative])
  {
    if ([(PLJournalFile *)self->_pendingSnapshotJournal fileExists])
    {
      v3 = 0;
      goto LABEL_8;
    }

    pendingChangeJournal = self->_pendingChangeJournal;
    p_pendingChangeJournal = &self->_pendingChangeJournal;
    fileExists = [(PLJournalFile *)pendingChangeJournal fileExists];
    p_changeJournal = p_pendingChangeJournal - 5;
    if (fileExists)
    {
      p_changeJournal = p_pendingChangeJournal;
    }
  }

  else
  {
    p_changeJournal = &self->_changeJournal;
  }

  v3 = *p_changeJournal;
LABEL_8:

  return v3;
}

- (PLJournalFile)snapshotJournal
{
  if (![(PLJournal *)self _isPendingJournalAuthoritative]|| (p_snapshotJournal = &self->_pendingSnapshotJournal, ![(PLJournalFile *)self->_pendingSnapshotJournal fileExists]))
  {
    p_snapshotJournal = &self->_snapshotJournal;
  }

  v4 = *p_snapshotJournal;

  return v4;
}

- (BOOL)snapshotJournalFileSize:(unint64_t *)size changeJournalFileSize:(unint64_t *)fileSize error:(id *)error
{
  changeJournal = [(PLJournal *)self changeJournal];
  *fileSize = 0;
  snapshotJournal = [(PLJournal *)self snapshotJournal];
  if ([snapshotJournal fileSize:size error:error])
  {
    if (changeJournal)
    {
      v11 = [changeJournal fileSize:fileSize error:error];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)finishAppendChangeEntriesWithError:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  fileHandleForAppendingUpdates = self->_fileHandleForAppendingUpdates;
  if (!fileHandleForAppendingUpdates)
  {
    return 1;
  }

  self->_fileHandleForAppendingUpdates = 0;

  if (!self->_hasMetadata)
  {
    return 1;
  }

  v10 = @"currentPayloadVersion";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[objc_class payloadVersion](self->_payloadClass, "payloadVersion")}];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(PLJournal *)self _updateMetadataWithMetadata:v7 replace:0 pending:0 error:error];

  return v8;
}

- (BOOL)appendChangeEntryAfterPrepare:(id)prepare error:(id *)error
{
  prepareCopy = prepare;
  if (!self->_fileHandleForAppendingUpdates)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"PLJournalException" reason:@"Call prepareForAppendChangeEntriesWithError before appendChangeEntryAfterPrepare" userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = prepareCopy;
  payloadClass = [prepareCopy payloadClass];
  if (payloadClass != [(PLJournal *)self payloadClass])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Payload classes don't match: %@, %@", objc_msgSend(v7, "payloadClass"), -[PLJournal payloadClass](self, "payloadClass")];
    v14 = [v12 exceptionWithName:@"PLJournalException" reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v9 = [v7 writeToFileHandle:self->_fileHandleForAppendingUpdates checksumContext:0 error:error];

  return v9;
}

- (BOOL)prepareForAppendChangeEntriesWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [(PLJournal *)self _recoverJournalWithError:?];
  if (v5)
  {
    if (self->_hasMetadata && (v11 = @"currentPayloadVersion", v12[0] = &unk_1F0FBD7C8, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[PLJournal _updateMetadataWithMetadata:replace:pending:error:](self, "_updateMetadataWithMetadata:replace:pending:error:", v6, 0, 0, error), v6, !v7))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = [(PLJournalFile *)self->_changeJournal fileHandleForWritingWithError:error];
      fileHandleForAppendingUpdates = self->_fileHandleForAppendingUpdates;
      self->_fileHandleForAppendingUpdates = v8;

      LOBYTE(v5) = self->_fileHandleForAppendingUpdates != 0;
    }
  }

  return v5;
}

- (BOOL)appendChangeEntries:(id)entries error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v10 = -[PLJournal _recoverJournalWithError:](self, "_recoverJournalWithError:", error) && (!self->_hasMetadata || (v12 = @"currentPayloadVersion", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[objc_class payloadVersion](self->_payloadClass, "payloadVersion")}], v7 = v6 = entries;

  return v10;
}

- (BOOL)coalesceChangesToSnapshotWithError:(id *)error
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (self->_snapshotMode)
  {
    if (self->_snapshotMode != 1)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:@"PLJournalException" reason:@"Must perform coalesce after preparing in create mode" userInfo:0];
      objc_exception_throw(v16);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
    if (![(PLJournal *)self _prepareForSnapshotWithMode:1 error:error])
    {
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  pendingSnapshotJournal = self->_pendingSnapshotJournal;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__PLJournal_coalesceChangesToSnapshotWithError___block_invoke;
  v18[3] = &unk_1E7570CA0;
  v18[4] = self;
  v18[5] = error;
  v7 = [(PLJournalFile *)pendingSnapshotJournal openForWritingUsingBlock:v18 error:error];
  if (v7 && self->_hasMetadata)
  {
    payloadVersion = [(objc_class *)self->_payloadClass payloadVersion];
    v19[0] = @"coalescePayloadVersion";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:payloadVersion];
    v20[0] = v9;
    v19[1] = @"coalesceDate";
    date = [MEMORY[0x1E695DF00] date];
    v20[1] = date;
    v19[2] = @"currentPayloadVersion";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:payloadVersion];
    v19[3] = @"snapshotChecksum";
    v20[2] = v11;
    v20[3] = &stru_1F0F06D80;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v7 = [(PLJournal *)self _updateMetadataWithMetadata:v12 replace:0 pending:1 error:error];

    if ((v5 & 1) == 0)
    {
      return v7;
    }
  }

  else if (!v5)
  {
    return v7;
  }

  v17 = 0;
  v13 = [(PLJournal *)self _finishSnapshotWithMode:1 snapshotSuccess:v7 error:&v17];
  v14 = v17;
  if (!v13 && v7)
  {
    if (error)
    {
      v14 = v14;
      LOBYTE(v7) = 0;
      *error = v14;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

uint64_t __48__PLJournal_coalesceChangesToSnapshotWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__70434;
  v17 = __Block_byref_object_dispose__70435;
  v18 = 0;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PLJournal_coalesceChangesToSnapshotWithError___block_invoke_2;
  v9[3] = &unk_1E7570C78;
  v11 = &v19;
  v5 = v3;
  v10 = v5;
  v12 = &v13;
  v6 = [v4 enumeratePayloadsUsingBlock:v9 error:*(a1 + 40)];
  if ((v20[3] & 1) == 0 && *(a1 + 40))
  {
    **(a1 + 40) = v14[5];
  }

  if (v6)
  {
    v7 = *(v20 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7 & 1;
}

void __48__PLJournal_coalesceChangesToSnapshotWithError___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [[PLJournalEntry alloc] initForInsertWithPayload:v5];
  v8 = a1[4];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 writeToFileHandle:v8 checksumContext:0 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[5] + 8) + 24) = v10;
  if ((v10 & 1) == 0)
  {
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)createSnapshotUsingNextPayloadBlock:(id)block createOnlyIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PLJournal_createSnapshotUsingNextPayloadBlock_createOnlyIfNecessary_error___block_invoke;
  v11[3] = &unk_1E7570C50;
  v12 = blockCopy;
  v9 = blockCopy;
  LOBYTE(error) = [(PLJournal *)self _performSnapshotWithMode:1 usingNextEntryBlock:v11 createOnlyIfNecessary:necessaryCopy error:error];

  return error;
}

id __77__PLJournal_createSnapshotUsingNextPayloadBlock_createOnlyIfNecessary_error___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = [[PLJournalEntry alloc] initForInsertWithPayload:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_performSnapshotWithMode:(unsigned __int8)mode usingNextEntryBlock:(id)block createOnlyIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  modeCopy = mode;
  v51[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!modeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:1136 description:{@"Invalid parameter not satisfying: %@", @"snapshotMode != PLJournalSnapshotModeNone"}];
  }

  if (self->_snapshotMode)
  {
    if (self->_snapshotMode != modeCopy)
    {
      v39 = [MEMORY[0x1E695DF30] exceptionWithName:@"PLJournalException" reason:@"Must perform snapshot in the same mode as it was prepared" userInfo:0];
      objc_exception_throw(v39);
    }

    v12 = 0;
    v13 = 1;
  }

  else
  {
    v12 = [(PLJournal *)self _prepareForSnapshotWithMode:modeCopy error:error];
    v13 = v12;
  }

  v14 = 0;
  if (modeCopy == 1 && necessaryCopy)
  {
    v14 = objc_alloc_init(PLJournalChecksumContext);
  }

  if (!v13)
  {
    goto LABEL_19;
  }

  v15 = 72;
  if (modeCopy == 1)
  {
    v15 = 64;
  }

  v16 = *(&self->super.isa + v15);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __86__PLJournal__performSnapshotWithMode_usingNextEntryBlock_createOnlyIfNecessary_error___block_invoke;
  v44[3] = &unk_1E7570C28;
  v46 = blockCopy;
  v44[4] = self;
  v17 = v14;
  v45 = v17;
  errorCopy = error;
  v18 = v16;
  v19 = [v18 openForWritingUsingBlock:v44 error:error];

  if (!v19)
  {
LABEL_19:
    v26 = 0;
    if (!v12)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  if (!self->_hasMetadata)
  {
    v26 = 1;
    if (!v12)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v42 = blockCopy;
  payloadVersion = [(objc_class *)self->_payloadClass payloadVersion];
  v40 = objc_alloc(MEMORY[0x1E695DF90]);
  v50[0] = @"snapshotPayloadVersion";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:payloadVersion];
  v51[0] = v41;
  v50[1] = @"snapshotDate";
  date = [MEMORY[0x1E695DF00] date];
  v51[1] = date;
  v50[2] = @"currentPayloadVersion";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:payloadVersion];
  v51[2] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
  v24 = [v40 initWithDictionary:v23];

  if (v17)
  {
    finalizedChecksum = [(PLJournalChecksumContext *)v17 finalizedChecksum];
    [v24 setObject:finalizedChecksum forKeyedSubscript:@"snapshotChecksum"];
  }

  v26 = [(PLJournal *)self _updateMetadataWithMetadata:v24 replace:1 pending:1 error:error];

  blockCopy = v42;
  if (v12)
  {
LABEL_20:
    if (v14)
    {
      metadata = [(PLJournal *)self metadata];
      v28 = [metadata objectForKeyedSubscript:@"snapshotChecksum"];

      finalizedChecksum2 = [(PLJournalChecksumContext *)v14 finalizedChecksum];
      v30 = [v28 isEqualToString:finalizedChecksum2];

      if (v30)
      {
        v31 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E69BFF48];
        v48 = *MEMORY[0x1E696A278];
        v49 = @"Existing snapshot is the same as the pending one";
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v34 = [v31 errorWithDomain:v32 code:51012 userInfo:v33];
        if (error)
        {
          v34 = v34;
          *error = v34;
        }

        v26 = 0;
      }
    }

    v43 = 0;
    v35 = [(PLJournal *)self _finishSnapshotWithMode:modeCopy snapshotSuccess:v26 error:&v43];
    v36 = v43;
    if (!v35 && v26)
    {
      if (error)
      {
        v36 = v36;
        LOBYTE(v26) = 0;
        *error = v36;
      }

      else
      {
        LOBYTE(v26) = 0;
      }
    }
  }

LABEL_34:

  return v26;
}

uint64_t __86__PLJournal__performSnapshotWithMode_usingNextEntryBlock_createOnlyIfNecessary_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0;
  v4 = (*(*(a1 + 48) + 16))();
  v5 = 0;
  v6 = 1;
  if (v4 && (v25 & 1) == 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v4 payload];
      v10 = objc_opt_class();
      v11 = *(*(a1 + 32) + 8);

      if (v10 != v11)
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = MEMORY[0x1E696AEC0];
        v20 = [v4 payload];
        v21 = [v19 stringWithFormat:@"Payload classes don't match: %@, %@", objc_opt_class(), *(*(a1 + 32) + 8)];
        v22 = [v18 exceptionWithName:@"PLJournalException" reason:v21 userInfo:0];
        v23 = v22;

        objc_exception_throw(v22);
      }

      v12 = *(a1 + 40);
      v24 = v7;
      v13 = [v4 writeToFileHandle:v3 checksumContext:v12 error:&v24];
      v5 = v24;

      if (!v13)
      {
        break;
      }

      v14 = (*(*(a1 + 48) + 16))();

      objc_autoreleasePoolPop(v8);
      v6 = 1;
      if (v14)
      {
        v4 = v14;
        v7 = v5;
        if ((v25 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v8);
    if (*(a1 + 56))
    {
      v15 = v5;
      v6 = 0;
      **(a1 + 56) = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  v14 = v4;
LABEL_13:
  v16 = v25 ^ 1;

  return v6 & v16;
}

- (BOOL)_finishSnapshotWithMode:(unsigned __int8)mode snapshotSuccess:(BOOL)success error:(id *)error
{
  successCopy = success;
  modeCopy = mode;
  if (!mode)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:1083 description:{@"Invalid parameter not satisfying: %@", @"snapshotMode != PLJournalSnapshotModeNone"}];
  }

  if (self->_snapshotMode != modeCopy)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:@"PLJournalException" reason:@"Cannot finish snapshot without preparing first using the same snapshot mode" userInfo:0];
    objc_exception_throw(v16);
  }

  if (successCopy)
  {
    v9 = [(PLJournalFile *)self->_prepareMarker removeFileWithError:error];
    if (modeCopy == 2)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

      pendingChangeJournal = self->_pendingChangeJournal;
      changeJournal = self->_changeJournal;
      goto LABEL_16;
    }

    if (modeCopy != 1)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

LABEL_22:
      LOBYTE(v9) = !self->_hasMetadata || [(PLJournal *)self _replaceMetadataWithPendingMetadataError:error];
      goto LABEL_25;
    }

    if (v9)
    {
      v9 = [(PLJournalFile *)self->_changeJournal removeFileWithError:error];
      if (v9)
      {
        pendingChangeJournal = self->_pendingSnapshotJournal;
        changeJournal = self->_snapshotJournal;
LABEL_16:
        v12 = [(PLJournalFile *)changeJournal url];
        v13 = [(PLJournalFile *)pendingChangeJournal moveToURL:v12 error:error];

        if (!v13)
        {
LABEL_17:
          LOBYTE(v9) = 0;
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    if (modeCopy == 1)
    {
      v9 = [(PLJournalFile *)self->_pendingSnapshotJournal removeFileWithError:error];
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    else if (modeCopy != 2 || ![(PLJournalFile *)self->_pendingChangeJournal removeFileWithError:error])
    {
      goto LABEL_17;
    }

    v9 = [(PLJournal *)self _removeMetadataPending:1 error:error];
    if (v9)
    {
      LOBYTE(v9) = [(PLJournalFile *)self->_prepareMarker removeFileWithError:error];
    }
  }

LABEL_25:
  self->_snapshotMode = 0;
  return v9;
}

- (BOOL)_prepareForSnapshotWithMode:(unsigned __int8)mode error:(id *)error
{
  modeCopy = mode;
  if (!mode)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:1065 description:{@"Invalid parameter not satisfying: %@", @"snapshotMode != PLJournalSnapshotModeNone"}];
  }

  if (self->_snapshotMode)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:@"PLJournalException" reason:@"Cannot prepare snapshot more than once without finishing" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = [(PLJournal *)self _recoverJournalWithError:error];
  if (v7)
  {
    v7 = [(PLJournalFile *)self->_prepareMarker createEmptyFileWithError:error];
    if (modeCopy == 2 && v7)
    {
      changeJournal = self->_changeJournal;
      v9 = [(PLJournalFile *)self->_pendingChangeJournal url];
      v10 = [(PLJournalFile *)changeJournal copyToURL:v9 error:error];

      if (!v10)
      {
        LOBYTE(v7) = 0;
        return v7;
      }
    }

    else if (!v7)
    {
      return v7;
    }

    self->_snapshotMode = modeCopy;
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_recoverJournalWithError:(id *)error
{
  fileHandleForAppendingUpdates = self->_fileHandleForAppendingUpdates;
  self->_fileHandleForAppendingUpdates = 0;

  _isPendingJournalAuthoritative = [(PLJournal *)self _isPendingJournalAuthoritative];
  pendingSnapshotJournal = self->_pendingSnapshotJournal;
  if (_isPendingJournalAuthoritative)
  {
    fileExists = [(PLJournalFile *)pendingSnapshotJournal fileExists];
    fileExists2 = [(PLJournalFile *)self->_pendingChangeJournal fileExists];
    v10 = [(PLJournal *)self metadataURLPending:1];
    v11 = [PLJournalFile fileExistsAtURL:v10];

    if (!fileExists && !fileExists2 && !v11)
    {
      goto LABEL_5;
    }

    if (fileExists)
    {
      v12 = [(PLJournal *)self removeJournalFilesWithError:error];
      if (!v12)
      {
        return v12;
      }

      v13 = self->_pendingSnapshotJournal;
      v14 = [(PLJournalFile *)self->_snapshotJournal url];
      v15 = [(PLJournalFile *)v13 moveToURL:v14 error:error];
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & fileExists2) == 1)
    {
      pendingChangeJournal = self->_pendingChangeJournal;
      v17 = [(PLJournalFile *)self->_changeJournal url];
      v15 = [(PLJournalFile *)pendingChangeJournal moveToURL:v17 error:error];
    }

    if ((v15 & v11) == 1)
    {
      if (![(PLJournal *)self _replaceMetadataWithPendingMetadataError:error])
      {
        goto LABEL_20;
      }

LABEL_5:
      [(PLJournalFile *)self->_prepareMarker removeFileWithError:0];
      LOBYTE(v12) = 1;
      return v12;
    }

    if (v15)
    {
      goto LABEL_5;
    }

LABEL_20:
    LOBYTE(v12) = 0;
    return v12;
  }

  v12 = [(PLJournalFile *)pendingSnapshotJournal removeFileWithError:error];
  if (v12)
  {
    v12 = [(PLJournalFile *)self->_pendingChangeJournal removeFileWithError:error];
    if (v12)
    {
      if ([(PLJournal *)self _removeMetadataPending:1 error:error])
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  return v12;
}

- (BOOL)removeJournalFilesWithError:(id *)error
{
  v5 = [(PLJournalFile *)self->_snapshotJournal removeFileWithError:?];
  if (v5)
  {
    changeJournal = self->_changeJournal;

    LOBYTE(v5) = [(PLJournalFile *)changeJournal removeFileWithError:error];
  }

  return v5;
}

- (BOOL)_updateMetadataWithMetadata:(id)metadata replace:(BOOL)replace pending:(BOOL)pending error:(id *)error
{
  pendingCopy = pending;
  metadataCopy = metadata;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!replace)
  {
    v12 = [(PLJournal *)self _readMetadataPending:0];
    if (v12)
    {
      [v11 addEntriesFromDictionary:v12];
    }
  }

  if (metadataCopy)
  {
    [v11 addEntriesFromDictionary:metadataCopy];
  }

  v13 = [(PLJournal *)self metadataURLPending:pendingCopy];
  v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:100 options:0 error:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_baseURL path];
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  v17 = [PLJournalFile writeData:v14 toURL:v13 atomically:pendingCopy ^ 1 error:error];
  return v17;
}

- (id)_readMetadataPending:(BOOL)pending
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PLJournal *)self metadataURLPending:pending];
  v5 = [v3 dataWithContentsOfURL:v4];

  if (!v5)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v12 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:&v12 error:0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = [v6 objectForKeyedSubscript:@"snapshotPayloadVersion"];
  if ([v8 integerValue] <= 0)
  {

    goto LABEL_8;
  }

  v9 = [v7 objectForKeyedSubscript:@"snapshotDate"];

  if (!v9)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v7;
LABEL_9:

LABEL_10:

  return v10;
}

- (BOOL)_replaceMetadataWithPendingMetadataError:(id *)error
{
  v5 = [(PLJournal *)self metadataURLPending:1];
  v6 = [(PLJournal *)self metadataURLPending:0];
  LOBYTE(error) = [PLJournalFile moveURL:v5 toURL:v6 error:error];

  return error;
}

- (BOOL)_removeMetadataPending:(BOOL)pending error:(id *)error
{
  v5 = [(PLJournal *)self metadataURLPending:pending];
  LOBYTE(error) = [PLJournalFile removeURL:v5 error:error];

  return error;
}

- (id)metadataURLPending:(BOOL)pending
{
  pendingCopy = pending;
  v5 = objc_opt_class();
  baseURL = self->_baseURL;
  payloadClassID = [(objc_class *)self->_payloadClass payloadClassID];
  v8 = [v5 metadataURLForBaseURL:baseURL payloadClassId:payloadClassID pending:pendingCopy];

  return v8;
}

- (NSDictionary)metadata
{
  if ([(PLJournal *)self _isPendingJournalAuthoritative])
  {
    v3 = [(PLJournal *)self metadataURLPending:1];
    v4 = [PLJournalFile fileExistsAtURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return [(PLJournal *)self _readMetadataPending:v4];
}

- (void)removeMetadata
{
  [(PLJournal *)self _removeMetadataPending:0 error:0];

  [(PLJournal *)self _removeMetadataPending:1 error:0];
}

- (PLJournal)initWithBaseURL:(id)l name:(id)name payloadClass:(Class)class hasMetadata:(BOOL)metadata
{
  lCopy = l;
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = PLJournal;
  v13 = [(PLJournal *)&v36 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_baseURL, l);
    v14->_payloadClass = class;
    v14->_hasMetadata = metadata;
    v15 = [PLJournalFile alloc];
    v16 = [objc_opt_class() journalURLForBaseURL:lCopy name:nameCopy journalType:@"snapshot"];
    v17 = [(PLJournalFile *)v15 initWithURL:v16 payloadClass:class];
    snapshotJournal = v14->_snapshotJournal;
    v14->_snapshotJournal = v17;

    v19 = [PLJournalFile alloc];
    v20 = [objc_opt_class() journalURLForBaseURL:lCopy name:nameCopy journalType:@"change"];
    v21 = [(PLJournalFile *)v19 initWithURL:v20 payloadClass:class];
    changeJournal = v14->_changeJournal;
    v14->_changeJournal = v21;

    v23 = [PLJournalFile alloc];
    v24 = [objc_opt_class() journalURLForBaseURL:v14->_baseURL name:nameCopy journalType:@"pending-snapshot"];
    v25 = [(PLJournalFile *)v23 initWithURL:v24 payloadClass:class];
    pendingSnapshotJournal = v14->_pendingSnapshotJournal;
    v14->_pendingSnapshotJournal = v25;

    v27 = [PLJournalFile alloc];
    v28 = [objc_opt_class() journalURLForBaseURL:v14->_baseURL name:nameCopy journalType:@"pending-change"];
    v29 = [(PLJournalFile *)v27 initWithURL:v28 payloadClass:class];
    pendingChangeJournal = v14->_pendingChangeJournal;
    v14->_pendingChangeJournal = v29;

    v31 = [PLJournalFile alloc];
    v32 = [objc_opt_class() journalURLForBaseURL:v14->_baseURL name:nameCopy journalType:@"prepare-marker"];
    v33 = [(PLJournalFile *)v31 initWithURL:v32 payloadClass:class];
    prepareMarker = v14->_prepareMarker;
    v14->_prepareMarker = v33;
  }

  return v14;
}

- (PLJournal)initWithBaseURL:(id)l payloadClass:(Class)class
{
  lCopy = l;
  payloadClassID = [(objc_class *)class payloadClassID];
  v8 = [(PLJournal *)self initWithBaseURL:lCopy name:payloadClassID payloadClass:class hasMetadata:1];

  return v8;
}

+ (BOOL)_finishFullSnapshotForBaseURL:(id)l snapshotSucceeded:(BOOL)succeeded snapshotMode:(unsigned __int8)mode journals:(id)journals error:(id *)error
{
  modeCopy = mode;
  succeededCopy = succeeded;
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  journalsCopy = journals;
  if (modeCopy)
  {
    if (!succeededCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:920 description:{@"Invalid parameter not satisfying: %@", @"snapshotMode != PLJournalSnapshotModeNone"}];

    if (!succeededCopy)
    {
      goto LABEL_4;
    }
  }

  if (![self createSnapshotFinishMarkerForBaseURL:lCopy error:error])
  {
    v24 = 0;
    goto LABEL_18;
  }

LABEL_4:
  v27 = a2;
  selfCopy = self;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = journalsCopy;
  obj = journalsCopy;
  v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        baseURL = [v19 baseURL];
        v21 = [baseURL isEqual:lCopy];

        if ((v21 & 1) == 0)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          baseURL2 = [v19 baseURL];
          [currentHandler2 handleFailureInMethod:v27 object:selfCopy file:@"PLJournal.m" lineNumber:928 description:{@"Journal base URL: %@ not the same as provided baseURL: %@", baseURL2, lCopy}];
        }

        if (![v19 _finishSnapshotWithMode:modeCopy snapshotSuccess:succeededCopy error:error])
        {

          v24 = 0;
          goto LABEL_16;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v24 = [selfCopy removeSnapshotFinishMarkerForBaseURL:lCopy error:error];
LABEL_16:
  journalsCopy = v29;
LABEL_18:

  return v24;
}

+ (BOOL)_performSnapshotsForBaseURL:(id)l snapshotMode:(unsigned __int8)mode payloadClasses:(id)classes snapshotJournalBlock:(id)block createOnlyIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  modeCopy = mode;
  v58[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  classesCopy = classes;
  blockCopy = block;
  if (!modeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"snapshotMode != PLJournalSnapshotModeNone"}];
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__70434;
  v55 = __Block_byref_object_dispose__70435;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  obj = 0;
  v18 = [self recoverJournalsIfNecessaryForBaseURL:lCopy payloadClasses:classesCopy error:&obj];
  objc_storeStrong(&v56, obj);
  v50 = v18;
  if (*(v48 + 24) != 1)
  {
    v30 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __118__PLJournal__performSnapshotsForBaseURL_snapshotMode_payloadClasses_snapshotJournalBlock_createOnlyIfNecessary_error___block_invoke;
  v39[3] = &unk_1E7570BD8;
  v20 = lCopy;
  v40 = v20;
  v43 = &v47;
  v45 = modeCopy;
  v44 = &v51;
  v21 = v19;
  v41 = v21;
  v42 = blockCopy;
  [classesCopy enumerateObjectsUsingBlock:v39];
  if (modeCopy == 1 && necessaryCopy)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __118__PLJournal__performSnapshotsForBaseURL_snapshotMode_payloadClasses_snapshotJournalBlock_createOnlyIfNecessary_error___block_invoke_2;
    v34[3] = &unk_1E7570C00;
    v34[4] = &v35;
    [v21 enumerateObjectsUsingBlock:v34];
    if (*(v36 + 24) == 1)
    {
      *(v48 + 24) = 0;
      v22 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A278];
      v58[0] = @"All existing snapshots are the same as the pending ones";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x1E69BFF48] code:51012 userInfo:v23];
      v25 = v52[5];
      v52[5] = v24;
    }

    _Block_object_dispose(&v35, 8);
  }

  v26 = *(v48 + 24);
  v33 = 0;
  v27 = [PLJournal _finishFullSnapshotForBaseURL:v20 snapshotSucceeded:v26 snapshotMode:modeCopy journals:v21 error:&v33];
  v28 = v33;
  v29 = v33;
  if (!v27 && *(v48 + 24) == 1)
  {
    objc_storeStrong(v52 + 5, v28);
    *(v48 + 24) = v27;
  }

  v30 = *(v48 + 24);
  if (error)
  {
LABEL_15:
    if ((v30 & 1) == 0)
    {
      *error = v52[5];
      v30 = *(v48 + 24);
    }
  }

LABEL_17:
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  return v30 & 1;
}

void __118__PLJournal__performSnapshotsForBaseURL_snapshotMode_payloadClasses_snapshotJournalBlock_createOnlyIfNecessary_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [[PLJournal alloc] initWithBaseURL:*(a1 + 32) payloadClass:a2];
  v9 = *(a1 + 72);
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v11 = [(PLJournal *)v8 _prepareForSnapshotWithMode:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v11;
  if (*(*(*(a1 + 56) + 8) + 24) != 1 || ([*(a1 + 40) addObject:v8], *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))(), (*(*(*(a1 + 56) + 8) + 24) & 1) == 0))
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

void __118__PLJournal__performSnapshotsForBaseURL_snapshotMode_payloadClasses_snapshotJournalBlock_createOnlyIfNecessary_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = [v6 _readMetadataPending:0];
  v7 = [v6 _readMetadataPending:1];

  v8 = [v7 objectForKeyedSubscript:@"snapshotChecksum"];
  if (!v8 || ([v11 objectForKeyedSubscript:@"snapshotChecksum"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v8), v9, (v10 & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (BOOL)recoverJournalsIfNecessaryForBaseURL:(id)l payloadClasses:(id)classes error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  classesCopy = classes;
  if ([self snapshotFinishMarkerExistsForBaseURL:lCopy])
  {
    selfCopy = self;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = classesCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[PLJournal alloc] initWithBaseURL:lCopy payloadClass:*(*(&v20 + 1) + 8 * i)];
          v16 = [(PLJournal *)v15 _recoverJournalWithError:error];

          if (!v16)
          {

            v17 = 0;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = [selfCopy removeSnapshotFinishMarkerForBaseURL:lCopy error:error];
  }

  else
  {
    v17 = 1;
  }

LABEL_13:

  return v17;
}

+ (BOOL)snapshotFinishMarkerExistsForBaseURL:(id)l
{
  v3 = [self snapshotFinishMarkerURLForBaseURL:l];
  v4 = [v3 checkResourceIsReachableAndReturnError:0];

  return v4;
}

+ (BOOL)removeSnapshotFinishMarkerForBaseURL:(id)l error:(id *)error
{
  v5 = [self snapshotFinishMarkerURLForBaseURL:l];
  LOBYTE(error) = [PLJournalFile removeURL:v5 error:error];

  return error;
}

+ (BOOL)createSnapshotFinishMarkerForBaseURL:(id)l error:(id *)error
{
  v5 = [self snapshotFinishMarkerURLForBaseURL:l];
  LOBYTE(error) = [PLJournalFile createEmptyURL:v5 error:error];

  return error;
}

+ (id)metadataURLForBaseURL:(id)l payloadClassId:(id)id pending:(BOOL)pending
{
  if (pending)
  {
    v6 = MEMORY[0x1E696AEC0];
    lCopy = l;
    v8 = [v6 stringWithFormat:@"%@-pending", id];
    v9 = [lCopy URLByAppendingPathComponent:v8];

    v10 = [v9 URLByAppendingPathExtension:@"plist"];
  }

  else
  {
    lCopy2 = l;
    v8 = [lCopy2 URLByAppendingPathComponent:id];

    v10 = [v8 URLByAppendingPathExtension:@"plist"];
  }

  return v10;
}

+ (id)journalURLForBaseURL:(id)l name:(id)name journalType:(id)type
{
  v7 = MEMORY[0x1E696AEC0];
  lCopy = l;
  type = [v7 stringWithFormat:@"%@-%@", name, type];
  v10 = [lCopy URLByAppendingPathComponent:type];

  v11 = [v10 URLByAppendingPathExtension:@"plj"];

  return v11;
}

@end