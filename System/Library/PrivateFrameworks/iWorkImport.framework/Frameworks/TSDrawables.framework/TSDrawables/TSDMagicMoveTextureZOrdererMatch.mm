@interface TSDMagicMoveTextureZOrdererMatch
- (BOOL)intersectsZOrdererMatch:(id)match;
- (BOOL)intersectsZOrdererMatch:(id)match withAttemptedZIndex:(int64_t)index;
- (TSDMagicMoveTextureZOrdererMatch)init;
- (TSDMagicMoveTextureZOrdererMatch)initWithAnimationMatch:(id)match;
- (double)intersectionPercentWithZOrdererMatch:(id)match;
- (id)description;
@end

@implementation TSDMagicMoveTextureZOrdererMatch

- (TSDMagicMoveTextureZOrdererMatch)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMagicMoveTextureZOrdererMatch init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 886, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDMagicMoveTextureZOrdererMatch init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSDMagicMoveTextureZOrdererMatch)initWithAnimationMatch:(id)match
{
  matchCopy = match;
  v28.receiver = self;
  v28.super_class = TSDMagicMoveTextureZOrdererMatch;
  v6 = [(TSDMagicMoveTextureZOrdererMatch *)&v28 init];
  v9 = v6;
  if (v6)
  {
    v6->_outgoingZIndex = -1;
    v6->_incomingZIndex = -1;
    v10 = objc_msgSend_outgoingTexture(matchCopy, v7, v8);
    v14 = objc_msgSend_incomingTexture(matchCopy, v11, v12);
    if (v10 | v14)
    {
      objc_storeStrong(&v9->_animationMatch, match);
      if (v10)
      {
        objc_storeStrong(&v9->_outgoingTexture, v10);
        v9->_outgoingZIndex = objc_msgSend_textureZOrder(v10, v15, v16);
      }

      if (v14)
      {
        objc_storeStrong(&v9->_incomingTexture, v14);
        v9->_incomingZIndex = objc_msgSend_textureZOrder(v14, v17, v18);
        if (!v10)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDMagicMoveTextureZOrdererMatch initWithAnimationMatch:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMagicMove.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 897, 0, "incomingTexture and outgoingTexture are both nil!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      objc_storeStrong(&v9->_animationMatch, match);
    }

    objc_storeStrong(&v9->_incomingTexture, v10);
    if (!v10)
    {
LABEL_10:
      objc_storeStrong(&v9->_outgoingTexture, v14);
    }

LABEL_11:
    incomingZIndex = v9->_incomingZIndex;
    v9->_isOutgoingZIndexUnmatched = v9->_outgoingZIndex == -1;
    v9->_isIncomingZIndexUnmatched = incomingZIndex == -1;
  }

  return v9;
}

- (BOOL)intersectsZOrdererMatch:(id)match withAttemptedZIndex:(int64_t)index
{
  matchCopy = match;
  if (objc_msgSend_outgoingZIndex(matchCopy, v7, v8) == -1 || objc_msgSend_incomingZIndex(matchCopy, v9, v10) == -1)
  {
    v28 = 0;
  }

  else
  {
    v13 = objc_msgSend_outgoingZIndex(self, v11, v12);
    v16 = 2 * index - 1;
    if (v13 >= 0)
    {
      v17 = 2 * v13;
    }

    else
    {
      v17 = v16;
    }

    v18 = objc_msgSend_incomingZIndex(self, v14, v15);
    if (v18 >= 0)
    {
      v16 = 2 * v18;
    }

    v21 = objc_msgSend_outgoingZIndex(matchCopy, v19, v20);
    v24 = objc_msgSend_incomingZIndex(matchCopy, v22, v23);
    v25 = v16 > 2 * v24;
    if (v16 < 2 * v24)
    {
      v25 = -1;
    }

    v26 = v17 > 2 * v21;
    if (v17 < 2 * v21)
    {
      v26 = -1;
    }

    v27 = v26 != v25 && v17 != 2 * v21;
    v28 = v16 != 2 * v24 && v27;
  }

  return v28;
}

- (BOOL)intersectsZOrdererMatch:(id)match
{
  matchCopy = match;
  v7 = matchCopy;
  if (self->_outgoingZIndex == -1 || self->_incomingZIndex == -1 || objc_msgSend_outgoingZIndex(matchCopy, v5, v6) == -1 || objc_msgSend_incomingZIndex(v7, v8, v9) == -1)
  {
    v20 = 0;
  }

  else
  {
    outgoingZIndex = self->_outgoingZIndex;
    v13 = objc_msgSend_outgoingZIndex(v7, v10, v11);
    if (outgoingZIndex < v13)
    {
      v16 = -1;
    }

    else
    {
      v16 = outgoingZIndex > v13;
    }

    incomingZIndex = self->_incomingZIndex;
    v18 = objc_msgSend_incomingZIndex(v7, v14, v15);
    v19 = incomingZIndex > v18;
    if (incomingZIndex < v18)
    {
      v19 = -1;
    }

    v20 = v16 != v19;
  }

  return v20;
}

- (double)intersectionPercentWithZOrdererMatch:(id)match
{
  outgoingZIndex = self->_outgoingZIndex;
  matchCopy = match;
  v8 = objc_msgSend_outgoingZIndex(matchCopy, v6, v7);
  if (outgoingZIndex - v8 >= 0)
  {
    v11 = outgoingZIndex - v8;
  }

  else
  {
    v11 = v8 - outgoingZIndex;
  }

  incomingZIndex = self->_incomingZIndex;
  v13 = objc_msgSend_incomingZIndex(matchCopy, v9, v10);

  v14 = incomingZIndex - v13;
  if (incomingZIndex - v13 < 0)
  {
    v14 = v13 - incomingZIndex;
  }

  return v11 / (v14 + v11);
}

- (id)description
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_outgoingTexture(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_incomingTexture(self, v5, v6);
  }

  v9 = v8;

  v10 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = objc_msgSend_visibleTextures(v9, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v39, v43, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_textureType(*(*(&v39 + 1) + 8 * i), v16, v17);
        v23 = sub_2766A57EC(v21, v22);
        objc_msgSend_addObject_(v10, v24, v23);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v39, v43, 16);
    }

    while (v18);
  }

  v26 = objc_msgSend_componentsJoinedByString_(v10, v25, @",");
  v27 = MEMORY[0x277CCACA8];
  v38.receiver = self;
  v38.super_class = TSDMagicMoveTextureZOrdererMatch;
  v28 = [(TSDMagicMoveTextureZOrdererMatch *)&v38 description];
  v31 = objc_msgSend_outgoingZIndex(self, v29, v30);
  v34 = objc_msgSend_incomingZIndex(self, v32, v33);
  v36 = objc_msgSend_stringWithFormat_(v27, v35, @"%@: %d->%d (%@)", v28, v31, v34, v26);

  return v36;
}

@end