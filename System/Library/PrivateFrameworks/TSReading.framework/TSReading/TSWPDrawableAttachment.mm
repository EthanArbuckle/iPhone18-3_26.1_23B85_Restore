@interface TSWPDrawableAttachment
+ (void)setPositionerClass:(Class)class;
- (BOOL)isAnchored;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHTMLWrap;
- (BOOL)isPartitioned;
- (BOOL)specifiesEnabledKnobMask;
- (Class)positionerClass;
- (TSWPDrawableAttachment)initWithContext:(id)context drawable:(id)drawable;
- (id)copyWithContext:(id)context;
- (id)detachDrawable;
- (id)textRepresentationForCopy;
- (id)textStorages;
- (unint64_t)enabledKnobMask;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)attachDrawable:(id)drawable;
- (void)dealloc;
- (void)infoChanged;
- (void)invalidate;
- (void)setParentStorage:(id)storage;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPDrawableAttachment

+ (void)setPositionerClass:(Class)class
{
  if (([(objc_class *)class conformsToProtocol:&unk_287E95EE0]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPDrawableAttachment setPositionerClass:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 92, @"Invalid positioner class"}];
  }

  _tswpDrawableAttachmentPositionerClass = class;
}

- (void)dealloc
{
  [(TSDDrawableInfo *)self->_drawableInfo setOwningAttachment:0];

  v3.receiver = self;
  v3.super_class = TSWPDrawableAttachment;
  [(TSWPDrawableAttachment *)&v3 dealloc];
}

- (TSWPDrawableAttachment)initWithContext:(id)context drawable:(id)drawable
{
  v8.receiver = self;
  v8.super_class = TSWPDrawableAttachment;
  v5 = [(TSWPAttachment *)&v8 initWithContext:context];
  if (v5)
  {
    drawableCopy = drawable;
    v5->_drawableInfo = drawableCopy;
    [(TSDDrawableInfo *)drawableCopy setOwningAttachment:v5];
    v5->_hOffsetType = 0;
    v5->_hOffset = NAN;
    v5->_vOffsetType = 0;
    v5->_vOffset = NAN;
    v5->_vAlignment = 0;
  }

  return v5;
}

- (id)copyWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = TSWPDrawableAttachment;
  v5 = [(TSWPAttachment *)&v8 copyWithContext:?];
  if (v5)
  {
    v6 = [(TSDDrawableInfo *)self->_drawableInfo copyWithContext:context];
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

- (BOOL)isEqual:(id)equal
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
      isAnchored = [(TSWPDrawableAttachment *)self isAnchored];
      if (isAnchored == [v6 isAnchored])
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
  parentStorage = [(TSWPAttachment *)self parentStorage];
  findCharIndex = [(TSWPAttachment *)self findCharIndex];

  [(TSWPStorage *)parentStorage p_didChangeRange:findCharIndex delta:1 broadcastKind:0, 1];
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

- (void)attachDrawable:(id)drawable
{
  [(TSPObject *)self willModify];
  drawableCopy = drawable;
  self->_drawableInfo = drawableCopy;
  [(TSDDrawableInfo *)drawableCopy setOwningAttachment:self];
  parentStorage = [(TSWPAttachment *)self parentStorage];
  drawableInfo = self->_drawableInfo;

  [(TSDDrawableInfo *)drawableInfo setParentInfo:parentStorage];
}

- (void)setParentStorage:(id)storage
{
  v5.receiver = self;
  v5.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v5 setParentStorage:?];
  [(TSDDrawableInfo *)self->_drawableInfo setParentInfo:storage];
}

- (BOOL)isHTMLWrap
{
  exteriorTextWrap = [(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap];

  return [(TSDExteriorTextWrap *)exteriorTextWrap isHTMLWrap];
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
  exteriorTextWrap = [(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap];
  if (exteriorTextWrap)
  {
    LOBYTE(exteriorTextWrap) = [(TSDExteriorTextWrap *)exteriorTextWrap type]!= 0;
  }

  return exteriorTextWrap;
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
    LOBYTE(isAnchoredToText) = 1;
  }

  else
  {
    isAnchoredToText = [(TSDDrawableInfo *)self->_drawableInfo isAnchoredToText];
    if (isAnchoredToText)
    {
      exteriorTextWrap = [(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap];

      LOBYTE(isAnchoredToText) = [(TSDExteriorTextWrap *)exteriorTextWrap isHTMLWrap];
    }
  }

  return isAnchoredToText;
}

- (unint64_t)enabledKnobMask
{
  if (![(TSDDrawableInfo *)self->_drawableInfo isInlineWithText])
  {
    if ([(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap] type]- 1 > 1)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPDrawableAttachment enabledKnobMask]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 436, @"Unexpected text wrap type (%d).", -[TSDExteriorTextWrap type](-[TSDDrawableInfo exteriorTextWrap](self->_drawableInfo, "exteriorTextWrap"), "type")}];
    }

    else
    {
      direction = [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self->_drawableInfo exteriorTextWrap] direction];
      if (direction < 3)
      {
        return qword_26CA669C8[direction];
      }

      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPDrawableAttachment enabledKnobMask]"];
      [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 429, @"Unexpected text wrap direction (%d).", -[TSDExteriorTextWrap direction](-[TSDDrawableInfo exteriorTextWrap](self->_drawableInfo, "exteriorTextWrap"), "direction")}];
    }

    return 0;
  }

  result = [(TSWPAttachment *)self parentStorage];
  if (!result)
  {
    return result;
  }

  v4 = result;
  findCharIndex = [(TSWPAttachment *)self findCharIndex];
  if (findCharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = findCharIndex;
  result = [v4 paragraphStyleAtCharIndex:findCharIndex effectiveRange:0];
  if (!result)
  {
    return result;
  }

  v7 = [result intValueForProperty:86];
  v8 = v7;
  if (v7 >= 5)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPDrawableAttachment enabledKnobMask]"];
    [currentHandler3 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPDrawableAttachment.mm"), 403, @"Invalid paragraph alignment value (%d).", v8}];
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
  findCharIndex = [(TSWPAttachment *)self findCharIndex];

  [(TSWPStorage *)parentStorage p_didChangeRange:findCharIndex delta:1 broadcastKind:0, 0];
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  [mapper pushMappingContext:self];
  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v7 adoptStylesheet:stylesheet withMapper:mapper];
  [(TSDDrawableInfo *)self->_drawableInfo adoptStylesheet:stylesheet withMapper:mapper];
  [mapper popMappingContext:self];
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  if (objc_opt_respondsToSelector())
  {
    [root performSelector:sel_willAddDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }

  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v7 willBeAddedToDocumentRoot:root context:context];
  [(TSDDrawableInfo *)self->_drawableInfo willBeAddedToDocumentRoot:root context:context];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  v7.receiver = self;
  v7.super_class = TSWPDrawableAttachment;
  [TSWPAttachment wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  [(TSDDrawableInfo *)self->_drawableInfo wasAddedToDocumentRoot:root context:context];
  if (objc_opt_respondsToSelector())
  {
    [root performSelector:sel_didAddDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  if (objc_opt_respondsToSelector())
  {
    [root performSelector:sel_willRemoveDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
  }

  [(TSDDrawableInfo *)self->_drawableInfo willBeRemovedFromDocumentRoot:root];
  v5.receiver = self;
  v5.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v5 willBeRemovedFromDocumentRoot:root];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  [(TSDDrawableInfo *)self->_drawableInfo wasRemovedFromDocumentRoot:?];
  v5.receiver = self;
  v5.super_class = TSWPDrawableAttachment;
  [(TSWPAttachment *)&v5 wasRemovedFromDocumentRoot:root];
  if (objc_opt_respondsToSelector())
  {
    [root performSelector:sel_didRemoveDrawable_ withObject:{-[TSWPDrawableAttachment drawable](self, "drawable")}];
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