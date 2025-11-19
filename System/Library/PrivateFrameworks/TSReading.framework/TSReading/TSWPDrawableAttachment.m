@interface TSWPDrawableAttachment
+ (void)setPositionerClass:(Class)a3;
- (BOOL)isAnchored;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHTMLWrap;
- (BOOL)isPartitioned;
- (BOOL)specifiesEnabledKnobMask;
- (Class)positionerClass;
- (TSWPDrawableAttachment)initWithContext:(id)a3 drawable:(id)a4;
- (id)copyWithContext:(id)a3;
- (id)detachDrawable;
- (id)textRepresentationForCopy;
- (id)textStorages;
- (unint64_t)enabledKnobMask;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)attachDrawable:(id)a3;
- (void)dealloc;
- (void)infoChanged;
- (void)invalidate;
- (void)setParentStorage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPDrawableAttachment

+ (void)setPositionerClass:(Class)a3
{
  if (([(objc_class *)a3 conformsToProtocol:&unk_287E95EE0]& 1) == 0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPDrawableAttachment setPositionerClass:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 92, @"Invalid positioner class"}];
  }

  _tswpDrawableAttachmentPositionerClass = a3;
}

- (void)dealloc
{
  [(TSDDrawableInfo *)self->_drawableInfo setOwningAttachment:0];

  v3.receiver = self;
  v3.super_class = TSWPDrawableAttachment;
  [(TSWPDrawableAttachment *)&v3 dealloc];
}

- (TSWPDrawableAttachment)initWithContext:(id)a3 drawable:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSWPDrawableAttachment;
  v5 = [(TSWPAttachment *)&v8 initWithContext:a3];
  if (v5)
  {
    v6 = a4;
    v5->_drawableInfo = v6;
    [(TSDDrawableInfo *)v6 setOwningAttachment:v5];
    v5->_hOffsetType = 0;
    v5->_hOffset = NAN;
    v5->_vOffsetType = 0;
    v5->_vOffset = NAN;
    v5->_vAlignment = 0;
  }

  return v5;
}

- (id)copyWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSWPDrawableAttachment;
  v5 = [(TSWPAttachment *)&v8 copyWithContext:?];
  if (v5)
  {
    v6 = [(TSDDrawableInfo *)self->_drawableInfo copyWithContext:a3];
    v5[7] = v6;
    [v6 setOwningAttachment:v5];
    *(v5 + 16) = self->_hOffsetType;
    v5[9] = *&self->_hOffset;
    *(v5 + 20) = self->_vOffsetType;
    v5[11] = *&self->_vOffset;
    *(v5 + 24) = self->_vAlignment;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSWPDrawableAttachment;
  v4 = [(TSWPAttachment *)&v9 isEqual:?];
  if (v4)
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = v5;
      v7 = [(TSWPDrawableAttachment *)self isAnchored];
      if (v7 == [v6 isAnchored])
      {
        LOBYTE(v4) = -[TSDDrawableInfo isEqual:](self->_drawableInfo, "isEqual:", [v6 drawable]);
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)invalidate
{
  v3 = [(TSWPAttachment *)self parentStorage];
  v4 = [(TSWPAttachment *)self findCharIndex];

  [(TSWPStorage *)v3 p_didChangeRange:v4 delta:1 broadcastKind:0, 1];
}

- (id)detachDrawable
{
  [(TSPObject *)self willModify];
  v3 = self->_drawableInfo;
  [(TSDDrawableInfo *)self->_drawableInfo setOwningAttachment:0];
  self->_drawableInfo = 0;
  [(TSDDrawableInfo *)v3 setParentInfo:0];
  return v3;
}

- (void)attachDrawable:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;
  self->_drawableInfo = v5;
  [(TSDDrawableInfo *)v5 setOwningAttachment:self];
  v6 = [(TSWPAttachment *)self parentStorage];
  drawableInfo = self->_drawableInfo;

  [(TSDDrawableInfo *)drawableInfo setParentInfo:v6];
}

- (void)setParentStorage:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v5 setParentStorage:?];
  [(TSDDrawableInfo *)self->_drawableInfo setParentInfo:a3];
}

- (BOOL)isHTMLWrap
{
  v2 = [(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap];

  return [(TSDExteriorTextWrap *)v2 isHTMLWrap];
}

- (BOOL)isPartitioned
{
  if ([(TSWPDrawableAttachment *)self isAnchored])
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 canPartition];
}

- (BOOL)isAnchored
{
  v2 = [(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap];
  if (v2)
  {
    LOBYTE(v2) = [(TSDExteriorTextWrap *)v2 type]!= 0;
  }

  return v2;
}

- (Class)positionerClass
{
  if (![(TSWPDrawableAttachment *)self isAnchored])
  {
    return 0;
  }

  if ([(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap] isHTMLWrap])
  {
    return 0;
  }

  return _tswpDrawableAttachmentPositionerClass;
}

- (BOOL)specifiesEnabledKnobMask
{
  if ([(TSDDrawableInfo *)self->_drawableInfo isInlineWithText])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(TSDDrawableInfo *)self->_drawableInfo isAnchoredToText];
    if (v3)
    {
      v4 = [(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap];

      LOBYTE(v3) = [(TSDExteriorTextWrap *)v4 isHTMLWrap];
    }
  }

  return v3;
}

- (unint64_t)enabledKnobMask
{
  if (![(TSDDrawableInfo *)self->_drawableInfo isInlineWithText])
  {
    if ([(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap] type]- 1 > 1)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPDrawableAttachment enabledKnobMask]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 436, @"Unexpected text wrap type (%d).", -[TSDExteriorTextWrap type](-[TSDDrawableInfo exteriorTextWrap](self->_drawableInfo, "exteriorTextWrap"), "type")}];
    }

    else
    {
      v9 = [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap] direction];
      if (v9 < 3)
      {
        return qword_26CA669C8[v9];
      }

      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPDrawableAttachment enabledKnobMask]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 429, @"Unexpected text wrap direction (%d).", -[TSDExteriorTextWrap direction](-[TSDDrawableInfo exteriorTextWrap](self->_drawableInfo, "exteriorTextWrap"), "direction")}];
    }

    return 0;
  }

  result = [(TSWPAttachment *)self parentStorage];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [(TSWPAttachment *)self findCharIndex];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v5;
  result = [v4 paragraphStyleAtCharIndex:v5 effectiveRange:0];
  if (!result)
  {
    return result;
  }

  v7 = [result intValueForProperty:86];
  v8 = v7;
  if (v7 >= 5)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPDrawableAttachment enabledKnobMask]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 403, @"Invalid paragraph alignment value (%d).", v8}];
    return 0;
  }

  if (v7 == 4)
  {
    LODWORD(v8) = [v4 isWritingDirectionRightToLeftForParagraphAtCharIndex:v6];
  }

  return [TSWPDrawableAttachment enabledKnobMask]::sEnabledKnobMaskTable[v8];
}

- (void)infoChanged
{
  parentStorage = self->super._parentStorage;
  v3 = [(TSWPAttachment *)self findCharIndex];

  [(TSWPStorage *)parentStorage p_didChangeRange:v3 delta:1 broadcastKind:0, 0];
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  [a4 pushMappingContext:self];
  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v7 adoptStylesheet:a3 withMapper:a4];
  [(TSDDrawableInfo *)self->_drawableInfo adoptStylesheet:a3 withMapper:a4];
  [a4 popMappingContext:self];
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    [a3 performSelector:sel_willAddDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }

  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v7 willBeAddedToDocumentRoot:a3 context:a4];
  [(TSDDrawableInfo *)self->_drawableInfo willBeAddedToDocumentRoot:a3 context:a4];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [TSWPAttachment wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  [(TSDDrawableInfo *)self->_drawableInfo wasAddedToDocumentRoot:a3 context:a4];
  if (objc_opt_respondsToSelector())
  {
    [a3 performSelector:sel_didAddDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [a3 performSelector:sel_willRemoveDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }

  [(TSDDrawableInfo *)self->_drawableInfo willBeRemovedFromDocumentRoot:a3];
  v5.receiver = self;
  v5.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v5 willBeRemovedFromDocumentRoot:a3];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  [(TSDDrawableInfo *)self->_drawableInfo wasRemovedFromDocumentRoot:?];
  v5.receiver = self;
  v5.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v5 wasRemovedFromDocumentRoot:a3];
  if (objc_opt_respondsToSelector())
  {
    [a3 performSelector:sel_didRemoveDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }
}

- (id)textRepresentationForCopy
{
  objc_opt_class();
  [(TSWPDrawableAttachment *)self drawable];
  result = TSUDynamicCast();
  if (result)
  {
    result = [result containedStorage];
    if (result)
    {
      v4 = result;
      if ([result length])
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)textStorages
{
  result = [(TSWPDrawableAttachment *)self drawable];
  if (result)
  {
    v3 = result;
    if (objc_opt_respondsToSelector())
    {
      result = [v3 textStorages];
      if (result)
      {
        v4 = result;
        if ([result count])
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end