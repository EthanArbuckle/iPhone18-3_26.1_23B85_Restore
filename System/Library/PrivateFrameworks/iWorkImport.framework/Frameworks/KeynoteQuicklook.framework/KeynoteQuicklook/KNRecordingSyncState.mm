@interface KNRecordingSyncState
- (BOOL)isEqual:(id)equal;
- (BOOL)isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:(id)token;
- (KNRecordingSyncState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNRecordingSyncState)initWithOutOfSyncToken:(id)token canClearOutOfSyncToken:(BOOL)syncToken;
- (id)description;
- (id)recordingSyncStateByMarkingRecordingAsOutOfSync:(BOOL)sync withLocalOutOfSyncToken:(id)token;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation KNRecordingSyncState

- (KNRecordingSyncState)initWithOutOfSyncToken:(id)token canClearOutOfSyncToken:(BOOL)syncToken
{
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = KNRecordingSyncState;
  v9 = [(KNRecordingSyncState *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(tokenCopy, v7, v8);
    outOfSyncToken = v9->_outOfSyncToken;
    v9->_outOfSyncToken = v10;

    v9->_canClearOutOfSyncToken = syncToken;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
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

- (BOOL)isRecordingLocallyOutOfSyncUsingLocalOutOfSyncToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
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
      isEqual = objc_msgSend_isEqual_(outOfSyncToken, v4, tokenCopy);
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

- (id)recordingSyncStateByMarkingRecordingAsOutOfSync:(BOOL)sync withLocalOutOfSyncToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNRecordingSyncState recordingSyncStateByMarkingRecordingAsOutOfSync:withLocalOutOfSyncToken:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingSyncState.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 78, 0, "invalid nil value for '%{public}s'", "localOutOfSyncToken");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    tokenCopy = objc_msgSend_UUID(MEMORY[0x277CCAD78], v15, v16);
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
    if (sync)
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

  isEqual = objc_msgSend_isEqual_(outOfSyncToken, v6, tokenCopy);
  if (!sync)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!self->_outOfSyncToken)
  {
    v19 = tokenCopy;
    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  v20 = [KNRecordingSyncState alloc];
  canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(v20, v21, v19, isEqual);

  return canClearOutOfSyncToken;
}

- (KNRecordingSyncState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(archive + 3))
    {
      v12 = objc_msgSend_tsp_initWithMessage_(v10, v11, *(archive + 3));
    }

    else
    {
      v12 = objc_msgSend_tsp_initWithMessage_(v10, v11, MEMORY[0x277D809E0]);
    }

    v8 = v12;
    canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(self, v13, v12, *(archive + 32));
  }

  else
  {
    v8 = 0;
    canClearOutOfSyncToken = objc_msgSend_initWithOutOfSyncToken_canClearOutOfSyncToken_(self, v6, 0, *(archive + 32));
  }

  v14 = canClearOutOfSyncToken;

  return v14;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  outOfSyncToken = self->_outOfSyncToken;
  if (outOfSyncToken)
  {
    *(archive + 4) |= 1u;
    v8 = *(archive + 3);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F000](v9);
      *(archive + 3) = v8;
    }

    objc_msgSend_tsp_saveToMessage_(outOfSyncToken, v6, v8);
  }

  canClearOutOfSyncToken = self->_canClearOutOfSyncToken;
  *(archive + 4) |= 2u;
  *(archive + 32) = canClearOutOfSyncToken;
}

@end