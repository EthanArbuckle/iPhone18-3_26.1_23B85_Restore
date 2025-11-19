@interface TSDMagicMoveMatch
+ (id)matchWithOutgoingObject:(id)a3 incomingObject:(id)a4 matchType:(int64_t)a5 attributeMatchPercent:(double)a6 textureDescription:(id)a7;
- (BOOL)conflictsWithMatch:(id)a3;
- (BOOL)isTextMatch;
- (id)description;
- (void)p_updateMagicMoveCost;
- (void)setAttributeMatchPercent:(double)a3;
@end

@implementation TSDMagicMoveMatch

- (void)setAttributeMatchPercent:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMagicMoveMatch setAttributeMatchPercent:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 677, 0, "attributes match percent must be between 0 and 1!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  TSUClamp();
  self->_attributeMatchPercent = v13;

  MEMORY[0x2821F9670](self, sel_p_updateMagicMoveCost, v12);
}

- (BOOL)isTextMatch
{
  v4 = objc_msgSend_outgoingObject(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_incomingObject(self, v5, v6);

    if (v8)
    {
      v9 = objc_msgSend_outgoingObject(self, v5, v6);
      v12 = objc_msgSend_stringValue(v9, v10, v11);
      v15 = objc_msgSend_incomingObject(self, v13, v14);
      v18 = objc_msgSend_stringValue(v15, v16, v17);
      v19 = v18 == 0;

      if ((v12 == 0) != v19)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDMagicMoveMatch isTextMatch]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 685, 0, "One of these objects is text, and the other is not!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }
    }
  }

  v27 = objc_msgSend_outgoingObject(self, v5, v6);
  v32 = objc_msgSend_stringValue(v27, v28, v29);
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    v34 = objc_msgSend_incomingObject(self, v30, v31);
    v37 = objc_msgSend_stringValue(v34, v35, v36);
    v33 = v37 != 0;
  }

  return v33;
}

+ (id)matchWithOutgoingObject:(id)a3 incomingObject:(id)a4 matchType:(int64_t)a5 attributeMatchPercent:(double)a6 textureDescription:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = objc_alloc_init(TSDMagicMoveMatch);
  objc_storeStrong(&v15->_outgoingObject, a3);
  objc_storeStrong(&v15->_incomingObject, a4);
  objc_msgSend_setMatchType_(v15, v16, a5);
  objc_msgSend_setAttributeMatchPercent_(v15, v17, v18, a6);
  objc_msgSend_setTextureDescription_(v15, v19, v14);

  objc_msgSend_position(v12, v20, v21);
  objc_msgSend_position(v13, v22, v23);
  TSUDistance();
  objc_msgSend_setDistance_(v15, v24, v25);
  v28 = objc_msgSend_zOrder(v12, v26, v27);
  v31 = objc_msgSend_zOrder(v13, v29, v30);
  objc_msgSend_setZOrderDistance_(v15, v32, v33, vabdd_f64(v28, v31));
  if (objc_msgSend_matchType(v15, v34, v35) == 1)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "+[TSDMagicMoveMatch matchWithOutgoingObject:incomingObject:matchType:attributeMatchPercent:textureDescription:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 712, 0, "Why are you creating a magic move match that can't exist? Get it together.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
  }

  return v15;
}

- (void)p_updateMagicMoveCost
{
  matched = objc_msgSend_matchType(self, a2, v2);
  v7 = 0.0;
  if (matched <= 2)
  {
    if (matched)
    {
      if (matched == 1)
      {
        v7 = 600000.0;
      }

      else if (matched == 2)
      {
        v7 = 500000.0;
      }
    }

    else
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDMagicMoveMatch p_updateMagicMoveCost]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 747, 0, "matchType is undefined!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }
  }

  else if (matched > 4)
  {
    if (matched == 5)
    {
      v7 = 200000.0;
    }

    else if (matched == 10)
    {
      v7 = 100000.0;
    }
  }

  else if (matched == 3)
  {
    v7 = 400000.0;
  }

  else
  {
    v7 = 300000.0;
  }

  objc_msgSend_attributeMatchPercent(self, v5, v6);
  v16 = v7 + (2.0 - v15) * 10000.0;
  v19 = objc_msgSend_stringValue(self->_outgoingObject, v17, v18);
  if (objc_msgSend_length(v19, v20, v21) != 1)
  {

    goto LABEL_20;
  }

  v24 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v22, v23);
  v27 = objc_msgSend_stringValue(self->_outgoingObject, v25, v26);
  v29 = objc_msgSend_characterAtIndex_(v27, v28, 0);
  IsMember = objc_msgSend_characterIsMember_(v24, v30, v29);

  if (!IsMember)
  {
LABEL_20:
    objc_msgSend_distance(self, v32, v33);
    v37 = v16 + v38;
    goto LABEL_21;
  }

  objc_msgSend_distance(self, v32, v33);
  v37 = v16 + v36 * 10.0;
LABEL_21:
  objc_msgSend_zOrderDistance(self, v34, v35);
  self->_matchCost = (v37 + v39);
}

- (id)description
{
  v4 = objc_msgSend_name(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_name(self, v5, v6);
  }

  else
  {
    matched = objc_msgSend_matchType(self, v5, v6);
    v11 = 0;
    if (matched <= 2)
    {
      if (matched)
      {
        if (matched == 1)
        {
          v11 = @"none";
        }

        else if (matched == 2)
        {
          v11 = @"minimum";
        }
      }

      else
      {
        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDMagicMoveMatch description]");
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 800, 0, "matchType is undefined!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
        v11 = @"undefined!";
      }
    }

    else if (matched > 4)
    {
      if (matched == 5)
      {
        v11 = @"exact";
      }

      else if (matched == 10)
      {
        v11 = @"user-defined";
      }
    }

    else if (matched == 3)
    {
      v11 = @"partial";
    }

    else
    {
      v11 = @"complete";
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_matchCost(self, v9, v10);
    v23 = objc_msgSend_outgoingObject(self, v21, v22);
    v26 = objc_msgSend_incomingObject(self, v24, v25);
    v7 = objc_msgSend_stringWithFormat_(v19, v27, @"{matchType:%@, cost:%ld,\noutgoing:%@,\nincoming:%@}", v11, v20, v23, v26);
  }

  v28 = MEMORY[0x277CCACA8];
  v33.receiver = self;
  v33.super_class = TSDMagicMoveMatch;
  v29 = [(TSDMagicMoveMatch *)&v33 description];
  v31 = objc_msgSend_stringWithFormat_(v28, v30, @"%@: %@", v29, v7);

  return v31;
}

- (BOOL)conflictsWithMatch:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_outgoingObject(self, v5, v6);
  v10 = objc_msgSend_outgoingObject(v4, v8, v9);
  if (objc_msgSend_conflictsWithMatchObject_(v7, v11, v10))
  {
    matched = 1;
  }

  else
  {
    v15 = objc_msgSend_incomingObject(self, v12, v13);
    v18 = objc_msgSend_incomingObject(v4, v16, v17);
    matched = objc_msgSend_conflictsWithMatchObject_(v15, v19, v18);
  }

  return matched;
}

@end