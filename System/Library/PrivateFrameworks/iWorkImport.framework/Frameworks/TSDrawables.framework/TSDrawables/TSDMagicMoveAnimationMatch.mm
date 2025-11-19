@interface TSDMagicMoveAnimationMatch
- (BOOL)isMatched;
- (TSDMagicMoveAnimationMatch)init;
- (TSDMagicMoveAnimationMatch)initWithCoder:(id)a3;
- (TSDMagicMoveAnimationMatch)initWithMatchType:(int64_t)a3 outgoingTexture:(id)a4 incomingTexture:(id)a5;
- (id)description;
- (id)lockCurrentMorphTexture;
- (void)addMorphTexture:(id)a3;
- (void)clearMorphTexture;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)teardown;
- (void)unlockCurrentMorphTexture;
@end

@implementation TSDMagicMoveAnimationMatch

- (TSDMagicMoveAnimationMatch)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMagicMoveAnimationMatch init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 291, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDMagicMoveAnimationMatch init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSDMagicMoveAnimationMatch)initWithMatchType:(int64_t)a3 outgoingTexture:(id)a4 incomingTexture:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = TSDMagicMoveAnimationMatch;
  v10 = [(TSDMagicMoveAnimationMatch *)&v17 init];
  if (v10)
  {
    v11 = objc_opt_new();
    morphTextureUpdateLock = v10->_morphTextureUpdateLock;
    v10->_morphTextureUpdateLock = v11;

    objc_msgSend_setMatchType_(v10, v13, a3);
    objc_msgSend_setOutgoingTexture_(v10, v14, v8);
    objc_msgSend_setIncomingTexture_(v10, v15, v9);
  }

  return v10;
}

- (void)dealloc
{
  if (!self->_hasBeenTornDown)
  {
    objc_msgSend_teardown(self, a2, v2);
  }

  v4.receiver = self;
  v4.super_class = TSDMagicMoveAnimationMatch;
  [(TSDMagicMoveAnimationMatch *)&v4 dealloc];
}

- (void)teardown
{
  if (!self->_hasBeenTornDown)
  {
    if (self->_isMorphMatch || objc_msgSend_shouldTearDownTextures(self, a2, v2))
    {
      objc_msgSend_teardown(self->_outgoingTexture, a2, v2);
      objc_msgSend_teardown(self->_incomingTexture, v4, v5);
    }

    outgoingTexture = self->_outgoingTexture;
    self->_outgoingTexture = 0;

    incomingTexture = self->_incomingTexture;
    self->_incomingTexture = 0;

    objc_msgSend_teardown(self->_morphTexture, v8, v9);
    morphTexture = self->_morphTexture;
    self->_morphTexture = 0;

    objc_msgSend_teardown(self->_morphQueuedTexture, v11, v12);
    morphQueuedTexture = self->_morphQueuedTexture;
    self->_morphQueuedTexture = 0;

    objc_msgSend_teardown(self->_morphQueuedForDeletionTexture, v14, v15);
    morphQueuedForDeletionTexture = self->_morphQueuedForDeletionTexture;
    self->_morphQueuedForDeletionTexture = 0;

    self->_hasBeenTornDown = 1;
  }
}

- (id)description
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  if (objc_msgSend_isMorphMatch(self, v5, v6))
  {
    objc_msgSend_addObject_(v4, v7, @"isMorphMatch");
  }

  if (objc_msgSend_isMatched(self, v7, v8))
  {
    objc_msgSend_addObject_(v4, v9, @"isMatched");
  }

  v11 = objc_msgSend_incomingTexture(self, v9, v10);

  if (v11)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_incomingTexture(self, v12, v13);
    v17 = objc_msgSend_stringWithFormat_(v14, v16, @"incoming:%@", v15);
    objc_msgSend_addObject_(v4, v18, v17);
  }

  v19 = objc_msgSend_outgoingTexture(self, v12, v13);

  if (v19)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_msgSend_outgoingTexture(self, v20, v21);
    v25 = objc_msgSend_stringWithFormat_(v22, v24, @"outgoing:%@", v23);
    objc_msgSend_addObject_(v4, v26, v25);
  }

  v27 = objc_msgSend_componentsJoinedByString_(v4, v20, @", ");
  v28 = MEMORY[0x277CCACA8];
  v33.receiver = self;
  v33.super_class = TSDMagicMoveAnimationMatch;
  v29 = [(TSDMagicMoveAnimationMatch *)&v33 description];
  v31 = objc_msgSend_stringWithFormat_(v28, v30, @"%@: {%@}", v29, v27);

  return v31;
}

- (BOOL)isMatched
{
  v6 = objc_msgSend_incomingTexture(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_outgoingTexture(self, v4, v5);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addMorphTexture:(id)a3
{
  v17 = a3;
  v4 = self->_morphTextureUpdateLock;
  objc_sync_enter(v4);
  morphQueuedTexture = self->_morphQueuedTexture;
  if (self->_isUsingMorphTexture || self->_didUseMorphTexture)
  {
    v6 = self->_morphQueuedTexture;
    self->_morphQueuedTexture = v17;
    v7 = v17;
    v8 = morphQueuedTexture;

    v9 = 0;
  }

  else
  {
    v9 = self->_morphTexture;
    morphTexture = self->_morphTexture;
    self->_morphTexture = v17;
    v11 = v17;
    v12 = morphQueuedTexture;

    self->_didUseMorphTexture = 0;
  }

  objc_sync_exit(v4);

  objc_msgSend_teardown(v9, v13, v14);
  objc_msgSend_teardown(morphQueuedTexture, v15, v16);
}

- (void)clearMorphTexture
{
  v3 = self->_morphTextureUpdateLock;
  objc_sync_enter(v3);
  morphTexture = self->_morphTexture;
  morphQueuedTexture = self->_morphQueuedTexture;
  self->_morphQueuedTexture = 0;
  v12 = morphTexture;
  v6 = morphQueuedTexture;

  v7 = self->_morphTexture;
  self->_morphTexture = 0;

  *&self->_isUsingMorphTexture = 0;
  objc_sync_exit(v3);

  objc_msgSend_teardown(v12, v8, v9);
  objc_msgSend_teardown(v6, v10, v11);
}

- (id)lockCurrentMorphTexture
{
  if ((objc_msgSend_isMorphMatch(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDMagicMoveAnimationMatch lockCurrentMorphTexture]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 403, 0, "Not a morph animation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = self->_morphTextureUpdateLock;
  objc_sync_enter(v12);
  if (self->_isUsingMorphTexture)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDMagicMoveAnimationMatch lockCurrentMorphTexture]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 410, 0, "Morph texture is already locked!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    morphQueuedForDeletionTexture = 0;
    v22 = 0;
  }

  else
  {
    p_morphQueuedForDeletionTexture = &self->_morphQueuedForDeletionTexture;
    morphQueuedForDeletionTexture = self->_morphQueuedForDeletionTexture;
    if (morphQueuedForDeletionTexture)
    {
      v24 = morphQueuedForDeletionTexture;
      v25 = *p_morphQueuedForDeletionTexture;
      *p_morphQueuedForDeletionTexture = 0;
    }

    if (self->_morphQueuedTexture)
    {
      objc_storeStrong(&self->_morphQueuedForDeletionTexture, self->_morphTexture);
      objc_storeStrong(&self->_morphTexture, self->_morphQueuedTexture);
      morphQueuedTexture = self->_morphQueuedTexture;
      self->_morphQueuedTexture = 0;
    }

    morphTexture = self->_morphTexture;
    if (!morphTexture)
    {
      morphTexture = self->_outgoingTexture;
    }

    v22 = morphTexture;
    self->_isUsingMorphTexture = 1;
    self->_didUseMorphTexture = self->_morphTexture != 0;
  }

  objc_sync_exit(v12);

  if (morphQueuedForDeletionTexture)
  {
    v28 = dispatch_time(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2766C5CCC;
    block[3] = &unk_27A6CC658;
    v31 = morphQueuedForDeletionTexture;
    dispatch_after(v28, MEMORY[0x277D85CD0], block);
  }

  return v22;
}

- (void)unlockCurrentMorphTexture
{
  obj = self->_morphTextureUpdateLock;
  objc_sync_enter(obj);
  if (!self->_isUsingMorphTexture)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDMagicMoveAnimationMatch unlockCurrentMorphTexture]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 443, 0, "Tried to unlock morph texture when not locked!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  self->_isUsingMorphTexture = 0;
  objc_sync_exit(obj);
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  matched = objc_msgSend_matchType(self, v4, v5);
  objc_msgSend_encodeInteger_forKey_(v17, v7, matched, @"matchType");
  v10 = objc_msgSend_outgoingTexture(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(v17, v11, v10, @"outgoingTexture");

  v14 = objc_msgSend_incomingTexture(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(v17, v15, v14, @"incomingTexture");

  objc_msgSend_encodeObject_forKey_(v17, v16, self->_morphTexture, @"_morphTexture");
}

- (TSDMagicMoveAnimationMatch)initWithCoder:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_decodeIntegerForKey_(v4, v5, @"matchType");
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"outgoingTexture");
  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"incomingTexture");
  matched = objc_msgSend_initWithMatchType_outgoingTexture_incomingTexture_(self, v13, v6, v9, v12);

  v15 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"_morphTexture");

  objc_msgSend_addMorphTexture_(matched, v18, v17);
  return matched;
}

@end