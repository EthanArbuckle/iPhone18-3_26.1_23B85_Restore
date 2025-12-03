@interface TSDMagicMoveAnimationMatch
- (BOOL)isMatched;
- (TSDMagicMoveAnimationMatch)init;
- (TSDMagicMoveAnimationMatch)initWithMatchType:(int64_t)type outgoingTexture:(id)texture incomingTexture:(id)incomingTexture;
- (id)description;
- (id)lockCurrentMorphTexture;
- (void)addMorphTexture:(id)texture;
- (void)clearMorphTexture;
- (void)dealloc;
- (void)teardown;
- (void)unlockCurrentMorphTexture;
@end

@implementation TSDMagicMoveAnimationMatch

- (TSDMagicMoveAnimationMatch)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveAnimationMatch init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 392, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSDMagicMoveAnimationMatch init]"), 0}]);
}

- (TSDMagicMoveAnimationMatch)initWithMatchType:(int64_t)type outgoingTexture:(id)texture incomingTexture:(id)incomingTexture
{
  v10.receiver = self;
  v10.super_class = TSDMagicMoveAnimationMatch;
  v8 = [(TSDMagicMoveAnimationMatch *)&v10 init];
  if (v8)
  {
    v8->_morphTextureUpdateLock = objc_opt_new();
    [(TSDMagicMoveAnimationMatch *)v8 setMatchType:type];
    [(TSDMagicMoveAnimationMatch *)v8 setOutgoingTexture:texture];
    [(TSDMagicMoveAnimationMatch *)v8 setIncomingTexture:incomingTexture];
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_hasBeenTornDown)
  {
    [(TSDMagicMoveAnimationMatch *)self teardown];
  }

  incomingTexture = self->_incomingTexture;
  if (incomingTexture)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveAnimationMatch dealloc]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 416, @"expected nil value for '%s'", "_incomingTexture"}];
    incomingTexture = self->_incomingTexture;
  }

  outgoingTexture = self->_outgoingTexture;
  if (outgoingTexture)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveAnimationMatch dealloc]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 418, @"expected nil value for '%s'", "_outgoingTexture"}];
    outgoingTexture = self->_outgoingTexture;
  }

  v9.receiver = self;
  v9.super_class = TSDMagicMoveAnimationMatch;
  [(TSDMagicMoveAnimationMatch *)&v9 dealloc];
}

- (void)teardown
{
  if (!self->_hasBeenTornDown)
  {
    if (self->_isMorphMatch || [(TSDMagicMoveAnimationMatch *)self shouldTearDownTextures])
    {
      [(TSDTextureSet *)self->_outgoingTexture releaseSingleTextures];
      [(TSDTextureSet *)self->_outgoingTexture teardown];

      self->_outgoingTexture = 0;
      [(TSDTextureSet *)self->_incomingTexture releaseSingleTextures];
      [(TSDTextureSet *)self->_incomingTexture teardown];
    }

    else
    {

      self->_outgoingTexture = 0;
    }

    self->_incomingTexture = 0;
    [(TSDTextureSet *)self->_morphTexture releaseSingleTextures];
    [(TSDTextureSet *)self->_morphTexture teardown];

    self->_morphTexture = 0;
    [(TSDTextureSet *)self->_morphQueuedTexture releaseSingleTextures];
    [(TSDTextureSet *)self->_morphQueuedTexture teardown];

    self->_morphQueuedTexture = 0;
    [(TSDTextureSet *)self->_morphQueuedForDeletionTexture releaseSingleTextures];
    [(TSDTextureSet *)self->_morphQueuedForDeletionTexture teardown];

    self->_morphQueuedForDeletionTexture = 0;
    self->_hasBeenTornDown = 1;
  }
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(TSDMagicMoveAnimationMatch *)self isMorphMatch])
  {
    [array addObject:@"isMorphMatch"];
  }

  if ([(TSDMagicMoveAnimationMatch *)self isMatched])
  {
    [array addObject:@"isMatched"];
  }

  if ([(TSDMagicMoveAnimationMatch *)self incomingTexture])
  {
    [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"incoming:%@", -[TSDMagicMoveAnimationMatch incomingTexture](self, "incomingTexture"))}];
  }

  if ([(TSDMagicMoveAnimationMatch *)self outgoingTexture])
  {
    [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"outgoing:%@", -[TSDMagicMoveAnimationMatch outgoingTexture](self, "outgoingTexture"))}];
  }

  v4 = [array componentsJoinedByString:{@", "}];
  v6.receiver = self;
  v6.super_class = TSDMagicMoveAnimationMatch;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: {%@}", -[TSDMagicMoveAnimationMatch description](&v6, sel_description), v4];
}

- (BOOL)isMatched
{
  incomingTexture = [(TSDMagicMoveAnimationMatch *)self incomingTexture];
  if (incomingTexture)
  {
    LOBYTE(incomingTexture) = [(TSDMagicMoveAnimationMatch *)self outgoingTexture]!= 0;
  }

  return incomingTexture;
}

- (void)addMorphTexture:(id)texture
{
  morphTextureUpdateLock = self->_morphTextureUpdateLock;
  objc_sync_enter(morphTextureUpdateLock);
  morphQueuedTexture = self->_morphQueuedTexture;
  if (self->_isUsingMorphTexture || self->_didUseMorphTexture)
  {
    morphTexture = 0;
    self->_morphQueuedTexture = texture;
  }

  else
  {
    morphTexture = self->_morphTexture;
    self->_morphTexture = texture;
    self->_didUseMorphTexture = 0;
  }

  objc_sync_exit(morphTextureUpdateLock);
  [(TSDTextureSet *)morphTexture releaseSingleTextures];
  [(TSDTextureSet *)morphTexture teardown];

  [(TSDTextureSet *)morphQueuedTexture releaseSingleTextures];
  [(TSDTextureSet *)morphQueuedTexture teardown];
}

- (void)clearMorphTexture
{
  morphTextureUpdateLock = self->_morphTextureUpdateLock;
  objc_sync_enter(morphTextureUpdateLock);
  morphTexture = self->_morphTexture;
  morphQueuedTexture = self->_morphQueuedTexture;
  *&self->_isUsingMorphTexture = 0;
  self->_morphTexture = 0;
  self->_morphQueuedTexture = 0;
  objc_sync_exit(morphTextureUpdateLock);
  [(TSDTextureSet *)morphTexture releaseSingleTextures];
  [(TSDTextureSet *)morphTexture teardown];

  [(TSDTextureSet *)morphQueuedTexture releaseSingleTextures];
  [(TSDTextureSet *)morphQueuedTexture teardown];
}

- (id)lockCurrentMorphTexture
{
  if (![(TSDMagicMoveAnimationMatch *)self isMorphMatch])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveAnimationMatch lockCurrentMorphTexture]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 522, @"Not a morph animation!"}];
  }

  morphTextureUpdateLock = self->_morphTextureUpdateLock;
  objc_sync_enter(morphTextureUpdateLock);
  if (self->_isUsingMorphTexture)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveAnimationMatch lockCurrentMorphTexture]"];
    [currentHandler2 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 529, @"Morph texture is already locked!"}];
    morphTexture = 0;
  }

  else
  {
    if (self->_morphQueuedForDeletionTexture)
    {
      self->_morphQueuedForDeletionTexture = 0;
    }

    morphTexture = self->_morphTexture;
    morphQueuedTexture = self->_morphQueuedTexture;
    if (morphQueuedTexture)
    {
      self->_morphQueuedTexture = 0;
      self->_morphQueuedForDeletionTexture = morphTexture;
      v10 = 1;
      morphTexture = morphQueuedTexture;
      self->_morphTexture = morphQueuedTexture;
    }

    else if (morphTexture)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      morphTexture = self->_outgoingTexture;
    }

    self->_isUsingMorphTexture = 1;
    self->_didUseMorphTexture = v10;
  }

  objc_sync_exit(morphTextureUpdateLock);
  return morphTexture;
}

- (void)unlockCurrentMorphTexture
{
  morphTextureUpdateLock = self->_morphTextureUpdateLock;
  objc_sync_enter(morphTextureUpdateLock);
  if (!self->_isUsingMorphTexture)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveAnimationMatch unlockCurrentMorphTexture]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 554, @"Tried to unlock morph texture when not locked!"}];
  }

  self->_isUsingMorphTexture = 0;

  objc_sync_exit(morphTextureUpdateLock);
}

@end