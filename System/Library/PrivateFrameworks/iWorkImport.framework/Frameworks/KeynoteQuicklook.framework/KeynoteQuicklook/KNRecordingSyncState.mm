@interface KNRecordingSyncState
- (BOOL)isEqual:(id)a3;
- (BOOL)isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:(id)a3;
- (KNRecordingSyncState)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (KNRecordingSyncState)initWithOutOfSyncToken:(id)a3 canClearOutOfSyncToken:(BOOL)a4;
- (id)description;
- (id)recordingSyncStateByMarkingRecordingAsOutOfSync:(BOOL)a3 withLocalOutOfSyncToken:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation KNRecordingSyncState

- (KNRecordingSyncState)initWithOutOfSyncToken:(id)a3 canClearOutOfSyncToken:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = KNRecordingSyncState;
  v9 = [(KNRecordingSyncState *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    outOfSyncToken = v9->_outOfSyncToken;
    v9->_outOfSyncToken = v10;

    v9->_canClearOutOfSyncToken = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v9 = v5 && ((outOfSyncToken = self->_outOfSyncToken, v8 = *(v5 + 8), !(outOfSyncToken | v8)) || objc_msgSend_isEqual_(outOfSyncToken, v6, v8)) && self->_canClearOutOfSyncToken == *(v5 + 16);
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@ %p outOfSyncToken=%@ canClear=%d>", v4, self, self->_outOfSyncToken, self->_canClearOutOfSyncToken);
}

- (BOOL)isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNRecordingSyncState isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingSyncState.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 64, 0, "invalid nil value for '%{public}s'", "localOutOfSyncToken");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (self->_canClearOutOfSyncToken)
  {
    outOfSyncToken = self->_outOfSyncToken;
    if (outOfSyncToken)
    {
      isEqual = objc_msgSend_isEqual_(outOfSyncToken, v4, v5);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

- (id)recordingSyncStateByMarkingRecordingAsOutOfSync:(BOOL)a3 withLocalOutOfSyncToken:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNRecordingSyncState recordingSyncStateByMarkingRecordingAsOutOfSync:withLocalOutOfSyncToken:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingSyncState.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 78, 0, "invalid nil value for '%{public}s'", "localOutOfSyncToken");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v7 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v15, v16);
  }

  if (!self->_canClearOutOfSyncToken)
  {
    isEqual = 0;
    goto LABEL_8;
  }

  outOfSyncToken = self->_outOfSyncToken;
  if (!outOfSyncToken)
  {
    isEqual = 1;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (isEqual)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  isEqual = objc_msgSend_isEqual_(outOfSyncToken, v6, v7);
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!self->_outOfSyncToken)
  {
    v19 = v7;
    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  v20 = [KNRecordingSyncState alloc];
  canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(v20, v21, v19, isEqual);

  return canClearOutOfSyncToken;
}

- (KNRecordingSyncState)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  if (*(a3 + 16))
  {
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(a3 + 3))
    {
      v12 = objc_msgSend_tsp_initWithMessage_(v10, v11, *(a3 + 3));
    }

    else
    {
      v12 = objc_msgSend_tsp_initWithMessage_(v10, v11, MEMORY[0x277D809E0]);
    }

    v8 = v12;
    canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(self, v13, v12, *(a3 + 32));
  }

  else
  {
    v8 = 0;
    canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(self, v6, 0, *(a3 + 32));
  }

  v14 = canClearOutOfSyncToken;

  return v14;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v11 = a4;
  outOfSyncToken = self->_outOfSyncToken;
  if (outOfSyncToken)
  {
    *(a3 + 4) |= 1u;
    v8 = *(a3 + 3);
    if (!v8)
    {
      v9 = *(a3 + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F000](v9);
      *(a3 + 3) = v8;
    }

    objc_msgSend_tsp_saveToMessage_(outOfSyncToken, v6, v8);
  }

  canClearOutOfSyncToken = self->_canClearOutOfSyncToken;
  *(a3 + 4) |= 2u;
  *(a3 + 32) = canClearOutOfSyncToken;
}

@end