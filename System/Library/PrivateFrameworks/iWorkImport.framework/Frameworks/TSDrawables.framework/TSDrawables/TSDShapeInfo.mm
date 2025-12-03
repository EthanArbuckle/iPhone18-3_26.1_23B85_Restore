@interface TSDShapeInfo
- (BOOL)allowsCaption;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)allowsTitle;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canCopyData;
- (BOOL)isAllowedInFreehandDrawings;
- (BOOL)isAutosizingTextBox;
- (BOOL)isFreehandDrawingSpacerShape;
- (BOOL)isLine;
- (BOOL)isOpenPath;
- (BOOL)isTailEndOnLeftFromTemporaryLayoutForPasteboard;
- (BOOL)isTreatedAsFillForFreehandDrawing;
- (BOOL)isValidShapeToUnarchive;
- (BOOL)needsDownload;
- (BOOL)p_isLineForPastedStyleProperties;
- (BOOL)pathIsOpen;
- (BOOL)shouldBeIgnoredWhenCopying;
- (BOOL)shouldFlipLineEndsForStyle:(id)style isStyleTailEndOnLeft:(int)left;
- (BOOL)shouldRemovePastedLineEndStyleProperties;
- (BOOL)supportsHyperlinks;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (TSDFill)fill;
- (TSDLineEnd)headLineEnd;
- (TSDLineEnd)tailLineEnd;
- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source;
- (id)animationFilters;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)p_nameFromPathSource;
- (id)p_shapeLibraryUserDefinedName;
- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info;
- (id)typeName;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_correctLineSegmentGeometry;
- (void)p_correctNearZeroWidthLines;
- (void)p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:(unint64_t)version;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setFill:(id)fill;
- (void)setHeadLineEnd:(id)end;
- (void)setPathSource:(id)source;
- (void)setStyle:(id)style;
- (void)setTailLineEnd:(id)end;
- (void)setValuesForProperties:(id)properties;
@end

@implementation TSDShapeInfo

- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style pathSource:(id)source
{
  styleCopy = style;
  sourceCopy = source;
  v34.receiver = self;
  v34.super_class = TSDShapeInfo;
  v13 = [(TSDDrawableInfo *)&v34 initWithContext:context geometry:geometry];
  if (v13)
  {
    if (styleCopy)
    {
      if (sourceCopy)
      {
LABEL_4:
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_2766702F0;
        v30[3] = &unk_27A6CC6F0;
        v31 = v13;
        v32 = styleCopy;
        v33 = sourceCopy;
        objc_msgSend_performBlockIgnoringModifications_(v31, v14, v30);

        goto LABEL_5;
      }
    }

    else
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDShapeInfo initWithContext:geometry:style:pathSource:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 96, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      if (sourceCopy)
      {
        goto LABEL_4;
      }
    }

    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDShapeInfo initWithContext:geometry:style:pathSource:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 97, 0, "invalid nil value for '%{public}s'", "pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    goto LABEL_4;
  }

LABEL_5:

  return v13;
}

- (TSDShapeInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  styleCopy = style;
  geometryCopy = geometry;
  contextCopy = context;
  objc_msgSend_size(geometryCopy, v11, v12);
  v15 = objc_msgSend_rectangleWithNaturalSize_(TSDScalarPathSource, v13, v14);
  v17 = objc_msgSend_initWithContext_geometry_style_pathSource_(self, v16, contextCopy, geometryCopy, styleCopy, v15);

  return v17;
}

- (BOOL)allowsCaption
{
  if (objc_msgSend_isLine(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_geometry(self, v4, v5);
  if (objc_msgSend_widthValid(v7, v8, v9))
  {
    v12 = objc_msgSend_geometry(self, v10, v11);
    v6 = objc_msgSend_heightValid(v12, v13, v14);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)allowsTitle
{
  if (objc_msgSend_isLine(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_geometry(self, v4, v5);
  if (objc_msgSend_widthValid(v7, v8, v9))
  {
    v12 = objc_msgSend_geometry(self, v10, v11);
    v6 = objc_msgSend_heightValid(v12, v13, v14);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)typeName
{
  v4 = objc_msgSend_pathSource(self, a2, v2);
  v7 = objc_msgSend_bezierPath(v4, v5, v6);
  v10 = objc_msgSend_geometry(self, v8, v9);
  v13 = objc_msgSend_p_shapeLibraryUserDefinedName(self, v11, v12);
  v16 = v13;
  if (((!v13 || !objc_msgSend_length(v13, v14, v15)) && (objc_msgSend_size(v10, v14, v15), objc_msgSend_labelForSize_(v7, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v19) == 0) || !objc_msgSend_length(v16, v14, v15)) && (objc_msgSend_p_nameFromPathSource(self, v14, v15), v20 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v20) == 0) || (v21 = objc_msgSend_length(v16, v14, v15)) == 0)
  {
    v22 = sub_2767B590C(v21, v14, v15);
    v24 = objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Shape", &stru_28857D120, @"TSDrawables");

    v16 = v24;
  }

  return v16;
}

- (id)p_shapeLibraryUserDefinedName
{
  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();

  v9 = objc_msgSend_userDefinedName(v6, v7, v8);
  if (objc_msgSend_length(v9, v10, v11))
  {
    v14 = objc_msgSend_userDefinedName(v6, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)p_nameFromPathSource
{
  v3 = objc_msgSend_pathSource(self, a2, v2);
  v6 = objc_msgSend_name(v3, v4, v5);

  return v6;
}

- (BOOL)needsDownload
{
  objc_opt_class();
  v5 = objc_msgSend_fill(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_imageData(v6, v7, v8);
    v12 = objc_msgSend_needsDownload(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canCopyData
{
  objc_opt_class();
  v5 = objc_msgSend_fill(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    canCopyData = objc_msgSend_canCopyData(v6, v7, v8);
  }

  else
  {
    canCopyData = 1;
  }

  return canCopyData;
}

- (BOOL)isFreehandDrawingSpacerShape
{
  v4 = objc_msgSend_parentInfo(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v8 = objc_msgSend_parentInfo(self, v6, v7);
  v11 = objc_msgSend_freehandDrawingSpacerShape(v8, v9, v10);
  v12 = v11 == self;

  return v12;
}

- (BOOL)shouldBeIgnoredWhenCopying
{
  v6.receiver = self;
  v6.super_class = TSDShapeInfo;
  if ([(TSDDrawableInfo *)&v6 shouldBeIgnoredWhenCopying])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isFreehandDrawingSpacerShape(self, v3, v4);
  }
}

- (void)setPathSource:(id)source
{
  sourceCopy = source;
  if (self->mPathSource != sourceCopy)
  {
    v7 = sourceCopy;
    objc_msgSend_willChangeProperty_(self, v6, 527);
    objc_storeStrong(&self->mPathSource, source);
    sourceCopy = v7;
  }
}

- (BOOL)supportsHyperlinks
{
  v8.receiver = self;
  v8.super_class = TSDShapeInfo;
  if ([(TSDDrawableInfo *)&v8 supportsHyperlinks])
  {
    v5 = objc_msgSend_parentInfo(self, v3, v4);
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isAllowedInFreehandDrawings
{
  v3 = objc_msgSend_pathSource(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTreatedAsFillForFreehandDrawing
{
  v4 = objc_msgSend_parentInfo(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDShapeInfo isTreatedAsFillForFreehandDrawing]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 250, 0, "Should only ask about being a fill for a freehand drawing inside a freehand drawing.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_fill(self, v6, v7);
  v19 = objc_msgSend_stroke(self, v16, v17);
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend_isNullStroke(v19, v29, v30) & 1) != 0)
    {
      v26 = 1;
      goto LABEL_18;
    }

    v34 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSDShapeInfo isTreatedAsFillForFreehandDrawing]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v36, v22, v24, 257, 0, "Should not have both fill and stroke.");
    v26 = 1;
  }

  else
  {
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend_isNullStroke(v19, v18, v20) & 1) != 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDShapeInfo isTreatedAsFillForFreehandDrawing]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 263, 0, "Should have a fill or a stroke.");
    }

    else
    {
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = 0;
        goto LABEL_18;
      }

      v37 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSDShapeInfo isTreatedAsFillForFreehandDrawing]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v39, v22, v24, 260, 0, "Should not have both fill and stroke.");
    }

    v26 = 0;
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
LABEL_18:

  return v26;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v9.receiver = self;
  v9.super_class = TSDShapeInfo;
  canAspectRatioLockBeChangedByUser = [(TSDDrawableInfo *)&v9 canAspectRatioLockBeChangedByUser];
  if (canAspectRatioLockBeChangedByUser)
  {
    if (objc_msgSend_isLine(self, v4, v5))
    {
      LOBYTE(canAspectRatioLockBeChangedByUser) = objc_msgSend_aspectRatioLocked(self, v6, v7);
    }

    else
    {
      LOBYTE(canAspectRatioLockBeChangedByUser) = 1;
    }
  }

  return canAspectRatioLockBeChangedByUser;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  if (objc_msgSend_aspectRatioLocked(self, a2, v2) && !objc_msgSend_canAspectRatioLockBeChangedByUser(self, v4, v5))
  {
    isKindOfClass = 0;
  }

  else
  {
    v6 = objc_msgSend_pathSource(self, v4, v5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v10 = objc_msgSend_pathSource(self, v7, v8);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->mStyle != styleCopy)
  {
    v13 = styleCopy;
    v6 = objc_opt_class();
    v9 = objc_msgSend_properties(v6, v7, v8);
    objc_msgSend_willChangeProperties_(self, v10, v9);

    objc_msgSend_willModify(self, v11, v12);
    objc_storeStrong(&self->mStyle, style);
    styleCopy = v13;
  }
}

- (BOOL)shouldRemovePastedLineEndStyleProperties
{
  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();

  objc_opt_class();
  v9 = objc_msgSend_pathSource(self, v7, v8);
  v10 = TSUDynamicCast();

  v13 = objc_msgSend_bezierPath(v6, v11, v12);
  if (objc_msgSend_isOpen(v13, v14, v15))
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v19 = objc_msgSend_bezierPath(v10, v16, v17);
    v18 = objc_msgSend_isOpen(v19, v20, v21) ^ 1;
  }

  return v18;
}

- (BOOL)p_isLineForPastedStyleProperties
{
  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();

  objc_opt_class();
  v9 = objc_msgSend_pathSource(self, v7, v8);
  v10 = TSUDynamicCast();

  v13 = objc_msgSend_bezierPath(v6, v11, v12);
  if (objc_msgSend_isLineSegment(v13, v14, v15))
  {
    isLineSegment = 1;
  }

  else
  {
    v19 = objc_msgSend_bezierPath(v10, v16, v17);
    isLineSegment = objc_msgSend_isLineSegment(v19, v20, v21);
  }

  return isLineSegment;
}

- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info
{
  v4 = *&info;
  styleCopy = style;
  v9 = objc_msgSend_fullPropertyMap(styleCopy, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  if (objc_msgSend_shouldRemovePastedFillStyleProperties(self, v13, v14))
  {
    objc_msgSend_removeValueForProperty_(v12, v15, 516);
  }

  if (objc_msgSend_shouldValidatePastedLineEndStyleProperties(self, v15, v16))
  {
    objc_opt_class();
    v19 = TSUDynamicCast();
    hasLineEnds = objc_msgSend_hasLineEnds(v19, v20, v21);

    if (hasLineEnds)
    {
      if (objc_msgSend_shouldFlipLineEndsForStyle_isStyleTailEndOnLeft_(self, v17, styleCopy, v4))
      {
        v23 = objc_msgSend_boxedObjectForProperty_(styleCopy, v17, 522);
        v25 = objc_msgSend_boxedObjectForProperty_(styleCopy, v24, 523);
        objc_msgSend_setObject_forProperty_(v12, v26, v25, 522);
        objc_msgSend_setObject_forProperty_(v12, v27, v23, 523);
      }
    }
  }

  if (objc_msgSend_shouldRemovePastedLineEndStyleProperties(self, v17, v18))
  {
    objc_msgSend_removeValueForProperty_(v12, v28, 522);
    objc_msgSend_removeValueForProperty_(v12, v30, 523);
  }

  if (objc_msgSend_isAutosizingTextBox(self, v28, v29))
  {
    objc_msgSend_removeValueForProperty_(v12, v31, 153);
  }

  if (objc_msgSend_shouldRemovePastedFrameStrokeStyleProperties(self, v31, v32))
  {
    objc_opt_class();
    v34 = objc_msgSend_objectForProperty_(styleCopy, v33, 517);
    v35 = TSUDynamicCast();

    if (v35)
    {
      objc_msgSend_removeValueForProperty_(v12, v36, 517);
    }
  }

  return v12;
}

- (TSDLineEnd)headLineEnd
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDShapeInfo headLineEnd]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 423, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_style(self, v5, v6);
  v16 = objc_msgSend_valueForProperty_(v14, v15, 522);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v16 = 0;
  }

  return v16;
}

- (void)setHeadLineEnd:(id)end
{
  endCopy = end;
  v10 = endCopy;
  if (endCopy)
  {
    v7 = endCopy;
  }

  else
  {
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v9 = v7;
  objc_msgSend_i_setValue_forProperty_(self, v8, v7, 522);
}

- (TSDLineEnd)tailLineEnd
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDShapeInfo tailLineEnd]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 440, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_style(self, v5, v6);
  v16 = objc_msgSend_valueForProperty_(v14, v15, 523);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v16 = 0;
  }

  return v16;
}

- (void)setTailLineEnd:(id)end
{
  endCopy = end;
  v10 = endCopy;
  if (endCopy)
  {
    v7 = endCopy;
  }

  else
  {
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v9 = v7;
  objc_msgSend_i_setValue_forProperty_(self, v8, v7, 523);
}

- (TSDFill)fill
{
  v4 = objc_msgSend_style(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDShapeInfo fill]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 457, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_style(self, v5, v6);
  v16 = objc_msgSend_valueForProperty_(v14, v15, 516);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v16 = 0;
  }

  return v16;
}

- (void)setFill:(id)fill
{
  fillCopy = fill;
  v10 = fillCopy;
  if (fillCopy)
  {
    v7 = fillCopy;
  }

  else
  {
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v9 = v7;
  objc_msgSend_i_setValue_forProperty_(self, v8, v7, 516);
}

- (void)setValuesForProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_style(self, v5, v6);

  if (!v7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDShapeInfo setValuesForProperties:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 474, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_documentRoot(self, v8, v9);
  v20 = objc_msgSend_stylesheet(v17, v18, v19);

  if (!v20)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDShapeInfo setValuesForProperties:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 475, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = objc_msgSend_allProperties(propertiesCopy, v21, v22);
  objc_msgSend_willChangeProperties_(self, v31, v30);

  v34 = objc_msgSend_documentRoot(self, v32, v33);
  v37 = objc_msgSend_stylesheet(v34, v35, v36);
  v40 = objc_msgSend_style(self, v38, v39);
  v50 = objc_msgSend_variationOfStyle_propertyMap_(v37, v41, v40, propertiesCopy);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSDShapeInfo setValuesForProperties:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 480, 0, "Variation style is not a shape style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
  }

  objc_msgSend_setStyle_(self, v42, v50);
}

- (BOOL)isValidShapeToUnarchive
{
  v3 = objc_msgSend_pathSource(self, a2, v2);
  v6 = objc_msgSend_bezierPath(v3, v4, v5);

  v14 = 0;
  if ((objc_msgSend_isEmpty(v6, v7, v8) & 1) == 0)
  {
    objc_msgSend_bounds(v6, v9, v10);
    if (v12 != *MEMORY[0x277CBF3A8] || v11 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v14 = 1;
    }
  }

  return v14;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  dataCopy = data;
  hintCopy = hint;
  objc_opt_class();
  v10 = objc_msgSend_fill(self, v8, v9);
  v11 = TSUDynamicCast();

  v14 = objc_msgSend_imageData(v11, v12, v13);

  if (v14 != dataCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDShapeInfo targetSizeForImageData:associatedHint:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 545, 0, "Wrong data for reducing shape fill");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3010000000;
  v45 = "";
  v46 = *MEMORY[0x277CBF3A8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_276671CAC;
  v41[3] = &unk_27A6CC718;
  v41[4] = &v42;
  objc_msgSend_performBlockWithTemporaryLayout_(self, v15, v41);
  v23 = TSDTopmostInfoFromInfo(self, 1);
  v26 = objc_msgSend_parentInfo(v23, v24, v25);
  v40 = &unk_2885CEC50;
  v27 = TSUProtocolCast();

  if (v27)
  {
    objc_msgSend_highestScaleFactorForRenderingDrawableInfo_(v27, v28, self, &unk_2885CEC50);
    v30 = v43;
    if (v31 > 1.0)
    {
      TSUMultiplySizeScalar();
      *(v30 + 4) = v32;
      *(v30 + 5) = v33;
    }
  }

  else
  {
    v30 = v43;
  }

  objc_msgSend_renderedImageSizeForObjectSize_(v11, v28, v29, v30[4], v30[5], v40);
  v35 = v34;
  v37 = v36;

  _Block_object_dispose(&v42, 8);
  v38 = v35;
  v39 = v37;
  result.height = v39;
  result.width = v38;
  return result;
}

- (id)animationFilters
{
  v3 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, kTSDAnimationFilterStandard[0], kTSDAnimationFilterByGlyph[0], kTSDAnimationFilterByWord[0], kTSDAnimationFilterByLine[0], kTSDAnimationFilterNotMovie[0], kTSDAnimationFilterAction[0], 0);
  if (objc_msgSend_pathIsOpen(self, v4, v5))
  {
    v8 = kTSDAnimationFilterShapeLine;
LABEL_3:
    objc_msgSend_setByAddingObject_(v3, v6, *v8);
    v3 = v9 = v3;
LABEL_7:

    goto LABEL_8;
  }

  v10 = objc_msgSend_stroke(self, v6, v7);
  if (!v10)
  {
    goto LABEL_8;
  }

  v9 = v10;
  v13 = objc_msgSend_stroke(self, v11, v12);
  if (objc_msgSend_isNullStroke(v13, v14, v15))
  {

    goto LABEL_7;
  }

  v19 = objc_msgSend_stroke(self, v16, v17);
  isFrame = objc_msgSend_isFrame(v19, v20, v21);

  if ((isFrame & 1) == 0)
  {
    v8 = kTSDAnimationFilterShapeWithStroke;
    goto LABEL_3;
  }

LABEL_8:

  return v3;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDShapeInfo mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 635, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_geometry(self, v9, v10);
  v21 = objc_msgSend_geometry(v8, v19, v20);
  v23 = objc_msgSend_mixingTypeWithObject_context_(v18, v22, v21, contextCopy);
  v24 = TSDMixingTypeBestFromMixingTypes(5, v23);

  v27 = objc_msgSend_shapeStyle(self, v25, v26);
  v30 = objc_msgSend_shapeStyle(v8, v28, v29);
  v31 = TSDMixingTypeWithObjects(v27, v30, contextCopy);
  v32 = TSDMixingTypeBestFromMixingTypes(v24, v31);

  v35 = objc_msgSend_pathSource(self, v33, v34);
  v38 = objc_msgSend_pathSource(v8, v36, v37);
  v39 = TSDMixingTypeWithObjects(v35, v38, contextCopy);

  v40 = TSDMixingTypeBestFromMixingTypes(v32, v39);
  return v40;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_geometry(self, v8, v9);
  v13 = objc_msgSend_geometry(v7, v11, v12);
  v14 = TSDMixingMixedObjectWithFraction(v10, v13, fraction);

  v17 = objc_msgSend_shapeStyle(self, v15, v16);
  v20 = objc_msgSend_shapeStyle(v7, v18, v19);
  v21 = TSDMixingMixedObjectWithFraction(v17, v20, fraction);

  v24 = objc_msgSend_pathSource(self, v22, v23);
  v27 = objc_msgSend_pathSource(v7, v25, v26);
  v28 = TSDMixingMixedObjectWithFraction(v24, v27, fraction);

  v29 = [TSDShapeInfo alloc];
  v32 = objc_msgSend_context(self, v30, v31);
  v34 = objc_msgSend_initWithContext_geometry_style_pathSource_(v29, v33, v32, v14, v21, v28);

  return v34;
}

- (BOOL)pathIsOpen
{
  v3 = objc_msgSend_pathSource(self, a2, v2);
  v6 = objc_msgSend_bezierPath(v3, v4, v5);
  isOpen = objc_msgSend_isOpen(v6, v7, v8);

  return isOpen;
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 522:
      v3 = objc_msgSend_headLineEnd(self, a2, *&property);
      break;
    case 523:
      v3 = objc_msgSend_tailLineEnd(self, a2, *&property);
      break;
    case 527:
      v3 = objc_msgSend_pathSource(self, a2, *&property);
      break;
    default:
      v5.receiver = self;
      v5.super_class = TSDShapeInfo;
      v3 = [(TSDStyledInfo *)&v5 objectForProperty:?];
      break;
  }

  return v3;
}

- (BOOL)isTailEndOnLeftFromTemporaryLayoutForPasteboard
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276672390;
  v4[3] = &unk_27A6CC718;
  v4[4] = &v5;
  objc_msgSend_performBlockWithTemporaryLayout_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)shouldFlipLineEndsForStyle:(id)style isStyleTailEndOnLeft:(int)left
{
  styleCopy = style;
  objc_opt_class();
  v9 = objc_msgSend_style(self, v7, v8);
  v10 = TSUDynamicCast();

  v12 = objc_msgSend_boxedObjectForProperty_(styleCopy, v11, 522);
  v14 = objc_msgSend_boxedObjectForProperty_(styleCopy, v13, 523);

  v16 = objc_msgSend_boxedObjectForProperty_(v10, v15, 522);
  v18 = objc_msgSend_boxedObjectForProperty_(v10, v17, 523);
  v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20);
  if (objc_msgSend_isEqual_(v12, v22, v21))
  {
    isNone = 1;
  }

  else
  {
    isNone = objc_msgSend_isNone(v12, v23, v24);
  }

  v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27);
  if (objc_msgSend_isEqual_(v14, v29, v28))
  {
    v32 = 1;
  }

  else
  {
    v32 = objc_msgSend_isNone(v14, v30, v31);
  }

  if (isNone & 1 | ((objc_msgSend_isEqual_(v12, v33, v16) & 1) == 0) && v32 & 1 | ((objc_msgSend_isEqual_(v14, v34, v18) & 1) == 0))
  {
    if (isNone & 1 | ((objc_msgSend_isEqual_(v12, v35, v18) & 1) == 0) && v32 & 1 | ((objc_msgSend_isEqual_(v14, v36, v16) & 1) == 0))
    {
      isTailEndOnLeftFromTemporaryLayoutForPasteboard = objc_msgSend_isTailEndOnLeftFromTemporaryLayoutForPasteboard(self, v37, v38);
      if (left == 2 && (isNone & v32 & 1) == 0)
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSDShapeInfo shouldFlipLineEndsForStyle:isStyleTailEndOnLeft:]");
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 732, 0, "never got line end metadata from pb");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
      }

      v48 = (left == 1) ^ isTailEndOnLeftFromTemporaryLayoutForPasteboard;
    }

    else
    {
      v48 = 1;
    }
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (BOOL)isLine
{
  v3 = objc_msgSend_pathSource(self, a2, v2);
  v6 = objc_msgSend_bezierPath(v3, v4, v5);
  isLineSegment = objc_msgSend_isLineSegment(v6, v7, v8);

  return isLineSegment;
}

- (BOOL)isOpenPath
{
  if (objc_msgSend_isLine(self, a2, v2))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = objc_msgSend_pathSource(self, v4, v5);
    v6 = objc_msgSend_isClosed(v7, v8, v9) ^ 1;
  }

  return v6;
}

- (BOOL)isAutosizingTextBox
{
  v4 = objc_msgSend_pathSource(self, a2, v2);
  if (objc_msgSend_isRectangular(v4, v5, v6))
  {
    v9 = objc_msgSend_geometry(self, v7, v8);
    if (objc_msgSend_widthValid(v9, v10, v11))
    {
      v14 = objc_msgSend_geometry(self, v12, v13);
      v17 = objc_msgSend_heightValid(v14, v15, v16) ^ 1;
    }

    else
    {
      LOBYTE(v17) = 1;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[80]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = &TSD::_DrawableArchive_default_instance_;
  }

  v39.receiver = self;
  v39.super_class = TSDShapeInfo;
  [(TSDDrawableInfo *)&v39 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 5))
  {
    objc_msgSend_pathSourceWithArchive_(TSDPathSource, v8, *(archive + 5));
  }

  else
  {
    objc_msgSend_pathSourceWithArchive_(TSDPathSource, v8, &TSD::_PathSourceArchive_default_instance_);
  }
  v9 = ;
  mPathSource = self->mPathSource;
  self->mPathSource = v9;

  v13 = objc_msgSend_fileFormatVersion(unarchiverCopy, v11, v12);
  v16 = v13;
  if (v13 < *MEMORY[0x277D80990] || v13 >= *MEMORY[0x277D80998])
  {
    if ((*(archive + 16) & 0x20) != 0)
    {
      objc_msgSend_setStrokePatternOffsetDistance_(self, v14, v15, *(archive + 16));
    }
  }

  else
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_27667A0DC;
    v38[3] = &unk_27A6CC790;
    v38[4] = self;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v14, v38);
  }

  v18 = *(archive + 4);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_27667A198;
  v37[3] = &unk_27A6CC7B8;
  v37[4] = self;
  v19 = unarchiverCopy;
  v21 = objc_opt_class();
  if (v18)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v20, v18, v21, 0, v37);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v20, MEMORY[0x277D80A18], v21, 0, v37);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_27667A1B0;
  v36[3] = &unk_27A6CC7E0;
  v36[4] = self;
  v36[5] = v16;
  objc_msgSend_addFinalizeHandler_(v19, v22, v36);
  if ((*(archive + 16) & 8) != 0)
  {
    v25 = objc_msgSend_instanceWithArchive_unarchiver_(TSDLineEnd, v23, *(archive + 6), v19);
  }

  else
  {
    v25 = 0;
  }

  if ((*(archive + 16) & 0x10) != 0)
  {
    v26 = objc_msgSend_instanceWithArchive_unarchiver_(TSDLineEnd, v23, *(archive + 7), v19);
  }

  else
  {
    v26 = 0;
  }

  if (v25 | v26)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_27667A1BC;
    v33[3] = &unk_27A6CC808;
    v33[4] = self;
    v34 = v25;
    v35 = v26;
    objc_msgSend_addFinalizeHandler_(v19, v27, v33);
  }

  if (objc_msgSend_hasPreUFFVersion(v19, v23, v24))
  {
    v30 = objc_msgSend_preUFFVersion(v19, v28, v29);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_27667A464;
    v32[3] = &unk_27A6CC7E0;
    v32[4] = self;
    v32[5] = v30;
    objc_msgSend_addFinalizeHandler_(v19, v31, v32);
  }
}

- (void)p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:(unint64_t)version
{
  if (self->mStyle)
  {
    return;
  }

  v4 = MEMORY[0x277D81150];
  v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDShapeInfo(PersistenceAdditions) p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
  v7 = NSStringFromTSPVersion();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v77, v6, 138, 0, "Upgrading nil style from version %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v13 = objc_msgSend_documentRoot(self, v11, v12);
  v78 = v13;
  if (v13)
  {
    v16 = objc_msgSend_theme(v13, v14, v15);
    v19 = objc_msgSend_stylesheet(v78, v17, v18);
    v21 = v19;
    if (v16)
    {
      if (v19)
      {
        objc_opt_class();
        v23 = objc_msgSend_presetOfKind_index_(v16, v22, *MEMORY[0x277D80B88], 0);
        v24 = TSUCheckedDynamicCast();

        if (v24)
        {
          objc_msgSend_willModifyForUpgrade(self, v25, v26);
          v27 = objc_opt_class();
          v30 = objc_msgSend_defaultPropertyMap(v27, v28, v29);
          v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v31, v32);
          objc_msgSend_setObject_forProperty_(v30, v34, v33, 516);

          v37 = objc_msgSend_emptyStroke(TSDStroke, v35, v36);
          objc_msgSend_setObject_forProperty_(v30, v38, v37, 517);

          v41 = objc_msgSend_variationOfStyle_propertyMap_(v21, v39, v24, v30);
          if (!v41)
          {
            v42 = MEMORY[0x277D81150];
            v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSDShapeInfo(PersistenceAdditions) p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:]");
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 156, 0, "invalid nil value for '%{public}s'", "variationStyle");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
          }

          objc_msgSend_setStyle_(self, v40, v41);
        }

        else
        {
          v70 = MEMORY[0x277D81150];
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSDShapeInfo(PersistenceAdditions) p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:]");
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v74, v71, v73, 148, 0, "Document is missing shape presets!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDShapeInfo(PersistenceAdditions) p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:]");
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 144, 0, "invalid nil value for '%{public}s'", "theme");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
      if (v21)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDShapeInfo(PersistenceAdditions) p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 145, 0, "invalid nil value for '%{public}s'", "stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
    goto LABEL_14;
  }

  v49 = MEMORY[0x277D81150];
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDShapeInfo(PersistenceAdditions) p_recoverFromMissingStyleDuringUnarchivingIfNeededFromVersion:]");
  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeInfoPersistenceAdditions.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 140, 0, "invalid nil value for '%{public}s'", "documentRoot");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
LABEL_15:
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_27667B024, off_2812F5188[80]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_27667AC50;
  v21[3] = &unk_27A6CC520;
  archiveCopy = archive;
  v7 = archiverCopy;
  v22 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v21);
  mPathSource = self->mPathSource;
  *(archive + 4) |= 4u;
  v11 = *(archive + 5);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v12);
    *(archive + 5) = v11;
  }

  objc_msgSend_saveToArchive_(mPathSource, v9, v11);
  objc_msgSend_strokePatternOffsetDistance(self, v13, v14);
  *&v16 = v16;
  v17 = *(archive + 4);
  *(archive + 4) = v17 | 0x20;
  *(archive + 16) = LODWORD(v16);
  mStyle = self->mStyle;
  *(archive + 4) = v17 | 0x22;
  v19 = *(archive + 4);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277C9BB20](v20);
    *(archive + 4) = v19;
  }

  objc_msgSend_setStrongReference_message_(v7, v15, mStyle, v19);
}

- (void)p_correctLineSegmentGeometry
{
  v24 = objc_msgSend_geometry(self, a2, v2);
  v6 = objc_msgSend_pathSource(self, v4, v5);
  v9 = objc_msgSend_bezierPath(v6, v7, v8);
  if (!objc_msgSend_isLineSegment(v9, v10, v11))
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!objc_msgSend_widthValid(v24, v12, v13))
  {

    goto LABEL_7;
  }

  v16 = objc_msgSend_heightValid(v24, v14, v15);

  if ((v16 & 1) == 0)
  {
LABEL_7:
    objc_msgSend_willModifyForUpgrade(self, v17, v18);
    v6 = objc_msgSend_mutableCopy(v24, v19, v20);
    objc_msgSend_setWidthValid_(v6, v21, 1);
    objc_msgSend_setHeightValid_(v6, v22, 1);
    objc_msgSend_setGeometry_(self, v23, v6);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)p_correctNearZeroWidthLines
{
  v58 = objc_msgSend_geometry(self, a2, v2);
  v6 = objc_msgSend_geometry(self, v4, v5);
  objc_msgSend_size(v6, v7, v8);
  if (v11 <= 0.01)
  {
    v12 = objc_msgSend_pathSource(self, v9, v10);
    v15 = objc_msgSend_bezierPath(v12, v13, v14);
    isLineSegment = objc_msgSend_isLineSegment(v15, v16, v17);

    if (!isLineSegment)
    {
      goto LABEL_5;
    }

    objc_msgSend_willModifyForUpgrade(self, v19, v20);
    v6 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v21, v22);
    objc_msgSend_moveToPoint_(v6, v23, v24, 0.0, 0.0);
    objc_msgSend_size(v58, v25, v26);
    objc_msgSend_lineToPoint_(v6, v27, v28, v29, 0.0);
    v30 = [TSDBezierPathSource alloc];
    v32 = objc_msgSend_initWithBezierPath_(v30, v31, v6);
    objc_msgSend_position(v58, v33, v34);
    objc_msgSend_size(v58, v35, v36);
    objc_msgSend_size(v58, v37, v38);
    TSUSubtractPoints();
    v40 = v39;
    v42 = v41;
    v43 = [TSDInfoGeometry alloc];
    objc_msgSend_naturalSize(v32, v44, v45);
    v47 = v46;
    v49 = v48;
    objc_msgSend_angle(v58, v50, v51);
    v55 = objc_msgSend_initWithPosition_size_angle_(v43, v53, v54, v40, v42, v47, v49, v52 + -90.0);
    objc_msgSend_setGeometry_(self, v56, v55);
    objc_msgSend_setPathSource_(self, v57, v32);
  }

LABEL_5:
}

@end