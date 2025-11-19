@interface TSDMagicMoveMatch
+ (id)matchWithOutgoingObject:(id)a3 incomingObject:(id)a4 matchType:(int64_t)a5 attributeMatchPercent:(double)a6 textureDescription:(id)a7;
- (BOOL)conflictsWithMatch:(id)a3;
- (BOOL)isTextMatch;
- (id)description;
- (void)dealloc;
- (void)p_updateMagicMoveCost;
- (void)setAttributeMatchPercent:(double)a3;
@end

@implementation TSDMagicMoveMatch

- (void)setAttributeMatchPercent:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch setAttributeMatchPercent:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 773, @"attributes match percent must be between 0 and 1!"}];
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
        v4 = [MEMORY[0x277D6C290] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch isTextMatch]"];
        [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 781, @"One of these objects is text, and the other is not!"}];
      }
    }
  }

  return [(TSDMagicMoveMatchObject *)[(TSDMagicMoveMatch *)self outgoingObject] stringValue]|| [(TSDMagicMoveMatchObject *)[(TSDMagicMoveMatch *)self incomingObject] stringValue]!= 0;
}

+ (id)matchWithOutgoingObject:(id)a3 incomingObject:(id)a4 matchType:(int64_t)a5 attributeMatchPercent:(double)a6 textureDescription:(id)a7
{
  v12 = objc_alloc_init(TSDMagicMoveMatch);
  v12->_outgoingObject = a3;
  v12->_incomingObject = a4;
  [(TSDMagicMoveMatch *)v12 setMatchType:a5];
  [(TSDMagicMoveMatch *)v12 setAttributeMatchPercent:a6];
  [(TSDMagicMoveMatch *)v12 setTextureDescription:a7];
  [a3 position];
  [a4 position];
  TSUDistance();
  [(TSDMagicMoveMatch *)v12 setDistance:?];
  -[TSDMagicMoveMatch setZOrderDistance:](v12, "setZOrderDistance:", vabdd_f64([a3 zOrder], objc_msgSend(a4, "zOrder")));
  if ([(TSDMagicMoveMatch *)v12 matchType]== 1)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMagicMoveMatch matchWithOutgoingObject:incomingObject:matchType:attributeMatchPercent:textureDescription:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 808, @"Why are you creating a magic move match that can't exist? Get it together."}];
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
  v3 = [(TSDMagicMoveMatch *)self matchType];
  v4 = 0.0;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = 600000.0;
      }

      else if (v3 == 2)
      {
        v4 = 500000.0;
      }
    }

    else
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch p_updateMagicMoveCost]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 851, @"matchType is undefined!"}];
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      v4 = 200000.0;
    }

    else if (v3 == 10)
    {
      v4 = 100000.0;
    }
  }

  else if (v3 == 3)
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
    v3 = [(TSDMagicMoveMatch *)self name];
  }

  else
  {
    v4 = [(TSDMagicMoveMatch *)self matchType];
    if (v4 <= 2)
    {
      if (v4)
      {
        v10 = @"minimum";
        if (v4 != 2)
        {
          v10 = 0;
        }

        if (v4 == 1)
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
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMagicMoveMatch description]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 896, @"matchType is undefined!"}];
        v9 = @"undefined!";
      }
    }

    else
    {
      v5 = @"exact";
      v6 = @"user-defined";
      if (v4 != 10)
      {
        v6 = 0;
      }

      if (v4 != 5)
      {
        v5 = v6;
      }

      v7 = @"partial";
      v8 = @"complete";
      if (v4 != 4)
      {
        v8 = 0;
      }

      if (v4 != 3)
      {
        v7 = v8;
      }

      if (v4 <= 4)
      {
        v9 = v7;
      }

      else
      {
        v9 = v5;
      }
    }

    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"{matchType:%@, cost:%ld, \noutgoing:%@, \nincoming:%@}", v9, -[TSDMagicMoveMatch matchCost](self, "matchCost"), -[TSDMagicMoveMatch outgoingObject](self, "outgoingObject"), -[TSDMagicMoveMatch incomingObject](self, "incomingObject")];
  }

  v14.receiver = self;
  v14.super_class = TSDMagicMoveMatch;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", -[TSDMagicMoveMatch description](&v14, sel_description), v3];
}

- (BOOL)conflictsWithMatch:(id)a3
{
  if (-[TSDMagicMoveMatchObject conflictsWithMatchObject:](-[TSDMagicMoveMatch outgoingObject](self, "outgoingObject"), "conflictsWithMatchObject:", [a3 outgoingObject]))
  {
    return 1;
  }

  v6 = [(TSDMagicMoveMatch *)self incomingObject];
  v7 = [a3 incomingObject];

  return [(TSDMagicMoveMatchObject *)v6 conflictsWithMatchObject:v7];
}

@end