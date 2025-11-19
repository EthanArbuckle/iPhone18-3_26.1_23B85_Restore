@interface TSDMediaLayout
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)boundsForStandardKnobs;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (TSDMediaInfo)mediaInfo;
- (TSDMediaLayout)initWithInfo:(id)a3;
- (id)stroke;
- (void)processChangedProperty:(int)a3;
- (void)setGeometry:(id)a3;
@end

@implementation TSDMediaLayout

- (void)processChangedProperty:(int)a3
{
  v24.receiver = self;
  v24.super_class = TSDMediaLayout;
  [(TSDDrawableLayout *)&v24 processChangedProperty:?];
  if (a3 == 517)
  {
    objc_msgSend_invalidateFrame(self, v5, v6);
    objc_msgSend_invalidateAlignmentFrame(self, v7, v8);
    v11 = objc_msgSend_info(self, v9, v10);
    if (objc_msgSend_isInlineWithText(v11, v12, v13))
    {
    }

    else
    {
      v18 = objc_msgSend_info(self, v14, v15);
      isAnchoredToText = objc_msgSend_isAnchoredToText(v18, v19, v20);

      if (!isAnchoredToText)
      {
        return;
      }
    }

    v22 = objc_msgSend_wrapInvalidationParent(self, v16, v17);
    objc_msgSend_wrappableChildInvalidated_(v22, v23, self);
  }
}

- (TSDMediaLayout)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSDMediaLayout;
  result = [(TSDLayout *)&v4 initWithInfo:a3];
  if (result)
  {
    *&result->_mediaInvalidFlags |= 1u;
  }

  return result;
}

- (TSDMediaInfo)mediaInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (id)stroke
{
  dynamicStroke = self->_dynamicStroke;
  if (dynamicStroke)
  {
    v4 = dynamicStroke;
  }

  else
  {
    v5 = objc_msgSend_mediaInfo(self, a2, v2);
    v4 = objc_msgSend_stroke(v5, v6, v7);
  }

  return v4;
}

- (void)setGeometry:(id)a3
{
  v6 = a3;
  if ((*&self->_mediaInvalidFlags & 1) == 0)
  {
    v7 = objc_msgSend_geometry(self, v4, v5);
    v10 = v7;
    if (v7 && (objc_msgSend_differsInMoreThanTranslationFrom_(v7, v8, v6) & 1) == 0)
    {
      if (v6)
      {
        objc_msgSend_transform(v6, v8, v9);
      }

      objc_msgSend_transform(v10, v8, v9);
      if ((*&self->_mediaInvalidFlags & 1) == 0)
      {
        TSUSubtractPoints();
        TSUAddPoints();
        self->_cachedAlignmentFrame.origin.x = v11;
        self->_cachedAlignmentFrame.origin.y = v12;
      }
    }

    else
    {
      objc_msgSend_invalidateAlignmentFrame(self, v8, v9);
    }
  }

  v13.receiver = self;
  v13.super_class = TSDMediaLayout;
  [(TSDDrawableLayout *)&v13 setGeometry:v6];
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMediaLayout computeAlignmentFrameInRoot:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaLayout.m");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 150, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSDMediaLayout computeAlignmentFrameInRoot:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v19, v13, v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (CGRect)alignmentFrame
{
  if (*&self->_mediaInvalidFlags)
  {
    p_cachedAlignmentFrame = &self->_cachedAlignmentFrame;
    objc_msgSend_computeAlignmentFrameInRoot_(self, a2, 0);
    p_cachedAlignmentFrame->origin.x = v4;
    p_cachedAlignmentFrame->origin.y = v5;
    p_cachedAlignmentFrame->size.width = v6;
    p_cachedAlignmentFrame->size.height = v7;
    *&self->_mediaInvalidFlags &= ~1u;
  }

  x = self->_cachedAlignmentFrame.origin.x;
  y = self->_cachedAlignmentFrame.origin.y;
  width = self->_cachedAlignmentFrame.size.width;
  height = self->_cachedAlignmentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v4 = objc_msgSend_parent(self, a2, v2);
  if (!v4 || (v7 = v4, objc_msgSend_parent(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_layoutController(self, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_rootLayout(v11, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v14, v11, v8, v7, v8 == v14))
  {
    objc_msgSend_alignmentFrame(self, v5, v6);
  }

  else
  {
    objc_msgSend_computeAlignmentFrameInRoot_(self, v5, 1);
  }

  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)boundsForStandardKnobs
{
  x = self->_boundsForStandardKnobs.origin.x;
  y = self->_boundsForStandardKnobs.origin.y;
  width = self->_boundsForStandardKnobs.size.width;
  height = self->_boundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end