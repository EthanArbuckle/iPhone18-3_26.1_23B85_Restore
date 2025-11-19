@interface TSAPdfTagger
+ (BOOL)isHeadingStyle:(id)a3 headingIndex:(int *)a4;
+ (BOOL)shouldMapDrawableRep:(id)a3;
+ (BOOL)totalCellNumberInAllTablesExceedsMaxAllowedInDocument:(id)a3;
- (BOOL)currentParagraphHasContents;
- (BOOL)currentParagraphNeedsSpans;
- (BOOL)textStorageChunkIsFootnote:(id)a3;
- (BOOL)topOfContextStackIsParagraph;
- (TSAPdfTagger)initWithRenderingExporter:(id)a3;
- (TSARenderingExporter)exporter;
- (_NSRange)topmostColumnRange;
- (id)canvas;
- (id)documentRoot;
- (id)imager;
- (id)regularDrawableRepForObjectRep:(id)a3;
- (id)retrieveHighestInfoAtCharIndex:(unint64_t)a3 returnTagType:(int *)a4;
- (id)state;
- (id)topOfContextStackWithExpectedClass:(Class)a3;
- (id)topmostColumn;
- (id)topmostColumnContext;
- (id)topmostContextOfClass:(Class)a3;
- (id)topmostParagraphContext;
- (id)topmostTextStorage;
- (id)topmostTocChunkContext;
- (int)tagTypeAtDepth:(unint64_t)a3;
- (unint64_t)depthOfContext:(id)a3;
- (unint64_t)depthOfTopmostTagOfType:(int)a3;
- (unint64_t)indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:(unint64_t)a3;
- (unint64_t)indexOfLastVisibleCharInParagraphBeforeCharIndex:(unint64_t)a3;
- (void)advanceParagraphEnumeratorToCharIndex:(unint64_t)a3;
- (void)assertCharIndexRelativeToParagraphRange:(BOOL)a3;
- (void)assertTopOfContextStackIsParagraph:(BOOL)a3;
- (void)beginAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)beginCheckboxCell:(BOOL)a3;
- (void)beginComment;
- (void)beginDrawable:(id)a3;
- (void)beginFreehandDrawing:(id)a3;
- (void)beginLineFragmentBodyWithRange:(_NSRange)a3;
- (void)beginLineFragmentWithRange:(_NSRange)a3;
- (void)beginListLabel;
- (void)beginMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3;
- (void)beginObject:(id)a3;
- (void)beginOneColumnText:(id)a3 column:(id)a4 limitSelection:(id)a5;
- (void)beginPage;
- (void)beginParagraphBodyWithLineFragmentRange:(_NSRange)a3;
- (void)beginParagraphWithLineFragmentRange:(_NSRange)a3;
- (void)beginPencilAnnotation:(id)a3;
- (void)beginPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4;
- (void)beginRatingCell:(double)a3;
- (void)beginRubyRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)beginTOCChunk:(id)a3;
- (void)beginTableCell:(id)a3 withCellID:(TSUCellCoord)a4 cellHasContents:(BOOL)a5 cellIsPrimary:(BOOL)a6;
- (void)beginTableChunk:(id)a3;
- (void)beginTableLayoutSpace:(id)a3;
- (void)beginTableNameForChunk:(id)a3;
- (void)beginTableRow:(unsigned int)a3;
- (void)beginTagWithType:(int)a3 tagProperties:(id)a4;
- (void)beginTateChuYokoRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)beginTextColumn:(id)a3 limitSelection:(id)a4;
- (void)beginTextStorageChunk:(id)a3 limitSelection:(id)a4;
- (void)dispatchObject:(id)a3 tableBlock:(id)a4 tocBlock:(id)a5 drawableBlock:(id)a6;
- (void)endAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)endCheckboxCell;
- (void)endComment;
- (void)endDrawable:(id)a3;
- (void)endFreehandDrawing:(id)a3;
- (void)endLineFragmentBodyWithRange:(_NSRange)a3;
- (void)endLineFragmentWithRange:(_NSRange)a3;
- (void)endListLabel;
- (void)endMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3;
- (void)endObject:(id)a3;
- (void)endOneColumnText:(id)a3 column:(id)a4;
- (void)endParagraphWithLineFragmentRange:(_NSRange)a3;
- (void)endPencilAnnotation:(id)a3;
- (void)endPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4;
- (void)endRatingCell;
- (void)endRubyRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)endTOCChunk:(id)a3;
- (void)endTableCell:(id)a3 withCellID:(TSUCellCoord)a4 cellHasContents:(BOOL)a5 cellIsPrimary:(BOOL)a6;
- (void)endTableChunk:(id)a3;
- (void)endTableLayoutSpace:(id)a3;
- (void)endTableNameForChunk:(id)a3;
- (void)endTableRow:(unsigned int)a3;
- (void)endTag;
- (void)endTateChuYokoRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4;
- (void)endTextColumn:(id)a3;
- (void)endTextStorageChunk:(id)a3;
- (void)executeBlock:(id)a3;
- (void)executeBlockForCurrentParagraph:(id)a3;
- (void)handleObject:(id)a3 tableBlock:(id)a4 tocBlock:(id)a5 drawableBlock:(id)a6;
- (void)popContextWithExpectedClass:(Class)a3;
- (void)popTagStackUntilReachingHeight:(unint64_t)a3;
- (void)pushContext:(id)a3;
- (void)restoreStateFromTopOfContextStackWithExpectedClass:(Class)a3;
- (void)setState:(id)a3;
- (void)setUp;
@end

@implementation TSAPdfTagger

- (TSAPdfTagger)initWithRenderingExporter:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSAPdfTagger;
  v5 = [(TSAPdfTagger *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_exporter, v4);
    objc_msgSend_setUp(v6, v7, v8, v9);
  }

  return v6;
}

- (void)setUp
{
  self->_stateIsValid = 1;
  v3 = objc_opt_new();
  contextStack = self->_contextStack;
  self->_contextStack = v3;

  v5 = objc_opt_new();
  tagStack = self->_tagStack;
  self->_tagStack = v5;

  v7 = [TSAPdfTagInfo alloc];
  v19 = objc_msgSend_initWithTagType_tagProperties_(v7, v8, 0, 0);
  objc_msgSend_tsu_push_(self->_tagStack, v9, v19, v10);
  v11 = objc_opt_new();
  paragraphLevelResolverStack = self->_paragraphLevelResolverStack;
  self->_paragraphLevelResolverStack = v11;

  v13 = [TSAPdfTaggerListParagraphLevelResolver alloc];
  v16 = objc_msgSend_initWithTagger_(v13, v14, self, v15);
  objc_msgSend_tsu_push_(self->_paragraphLevelResolverStack, v17, v16, v18);
}

- (id)documentRoot
{
  v4 = objc_msgSend_exporter(self, a2, v2, v3);
  v8 = objc_msgSend_documentRoot(v4, v5, v6, v7);

  return v8;
}

- (id)imager
{
  v4 = objc_msgSend_exporter(self, a2, v2, v3);
  v8 = objc_msgSend_imager(v4, v5, v6, v7);

  return v8;
}

- (id)canvas
{
  v4 = objc_msgSend_imager(self, a2, v2, v3);
  v8 = objc_msgSend_canvas(v4, v5, v6, v7);

  return v8;
}

+ (BOOL)totalCellNumberInAllTablesExceedsMaxAllowedInDocument:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v4 = objc_opt_class();
  v7 = objc_msgSend_modelEnumeratorForObjectsOfClass_(v3, v5, v4, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2760CCF08;
  v12[3] = &unk_27A6B0918;
  v12[4] = v13;
  v12[5] = &v14;
  objc_msgSend_enumerateUsingBlock_(v7, v8, v12, v9);
  v10 = *(v15 + 24);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (void)executeBlock:(id)a3
{
  v4 = a3;
  if (self->_stateIsValid)
  {
    v4[2]();
  }
}

- (void)pushContext:(id)a3
{
  v23 = a3;
  v7 = objc_msgSend_count(self->_contextStack, v4, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%@", v8, v23);
  v10 = v9;
  v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
  sub_2760CD160(v7, "PUSH %s", v15, v16, v17, v18, v19, v20, v14);

  objc_msgSend_tsu_push_(self->_contextStack, v21, v23, v22);
}

- (void)popContextWithExpectedClass:(Class)a3
{
  v33 = objc_msgSend_tsu_peek(self->_contextStack, a2, a3, v3);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_opt_class();
    sub_2760CB2EC(0, "Class mismatch popping rendering context: %@ instead of %@", v9, v10, v11, v12, v13, v14, v8);
  }

  v15 = objc_msgSend_tsu_pop(self->_contextStack, v5, v6, v7);
  v19 = objc_msgSend_count(self->_contextStack, v16, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%@", v20, v33);
  v22 = v21;
  v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
  sub_2760CD160(v19, "POP %s", v27, v28, v29, v30, v31, v32, v26);
}

- (void)beginTagWithType:(int)a3 tagProperties:(id)a4
{
  v4 = *&a3;
  tagProperties = a4;
  Name = CGPDFTagTypeGetName(v4);
  v10 = objc_msgSend_count(self->_tagStack, v7, v8, v9);
  sub_2760CD160(v10 - 1, "BEGIN %s", v11, v12, v13, v14, v15, v16, Name);
  v17 = [TSAPdfTagInfo alloc];
  v19 = objc_msgSend_initWithTagType_tagProperties_(v17, v18, v4, tagProperties);
  objc_msgSend_tsu_push_(self->_tagStack, v20, v19, v21);
  if (!objc_msgSend_taggingPreventionDepth(self, v22, v23, v24))
  {
    CGPDFContextBeginTag(self->_CGContext, v4, tagProperties);
  }
}

- (void)endTag
{
  v35 = objc_msgSend_tsu_peek(self->_tagStack, a2, v2, v3);
  v8 = objc_msgSend_tagType(v35, v5, v6, v7);
  if (!objc_msgSend_taggingPreventionDepth(self, v9, v10, v11))
  {
    CGPDFContextEndTag(self->_CGContext);
  }

  v15 = objc_msgSend_tsu_pop(self->_tagStack, v12, v13, v14);
  Name = CGPDFTagTypeGetName(v8);
  if (objc_msgSend_count(self->_tagStack, v17, v18, v19))
  {
    v27 = objc_msgSend_count(self->_tagStack, v20, v21, v22);
    sub_2760CD160(v27 - 1, "END %s", v28, v29, v30, v31, v32, v33, Name);
  }

  else
  {
    sub_2760CB2EC(0, "the tagStack count was 0 and we were trying to endTag", v21, v22, v23, v24, v25, v26, v34);
  }
}

- (void)popTagStackUntilReachingHeight:(unint64_t)a3
{
  v6 = objc_msgSend_count(self->_tagStack, a2, a3, v3) >= a3;
  v10 = objc_msgSend_count(self->_tagStack, v7, v8, v9);
  sub_2760CB2EC(v6, "Tag stack %d less than desired value %d", v11, v12, v13, v14, v15, v16, v10);
  while (objc_msgSend_count(self->_tagStack, v17, v18, v19) > a3)
  {
    objc_msgSend_endTag(self, v20, v21, v22);
  }
}

- (id)topmostContextOfClass:(Class)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_msgSend_reverseObjectEnumerator(self->_contextStack, a2, a3, v3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v13, v17, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (unint64_t)depthOfContext:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_indexOfObjectIdenticalTo_(self->_contextStack, v5, v4, v6);
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_count(self->_contextStack, v7, v8, v9) + ~v10;
  }

  return v11;
}

- (int)tagTypeAtDepth:(unint64_t)a3
{
  v6 = objc_msgSend_count(self->_tagStack, a2, a3, v3) > a3;
  objc_msgSend_count(self->_tagStack, v7, v8, v9);
  sub_2760CB2EC(v6, "Tag depth %d exceeds tag stack height %d", v10, v11, v12, v13, v14, v15, a3);
  tagStack = self->_tagStack;
  v20 = objc_msgSend_count(tagStack, v17, v18, v19);
  v23 = objc_msgSend_objectAtIndexedSubscript_(tagStack, v21, v20 + ~a3, v22);
  LODWORD(tagStack) = objc_msgSend_tagType(v23, v24, v25, v26);

  return tagStack;
}

- (unint64_t)depthOfTopmostTagOfType:(int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_reverseObjectEnumerator(self->_tagStack, a2, *&a3, v3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v17;
LABEL_3:
    v13 = 0;
    v14 = v11;
    v11 += v10;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v5);
      }

      if (objc_msgSend_tagType(*(*(&v16 + 1) + 8 * v13), v7, v8, v9) == a3)
      {
        break;
      }

      ++v14;
      if (v10 == ++v13)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v20, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (id)state
{
  v3 = [TSAPdfTaggerState alloc];
  v7 = objc_msgSend_tagStackHeight(self, v4, v5, v6);
  v10 = objc_msgSend_initWithTagStackHeight_(v3, v8, v7, v9);

  return v10;
}

- (void)setState:(id)a3
{
  v10 = a3;
  v7 = objc_msgSend_tagStackHeight(v10, v4, v5, v6);
  objc_msgSend_popTagStackUntilReachingHeight_(self, v8, v7, v9);
}

- (id)topOfContextStackWithExpectedClass:(Class)a3
{
  v5 = objc_msgSend_tsu_peek(self->_contextStack, a2, a3, v3);
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = NSStringFromClass(a3);
  v8 = objc_opt_class();
  v16 = NSStringFromClass(v8);
  sub_2760CB2EC(isKindOfClass & 1, "Incorrect top context class: expected %@, actual %@", v9, v10, v11, v12, v13, v14, v7);

  return v5;
}

- (void)restoreStateFromTopOfContextStackWithExpectedClass:(Class)a3
{
  v5 = objc_opt_class();
  isSubclassOfClass = objc_msgSend_isSubclassOfClass_(a3, v6, v5, v7);
  sub_2760CB2EC(isSubclassOfClass, "Unexpected class hierarchy", v9, v10, v11, v12, v13, v14, v25);
  v26 = objc_msgSend_topOfContextStackWithExpectedClass_(self, v15, a3, v16);
  v20 = objc_msgSend_taggerState(v26, v17, v18, v19);
  objc_msgSend_setState_(self, v21, v20, v22);

  objc_msgSend_popContextWithExpectedClass_(self, v23, a3, v24);
}

- (id)topmostColumnContext
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](self, sel_topmostContextOfClass_, v3, v4);
}

- (id)topmostParagraphContext
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](self, sel_topmostContextOfClass_, v3, v4);
}

- (id)topmostColumn
{
  v4 = objc_msgSend_topmostColumnContext(self, a2, v2, v3);
  v8 = objc_msgSend_column(v4, v5, v6, v7);

  return v8;
}

- (id)topmostTextStorage
{
  v4 = objc_msgSend_topmostColumn(self, a2, v2, v3);
  v8 = objc_msgSend_storage(v4, v5, v6, v7);

  return v8;
}

- (_NSRange)topmostColumnRange
{
  v4 = objc_msgSend_topmostColumnContext(self, a2, v2, v3);
  v8 = objc_msgSend_range(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)beginPage
{
  if (!self->_stateIsValid)
  {
    objc_msgSend_setUp(self, a2, v2, v3);
  }
}

- (BOOL)textStorageChunkIsFootnote:(id)a3
{
  v4 = objc_msgSend_storage(a3, a2, a3, v3);
  v8 = objc_msgSend_wpKind(v4, v5, v6, v7) == 2;

  return v8;
}

- (void)beginTextStorageChunk:(id)a3 limitSelection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2760CDE84;
  v12[3] = &unk_27A6B03E0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  objc_msgSend_executeBlock_(self, v10, v12, v11);
}

- (void)endTextStorageChunk:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760CE02C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)beginOneColumnText:(id)a3 column:(id)a4 limitSelection:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2760CE154;
  v13[3] = &unk_27A6B03E0;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  objc_msgSend_executeBlock_(self, v11, v13, v12);
}

- (void)endOneColumnText:(id)a3 column:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760CE23C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, a4);
}

- (void)beginTextColumn:(id)a3 limitSelection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2760CE364;
  v12[3] = &unk_27A6B03E0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  objc_msgSend_executeBlock_(self, v10, v12, v11);
}

- (void)endTextColumn:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760CE44C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (id)topmostTocChunkContext
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](self, sel_topmostContextOfClass_, v3, v4);
}

- (BOOL)topOfContextStackIsParagraph
{
  v4 = objc_msgSend_tsu_peek(self->_contextStack, a2, v2, v3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)assertTopOfContextStackIsParagraph:(BOOL)a3
{
  if (objc_msgSend_topOfContextStackIsParagraph(self, a2, a3, v3) != a3)
  {

    sub_2760CB2EC(0, "Incorrect paragraph rendering context life span", v4, v5, v6, v7, v8, v9, v11);
  }
}

- (void)beginMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_topmostParagraphLevelResolver(self, a2, a3.location, a3.length);
  v10 = objc_msgSend_topmostColumnContext(self, v7, v8, v9);
  v14 = objc_msgSend_paragraphEnumerator(v10, v11, v12, v13);
  v22 = TSWPParagraphEnumerator::paragraphTextRange(v14);
  v24 = v22 <= location && v22 + v15 >= location + length;
  sub_2760CB2EC(v24, "Line fragment not within current paragraph", v16, v17, v18, v19, v20, v21, v55);
  v58 = 0;
  v27 = objc_msgSend_levelOfCurrentParagraph_(v6, v25, &v58, v26);
  v56 = v58;
  if ((v27 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v31 = objc_msgSend_topmostColumnRange(self, v28, v29, v30);
  v33 = v32;
  v36 = objc_msgSend_column(v10, v32, v34, v35);
  v40 = objc_msgSend_storage(v36, v37, v38, v39);
  VisibleCharInRange = objc_msgSend_indexOfFirstVisibleCharInRange_(v40, v41, v31, v33);

  if (VisibleCharInRange >= v22)
  {
    v46 = 0;
    v45 = -1;
  }

  else
  {
    TSWPParagraphEnumerator::operator--();
    v57 = 0;
    v45 = objc_msgSend_levelOfCurrentParagraph_(v6, v43, &v57, v44);
    v46 = v57;
    TSWPParagraphEnumerator::operator++();
    if (v27 <= v45)
    {
      if (v27 != v45)
      {

        goto LABEL_17;
      }

      v48 = objc_msgSend_paragraphInfo_matchesParagraphInfo_level_(v6, v47, v46, v56, v27) ^ 1;
      goto LABEL_15;
    }
  }

  v48 = v27 - v45;
LABEL_15:

  if (v48 >= 1)
  {
    do
    {
      v52 = objc_msgSend_tagType(v6, v49, v50, v51);
      objc_msgSend_beginTagWithType_(self, v53, v52, v54);
      --v48;
    }

    while (v48);
  }

LABEL_17:
}

- (void)endMultiParagraphEntityWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_topmostParagraphLevelResolver(self, a2, a3.location, a3.length);
  v10 = objc_msgSend_topmostColumnContext(self, v7, v8, v9);
  v14 = objc_msgSend_paragraphEnumerator(v10, v11, v12, v13);
  v15 = TSWPParagraphEnumerator::paragraphTextRange(v14);
  v23 = v15 + v22;
  v25 = v15 <= location && v23 >= location + length;
  sub_2760CB2EC(v25, "Line fragment not within current paragraph", v16, v17, v18, v19, v20, v21, v54);
  v55 = 0;
  v28 = objc_msgSend_levelOfCurrentParagraph_(v6, v26, &v55, v27);
  v32 = v55;
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v33 = objc_msgSend_topmostColumnRange(self, v29, v30, v31);
  v37 = &v34[v33 - v23];
  if (&v34[v33] <= v23 || (objc_msgSend_column(v10, v34, v35, v36), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend_storage(v38, v39, v40, v41), v42 = objc_claimAutoreleasedReturnValue(), VisibleCharInRange = objc_msgSend_indexOfFirstVisibleCharInRange_(v42, v43, v23, v37), v42, v38, VisibleCharInRange == 0x7FFFFFFFFFFFFFFFLL))
  {
    v45 = 0;
    v46 = -1;
  }

  else
  {
    TSWPParagraphEnumerator::operator++();
    v54 = 0;
    v46 = objc_msgSend_levelOfCurrentParagraph_(v6, v51, &v54, v52);
    v45 = v54;
    TSWPParagraphEnumerator::operator--();
    if (v28 <= v46)
    {
      if (v28 != v46)
      {

        goto LABEL_14;
      }

      v47 = objc_msgSend_paragraphInfo_matchesParagraphInfo_level_(v6, v53, v32, v45, v28) ^ 1;
      goto LABEL_12;
    }
  }

  v47 = v28 - v46;
LABEL_12:

  if (v47 >= 1)
  {
    do
    {
      objc_msgSend_endTag(self, v48, v49, v50);
      --v47;
    }

    while (v47);
  }

LABEL_14:
}

+ (BOOL)isHeadingStyle:(id)a3 headingIndex:(int *)a4
{
  v5 = objc_msgSend_intValueForProperty_(a3, a2, 101, a4);
  if (a4 && v5 <= 6)
  {
    *a4 = v5;
  }

  return v5 < 7;
}

- (BOOL)currentParagraphNeedsSpans
{
  v4 = objc_msgSend_topmostColumnContext(self, a2, v2, v3);
  v8 = objc_msgSend_column(v4, v5, v6, v7);
  v12 = objc_msgSend_storage(v8, v9, v10, v11);
  v16 = objc_msgSend_paragraphEnumerator(v4, v13, v14, v15);
  v17 = TSWPParagraphEnumerator::paragraphTextRange(v16);
  v19 = v18;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (objc_msgSend_wpKind(v12, v18, v20, v21))
  {
    if (objc_msgSend_wpKind(v12, v22, v23, v24) == 2)
    {
      v26 = objc_opt_class();
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_2760CED34;
      v49[3] = &unk_27A6B0968;
      v49[4] = &v55;
      v49[5] = &v51;
      objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(v12, v27, v26, v17, v19, v49);
    }
  }

  else
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_2760CED10;
    v50[3] = &unk_27A6B0940;
    v50[4] = &v55;
    v50[5] = &v51;
    objc_msgSend_enumerateFootnoteAttachmentsInTextRange_usingBlock_(v12, v22, v17, v19, v50);
  }

  if ((v52[3] & 1) == 0)
  {
    v28 = objc_msgSend_phoneticsExistOnRange_(v12, v25, v17, v19);
    v29 = v52;
    if (v28)
    {
      *(v56 + 24) = 1;
      *(v29 + 24) = 1;
    }

    else if ((v52[3] & 1) == 0)
    {
      v30 = objc_opt_class();
      v32 = objc_msgSend_smartFieldsWithAttributeKind_withClass_intersectingRange_(v12, v31, 6, v30, v17, v19);
      if (objc_msgSend_count(v32, v33, v34, v35))
      {
        *(v56 + 24) = 1;
        *(v52 + 24) = 1;
      }

      if ((v52[3] & 1) == 0)
      {
        v38 = objc_msgSend_dropCapStyleAtCharIndex_(v12, v36, v17, v37);
        v42 = objc_msgSend_dropCap(v38, v39, v40, v41);
        v46 = objc_msgSend_numberOfCharacters(v42, v43, v44, v45);

        if (v46)
        {
          *(v56 + 24) = 1;
          *(v52 + 24) = 1;
        }
      }
    }
  }

  v47 = *(v56 + 24);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  return v47;
}

- (BOOL)currentParagraphHasContents
{
  v4 = objc_msgSend_topmostColumnContext(self, a2, v2, v3);
  v8 = objc_msgSend_column(v4, v5, v6, v7);
  v12 = objc_msgSend_storage(v8, v9, v10, v11);
  v16 = objc_msgSend_paragraphEnumerator(v4, v13, v14, v15);
  v17 = TSWPParagraphEnumerator::paragraphTextRange(v16);
  v20 = v17;
  v21 = v18;
  if (v18)
  {
    objc_msgSend_characterAtIndex_(v12, v18, &v18[v17 - 1], v19);
    v21 -= IsParagraphBreakingCharacter();
  }

  VisibleCharInRange = objc_msgSend_indexOfFirstVisibleCharInRange_(v12, v18, v20, v21);
  v24 = VisibleCharInRange != 0x7FFFFFFFFFFFFFFFLL && VisibleCharInRange < v21 + v20;

  return v24;
}

- (void)beginParagraphWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  objc_msgSend_assertTopOfContextStackIsParagraph_(self, a2, 0, a3.length);
  objc_msgSend_beginMultiParagraphEntityWithLineFragmentRange_(self, v6, location, length);
  v10 = objc_msgSend_currentParagraphNeedsSpans(self, v7, v8, v9);
  v11 = [TSAPdfTaggerParagraphContext alloc];
  v13 = objc_msgSend_initWithStateOfTagger_needsSpans_(v11, v12, self, v10);
  objc_msgSend_pushContext_(self, v14, v13, v15);
  v19 = objc_msgSend_topmostColumnContext(self, v16, v17, v18);
  v23 = objc_msgSend_paragraphEnumerator(v19, v20, v21, v22);
  v24 = TSWPParagraphEnumerator::paragraphStyle(v23, 0);
  v25 = TSWPParagraphEnumerator::paragraphListStyle(v23);
  v26 = TSWPParagraphEnumerator::paragraphLevel(v23);
  v29 = objc_msgSend_effectiveTypeForLevel_(v25, v27, v26, v28);
  v33 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v30, v31, v32);
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"Title", &stru_288512028, @"TSApplication");

  v39 = objc_msgSend_firstNamedAncestor(v24, v36, v37, v38);
  v43 = objc_msgSend_name(v39, v40, v41, v42);
  isEqual = objc_msgSend_isEqual_(v43, v44, v35, v45);

  if (isEqual)
  {
    isHeadingStyle_headingIndex = 0;
    v51 = 201;
  }

  else
  {
    v64 = 0;
    isHeadingStyle_headingIndex = objc_msgSend_isHeadingStyle_headingIndex_(TSAPdfTagger, v47, v24, &v64);
    if (isHeadingStyle_headingIndex)
    {
      v51 = dword_276116DC0[v64];
      isHeadingStyle_headingIndex = 1;
    }

    else
    {
      v52 = objc_msgSend_topmostTocChunkContext(self, v47, v48, v49);

      if (v52)
      {
        v51 = 108;
      }

      else
      {
        v51 = 0;
      }
    }
  }

  if (v29)
  {
    v53 = v51 == 0;
  }

  else
  {
    v53 = 0;
  }

  if (v53)
  {
    v54 = 301;
  }

  else
  {
    v54 = v51;
  }

  if (!v54)
  {
    if ((objc_msgSend_topmostTagType(self, v47, v48, v49) & 0xFFFFFFFE) != 0x192)
    {
      v54 = 200;
      goto LABEL_25;
    }

    v55 = objc_msgSend_column(v19, v47, v48, v49);
    v59 = objc_msgSend_storage(v55, v56, v57, v58);
    v63 = objc_msgSend_paragraphCount(v59, v60, v61, v62);

    if (v63)
    {
      v54 = 200;
    }

    else
    {
      v54 = 0;
    }

    isHeadingStyle_headingIndex = 1;
    if (!v54)
    {
LABEL_16:
      if (!v54)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  if (!isHeadingStyle_headingIndex)
  {
    goto LABEL_16;
  }

LABEL_25:
  if (objc_msgSend_currentParagraphHasContents(self, v47, v48, v49))
  {
LABEL_26:
    objc_msgSend_beginTagWithType_(self, v47, v54, v49);
  }

LABEL_27:
}

- (void)endParagraphWithLineFragmentRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_opt_class();
  objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(self, v7, v6, v8);

  MEMORY[0x2821F9670](self, sel_endMultiParagraphEntityWithLineFragmentRange_, location, length);
}

- (void)beginParagraphBodyWithLineFragmentRange:(_NSRange)a3
{
  v4 = objc_msgSend_topmostTagType(self, a2, a3.location, a3.length);
  if (v4 == 301)
  {
    v7 = 303;
  }

  else
  {
    if (v4 != 108)
    {
      return;
    }

    v7 = 503;
  }

  objc_msgSend_beginTagWithType_(self, v5, v7, v6);
}

- (void)assertCharIndexRelativeToParagraphRange:(BOOL)a3
{
  if (!a3)
  {
    sub_2760CB2EC(0, "Char index not in paragraph range", a3, v3, v4, v5, v6, v7, v8);
  }
}

- (void)advanceParagraphEnumeratorToCharIndex:(unint64_t)a3
{
  v11 = objc_msgSend_topmostColumnContext(self, a2, a3, v3);
  v8 = objc_msgSend_paragraphEnumerator(v11, v5, v6, v7);
  while (1)
  {
    v9 = TSWPParagraphEnumerator::paragraphTextRange(v8);
    if (v9 + v10 > a3)
    {
      break;
    }

    TSWPParagraphEnumerator::operator++();
  }
}

- (void)executeBlockForCurrentParagraph:(id)a3
{
  v26 = a3;
  v7 = objc_msgSend_topmostColumnRange(self, v4, v5, v6);
  v9 = v8;
  v12 = objc_msgSend_topmostColumnContext(self, v8, v10, v11);
  v16 = objc_msgSend_column(v12, v13, v14, v15);
  v20 = objc_msgSend_storage(v16, v17, v18, v19);

  v24 = objc_msgSend_paragraphEnumerator(v12, v21, v22, v23);
  v28.location = TSWPParagraphEnumerator::paragraphTextRange(v24);
  v29.location = v7;
  v29.length = v9;
  v25 = NSIntersectionRange(v28, v29);
  v26[2](v26, v20, v25.location, v25.length);
}

- (unint64_t)indexOfLastVisibleCharInParagraphBeforeCharIndex:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2760CF4C4;
  v6[3] = &unk_27A6B0990;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = self;
  objc_msgSend_executeBlockForCurrentParagraph_(self, a2, v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)indexOfFirstVisibleCharInParagraphAtOrAfterCharIndex:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2760CF658;
  v6[3] = &unk_27A6B0990;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = self;
  objc_msgSend_executeBlockForCurrentParagraph_(self, a2, v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)beginLineFragmentWithRange:(_NSRange)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760CF79C;
  v3[3] = &unk_27A6B09B8;
  v4 = a3;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, a3.length);
}

- (void)endLineFragmentWithRange:(_NSRange)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760CF878;
  v3[3] = &unk_27A6B09B8;
  v4 = a3;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, a3.length);
}

- (void)beginListLabel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760CF954;
  v3[3] = &unk_27A6AF850;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, v2);
}

- (void)endListLabel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760CFA64;
  v3[3] = &unk_27A6AF850;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, v2);
}

- (void)beginLineFragmentBodyWithRange:(_NSRange)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760CFB1C;
  v3[3] = &unk_27A6B09B8;
  v4 = a3;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, a3.length);
}

- (void)endLineFragmentBodyWithRange:(_NSRange)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760CFC3C;
  v3[3] = &unk_27A6B09B8;
  v4 = a3;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, a3.length);
}

- (id)retrieveHighestInfoAtCharIndex:(unint64_t)a3 returnTagType:(int *)a4
{
  v6 = objc_msgSend_topmostTextStorage(self, a2, a3, a4);
  v8 = v6;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(v6, v7, a3, 6, 0);
    objc_opt_class();
    v9 = TSUDynamicCast();

    if (v9)
    {
      *a4 = 506;
    }
  }

  return v9;
}

- (void)beginPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760CFE00;
  v4[3] = &unk_27A6AF8A0;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length);
}

- (void)endPrimaryTextRunWithRange:(_NSRange)a3 hasActualContents:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760CFF58;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length, a4);
}

- (void)beginAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D0014;
  v4[3] = &unk_27A6B09E0;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length);
}

- (void)endAncillaryTextRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D01A0;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length, a4.location, a4.length);
}

- (void)beginRubyRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D025C;
  v4[3] = &unk_27A6B09E0;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length);
}

- (void)endRubyRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D0360;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length, a4.location, a4.length);
}

- (void)beginTateChuYokoRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D041C;
  v4[3] = &unk_27A6B09E0;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length);
}

- (void)endTateChuYokoRunWithRange:(_NSRange)a3 baseTextRange:(_NSRange)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D052C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, a3.length, a4.location, a4.length);
}

- (void)dispatchObject:(id)a3 tableBlock:(id)a4 tocBlock:(id)a5 drawableBlock:(id)a6
{
  v21 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  objc_opt_class();
  v12 = TSUDynamicCast();
  objc_opt_class();
  v13 = TSUDynamicCast();
  objc_opt_class();
  v17 = objc_msgSend_info(v21, v14, v15, v16);
  v18 = TSUDynamicCast();

  if (v12)
  {
    v19 = v9;
    v20 = v12;
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    v19[2](v19, v20);
    goto LABEL_7;
  }

  if (v13)
  {
    v19 = v10;
    v20 = v13;
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11 && v18)
  {
    v11[2](v11, v21);
  }

LABEL_7:
}

- (void)handleObject:(id)a3 tableBlock:(id)a4 tocBlock:(id)a5 drawableBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2760D0860;
  v20[3] = &unk_27A6B0A08;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  objc_msgSend_executeBlock_(self, v18, v20, v19);
}

- (id)regularDrawableRepForObjectRep:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2760D0984;
  v10 = sub_2760D0994;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2760D099C;
  v5[3] = &unk_27A6B0A30;
  v5[4] = &v6;
  objc_msgSend_dispatchObject_tableBlock_tocBlock_drawableBlock_(self, a2, a3, 0, 0, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)shouldMapDrawableRep:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v7 = objc_msgSend_info(v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  objc_opt_class();
  v9 = TSUDynamicCast();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = v8 == 0;
  }

  v14 = !v13;
  v15 = (isKindOfClass | v14) & ~(v12 | v11);

  return v15 & 1;
}

- (void)beginObject:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2760D0BD8;
  v5[3] = &unk_27A6B0A58;
  v5[4] = self;
  v3[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D0BE4;
  v4[3] = &unk_27A6B0A80;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760D0BF0;
  v3[3] = &unk_27A6B0AA8;
  objc_msgSend_handleObject_tableBlock_tocBlock_drawableBlock_(self, a2, a3, v5, v4, v3);
}

- (void)endObject:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2760D0D5C;
  v5[3] = &unk_27A6B0A58;
  v5[4] = self;
  v3[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D0D68;
  v4[3] = &unk_27A6B0A80;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760D0D74;
  v3[3] = &unk_27A6B0AA8;
  objc_msgSend_handleObject_tableBlock_tocBlock_drawableBlock_(self, a2, a3, v5, v4, v3);
}

- (void)beginDrawable:(id)a3
{
  v76[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TSAPdfTaggerDrawableContext alloc];
  v7 = objc_msgSend_initWithStateOfTagger_drawableRep_(v5, v6, self, v4);
  objc_msgSend_pushContext_(self, v8, v7, v9);
  objc_opt_class();
  v13 = objc_msgSend_info(v4, v10, v11, v12);
  v14 = TSUDynamicCast();

  v18 = objc_msgSend_accessibilityDescription(v14, v15, v16, v17);
  objc_opt_class();
  v19 = TSUDynamicCast();
  v23 = v19;
  if (v19)
  {
    v24 = objc_msgSend_galleryLayout(v19, v20, v21, v22);
    v28 = objc_msgSend_currentItem(v24, v25, v26, v27);
    v32 = objc_msgSend_accessibilityDescription(v28, v29, v30, v31);
    if (objc_msgSend_length(v32, v33, v34, v35))
    {
      v36 = v32;

      v18 = v36;
    }
  }

  if (objc_msgSend_length(v18, v37, v38, v39))
  {
    v75 = *MEMORY[0x277CBF600];
    v76[0] = v18;
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v76, &v75, 1);
  }

  else
  {
    v41 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_beginTagWithType_tagProperties_(self, v42, 507, v41);
  }

  v45 = objc_msgSend_state(self, v42, v43, v44);
  objc_msgSend_setTaggerStateOutsideCore_(v7, v46, v45, v47);

  v74 = &unk_28854A838;
  v48 = TSUProtocolCast();
  v52 = v48;
  if (!v48 || (objc_msgSend_shouldBeIgnoredByPDFTagger(v48, v49, v50, v51, &unk_28854A838) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_beginTagWithType_tagProperties_(self, v53, 701, v41, v74);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_beginTagWithType_tagProperties_(self, v54, 104, v41, v74);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objc_msgSend_beginTagWithType_tagProperties_(self, v55, 700, v41, v74);
          }

          else
          {
            v56 = MEMORY[0x277CCACA8];
            v57 = objc_opt_class();
            v60 = objc_msgSend_stringWithFormat_(v56, v58, @"%@", v59, v57);
            if ((objc_msgSend_containsObject_(&unk_28851B3F0, v61, v60, v62) & 1) == 0)
            {
              v65 = MEMORY[0x277D81150];
              v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSAPdfTagger beginDrawable:]", v64);
              v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPdfTagger.mm", v68);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v70, v66, v69, 2003, 0, "Drawable of class %@ not handled", v60);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73);
            }
          }
        }
      }
    }
  }
}

- (void)endDrawable:(id)a3
{
  v5 = objc_opt_class();

  objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(self, v4, v5, v6);
}

- (void)beginFreehandDrawing:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2760D13F8;
  v8[3] = &unk_27A6B0338;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_executeBlock_(self, v6, v8, v7);
}

- (void)endFreehandDrawing:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2760D14B0;
  v8[3] = &unk_27A6B0338;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_executeBlock_(self, v6, v8, v7);
}

- (void)beginTOCChunk:(id)a3
{
  v18 = a3;
  v4 = [TSAPdfTaggerTocChunkContext alloc];
  v6 = objc_msgSend_initWithStateOfTagger_tocChunkRep_(v4, v5, self, v18);
  objc_msgSend_setUp(v6, v7, v8, v9);
  objc_msgSend_pushContext_(self, v10, v6, v11);
  v12 = [TSAPdfTaggerTocParagraphLevelResolver alloc];
  v15 = objc_msgSend_initWithTagger_(v12, v13, self, v14);
  objc_msgSend_tsu_push_(self->_paragraphLevelResolverStack, v16, v15, v17);
}

- (void)endTOCChunk:(id)a3
{
  v5 = objc_msgSend_tsu_pop(self->_paragraphLevelResolverStack, a2, a3, v3);
  v7 = objc_opt_class();

  objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(self, v6, v7, v8);
}

- (void)beginTableChunk:(id)a3
{
  v15 = a3;
  v4 = [TSAPdfTaggerTableChunkContext alloc];
  v6 = objc_msgSend_initWithStateOfTagger_tableChunk_(v4, v5, self, v15);
  objc_msgSend_pushContext_(self, v7, v6, v8);
  v12 = objc_msgSend_tableLayout(v15, v9, v10, v11);
  if (TSTLayoutGetTableNameVisible())
  {
    objc_msgSend_beginTagWithType_(self, v13, 104, v14);
  }
}

- (void)endTableChunk:(id)a3
{
  v5 = objc_opt_class();

  objc_msgSend_restoreStateFromTopOfContextStackWithExpectedClass_(self, v4, v5, v6);
}

- (void)beginTableNameForChunk:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D1768;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)endTableNameForChunk:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D184C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)beginTableLayoutSpace:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2760D193C;
  v8[3] = &unk_27A6B0338;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_executeBlock_(self, v6, v8, v7);
}

- (void)endTableLayoutSpace:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D1A90;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)beginTableRow:(unsigned int)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D1B48;
  v4[3] = &unk_27A6B0AD0;
  v4[4] = self;
  v5 = a3;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)endTableRow:(unsigned int)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D1C84;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)beginTableCell:(id)a3 withCellID:(TSUCellCoord)a4 cellHasContents:(BOOL)a5 cellIsPrimary:(BOOL)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2760D1D04;
  v6[3] = &unk_27A6B0AF8;
  v7 = a6;
  v6[4] = self;
  v6[5] = a4;
  v8 = a5;
  objc_msgSend_executeBlock_(self, a2, v6, *&a4);
}

- (void)endTableCell:(id)a3 withCellID:(TSUCellCoord)a4 cellHasContents:(BOOL)a5 cellIsPrimary:(BOOL)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2760D1EF0;
  v6[3] = &unk_27A6B0B20;
  v6[4] = self;
  v7 = a6;
  objc_msgSend_executeBlock_(self, a2, v6, *&a4, a5);
}

- (void)beginCheckboxCell:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D1FD8;
  v4[3] = &unk_27A6B0B20;
  v4[4] = self;
  v5 = a3;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)endCheckboxCell
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760D2288;
  v3[3] = &unk_27A6AF850;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, v2);
}

- (void)beginRatingCell:(double)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D2340;
  v4[3] = &unk_27A6AF878;
  v4[4] = self;
  *&v4[5] = a3;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)endRatingCell
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760D25C8;
  v3[3] = &unk_27A6AF850;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, v2);
}

- (void)beginPencilAnnotation:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D269C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)endPencilAnnotation:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2760D278C;
  v4[3] = &unk_27A6AF850;
  v4[4] = self;
  objc_msgSend_executeBlock_(self, a2, v4, v3);
}

- (void)beginComment
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760D2840;
  v3[3] = &unk_27A6AF850;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, v2);
}

- (void)endComment
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2760D2930;
  v3[3] = &unk_27A6AF850;
  v3[4] = self;
  objc_msgSend_executeBlock_(self, a2, v3, v2);
}

- (TSARenderingExporter)exporter
{
  WeakRetained = objc_loadWeakRetained(&self->_exporter);

  return WeakRetained;
}

@end