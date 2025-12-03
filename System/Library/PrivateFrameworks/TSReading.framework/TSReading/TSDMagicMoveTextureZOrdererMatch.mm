@interface TSDMagicMoveTextureZOrdererMatch
- (BOOL)intersectsZOrdererMatch:(id)match;
- (BOOL)intersectsZOrdererMatch:(id)match withAttemptedZIndex:(int64_t)index;
- (TSDMagicMoveTextureZOrdererMatch)init;
- (TSDMagicMoveTextureZOrdererMatch)initWithAnimationMatch:(id)match;
- (double)intersectionPercentWithZOrdererMatch:(id)match;
- (id)description;
- (void)dealloc;
@end

@implementation TSDMagicMoveTextureZOrdererMatch

- (TSDMagicMoveTextureZOrdererMatch)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrdererMatch init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 994, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSDMagicMoveTextureZOrdererMatch init]"), 0}]);
}

- (TSDMagicMoveTextureZOrdererMatch)initWithAnimationMatch:(id)match
{
  v12.receiver = self;
  v12.super_class = TSDMagicMoveTextureZOrdererMatch;
  v4 = [(TSDMagicMoveTextureZOrdererMatch *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_outgoingZIndex = -1;
    v4->_incomingZIndex = -1;
    outgoingTexture = [match outgoingTexture];
    incomingTexture = [match incomingTexture];
    if (outgoingTexture | incomingTexture)
    {
      v5->_animationMatch = match;
      if (outgoingTexture)
      {
        v5->_outgoingTexture = outgoingTexture;
        v5->_outgoingZIndex = [outgoingTexture textureZOrder];
      }

      if (incomingTexture)
      {
        v5->_incomingTexture = incomingTexture;
        v5->_incomingZIndex = [incomingTexture textureZOrder];
        if (!outgoingTexture)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrdererMatch initWithAnimationMatch:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1005, @"incomingTexture and outgoingTexture are both nil!"}];
      v5->_animationMatch = match;
    }

    v5->_incomingTexture = outgoingTexture;
    if (!outgoingTexture)
    {
LABEL_10:
      v5->_outgoingTexture = incomingTexture;
    }

LABEL_11:
    incomingZIndex = v5->_incomingZIndex;
    v5->_isOutgoingZIndexUnmatched = v5->_outgoingZIndex == -1;
    v5->_isIncomingZIndexUnmatched = incomingZIndex == -1;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMagicMoveTextureZOrdererMatch;
  [(TSDMagicMoveTextureZOrdererMatch *)&v3 dealloc];
}

- (BOOL)intersectsZOrdererMatch:(id)match withAttemptedZIndex:(int64_t)index
{
  if ([match outgoingZIndex] == -1 || objc_msgSend(match, "incomingZIndex") == -1)
  {
    return 0;
  }

  outgoingZIndex = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingZIndex];
  v8 = 2 * index - 1;
  if (outgoingZIndex >= 0)
  {
    v9 = 2 * outgoingZIndex;
  }

  else
  {
    v9 = v8;
  }

  incomingZIndex = [(TSDMagicMoveTextureZOrdererMatch *)self incomingZIndex];
  if (incomingZIndex >= 0)
  {
    v8 = 2 * incomingZIndex;
  }

  outgoingZIndex2 = [match outgoingZIndex];
  incomingZIndex2 = [match incomingZIndex];
  v13 = v8 > 2 * incomingZIndex2;
  if (v8 < 2 * incomingZIndex2)
  {
    v13 = -1;
  }

  v14 = v9 > 2 * outgoingZIndex2;
  if (v9 < 2 * outgoingZIndex2)
  {
    v14 = -1;
  }

  v15 = v14 != v13 && v9 != 2 * outgoingZIndex2;
  return v8 != 2 * incomingZIndex2 && v15;
}

- (BOOL)intersectsZOrdererMatch:(id)match
{
  if (-[TSDMagicMoveTextureZOrdererMatch outgoingZIndex](self, "outgoingZIndex") == -1 || -[TSDMagicMoveTextureZOrdererMatch incomingZIndex](self, "incomingZIndex") == -1 || [match outgoingZIndex] == -1 || objc_msgSend(match, "incomingZIndex") == -1)
  {
    return 0;
  }

  outgoingZIndex = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingZIndex];
  outgoingZIndex2 = [match outgoingZIndex];
  if (outgoingZIndex < outgoingZIndex2)
  {
    v7 = -1;
  }

  else
  {
    v7 = outgoingZIndex > outgoingZIndex2;
  }

  incomingZIndex = [(TSDMagicMoveTextureZOrdererMatch *)self incomingZIndex];
  incomingZIndex2 = [match incomingZIndex];
  v10 = incomingZIndex > incomingZIndex2;
  if (incomingZIndex < incomingZIndex2)
  {
    v10 = -1;
  }

  return v7 != v10;
}

- (double)intersectionPercentWithZOrdererMatch:(id)match
{
  outgoingZIndex = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingZIndex];
  outgoingZIndex2 = [match outgoingZIndex];
  if (outgoingZIndex - outgoingZIndex2 >= 0)
  {
    v7 = outgoingZIndex - outgoingZIndex2;
  }

  else
  {
    v7 = outgoingZIndex2 - outgoingZIndex;
  }

  incomingZIndex = [(TSDMagicMoveTextureZOrdererMatch *)self incomingZIndex];
  incomingZIndex2 = [match incomingZIndex];
  v10 = incomingZIndex - incomingZIndex2;
  if (incomingZIndex - incomingZIndex2 < 0)
  {
    v10 = incomingZIndex2 - incomingZIndex;
  }

  return v7 / (v10 + v7);
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  outgoingTexture = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingTexture];
  if (!outgoingTexture)
  {
    outgoingTexture = [(TSDMagicMoveTextureZOrdererMatch *)self incomingTexture];
  }

  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleTextures = [(TSDTextureSet *)outgoingTexture visibleTextures];
  v6 = [(NSArray *)visibleTextures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(visibleTextures);
        }

        [v4 addObject:{TSDStringFromTextureType(objc_msgSend(*(*(&v13 + 1) + 8 * v9++), "textureType"))}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)visibleTextures countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v4 componentsJoinedByString:{@", "}];

  v12.receiver = self;
  v12.super_class = TSDMagicMoveTextureZOrdererMatch;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %d->%d (%@)", -[TSDMagicMoveTextureZOrdererMatch description](&v12, sel_description), -[TSDMagicMoveTextureZOrdererMatch outgoingZIndex](self, "outgoingZIndex"), -[TSDMagicMoveTextureZOrdererMatch incomingZIndex](self, "incomingZIndex"), v10];
}

@end