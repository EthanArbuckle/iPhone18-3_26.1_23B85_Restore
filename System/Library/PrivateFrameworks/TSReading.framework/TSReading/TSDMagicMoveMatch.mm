@interface TSDMagicMoveMatch
+ (id)matchWithOutgoingObject:(id)object incomingObject:(id)incomingObject matchType:(int64_t)type attributeMatchPercent:(double)percent textureDescription:(id)description;
- (BOOL)conflictsWithMatch:(id)match;
- (BOOL)isTextMatch;
- (id)description;
- (void)dealloc;
- (void)p_updateMagicMoveCost;
- (void)setAttributeMatchPercent:(double)percent;
@end

@implementation TSDMagicMoveMatch

- (void)setAttributeMatchPercent:(double)percent
{
  if (percent < 0.0 || percent > 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch setAttributeMatchPercent:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 773, @"attributes match percent must be between 0 and 1!"}];
  }

  TSUClamp();
  self->_attributeMatchPercent = v7;

  [(TSDMagicMoveMatch *)self p_updateMagicMoveCost];
}

- (BOOL)isTextMatch
{
  if ([(TSDMagicMoveMatch *)self outgoingObject])
  {
    if ([(TSDMagicMoveMatch *)self incomingObject])
    {
      v3 = [(TSDMagicMoveMatchObject *)[(TSDMagicMoveMatch *)self outgoingObject] stringValue]== 0;
      if (((v3 ^ ([(TSDMagicMoveMatchObject *)[(TSDMagicMoveMatch *)self incomingObject] stringValue]!= 0)) & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch isTextMatch]"];
        [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 781, @"One of these objects is text, and the other is not!"}];
      }
    }
  }

  return [(TSDMagicMoveMatchObject *)[(TSDMagicMoveMatch *)self outgoingObject] stringValue]|| [(TSDMagicMoveMatchObject *)[(TSDMagicMoveMatch *)self incomingObject] stringValue]!= 0;
}

+ (id)matchWithOutgoingObject:(id)object incomingObject:(id)incomingObject matchType:(int64_t)type attributeMatchPercent:(double)percent textureDescription:(id)description
{
  v12 = objc_alloc_init(TSDMagicMoveMatch);
  v12->_outgoingObject = object;
  v12->_incomingObject = incomingObject;
  [(TSDMagicMoveMatch *)v12 setMatchType:type];
  [(TSDMagicMoveMatch *)v12 setAttributeMatchPercent:percent];
  [(TSDMagicMoveMatch *)v12 setTextureDescription:description];
  [object position];
  [incomingObject position];
  TSUDistance();
  [(TSDMagicMoveMatch *)v12 setDistance:?];
  -[TSDMagicMoveMatch setZOrderDistance:](v12, "setZOrderDistance:", vabdd_f64([object zOrder], objc_msgSend(incomingObject, "zOrder")));
  if ([(TSDMagicMoveMatch *)v12 matchType]== 1)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMagicMoveMatch matchWithOutgoingObject:incomingObject:matchType:attributeMatchPercent:textureDescription:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 808, @"Why are you creating a magic move match that can't exist? Get it together."}];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMagicMoveMatch;
  [(TSDMagicMoveMatch *)&v3 dealloc];
}

- (void)p_updateMagicMoveCost
{
  matchType = [(TSDMagicMoveMatch *)self matchType];
  v4 = 0.0;
  if (matchType <= 2)
  {
    if (matchType)
    {
      if (matchType == 1)
      {
        v4 = 600000.0;
      }

      else if (matchType == 2)
      {
        v4 = 500000.0;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch p_updateMagicMoveCost]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 851, @"matchType is undefined!"}];
    }
  }

  else if (matchType > 4)
  {
    if (matchType == 5)
    {
      v4 = 200000.0;
    }

    else if (matchType == 10)
    {
      v4 = 100000.0;
    }
  }

  else if (matchType == 3)
  {
    v4 = 400000.0;
  }

  else
  {
    v4 = 300000.0;
  }

  [(TSDMagicMoveMatch *)self attributeMatchPercent];
  v8 = v4 + (2.0 - v7) * 10000.0;
  [(TSDMagicMoveMatch *)self distance];
  v10 = v9 + v8;
  [(TSDMagicMoveMatch *)self zOrderDistance];
  self->_matchCost = (v11 + v10);
}

- (id)description
{
  if ([(TSDMagicMoveMatch *)self name])
  {
    name = [(TSDMagicMoveMatch *)self name];
  }

  else
  {
    matchType = [(TSDMagicMoveMatch *)self matchType];
    if (matchType <= 2)
    {
      if (matchType)
      {
        v10 = @"minimum";
        if (matchType != 2)
        {
          v10 = 0;
        }

        if (matchType == 1)
        {
          v9 = @"none";
        }

        else
        {
          v9 = v10;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch description]"];
        [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 896, @"matchType is undefined!"}];
        v9 = @"undefined!";
      }
    }

    else
    {
      v5 = @"exact";
      v6 = @"user-defined";
      if (matchType != 10)
      {
        v6 = 0;
      }

      if (matchType != 5)
      {
        v5 = v6;
      }

      v7 = @"partial";
      v8 = @"complete";
      if (matchType != 4)
      {
        v8 = 0;
      }

      if (matchType != 3)
      {
        v7 = v8;
      }

      if (matchType <= 4)
      {
        v9 = v7;
      }

      else
      {
        v9 = v5;
      }
    }

    name = [MEMORY[0x277CCACA8] stringWithFormat:@"{matchType:%@, cost:%ld, \noutgoing:%@, \nincoming:%@}", v9, -[TSDMagicMoveMatch matchCost](self, "matchCost"), -[TSDMagicMoveMatch outgoingObject](self, "outgoingObject"), -[TSDMagicMoveMatch incomingObject](self, "incomingObject")];
  }

  v14.receiver = self;
  v14.super_class = TSDMagicMoveMatch;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", -[TSDMagicMoveMatch description](&v14, sel_description), name];
}

- (BOOL)conflictsWithMatch:(id)match
{
  if (-[TSDMagicMoveMatchObject conflictsWithMatchObject:](-[TSDMagicMoveMatch outgoingObject](self, "outgoingObject"), "conflictsWithMatchObject:", [match outgoingObject]))
  {
    return 1;
  }

  incomingObject = [(TSDMagicMoveMatch *)self incomingObject];
  incomingObject2 = [match incomingObject];

  return [(TSDMagicMoveMatchObject *)incomingObject conflictsWithMatchObject:incomingObject2];
}

@end