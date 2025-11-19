@interface TSDMagicMoveTextureZOrdererMatch
- (BOOL)intersectsZOrdererMatch:(id)a3;
- (BOOL)intersectsZOrdererMatch:(id)a3 withAttemptedZIndex:(int64_t)a4;
- (TSDMagicMoveTextureZOrdererMatch)init;
- (TSDMagicMoveTextureZOrdererMatch)initWithAnimationMatch:(id)a3;
- (double)intersectionPercentWithZOrdererMatch:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation TSDMagicMoveTextureZOrdererMatch

- (TSDMagicMoveTextureZOrdererMatch)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrdererMatch init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 994, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSDMagicMoveTextureZOrdererMatch init]"), 0}]);
}

- (TSDMagicMoveTextureZOrdererMatch)initWithAnimationMatch:(id)a3
{
  v12.receiver = self;
  v12.super_class = TSDMagicMoveTextureZOrdererMatch;
  v4 = [(TSDMagicMoveTextureZOrdererMatch *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_outgoingZIndex = -1;
    v4->_incomingZIndex = -1;
    v6 = [a3 outgoingTexture];
    v7 = [a3 incomingTexture];
    if (v6 | v7)
    {
      v5->_animationMatch = a3;
      if (v6)
      {
        v5->_outgoingTexture = v6;
        v5->_outgoingZIndex = [v6 textureZOrder];
      }

      if (v7)
      {
        v5->_incomingTexture = v7;
        v5->_incomingZIndex = [v7 textureZOrder];
        if (!v6)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveTextureZOrdererMatch initWithAnimationMatch:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 1005, @"incomingTexture and outgoingTexture are both nil!"}];
      v5->_animationMatch = a3;
    }

    v5->_incomingTexture = v6;
    if (!v6)
    {
LABEL_10:
      v5->_outgoingTexture = v7;
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

- (BOOL)intersectsZOrdererMatch:(id)a3 withAttemptedZIndex:(int64_t)a4
{
  if ([a3 outgoingZIndex] == -1 || objc_msgSend(a3, "incomingZIndex") == -1)
  {
    return 0;
  }

  v7 = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingZIndex];
  v8 = 2 * a4 - 1;
  if (v7 >= 0)
  {
    v9 = 2 * v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(TSDMagicMoveTextureZOrdererMatch *)self incomingZIndex];
  if (v10 >= 0)
  {
    v8 = 2 * v10;
  }

  v11 = [a3 outgoingZIndex];
  v12 = [a3 incomingZIndex];
  v13 = v8 > 2 * v12;
  if (v8 < 2 * v12)
  {
    v13 = -1;
  }

  v14 = v9 > 2 * v11;
  if (v9 < 2 * v11)
  {
    v14 = -1;
  }

  v15 = v14 != v13 && v9 != 2 * v11;
  return v8 != 2 * v12 && v15;
}

- (BOOL)intersectsZOrdererMatch:(id)a3
{
  if (-[TSDMagicMoveTextureZOrdererMatch outgoingZIndex](self, "outgoingZIndex") == -1 || -[TSDMagicMoveTextureZOrdererMatch incomingZIndex](self, "incomingZIndex") == -1 || [a3 outgoingZIndex] == -1 || objc_msgSend(a3, "incomingZIndex") == -1)
  {
    return 0;
  }

  v5 = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingZIndex];
  v6 = [a3 outgoingZIndex];
  if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5 > v6;
  }

  v8 = [(TSDMagicMoveTextureZOrdererMatch *)self incomingZIndex];
  v9 = [a3 incomingZIndex];
  v10 = v8 > v9;
  if (v8 < v9)
  {
    v10 = -1;
  }

  return v7 != v10;
}

- (double)intersectionPercentWithZOrdererMatch:(id)a3
{
  v5 = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingZIndex];
  v6 = [a3 outgoingZIndex];
  if (v5 - v6 >= 0)
  {
    v7 = v5 - v6;
  }

  else
  {
    v7 = v6 - v5;
  }

  v8 = [(TSDMagicMoveTextureZOrdererMatch *)self incomingZIndex];
  v9 = [a3 incomingZIndex];
  v10 = v8 - v9;
  if (v8 - v9 < 0)
  {
    v10 = v9 - v8;
  }

  return v7 / (v10 + v7);
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(TSDMagicMoveTextureZOrdererMatch *)self outgoingTexture];
  if (!v3)
  {
    v3 = [(TSDMagicMoveTextureZOrdererMatch *)self incomingTexture];
  }

  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TSDTextureSet *)v3 visibleTextures];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 addObject:{TSDStringFromTextureType(objc_msgSend(*(*(&v13 + 1) + 8 * v9++), "textureType"))}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v4 componentsJoinedByString:{@", "}];

  v12.receiver = self;
  v12.super_class = TSDMagicMoveTextureZOrdererMatch;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %d->%d (%@)", -[TSDMagicMoveTextureZOrdererMatch description](&v12, sel_description), -[TSDMagicMoveTextureZOrdererMatch outgoingZIndex](self, "outgoingZIndex"), -[TSDMagicMoveTextureZOrdererMatch incomingZIndex](self, "incomingZIndex"), v10];
}

@end