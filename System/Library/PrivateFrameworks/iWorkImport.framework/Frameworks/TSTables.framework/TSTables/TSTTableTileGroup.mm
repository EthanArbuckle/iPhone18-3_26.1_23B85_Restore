@interface TSTTableTileGroup
+ (TSTTableTileGroup)groupWithStartingTileID:(unint64_t)d;
- (TSTTableTileGroup)init;
- (TSTTableTileGroup)initWithStartingTileID:(unint64_t)d;
- (id)_tileForLazyReference:(id)reference;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)enumerateLoadedTilesWithBlock:(id)block;
- (void)enumerateReferencesWithBlock:(id)block;
- (void)enumerateTilesWithBlock:(id)block;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
- (void)setReference:(id)reference forTileID:(unint64_t)d;
@end

@implementation TSTTableTileGroup

+ (TSTTableTileGroup)groupWithStartingTileID:(unint64_t)d
{
  v4 = [self alloc];
  v8 = objc_msgSend_initWithStartingTileID_(v4, v5, d, v6, v7);

  return v8;
}

- (TSTTableTileGroup)initWithStartingTileID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = TSTTableTileGroup;
  result = [(TSTTableTileGroup *)&v5 init];
  if (result)
  {
    result->_startingTileID = d;
  }

  return result;
}

- (TSTTableTileGroup)init
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileGroup init]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 47, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, v18, "Do not call method", "[TSTTableTileGroup init]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)setReference:(id)reference forTileID:(unint64_t)d
{
  referenceCopy = reference;
  v7 = &self->super.isa + sub_2213CF1FC(d, self->_startingTileID);
  v8 = v7[257];
  v7[257] = referenceCopy;
  v10 = referenceCopy;

  v9 = v7[1];
  v7[1] = 0;
}

- (id)_tileForLazyReference:(id)reference
{
  referenceCopy = reference;
  objc_sync_enter(referenceCopy);
  v87 = 0;
  v8 = objc_msgSend_objectAndReturnError_(referenceCopy, v5, &v87, v6, v7);
  v9 = v87;
  v13 = v9;
  if (!v8 || v9)
  {
    if (!v9)
    {
      v69 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableTileGroup _tileForLazyReference:]", v11, v12);
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v72, v73);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 63, 0, "invalid nil value for '%{public}s'", "error");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v22 = objc_msgSend_domain(v13, v18, v19, v20, v21);
    v27 = objc_msgSend_code(v13, v23, v24, v25, v26);
    isRecoverable = objc_msgSend_tsp_isRecoverable(v13, v28, v29, v30, v31);
    v37 = objc_msgSend_tsp_hintsDescription(v13, v33, v34, v35, v36);
    v38 = v37;
    v39 = &stru_2834BADA0;
    if (isRecoverable)
    {
      v39 = @"recoverable=YES, ";
    }

    v82 = v37;
    v80 = v27;
    v81 = v39;
    TSUSetCrashReporterInfo();

    v40 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTTableTileGroup _tileForLazyReference:]", v42, v43, "[TSTTableTileGroup _tileForLazyReference:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", 64, self, v17, v22, v80, v81, v82, v13);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v46, v47);
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v86 = objc_msgSend_domain(v13, v51, v52, v53, v54);
    v85 = objc_msgSend_code(v13, v55, v56, v57, v58);
    v84 = objc_msgSend_tsp_isRecoverable(v13, v59, v60, v61, v62);
    v83 = objc_msgSend_tsp_hintsDescription(v13, v63, v64, v65, v66);
    if (v84)
    {
      v68 = @"recoverable=YES, ";
    }

    else
    {
      v68 = &stru_2834BADA0;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v67, v44, v48, 64, 1, "Failed to load a lazy table tile in TSTTableTileGroup: %@ with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", self, v50, v86, v85, v68, v83, v13);

    TSUCrashBreakpoint();
    abort();
  }

  objc_opt_class();
  v14 = TSUCheckedDynamicCast();

  objc_sync_exit(referenceCopy);

  return v14;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v4 = sub_2213CF1FC(subscript, self->_startingTileID);
  tiles = self->_tiles;
  v9 = self->_tiles[v4];
  if (v9)
  {
    goto LABEL_4;
  }

  v10 = v4;
  v11 = self->_references[v4];
  if (v11)
  {
    v12 = objc_msgSend__tileForLazyReference_(self, v5, v11, v6, v7);
    v13 = tiles[v10];
    tiles[v10] = v12;

    v9 = tiles[v10];
LABEL_4:
    v14 = v9;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_5:

  return v14;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  objectCopy = object;
  v7 = (&self->super.isa + sub_2213CF1FC(subscript, self->_startingTileID));
  objc_storeStrong(v7 + 1, object);
  v11 = objc_msgSend_referenceForObject_(MEMORY[0x277D80868], v8, objectCopy, v9, v10);
  objc_msgSend_setKeepObjectInMemory_(v11, v12, 1, v13, v14);
  v15 = v7[257];
  v7[257] = v11;
}

- (void)enumerateTilesWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  while (1)
  {
    v6 = (&self->super.isa + v5);
    v10 = v6[1];
    if (!v10)
    {
      if (!v6[257])
      {
        v10 = 0;
        goto LABEL_4;
      }

      v10 = objc_msgSend_objectAtIndexedSubscript_(self, v7, v5 + self->_startingTileID, v8, v9);
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    v11 = 0;
    blockCopy[2](blockCopy, v10, v5 + self->_startingTileID, &v11);
    if (v11)
    {
      break;
    }

LABEL_4:

    if (++v5 == 256)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
}

- (void)enumerateLoadedTilesWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  while (1)
  {
    v6 = self->_tiles[v5];
    if (v6)
    {
      v7 = 0;
      blockCopy[2](blockCopy, v6, v5 + self->_startingTileID, &v7);
      if (v7)
      {
        break;
      }
    }

    if (++v5 == 256)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
}

- (void)enumerateReferencesWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  while (1)
  {
    v6 = self->_references[v5];
    if (v6)
    {
      v7 = 0;
      blockCopy[2](blockCopy, v6, v5 + self->_startingTileID, &v7);
      if (v7)
      {
        break;
      }
    }

    if (++v5 == 256)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
}

@end