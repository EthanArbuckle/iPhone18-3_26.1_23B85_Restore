@interface TSWPStorage
+ (TSWPAttributeArray)createAttributeArrayForKind:(unsigned int)a3 undoTransaction:(TSWPStorageTransaction *)a4;
+ (TSWPAttributeArray)createEmptyAttributeArrayForKind:(unsigned int)a3;
+ (id)filterText:(id)a3 removingAttachments:(BOOL)a4;
+ (id)plainTextPasteStringForStorages:(id)a3 forcePlainText:(BOOL)a4;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)hyperlinkCellID;
- (BOOL)anchoredDrawableAttachmentCharacterAtCharIndex:(unint64_t)a3;
- (BOOL)canBeStoredInAStringValueCell;
- (BOOL)canPasteAsPlainText;
- (BOOL)canPasteAsPlainTextWithUniformParagraphs;
- (BOOL)canUserReplaceText;
- (BOOL)changesWithPageCount;
- (BOOL)hasAttachmentsThatChangeWithPageNumberOrPageCount;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)a3;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)a3;
- (BOOL)hasDeletionInRange:(_NSRange)a3;
- (BOOL)hasSectionForParagraphBreakAtCharIndex:(unint64_t)a3;
- (BOOL)hasSmartFields;
- (BOOL)hasSmartFieldsInRange:(_NSRange)a3;
- (BOOL)hasVisibleText;
- (BOOL)highlightsAllowed;
- (BOOL)isEmptyParagraphSelection:(id)a3 outRange:(_NSRange *)a4;
- (BOOL)isThemeContent;
- (BOOL)isWholeParagraphsForRange:(_NSRange)a3 ignoreAttachmentCharacters:(BOOL)a4 requireParagraphBreakSelected:(BOOL)a5;
- (BOOL)isWritingDirectionRightToLeftForListAtParIndex:(unint64_t)a3;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)a3;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(unint64_t)a3;
- (BOOL)p_hasDeletedTextAtCharIndex:(unint64_t)a3 requireHidden:(BOOL)a4 range:(_NSRange *)a5;
- (BOOL)p_hasGoodAttributesForPlainTextPaste;
- (BOOL)p_passesExtraTablesChecksForStoringInAStringValueCell;
- (BOOL)p_shouldInsertionSplitChange:(id)a3 changeSession:(id)a4;
- (BOOL)paragraphHasListLabelAtCharIndex:(unint64_t)a3;
- (BOOL)selectionContainsVisibleTrackedChanges:(id)a3;
- (BOOL)setDOLCSuppressed:(BOOL)a3;
- (BOOL)styleOverridesAppliedToRange:(_NSRange)a3;
- (BOOL)textIsVertical;
- (NSString)debugDescription;
- (NSString)description;
- (TSWPAttributeArray)attributeArrayForKind:(unsigned int)a3 withCreate:(BOOL)a4 fromUndo:(BOOL)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (TSWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)a3 styleProvider:(unint64_t)a4;
- (TSWPParagraphEnumerator)paragraphEnumeratorAtParIndex:(SEL)a3 styleProvider:(unint64_t)a4;
- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)a3 styleProvider:(_NSRange)a4;
- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)a3 styleProvider:(_NSRange)a4 requireHidden:(id)a5;
- (TSWPRangeVector)deletedRangeVectorInRange:(SEL)a3;
- (TSWPStorage)initWithContext:(id)a3 string:(id)a4 kind:(int)a5 stylesheet:(id)a6 paragraphStyle:(id)a7 listStyle:(id)a8 section:(id)a9 columnStyle:(id)a10;
- (TSWPStorage)initWithContext:(id)a3 string:(id)a4 kind:(int)a5 stylesheet:(id)a6 paragraphStyle:(id)a7 listStyle:(id)a8 section:(id)a9 columnStyle:(id)a10 paragraphDirection:(int)a11;
- (_NSRange)attachmentIndexRangeForTextRange:(_NSRange)a3;
- (_NSRange)attachmentRangeForCharIndex:(unint64_t)a3 forwards:(BOOL)a4;
- (_NSRange)attachmentRangeForCharIndex:(unint64_t)a3 forwards:(BOOL)a4 attributeKind:(unsigned int)a5;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3;
- (_NSRange)charRangeMappedToStorage:(_NSRange)a3;
- (_NSRange)footnoteRangeForTextRange:(_NSRange)a3;
- (_NSRange)insertAttachmentOrFootnote:(id)a3 range:(_NSRange)a4;
- (_NSRange)insertAttachmentOrFootnote:(id)a3 range:(_NSRange)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6 changeSession:(id)a7;
- (_NSRange)insertSection:(id)a3 atCharIndex:(unint64_t)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6 changeSession:(id)a7;
- (_NSRange)insertSpecialCharacter:(unsigned __int16)a3 object:(id)a4 kind:(unsigned int)a5 range:(_NSRange)a6 dolcContext:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8 changeSession:(id)a9;
- (_NSRange)nextWordFromIndex:(unint64_t)a3 forward:(BOOL)a4;
- (_NSRange)p_RelocateNonSelectedAnchorsInRange:(_NSRange)a3 selectionInfos:(id)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)a3;
- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4 handleNextWordWhitespace:(BOOL)a5;
- (_NSRange)p_replaceCharactersInLogicalSelection:(id)a3 withString:(id)a4 withFlags:(unsigned int)a5 replaceTextData:(id *)a6 changeSession:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8 outInsertedRange:(_NSRange *)a9;
- (_NSRange)paragraphIndexRangeForCharRange:(_NSRange)a3;
- (_NSRange)range;
- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)a3;
- (_NSRange)rangeByExtendingRangeToLineBreak:(_NSRange)a3;
- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)a3;
- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)a3 skipVisibleDeleted:(BOOL)a4;
- (_NSRange)rangeByTrimmingRange:(_NSRange)a3 withBlock:(id)a4;
- (_NSRange)rangeForChange:(id)a3;
- (_NSRange)rangeForHighlight:(id)a3;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (_NSRange)rangeForSelectionWithInsertionSelection:(id)a3;
- (_NSRange)rangeForTrackedChanges:(id)a3;
- (_NSRange)rangeOfAnnotationWithOptions:(unint64_t)a3 range:(_NSRange)a4;
- (_NSRange)rangeOfParagraphBreakingCharacter:(unsigned __int16)a3 backwards:(BOOL)a4 range:(_NSRange)a5;
- (_NSRange)rangeOfString:(id)a3 searchOptions:(unint64_t)a4 range:(_NSRange)a5;
- (_NSRange)rangeOfString:(id)a3 searchOptions:(unint64_t)a4 updatingSearchRange:(_NSRange *)a5;
- (_NSRange)replaceAllOccurrencesOfObject:(id)a3 withObject:(id)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (_NSRange)replaceAllOccurrencesOfStyle:(id)a3 withStyle:(id)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (_NSRange)replaceCharactersInRange:(_NSRange)a3 withStorage:(id)a4 usePasteRules:(BOOL)a5 dolcContext:(id)a6 undoTransaction:(void *)a7;
- (_NSRange)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 notifyObservers:(BOOL)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (_NSRange)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (_NSRange)replaceCharactersInSelection:(id)a3 withStorage:(id)a4 usePasteRules:(BOOL)a5 dolcContext:(id)a6 changeSession:(id)a7 undoTransaction:(void *)a8;
- (_NSRange)replaceCharactersInSelection:(id)a3 withString:(id)a4 withFlags:(unsigned int)a5 replaceTextData:(id *)a6 changeSession:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8 outInsertedRange:(_NSRange *)a9;
- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)a3;
- (_NSRange)textRangeForListAtCharIndex:(unint64_t)a3;
- (_NSRange)textRangeForListsInCharRange:(_NSRange)a3;
- (_NSRange)textRangeForParagraphAtCharIndex:(unint64_t)a3;
- (_NSRange)textRangeForParagraphAtIndex:(unint64_t)a3;
- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)a3;
- (_NSRange)textRangeForParagraphsInRange:(_NSRange)a3;
- (_NSRange)textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:(unint64_t)a3;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3 includingBreaks:(BOOL)a4;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (__CTFont)createFontAtCharIndex:(unint64_t)a3 scaleTextPercent:(unint64_t)a4 effectiveRange:(_NSRange *)a5 styleProvider:(id)a6;
- (id)attachmentAtAttachmentIndex:(unint64_t)a3 outCharIndex:(unint64_t *)a4;
- (id)attachmentAtCharIndex:(unint64_t)a3;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)a3;
- (id)bestCharacterLanguageForTextRange:(_NSRange)a3;
- (id)changeAtCharIndex:(unint64_t)a3 attributeKind:(unsigned int)a4 effectiveRange:(_NSRange *)a5;
- (id)changeAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (id)changeDetailsAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (id)changeDetailsForChange:(id)a3 withRange:(_NSRange)a4;
- (id)characterStyleAtCharIndex:(unint64_t)a3 left:(BOOL)a4 effectiveRange:(_NSRange *)a5;
- (id)childEnumerator;
- (id)childEnumeratorForRange:(_NSRange)a3;
- (id)childInfos;
- (id)columnStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)columnStyleAtColumnStyleIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)copyWithContext:(id)a3;
- (id)deletedRangesInRange:(_NSRange)a3;
- (id)dictationAndAutocorrectionKeyAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)editableSmartFieldAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)extendSelectionForTopicChildren:(id)a3;
- (id)extendSelectionToIncludeSmartFields:(id)a3;
- (id)fontNameAtCharIndex:(unint64_t)a3 size:(double *)a4 effectiveRange:(_NSRange *)a5 styleProvider:(id)a6;
- (id)footnoteAtFootnoteIndex:(unint64_t)a3 outCharIndex:(unint64_t *)a4;
- (id)footnoteMarkAtCharIndex:(unint64_t)a3;
- (id)footnoteReferenceAtCharIndex:(unint64_t)a3;
- (id)footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:(unint64_t)a3;
- (id)footnoteStorages;
- (id)glyphVariantDataAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)hiddenRangesInRange:(_NSRange)a3;
- (id)languageAtParIndex:(unint64_t)a3 useStringTokenizer:(BOOL)a4 useCreationLanguage:(BOOL)a5;
- (id)languageForTextRange:(_NSRange)a3 useStringTokenizer:(BOOL)a4 useCreationLanguage:(BOOL)a5;
- (id)listStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)newSubstorageWithRange:(_NSRange)a3 storageContext:(id)a4 objectsContext:(id)a5 flags:(unsigned int)a6;
- (id)newSubstorageWithRange:(_NSRange)a3 storageContext:(id)a4 objectsContext:(id)a5 flags:(unsigned int)a6 kind:(int)a7;
- (id)nextChangeFromCharIndex:(unint64_t)a3 afterChange:(id)a4 changeRange:(_NSRange *)a5;
- (id)nsAttributedStringWithDefaultAttributeDelegateWithLayoutParent:(id)a3;
- (id)nsAttributedSubstringFromRange:(_NSRange)a3 delegate:(id)a4 scale:(double)a5 applyChanges:(BOOL)a6 includeInlineDrawables:(BOOL)a7 withLayoutParent:(id)a8;
- (id)nsAttributedSubstringFromRange:(_NSRange)a3 scale:(double)a4 applyChanges:(BOOL)a5 includeInlineDrawables:(BOOL)a6 withLayoutParent:(id)a7;
- (id)nsAttributedSubstringWithAttachmentsRemovedFromRange:(_NSRange)a3 withLayoutParent:(id)a4;
- (id)objectAtLocationAtExactCharIndex:(unint64_t)a3 forAttributeKind:(unsigned int)a4;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)a3 forAttributeKind:(unsigned int)a4 effectiveRange:(_NSRange *)a5;
- (id)pDefaultSectionForContext:(id)a3;
- (id)pDrawableInfoFromImporter:(id)a3 error:(id *)a4;
- (id)pExportAttributes:(unint64_t)a3 effectiveRange:(_NSRange *)a4 stickyFont:(id *)a5 scale:(double)a6;
- (id)pExportParagraphAttributes:(id)a3 nextParagraphStyle:(id)a4 scale:(double)a5;
- (id)pFindValidInsertionCharStyleFromCharIndex:(unint64_t)a3;
- (id)pImportParagraphAttributes:(id)a3 paragraphStyle:(id)a4;
- (id)pNSAttributedStringWithAttributeDelegate:(id)a3 ignoreLists:(BOOL)a4 stripTextualAttachments:(BOOL)a5 stripGraphicalAttachments:(BOOL)a6 stripInlineAttachments:(BOOL)a7 attachmentChar:(id)a8 scale:(double)a9 withLayoutParent:(id)a10;
- (id)pNSAttributedStringWithDefaultDelegateIgnoreLists:(BOOL)a3 stripTextualAttachments:(BOOL)a4 stripGraphicalAttachments:(BOOL)a5 stripInlineAttachments:(BOOL)a6 attachmentChar:(id)a7 scale:(double)a8 withLayoutParent:(id)a9;
- (id)pOverrideObjectBeforeReplacingCharactersInRange:(_NSRange)a3 withString:(id)a4 withInsertionBehavior:(int)a5;
- (id)pOverrideObjectBeforeReplacingCharactersInSelection:(id)a3 withString:(id)a4;
- (id)pParagraphStyleWithFrequentAttributesInString:(id)a3 withinStringRange:(_NSRange)a4 currentParagraphStyle:(id)a5;
- (id)pTextListsFromListStyle:(id)a3 atLevel:(unint64_t)a4 labelTypeMap:(id)a5;
- (id)p_replacementsForSelection:(id)a3 withString:(id)a4 changeSession:(id)a5 shouldTrackDeletions:(BOOL)a6;
- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)plainTextStringFromRange:(_NSRange)a3 convertTextualAttachments:(BOOL)a4 includeChildTextStorages:(BOOL)a5 forExport:(BOOL)a6 withLayoutParent:(id)a7;
- (id)previousChangeFromCharIndex:(unint64_t)a3 beforeChange:(id)a4 changeRange:(_NSRange *)a5;
- (id)referencedStyles;
- (id)referencedStylesOfClass:(Class)a3;
- (id)relocateNonSelectedAnchorsInSelection:(id)a3 undoTransaction:(TSWPStorageTransaction *)a4;
- (id)searchForAnnotationsWithHitBlock:(id)a3;
- (id)searchForString:(id)a3 options:(unint64_t)a4 onHit:(id)a5;
- (id)searchInRange:(_NSRange)a3 forString:(id)a4 options:(unint64_t)a5 onHit:(id)a6;
- (id)sectionAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)sectionAtSectionIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unsigned int)a4 effectiveRange:(_NSRange *)a5;
- (id)smartFieldsWithAttributeKind:(unsigned int)a3 intersectingRange:(_NSRange)a4 passingTest:(id)a5;
- (id)stringValue;
- (id)substringWithSelection:(id)a3;
- (id)textSourceForLayoutInRange:(_NSRange)a3;
- (id)valueForBIUProperties:(id)a3;
- (id)valueForBIUProperties:(id)a3 selection:(id)a4 insertionStyle:(id)a5;
- (id)valueForProperty:(int)a3 atCharIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (int)compareAttributeArray1:(TSWPAttributeArray *)a3 array2:(TSWPAttributeArray *)a4 range1:(_NSRange)a5 range2:(_NSRange)a6 attributeIndex1:(unint64_t)a7 attributeIndex2:(unint64_t)a8;
- (int)compareAttributeArray:(TSWPAttributeArray *)a3 range:(_NSRange)a4 otherStorage:(id)a5 otherRange:(_NSRange)a6;
- (int)compareRange:(_NSRange)a3 otherStorage:(id)a4 otherRange:(_NSRange)a5 options:(unint64_t)a6;
- (int)writingDirectionForParagraphAtCharIndex:(unint64_t)a3;
- (int)writingDirectionForParagraphAtParIndex:(unint64_t)a3;
- (int64_t)contentWritingDirection;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(__CFLocale *)a5 hyphenChar:(unsigned int *)a6;
- (int64_t)pMapListsFromStorageRange:(_NSRange)a3 toString:(id)a4 atStringLoc:(unint64_t)a5 textListMap:(id)a6;
- (unint64_t)attachmentCount;
- (unint64_t)attachmentIndexAtCharIndex:(unint64_t)a3;
- (unint64_t)attachmentIndexForInsertionAtCharIndex:(unint64_t)a3;
- (unint64_t)autoNumberFootnoteCountForRange:(_NSRange)a3;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)a3;
- (unint64_t)characterStyleAttributeCount;
- (unint64_t)columnStyleCount;
- (unint64_t)emptyParagraphCount:(_NSRange)a3;
- (unint64_t)findCharIndexForAttachment:(id)a3;
- (unint64_t)findCharIndexForFootnoteAttachment:(id)a3;
- (unint64_t)findCharacterIndexForContainedInfo:(id)a3;
- (unint64_t)findNextParagraphStyleChange:(unint64_t)a3 maxCharIndex:(unint64_t)a4;
- (unint64_t)firstParIndexInListAtParIndex:(unint64_t)a3;
- (unint64_t)footnoteCount;
- (unint64_t)footnoteIndexForCharIndex:(unint64_t)a3;
- (unint64_t)footnoteIndexForFootnote:(id)a3;
- (unint64_t)footnoteIndexForFootnoteStorage:(id)a3;
- (unint64_t)indexAfterLastVisibleCharInRange:(_NSRange)a3;
- (unint64_t)indexForCharacter:(unsigned __int16)a3 startCharIndex:(unint64_t)a4;
- (unint64_t)listNumberForParagraphEnumerator:(const TSWPParagraphEnumerator *)a3 numberingData:(id *)a4;
- (unint64_t)listNumberForParagraphIndex:(unint64_t)a3 numberingData:(id *)a4;
- (unint64_t)listStartAtCharIndex:(unint64_t)a3;
- (unint64_t)listStyleCount;
- (unint64_t)nextCharacterIndex:(unint64_t)a3;
- (unint64_t)p_indexOfFirstNonDeletedCharInRange:(_NSRange)a3 requireVisible:(BOOL)a4;
- (unint64_t)paragraphCount;
- (unint64_t)paragraphIndexAtCharIndex:(unint64_t)a3;
- (unint64_t)paragraphLevelAtCharIndex:(unint64_t)a3;
- (unint64_t)paragraphLevelAtParIndex:(unint64_t)a3;
- (unint64_t)previousCharacterIndex:(unint64_t)location forDelete:(BOOL)a4;
- (unint64_t)sectionCount;
- (unint64_t)sectionIndexForCharIndex:(unint64_t)a3;
- (unint64_t)sectionIndexForSection:(id)a3;
- (unint64_t)selectedParagraphBreakCount:(_NSRange)a3;
- (unint64_t)wordCount;
- (unsigned)disallowedElementKinds;
- (unsigned)paragraphFlagsAtCharIndex:(unint64_t)a3;
- (void)addAllDictationAndAutocorrectionKeyRangesInRange:(_NSRange)a3 toRanges:(void *)a4;
- (void)addGlyphVariantData:(id)a3 toRange:(_NSRange)a4;
- (void)addObserver:(id)a3;
- (void)addSmartField:(id)a3 toRange:(_NSRange)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)appendSection:(id)a3 charIndex:(unint64_t)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)applyChange:(id)a3 changeRange:(_NSRange)a4 accept:(BOOL)a5 undoTransaction:(void *)a6;
- (void)applyChanges:(BOOL)a3 inRange:(_NSRange)a4 inSelectionRange:(_NSRange)a5 outChangedRange:(_NSRange *)a6 outSelectionRange:(_NSRange *)a7 undoTransaction:(void *)a8 forceAll:(BOOL)a9;
- (void)applyDataValue:(unsigned int)a3 toParagraphIndexRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)applyFlags:(unsigned __int16)a3 level:(unint64_t)a4 toParagraphIndexRange:(_NSRange)a5 forKind:(unsigned int)a6 undoTransaction:(TSWPStorageTransaction *)a7;
- (void)applyFlags:(unsigned __int16)a3 level:(unint64_t)a4 toParagraphsInCharRange:(_NSRange)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)applyObject:(id)a3 toCharRange:(_NSRange)a4 forKind:(int)a5 dolcContext:(id)a6 undoTransaction:(TSWPStorageTransaction *)a7;
- (void)applyObject:(id)a3 toParagraphIndexRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)applyObject:(id)a3 toParagraphsInCharRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)applyWritingDirection:(int)a3 toParagraphIndexRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)autoUpdateField:(id)a3 withRange:(_NSRange)a4 documentRoot:(id)a5 returningInsertedRange:(_NSRange *)a6;
- (void)autoUpdateSmartFieldsWithDocumentRoot:(id)a3;
- (void)changeViewSettingsDidChange;
- (void)clearBackPointerToParentInfoIfNeeded:(id)a3;
- (void)compress:(TSWPStorageTransaction *)a3;
- (void)compressAttributeArrayKind:(unsigned int)a3 undoTransaction:(TSWPStorageTransaction *)a4;
- (void)continueSearch:(id)a3;
- (void)dealloc;
- (void)enumerateAttachmentsInTextRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)enumerateAttachmentsOfClass:(Class)a3 inTextRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)enumerateParagraphsIntersectingTextRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)enumerateSmartFieldsWithAttributeKind:(unsigned int)a3 inRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)enumerateWithAttributeKind:(unsigned int)a3 inRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)filterInvalidContentForStorage:(id)a3 undoTransaction:(TSWPStorageTransaction *)a4;
- (void)filterSectionBreaksFromStorage:(id)a3 undoTransaction:(TSWPStorageTransaction *)a4;
- (void)findChangesInRange:(_NSRange)a3 onHit:(id)a4;
- (void)fixGlyphVariantFontsForRange:(_NSRange)a3;
- (void)insertObject:(id)a3 charIndex:(unint64_t)a4 attributeArray:(TSWPAttributeArray *)a5 attributeIndex:(unint64_t)a6 dolcContext:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8;
- (void)insertParagraphData:(id)a3 charIndex:(unint64_t)a4 attributeArray:(TSWPAttributeArray *)a5 attributeIndex:(unint64_t)a6 undoTransaction:(TSWPStorageTransaction *)a7;
- (void)invalidateCharIndexForAttachment:(id)a3;
- (void)invalidateFootnoteAttachmentCharIndexes;
- (void)invalidateForStyle:(id)a3;
- (void)invalidatePageCountAttachmentCharIndexes:(BOOL)a3;
- (void)lowLevelApplyObject:(id)a3 toCharRange:(_NSRange)a4 forKind:(int)a5 dolcContext:(id)a6 undoTransaction:(TSWPStorageTransaction *)a7;
- (void)pApplyOverrideObjectAfterReplacingCharactersInRange:(_NSRange)a3 withString:(id)a4 overrideObject:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)pApplyOverrideObjectAfterReplacingCharactersInSelection:(id)a3 withString:(id)a4 overrideObject:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)pMapAttributesFromAttributedString:(id)a3 ontoRange:(_NSRange)a4 asCharacterStylesOnly:(BOOL)a5;
- (void)p_attributesAtCharIndex:(unint64_t)a3 attributesOfInterest:(BOOL)a4[19] attributesTable:(id)a5[19] effectiveRange:(_NSRange *)a6;
- (void)p_didChangeRange:(_NSRange)a3 delta:(int64_t)a4 broadcastKind:(int)a5;
- (void)p_fillMarkers:(void *)a3 startingAtCharIndex:(unint64_t)a4 forCount:(unint64_t)a5;
- (void)p_fillMarkers:(void *)a3 string:(id)a4 length:(unint64_t)a5 hasAttachments:(BOOL *)a6 hasFootnotes:(BOOL *)a7 hasBreaks:(BOOL *)a8;
- (void)p_handleChangeSplittingForInsertedRange:(_NSRange)a3 changeSession:(id)a4 undoTransaction:(void *)a5;
- (void)p_lowLevelReplaceCharactersInRange:(_NSRange)a3 withString:(id)a4 length:(unint64_t)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)p_replaceCharactersInSelection:(id)a3 withString:(id)a4 length:(unint64_t)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)paragraphFlags:(unsigned __int16 *)a3 andLevel:(unint64_t *)a4 atCharIndex:(unint64_t)a5;
- (void)removeGlyphVariantDataFromRange:(_NSRange)a3;
- (void)removeSmartField:(id)a3 fromRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 options:(unint64_t)a5 changedRange:(_NSRange *)a6 changeDelta:(int64_t *)a7 undoTransaction:(TSWPStorageTransaction *)a8 changeSession:(id)a9;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)replaceSectionAtSectionIndex:(unint64_t)a3 withSection:(id)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)replaceWithAttachment:(id)a3 forAttachmentIndex:(unint64_t)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)setDictationAndAutocorrection:(id)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setDocumentRoot:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setHyperlinkCellID:(id)a3;
- (void)setLanguage:(id)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setListStart:(unint64_t)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setParagraphFlags:(unsigned __int16)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setParagraphLevel:(unint64_t)a3 atParIndex:(unint64_t)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setParagraphLevel:(unint64_t)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setParagraphWritingDirection:(int)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)setWPKind:(int)a3 undoTransaction:(TSWPStorageTransaction *)a4;
- (void)smartFieldDidChange:(id)a3;
- (void)splitSmartFieldAtCharIndex:(unint64_t)a3 lengthToInsert:(unint64_t)a4 attributeKind:(unsigned int)a5 dolcContext:(id)a6 undoTransaction:(TSWPStorageTransaction *)a7;
- (void)splitSmartFieldAtCharIndex:(unint64_t)a3 lengthToInsert:(unint64_t)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6;
- (void)stashBroadcaster;
- (void)transferAttributeArraySource:(TSWPAttributeArray *)a3 forSourceRange:(_NSRange)a4 toDestStorage:(id)a5 objectContext:(id)a6 dolcContext:(id)a7 flags:(int)a8;
- (void)transferAttributeArraySource:(TSWPAttributeArray *)a3 toAttributeArrayDest:(TSWPAttributeArray *)a4 atCharIndex:(unint64_t)a5 dolcContext:(id)a6 undoTransaction:(void *)a7;
- (void)unstashBroadcaster;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPStorage

+ (id)plainTextPasteStringForStorages:(id)a3 forcePlainText:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(a3);
        }

        if (![*(*(&v23 + 1) + 8 * v8) canPasteAsPlainText])
        {
          return 0;
        }

        if (v6 == ++v8)
        {
          v6 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [a3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = 0;
  v12 = *v20;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(a3);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      v15 = [v14 range];
      v17 = [v14 stringEquivalentFromRange:v15 withLayoutParent:{v16, 0}];
      if (v17)
      {
        v18 = v17;
        if ([v17 length])
        {
          if (v11)
          {
            v11 = [v11 stringByAppendingFormat:@"%c%@", 10, v18];
          }

          else
          {
            v11 = v18;
          }
        }
      }
    }

    v10 = [a3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  }

  while (v10);
  if (!v11)
  {
    return 0;
  }

  if ([v11 length])
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (id)plainTextStringFromRange:(_NSRange)a3 convertTextualAttachments:(BOOL)a4 includeChildTextStorages:(BOOL)a5 forExport:(BOOL)a6 withLayoutParent:(id)a7
{
  v65 = a6;
  v62 = a5;
  length = a3.length;
  location = a3.location;
  v69 = [[TSWPFilteredStorage alloc] initWithStorage:self subRange:location removeRanges:length, [(TSWPStorage *)self deletedRangesInRange:location, length]];
  v67 = [-[TSWPFilteredStorage string](v69 "string")];
  [v67 replaceBreaksWithPlainTextVersions];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = length;
  v11 = [(TSWPStorage *)self attachmentIndexRangeForTextRange:location, length];
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = 0;
    v16 = 1;
    do
    {
      v70 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = [(TSWPStorage *)self attachmentAtAttachmentIndex:v15 + v13 outCharIndex:&v70];
      if (v17)
      {
        v18 = v17;
        if (![(TSWPStorage *)self hasDeletionInRange:v70, 1])
        {
          v19 = objc_alloc(MEMORY[0x277CCABB0]);
          v20 = [v19 initWithUnsignedInteger:v70];
          v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v18, v20, 0}];
          [v10 addObject:v21];
        }
      }

      v15 = v16;
      v22 = v14 > v16++;
    }

    while (v22);
  }

  v23 = [(TSWPStorage *)self footnoteRangeForTextRange:location, v64];
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    v27 = 0;
    v28 = 1;
    do
    {
      v70 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = [(TSWPStorage *)self footnoteAtFootnoteIndex:v27 + v25 outCharIndex:&v70];
      if (v29)
      {
        v30 = v29;
        if (![(TSWPStorage *)self hasDeletionInRange:v70, 1])
        {
          v31 = objc_alloc(MEMORY[0x277CCABB0]);
          v32 = [v31 initWithUnsignedInteger:v70];
          v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v30, v32, 0}];
          [v10 addObject:v33];
        }
      }

      v27 = v28;
      v22 = v26 > v28++;
    }

    while (v22);
  }

  [v10 sortUsingFunction:compareAttachments context:0];
  v34 = [v10 count];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = 0;
    for (i = 0; i < v35; v36 = ++i)
    {
      v39 = [v10 objectAtIndexedSubscript:v36];
      v40 = [v39 objectAtIndexedSubscript:0];
      v41 = -[TSWPFilteredStorage charIndexMappedFromStorage:](v69, "charIndexMappedFromStorage:", [objc_msgSend(v39 objectAtIndexedSubscript:{1), "unsignedIntValue"}]) + v37;
      if (v41 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = [MEMORY[0x277D6C290] currentHandler];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_conversion) plainTextStringFromRange:convertTextualAttachments:includeChildTextStorages:forExport:withLayoutParent:]"];
        [v43 handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion.mm"), 228, @"Bad charIndex"}];
      }

      else
      {
        if (!a4)
        {
          goto LABEL_32;
        }

        if (v40)
        {
          if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
          {
            if (objc_opt_respondsToSelector())
            {
              v42 = [v40 performSelector:sel_stringEquivalentWithLayoutParent_ withObject:a7];
            }

            else
            {
              v42 = [v40 stringEquivalent];
            }

            if (v42)
            {
              v45 = v42;
            }

            else
            {
              v45 = &stru_287D36338;
            }

            v46 = [(__CFString *)v45 length];
            [v67 replaceCharactersInRange:v41 withString:{1, v45}];
            v37 = v37 + v46 - 1;
            continue;
          }

          if (v62)
          {
            if (v65 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v47 = [v40 textRepresentationForExport];
LABEL_37:
              v48 = v47;
              if (!v47)
              {
                goto LABEL_42;
              }

              v49 = [v47 length];
              if (!v49)
              {
                goto LABEL_42;
              }

              v50 = [v48 plainTextStringFromRange:0 convertTextualAttachments:v49 includeChildTextStorages:1 forExport:1 withLayoutParent:{v65, a7}];
              if (!v50)
              {
                goto LABEL_42;
              }

              v51 = v50;
              if (![v50 length])
              {
                goto LABEL_42;
              }

              v63 = v51;
              if (!v63)
              {
                goto LABEL_42;
              }

LABEL_52:
              if (v41)
              {
                goto LABEL_53;
              }

LABEL_57:
              v59 = &stru_287D36338;
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v47 = [v40 textRepresentationForCopy];
                goto LABEL_37;
              }

LABEL_42:
              if (objc_opt_respondsToSelector())
              {
                v52 = [objc_msgSend(v40 "textStorages")];
                v53 = [v52 nextObject];
                if (v53)
                {
                  v54 = v53;
                  v63 = 0;
                  do
                  {
                    v55 = [v54 length];
                    if (v55)
                    {
                      v56 = [v54 plainTextStringFromRange:0 convertTextualAttachments:v55 includeChildTextStorages:1 forExport:1 withLayoutParent:{v65, a7}];
                      if (v56)
                      {
                        v57 = v56;
                        if ([v56 length])
                        {
                          if (v63)
                          {
                            [v63 appendFormat:@"\n%@", v57];
                          }

                          else
                          {
                            v63 = [v57 mutableCopy];
                          }
                        }
                      }
                    }

                    v54 = [v52 nextObject];
                  }

                  while (v54);
                  goto LABEL_52;
                }
              }

              v63 = 0;
              if (!v41)
              {
                goto LABEL_57;
              }

LABEL_53:
              v58 = IsParagraphBreakingCharacter([v67 characterAtIndex:v41 - 1]);
              v59 = &stru_287D36338;
              if (!v58)
              {
                v59 = @"\n";
              }
            }

            if (v63)
            {
              v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v59, v63, &stru_287D36338];
            }

            else
            {
              v60 = &stru_287D36338;
            }

            [v67 replaceCharactersInRange:v41 withString:{1, v60}];
            v37 = v37 + [(__CFString *)v60 length]- 1;

            continue;
          }

LABEL_32:
          [v67 deleteCharactersInRange:{v41, 1}];
          --v37;
        }
      }
    }
  }

  return v67;
}

- (id)nsAttributedSubstringFromRange:(_NSRange)a3 scale:(double)a4 applyChanges:(BOOL)a5 includeInlineDrawables:(BOOL)a6 withLayoutParent:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = [(TSWPStorage *)self newSubstorageWithRange:a3.location context:a3.length flags:[(TSPObject *)self context], 7];
  v12 = v11;
  if (v9)
  {
    v13 = MEMORY[0x277D6C268];
    v19 = *MEMORY[0x277D6C268];
    v20 = v19;
    v14 = [v11 range];
    LOBYTE(v18) = 1;
    [v12 applyChanges:1 inRange:v14 inSelectionRange:v15 outChangedRange:*v13 outSelectionRange:v13[1] undoTransaction:&v20 forceAll:{&v19, 0, v18}];
  }

  v16 = [v12 pNSAttributedStringWithDefaultDelegateIgnoreLists:1 stripTextualAttachments:0 stripGraphicalAttachments:1 stripInlineAttachments:!v8 attachmentChar:@" " scale:a7 withLayoutParent:a4];

  return v16;
}

- (id)nsAttributedSubstringFromRange:(_NSRange)a3 delegate:(id)a4 scale:(double)a5 applyChanges:(BOOL)a6 includeInlineDrawables:(BOOL)a7 withLayoutParent:(id)a8
{
  v9 = a7;
  v10 = a6;
  v13 = [(TSWPStorage *)self newSubstorageWithRange:a3.location context:a3.length flags:[(TSPObject *)self context], 7];
  v14 = v13;
  if (v10)
  {
    v15 = MEMORY[0x277D6C268];
    v21 = *MEMORY[0x277D6C268];
    v22 = v21;
    v16 = [v13 range];
    LOBYTE(v20) = 1;
    [v14 applyChanges:1 inRange:v16 inSelectionRange:v17 outChangedRange:*v15 outSelectionRange:v15[1] undoTransaction:&v22 forceAll:{&v21, 0, v20}];
  }

  v18 = [v14 pNSAttributedStringWithAttributeDelegate:a4 ignoreLists:1 stripTextualAttachments:0 stripGraphicalAttachments:1 stripInlineAttachments:!v9 attachmentChar:@" " scale:a5 withLayoutParent:a8];

  return v18;
}

- (id)nsAttributedSubstringWithAttachmentsRemovedFromRange:(_NSRange)a3 withLayoutParent:(id)a4
{
  v5 = [(TSWPStorage *)self newSubstorageWithRange:a3.location context:a3.length flags:[(TSPObject *)self context], 7];
  v6 = [v5 pNSAttributedStringWithDefaultDelegateIgnoreLists:1 stripTextualAttachments:1 stripGraphicalAttachments:1 stripInlineAttachments:1 attachmentChar:&stru_287D36338 scale:a4 withLayoutParent:1.0];

  return v6;
}

- (id)nsAttributedStringWithDefaultAttributeDelegateWithLayoutParent:(id)a3
{
  v5 = objc_alloc_init(TSWPNSAttributedStringAttachmentConversionDelegate);
  v6 = [(TSWPStorage *)self pNSAttributedStringWithAttributeDelegate:v5 ignoreLists:0 stripTextualAttachments:0 stripGraphicalAttachments:0 stripInlineAttachments:0 attachmentChar:0 scale:1.0 withLayoutParent:a3];

  return v6;
}

+ (TSWPAttributeArray)createEmptyAttributeArrayForKind:(unsigned int)a3
{
  switch(a3)
  {
    case 0u:
    case 1u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
      v4 = operator new(0x50uLL, MEMORY[0x277D826F0]);
      v5 = v4;
      if (v4)
      {
        TSWPAttributeArray::TSWPAttributeArray(v4, a3);
        goto LABEL_4;
      }

      break;
    case 3u:
      v12 = operator new(0x48uLL, MEMORY[0x277D826F0]);
      v5 = v12;
      if (v12)
      {
        TSWPAttributeArray::TSWPAttributeArray(v12, 3);
        v5->var0 = &unk_287D35520;
        LOBYTE(v5[1].var0) = 0;
        *&v5[1].var1 = 0;
      }

      break;
    case 4u:
      v11 = operator new(0x38uLL, MEMORY[0x277D826F0]);
      v5 = v11;
      if (v11)
      {
        TSWPAttributeArray::TSWPAttributeArray(v11, 4);
        goto LABEL_19;
      }

      break;
    case 5u:
      v13 = operator new(0x38uLL, MEMORY[0x277D826F0]);
      v5 = v13;
      if (v13)
      {
        TSWPAttributeArray::TSWPAttributeArray(v13, 5);
LABEL_19:
        v7 = &unk_287D35E28;
        goto LABEL_27;
      }

      break;
    case 6u:
    case 7u:
      v8 = operator new(0x48uLL, MEMORY[0x277D826F0]);
      v5 = v8;
      if (v8)
      {
        TSWPAttributeArray::TSWPAttributeArray(v8, a3);
        goto LABEL_22;
      }

      break;
    case 8u:
      v9 = operator new(0x50uLL, MEMORY[0x277D826F0]);
      v5 = v9;
      if (v9)
      {
        TSWPAttributeArray::TSWPAttributeArray(v9, 8);
        goto LABEL_4;
      }

      break;
    case 9u:
      v10 = operator new(0x50uLL, MEMORY[0x277D826F0]);
      v5 = v10;
      if (v10)
      {
        TSWPAttributeArray::TSWPAttributeArray(v10, 9);
LABEL_4:
        v5->var0 = &unk_287D34E98;
        LOBYTE(v5[1].var0) = 0;
        *&v5[1].var1 = 0x7FFFFFFFFFFFFFFFLL;
      }

      break;
    case 0xCu:
      v14 = operator new(0x48uLL, MEMORY[0x277D826F0]);
      v5 = v14;
      if (v14)
      {
        TSWPAttributeArray::TSWPAttributeArray(v14, 12);
LABEL_22:
        LOBYTE(v5[1].var0) = 0;
        *&v5[1].var1 = 0;
        v7 = &unk_287D35CF8;
        goto LABEL_27;
      }

      break;
    case 0xDu:
    case 0xEu:
      v6 = operator new(0x48uLL, MEMORY[0x277D826F0]);
      v5 = v6;
      if (v6)
      {
        TSWPAttributeArray::TSWPAttributeArray(v6, a3);
        LOBYTE(v5[1].var0) = 0;
        *&v5[1].var1 = 0;
        v7 = &unk_287D35648;
        goto LABEL_27;
      }

      break;
    case 0xFu:
      v20 = operator new(0x50uLL, MEMORY[0x277D826F0]);
      v5 = v20;
      if (v20)
      {
        TSWPChangeAttributeArray::TSWPChangeAttributeArray(v20, 15);
      }

      break;
    case 0x10u:
      v15 = operator new(0x50uLL, MEMORY[0x277D826F0]);
      v5 = v15;
      if (v15)
      {
        TSWPChangeAttributeArray::TSWPChangeAttributeArray(v15, 16);
      }

      break;
    case 0x11u:
      v16 = operator new(0x48uLL, MEMORY[0x277D826F0]);
      v5 = v16;
      if (v16)
      {
        TSWPAttributeArray::TSWPAttributeArray(v16, 17);
        LOBYTE(v5[1].var0) = 0;
        *&v5[1].var1 = 0;
        v7 = &unk_287D34D70;
LABEL_27:
        v5->var0 = v7;
      }

      break;
    default:
      v18 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage(AttributeTables) createEmptyAttributeArrayForKind:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 83, @"createAttributeArrayForKind: bad kind."}];
      v5 = 0;
      break;
  }

  return v5;
}

+ (TSWPAttributeArray)createAttributeArrayForKind:(unsigned int)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  v6 = [TSWPStorage createEmptyAttributeArrayForKind:?];
  v7 = v6;
  if (a3 > 0x12)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage(AttributeTables) createAttributeArrayForKind:undoTransaction:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 116, @"createAttributeArrayForKind: bad kind."}];
  }

  else if (((1 << a3) & 0x40F37) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    TSWPAttributeArray::insertAttribute(v6, v11, 0, 0, a4);
  }

  return v7;
}

- (TSWPAttributeArray)attributeArrayForKind:(unsigned int)a3 withCreate:(BOOL)a4 fromUndo:(BOOL)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  attributesTable = self->_attributesTable;
  result = self->_attributesTable[a3];
  if (result)
  {
    v9 = 1;
  }

  else
  {
    v9 = !a4;
  }

  if (!v9)
  {
    v11 = a5;
    v12 = *&a3;
    v13 = objc_opt_class();
    if (v11)
    {
      result = [v13 createEmptyAttributeArrayForKind:v12];
    }

    else
    {
      result = [v13 createAttributeArrayForKind:v12 undoTransaction:a6];
    }

    attributesTable[v12] = result;
    if (result)
    {
      result->var5 = self;
    }
  }

  return result;
}

- (void)compressAttributeArrayKind:(unsigned int)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  attributesTable = self->_attributesTable;
  v5 = self->_attributesTable[a3];
  if (v5)
  {
    (*(v5->var0 + 19))(self->_attributesTable[a3], a4);
    if ((*(v5->var0 + 6))(v5))
    {
      (*(v5->var0 + 1))(v5);
      attributesTable[a3] = 0;
    }
  }
}

- (void)compress:(TSWPStorageTransaction *)a3
{
  v5 = 0;
  do
  {
    [(TSWPStorage *)self compressAttributeArrayKind:v5 undoTransaction:a3];
    v5 = (v5 + 1);
  }

  while (v5 != 19);
}

- (void)p_attributesAtCharIndex:(unint64_t)a3 attributesOfInterest:(BOOL)a4[19] attributesTable:(id)a5[19] effectiveRange:(_NSRange *)a6
{
  v10 = 0;
  v11 = [(TSWPStorage *)self characterCount]- a3;
  v12 = a3;
  do
  {
    if (!a4[v10])
    {
      goto LABEL_9;
    }

    v13 = self->_attributesTable[v10];
    if (!v13)
    {
      goto LABEL_9;
    }

    var2 = v13->var2;
    if (!var2)
    {
      goto LABEL_10;
    }

    if ((*(v13->var0 + 2))(v13))
    {
      TSWPAttributeArray::rangeForCharIndex(v13, a3);
      v12 = NSIntersectionRangeInclusive();
      v11 = v15;
      v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, a3);
    }

    else
    {
      v16 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v13, a3);
      v12 = a3;
      v11 = 1;
    }

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      var2 = *(v13->var4 + 2 * v16 + 1);
    }

    else
    {
LABEL_9:
      var2 = 0;
    }

LABEL_10:
    a5[v10++] = var2;
  }

  while (v10 != 19);
  a6->location = v12;
  a6->length = v11;
}

- (_NSRange)insertSpecialCharacter:(unsigned __int16)a3 object:(id)a4 kind:(unsigned int)a5 range:(_NSRange)a6 dolcContext:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8 changeSession:(id)a9
{
  length = a6.length;
  location = a6.location;
  v11 = *&a5;
  v35 = a3;
  v13 = *MEMORY[0x277D6C268];
  v34 = *(MEMORY[0x277D6C268] + 8);
  if (((1 << a5) & 0x301) != 0)
  {
    v14 = a6.location + 1;
  }

  else
  {
    v14 = a6.location;
  }

  if (a5 <= 9)
  {
    v15 = v14;
  }

  else
  {
    v15 = a6.location;
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v35 length:1];
  [(TSWPStorage *)self replaceCharactersInSelection:[TSWPSelection selectionWithRange:?]changeSession:v16 undoTransaction:0 outInsertedRange:0, a9, a8, 0];

  v17 = [(TSWPStorage *)self attributeArrayForKind:v11 withCreate:1 undoTransaction:a8];
  if (v17)
  {
    v18 = v17;
    v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v17, v15);
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      TSWPAttributeArray::replaceObjectForAttributeIndex(v18, a4, v19, a7, a8);
      v29 = 1;
      v13 = location;
      goto LABEL_13;
    }

    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertSpecialCharacter:object:kind:range:dolcContext:undoTransaction:changeSession:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
    v23 = @"insertSpecialCharacter: Bad attribute index.";
    v24 = v20;
    v25 = v21;
    v26 = 236;
  }

  else
  {
    v27 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertSpecialCharacter:object:kind:range:dolcContext:undoTransaction:changeSession:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
    v23 = @"insertSpecialCharacter: Bad attribute array.";
    v24 = v27;
    v25 = v28;
    v26 = 232;
  }

  [v24 handleFailureInFunction:v25 file:v22 lineNumber:v26 description:v23];
  v29 = v34;
LABEL_13:
  [(TSWPStorage *)self p_didChangeRange:location delta:1 broadcastKind:1 - length, 1];
  v30 = v13;
  v31 = v29;
  result.length = v31;
  result.location = v30;
  return result;
}

- (void)insertObject:(id)a3 charIndex:(unint64_t)a4 attributeArray:(TSWPAttributeArray *)a5 attributeIndex:(unint64_t)a6 dolcContext:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8
{
  [(TSPObject *)self willModify];
  if (!a5)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 266, @"insertObject: Bad attribute array."}];
  }

  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 267, @"insertObject: Bad attribute index."}];
  }

  v21[0] = a4;
  v21[1] = a3;
  TSWPAttributeArray::insertAttribute(a5, v21, a6, a7, a8);
  v19 = TSWPAttributeArray::rangeForAttributeIndex(a5, a6);
  [(TSWPStorage *)self p_didChangeRange:v19 delta:v20 broadcastKind:0, 0];
}

- (void)insertParagraphData:(id)a3 charIndex:(unint64_t)a4 attributeArray:(TSWPAttributeArray *)a5 attributeIndex:(unint64_t)a6 undoTransaction:(TSWPStorageTransaction *)a7
{
  [(TSPObject *)self willModify];
  if (!a5)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertParagraphData:charIndex:attributeArray:attributeIndex:undoTransaction:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 283, @"insertParagraphData: Bad attribute array."}];
  }

  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertParagraphData:charIndex:attributeArray:attributeIndex:undoTransaction:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 284, @"insertParagraphData: Bad attribute index."}];
  }

  v19 = a4;
  var0 = a3.var0.var0.var0;
  TSWPAttributeArray::insertAttribute(a5, &v19, a6, 0, a7);
  v17 = TSWPAttributeArray::rangeForAttributeIndex(a5, a6);
  [(TSWPStorage *)self p_didChangeRange:v17 delta:v18 broadcastKind:0, 0];
}

- (void)applyObject:(id)a3 toCharRange:(_NSRange)a4 forKind:(int)a5 dolcContext:(id)a6 undoTransaction:(TSWPStorageTransaction *)a7
{
  v8 = *&a5;
  [(TSWPStorage *)self lowLevelApplyObject:a3 toCharRange:a4.location forKind:a4.length dolcContext:*&a5 undoTransaction:a6];

  [(TSWPStorage *)self compressAttributeArrayKind:v8 undoTransaction:a7];
}

- (void)lowLevelApplyObject:(id)a3 toCharRange:(_NSRange)a4 forKind:(int)a5 dolcContext:(id)a6 undoTransaction:(TSWPStorageTransaction *)a7
{
  if (a5 <= 0x11 && ((1 << a5) & 0x3F0C8) != 0)
  {
    length = a4.length;
    location = a4.location;
    v13 = [(TSWPStorage *)self attributeArrayForKind:*&a5 withCreate:a3 != 0 undoTransaction:a7];
    if (v13)
    {
      v14 = v13;
      [(TSPObject *)self willModify];
      (*(v14->var0 + 8))(v14, a3, location, length, a6, a7);

      [(TSWPStorage *)self p_didChangeRange:location delta:length broadcastKind:0, 0];
    }
  }

  else
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) lowLevelApplyObject:toCharRange:forKind:dolcContext:undoTransaction:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

    [v15 handleFailureInFunction:v16 file:v17 lineNumber:309 description:@"applyObject:toCharRange: Bad attribute array."];
  }
}

- (void)applyObject:(id)a3 toParagraphIndexRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v7 = *&a5;
  length = a4.length;
  location = a4.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:a6];
  if (v12)
  {
    v13 = v12;
    v14 = [(TSWPStorage *)self textRangeForParagraphAtIndex:location];
    v16 = v15;
    v23.location = [(TSWPStorage *)self textRangeForParagraphAtIndex:length + location - 1];
    v23.length = v17;
    v22.location = v14;
    v22.length = v16;
    v18 = NSUnionRange(v22, v23);
    v19 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:a3 != 0 undoTransaction:a6];
    if (v19)
    {
      v20 = v19;
      [(TSPObject *)self willModify];
      v24.location = location;
      v24.length = length;
      TSWPParagraphAttributeArray::applyObjectToParagraphRange(v20, a3, v24, v13, a6);

      [(TSWPStorage *)self p_didChangeRange:v18.location delta:v18.length broadcastKind:0, 0];
    }
  }
}

- (void)applyFlags:(unsigned __int16)a3 level:(unint64_t)a4 toParagraphIndexRange:(_NSRange)a5 forKind:(unsigned int)a6 undoTransaction:(TSWPStorageTransaction *)a7
{
  v8 = *&a6;
  length = a5.length;
  location = a5.location;
  v14 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:a7];
  if (v14)
  {
    v15 = v14;
    v42 = a3;
    v16 = [(TSWPStorage *)self textRangeForParagraphAtIndex:location];
    v18 = v17;
    v19 = location + length;
    v48.location = [(TSWPStorage *)self textRangeForParagraphAtIndex:?];
    v48.length = v20;
    v46.location = v16;
    v46.length = v18;
    v21 = NSUnionRange(v46, v48);
    v22 = v21.location;
    v23 = [(TSWPStorage *)self attributeArrayForKind:v8 withCreate:1 undoTransaction:a7];
    if (v23)
    {
      v24 = v23;
      [(TSPObject *)self willModify];
      if (((*(v24->var0 + 4))(v24) & 1) == 0)
      {
        v41 = [MEMORY[0x277D6C290] currentHandler];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:]"];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
        v27 = v25;
        v22 = v21.location;
        [v41 handleFailureInFunction:v27 file:v26 lineNumber:366 description:@"Do not call this method unless table has paired data."];
      }

      if (a4 >= 0x10000)
      {
        [TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:];
        LOWORD(a4) = -1;
      }

      v44[0] = a4;
      v44[1] = v42;
      TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v24, v44, location, length, v15, a7);
      v28 = [(TSWPStorage *)self listStyleAtParIndex:location + length - 1 effectiveRange:0];
      if ([v28 parent])
      {
        v28 = [v28 parent];
      }

      v29 = MEMORY[0x277D6C268];
      v30 = *MEMORY[0x277D6C268];
      v31 = *(MEMORY[0x277D6C268] + 8);
      v32 = [(TSWPStorage *)self paragraphCount];
      if (v19 < v32)
      {
        v33 = v32;
        do
        {
          v34 = [(TSWPStorage *)self listStyleAtParIndex:v19 effectiveRange:v43];
          if (v34 != v28 && [v34 parent] != v28)
          {
            break;
          }

          v30 = v43[0];
          v31 = v43[1];
          ++v19;
        }

        while (v19 < v33);
      }

      if (v30 == *v29 && v31 == v29[1])
      {
        v37 = v21.length;
      }

      else
      {
        v47.location = v22;
        v47.length = v21.length;
        v49.location = v30;
        v49.length = v31;
        v36 = NSUnionRange(v47, v49);
        v22 = v36.location;
        v37 = v36.length;
      }

      [(TSWPStorage *)self p_didChangeRange:v22 delta:v37 broadcastKind:0, 0];
    }

    else
    {
      v38 = [MEMORY[0x277D6C290] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:]"];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

      [v38 handleFailureInFunction:v39 file:v40 lineNumber:360 description:@"applyObject: Bad attribute array."];
    }
  }
}

- (void)applyDataValue:(unsigned int)a3 toParagraphIndexRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v7 = *&a5;
  length = a4.length;
  location = a4.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:a6];
  if (v12)
  {
    v13 = v12;
    v14 = [(TSWPStorage *)self textRangeForParagraphAtIndex:location];
    v16 = v15;
    v29.location = [(TSWPStorage *)self textRangeForParagraphAtIndex:length + location - 1];
    v29.length = v17;
    v28.location = v14;
    v28.length = v16;
    v18 = NSUnionRange(v28, v29);
    v19 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:1 undoTransaction:a6];
    if (v19)
    {
      v20 = v19;
      [(TSPObject *)self willModify];
      if (((*(v20->var0 + 5))(v20) & 1) == 0)
      {
        v25 = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyDataValue:toParagraphIndexRange:forKind:undoTransaction:]"];
        [v25 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 416, @"Do not call this method unless table has single data."}];
      }

      v26 = a3;
      if (TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v20, &v26, location, length, v13, a6))
      {
        [(TSWPStorage *)self p_didChangeRange:v18.location delta:v18.length broadcastKind:0, 0];
      }
    }

    else
    {
      v22 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyDataValue:toParagraphIndexRange:forKind:undoTransaction:]"];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

      [v22 handleFailureInFunction:v23 file:v24 lineNumber:410 description:@"applyObject: Bad attribute array."];
    }
  }
}

- (void)applyWritingDirection:(int)a3 toParagraphIndexRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v7 = *&a5;
  length = a4.length;
  location = a4.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:a6];
  if (v12)
  {
    v13 = v12;
    v14 = [(TSWPStorage *)self textRangeForParagraphAtIndex:location];
    v16 = v15;
    v29.location = [(TSWPStorage *)self textRangeForParagraphAtIndex:length + location - 1];
    v29.length = v17;
    v28.location = v14;
    v28.length = v16;
    v18 = NSUnionRange(v28, v29);
    v19 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:1 undoTransaction:a6];
    if (v19)
    {
      v20 = v19;
      [(TSPObject *)self willModify];
      if (((*(v20->var0 + 5))(v20) & 1) == 0)
      {
        v25 = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyWritingDirection:toParagraphIndexRange:forKind:undoTransaction:]"];
        [v25 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 450, @"Do not call this method unless table has single data."}];
      }

      v26 = a3;
      if (TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v20, &v26, location, length, v13, a6))
      {
        [(TSWPStorage *)self p_didChangeRange:v18.location delta:v18.length broadcastKind:0, 0];
      }
    }

    else
    {
      v22 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyWritingDirection:toParagraphIndexRange:forKind:undoTransaction:]"];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

      [v22 handleFailureInFunction:v23 file:v24 lineNumber:444 description:@"applyObject: Bad attribute array."];
    }
  }
}

- (void)applyObject:(id)a3 toParagraphsInCharRange:(_NSRange)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v7 = *&a5;
  length = a4.length;
  location = a4.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v12)
  {
    v19.location = location;
    v19.length = length;
    v14 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v12, v19);

    [(TSWPStorage *)self applyObject:a3 toParagraphIndexRange:v14 forKind:v13 undoTransaction:v7, a6];
  }

  else
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyObject:toParagraphsInCharRange:forKind:undoTransaction:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

    [v15 handleFailureInFunction:v16 file:v17 lineNumber:470 description:@"No paragraph array."];
  }
}

- (void)applyFlags:(unsigned __int16)a3 level:(unint64_t)a4 toParagraphsInCharRange:(_NSRange)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a3;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v12)
  {
    v19.location = location;
    v19.length = length;
    v14 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v12, v19);

    [(TSWPStorage *)self applyFlags:v10 level:a4 toParagraphIndexRange:v14 forKind:v13 undoTransaction:1, a6];
  }

  else
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphsInCharRange:undoTransaction:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

    [v15 handleFailureInFunction:v16 file:v17 lineNumber:481 description:@"No paragraph array."];
  }
}

- (_NSRange)replaceAllOccurrencesOfObject:(id)a3 withObject:(id)a4 forKind:(unsigned int)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v7 = *&a5;
  if (!a4)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) replaceAllOccurrencesOfObject:withObject:forKind:undoTransaction:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 495, @"replaceAllOccurrencesOfStyle: toReplace is nil."}];
  }

  v13 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:0 undoTransaction:a6];
  if (!v13 || (v14 = v13, (var2 = v13->var2) == 0))
  {
    length = 0;
LABEL_14:
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_15;
  }

  length = 0;
  v17 = 0;
  v18 = 8;
  location = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (*(v14->var4 + v18) == a3)
    {
      TSWPAttributeArray::replaceObjectForAttributeIndex(v14, a4, v17, 0, a6);
      v21.location = TSWPAttributeArray::rangeForAttributeIndex(v14, v17);
      v21.length = v20;
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24.location = location;
        v24.length = length;
        v21 = NSUnionRange(v24, v21);
      }

      var2 = v14->var2;
      length = v21.length;
      location = v21.location;
    }

    ++v17;
    v18 += 16;
  }

  while (v17 < var2);
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  [(TSWPStorage *)self p_didChangeRange:location delta:length broadcastKind:0, 0];
LABEL_15:
  v22 = location;
  v23 = length;
  result.length = v23;
  result.location = v22;
  return result;
}

- (void)transferAttributeArraySource:(TSWPAttributeArray *)a3 forSourceRange:(_NSRange)a4 toDestStorage:(id)a5 objectContext:(id)a6 dolcContext:(id)a7 flags:(int)a8
{
  range1 = a4.length;
  if (a3)
  {
    if (a4.length)
    {
      var1 = a3->var1;
      if (var1 <= 0x12)
      {
        location = a4.location;
        if (((1 << var1) & 0x63BFF) != 0 || ((1 << var1) & 0x18000) != 0 && (a8 & 2) != 0)
        {
          v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, a4.location);
          v12 = v11 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v11;
          if (v12 < a3->var2)
          {
            v49 = 0;
            v47 = 0;
            v51 = location + range1;
            v13 = (16 * v12) | 8;
            v14 = MEMORY[0x277D6C268];
            while (1)
            {
              v15 = v14;
              v16 = TSWPAttributeArray::charIndexForAttributeIndex(a3, v12);
              v17 = TSWPAttributeArray::rangeForAttributeIndex(a3, v12);
              v19 = v18;
              v20 = (*(a3->var0 + 3))(a3) ? *(a3->var4 + v13) : 0;
              if (var1 <= 5)
              {
                break;
              }

              if (((1 << var1) & 0x3B000) != 0)
              {
                goto LABEL_49;
              }

              if (((1 << var1) & 0x40800) != 0)
              {
                goto LABEL_20;
              }

              if (var1 == 9)
              {
LABEL_40:
                if (v20)
                {
                  v25 = v16 - location;
                  v14 = v15;
                  if (v16 <= location || v16 > v51)
                  {
                    goto LABEL_78;
                  }

                  v26 = v49;
                  if (v49 || (v26 = [a5 attributeArrayForKind:var1 withCreate:0 undoTransaction:0]) != 0)
                  {
                    v27 = v16 - location;
                    v28 = v26;
                    v29 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v26, v27);
                    v49 = v28;
                    if (v29 < v28->var2 && TSWPAttributeArray::charIndexForAttributeIndex(v28, v29) >= v25)
                    {
                      v42 = [MEMORY[0x277D6C290] currentHandler];
                      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) transferAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]"];
                      [v42 handleFailureInFunction:v43 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 659, @"Source and dest tables are out of order."}];
                    }

                    else
                    {
                      v52 = v25;
                      v53 = v20;
                      TSWPAttributeArray::insertAttribute(v28, &v52, ++v47, a7, 0);
                    }

                    goto LABEL_78;
                  }

                  goto LABEL_83;
                }

                goto LABEL_77;
              }

              if ((var1 - 6) < 2)
              {
                goto LABEL_49;
              }

              if (var1 != 8)
              {
                goto LABEL_77;
              }

              v14 = v15;
              if ([a5 supportsSectionCopying] && v20)
              {
                v24 = [(objc_object *)v20 copyWithContext:a6];
                v20 = v24;
LABEL_67:
                if (v16 > location && v16 <= v51)
                {
                  v34 = v49;
                  if (v49 || (v34 = [a5 attributeArrayForKind:var1 withCreate:0 undoTransaction:0]) != 0)
                  {
                    v35 = v47 + 1;
                    v49 = v34;
                    var2 = *(v34 + 16);
                    if (v47 + 1 >= var2)
                    {
                      v44 = [MEMORY[0x277D6C290] currentHandler];
                      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) transferAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]"];
                      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
                      v39 = v37;
                      v14 = v15;
                      [v44 handleFailureInFunction:v39 file:v38 lineNumber:617 description:@"Bad par index count."];
                      var2 = v49->var2;
                    }

                    if (v35 < var2)
                    {
                      TSWPAttributeArray::replaceObjectForAttributeIndex(v49, v20, v35, a7, 0);
                      ++v47;
                    }
                  }

                  else
                  {
                    v49 = 0;
                  }
                }
              }

LABEL_78:
              ++v12;
              v40 = a3->var2;
              if (v12 < v40)
              {
                if (TSWPAttributeArray::charIndexForAttributeIndex(a3, v12) > v51)
                {
                  return;
                }

                v40 = a3->var2;
              }

              v13 += 16;
              if (v12 >= v40)
              {
                return;
              }
            }

            if (var1 > 2)
            {
              if ((var1 - 4) < 2)
              {
                if (v20)
                {
                  v14 = v15;
                  if (v16 < location || v16 >= v51)
                  {
                    goto LABEL_78;
                  }

                  v23 = v49;
                  if (v49 || (v23 = [a5 attributeArrayForKind:var1 withCreate:1 undoTransaction:0]) != 0)
                  {
                    v49 = v23;
                    if (v47 < v23->var2)
                    {
                      if (a8)
                      {
                        v41 = [(objc_object *)v20 copyWithContext:a6];
                        TSWPAttributeArray::replaceObjectForAttributeIndex(v49, v41, v47, a7, 0);
                      }

                      else
                      {
                        TSWPAttributeArray::replaceObjectForAttributeIndexForShallowCopy(v23, v20, v47);
                      }

                      ++v47;
                    }

                    goto LABEL_78;
                  }

LABEL_83:
                  v49 = 0;
                  goto LABEL_78;
                }

                goto LABEL_77;
              }

              if (var1 != 3)
              {
LABEL_77:
                v14 = v15;
                goto LABEL_78;
              }

LABEL_49:
              if (!v20)
              {
                goto LABEL_77;
              }

              v54.location = location;
              v54.length = range1;
              v55.location = v17;
              v55.length = v19;
              v30 = NSIntersectionRange(v54, v55);
              v14 = v15;
              if (var1 == 17 && v30.length < v19)
              {
                length = v15[1];
              }

              else
              {
                length = v30.length;
              }

              if (!length)
              {
                goto LABEL_78;
              }

              if (var1 == 17 && v30.length < v19)
              {
                v32 = *v15;
              }

              else
              {
                v32 = v30.location;
              }

              if ((a8 & 8) != 0)
              {
                if (var1 == 17)
                {
                  goto LABEL_62;
                }

                v33 = 0;
              }

              else
              {
                v33 = 0;
                if (var1 > 0x11 || ((1 << var1) & 0x210C0) == 0)
                {
                  goto LABEL_76;
                }

LABEL_62:
                v33 = [(objc_object *)v20 copyWithContext:a6];
                v20 = v33;
              }

LABEL_76:
              [a5 applyObject:v20 toCharRange:v32 - location forKind:length dolcContext:var1 undoTransaction:{a7, 0}];

              goto LABEL_77;
            }

            if (!var1)
            {
              if (v20)
              {
                v24 = 0;
                v14 = v15;
                goto LABEL_67;
              }

              goto LABEL_77;
            }

            if (var1 != 1)
            {
              goto LABEL_40;
            }

LABEL_20:
            if (v16 <= location)
            {
              goto LABEL_77;
            }

            v14 = v15;
            if (v16 <= v51)
            {
              v21 = v49;
              if (!v49)
              {
                v21 = [a5 attributeArrayForKind:var1 withCreate:0 undoTransaction:0];
                if (!v21)
                {
                  goto LABEL_83;
                }
              }

              v22 = *(a3->var4 + v13);
              v52 = v16 - location;
              LODWORD(v53) = v22;
              v49 = v21;
              TSWPAttributeArray::insertAttribute(v21, &v52, ++v47, 0, 0);
            }

            goto LABEL_78;
          }
        }
      }
    }
  }
}

- (int)compareAttributeArray:(TSWPAttributeArray *)a3 range:(_NSRange)a4 otherStorage:(id)a5 otherRange:(_NSRange)a6
{
  if (!a3)
  {
    return -2;
  }

  length = a6.length;
  location = a6.location;
  v8 = a4.length;
  v9 = a4.location;
  v12 = [a5 attributeArrayForKind:a3->var1 withCreate:0 undoTransaction:0];
  if (!v12)
  {
    return -2;
  }

  v13 = v12;
  v14 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v9);
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, location);
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = a3->var2 - v15;
  v19 = v13->var2 - v17;
  v20 = v18 > v19;
  if (v18 <= v19)
  {
    v21 = v13;
  }

  else
  {
    v21 = a3;
  }

  if (v18 <= v19)
  {
    v22 = length;
  }

  else
  {
    v22 = v8;
  }

  if (v18 <= v19)
  {
    v23 = location;
  }

  else
  {
    v23 = v9;
  }

  if (v18 <= v19)
  {
    v24 = v15;
  }

  else
  {
    v24 = v17;
  }

  if (v20)
  {
    v17 = v15;
    v25 = v13;
  }

  else
  {
    v25 = a3;
  }

  if (v20)
  {
    v26 = location;
  }

  else
  {
    v26 = v9;
  }

  if (v20)
  {
    v27 = length;
  }

  else
  {
    v27 = v8;
  }

  return [(TSWPStorage *)self compareAttributeArray1:v25 array2:v21 range1:v26 range2:v27 attributeIndex1:v23 attributeIndex2:v22, v24, v17];
}

- (int)compareAttributeArray1:(TSWPAttributeArray *)a3 array2:(TSWPAttributeArray *)a4 range1:(_NSRange)a5 range2:(_NSRange)a6 attributeIndex1:(unint64_t)a7 attributeIndex2:(unint64_t)a8
{
  v8 = 0;
  if (a3 && a4)
  {
    v11 = a7;
    if (a3->var2 > a7)
    {
      v12 = a8;
      if (a4->var2 > a8)
      {
        v8 = 0;
        v35 = a5.location + a5.length;
        v13 = (16 * a7) | 8;
        for (i = (16 * a8) | 8; ; i += 16)
        {
          v15 = TSWPAttributeArray::charIndexForAttributeIndex(a3, v11);
          if (v8 || v15 > v35)
          {
            return v8;
          }

          v16 = TSWPAttributeArray::charIndexForAttributeIndex(a3, v11);
          v17 = TSWPAttributeArray::rangeForAttributeIndex(a3, v11);
          range1 = v18;
          if ((*(a3->var0 + 3))(a3))
          {
            v19 = *(a3->var4 + v13);
          }

          else
          {
            v19 = 0;
          }

          var2 = a4->var2;
          v32 = v19;
          if (v12 >= var2)
          {
            v33 = 0x7FFFFFFFFFFFFFFFuLL;
          }

          else
          {
            v33.location = TSWPAttributeArray::rangeForAttributeIndex(a4, v12);
            v33.length = v21;
            var2 = a4->var2;
          }

          if (v12 < var2 && (*(a4->var0 + 3))(a4))
          {
            v22 = *(a4->var4 + i);
          }

          else
          {
            v22 = 0;
          }

          v8 = 0;
          var1 = a3->var1;
          if (var1 <= 0x12)
          {
            v24 = 1 << var1;
            if ((v24 & 0x3078) != 0)
            {
              if (v16 < v35)
              {
                v39.location = v17;
                v39.length = range1;
                length = NSIntersectionRange(v39, a5).length;
                if (length != NSIntersectionRange(v33, a6).length || v32 != v22 && (!v32 || !v22 || ([v32 isEqual:v22] & 1) == 0))
                {
                  goto LABEL_40;
                }
              }

              goto LABEL_34;
            }

            if ((v24 & 0x305) != 0)
            {
              if (v16 <= v35)
              {
                v38.location = v17;
                v38.length = range1;
                v25 = NSIntersectionRange(v38, a5).length;
                if (v25 != NSIntersectionRange(v33, a6).length)
                {
                  goto LABEL_40;
                }

                if (v32 != v22)
                {
                  IsSame = [v32 isEqual:v22];
                  goto LABEL_37;
                }
              }

LABEL_34:
              v8 = 0;
              goto LABEL_41;
            }

            if ((v24 & 0x40802) != 0)
            {
              if (v16 <= v35)
              {
                v40.location = v17;
                v40.length = range1;
                v28 = NSIntersectionRange(v40, a5).length;
                if (v28 == NSIntersectionRange(v33, a6).length)
                {
                  v37 = *(a3->var4 + v13);
                  v36 = *(a4->var4 + i);
                  IsSame = TSWPParagraphAttributeArray::dataIsSame(a3, &v37, &v36);
LABEL_37:
                  if (IsSame)
                  {
                    v8 = 0;
                  }

                  else
                  {
                    v8 = -2;
                  }

                  goto LABEL_41;
                }

LABEL_40:
                v8 = -2;
                goto LABEL_41;
              }

              goto LABEL_34;
            }
          }

LABEL_41:
          ++v11;
          ++v12;
          v13 += 16;
          if (v11 >= a3->var2)
          {
            return v8;
          }
        }
      }
    }

    return 0;
  }

  return v8;
}

- (id)pFindValidInsertionCharStyleFromCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self paragraphStartAtCharIndex:?];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v5;
  while (1)
  {
    v7 = [(TSWPStorage *)self smartFieldAtCharIndex:a3 attributeKind:6 effectiveRange:&v10];
    if (!(v7 | [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:a3]))
    {
      break;
    }

    v8 = v10;
    if (!v7)
    {
      v8 = a3;
    }

    if (v8 > v6)
    {
      a3 = v8 - 1;
      if (v8 != 0x8000000000000000)
      {
        continue;
      }
    }

    return 0;
  }

  result = [(TSWPStorage *)self characterStyleAtCharIndex:a3 effectiveRange:0];
  if (!result)
  {
    return [MEMORY[0x277CBEB68] null];
  }

  return result;
}

- (id)pOverrideObjectBeforeReplacingCharactersInSelection:(id)a3 withString:(id)a4
{
  v7 = [a3 range];
  v9 = v8;
  v10 = [a3 styleInsertionBehavior];

  return [(TSWPStorage *)self pOverrideObjectBeforeReplacingCharactersInRange:v7 withString:v9 withInsertionBehavior:a4, v10];
}

- (id)pOverrideObjectBeforeReplacingCharactersInRange:(_NSRange)a3 withString:(id)a4 withInsertionBehavior:(int)a5
{
  length = a3.length;
  location = a3.location;
  v17 = *MEMORY[0x277D6C268];
  if (![a4 length] || !length)
  {
    v11 = [a4 length];
    v10 = 0;
    if (!v11 || length)
    {
      return v10;
    }

    if (a5 == 2)
    {
      v14 = [(TSWPStorage *)self smartFieldAtCharIndex:location attributeKind:6 effectiveRange:&v17];
      v10 = 0;
      if (!v14 || v17 != location)
      {
        return v10;
      }
    }

    else
    {
      if (a5 == 1)
      {
        if (!location)
        {
          goto LABEL_4;
        }

        v10 = [(TSWPStorage *)self smartFieldAtCharIndex:location - 1 attributeKind:6 effectiveRange:&v17];
        if (!v10)
        {
          return v10;
        }

        if (*(&v17 + 1) + v17 != location)
        {
          goto LABEL_4;
        }

        v12 = self;
        v13 = location - 1;
        goto LABEL_31;
      }

      if (a5)
      {
        goto LABEL_4;
      }

      if (!location)
      {
        v10 = [(TSWPStorage *)self length];
        if (v10)
        {
          if ([(TSWPStorage *)self smartFieldAtCharIndex:0 attributeKind:6 effectiveRange:&v17])
          {
            goto LABEL_40;
          }

          v10 = [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:0];
          if (v10)
          {
            goto LABEL_40;
          }
        }

        return v10;
      }

      if (![(TSWPStorage *)self smartFieldAtCharIndex:location - 1 attributeKind:6 effectiveRange:&v17]|| *(&v17 + 1) + v17 != location)
      {
        v10 = [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:location - 1];
        if (!v10 || location == 1)
        {
          if (!v10)
          {
            return v10;
          }
        }

        else
        {
          v10 = [(TSWPStorage *)self pFindValidInsertionCharStyleFromCharIndex:location - 2];
          if (v10)
          {
            return v10;
          }
        }
      }

      if (location >= [(TSWPStorage *)self length])
      {
        goto LABEL_40;
      }

      v15 = [(TSWPStorage *)self smartFieldAtCharIndex:location attributeKind:6 effectiveRange:&v17];
      if (v15 | [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:location])
      {
        goto LABEL_40;
      }
    }

    v12 = self;
    v13 = location;
LABEL_31:
    v10 = [(TSWPStorage *)v12 characterStyleAtCharIndex:v13 effectiveRange:0];
    if (v10)
    {
      return v10;
    }

    goto LABEL_40;
  }

  if (a5)
  {
LABEL_4:
    v10 = 0;
    return v10;
  }

  if ((-[TSWPStorage smartFieldAtCharIndex:attributeKind:effectiveRange:](self, "smartFieldAtCharIndex:attributeKind:effectiveRange:", location, 6, &v17) && v17 == location && [objc_opt_class() defaultFieldStyleIdentifier] || (v10 = -[TSWPStorage footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:](self, "footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:", location)) != 0) && (!location || (v10 = -[TSWPStorage pFindValidInsertionCharStyleFromCharIndex:](self, "pFindValidInsertionCharStyleFromCharIndex:", location - 1)) == 0))
  {
LABEL_40:
    v10 = [MEMORY[0x277CBEB68] null];
  }

  return v10;
}

- (void)pApplyOverrideObjectAfterReplacingCharactersInSelection:(id)a3 withString:(id)a4 overrideObject:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v11 = [a3 range];

  [(TSWPStorage *)self pApplyOverrideObjectAfterReplacingCharactersInRange:v11 withString:v10 overrideObject:a4 undoTransaction:a5, a6];
}

- (void)pApplyOverrideObjectAfterReplacingCharactersInRange:(_NSRange)a3 withString:(id)a4 overrideObject:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  location = a3.location;
  v10 = [a4 length];
  if (a5)
  {
    v11 = v10;
    if ([MEMORY[0x277CBEB68] null] == a5)
    {
      v12 = 0;
    }

    else
    {
      v12 = a5;
    }

    [(TSWPStorage *)self setCharacterStyle:v12 range:location undoTransaction:v11, a6];
  }
}

- (id)pNSAttributedStringWithDefaultDelegateIgnoreLists:(BOOL)a3 stripTextualAttachments:(BOOL)a4 stripGraphicalAttachments:(BOOL)a5 stripInlineAttachments:(BOOL)a6 attachmentChar:(id)a7 scale:(double)a8 withLayoutParent:(id)a9
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v17 = objc_alloc_init(TSWPNSAttributedStringAttachmentConversionDelegate);
  v18 = [(TSWPStorage *)self pNSAttributedStringWithAttributeDelegate:v17 ignoreLists:v15 stripTextualAttachments:v14 stripGraphicalAttachments:v13 stripInlineAttachments:v12 attachmentChar:a7 scale:a8 withLayoutParent:a9];

  return v18;
}

- (id)pNSAttributedStringWithAttributeDelegate:(id)a3 ignoreLists:(BOOL)a4 stripTextualAttachments:(BOOL)a5 stripGraphicalAttachments:(BOOL)a6 stripInlineAttachments:(BOOL)a7 attachmentChar:(id)a8 scale:(double)a9 withLayoutParent:(id)a10
{
  v56 = a5;
  v59 = a4;
  v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:{-[TSWPStorage string](self, "string")}];
  [objc_msgSend(v14 "mutableString")];
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(TSWPStorage *)self range];
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v61, self, v15, v16, 6);
    v17 = *MEMORY[0x277D740E8];
    while (TSWPAttributeEnumerator::nextAttributeIndex(&v61, &v60))
    {
      objc_opt_class();
      v18 = TSUDynamicCast();
      if (v18)
      {
        v19 = [a3 urlForHyperlinkField:v18];
        if (v19)
        {
          [v14 addAttribute:v17 value:v19 range:{v60.location, v60.length}];
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v61);
  }

  v60.location = 0;
  v20 = [v14 length];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    do
    {
      v23 = [(TSWPStorage *)self pExportAttributes:v22 effectiveRange:&v61 stickyFont:&v60 scale:a9];
      if (v23)
      {
        [v14 addAttributes:v23 range:{v61, v62}];
      }

      if (v22 == (v62 + v61))
      {
        ++v22;
      }

      else
      {
        v22 = (v62 + v61);
      }
    }

    while (v22 < v21);
  }

  v24 = [(TSWPStorage *)self attachmentCount];
  v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v24 && !v59)
  {
    v26 = [(TSWPStorage *)self length];
    v27 = self;
    v28 = 0;
    v29 = v14;
    v30 = 0;
LABEL_68:
    [(TSWPStorage *)v27 pMapListsFromStorageRange:v28 toString:v26 atStringLoc:v29 textListMap:v30, v58];
    goto LABEL_69;
  }

  if (v24)
  {
    v54 = a3;
    v53 = a6;
    v25 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 1;
    while (1)
    {
      v61 = 0x7FFFFFFFFFFFFFFFLL;
      v34 = [(TSWPStorage *)self attachmentAtAttachmentIndex:v25 outCharIndex:&v61];
      v35 = v61;
      if (v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = [MEMORY[0x277D6C290] currentHandler];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pNSAttributedStringWithAttributeDelegate:ignoreLists:stripTextualAttachments:stripGraphicalAttachments:stripInlineAttachments:attachmentChar:scale:withLayoutParent:]"];
        [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 118, @"Could not find an expected attachment"}];
        v35 = v61;
      }

      if (!v59)
      {
        if (v32 <= v35 + 1)
        {
          v38 = v35 + 1;
        }

        else
        {
          v38 = v32;
        }

        if (v32 >= v35 + 1)
        {
          v39 = v35 + 1;
        }

        else
        {
          v39 = v32;
        }

        v31 += [(TSWPStorage *)self pMapListsFromStorageRange:v39 toString:v38 - v39 atStringLoc:v14 textListMap:v31 + v32, v58];
        v35 = v61;
      }

      if (!v34)
      {
LABEL_55:
        [v14 replaceCharactersInRange:v35 + v31-- withString:{1, &stru_287D36338}];
        goto LABEL_56;
      }

      objc_opt_class();
      v40 = TSUDynamicCast();
      objc_opt_class();
      v41 = TSUDynamicCast();
      if (v40)
      {
        if (!v56)
        {
          v42 = [v40 stringEquivalentWithLayoutParent:a10];
          if (!v42)
          {
            goto LABEL_55;
          }

          v43 = v42;
          [v14 replaceCharactersInRange:v35 + v31 withString:{1, v42}];
          v44 = v31 + [v43 length];
LABEL_37:
          v31 = v44 - 1;
          goto LABEL_56;
        }
      }

      else
      {
        v45 = v41;
        if (v41)
        {
          if ([v41 isAnchored] && !objc_msgSend(v45, "isHTMLWrap"))
          {
            if (!v53)
            {
LABEL_45:
              if (!v54 || (objc_opt_respondsToSelector() & 1) == 0 || [v45 isAnchored] && !objc_msgSend(v45, "isHTMLWrap"))
              {
                goto LABEL_55;
              }

              v46 = [v54 attachmentStringForDrawableAttachment:v45];
              if (!v46)
              {
                goto LABEL_55;
              }

              v47 = v46;
              [v14 replaceCharactersInRange:v35 + v31 withAttributedString:{1, v46}];
              v48 = [v47 length];
              if (!v59 && [(TSWPStorage *)self paragraphHasListLabelAtCharIndex:v61]&& v48 != 1)
              {
                TSULogErrorInFunction();
              }

              v44 = v31 + v48;
              goto LABEL_37;
            }
          }

          else if (!a7)
          {
            goto LABEL_45;
          }
        }
      }

      if (![a8 length])
      {
        goto LABEL_55;
      }

      [v14 replaceCharactersInRange:v35 + v31 withString:{1, a8}];
LABEL_56:
      v32 = v35 + 1;
      v25 = v33;
      if (v24 <= v33++)
      {
        goto LABEL_59;
      }
    }
  }

  v32 = 0;
  v31 = 0;
LABEL_59:
  if (v32 < [(TSWPStorage *)self length]&& !v59)
  {
    v50 = [(TSWPStorage *)self length];
    if (v32 <= v50)
    {
      v51 = v50;
    }

    else
    {
      v51 = v32;
    }

    if (v32 >= v50)
    {
      v28 = v50;
    }

    else
    {
      v28 = v32;
    }

    v26 = v51 - v28;
    v30 = v31 + v32;
    v27 = self;
    v29 = v14;
    goto LABEL_68;
  }

LABEL_69:

  return v14;
}

- (id)pExportAttributes:(unint64_t)a3 effectiveRange:(_NSRange *)a4 stickyFont:(id *)a5 scale:(double)a6
{
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0;
  range2.location = 0;
  range2.length = 0;
  v12 = [(TSWPStorage *)self paragraphStyleAtCharIndex:a3 effectiveRange:&v20];
  v13 = [(TSWPStorage *)self characterStyleAtCharIndex:a3 effectiveRange:&range2];
  if (v12)
  {
    v14 = [(TSWPStorage *)self paragraphIndexAtCharIndex:v20.location + v20.length - 1]+ 1;
    if (v14 <= [(TSWPStorage *)self paragraphIndexAtCharIndex:[(TSWPStorage *)self length]])
    {
      v15 = [(TSWPStorage *)self paragraphStyleAtParIndex:v14 effectiveRange:0];
    }

    else
    {
      v15 = 0;
    }

    [v11 addEntriesFromDictionary:{-[TSWPStorage pExportParagraphAttributes:nextParagraphStyle:scale:](self, "pExportParagraphAttributes:nextParagraphStyle:scale:", v12, v15, a6)}];
    [TSWPPropertyConverter mapCharacterPropertiesFromStyle:v12 toNS:v11 stickyFont:a5 scale:a6];
  }

  [TSWPPropertyConverter mapCharacterPropertiesFromStyle:v13 secondaryStyle:v12 toNS:v11 stickyFont:a5 scale:a6];
  v16 = [v11 count];
  if (a4)
  {
    *a4 = v20;
    v17.length = range2.length;
    if (range2.length)
    {
      v17.location = range2.location;
      *a4 = NSIntersectionRange(*a4, v17);
    }
  }

  if (v16)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (int64_t)pMapListsFromStorageRange:(_NSRange)a3 toString:(id)a4 atStringLoc:(unint64_t)a5 textListMap:(id)a6
{
  if (!a3.length)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v54 = a3.location + a3.length;
  if (a3.location >= a3.location + a3.length)
  {
    return 0;
  }

  v8 = a5;
  v53 = 0;
  v50 = *MEMORY[0x277D74118];
  v10 = a3.location;
  do
  {
    v11 = [(TSWPStorage *)self paragraphIndexAtCharIndex:v10];
    v55.location = [(TSWPStorage *)self textRangeForParagraphAtIndex:v11];
    v12 = v55.location;
    v13 = v55.length;
    v56.location = location;
    v56.length = length;
    NSIntersectionRange(v55, v56);
    v14 = [(TSWPStorage *)self paragraphStyleAtParIndex:v11 effectiveRange:0];
    v15 = [(TSWPStorage *)self listStyleAtParIndex:v11 effectiveRange:0];
    if (v15)
    {
      v16 = v15;
      v17 = [(TSWPStorage *)self paragraphLevelAtParIndex:v11];
      if ([v16 effectiveTypeForLevel:v17])
      {
        v18 = v12 - location;
        if (v12 < location)
        {
          v18 = 0;
        }

        v19 = v53 + v8 + v18;
        if (v19 < [a4 length])
        {
          v20 = [a4 attribute:v50 atIndex:v19 effectiveRange:0];
          if (v20)
          {
            v21 = v20;
            v22 = [objc_msgSend(a4 "string")];
            v48 = v23;
            v49 = v22;
            v24 = [v21 mutableCopy];
            [v16 labelIndentForLevel:v17];
            v26 = v25;
            [-[TSWPStorage valueForProperty:atCharIndex:effectiveRange:](self valueForProperty:17 atCharIndex:v10 effectiveRange:{0), "tsu_CGFloatValue"}];
            [v16 textIndentForLevel:v17 fontSize:?];
            v28 = v27;
            [v24 headIndent];
            [v24 setHeadIndent:v26 + v28 + v29];
            if (v26 == 0.0)
            {
              v26 = 1.0;
            }

            v30 = [objc_msgSend(v24 "tabStops")];
            [objc_msgSend(v14 valueForProperty:{80), "tsu_CGFloatValue"}];
            v32 = v26 + v31;
            v33 = v28 + v32;
            v8 = a5;
            if ([v30 count])
            {
              v34 = 0;
              v35 = 0;
              v36 = 0x7FFFFFFFFFFFFFFFLL;
              while (1)
              {
                [objc_msgSend(v30 objectAtIndexedSubscript:{v34), "location"}];
                if (v37 > v33)
                {
                  break;
                }

                ++v35;
                if (v36 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v36 = 0;
                }

                v34 = v35;
                if ([v30 count] <= v35)
                {
                  goto LABEL_21;
                }
              }

              if (v36 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_22;
              }

LABEL_21:
              [v30 removeObjectsInRange:{v36, v35}];
            }

LABEL_22:
            v38 = objc_alloc(MEMORY[0x277D742E0]);
            v39 = MEMORY[0x277CBEC10];
            v40 = [v38 initWithTextAlignment:0 location:MEMORY[0x277CBEC10] options:v33];
            [v30 insertObject:v40 atIndex:0];

            v41 = [objc_alloc(MEMORY[0x277D742E0]) initWithTextAlignment:0 location:v39 options:v32];
            [v30 insertObject:v41 atIndex:0];

            [v24 setTabStops:v30];
            [a4 addAttribute:v50 value:v24 range:{v49, v48}];
            v42 = [a4 labelMarkerStringAtIndex:v49];
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@\t", v42];
            v44 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v24, v50, 0}];
            v45 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v43 attributes:v44];
            [a4 insertAttributedString:v45 atIndex:v49];
            v53 += [v43 length];
          }

          else
          {
            v8 = a5;
          }
        }

        location = a3.location;
        length = a3.length;
      }
    }

    v10 = v12 + v13;
  }

  while (v12 + v13 < v54);
  return v53;
}

- (id)pExportParagraphAttributes:(id)a3 nextParagraphStyle:(id)a4 scale:(double)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = objc_alloc_init(MEMORY[0x277D74240]);
  v10 = [a3 valueForProperty:85];
  [v10 amount];
  v12 = v11 * a5;
  v13 = [v10 mode];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      [v9 setMinimumLineHeight:v12];
    }

    else if (v13 != 3)
    {
      goto LABEL_11;
    }

    [v9 setMaximumLineHeight:v12];
    goto LABEL_11;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      [v9 setMinimumLineHeight:v12];
    }
  }

  else
  {
    [v9 setLineHeightMultiple:v12];
  }

LABEL_11:
  [a3 floatValueForProperty:88];
  v15 = v14;
  if (a4)
  {
    [a4 floatValueForProperty:87];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = v17 * a5;
  if (v15 * a5 >= v18)
  {
    v18 = v15 * a5;
  }

  [v9 setParagraphSpacing:v18];
  [v9 setAlignment:{objc_msgSend(a3, "intValueForProperty:", 86)}];
  [a3 floatValueForProperty:80];
  [v9 setFirstLineHeadIndent:v19 * a5];
  [a3 floatValueForProperty:81];
  [v9 setHeadIndent:v20 * a5];
  [a3 floatValueForProperty:82];
  v22 = v21 * a5;
  if (v22 > 0.0 && v22 < 468.0)
  {
    [v9 setTailIndent:468.0 - v22];
  }

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v24 = [a3 valueForProperty:84];
  [a3 floatValueForProperty:83];
  [v9 setDefaultTabInterval:v25 * a5];
  if ([v24 count])
  {
    v26 = 0;
    v27 = 1;
    v28 = MEMORY[0x277CBEC10];
    do
    {
      v29 = [v24 tabAtIndex:v26];
      [v29 position];
      v31 = v30 * a5;
      v32 = [v29 alignment];
      if (v32 == 2)
      {
        v33 = 2;
      }

      else
      {
        v33 = v32 == 1;
      }

      v34 = [objc_alloc(MEMORY[0x277D742E0]) initWithTextAlignment:v33 location:v28 options:v31];
      [v23 addObject:v34];

      v26 = v27;
    }

    while ([v24 count] > v27++);
  }

  if ([v23 count])
  {
    [v9 setTabStops:v23];
  }

  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D74118]];

  return v8;
}

- (id)pTextListsFromListStyle:(id)a3 atLevel:(unint64_t)a4 labelTypeMap:(id)a5
{
  if (a5)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pTextListsFromListStyle:atLevel:labelTypeMap:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 611, @"Expecting a non-nil labelTypeMap parameter"}];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pTextListsFromListStyle:atLevel:labelTypeMap:]"];
  [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 612, @"Expecting a non-nil listStyle parameter"}];
LABEL_3:
  v7 = MEMORY[0x277CBEB18];

  return [v7 arrayWithCapacity:a4 + 1];
}

- (void)pMapAttributesFromAttributedString:(id)a3 ontoRange:(_NSRange)a4 asCharacterStylesOnly:(BOOL)a5
{
  location = a4.location;
  v8 = a4.location + a4.length;
  v9 = [a3 length];
  v10 = MEMORY[0x277D740C0];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *MEMORY[0x277D740C0];
    do
    {
      v14 = [objc_msgSend(a3 attributesAtIndex:v12 effectiveRange:{&v43), "objectForKeyedSubscript:", v13}];
      v38 = v14 != 0;
      if (v14)
      {
        break;
      }

      if (v44 + v43 <= v12 + 1)
      {
        ++v12;
      }

      else
      {
        v12 = v44 + v43;
      }
    }

    while (v12 < v11);
  }

  else
  {
    v38 = 0;
  }

  if (location < v8)
  {
    v37 = *v10;
    v15 = location;
    v34 = v8;
    do
    {
      v41 = 0;
      v42 = 0;
      v16 = [(TSWPStorage *)self paragraphStyleAtCharIndex:v15 effectiveRange:&v41];
      v17 = v42 + v41;
      if (v8 >= v42 + v41)
      {
        v18 = v42 + v41;
      }

      else
      {
        v18 = v8;
      }

      if (v17 >= v15)
      {
        v19 = v18;
      }

      else
      {
        v19 = v15;
      }

      if (v17 >= v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v18;
      }

      v21 = v19 - v20;
      v22 = v20 - location;
      v39 = 0;
      v40 = 0;
      v36 = v19;
      if (!a5 && v20 == v41 && v21 == v42)
      {
        v16 = [(TSWPStorage *)self pParagraphStyleWithFrequentAttributesInString:a3 withinStringRange:v20 - location currentParagraphStyle:v19 - v20, v16];
        if (v16)
        {
          [(TSWPStorage *)self setParagraphStyle:v16 forCharRange:v41 undoTransaction:v42, 0];
        }
      }

      while (v21)
      {
        v24 = v22 + v21;
        if (v22 + v21 > [a3 length])
        {
          v25 = [MEMORY[0x277D6C290] currentHandler];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pMapAttributesFromAttributedString:ontoRange:asCharacterStylesOnly:]"];
          [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 712, @"Remaining range extends outside attributed string"}];
        }

        v27 = [objc_msgSend(a3 attributesAtIndex:v22 longestEffectiveRange:&v39 inRange:{v22, v21), "mutableCopy"}];
        v28 = v27;
        if (v38 && ![v27 objectForKeyedSubscript:v37])
        {
          [v28 setObject:objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8] forKeyedSubscript:{"blackColor"), "platformColor"), v37}];
        }

        v29 = [+[TSWPPropertyConverter mapCharacterPropertiesFromNS:](TSWPPropertyConverter mapCharacterPropertiesFromNS:{v28), "mutableCopy"}];
        [(TSWPStorage *)self setCharacterStyle:[(TSSStylesheet *)self->_stylesheet variationOfCharacterStyle:[(TSWPStorage *)self characterStyleAtCharIndex:v39 + location effectiveRange:0] paragraphStyle:v16 propertyMap:v29] range:v39 + location undoTransaction:v40, 0];
        v30 = v40 + v39;
        if (v40 + v39 > v24)
        {
          v31 = [MEMORY[0x277D6C290] currentHandler];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pMapAttributesFromAttributedString:ontoRange:asCharacterStylesOnly:]"];
          [v31 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 746, @"Attribute range extends outside remaining range - expected attribute range to be clamped"}];
          v30 = v40 + v39;
        }

        if (v30 <= v24)
        {
          v33 = v24;
        }

        else
        {
          v33 = v30;
        }

        if (v30 >= v24)
        {
          v22 = v24;
        }

        else
        {
          v22 = v30;
        }

        v21 = v33 - v22;
      }

      v15 = v36;
      v8 = v34;
    }

    while (v36 < v34);
  }
}

- (id)pParagraphStyleWithFrequentAttributesInString:(id)a3 withinStringRange:(_NSRange)a4 currentParagraphStyle:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a4.location + a4.length;
  if (a4.location + a4.length > [a3 length])
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pParagraphStyleWithFrequentAttributesInString:withinStringRange:currentParagraphStyle:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 760, @"Range extends outside attributed string"}];
  }

  v12 = [MEMORY[0x277CBEB58] set];
  if (location < v9)
  {
    v13 = location;
    do
    {
      v25 = 0;
      v26 = 0;
      [v12 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "attributesAtIndex:effectiveRange:", v13, &v25), "allKeys")}];
      v13 = v26 + v25;
    }

    while (v26 + v25 < v9);
  }

  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [v12 objectEnumerator];
  v16 = [v15 nextObject];
  if (v16)
  {
    v17 = v16;
    do
    {
      if (location < v9)
      {
        v18 = 0;
        v19 = 0;
        v20 = location;
        do
        {
          v25 = 0;
          v26 = 0;
          v21 = [a3 attribute:v17 atIndex:v20 longestEffectiveRange:&v25 inRange:{location, length}];
          if (v26 > v19)
          {
            v19 = v26;
            v18 = v21;
          }

          v20 = v25 + v26;
        }

        while (v25 + v26 < v9);
        if (v18)
        {
          [v14 setObject:v18 forKeyedSubscript:v17];
        }
      }

      v17 = [v15 nextObject];
    }

    while (v17);
  }

  v22 = +[TSSPropertyMap propertyMap];
  [v22 addValuesFromPropertyMap:{+[TSWPPropertyConverter mapCharacterPropertiesFromNS:](TSWPPropertyConverter, "mapCharacterPropertiesFromNS:", v14)}];
  [v22 addValuesFromPropertyMap:{-[TSWPStorage pImportParagraphAttributes:paragraphStyle:](self, "pImportParagraphAttributes:paragraphStyle:", v14, 0)}];
  return [(TSSStylesheet *)self->_stylesheet variationOfStyle:a5 propertyMap:v22];
}

- (id)pImportParagraphAttributes:(id)a3 paragraphStyle:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:{*MEMORY[0x277D74118], a4}];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = +[TSSPropertyMap propertyMap];
  [v5 lineHeightMultiple];
  if (v7 <= 0.0)
  {
    [v5 minimumLineHeight];
    v10 = v9;
    [v5 maximumLineHeight];
    if (v10 > 0.0)
    {
      v13 = v12;
      v14 = [TSWPLineSpacing alloc];
      v15 = v10 == v13 ? 2 : 1;
      v11 = [(TSWPLineSpacing *)v14 initWithMode:v15 amount:v10];
      if (v11)
      {
        goto LABEL_12;
      }
    }

    v8 = +[TSWPLineSpacing lineSpacing];
  }

  else
  {
    v8 = [[TSWPLineSpacing alloc] initWithMode:0 amount:v7];
  }

  v11 = v8;
LABEL_12:
  [v6 setObject:v11 forProperty:85];
  [v5 paragraphSpacingBefore];
  [v6 setCGFloatValue:87 forProperty:?];
  [v5 paragraphSpacing];
  [v6 setCGFloatValue:88 forProperty:?];
  [v6 setIntValue:objc_msgSend(v5 forProperty:{"baseWritingDirection") == 1, 44}];
  v16 = [v5 alignment];
  if (v16 >= 0x80000000)
  {
    [TSWPStorage(conversion_private) pImportParagraphAttributes:paragraphStyle:];
  }

  else if (v16 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    [TSWPStorage(conversion_private) pImportParagraphAttributes:paragraphStyle:];
  }

  [v6 setIntValue:? forProperty:?];
  [v5 firstLineHeadIndent];
  [v6 setCGFloatValue:80 forProperty:?];
  [v5 headIndent];
  [v6 setCGFloatValue:81 forProperty:?];
  [v5 tailIndent];
  v18 = 468.0 - v17;
  if (468.0 - v17 <= 0.0 || v17 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 468.0 - v17;
  }

  [v6 setCGFloatValue:82 forProperty:{v20, v18}];
  v21 = [v5 tabStops];
  if ([v21 count])
  {
    v22 = objc_alloc_init(TSWPTabs);
    if ([v21 count])
    {
      v23 = 0;
      do
      {
        v24 = [v21 objectAtIndexedSubscript:v23];
        v25 = [v24 alignment];
        [v24 location];
        v27 = v26;
        if (v25 == 2)
        {
          v28 = 2;
        }

        else
        {
          v28 = v25 == 1;
        }

        v29 = +[TSWPTab tab];
        [v29 setPosition:v27];
        [v29 setAlignment:v28];
        [(TSWPTabs *)v22 insertTab:v29];
        ++v23;
      }

      while (v23 < [v21 count]);
    }

    [v6 setObject:v22 forProperty:84];
  }

  return v6;
}

- (id)pDrawableInfoFromImporter:(id)a3 error:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__21;
  v14 = __Block_byref_object_dispose__21;
  v15 = 0;
  if (a3)
  {
    v6 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__TSWPStorage_conversion_private__pDrawableInfoFromImporter_error___block_invoke;
    v9[3] = &unk_279D49AC8;
    v9[6] = &v16;
    v9[7] = &v10;
    v9[4] = a3;
    v9[5] = v6;
    [a3 importInfoWithCompletionHandler:v9];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
  }

  if (a4)
  {
    *a4 = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

intptr_t __67__TSWPStorage_conversion_private__pDrawableInfoFromImporter_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) info];
  *(*(*(a1 + 56) + 8) + 40) = [objc_msgSend(*(a1 + 32) "error")];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)transferAttributeArraySource:(TSWPAttributeArray *)a3 toAttributeArrayDest:(TSWPAttributeArray *)a4 atCharIndex:(unint64_t)a5 dolcContext:(id)a6 undoTransaction:(void *)a7
{
  if (a3 && (v7 = a4) != 0)
  {
    var2 = a3->var2;
    if (var2)
    {
      v9 = a5;
      v43 = 0;
      v10 = 0;
      v39 = a5 - 1;
      v11 = 8;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v13 = TSWPAttributeArray::rangeForAttributeIndex(a3, v10);
        v15 = v14;
        v16 = (*(a3->var0 + 3))(a3) ? *(a3->var4 + v11) : 0;
        v17 = v13 + v9;
        var1 = a3->var1;
        if (var1 > 5)
        {
          break;
        }

        if (var1 > 2)
        {
          if ((var1 - 4) < 2)
          {
            if (v12 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v9 && (v25 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, v39), v25 < 0x7FFFFFFFFFFFFFFELL))
              {
                v12 = v25 + 1;
              }

              else
              {
                v12 = 0;
              }
            }

            v26 = v12 + v10;
            v27 = v7;
            v28 = v16;
            v29 = a6;
            goto LABEL_60;
          }

          if (var1 == 3)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if ((var1 - 1) < 2)
          {
LABEL_18:
            if (v15)
            {
              if (v12 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v12 = [(TSWPStorage *)self paragraphIndexAtCharIndex:v9];
              }

              v20 = v43;
              if (!v43)
              {
                v20 = [(TSWPStorage *)self attributeArrayForKind:0];
              }

              v43 = v20;
              v21 = [(TSWPStorage *)self paragraphIndexAtCharIndex:v17];
              v22 = [(TSWPStorage *)self paragraphIndexAtCharIndex:v15 + v17 - 1];
              v23 = v22 - v21;
              v24 = v22 - v21 + 1;
              if (v10)
              {
                v7 = a4;
                if (v22 - v21 != -1)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                v32 = TSWPAttributeArray::charIndexForAttributeIndex(v43, v21) < v9 && v24 != 0;
                if (v32)
                {
                  v24 = v23;
                }

                if (v24)
                {
                  v21 += v32;
                  v7 = a4;
                  if (TSWPAttributeArray::charIndexForAttributeIndex(v43, v21) >= v9)
                  {
LABEL_53:
                    v33 = a3->var1;
                    if (v33 <= 0x12 && ((1 << v33) & 0x40802) != 0)
                    {
                      v47 = *(a3->var4 + v11);
                      TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v7, &v47, v21, v24, v43, a7);
                    }

                    else
                    {
                      if (!v7->var2)
                      {
                        v38 = [MEMORY[0x277D6C290] currentHandler];
                        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_copying) transferAttributeArraySource:toAttributeArrayDest:atCharIndex:dolcContext:undoTransaction:]"];
                        [v38 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_copying.mm"), 100, @"This attribute table should not be empty. This storage was created incorrectly."}];
                      }

                      v49.location = v21;
                      v49.length = v24;
                      TSWPParagraphAttributeArray::applyObjectToParagraphRange(v7, v16, v49, v43, a7);
                    }

                    goto LABEL_61;
                  }
                }

                else
                {
                  v7 = a4;
                }
              }
            }

            goto LABEL_61;
          }

          if (!var1)
          {
            goto LABEL_35;
          }
        }

LABEL_61:
        ++v10;
        v11 += 16;
        if (var2 == v10)
        {
          return;
        }
      }

      if (var1 <= 0x12)
      {
        v19 = 1 << var1;
        if (((1 << var1) & 0x23000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0x40A00) != 0)
        {
          goto LABEL_18;
        }

        if ((v19 & 0x18000) != 0)
        {
          if (![a6 exportingFootnotes] || !v15)
          {
            goto LABEL_61;
          }

          var1 = a3->var1;
LABEL_42:
          if (var1 != 17)
          {
            goto LABEL_45;
          }

          if ([(TSWPStorage *)self highlightsAllowed])
          {
            var1 = a3->var1;
LABEL_45:
            v30 = 0;
            if (var1 <= 0x11 && ((1 << var1) & 0x390C0) != 0)
            {
              v31 = self;
              v16 = [(objc_object *)v16 copyWithContext:[(TSPObject *)self context]];
              v30 = v16;
            }

            else
            {
              v31 = self;
            }

            [(TSWPStorage *)v31 lowLevelApplyObject:v16 toCharRange:v17 forKind:v15 dolcContext:var1 undoTransaction:a6, a7];

            v9 = a5;
            v7 = a4;
            goto LABEL_61;
          }

          goto LABEL_61;
        }
      }

      if ((var1 - 6) >= 2)
      {
        if (var1 != 8)
        {
          goto LABEL_61;
        }

LABEL_35:
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, v9);
        }

        if (!v10 && TSWPAttributeArray::charIndexForAttributeIndex(v7, v12) < v9)
        {
          goto LABEL_61;
        }

        v26 = v12 + v10;
        v27 = v7;
        v28 = v16;
        v29 = 0;
LABEL_60:
        TSWPAttributeArray::replaceObjectForAttributeIndex(v27, v28, v26, v29, a7);
        goto LABEL_61;
      }

LABEL_41:
      if (!v15)
      {
        goto LABEL_61;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v35 = [MEMORY[0x277D6C290] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_copying) transferAttributeArraySource:toAttributeArrayDest:atCharIndex:dolcContext:undoTransaction:]"];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_copying.mm"];

    [v35 handleFailureInFunction:v36 file:v37 lineNumber:25 description:@"transferAttributeArraySource: bad tables."];
  }
}

- (_NSRange)replaceCharactersInRange:(_NSRange)a3 withStorage:(id)a4 usePasteRules:(BOOL)a5 dolcContext:(id)a6 undoTransaction:(void *)a7
{
  v9 = a5;
  v12 = [[TSWPSelection alloc] initWithRange:a3.location, a3.length];
  v13 = [(TSWPStorage *)self replaceCharactersInSelection:v12 withStorage:a4 usePasteRules:v9 dolcContext:a6 changeSession:0 undoTransaction:a7];
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)replaceCharactersInSelection:(id)a3 withStorage:(id)a4 usePasteRules:(BOOL)a5 dolcContext:(id)a6 changeSession:(id)a7 undoTransaction:(void *)a8
{
  v11 = a5;
  [(TSPObject *)self willModify];
  if (v11)
  {
    v15 = objc_alloc_init(TSWPStoragePasteRules);
  }

  else
  {
    v15 = 0;
  }

  v16 = [(TSWPStorage *)self relocateNonSelectedAnchorsInSelection:a3 undoTransaction:a8];
  v17 = [v16 range];
  [(TSWPStoragePasteRules *)v15 willPasteStorage:a4 intoDestStorage:self atDestRange:v17, v18];
  v19 = [a4 string];
  v20 = [(TSWPStorage *)self length];
  v33 = xmmword_26CA637B0;
  v21 = [(TSWPStorage *)self replaceCharactersInSelection:v16 withString:v19 withFlags:0 replaceTextData:0 changeSession:a7 undoTransaction:a8 outInsertedRange:&v33];
  v23 = v22;
  if (*(&v33 + 1))
  {
    v24 = 0;
    do
    {
      v25 = [a4 attributeArrayForKind:v24];
      if (v25)
      {
        v26 = v25;
        if (v24 == 9)
        {
          if ([a4 columnStyleCount] < 2 || !-[TSWPStorage supportsColumnStyles](self, "supportsColumnStyles"))
          {
            goto LABEL_19;
          }
        }

        else if (v24 == 8)
        {
          if ([a4 sectionCount] < 2 || !-[TSWPStorage supportsSections](self, "supportsSections"))
          {
            goto LABEL_19;
          }
        }

        else if (v24 == 2 && (![(TSWPStorage *)self supportsListStyles]|| ![(TSWPStorage *)self listStyleCount]))
        {
          goto LABEL_19;
        }

        v27 = [(TSWPStorage *)self attributeArrayForKind:v24 withCreate:1 undoTransaction:a8];
        [(TSWPStorage *)self transferAttributeArraySource:v26 toAttributeArrayDest:v27 atCharIndex:v33 dolcContext:a6 undoTransaction:a8];
      }

LABEL_19:
      v24 = (v24 + 1);
    }

    while (v24 != 19);
  }

  [(TSWPStorage *)self compress:a8];
  if (a8)
  {
    *&v28 = *&TSWPStorageTransaction::compress(a8);
  }

  [(TSWPStorage *)self p_didChangeRange:v21 delta:v23 broadcastKind:[(TSWPStorage *)self length]- v20, 1];
  self->_delayBroadcast = 1;
  self->_rangeToBroadcast.location = 0;
  self->_rangeToBroadcast.length = 0;
  [(TSWPStoragePasteRules *)v15 didPasteWithIOTransaction:a8 atDestRange:v33];

  location = self->_rangeToBroadcast.location;
  length = self->_rangeToBroadcast.length;
  self->_rangeToBroadcast.location = 0;
  self->_rangeToBroadcast.length = 0;
  self->_delayBroadcast = 0;
  if (location | length)
  {
    [TSWPStorage p_didChangeRange:"p_didChangeRange:delta:broadcastKind:" delta:? broadcastKind:?];
  }

  v31 = v21;
  v32 = v23;
  result.length = v32;
  result.location = v31;
  return result;
}

- (_NSRange)textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self textRangeForParagraphAtIndex:a3];
  v6 = v4;
  if (v5)
  {
    v7 = v5;
    v8 = [(TSWPStorage *)self characterAtIndex:v5 + v4 - 1];
    v9 = v8;
    v10 = IsParagraphBreakingCharacter(v8);
    if (v9 == 8232)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v5 = v7 - v11;
  }

  v12 = v6;
  result.length = v5;
  result.location = v12;
  return result;
}

- (id)pDefaultSectionForContext:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    return [(TSWPStorage *)self defaultSectionForContext:a3];
  }

  else
  {
    v6 = [[TSWPSectionPlaceholder alloc] initWithContext:a3];

    return v6;
  }
}

- (void)p_didChangeRange:(_NSRange)a3 delta:(int64_t)a4 broadcastKind:(int)a5
{
  v5 = *&a5;
  length = a3.length;
  location = a3.location;
  ++self->_changeCount;
  if (a4 || !self->_delayBroadcast)
  {
    [(TSPObject *)self willModify];
    broadcaster = self->_broadcaster;

    [(TSWPStorageBroadcaster *)broadcaster broadcastStorage:self didChangeRange:location delta:length broadcastKind:a4, v5];
  }

  else
  {
    p_rangeToBroadcast = &self->_rangeToBroadcast;
    v11.location = self->_rangeToBroadcast.location;
    if (*&self->_rangeToBroadcast == 0)
    {
      p_rangeToBroadcast->location = a3.location;
      self->_rangeToBroadcast.length = a3.length;
    }

    else
    {
      v11.length = self->_rangeToBroadcast.length;
      v13 = NSUnionRange(v11, a3);
      p_rangeToBroadcast->location = v13.location;
      self->_rangeToBroadcast.length = v13.length;
    }
  }
}

- (void)p_replaceCharactersInSelection:(id)a3 withString:(id)a4 length:(unint64_t)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  if (!a3)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_private) p_replaceCharactersInSelection:withString:length:undoTransaction:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_private.mm"), 78, @"invalid nil value for '%s'", "selection"}];
  }

  if (a5)
  {
    [(TSWPStorage *)self p_fillMarkers:&__p string:a4 length:a5 hasAttachments:&v31 + 1 hasFootnotes:&v31 hasBreaks:0];
  }

  v13 = [(TSWPStorage *)self pOverrideObjectBeforeReplacingCharactersInSelection:a3 withString:a4];
  v14 = 0;
  do
  {
    if (v14)
    {
      if (v14 == 5)
      {
        v15 = v31;
      }

      else
      {
        v15 = v14 == 4 ? HIBYTE(v31) : 0;
      }

      v16 = [(TSWPStorage *)self attributeArrayForKind:v14 withCreate:v15 & 1 undoTransaction:a6];
      if (v16)
      {
        v17 = [a3 range];
        (*(v16->var0 + 9))(v16, v17, v18, a4, a5, &__p, a6);
      }
    }

    v14 = (v14 + 1);
  }

  while (v14 != 19);
  v19 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:0 undoTransaction:a6];
  if (v19)
  {
    v20 = [a3 range];
    (*(v19->var0 + 9))(v19, v20, v21, a4, a5, &__p, a6);
  }

  v22 = [a3 range];
  [(TSWPStorage *)self p_lowLevelReplaceCharactersInRange:v22 withString:v23 length:a4 undoTransaction:a5, a6];
  v24 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v24)
  {
    v25 = [a3 range];
    (*(v24->var0 + 11))(v24, v25, v26, a4, a5, &__p, a6, [a3 styleInsertionBehavior]);
  }

  v27 = 0;
  do
  {
    if (v27)
    {
      v28 = [(TSWPStorage *)self attributeArrayForKind:v27];
      if (v28)
      {
        v29 = [a3 range];
        (*(v28->var0 + 11))(v28, v29, v30, a4, a5, &__p, a6, [a3 styleInsertionBehavior]);
      }
    }

    v27 = (v27 + 1);
  }

  while (v27 != 19);
  [(TSWPStorage *)self pApplyOverrideObjectAfterReplacingCharactersInSelection:a3 withString:a4 overrideObject:v13 undoTransaction:a6];
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

- (void)p_lowLevelReplaceCharactersInRange:(_NSRange)a3 withString:(id)a4 length:(unint64_t)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(NSMutableString *)self->_string length])
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_private) p_lowLevelReplaceCharactersInRange:withString:length:undoTransaction:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_private.mm"), 143, @"Attempting to delete past end of storage."}];
  }

  string = self->_string;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = &stru_287D36338;
  }

  [(NSMutableString *)string replaceCharactersInRange:location withString:length, v13];
}

- (void)p_fillMarkers:(void *)a3 string:(id)a4 length:(unint64_t)a5 hasAttachments:(BOOL *)a6 hasFootnotes:(BOOL *)a7 hasBreaks:(BOOL *)a8
{
  if (a5)
  {
    v11 = a5;
    if (a5 == 1)
    {
      v13 = [a4 characterAtIndex:0];
      if (v13 == 14)
      {
        if (a7)
        {
          *a7 = 1;
        }

        *&v27 = 0;
        v15 = 14;
        goto LABEL_36;
      }

      v14 = v13;
      if (v13 == 65532)
      {
        if (a6)
        {
          *a6 = 1;
        }

        *&v27 = 0;
        v15 = -4;
LABEL_36:
        WORD4(v27) = v15;
LABEL_37:
        std::vector<std::pair<unsigned long,unsigned short>>::push_back[abi:nn200100](a3, &v27);
        return;
      }

      if (IsParagraphBreakingCharacter(v13))
      {
        if (a8)
        {
          *a8 = 1;
        }

        *&v27 = 0;
        WORD4(v27) = v14;
        goto LABEL_37;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (!v17)
        {
          v17 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
        }

        v18 = v16 + 1024;
        if (v16 + 1024 < v11)
        {
          v11 = v16 + 1024;
        }

        v28.location = v16;
        v28.length = v11 - v16;
        v26 = v17;
        CFStringGetCharacters(a4, v28, v17);
        if ((v11 - v16) >= 1)
        {
          v19 = v26;
          do
          {
            if ((IsParagraphBreakingCharacter(*v19) & 1) != 0 || ((v20 = *v19, v20 != 65532) ? (v21 = v20 == 14) : (v21 = 1), v21))
            {
              if (a6 && (v22 = a6, *v19 == -4) || a7 && (v22 = a7, *v19 == 14) || a8 && (v23 = IsParagraphBreakingCharacter(*v19), v22 = a8, v23))
              {
                *v22 = 1;
              }

              *&v27 = v16;
              WORD4(v27) = *v19;
              std::vector<std::pair<unsigned long,unsigned short>>::push_back[abi:nn200100](a3, &v27);
            }

            ++v16;
            ++v19;
          }

          while (v11 != v16);
        }

        v16 = v11;
        v11 = a5;
        v17 = v26;
      }

      while (v18 < a5);
      if (v26)
      {
        free(v26);
      }
    }
  }
}

- (void)p_fillMarkers:(void *)a3 startingAtCharIndex:(unint64_t)a4 forCount:(unint64_t)a5
{
  range.location = a4;
  std::vector<unsigned long>::push_back[abi:nn200100](a3, &range);
  if (a5 > (*(a3 + 1) - *a3) >> 3)
  {
    v8 = [(NSMutableString *)self->_string length];
    v9 = 0;
    location = range.location;
    do
    {
      if (location >= v8)
      {
        break;
      }

      if (!v9)
      {
        v9 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
      }

      if (v8 >= location + 1024)
      {
        v11 = location + 1024;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11 - location;
      v13 = self;
      v20.location = location;
      v20.length = v11 - location;
      CFStringGetCharacters(self->_string, v20, v9);
      if ((v11 - location) >= 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = location + 1;
        do
        {
          while (!IsParagraphBreakingCharacter(v9[v14]))
          {
            v14 = ++v15;
            if (v12 <= v15)
            {
              goto LABEL_19;
            }
          }

          v18 = v16 + v14;
          std::vector<unsigned long>::push_back[abi:nn200100](a3, &v18);
          v14 = v15 + 1;
          v17 = a5 <= (*(a3 + 1) - *a3) >> 3 || v12 <= v14;
          ++v15;
        }

        while (!v17);
      }

LABEL_19:
      location = v11;
      self = v13;
    }

    while (a5 > (*(a3 + 1) - *a3) >> 3);
    if (v9)
    {
      free(v9);
    }
  }
}

+ (id)filterText:(id)a3 removingAttachments:(BOOL)a4
{
  v4 = a4;
  v5 = +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageChars;
  if (+[TSWPStorage filterText:removingAttachments:]::sFilteredStorageChars)
  {
    v6 = a3;
    v7 = +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageCharsWithAttachmentChar;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB50]);
    [v8 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "controlCharacterSet")}];
    v6 = a3;
    [v8 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "illegalCharacterSet")}];
    [v8 removeCharactersInRange:{10, 1}];
    [v8 removeCharactersInRange:{11, 1}];
    [v8 removeCharactersInRange:{8233, 1}];
    [v8 removeCharactersInRange:{8232, 1}];
    [v8 removeCharactersInRange:{13, 1}];
    [v8 removeCharactersInRange:{9, 1}];
    [v8 removeCharactersInRange:{173, 1}];
    [v8 removeCharactersInRange:{8203, 1}];
    [v8 removeCharactersInRange:{65279, 1}];
    [v8 removeCharactersInRange:{8378, 1}];
    [v8 addCharactersInRange:{14, 1}];
    [v8 addCharactersInRange:{65533, 1}];
    +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageChars = v8;
    v7 = [v8 mutableCopy];
    [v7 addCharactersInRange:{65532, 1}];
    +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageCharsWithAttachmentChar = v7;
    v5 = +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageChars;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  objc_opt_class();
  v10 = TSUDynamicCast();
  v29 = v10;
  if (v10)
  {
    v11 = [v10 string];
  }

  else
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
  }

  v12 = v11;
  if (!v11)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage filterText:removingAttachments:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];
    v16 = v13;
    v6 = a3;
    [v16 handleFailureInFunction:v14 file:v15 lineNumber:268 description:{@"invalid nil value for '%s'", "theStr"}];
  }

  if ([v12 length])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = [v12 rangeOfCharacterFromSet:v9 options:0 range:{v17, objc_msgSend(v12, "length") - v17}];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL || v20 == 0)
      {
        break;
      }

      v17 = v19;
      v22 = v20;
      v23 = [v12 length];
      if ((v18 & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [a3 mutableCopy];
          v6 = v24;
          v25 = [v24 mutableString];
        }

        else
        {
          v25 = [MEMORY[0x277CCAB68] stringWithString:v12];
          v6 = v25;
        }

        v12 = v25;
      }

      [v6 replaceCharactersInRange:v17 withString:{v22, &stru_287D36338}];
      v18 = 1;
    }

    while (v23 != v17 + v22);
  }

  if (v29 && ([v12 isEqualToString:{objc_msgSend(v6, "string")}] & 1) == 0)
  {
    v26 = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage filterText:removingAttachments:]"];
    [v26 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 305, @"Internal inconsistency in attributed string"}];
  }

  return v6;
}

- (TSWPStorage)initWithContext:(id)a3 string:(id)a4 kind:(int)a5 stylesheet:(id)a6 paragraphStyle:(id)a7 listStyle:(id)a8 section:(id)a9 columnStyle:(id)a10
{
  v13 = *&a5;
  objc_opt_class();
  [a3 documentObject];
  v17 = TSUDynamicCast();
  if (v17)
  {
    v18 = [v17 writingDirection] == 2;
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v20) = v18;
  return [(TSWPStorage *)self initWithContext:a3 string:a4 kind:v13 stylesheet:a6 paragraphStyle:a7 listStyle:a8 section:a9 columnStyle:a10 paragraphDirection:v20];
}

- (TSWPStorage)initWithContext:(id)a3 string:(id)a4 kind:(int)a5 stylesheet:(id)a6 paragraphStyle:(id)a7 listStyle:(id)a8 section:(id)a9 columnStyle:(id)a10 paragraphDirection:(int)a11
{
  if (!a7)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]"];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 381, @"initWithString: Missing paragraph style."}];

    return 0;
  }

  v15 = *&a5;
  v18 = [(TSPObject *)self initWithContext:?];
  v19 = v18;
  if (v18)
  {
    v18->_isInInit = 1;
    v18->_stylesheet = a6;
    v19->_WPKind = v15;
    v19->_writingDirectionCache = -1;
    [(TSWPStorage *)v19 insertObject:a7 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:0 withCreate:1 undoTransaction:0] attributeIndex:0 dolcContext:0 undoTransaction:0];
    [(TSWPStorage *)v19 insertParagraphData:0 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:1 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    [(TSWPStorage *)v19 insertParagraphData:0 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:11 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    [(TSWPStorage *)v19 insertParagraphData:a11 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:18 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    if (v15 == 5)
    {
      [(TSWPStorage *)v19 insertParagraphData:a11 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:10 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    }

    if (a8)
    {
      v20 = [(TSWPStorage *)v19 attributeArrayForKind:2 withCreate:1 undoTransaction:0];
      v21 = v19;
      v22 = a8;
    }

    else
    {
      if (v19->_WPKind != 5 || [(TSWPStorage *)v19 attributeArrayForKind:2 withCreate:0 undoTransaction:0])
      {
        goto LABEL_11;
      }

      v28 = [(TSWPStorage *)v19 attributeArrayForKind:2 withCreate:1 undoTransaction:0];
      v22 = [-[TSWPStorage stylesheet](v19 "stylesheet")];
      v21 = v19;
      v20 = v28;
    }

    [(TSWPStorage *)v21 insertObject:v22 charIndex:0 attributeArray:v20 attributeIndex:0 dolcContext:0 undoTransaction:0];
LABEL_11:
    if ([(TSWPStorage *)v19 supportsSections])
    {
      v25 = a9;
      if (!a9)
      {
        v25 = [(TSWPStorage *)v19 pDefaultSectionForContext:a3];
      }

      [(TSWPStorage *)v19 insertObject:v25 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:8 withCreate:1 undoTransaction:0] attributeIndex:0 dolcContext:0 undoTransaction:0];
    }

    if ([(TSWPStorage *)v19 supportsColumnStyles])
    {
      v26 = a10;
      if (!a10)
      {
        v26 = [a6 defaultColumnStyle];
      }

      [(TSWPStorage *)v19 insertObject:v26 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:9 withCreate:1 undoTransaction:0] attributeIndex:0 dolcContext:0 undoTransaction:0];
    }

    v19->_string = objc_alloc_init([objc_opt_class() pStringClassForWPKind:v15]);
    if (a4)
    {
      [(TSWPStorage *)v19 insertString:a4 atCharIndex:0 undoTransaction:0];
    }

    v19->_isInInit = 0;
  }

  return v19;
}

- (void)dealloc
{
  v3 = 0;
  self->_broadcaster = 0;
  do
  {
    v4 = self->_attributesTable[v3];
    if (v4)
    {
      (*(v4->var0 + 1))(v4);
    }

    ++v3;
  }

  while (v3 != 19);

  v5.receiver = self;
  v5.super_class = TSWPStorage;
  [(TSWPStorage *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  broadcaster = self->_broadcaster;
  if (!broadcaster)
  {
    broadcaster = objc_alloc_init(TSWPStorageBroadcaster);
    self->_broadcaster = broadcaster;
  }

  [(TSWPStorageBroadcaster *)broadcaster addObserver:a3];
}

- (void)setDocumentRoot:(id)a3
{
  if (self->_documentRoot != a3)
  {
    [(TSPObject *)self willModify];
  }

  self->_documentRoot = a3;
}

- (void)setWPKind:(int)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  if (self->_WPKind != a3)
  {
    if (!a3)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage setWPKind:undoTransaction:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1081, @"Can't set storage kind to kBody without a context and column style"}];
    }

    self->_WPKind = a3;
    if (![(TSWPStorage *)self supportsColumnStyles])
    {
      v9 = [(TSWPStorage *)self attributeArrayForKind:9 withCreate:0 undoTransaction:0];
      if (v9)
      {
        (*(v9->var0 + 7))(v9, 0, v9->var2, a4);
      }
    }

    if (![(TSWPStorage *)self supportsSections])
    {
      v10 = [(TSWPStorage *)self attributeArrayForKind:8 withCreate:0 undoTransaction:0];
      if (v10)
      {
        (*(v10->var0 + 7))(v10, 0, v10->var2, a4);
      }
    }

    if (self->_WPKind == 5 && ![(TSWPStorage *)self attributeArrayForKind:2 withCreate:0 undoTransaction:0])
    {
      -[TSWPStorage insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:](self, "insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:", [-[TSWPStorage stylesheet](self "stylesheet")], 0, -[TSWPStorage attributeArrayForKind:withCreate:undoTransaction:](self, "attributeArrayForKind:withCreate:undoTransaction:", 2, 1, 0), 0, 0, 0);
    }

    [(TSWPStorage *)self filterInvalidContentForStorage:self undoTransaction:a4];
  }
}

- (unsigned)disallowedElementKinds
{
  WPKind = self->_WPKind;
  v3 = *(&sDisallowElementKinds + WPKind) | self->_disallowElementKinds | 0xF;
  if (WPKind != 5)
  {
    v3 = *(&sDisallowElementKinds + WPKind) | self->_disallowElementKinds;
  }

  v4 = v3 | 0x100040;
  if (WPKind)
  {
    return v4;
  }

  else
  {
    return *(&sDisallowElementKinds + WPKind) | self->_disallowElementKinds;
  }
}

- (void)filterSectionBreaksFromStorage:(id)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  if (([a3 supportsSectionCopying] & 1) == 0)
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:8 withCreate:0 undoTransaction:0];
    if (v6)
    {
      (*(v6->var0 + 7))(v6, 0, v6->var2, a4);
    }

    if ([(NSMutableString *)self->_string length])
    {
      v12 = 4;
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v12 length:1];
      v8 = [(NSMutableString *)self->_string rangeOfString:v7];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v8;
        v11 = 5;
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v11 length:1];
        [(NSMutableString *)self->_string replaceOccurrencesOfString:v7 withString:v10 options:2 range:v9, [(NSMutableString *)self->_string length]- v9];
      }
    }
  }
}

- (void)filterInvalidContentForStorage:(id)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  [TSWPStorage filterSectionBreaksFromStorage:"filterSectionBreaksFromStorage:undoTransaction:" undoTransaction:?];
  if (([a3 allowsElementKind:1049087] & 1) == 0)
  {
    v7 = [(TSWPStorage *)self attachmentCount];
    if (v7)
    {
      v8 = v7 - 1;
      do
      {
        v29[0] = 0x7FFFFFFFFFFFFFFFLL;
        v9 = [(TSWPStorage *)self attachmentAtAttachmentIndex:v8 outCharIndex:v29];
        if (v9)
        {
          if (v29[0] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
            if (![a3 allowsElementKind:{objc_msgSend(v9, "elementKind")}] || objc_msgSend(v10, "isDrawable") && objc_msgSend(v10, "isAnchored") && objc_msgSend(a3, "wpKind"))
            {
              v11 = objc_opt_respondsToSelector();
              v12 = &stru_287D36338;
              if (v11)
              {
                v12 = [v10 stringEquivalent];
              }

              [(TSWPStorage *)self replaceCharactersInRange:v29[0] withString:1 notifyObservers:v12 undoTransaction:0, a4];
            }
          }
        }

        --v8;
      }

      while (v8 != -1);
    }

    v13 = [(TSWPStorage *)self footnoteCount];
    if (v13)
    {
      v14 = v13 - 1;
      do
      {
        v29[0] = 0x7FFFFFFFFFFFFFFFLL;
        v15 = [(TSWPStorage *)self footnoteAtFootnoteIndex:v14 outCharIndex:v29];
        if (v15)
        {
          if (v29[0] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v15;
            if (([a3 allowsElementKind:{objc_msgSend(v15, "elementKind")}] & 1) == 0)
            {
              v17 = objc_opt_respondsToSelector();
              v18 = &stru_287D36338;
              if (v17)
              {
                v18 = [v16 stringEquivalent];
              }

              [(TSWPStorage *)self replaceCharactersInRange:v29[0] withString:1 notifyObservers:v18 undoTransaction:0, a4];
            }
          }
        }

        --v14;
      }

      while (v14 != -1);
    }
  }

  for (i = 0; i != 3; ++i)
  {
    v20 = dword_26CA66E88[i];
    if (self->_attributesTable[v20])
    {
      if (([a3 allowsElementKind:802304] & 1) == 0)
      {
        v21 = [(TSWPStorage *)self length];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          while (2)
          {
            TSWPAttributeEnumerator::TSWPAttributeEnumerator(v29, self, v23, v22 - v23, v20);
            v28.location = 0;
            v28.length = 0;
            do
            {
              v24 = TSWPAttributeEnumerator::nextAttributeIndex(v29, &v28);
              if (!v24)
              {
                TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v29);
                goto LABEL_35;
              }

              v25 = *(v24 + 8);
            }

            while (!v25 || ([a3 allowsElementKind:{objc_msgSend(*(v24 + 8), "elementKind")}] & 1) != 0);
            [(TSWPStorage *)self removeSmartField:v25 fromRange:v28.location undoTransaction:v28.length, a4];
            location = v28.location;
            length = v28.length;
            v22 = [(TSWPStorage *)self length];
            v23 = length + location;
            TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v29);
            if (v23 < v22)
            {
              continue;
            }

            break;
          }
        }
      }
    }

LABEL_35:
    ;
  }
}

- (id)textSourceForLayoutInRange:(_NSRange)a3
{
  v3 = [[TSWPRubyTextSource alloc] initWithSource:self subRange:a3.location, a3.length];

  return v3;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)a3 styleProvider:(unint64_t)a4
{
  result = [(TSWPStorage *)self length];
  if (self)
  {
    if (result >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = result;
    }

    if (result <= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = result;
    }

    return [(TSWPStorage *)self paragraphEnumeratorForCharRange:v10 styleProvider:v11 - v10, a5];
  }

  else
  {
    *&retstr->var6 = 0;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
  }

  return result;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)a3 styleProvider:(_NSRange)a4
{
  if (self)
  {
    return [(TSWPParagraphEnumerator *)self paragraphEnumeratorForCharRange:a4.location styleProvider:a4.length requireHidden:a5, 1];
  }

  *&retstr->var6 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return self;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)a3 styleProvider:(_NSRange)a4 requireHidden:(id)a5
{
  length = a4.length;
  location = a4.location;
  v12 = [(TSWPStorage *)self paragraphIndexAtCharIndex:?];
  v13 = location + length;
  if (v13 == [(TSWPStorage *)self length])
  {
    v14 = [(TSWPStorage *)self paragraphCount];
  }

  else if (length)
  {
    v14 = [(TSWPStorage *)self paragraphIndexAtCharIndex:v13 - 1]+ 1;
  }

  else
  {
    v14 = v12 + 1;
  }

  return TSWPParagraphEnumerator::TSWPParagraphEnumerator(retstr, self, a5, v12, v14, a6);
}

- (TSWPParagraphEnumerator)paragraphEnumeratorAtParIndex:(SEL)a3 styleProvider:(unint64_t)a4
{
  v9 = [(TSWPStorage *)self paragraphCount];

  return TSWPParagraphEnumerator::TSWPParagraphEnumerator(retstr, self, a5, a4, v9, 1);
}

- (BOOL)setDOLCSuppressed:(BOOL)a3
{
  dolcSuppressed = self->_dolcSuppressed;
  self->_dolcSuppressed = a3;
  return dolcSuppressed;
}

- (_NSRange)range
{
  v2 = [(NSMutableString *)self->_string length];
  v3 = 0;
  result.length = v2;
  result.location = v3;
  return result;
}

- (id)stringValue
{
  if (!self->_WPKind)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage stringValue]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1362, @"performance warning: -[TSWPStorage stringValue] should not be called on body storage."}];
  }

  v5 = MEMORY[0x277CCACA8];
  string = self->_string;

  return [v5 stringWithString:string];
}

- (unint64_t)wordCount
{
  v8.location = [(TSWPStorage *)self selectionRangeForCharIndex:0];
  v8.length = v3;
  v4 = CFStringTokenizerCreate(0, self->_string, v8, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = -1;
  do
  {
    ++v6;
  }

  while (CFStringTokenizerAdvanceToNextToken(v5));
  CFRelease(v5);
  return v6;
}

- (id)childEnumeratorForRange:(_NSRange)a3
{
  v3 = [[TSWPStorageChildEnumerator alloc] initWithStorage:self range:a3.location, a3.length];

  return v3;
}

- (unint64_t)previousCharacterIndex:(unint64_t)location forDelete:(BOOL)a4
{
  v4 = a4;
  v7 = [(TSWPStorage *)self characterCount];
  if (v7 >= location)
  {
    v10 = location - 1;
    if (location - 1 < v7)
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(self->_string, location - 1);
      location = RangeOfComposedCharactersAtIndex.location;
      v12 = RangeOfComposedCharactersAtIndex.length < 2 || !v4;
      if (!v12 && isDeletableWithoutCombining([(NSMutableString *)self->_string characterAtIndex:v10]))
      {
        return v10;
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage previousCharacterIndex:forDelete:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1455, @"Character index is outside storage bounds"}];
  }

  return location;
}

- (unint64_t)nextCharacterIndex:(unint64_t)a3
{
  v3 = a3;
  if ([(TSWPStorage *)self characterCount]> a3)
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(self->_string, v3);
    return RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
  }

  return v3;
}

- (unint64_t)indexForCharacter:(unsigned __int16)a3 startCharIndex:(unint64_t)a4
{
  v5 = a3;
  v7 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
  v8 = [(TSWPStorage *)self characterCount];
  if (v8 > a4)
  {
    while (1)
    {
      v9 = a4 + 1024;
      v10 = v8 >= a4 + 1024 ? a4 + 1024 : v8;
      v14.location = a4;
      v14.length = v10 - a4;
      CFStringGetCharacters(self->_string, v14, v7);
      v11 = v7;
      if ((v10 - a4) >= 1)
      {
        break;
      }

LABEL_8:
      a4 = v10;
      if (v9 >= v8)
      {
        goto LABEL_11;
      }
    }

    while (1)
    {
      v12 = *v11++;
      if (v12 == v5)
      {
        break;
      }

      if (v10 == ++a4)
      {
        goto LABEL_8;
      }
    }

    v8 = a4;
  }

LABEL_11:
  free(v7);
  return v8;
}

- (unint64_t)selectedParagraphBreakCount:(_NSRange)a3
{
  if (!a3.length)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v6 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:?];
  if (v6 >= v6 + v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = 0;
  do
  {
    v11 = [(TSWPStorage *)self textRangeForParagraphAtIndex:v8];
    v13 = v12 + v11 - 1;
    v15 = v13 >= location;
    v14 = v13 - location;
    v15 = !v15 || v14 >= length;
    if (!v15)
    {
      ++v10;
    }

    ++v8;
    --v9;
  }

  while (v9);
  return v10;
}

- (unint64_t)emptyParagraphCount:(_NSRange)a3
{
  if (!a3.length)
  {
    return 0;
  }

  v4 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:a3.location];
  if (v4 >= v4 + v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = 0;
  do
  {
    v9 = [(TSWPStorage *)self textRangeForParagraphAtIndex:v6];
    if (!v10 || v10 == 1 && IsParagraphBreakingCharacter([(TSWPStorage *)self characterAtIndex:v9]))
    {
      ++v8;
    }

    ++v6;
    --v7;
  }

  while (v7);
  return v8;
}

- (BOOL)isWholeParagraphsForRange:(_NSRange)a3 ignoreAttachmentCharacters:(BOOL)a4 requireParagraphBreakSelected:(BOOL)a5
{
  if (!a3.length)
  {
    v16 = 0;
    return v16 & 1;
  }

  v6 = a4;
  length = a3.length;
  location = a3.location;
  v10 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];
  v12 = v10;
  if (v6 && (v13 = v11, v14 = v10 + v11, v10 < v10 + v11))
  {
    v15 = v10;
    while (IsSpecialCharacter([(TSWPStorage *)self characterAtIndex:v15]))
    {
      ++v15;
      if (!--v13)
      {
        v15 = v14;
        break;
      }
    }
  }

  else
  {
    v15 = v10;
  }

  v16 = 0;
  if (location >= v12 && location <= v15)
  {
    v17 = location + length;
    v18 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:v17 - 1];
    if (v19)
    {
      v20 = v18 + v19;
      v21 = v18 + v19 - 1;
      v22 = IsParagraphBreakingCharacter([(TSWPStorage *)self characterAtIndex:v21]);
      if (v17 == v20)
      {
        v16 = !a5 | v22;
        return v16 & 1;
      }

      if (!a5)
      {
        v16 = (v17 == v21) & v22;
        return v16 & 1;
      }
    }

    else
    {
      v23 = [MEMORY[0x277D6C290] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage isWholeParagraphsForRange:ignoreAttachmentCharacters:requireParagraphBreakSelected:]"];
      [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1604, @"Paragraph should not be zero length"}];
    }

    v16 = 0;
  }

  return v16 & 1;
}

- (BOOL)isEmptyParagraphSelection:(id)a3 outRange:(_NSRange *)a4
{
  if (![a3 isInsertionPoint])
  {
    return 0;
  }

  v7 = [a3 range];
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtCharIndex:v7 styleProvider:0];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v9 = TSWPParagraphEnumerator::paragraphString(&v12);
  if (![v9 length] || objc_msgSend(v9, "length") == 1 && IsParagraphBreakingCharacter(objc_msgSend(v9, "characterAtIndex:", 0)))
  {
    if (a4)
    {
      a4->location = TSWPParagraphEnumerator::paragraphTextRange(&v12);
      a4->length = v10;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v12);
  return v8;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3
{
  v3 = [(TSWPStorage *)self whiteSpaceRangeAtCharIndex:a3 includingBreaks:1];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)a3 includingBreaks:(BOOL)a4
{
  v7 = [(TSWPStorage *)self selectionRangeForCharIndex:?];
  v9 = v8;
  if ([(TSWPStorage *)self length]> a3 && IsWhitespaceCharacter([(TSWPStorage *)self characterAtIndex:a3]))
  {
    v10 = a3;
    if (v7 < a3)
    {
      v10 = a3;
      while (1)
      {
        v11 = v10 - 1;
        v12 = [(TSWPStorage *)self characterAtIndex:v10 - 1];
        if (!IsWhitespaceCharacter(v12))
        {
          break;
        }

        if (!a4)
        {
          v13 = IsParagraphBreakingCharacter(v12);
          if (v12 == 8232 || (v13 & 1) != 0)
          {
            break;
          }
        }

        --v10;
        if (v11 <= v7)
        {
          v10 = v7;
          break;
        }
      }
    }

    v14 = v7 + v9;
    if (v14 > a3)
    {
      while (1)
      {
        v15 = [(TSWPStorage *)self characterAtIndex:a3];
        if (!IsWhitespaceCharacter(v15))
        {
          break;
        }

        if (!a4)
        {
          v16 = IsParagraphBreakingCharacter(v15);
          if (v15 == 8232 || (v16 & 1) != 0)
          {
            break;
          }
        }

        if (v14 == ++a3)
        {
          a3 = v14;
          break;
        }
      }
    }

    v17 = a3 - v10;
  }

  else
  {
    v17 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = v10;
  result.length = v17;
  result.location = v18;
  return result;
}

- (_NSRange)rangeForSelectionWithInsertionSelection:(id)a3
{
  if (![a3 isValid] || (objc_msgSend(a3, "isInsertionPoint") & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage rangeForSelectionWithInsertionSelection:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1692, @"Invalid selection parameter passed in"}];
  }

  if ([a3 isValid] && objc_msgSend(a3, "start"))
  {
    v7 = [a3 start] - 1;
  }

  else
  {
    v7 = 0;
  }

  if ([a3 isValid])
  {
    v8 = [a3 start];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TSWPStorage *)self p_rangeForSelectionAtCharIndex:v7 caretIndex:v8 handleNextWordWhitespace:1];
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)a3
{
  v3 = [(TSWPStorage *)self rangeByExtendingRangeToWhitespace:a3.location skipVisibleDeleted:a3.length, 0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)a3 skipVisibleDeleted:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorForCharRange:a3.location styleProvider:a3.length requireHidden:0, !a4];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  v7 = self;
  v8 = [(TSWPStorage *)v7 charRangeMappedFromStorage:location, length];
  v10 = TSWPRangeByExtendingRangeToWhitespaceForTextSource(v8, v9, v7);
  v12 = [(TSWPStorage *)v7 charRangeMappedToStorage:v10, v11];
  v14 = v13;

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v17);
  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (_NSRange)rangeByExtendingRangeToLineBreak:(_NSRange)a3
{
  location = a3.location;
  v5 = a3.location + a3.length;
  v6 = [(TSWPStorage *)self selectionRangeForCharIndex:?];
  v8 = v7;
  do
  {
    v9 = location;
    if (location <= v6)
    {
      break;
    }

    --location;
    v10 = [(NSMutableString *)self->_string characterAtIndex:v9 - 1];
    v11 = v10;
    v12 = IsParagraphBreakingCharacter(v10);
  }

  while (v11 != 8232 && v12 == 0);
  for (i = v6 + v8; v5 < i; ++v5)
  {
    v15 = [(NSMutableString *)self->_string characterAtIndex:v5];
    v16 = v15;
    v17 = IsParagraphBreakingCharacter(v15);
    if (v16 == 8232)
    {
      break;
    }

    if (v17)
    {
      break;
    }
  }

  if (v9 <= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v9;
  }

  if (v9 >= v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = v9;
  }

  v20 = v18 - v19;
  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self selectionRangeForCharIndex:?];
  v7 = a3;
  if (v5 + v6 > a3)
  {
    v7 = a3;
    if (IsWhitespaceCharacter([(TSWPStorage *)self characterAtIndex:a3]))
    {
      v8 = [(TSWPStorage *)self whiteSpaceRangeAtCharIndex:a3];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = a3;
      }

      else
      {
        v7 = v8;
      }
    }
  }

  v9 = [(TSWPStorage *)self wordAtCharIndex:a3 includePreviousWord:1];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
  }

  v10 = a3 - v9;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = a4;
  string = self->_string;
  v8 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];

  v9 = [(NSMutableString *)string rangeOfWordAtCharacterIndex:a3 range:v8 includePreviousWord:v7, v4];
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = a4;
  v7 = *MEMORY[0x277D6C268];
  v8 = *(MEMORY[0x277D6C268] + 8);
  v9 = [(TSWPStorage *)self range];
  v11 = v10;
  string = self->_string;
  if (CFStringGetLength(string) > a3 && ((CharacterAtIndex = CFStringGetCharacterAtIndex(string, a3), CharacterAtIndex) ? (v14 = v9 + v11 > a3) : (v14 = 0), v14))
  {
    v15 = IsWhitespaceCharacter(CharacterAtIndex) ^ 1;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v9 < a3)
  {
    v16 = CFStringGetCharacterAtIndex(string, a3 - 1);
    v17 = IsWhitespaceCharacter(v16);
    LOBYTE(v15) = v17 ^ 1 | v15;
    if (!v17)
    {
      --a3;
    }
  }

LABEL_12:
  if (v15)
  {
    if (v11)
    {
      v27.location = v9;
      v27.length = v11;
      v18 = CFStringTokenizerCreate(0, string, v27, 4uLL, 0);
      if (v18)
      {
        v19 = v18;
        if (CFStringTokenizerGoToTokenAtIndex(v18, a3))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v19);
          length = CurrentTokenRange.length;
          location = CurrentTokenRange.location;
        }

        else
        {
          length = 0;
          location = -1;
        }

        if (location != -1 && length != 0)
        {
          v7 = location;
          v8 = length;
        }

        CFRelease(v19);
      }
    }
  }

  v24 = v7;
  v25 = v8;
  result.length = v25;
  result.location = v24;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4
{
  v4 = [(TSWPStorage *)self p_rangeForSelectionAtCharIndex:a3 caretIndex:a4 handleNextWordWhitespace:1];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)a3 caretIndex:(unint64_t)a4 handleNextWordWhitespace:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = a4 - 1;
  if (a3 != a4 && v9 != a3)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1883, @"Precondition: caretIndex is either equal to the given charIndex or one past"}];
  }

  v12 = [(TSWPStorage *)self selectionRangeForCharIndex:a4];
  v14 = v12;
  v15 = v13;
  if (v12 > v7)
  {
    v7 = v12;
  }

  if (v13 - 1 < v7 - v12)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1893, @"Character index should be inside allowable selection range."}];
  }

  v18 = v14 + v15;
  if (v7 >= v14 + v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = [(TSWPStorage *)self characterAtIndex:v7];
  }

  if (!IsSpecialCharacter(v19))
  {
    v21 = 0;
    goto LABEL_18;
  }

  v20 = [(TSWPStorage *)self attachmentOrFootnoteAtCharIndex:v7];
  v21 = v20;
  if (!v20)
  {
LABEL_18:
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_22;
  }

  if ([v20 isDrawable] && objc_msgSend(v21, "isAnchored"))
  {
    if (v18 <= a4)
    {
      v19 = 0;
    }

    else
    {
      v19 = [(TSWPStorage *)self characterAtIndex:a4];
    }

    v21 = 0;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = a4;
  }

  else
  {
    v21 = 1;
    v22 = v7;
  }

LABEL_22:
  if (IsSpecialCharacter(v19))
  {
    goto LABEL_45;
  }

  if (v5 && IsWhitespaceCharacter(v19))
  {
    if (v7 != a4 || !v7 || v7 <= v14)
    {
      if (v18 <= a4)
      {
        v23 = v7;
      }

      else
      {
        v23 = a4;
      }

      if (v7 + 1 == a4)
      {
        v9 = v23;
      }

      else
      {
        v9 = v7;
      }
    }

    v24 = [(TSWPStorage *)self characterAtIndex:v9];
    v25 = v24;
    if ((IsWhitespaceCharacter(v24) & 1) == 0 && !IsSpecialCharacter(v25))
    {
      goto LABEL_38;
    }

    v22 = [(TSWPStorage *)self whiteSpaceRangeAtCharIndex:v7 includingBreaks:0];
    v21 = v26;
  }

  v9 = v7;
LABEL_38:
  if (v22 == 0x7FFFFFFFFFFFFFFFLL || !v21)
  {
    v27 = [(TSWPStorage *)self wordAtCharIndex:v9 includePreviousWord:0];
    v21 = v28;
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9 >= v18)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = [-[TSWPStorage string](self "string")];
        v21 = v29;
      }
    }

    else
    {
      v22 = v27;
    }
  }

LABEL_45:
  v30 = v22;
  v31 = v21;
  result.length = v31;
  result.location = v30;
  return result;
}

- (_NSRange)nextWordFromIndex:(unint64_t)a3 forward:(BOOL)a4
{
  v4 = a4;
  v8 = *MEMORY[0x277D6C268];
  length = *(MEMORY[0x277D6C268] + 8);
  v9 = [TSWPStorage wordAtCharIndex:"wordAtCharIndex:includePreviousWord:" includePreviousWord:?];
  v11 = v10;
  v12 = [(TSWPStorage *)self selectionRangeForCharIndex:a3];
  v14 = v13;
  v15 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:a3];
  v16 = v15;
  v18 = v17;
  string = self->_string;
  if (v4)
  {
    v12 += v14;
    v33.length = v12 - v15;
    v33.location = v15;
    v20 = CFStringTokenizerCreate(0, string, v33, 0, 0);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = a3;
      do
      {
        v24 = v23 - 1;
        ++v22;
        if (CFStringTokenizerGoToTokenAtIndex(v21, v23))
        {
          break;
        }

        if (v23 <= v16)
        {
          break;
        }

        --v23;
      }

      while (v12 == a3);
      do
      {
        ++v24;
        --v22;
      }

      while (!CFStringTokenizerGoToTokenAtIndex(v21, v24) && v24 < v12);
      location = CFStringTokenizerGetCurrentTokenRange(v21).location;
      if (v9 + v11 == location || v22 && location == v24 || CFStringTokenizerAdvanceToNextToken(v21))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v21);
        if (CurrentTokenRange.location < 0)
        {
          length = 0;
        }

        else
        {
          v12 = CurrentTokenRange.location;
          length = CurrentTokenRange.length;
        }
      }

      else
      {
LABEL_28:
        length = 0;
      }

LABEL_30:
      CFRelease(v21);
      v8 = v12;
    }
  }

  else
  {
    v34.length = v18 - v12 + v15;
    v34.location = v12;
    v27 = CFStringTokenizerCreate(0, string, v34, 0, 0);
    if (v27)
    {
      v21 = v27;
      v28 = a3;
      while (1)
      {
        while (!CFStringTokenizerGoToTokenAtIndex(v21, v28))
        {
          if (v28 <= v12)
          {
            goto LABEL_28;
          }

          --v28;
        }

        v29 = CFStringTokenizerGetCurrentTokenRange(v21);
        length = v29.length;
        if (v29.location + v29.length < a3 || v29.location + v29.length == v9)
        {
          break;
        }

        if (v29.location <= v12)
        {
          goto LABEL_28;
        }

        if (v29.location - 1 >= v28 - 1)
        {
          --v28;
        }

        else
        {
          v28 = v29.location - 1;
        }
      }

      v12 = v29.location;
      goto LABEL_30;
    }
  }

  v30 = v8;
  v31 = length;
  result.length = v31;
  result.location = v30;
  return result;
}

- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)a3
{
  location = a3.location;
  v5 = a3.location + a3.length;
  v6 = [(TSWPStorage *)self selectionRangeForCharIndex:?];
  if (location > v6 && location < v6 + v7 && (IsWhitespaceCharacter([(TSWPStorage *)self characterAtIndex:location]) & 1) == 0)
  {
    v8 = [(TSWPStorage *)self wordAtCharIndex:location - 1 includePreviousWord:0];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      location = v8;
    }
  }

  if (v5 > location && (IsWhitespaceCharacter([(TSWPStorage *)self characterAtIndex:v5 - 1]) & 1) == 0)
  {
    v9 = [(TSWPStorage *)self wordAtCharIndex:v5 includePreviousWord:0];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v9 + v10;
    }
  }

  if (location <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = location;
  }

  if (location >= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = location;
  }

  v13 = v11 - v12;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)rangeByTrimmingRange:(_NSRange)a3 withBlock:(id)a4
{
  location = a3.location;
  if (a3.length)
  {
    length = a3.length;
    v8 = a3.length;
    v9 = a3.location;
    while ((*(a4 + 2))(a4, [(TSWPStorage *)self characterAtIndex:v9]))
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    v10 = location + length - 1;
    do
    {
      if (!(*(a4 + 2))(a4, [(TSWPStorage *)self characterAtIndex:v10]))
      {
        break;
      }

      --v10;
      --v8;
    }

    while (v8);
LABEL_10:
    location = v9;
  }

  else
  {
    v8 = 0;
  }

  v11 = location;
  v12 = v8;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)a3 forAttributeKind:(unsigned int)a4 effectiveRange:(_NSRange *)a5
{
  v6 = a3;
  if (a5)
  {
    *a5 = xmmword_26CA637B0;
  }

  if (a3)
  {
    v7 = [(TSWPStorage *)self attributeArrayForKind:*&a4];
    if (v7 && (v8 = v7, v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, v6 - 1), v9 < v8->var2))
    {
      v6 = *(v8->var4 + 2 * v9 + 1);
      if (a5)
      {
        a5->location = TSWPAttributeArray::rangeForAttributeIndex(v8, v9);
        a5->length = v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)objectAtLocationAtExactCharIndex:(unint64_t)a3 forAttributeKind:(unsigned int)a4
{
  v4 = *&a4;
  if ([(TSWPStorage *)self length]<= a3)
  {
    return 0;
  }

  result = [(TSWPStorage *)self attributeArrayForKind:v4];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = TSWPAttributeArray::exactAttributeIndexForCharIndex(result, a3);
  if (v9 >= v8[2])
  {
    return 0;
  }

  else
  {
    return *(v8[4] + 16 * v9 + 8);
  }
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(__CFLocale *)a5 hyphenChar:(unsigned int *)a6
{
  v6 = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]"];
  [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2175, @"notreached"}];
  return -1;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self charIndexMappedFromStorage:a3];

  return [(TSWPStorage *)self charIndexMappedToStorage:v4];
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)relocateNonSelectedAnchorsInSelection:(id)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  [(TSPObject *)self willModify];
  if (![a3 isRange])
  {
    return a3;
  }

  memset(&__p, 0, sizeof(__p));
  if ([a3 isVisual])
  {
    v7 = [a3 visualRanges];
    if (&__p != v7)
    {
      std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(&__p, *v7, v7[1], (v7[1] - *v7) >> 4);
    }
  }

  if (![a3 visualRangeCount])
  {
    v8 = 1;
LABEL_10:
    v10 = 0;
    v18 = 0;
    v11 = v8;
    v9 = a3;
    do
    {
      v20.location = 0;
      v20.length = 0;
      if (v8 == 1)
      {
        location = [a3 range];
        length = v13;
        v20.location = location;
        v20.length = v13;
      }

      else
      {
        v20 = *(*[a3 visualRanges] + v10);
        location = v20.location;
        length = v20.length;
      }

      v19.location = 0;
      v19.length = 0;
      v19.location = -[TSWPStorage p_RelocateNonSelectedAnchorsInRange:selectionInfos:undoTransaction:](self, "p_RelocateNonSelectedAnchorsInRange:selectionInfos:undoTransaction:", location, length, [TSUProtocolCast() infos], a4);
      v19.length = v15;
      if (v20.location != v19.location || v20.length != v15)
      {
        if ([a3 isVisual])
        {
          TSWPRangeVector::removeRange(&__p, &v20);
          TSWPRangeVector::addRange(&__p, &v19);
          v18 = 1;
        }

        else
        {
          v9 = [a3 copyWithNewRange:{v19.location, v19.length}];
        }
      }

      v10 += 16;
      --v11;
    }

    while (v11);
    if (v18)
    {
      v9 = [a3 copyWithNewVisualRanges:&__p];
    }

    goto LABEL_24;
  }

  v8 = [a3 visualRangeCount];
  if (v8)
  {
    goto LABEL_10;
  }

  v9 = a3;
LABEL_24:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return v9;
}

- (_NSRange)p_RelocateNonSelectedAnchorsInRange:(_NSRange)a3 selectionInfos:(id)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a3.length;
  location = a3.location;
  if (a3.length >= 2)
  {
    v10 = [(TSWPStorage *)self attachmentIndexRangeForTextRange:a3.location, a3.length];
    if (v10 < v10 + v11)
    {
      v12 = v10;
      v13 = v11;
      do
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        [(TSWPStorage *)self attachmentAtAttachmentIndex:v12 outCharIndex:&v19];
        v14 = TSUDynamicCast();
        if ([v14 isAnchored] && (objc_msgSend(a4, "containsObject:", objc_msgSend(v14, "drawable")) & 1) == 0)
        {
          v15 = [(TSWPStorage *)self setDOLCSuppressed:1];
          v16 = v14;
          [(TSWPStorage *)self replaceCharactersInRange:v19 withString:1 undoTransaction:0, a5];
          [(TSWPStorage *)self insertAttachmentOrFootnote:v14 range:location++ dolcContext:0 undoTransaction:0 changeSession:a5, 0];
          --length;

          [(TSWPStorage *)self setDOLCSuppressed:v15];
        }

        ++v12;
        --v13;
      }

      while (v13);
    }
  }

  v17 = location;
  v18 = length;
  result.length = v18;
  result.location = v17;
  return result;
}

- (id)extendSelectionForTopicChildren:(id)a3
{
  v3 = a3;
  if ([a3 type] == 2)
  {
    TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v15, self, 0, [(TSWPStorage *)self paragraphIndexAtCharIndex:[(TSWPSelection *)v3 range]], [(TSWPStorage *)self paragraphCount], 1);
    v5 = TSWPParagraphEnumerator::paragraphLevel(&v15);
    v6 = 0;
    while (1)
    {
      v7 = v6;
      if (TSWPParagraphEnumerator::isLastParagraph(&v15))
      {
        break;
      }

      TSWPParagraphEnumerator::operator++(&v15);
      v8 = TSWPParagraphEnumerator::paragraphLevel(&v15);
      v6 = 1;
      if (v8 <= v5)
      {
        TSWPParagraphEnumerator::operator--(&v15);
        break;
      }
    }

    if (v7)
    {
      v9 = [(TSWPSelection *)v3 range];
      v10 = TSWPParagraphEnumerator::paragraphTextRange(&v15);
      if (v9 <= v10 + v11)
      {
        v12 = v10 + v11;
      }

      else
      {
        v12 = v9;
      }

      if (v9 >= v10 + v11)
      {
        v13 = v10 + v11;
      }

      else
      {
        v13 = v9;
      }

      v3 = [TSWPSelection selectionWithRange:v13 type:v12 - v13 leadingEdge:2 storage:1, 0];
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v15);
  }

  return v3;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v5 = [(TSWPStorage *)self replaceCharactersInRange:a3.location withString:a3.length notifyObservers:a4 undoTransaction:1, a5];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 notifyObservers:(BOOL)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v7 = a5;
  v10 = [[TSWPSelection alloc] initWithRange:a3.location, a3.length];
  v11 = [(TSWPStorage *)self p_replaceCharactersInLogicalSelection:v10 withString:a4 withFlags:v7 replaceTextData:0 changeSession:0 undoTransaction:a6 outInsertedRange:0];
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)replaceCharactersInSelection:(id)a3 withString:(id)a4 withFlags:(unsigned int)a5 replaceTextData:(id *)a6 changeSession:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8 outInsertedRange:(_NSRange *)a9
{
  v9 = *&a5;
  v11 = a3;
  if ([a3 visualRangeCount] < 2)
  {
    if ([v11 isVisual])
    {
      v21 = [v11 superRange];
      v11 = [v11 copyWithNewType:0 range:{v21, v22}];
    }

    v23 = [(TSWPStorage *)self p_replaceCharactersInLogicalSelection:v11 withString:a4 withFlags:v9 replaceTextData:a6 changeSession:a7 undoTransaction:a8 outInsertedRange:a9];
  }

  else
  {
    std::vector<CGPoint>::vector[abi:nn200100](&__p, [v11 visualRanges]);
    v13 = [v11 superRange];
    v15 = v14;
    v26 = v13;
    v16 = [a4 length];
    v25 = v16 + v15 - TSWPRangeVector::characterCount([v11 visualRanges]);
    v17 = v31 - __p;
    v18 = ((v31 - __p) >> 4) + 1;
    while (v18-- > 1)
    {
      v20 = [[TSWPSelection alloc] initWithRange:*(__p + v17 - 16), *(__p + v17 - 8)];
      [(TSWPStorage *)self p_replaceCharactersInLogicalSelection:v20 withString:a4 withFlags:v9 replaceTextData:a6 changeSession:a7 undoTransaction:a8 outInsertedRange:a9];
      v17 -= 16;

      a4 = &stru_287D36338;
    }

    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    v24 = v25;
    v23 = v26;
  }

  result.length = v24;
  result.location = v23;
  return result;
}

- (_NSRange)p_replaceCharactersInLogicalSelection:(id)a3 withString:(id)a4 withFlags:(unsigned int)a5 replaceTextData:(id *)a6 changeSession:(id)a7 undoTransaction:(TSWPStorageTransaction *)a8 outInsertedRange:(_NSRange *)a9
{
  v9 = a5;
  v79 = *MEMORY[0x277D85DE8];
  location = [a3 range];
  length = v14;
  [a3 range];
  if (v16 || [a4 length])
  {
    v17 = [a3 range];
    if (v17 != -[TSWPStorage length](self, "length") && (-[TSWPStorage characterAtIndex:](self, "characterAtIndex:", [a3 range]) & 0xFC00) == 0xDC00)
    {
      v18 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2432, @"Inserting text within surrogate pair"}];
    }

    [(TSPObject *)self willModify];
    v64 = [(TSWPStorage *)self relocateNonSelectedAnchorsInSelection:a3 undoTransaction:a8];
    self->_delayBroadcast = 1;
    v66 = self;
    v62 = a4;
    v20 = [TSWPStorage p_replacementsForSelection:"p_replacementsForSelection:withString:changeSession:shouldTrackDeletions:" withString:? changeSession:? shouldTrackDeletions:?];
    __src = 0;
    v76 = 0;
    v77 = 0;
    v21 = *MEMORY[0x277D6C268];
    v22 = *(MEMORY[0x277D6C268] + 8);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v20;
    v23 = [v20 countByEnumeratingWithState:&v71 objects:v78 count:16];
    v63 = v9;
    v24 = 0;
    if (v23)
    {
      v68 = *v72;
      v25 = self;
      do
      {
        v70 = v23;
        for (i = 0; i != v70; ++i)
        {
          if (*v72 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v71 + 1) + 8 * i);
          [v27 performWithStorage:v25 delta:v24 undoTransaction:? replaceBlock:?];
          v28 = [v27 delta];
          v29 = [v27 insertedRange];
          v31 = v30;
          v32 = v76;
          if (v76 >= v77)
          {
            v34 = __src;
            v35 = v76 - __src;
            v36 = (v76 - __src) >> 4;
            v37 = v36 + 1;
            if ((v36 + 1) >> 60)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v38 = v77 - __src;
            if ((v77 - __src) >> 3 > v37)
            {
              v37 = v38 >> 3;
            }

            v39 = v38 >= 0x7FFFFFFFFFFFFFF0;
            v40 = 0xFFFFFFFFFFFFFFFLL;
            if (!v39)
            {
              v40 = v37;
            }

            if (v40)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(&__src, v40);
            }

            v41 = (v76 - __src) >> 4;
            v42 = (16 * v36);
            *v42 = v29;
            v42[1] = v31;
            v33 = 16 * v36 + 16;
            v43 = &v42[-2 * v41];
            memcpy(v43, v34, v35);
            v44 = __src;
            __src = v43;
            v76 = v33;
            v77 = 0;
            if (v44)
            {
              operator delete(v44);
            }

            v25 = v66;
          }

          else
          {
            *v76 = v29;
            *(v32 + 1) = v30;
            v33 = (v32 + 16);
          }

          v76 = v33;
          [v27 insertedRange];
          if (v45)
          {
            v21 = [v27 insertedRange];
            v22 = v46;
          }

          v24 += v28;
        }

        v23 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v23);
    }

    else
    {
      v25 = self;
    }

    if (a6)
    {
      if (v22)
      {
        if (![a6->var0 isEqualToString:@"TSWPShouldExtendStoredLanguage"])
        {
          if ([v62 isEqualToString:@"\t"] && -[TSWPStorage writingDirectionForParagraphAtCharIndex:](v25, "writingDirectionForParagraphAtCharIndex:", v21) == 1 && objc_msgSend(MEMORY[0x277CBEAF8], "characterDirectionForLanguage:", a6->var0) != 2)
          {
            [(TSWPStorage *)v25 setLanguage:*MEMORY[0x277D6C3A0] forCharRange:v21 undoTransaction:v22, a8];
          }

          else
          {
            [(TSWPStorage *)v25 setLanguage:a6->var0 forCharRange:v21 undoTransaction:v22, a8];
          }
        }

        [(TSWPStorage *)v25 setDictationAndAutocorrection:a6->var1 forCharRange:v21 undoTransaction:v22, a8];
      }
    }

    else if (v22)
    {
      [(TSWPStorage *)v25 applyObject:0 toCharRange:v21 forKind:v22 dolcContext:13 undoTransaction:0, a8];
    }

    v25->_delayBroadcast = 0;
    location = [v64 range];
    length = 0;
    v47 = __src;
    if (__src != v76)
    {
      v48 = 0;
      do
      {
        v80.location = location;
        v80.length = length;
        v49 = NSUnionRange(v80, *v47);
        location = v49.location;
        length = v49.length;
        v50 = v47->length;
        if (((v50 != 0) & v48) == 1)
        {
          v51 = [MEMORY[0x277D6C290] currentHandler];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]"];
          [v51 handleFailureInFunction:v52 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2510, @"multiple inserted ranges aren't handled yet"}];
        }

        v48 |= v50 != 0;
        ++v47;
      }

      while (v47 != v76);
    }

    if (v63)
    {
      v53 = v66->_rangeToBroadcast.location;
      v54 = v66->_rangeToBroadcast.length;
      [(TSWPStorage *)v66 p_didChangeRange:location delta:length broadcastKind:v24, 1];
      if (v53 | v54)
      {
        [(TSWPStorage *)v66 p_didChangeRange:v53 delta:v54 broadcastKind:0, 1];
      }
    }

    v55 = __src;
    if (a9)
    {
      v56 = v76;
      if (__src != v76)
      {
        v57 = __src;
        do
        {
          *a9 = *v57;
          v58 = v57->length;
          ++v57;
          if (v58)
          {
            v59 = 1;
          }

          else
          {
            v59 = v57 == v56;
          }
        }

        while (!v59);
      }
    }

    v66->_rangeToBroadcast.location = 0;
    v66->_rangeToBroadcast.length = 0;
    if (v55)
    {
      v76 = v55;
      operator delete(v55);
    }
  }

  v60 = location;
  v61 = length;
  result.length = v61;
  result.location = v60;
  return result;
}

uint64_t __137__TSWPStorage_p_replaceCharactersInLogicalSelection_withString_withFlags_replaceTextData_changeSession_undoTransaction_outInsertedRange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = [a3 length];
  v8 = *(a1 + 40);

  return [v6 p_replaceCharactersInSelection:a2 withString:a3 length:v7 undoTransaction:v8];
}

- (id)substringWithSelection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if ([a3 type])
  {
    if ([a3 type] != 7)
    {
      return &stru_287D36338;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [a3 visualRangesArray];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v6)
    {
      return &stru_287D36338;
    }

    v7 = v6;
    v8 = *v17;
    v9 = &stru_287D36338;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) rangeValue];
        v9 = [(__CFString *)v9 stringByAppendingString:[(TSWPStorage *)self substringWithRange:v11, v12]];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
    return v9;
  }

  else
  {
    v15 = [a3 range];

    return [(TSWPStorage *)self substringWithRange:v15, v14];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  [(TSWPStorage *)self setDocumentRoot:?];
  v7 = 0;
  do
  {
    v8 = [(TSWPStorage *)self attributeArrayForKind:v7];
    if (v8)
    {
      (*(v8->var0 + 13))(v8, a3, a4);
    }

    v7 = (v7 + 1);
  }

  while (v7 != 19);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v7 = 0;
  do
  {
    v8 = [(TSWPStorage *)self attributeArrayForKind:v7];
    if (v8)
    {
      (*(v8->var0 + 14))(v8, a3, a4);
    }

    v7 = (v7 + 1);
  }

  while (v7 != 19);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v5 = 0;
  do
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:v5];
    if (v6)
    {
      (*(v6->var0 + 15))(v6, a3);
    }

    v5 = (v5 + 1);
  }

  while (v5 != 19);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = 0;
  do
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:v5];
    if (v6)
    {
      (*(v6->var0 + 16))(v6, a3);
    }

    v5 = (v5 + 1);
  }

  while (v5 != 19);

  [(TSWPStorage *)self setDocumentRoot:0];
}

- (_NSRange)rangeOfString:(id)a3 searchOptions:(unint64_t)a4 updatingSearchRange:(_NSRange *)a5
{
  v5 = [(NSMutableString *)self->_string rangeOfString:a3 searchOptions:a4 updatingSearchRange:a5];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfString:(id)a3 searchOptions:(unint64_t)a4 range:(_NSRange)a5
{
  v7 = a5;
  v5 = [(NSMutableString *)self->_string rangeOfString:a3 searchOptions:a4 updatingSearchRange:&v7];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfParagraphBreakingCharacter:(unsigned __int16)a3 backwards:(BOOL)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4;
  if ((IsParagraphBreakingCharacter(a3) & 1) == 0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage rangeOfParagraphBreakingCharacter:backwards:range:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2682, @"invalid character"}];
  }

  v16 = a3;
  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v16 length:1];
  if (v7)
  {
    v13 = 6;
  }

  else
  {
    v13 = 2;
  }

  v14 = [(NSMutableString *)self->_string rangeOfString:v12 options:v13 range:location, length];
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)childEnumerator
{
  v4 = [(TSWPStorage *)self range];

  return [(TSWPStorage *)self childEnumeratorForRange:v4, v3];
}

- (_NSRange)rangeOfAnnotationWithOptions:(unint64_t)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v8 = *MEMORY[0x277D6C268];
  v9 = *(MEMORY[0x277D6C268] + 8);
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v14, self, a4.location, a4.length, 15);
  v10 = 0;
  while (TSWPAttributeEnumerator::nextAttributeIndex(v14, &v13))
  {
    objc_opt_class();
    if (TSUDynamicCast() && v13.location >= location && v13.location - location < length)
    {
      if ((v6 & 4) == 0)
      {
        if ((v10 & (v13.location >= v8)) == 0)
        {
          v8 = v13.location;
          v9 = v13.length;
        }

        v10 = 1;
        break;
      }

      if ((v10 & (v13.location <= v8)) == 0)
      {
        v8 = v13.location;
        v9 = v13.length;
      }

      v10 = 1;
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v14);
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v14, self, location, length, 16);
  while (TSWPAttributeEnumerator::nextAttributeIndex(v14, &v13))
  {
    objc_opt_class();
    if (TSUDynamicCast() && v13.location >= location && v13.location - location < length)
    {
      if ((v6 & 4) == 0)
      {
        if ((v10 & (v13.location >= v8)) == 0)
        {
          v8 = v13.location;
          v9 = v13.length;
        }

        break;
      }

      if ((v10 & (v13.location <= v8)) == 0)
      {
        v8 = v13.location;
        v9 = v13.length;
      }

      v10 = 1;
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v14);
  v11 = v8;
  v12 = v9;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)findChangesInRange:(_NSRange)a3 onHit:(id)a4
{
  length = a3.length;
  location = a3.location;
  [(TSWPStorage *)self p_findChangesInRange:a3.location onHit:a3.length withAttributeKind:a4, 15];

  [(TSWPStorage *)self p_findChangesInRange:location onHit:length withAttributeKind:a4, 16];
}

- (_NSRange)rangeForHighlight:(id)a3
{
  v4 = *MEMORY[0x277D6C268];
  v5 = *(MEMORY[0x277D6C268] + 8);
  v6 = [(TSWPStorage *)self attributeArrayForKind:17];
  if (v6)
  {
    v7 = v6;
    Object = TSWPAttributeArray::findObject(v6, a3, 0);
    if (Object == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage rangeForHighlight:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2887, @"Expected to find highlight in storage"}];
    }

    else
    {
      v4 = TSWPAttributeArray::rangeForAttributeIndex(v7, Object);
      v5 = v11;
    }
  }

  v12 = v4;
  v13 = v5;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)searchForString:(id)a3 options:(unint64_t)a4 onHit:(id)a5
{
  if ([(TSWPStorage *)self wpKind]== 7)
  {
    return 0;
  }

  v11 = [(TSWPStorage *)self range];

  return [(TSWPStorage *)self searchInRange:v11 forString:v10 options:a3 onHit:a4, a5];
}

- (id)searchInRange:(_NSRange)a3 forString:(id)a4 options:(unint64_t)a5 onHit:(id)a6
{
  v7 = [[TSWPSearch alloc] initWithString:a4 options:a5 hitBlock:a6 storage:self range:a3.location, a3.length];
  [(TSWPStorage *)self continueSearch:v7];
  if ([(TSWPSearch *)v7 isComplete])
  {

    return 0;
  }

  else
  {
    v8 = v7;
  }

  return v7;
}

- (id)searchForAnnotationsWithHitBlock:(id)a3
{
  v5 = [(TSWPStorage *)self range];
  [(TSWPStorage *)self findCommentsInRange:v5 onHit:v6, a3];
  v7 = [(TSWPStorage *)self range];
  [(TSWPStorage *)self findChangesInRange:v7 onHit:v8, a3];
  return 0;
}

- (void)continueSearch:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage continueSearch:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2930, @"invalid nil value for '%s'", "search"}];
  }

  v10 = [a3 range];
  v11 = v7;
  if (v7 && [(TSWPStorage *)self wpKind]!= 7)
  {
    v8 = [objc_msgSend(a3 "searchedString")];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [a3 foundHitWithRange:{v8, v9}];
    }

    [a3 setRange:{v10, v11}];
  }
}

- (BOOL)canUserReplaceText
{
  if ([(TSWPStorage *)self wpKind]== 7)
  {
    return 0;
  }

  v4 = [(TSWPStorage *)self parentInfo];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      if (v6)
      {
        if ([v6 isLocked])
        {
          break;
        }
      }

      v5 = [(TSDContainerInfo *)v5 parentInfo];
      if (!v5)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

- (_NSRange)replaceAllOccurrencesOfStyle:(id)a3 withStyle:(id)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v9 = *MEMORY[0x277D6C268];
  v10 = *(MEMORY[0x277D6C268] + 8);
  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    v11 = 0;
LABEL_7:
    v9 = [(TSWPStorage *)self replaceAllOccurrencesOfObject:a3 withObject:a4 forKind:v11 undoTransaction:a5];
    v10 = v12;
    goto LABEL_8;
  }

  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    v11 = 2;
    goto LABEL_7;
  }

  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    v11 = 3;
    goto LABEL_7;
  }

LABEL_8:
  v13 = v9;
  v14 = v10;
  result.length = v14;
  result.location = v13;
  return result;
}

- (BOOL)styleOverridesAppliedToRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v13, self, a3.location, a3.length, 3);
  while (1)
  {
    AttributeIndex = TSWPAttributeEnumerator::nextAttributeIndex(v13, 0);
    if (!AttributeIndex)
    {
      break;
    }

    if (*(AttributeIndex + 8))
    {
      objc_opt_class();
      if ([TSUDynamicCast() overridesAnyProperty])
      {
        v7 = 1;
        goto LABEL_13;
      }
    }
  }

  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v12, self, location, length, 0);
  while (1)
  {
    v8 = TSWPAttributeEnumerator::nextAttributeIndex(v12, 0);
    v7 = v8 != 0;
    if (!v8)
    {
      break;
    }

    if (*(v8 + 8))
    {
      objc_opt_class();
      v9 = TSUDynamicCast();
      v10 = v9;
      if (v9)
      {
        if ([v9 parent] && (objc_msgSend(v10, "overridesAnyProperty") & 1) != 0)
        {
          break;
        }
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v12);
LABEL_13:
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v13);
  return v7;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  if (self->_stylesheet != a3)
  {
    [a4 pushMappingContext:self];
    v7 = 0;
    do
    {
      v8 = [(TSWPStorage *)self attributeArrayForKind:v7];
      if (v8)
      {
        (*(v8->var0 + 12))(v8, a3, a4);
      }

      v7 = (v7 + 1);
    }

    while (v7 != 19);
    v9 = a3;

    self->_stylesheet = a3;

    [a4 popMappingContext:self];
  }
}

- (_NSRange)textRangeForListsInCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v7 = [(TSWPStorage *)self textRangeForListAtCharIndex:?];
  v8 = location + length;
  if (v8 > v7 + v6)
  {
    v9 = [(TSWPStorage *)self length];
    if (v8 < v9)
    {
      v9 = [(TSWPStorage *)self listEndAtCharIndex:v8 - 1];
    }

    v6 = v9 - v7;
  }

  v10 = v7;
  result.length = v6;
  result.location = v10;
  return result;
}

- (_NSRange)textRangeForListAtCharIndex:(unint64_t)a3
{
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtCharIndex:a3 styleProvider:0];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  length = TSWPParagraphEnumerator::paragraphListStyle(&v18);
  v4 = TSWPParagraphEnumerator::paragraphLevel(&v18);
  if (!length)
  {
    goto LABEL_17;
  }

  if (![length labelTypeForLevel:v4])
  {
    length = 0;
LABEL_17:
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  location = TSWPParagraphEnumerator::paragraphTextRange(&v18);
  length = v6;
  TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v17, &v18);
  while (!TSWPParagraphEnumerator::isLastParagraph(&v17))
  {
    TSWPParagraphEnumerator::operator++(&v17);
    v7 = TSWPParagraphEnumerator::paragraphListStyle(&v17);
    v8 = TSWPParagraphEnumerator::paragraphLevel(&v18);
    if (!v7 || ![v7 labelTypeForLevel:v8])
    {
      break;
    }

    v22.location = TSWPParagraphEnumerator::paragraphTextRange(&v17);
    v22.length = v9;
    v19.location = location;
    v19.length = length;
    v10 = NSUnionRange(v19, v22);
    location = v10.location;
    length = v10.length;
  }

  while (!TSWPParagraphEnumerator::isFirstParagraph(&v18))
  {
    TSWPParagraphEnumerator::operator--(&v18);
    v11 = TSWPParagraphEnumerator::paragraphListStyle(&v18);
    v12 = TSWPParagraphEnumerator::paragraphLevel(&v18);
    if (!v11 || ![v11 labelTypeForLevel:v12])
    {
      break;
    }

    v23.location = TSWPParagraphEnumerator::paragraphTextRange(&v18);
    v23.length = v13;
    v20.location = location;
    v20.length = length;
    v14 = NSUnionRange(v20, v23);
    location = v14.location;
    length = v14.length;
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v17);
LABEL_18:
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v18);
  v15 = location;
  v16 = length;
  result.length = v16;
  result.location = v15;
  return result;
}

- (unint64_t)firstParIndexInListAtParIndex:(unint64_t)a3
{
  v3 = a3;
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtParIndex:a3 styleProvider:0];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  v4 = TSWPParagraphEnumerator::paragraphListStyle(&v11);
  v5 = TSWPParagraphEnumerator::paragraphLevel(&v11);
  if (v4 && [v4 labelTypeForLevel:v5])
  {
    while (1)
    {
      isFirstParagraph = TSWPParagraphEnumerator::isFirstParagraph(&v11);
      if (!v3 || isFirstParagraph)
      {
        break;
      }

      TSWPParagraphEnumerator::operator--(&v11);
      v8 = TSWPParagraphEnumerator::paragraphListStyle(&v11);
      v9 = TSWPParagraphEnumerator::paragraphLevel(&v11);
      if (!v8 || ![v8 labelTypeForLevel:v9])
      {
        break;
      }

      --v3;
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v11);
  return v3;
}

- (unint64_t)paragraphCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:0];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (unint64_t)paragraphIndexAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphIndexAtCharIndex:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3193, @"paragraphIndexAtCharIndex: no paragraph table."}];
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
}

- (_NSRange)textRangeForParagraphAtIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v5)
  {
    v6 = v5;
    v7 = TSWPAttributeArray::charIndexForAttributeIndex(v5, a3);
    if (a3 + 1 >= v6->var2)
    {
      v8 = [(TSWPStorage *)self characterCount];
    }

    else
    {
      v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, a3 + 1);
    }

    v11 = v8 - v7;
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphAtIndex:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3205, @"textRangeForParagraphAtIndex: no paragraph table."}];
    v11 = 0;
    v7 = 0;
  }

  v12 = v7;
  result.length = v11;
  result.location = v12;
  return result;
}

- (_NSRange)textRangeForParagraphsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TSWPStorage *)self textRangeForParagraphAtIndex:?];
  v8 = v7;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphsInRange:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3224, @"bogus first paragraph text range"}];
  }

  if (length)
  {
    if (length == 1)
    {
      length = v8;
    }

    else
    {
      v11 = [(TSWPStorage *)self textRangeForParagraphAtIndex:length + location - 1];
      v13 = v12;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphsInRange:]"];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3233, @"bogus first paragraph text range"}];
      }

      v19.location = v6;
      v19.length = v8;
      v21.location = v11;
      v21.length = v13;
      v16 = NSUnionRange(v19, v21);
      v6 = v16.location;
      length = v16.length;
    }
  }

  v17 = v6;
  v18 = length;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)textRangeForParagraphAtCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v5)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphAtCharIndex:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3246, @"textRangeForParagraphAtCharIndex: no paragraph table."}];
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, a3);

  v9 = [(TSWPStorage *)self textRangeForParagraphAtIndex:v8];
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v7 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];
  v8 = location + length;
  if (v8 > v7 + v6)
  {
    v9 = [(TSWPStorage *)self length];
    if (v8 < v9)
    {
      v9 = [(TSWPStorage *)self paragraphEndAtCharIndex:v8 - 1];
    }

    v6 = v9 - v7;
  }

  v10 = v7;
  result.length = v6;
  result.location = v10;
  return result;
}

- (_NSRange)paragraphIndexRangeForCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(TSWPStorage *)self paragraphIndexAtCharIndex:?];
  if (length)
  {
    v7 = [(TSWPStorage *)self paragraphIndexAtCharIndex:length + location - 1]- v6 + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v6;
  result.length = v7;
  result.location = v8;
  return result;
}

- (BOOL)paragraphHasListLabelAtCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self listStyleAtCharIndex:a3 effectiveRange:0];
  if (v5)
  {
    LOBYTE(v5) = [v5 labelTypeForLevel:{-[TSWPStorage paragraphLevelAtCharIndex:](self, "paragraphLevelAtCharIndex:", a3)}] != 0;
  }

  return v5;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self paragraphIndexAtCharIndex:a3];

  return [(TSWPStorage *)self isWritingDirectionRightToLeftForParagraphAtParIndex:v4];
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self writingDirectionForParagraphAtParIndex:a3];
  if (v4 >= 2)
  {
    if (v4 == -1)
    {
      writingDirectionCache = self->_writingDirectionCache;
      if (writingDirectionCache == -1)
      {
        documentRoot = self->_documentRoot;
        v4 = !documentRoot && (v9 = [MEMORY[0x277D6C290] currentHandler], v10 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSWPStorage isWritingDirectionRightToLeftForParagraphAtParIndex:]"), objc_msgSend(v9, "handleFailureInFunction:file:lineNumber:description:", v10, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3326, @"_documentRoot should never be nil at this point"), (documentRoot = self->_documentRoot) == 0) || -[TSKDocumentRoot isDirectionRightToLeft](documentRoot, "isDirectionRightToLeft");
        self->_writingDirectionCache = v4;
      }

      else
      {
        LOBYTE(v4) = writingDirectionCache == 1;
      }
    }

    else
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage isWritingDirectionRightToLeftForParagraphAtParIndex:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3343, @"Unknown writing direction."}];
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)isWritingDirectionRightToLeftForListAtParIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self listStyleAtParIndex:a3 effectiveRange:0];
  if (v5)
  {
    v6 = v5;
    if ([v5 containsProperty:44])
    {
      v7 = [v6 intValueForProperty:44];
      if (v7 != -1)
      {
        return v7 != 0;
      }
    }
  }

  v9 = [(TSWPStorage *)self firstParIndexInListAtParIndex:a3];

  return [(TSWPStorage *)self isWritingDirectionRightToLeftForParagraphAtParIndex:v9];
}

- (int)writingDirectionForParagraphAtCharIndex:(unint64_t)a3
{
  result = [-[TSWPStorage paragraphStyleAtCharIndex:effectiveRange:](self paragraphStyleAtCharIndex:a3 effectiveRange:{0), "intValueForProperty:", 44}];
  if (result == -1)
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:18];
    if (!v6)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage writingDirectionForParagraphAtCharIndex:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3383, @"writingDirectionForParagraphAtParIndex: no paragraph table."}];
      return [(TSKDocumentRoot *)self->_documentRoot isDirectionRightToLeft];
    }

    v7 = v6;
    if (!v6->var2)
    {
      return [(TSKDocumentRoot *)self->_documentRoot isDirectionRightToLeft];
    }

    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, a3);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage writingDirectionForParagraphAtCharIndex:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3387, @"writingDirectionForParagraphAtParIndex: no paragraph table."}];
    }

    result = *(v7->var4 + 4 * v8 + 2);
    if (result == -1)
    {
      return [(TSKDocumentRoot *)self->_documentRoot isDirectionRightToLeft];
    }
  }

  return result;
}

- (int)writingDirectionForParagraphAtParIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self textRangeForParagraphAtIndex:a3];

  return [(TSWPStorage *)self writingDirectionForParagraphAtCharIndex:v4];
}

- (void)setParagraphWritingDirection:(int)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v6 = *&a3;
  v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:a4.location, a4.length];
  if (v9)
  {

    [(TSWPStorage *)self applyWritingDirection:v6 toParagraphIndexRange:v8 forKind:v9 undoTransaction:18, a5];
  }
}

- (void)setLanguage:(id)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a4.length;
  location = a4.location;
  v10 = [(TSWPStorage *)self attributeArrayForKind:13];
  if (!v10 || (v11 = v10, v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location), v12 == v11->var2) || (v13 = *(v11->var4 + 2 * v12 + 1), v14 = TSWPAttributeArray::rangeForAttributeIndex(v11, v12), v14 > location) || v14 + v15 < location + length || v13 != a3 && (!a3 || !v13 || ([v13 isEqualToString:a3] & 1) == 0))
  {

    [(TSWPStorage *)self applyObject:a3 toCharRange:location forKind:length dolcContext:13 undoTransaction:0, a5];
  }
}

- (id)bestCharacterLanguageForTextRange:(_NSRange)a3
{
  range2 = a3.length;
  location = a3.location;
  v47 = *MEMORY[0x277D85DE8];
  result = [(TSWPStorage *)self attributeArrayForKind:13];
  if (result)
  {
    v6 = result;
    v46[1] = xmmword_26CA66A30;
    v46[0] = xmmword_26CA66A30;
    v46[3] = xmmword_26CA66A30;
    v46[2] = xmmword_26CA66A30;
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, location);
    var2 = v6->var2;
    if (v7 < var2)
    {
      v8 = v7;
      v45 = location + range2;
      v39 = v46 + 8;
      v40 = 0;
      v41 = v6;
      v42 = location;
      while (1)
      {
        v48.location = TSWPAttributeArray::rangeForAttributeIndex(v6, v8);
        v9 = v48.location;
        length = v48.length;
        v11 = *(v6->var4 + 2 * v8 + 1);
        v49.location = location;
        v49.length = range2;
        v12 = NSIntersectionRange(v48, v49).length;
        if (v11)
        {
          goto LABEL_5;
        }

        v20 = v9 + length >= v45 ? v45 : v9 + length;
        if (v9 < v20)
        {
          break;
        }

LABEL_29:
        v6 = v41;
        location = v42;
        if (++v8 >= var2 || v9 + length >= v45)
        {
          goto LABEL_31;
        }
      }

      v21 = v9;
      while (1)
      {
        v22 = [(TSWPStorage *)self characterAtIndex:v21, v39];
        if (!IsSpecialCharacter(v22))
        {
          v23 = IsParagraphBreakingCharacter(v22);
          if (v22 != 8232 && !v23)
          {
            break;
          }
        }

        if (v20 == ++v21)
        {
          goto LABEL_29;
        }
      }

LABEL_5:
      if (v12)
      {
        v13 = 0;
        v14 = v39;
        v15 = v39;
        do
        {
          v17 = *v15;
          v15 += 16;
          v16 = v17;
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = *(v14 - 1);
            if (v18 == v11 || ([v18 isEqualToString:v11] & 1) != 0)
            {
              v19 = v40;
              if (v40 <= v13)
              {
                v19 = v13 + 1;
              }

              goto LABEL_25;
            }
          }

          ++v13;
          v14 = v15;
        }

        while (v13 != 4);
        v13 = v40;
        if (v40 > 3)
        {
          return 0;
        }

        v19 = v40 + 1;
        v16 = *(&v46[v40] + 1);
LABEL_25:
        v24 = &v46[v13];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = v16;
        }

        *v24 = v11;
        v24[1] = v25 + v12;
        v40 = v19;
      }

      goto LABEL_29;
    }

LABEL_31:
    v26 = 0;
    v27 = 0;
    v28 = v46 + 1;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v32 = *v28;
      v28 += 2;
      v31 = v32;
      v34 = v29 == 0x7FFFFFFFFFFFFFFFLL || v31 > v29;
      v35 = !v34;
      if (v34)
      {
        v36 = v26;
      }

      else
      {
        v36 = v30;
      }

      if (v35)
      {
        v37 = v29;
      }

      else
      {
        v37 = v31;
      }

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = v36;
        ++v27;
        v29 = v37;
      }

      ++v26;
    }

    while (v26 != 4);
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v38 = &v46[v30];
    if (v27 != 1 && v38[1] / range2 < 0.75)
    {
      return 0;
    }

    else
    {
      return *v38;
    }
  }

  return result;
}

- (id)languageForTextRange:(_NSRange)a3 useStringTokenizer:(BOOL)a4 useCreationLanguage:(BOOL)a5
{
  v5 = a5;
  v33 = a4;
  length = a3.length;
  location = a3.location;
  v9 = [(TSWPStorage *)self paragraphIndexAtCharIndex:?];
  v34 = location;
  v10 = location + length;
  v11 = [(TSWPStorage *)self paragraphIndexAtCharIndex:location + length];
  if (v11 > v9)
  {
    v11 -= v10 == [(TSWPStorage *)self textRangeForParagraphAtIndex:v11];
  }

  v12 = MEMORY[0x277D6C268];
  if (v9 > v11)
  {
LABEL_4:
    v13 = 0;
    v14 = v34;
LABEL_5:
    if (v14 <= v10)
    {
      v31 = length;
      v32 = v5;
      v15 = 0;
      v16 = v14;
      v17 = *v12;
      v18 = v12[1];
      while (1)
      {
        v35 = *v12;
        v19 = [-[TSWPStorage characterStyleAtCharIndex:effectiveRange:](self characterStyleAtCharIndex:v16 effectiveRange:{&v35), "valueForProperty:", 39}];
        if (v35.location >= v10)
        {
          break;
        }

        v20 = v19;
        if (!v19 || v19 == [MEMORY[0x277CBEB68] null])
        {
          goto LABEL_43;
        }

        if (v15)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_43;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![(__CFString *)v15 isEqualToString:v20])
          {
            goto LABEL_43;
          }
        }

        else
        {
          v15 = v20;
        }

        v21 = v35;
        if (v35.length + v35.location <= v16)
        {
          ++v16;
        }

        else
        {
          v16 = v35.length + v35.location;
        }

        if (v17 != *v12 || v18 != v12[1])
        {
          v36.location = v17;
          v36.length = v18;
          v21 = NSUnionRange(v36, v21);
        }

        v17 = v21.location;
        v18 = v21.length;
        if (v16 > v10)
        {
          goto LABEL_38;
        }
      }

      v21.location = v17;
      v21.length = v18;
      if (!v15)
      {
LABEL_43:
        v5 = v32;
        length = v31;
        v14 = v34;
        goto LABEL_44;
      }

LABEL_38:
      v14 = v34;
      v5 = v32;
      length = v31;
      if (v21.location == v34 && v21.length == v31 || v21.location <= v34 && v21.location + v21.length >= v10)
      {
        v13 = v15;
      }
    }

    goto LABEL_44;
  }

  v13 = 0;
  do
  {
    v23 = [-[TSWPStorage paragraphStyleAtParIndex:effectiveRange:](self paragraphStyleAtParIndex:v9 effectiveRange:{0), "valueForProperty:", 39}];
    v24 = v23;
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_4;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![(__CFString *)v13 isEqualToString:v24])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v23;
    }

    ++v9;
  }

  while (v9 <= v11);
  v14 = v34;
  if (!v13 || v13 == [MEMORY[0x277CBEB68] null])
  {
    goto LABEL_5;
  }

LABEL_44:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)v13 length]>= 2 && v13)
  {
    return v13;
  }

  if (length == v12[1] && v14 == *v12 || length == 0)
  {
    v13 = 0;
  }

  else
  {
    v27 = [(TSWPStorage *)self bestCharacterLanguageForTextRange:v14, length];
    v13 = v27;
    if (v27)
    {
      goto LABEL_65;
    }
  }

  if (!v33 || ((v13 = 0, length == v12[1]) ? (v28 = v14 == *v12) : (v28 = 0), v28 || !length))
  {
LABEL_65:
    if (v13)
    {
      return v13;
    }

    goto LABEL_66;
  }

  v37.location = v14;
  v37.length = length;
  v29 = CFStringTokenizerCopyBestStringLanguage(self->_string, v37);
  if (v29)
  {
    v13 = v29;
    goto LABEL_65;
  }

  v13 = 0;
LABEL_66:
  if (v5)
  {
    return [(TSKDocumentRoot *)self->_documentRoot creationLanguage];
  }

  return v13;
}

- (id)languageAtParIndex:(unint64_t)a3 useStringTokenizer:(BOOL)a4 useCreationLanguage:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(TSWPStorage *)self textRangeForParagraphAtIndex:a3];
  v10 = (__PAIR128__(v9, v8 + v9) - [(TSWPStorage *)self length]) >> 64;

  return [(TSWPStorage *)self languageForTextRange:v8 useStringTokenizer:v10 useCreationLanguage:v6, v5];
}

- (id)dictationAndAutocorrectionKeyAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  if (a4)
  {
    a4->location = 0;
    a4->length = 0;
  }

  result = [(TSWPStorage *)self attributeArrayForKind:14];
  if (result)
  {
    v7 = result;
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3);
    if (v8 >= v7->var2)
    {
      return 0;
    }

    else
    {
      v9 = v8;
      if (a4)
      {
        a4->location = TSWPAttributeArray::rangeForAttributeIndex(v7, v8);
        a4->length = v10;
      }

      return *(v7->var4 + 2 * v9 + 1);
    }
  }

  return result;
}

- (void)addAllDictationAndAutocorrectionKeyRangesInRange:(_NSRange)a3 toRanges:(void *)a4
{
  length = a3.length;
  location = a3.location;
  v7 = [(TSWPStorage *)self attributeArrayForKind:14];
  if (v7)
  {
    v8 = v7;
    v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, location);
    var2 = v8->var2;
    if (v9 < var2)
    {
      v11 = v9;
      v29 = location;
      v30 = location + length;
      v12 = (16 * v9) | 8;
      v28 = length;
      do
      {
        v31.location = TSWPAttributeArray::rangeForAttributeIndex(v8, v11);
        v13 = v31.location;
        v14 = v31.length;
        v15 = *(v8->var4 + v12);
        v32.location = location;
        v32.length = length;
        if (NSIntersectionRange(v31, v32).length && v15)
        {
          v17 = *(a4 + 1);
          v16 = *(a4 + 2);
          if (v17 >= v16)
          {
            v19 = *a4;
            v20 = v17 - *a4;
            v21 = v20 >> 4;
            v22 = (v20 >> 4) + 1;
            if (v22 >> 60)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v23 = v16 - v19;
            if (v23 >> 3 > v22)
            {
              v22 = v23 >> 3;
            }

            v24 = v23 >= 0x7FFFFFFFFFFFFFF0;
            v25 = 0xFFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v25 = v22;
            }

            if (v25)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a4, v25);
            }

            v26 = (16 * v21);
            *v26 = v13;
            v26[1] = v14;
            v18 = 16 * v21 + 16;
            memcpy(0, v19, v20);
            v27 = *a4;
            *a4 = 0;
            *(a4 + 1) = v18;
            *(a4 + 2) = 0;
            if (v27)
            {
              operator delete(v27);
            }

            length = v28;
          }

          else
          {
            *v17 = v13;
            v17[1] = v14;
            v18 = (v17 + 2);
          }

          *(a4 + 1) = v18;
          location = v29;
        }

        if (++v11 >= var2)
        {
          break;
        }

        v12 += 16;
      }

      while (v13 + v14 < v30);
    }
  }
}

- (void)setDictationAndAutocorrection:(id)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a4.length;
  location = a4.location;
  v10 = [(TSWPStorage *)self attributeArrayForKind:14];
  if (!v10 || (v11 = v10, v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location), v12 == v11->var2) || (v13 = *(v11->var4 + 2 * v12 + 1), v14 = TSWPAttributeArray::rangeForAttributeIndex(v11, v12), v14 > location) || v14 + v15 < location + length || v13 != a3 && (!a3 || !v13 || ([v13 isEqualToString:a3] & 1) == 0))
  {

    [(TSWPStorage *)self applyObject:a3 toCharRange:location forKind:length dolcContext:14 undoTransaction:0, a5];
  }
}

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphStyleAtParIndex:effectiveRange:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3800, @"paragraphStyleAtParIndex: no paragraph table."}];
  }

  if (a4)
  {
    a4->location = [(TSWPStorage *)self textRangeForParagraphAtIndex:a3];
    a4->length = v10;
  }

  if (v7 && v7->var2 > a3)
  {
    return *(v7->var4 + 2 * a3 + 1);
  }

  else
  {
    return 0;
  }
}

- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(TSWPStorage *)self paragraphIndexAtCharIndex:a3];

  return [(TSWPStorage *)self paragraphStyleAtParIndex:v6 effectiveRange:a4];
}

- (unint64_t)findNextParagraphStyleChange:(unint64_t)a3 maxCharIndex:(unint64_t)a4
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v6)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage findNextParagraphStyleChange:maxCharIndex:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3835, @"findNextParagraphStyleChange: no paragraph table."}];
  }

  v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, a3);
  var2 = v6->var2;
  v11 = *(v6->var4 + 2 * v9 + 1);
  v12 = 16 * v9 + 24;
  do
  {
    if (++v9 >= var2 || TSWPAttributeArray::charIndexForAttributeIndex(v6, v9) >= a4)
    {
      return a4;
    }

    v13 = *(v6->var4 + v12);
    v12 += 16;
  }

  while (v13 == v11);

  return TSWPAttributeArray::charIndexForAttributeIndex(v6, v9);
}

- (void)enumerateParagraphsIntersectingTextRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v8)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage enumerateParagraphsIntersectingTextRange:usingBlock:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3867, @"enumerateParagraphsIntersectingTextRange:usingBlock: no paragraph table."}];
  }

  v18.location = location;
  v18.length = length;
  v11 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(v8, v18);
  v17 = 0;
  v13 = v11 + v12;
  if (v11 < v11 + v12)
  {
    v14 = v11;
    do
    {
      v15 = [(TSWPStorage *)self paragraphStyleAtParIndex:v14 effectiveRange:v16];
      (*(a4 + 2))(a4, v14, v16[0], v16[1], v15, &v17);
      if (v17)
      {
        break;
      }

      ++v14;
    }

    while (v14 < v13);
  }
}

- (unint64_t)listStyleCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:2];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)listStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, a3);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = *(v7->var4 + 2 * v8 + 1);
  if (a4)
  {
    a4->location = TSWPAttributeArray::rangeForAttributeIndex(v7, v8);
    a4->length = v10;
  }

  return v9;
}

- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(TSWPStorage *)self textRangeForParagraphAtIndex:a3];
  if (a4)
  {
    a4->location = v6;
    a4->length = v7;
  }

  return [(TSWPStorage *)self listStyleAtCharIndex:v6 effectiveRange:0];
}

- (unint64_t)listNumberForParagraphIndex:(unint64_t)a3 numberingData:(id *)a4
{
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtParIndex:a3 styleProvider:0];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v6 = [(TSWPStorage *)self listNumberForParagraphEnumerator:&v8 numberingData:a4];
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v8);
  return v6;
}

- (unint64_t)listNumberForParagraphEnumerator:(const TSWPParagraphEnumerator *)a3 numberingData:(id *)a4
{
  v7 = TSWPParagraphEnumerator::paragraphListStyle(a3);
  v8 = TSWPParagraphEnumerator::paragraphLevel(a3);
  if (!v7)
  {
    [0 baseStyleForTopicNumbers];
    v9 = 0;
    goto LABEL_6;
  }

  v9 = [v7 labelTypeForLevel:v8];
  v10 = [v7 baseStyleForTopicNumbers];
  if (v9 != 3)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_29;
  }

  v11 = v10;
  v12 = TSWPParagraphEnumerator::paragraphListStart(a3);
  if (v12)
  {
    v13 = v12;
    goto LABEL_28;
  }

  TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v28, a3);
  v26 = 0;
  for (i = 1; ; i = v13 + 1)
  {
    if (TSWPParagraphEnumerator::isFirstParagraph(&v28))
    {
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v28);
      v13 = i + (v26 & 1);
      goto LABEL_28;
    }

    TSWPParagraphEnumerator::operator--(&v28);
    v15 = TSWPParagraphEnumerator::paragraphListStyle(&v28);
    v16 = TSWPParagraphEnumerator::paragraphLevel(&v28);
    if (v15)
    {
      v17 = [v15 labelTypeForLevel:v16];
    }

    else
    {
      v17 = 0;
    }

    v18 = TSWPParagraphEnumerator::paragraphTextRange(&v28);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__TSWPStorage_listNumberForParagraphEnumerator_numberingData___block_invoke;
    v27[3] = &__block_descriptor_48_e26_B16__0___TSWPTextSource__8l;
    v27[4] = v18;
    v27[5] = v19;
    v20 = __62__TSWPStorage_listNumberForParagraphEnumerator_numberingData___block_invoke(v27, self);
    if (v17 == 3)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) != 0 || (v22 = [v15 baseStyleForTopicNumbers], v22 != objc_msgSend(v11, "baseStyleForTopicNumbers")))
    {
      v13 = i - 1;
      continue;
    }

    if (v16 < v8)
    {
      break;
    }

    if (v16 > v8)
    {
      v13 = i - 1;
      v26 = 1;
    }

    else
    {
      v23 = TSWPParagraphEnumerator::paragraphListStart(&v28);
      v13 = v23 + i;
      if (v23)
      {
        goto LABEL_27;
      }

      v26 = 0;
    }
  }

  v13 = i + (v26 & 1);
LABEL_27:
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v28);
LABEL_28:
  v9 = 3;
LABEL_29:
  v24 = TSWPParagraphEnumerator::paragraphListStart(a3);
  if (a4)
  {
    a4->var0 = v9;
    a4->var1 = v8;
    a4->var2 = v24 == 0;
  }

  return v13;
}

uint64_t __62__TSWPStorage_listNumberForParagraphEnumerator_numberingData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 charIndexMappedFromStorage:*(a1 + 32)];
  if (![a2 length] || objc_msgSend(a2, "characterAtIndex:", v3) != 65532)
  {
    return 0;
  }

  v4 = [a2 attachmentAtCharIndex:v3];

  return [v4 isPartitioned];
}

- (void)setListStart:(unint64_t)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:a4.location, a4.length];
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (HIDWORD(a3))
    {
      [TSWPStorage setListStart:forCharRange:undoTransaction:];
      a3 = 0xFFFFFFFFLL;
    }

    [(TSWPStorage *)self applyDataValue:a3 toParagraphIndexRange:v10 forKind:v11 undoTransaction:11, a5];
  }
}

- (unint64_t)listStartAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:11];
  if (v4)
  {
    v5 = v4;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v4->var2)
    {
      v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage listStartAtCharIndex:]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4086, @"paragraphStartAtCharIndex: no paragraph table."}];
      }

      return *(v5->var4 + 4 * v7 + 2);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage listStartAtCharIndex:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4081, @"paragraphLevelAtCharIndex: no paragraph table."}];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)paragraphFlags:(unsigned __int16 *)a3 andLevel:(unint64_t *)a4 atCharIndex:(unint64_t)a5
{
  v8 = [(TSWPStorage *)self attributeArrayForKind:1];
  if (v8)
  {
    v9 = v8;
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, a5);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphFlags:andLevel:atCharIndex:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4107, @"paragraphFlagsAtCharIndex: no paragraph table."}];
    }

    v13 = v9->var4 + 16 * v10;
    v14 = *(v13 + 8);
    v15 = *(v13 + 10);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (a3)
    {
LABEL_5:
      *a3 = v15;
    }
  }

  if (a4)
  {
    *a4 = v14;
  }
}

- (unsigned)paragraphFlagsAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:1];
  if (v4)
  {
    v5 = v4;
    v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphFlagsAtCharIndex:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4128, @"paragraphFlagsAtCharIndex: no paragraph table."}];
    }

    return *(v5->var4 + 8 * v6 + 5);
  }

  else
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphFlagsAtCharIndex:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4123, @"paragraphFlagsAtCharIndex: no paragraph table."}];
    return 0;
  }
}

- (void)setParagraphFlags:(unsigned __int16)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v10 = [(TSWPStorage *)self paragraphLevelAtCharIndex:a4.location];

  [(TSWPStorage *)self applyFlags:v8 level:v10 toParagraphsInCharRange:location undoTransaction:length, a5];
}

- (unint64_t)paragraphLevelAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:1];
  if (!v4)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphLevelAtCharIndex:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4146, @"paragraphLevelAtCharIndex: no paragraph table."}];
    return 0;
  }

  v5 = v4;
  if (!v4->var2)
  {
    return 0;
  }

  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphLevelAtCharIndex:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4151, @"paragraphFlagsAtCharIndex: no paragraph table."}];
  }

  return *(v5->var4 + 8 * v6 + 4);
}

- (unint64_t)paragraphLevelAtParIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self textRangeForParagraphAtIndex:a3];

  return [(TSWPStorage *)self paragraphLevelAtCharIndex:v4];
}

- (void)setParagraphLevel:(unint64_t)a3 forCharRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a4.length;
  location = a4.location;
  v10 = [(TSWPStorage *)self paragraphFlagsAtCharIndex:a4.location];

  [(TSWPStorage *)self applyFlags:v10 level:a3 toParagraphsInCharRange:location undoTransaction:length, a5];
}

- (void)setParagraphLevel:(unint64_t)a3 atParIndex:(unint64_t)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v8 = [(TSWPStorage *)self textRangeForParagraphAtIndex:a4];
  v10 = v9;
  v11 = [(TSWPStorage *)self paragraphFlagsAtCharIndex:v8];

  [(TSWPStorage *)self applyFlags:v11 level:a3 toParagraphsInCharRange:v8 undoTransaction:v10, a5];
}

- (unint64_t)characterStyleAttributeCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:3];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)characterStyleAtCharIndex:(unint64_t)a3 left:(BOOL)a4 effectiveRange:(_NSRange *)a5
{
  v6 = a4;
  v7 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage characterStyleAtCharIndex:left:effectiveRange:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4203, @"charIndex has an uninitialized value"}];
  }

  v11 = [(TSWPStorage *)self attributeArrayForKind:3];
  if (!v11 || (v12 = v11, !v11->var2))
  {
    if (a5)
    {
      v15 = [(TSWPStorage *)self range];
      goto LABEL_13;
    }

    return 0;
  }

  if (v6)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    --v7;
  }

  v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v11, v7);
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = *(v12->var4 + 2 * v13 + 1);
    if (!a5)
    {
      return v16;
    }

    v15 = TSWPAttributeArray::rangeForAttributeIndex(v12, v13);
    goto LABEL_14;
  }

LABEL_9:
  if (!a5)
  {
    return 0;
  }

  v14 = TSWPAttributeArray::charIndexForAttributeIndex(v12, 0);
  v15 = 0;
LABEL_13:
  v16 = 0;
LABEL_14:
  a5->location = v15;
  a5->length = v14;
  return v16;
}

- (id)valueForProperty:(int)a3 atCharIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v7 = *&a3;
  v9 = [(TSWPStorage *)self characterStyleAtCharIndex:a4 left:0 effectiveRange:?];
  if (v9)
  {
    v10 = v9;
    if ([v9 definesProperty:v7])
    {
      v11 = v10;
LABEL_6:
      v12 = [v11 boxedValueForProperty:v7];
LABEL_9:
      v13 = v12;
      goto LABEL_10;
    }
  }

  if ([+[TSWPParagraphStyle properties](TSWPParagraphStyle "properties")])
  {
    v11 = [(TSWPStorage *)self paragraphStyleAtCharIndex:a4 effectiveRange:a5];
    goto LABEL_6;
  }

  if ([+[TSWPColumnStyle properties](TSWPColumnStyle "properties")])
  {
    v12 = [-[TSWPStorage columnStyleAtCharIndex:effectiveRange:](self columnStyleAtCharIndex:a4 effectiveRange:{a5), "valueForProperty:", v7}];
    goto LABEL_9;
  }

  v15 = [MEMORY[0x277D6C290] currentHandler];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage valueForProperty:atCharIndex:effectiveRange:]"];
  [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4268, @"Bad property sent to storage: %@", String(v7)}];
  v13 = 0;
LABEL_10:
  if (v13 == [MEMORY[0x277CBEB68] null])
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

- (unint64_t)columnStyleCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:9];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)a3
{
  LODWORD(v5) = [(TSWPStorage *)self supportsColumnStyles];
  if (v5)
  {
    v5 = [(TSWPStorage *)self attributeArrayForKind:9];
    if (v5)
    {
      LOBYTE(v5) = TSWPAttributeArray::exactAttributeIndexForCharIndex(v5, a3 + 1) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self characterAtIndex:?];
  if ((v5 - 4) < 0xC && ((0x907u >> (v5 - 4)) & 1) != 0 || (v6 = IsParagraphBreakingCharacter(v5)) != 0 && ([(TSWPStorage *)self hasColumnStyleForParagraphBreakAtCharIndex:a3]|| (v6 = [(TSWPStorage *)self hasSectionForParagraphBreakAtCharIndex:a3]) != 0))
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)columnStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = [(TSWPStorage *)self attributeArrayForKind:9];
  if (!v7)
  {
    return 0;
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, a3);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(TSWPStorage *)self columnStyleAtColumnStyleIndex:v8 effectiveRange:a4];
}

- (id)columnStyleAtColumnStyleIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  result = [(TSWPStorage *)self attributeArrayForKind:9];
  if (result)
  {
    v7 = result;
    var2 = *(result + 2);
    if (var2 <= a3)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage columnStyleAtColumnStyleIndex:effectiveRange:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4350, @"Bad columnStyleIndex"}];
      var2 = v7->var2;
    }

    if (var2 <= a3)
    {
      return 0;
    }

    else
    {
      if (a4)
      {
        a4->location = TSWPAttributeArray::rangeForAttributeIndex(v7, a3);
        a4->length = v11;
      }

      return *(v7->var4 + 2 * a3 + 1);
    }
  }

  return result;
}

- (void)invalidateForStyle:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [&unk_287DDCC18 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&unk_287DDCC18);
        }

        v9 = -[TSWPStorage attributeArrayForKind:](self, "attributeArrayForKind:", [*(*(&v11 + 1) + 8 * v8) unsignedIntegerValue]);
        if (v9)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __34__TSWPStorage_invalidateForStyle___block_invoke;
          v10[3] = &unk_279D49E48;
          v10[4] = a3;
          v10[5] = self;
          TSWPAttributeArray::enumerateObjectAttributes(v9, v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [&unk_287DDCC18 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

uint64_t __34__TSWPStorage_invalidateForStyle___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 32) == a2 || (result = [objc_msgSend(a2 "referencedStyles")], result))
  {
    v9 = *(a1 + 40);

    return [v9 styleDidChangeInRange:{a4, a5}];
  }

  return result;
}

- (unint64_t)sectionCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:8];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (BOOL)hasSectionForParagraphBreakAtCharIndex:(unint64_t)a3
{
  if (self->_WPKind)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(TSWPStorage *)self attributeArrayForKind:8];
    if (v3)
    {
      LOBYTE(v3) = TSWPAttributeArray::exactAttributeIndexForCharIndex(v3, a3 + 1) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (id)sectionAtSectionIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  result = [(TSWPStorage *)self attributeArrayForKind:8];
  if (result)
  {
    v7 = result;
    if (a4)
    {
      a4->location = TSWPAttributeArray::rangeForAttributeIndex(result, a3);
      a4->length = v8;
    }

    return *(v7[4] + 16 * a3 + 8);
  }

  return result;
}

- (void)replaceSectionAtSectionIndex:(unint64_t)a3 withSection:(id)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v10 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (v10 && v10->var2 > a3)
  {

    TSWPAttributeArray::replaceObjectForAttributeIndex(v10, a4, a3, a5, a6);
  }
}

- (unint64_t)sectionIndexForCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
}

- (unint64_t)sectionIndexForSection:(id)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::findObject(v4, a3, 0);
}

- (id)sectionAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (!v7)
  {
    return 0;
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, a3);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(TSWPStorage *)self sectionAtSectionIndex:v8 effectiveRange:a4];
}

- (_NSRange)insertSection:(id)a3 atCharIndex:(unint64_t)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6 changeSession:(id)a7
{
  [TSWPStorage splitSmartFieldAtCharIndex:"splitSmartFieldAtCharIndex:lengthToInsert:dolcContext:undoTransaction:" lengthToInsert:a4 dolcContext:1 undoTransaction:?];
  [(TSWPStorage *)self insertSpecialCharacter:4 object:a3 kind:8 range:a4 dolcContext:0 undoTransaction:a5 changeSession:a6, a7];
  v13 = [(TSWPStorage *)self attributeArrayForKind:8 withCreate:1 undoTransaction:a6];
  if (!v13)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage insertSection:atCharIndex:dolcContext:undoTransaction:changeSession:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4520, @"insertSection: bad attribute array."}];
  }

  v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, a4 + 1);
  v17 = v16;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || *(v13->var4 + 2 * v16 + 1) != a3)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage insertSection:atCharIndex:dolcContext:undoTransaction:changeSession:]"];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4523, @"insertSection: bad insertion object."}];
  }

  v20 = TSWPAttributeArray::rangeForAttributeIndex(v13, v17);
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)appendSection:(id)a3 charIndex:(unint64_t)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v9 = [(TSWPStorage *)self length]- a4;

  [(TSWPStorage *)self applyObject:a3 toParagraphsInCharRange:a4 forKind:v9 undoTransaction:8, a5];
}

- (unint64_t)footnoteCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:5];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (unint64_t)footnoteIndexForCharIndex:(unint64_t)a3
{
  result = [(TSWPStorage *)self attributeArrayForKind:5];
  if (result)
  {
    v5 = result;
    if (*(result + 16) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3), v6 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v7 = v6;
      if (TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == a3)
      {
        return v7;
      }

      else
      {
        return v7 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v5 || (v6 = v5, !v5->var2) || (v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, a3), v7 == 0x7FFFFFFFFFFFFFFFLL) || (v8 = v7, TSWPAttributeArray::charIndexForAttributeIndex(v6, v7) != a3) || (result = *(v6->var4 + 2 * v8 + 1)) == 0)
  {
    if ([(TSWPStorage *)self wpKind]!= 2)
    {
      return 0;
    }

    result = [(TSWPStorage *)self attributeArrayForKind:4];
    if (!result)
    {
      return result;
    }

    v10 = result;
    if (*(result + 2) && (v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3), v11 != 0x7FFFFFFFFFFFFFFFLL) && (v12 = v11, TSWPAttributeArray::charIndexForAttributeIndex(v10, v11) == a3))
    {
      v13 = *(v10->var4 + 2 * v12 + 1);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)footnoteMarkAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!v4->var2)
  {
    return 0;
  }

  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) != a3)
  {
    return 0;
  }

  objc_opt_class();

  return TSUDynamicCast();
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)a3
{
  result = [(TSWPStorage *)self attributeArrayForKind:5];
  if (result)
  {
    v5 = result;
    if (*(result + 2) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == a3))
    {
      return *(v5->var4 + 2 * v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)footnoteAtFootnoteIndex:(unint64_t)a3 outCharIndex:(unint64_t *)a4
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v6 || v6->var2 <= a3)
  {
    return 0;
  }

  v7 = *(v6->var4 + 2 * a3 + 1);
  if (a4)
  {
    *a4 = TSWPAttributeArray::charIndexForAttributeIndex(v6, a3);
  }

  return v7;
}

- (_NSRange)footnoteRangeForTextRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (v5)
  {
    v6.location = location;
    v6.length = length;

    v5 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  result.length = v7;
  result.location = v5;
  return result;
}

- (unint64_t)autoNumberFootnoteCountForRange:(_NSRange)a3
{
  v4 = [(TSWPStorage *)self footnoteRangeForTextRange:a3.location, a3.length];
  if (v4 >= v4 + v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = 0;
  do
  {
    if (![-[TSWPStorage footnoteAtFootnoteIndex:outCharIndex:](self footnoteAtFootnoteIndex:v6 outCharIndex:{0), "customMarkString"}])
    {
      ++v8;
    }

    ++v6;
    --v7;
  }

  while (v7);
  return v8;
}

- (unint64_t)footnoteIndexForFootnote:(id)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::findObject(v4, a3, 0);
}

- (unint64_t)footnoteIndexForFootnoteStorage:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteIndexForFootnoteStorage:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4706, @"invalid nil value for '%s'", "footnoteStorage"}];
  }

  if ([a3 wpKind] != 2)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteIndexForFootnoteStorage:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4707, @"This isn't a footnote storage"}];
  }

  objc_opt_class();
  [a3 owningAttachment];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteIndexForFootnoteStorage:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4710, @"invalid nil value for '%s'", "footnoteAttachment"}];
  }

  return [(TSWPStorage *)self footnoteIndexForFootnote:v9];
}

- (id)footnoteStorages
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(TSWPStorage *)self footnoteCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [-[TSWPStorage footnoteAtFootnoteIndex:outCharIndex:](self footnoteAtFootnoteIndex:i outCharIndex:{0), "containedStorage"}];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteStorages]"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4726, @"invalid nil value for '%s'", "footnoteStorage"}];
      }
    }
  }

  return v3;
}

- (unint64_t)findCharIndexForFootnoteAttachment:(id)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  Object = TSWPAttributeArray::findObject(v4, a3, 0);
  if (Object == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::charIndexForAttributeIndex(v5, Object);
}

- (void)invalidateFootnoteAttachmentCharIndexes
{
  v3 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (v3)
  {
    v4 = v3;
    var2 = v3->var2;
    if (var2)
    {
      for (i = 0; i != var2; ++i)
      {
        [(TSWPStorageBroadcaster *)self->_broadcaster broadcastStorage:self didChangeRange:TSWPAttributeArray::charIndexForAttributeIndex(v4 delta:i) broadcastKind:1, 0, 1];
      }
    }
  }
}

- (void)invalidatePageCountAttachmentCharIndexes:(BOOL)a3
{
  v3 = a3;
  v5 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (v5)
  {
    v6 = v5;
    var2 = v5->var2;
    if (var2)
    {
      for (i = 0; i != var2; ++i)
      {
        v9 = [(TSWPStorage *)self attachmentAtAttachmentIndex:i outCharIndex:0];
        if ([v9 changesWithPageCount])
        {
          v10 = [v9 stringEquivalent];
          if ([v10 length])
          {
            v11 = [v10 intValue];
            if (v11 == 0x7FFFFFFF)
            {
              v12 = [MEMORY[0x277D6C290] currentHandler];
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage invalidatePageCountAttachmentCharIndexes:]"];
              [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4803, @"Invalid page count."}];
            }

            else
            {
              v14 = 10;
              if (v11 >= 11)
              {
                do
                {
                  v14 *= 10;
                }

                while (v14 < v11);
              }

              if (v14 == v11 + !v3)
              {
                [(TSWPStorageBroadcaster *)self->_broadcaster broadcastStorage:self didChangeRange:TSWPAttributeArray::charIndexForAttributeIndex(v6 delta:i) broadcastKind:1, 0, 1];
              }
            }
          }
        }
      }
    }
  }
}

- (void)invalidateCharIndexForAttachment:(id)a3
{
  v4 = [a3 findCharIndex];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    broadcaster = self->_broadcaster;

    [(TSWPStorageBroadcaster *)broadcaster broadcastStorage:self didChangeRange:v5 delta:1 broadcastKind:0, 1];
  }
}

- (_NSRange)insertAttachmentOrFootnote:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  if (isKindOfClass)
  {
    v10 = 14;
  }

  else
  {
    v10 = 65532;
  }

  v11 = [(TSWPStorage *)self insertSpecialCharacter:v10 object:a3 kind:v9 range:location dolcContext:length undoTransaction:0 changeSession:0, 0];
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)insertAttachmentOrFootnote:(id)a3 range:(_NSRange)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6 changeSession:(id)a7
{
  length = a4.length;
  location = a4.location;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  if (isKindOfClass)
  {
    v16 = 14;
  }

  else
  {
    v16 = 65532;
  }

  v17 = [(TSWPStorage *)self insertSpecialCharacter:v16 object:a3 kind:v15 range:location dolcContext:length undoTransaction:a5 changeSession:a6, a7];
  result.length = v18;
  result.location = v17;
  return result;
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)a3
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v5 || (v6 = v5, !v5->var2) || (v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, a3), v7 == 0x7FFFFFFFFFFFFFFFLL) || (v8 = v7, TSWPAttributeArray::charIndexForAttributeIndex(v6, v7) != a3) || (result = *(v6->var4 + 2 * v8 + 1)) == 0)
  {
    result = [(TSWPStorage *)self attributeArrayForKind:5];
    if (result)
    {
      v10 = result;
      if (*(result + 2) && (v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3), v11 != 0x7FFFFFFFFFFFFFFFLL) && (v12 = v11, TSWPAttributeArray::charIndexForAttributeIndex(v10, v11) == a3))
      {
        return *(v10->var4 + 2 * v12 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (unint64_t)findCharacterIndexForContainedInfo:(id)a3
{
  v3 = a3;
  v5 = [a3 parentInfo];
  v6 = v5 != 0;
  if (v5)
  {
    v7 = v5;
    if (v5 != self)
    {
      do
      {
        v8 = [(TSWPStorage *)v7 parentInfo];
        if (v8 == self)
        {
          v3 = v7;
        }

        v6 = v8 != 0;
        if (!v8)
        {
          break;
        }

        v7 = v8;
      }

      while (v8 != self);
    }
  }

  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  if (!v9->var2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = 0;
  for (i = 8; ; i += 16)
  {
    v13 = *(v10->var4 + i);
    if ([v13 isDrawable])
    {
      if ([v13 drawable] == v3)
      {
        break;
      }
    }

    if (++v11 >= v10->var2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return TSWPAttributeArray::charIndexForAttributeIndex(v10, v11);
}

- (unint64_t)attachmentCount
{
  result = [(TSWPStorage *)self attributeArrayForKind:4];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)attachmentAtAttachmentIndex:(unint64_t)a3 outCharIndex:(unint64_t *)a4
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v6 || v6->var2 <= a3)
  {
    return 0;
  }

  v7 = *(v6->var4 + 2 * a3 + 1);
  if (a4)
  {
    *a4 = TSWPAttributeArray::charIndexForAttributeIndex(v6, a3);
  }

  return v7;
}

- (id)attachmentAtCharIndex:(unint64_t)a3
{
  result = [(TSWPStorage *)self attributeArrayForKind:4];
  if (result)
  {
    v5 = result;
    if (*(result + 2) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == a3))
    {
      return *(v5->var4 + 2 * v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)attachmentIndexAtCharIndex:(unint64_t)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4->var2)
  {
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, a3);
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (TSWPAttributeArray::charIndexForAttributeIndex(v5, v7) == a3)
      {
        return v8;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v6;
}

- (void)replaceWithAttachment:(id)a3 forAttachmentIndex:(unint64_t)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  v10 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (v10 && v10->var2 > a4)
  {

    TSWPAttributeArray::replaceObjectForAttributeIndex(v10, a3, a4, a5, a6);
  }
}

- (unint64_t)attachmentIndexForInsertionAtCharIndex:(unint64_t)a3
{
  result = [(TSWPStorage *)self attributeArrayForKind:4];
  if (result)
  {
    v5 = result;
    v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a3);
    if (v6 >= v5->var2 || TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) >= a3)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return v6 + 1;
    }
  }

  return result;
}

- (void)enumerateAttachmentsOfClass:(Class)a3 inTextRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (v9)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__TSWPStorage_enumerateAttachmentsOfClass_inTextRange_usingBlock___block_invoke;
    v10[3] = &unk_279D49E70;
    v10[7] = location;
    v10[8] = length;
    v10[4] = a3;
    v10[5] = a5;
    v10[6] = v11;
    TSWPAttributeArray::enumerateObjectAttributesInCharacterRange(v9, location, length, v10);
    _Block_object_dispose(v11, 8);
  }
}

uint64_t __66__TSWPStorage_enumerateAttachmentsOfClass_inTextRange_usingBlock___block_invoke(uint64_t a1, int a2, int a3, NSRange range2, _BYTE *a5)
{
  v8 = NSIntersectionRange(*(a1 + 56), range2);
  result = v8.location;
  if (v8.length)
  {
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = (*(*(a1 + 40) + 16))();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

- (void)enumerateAttachmentsInTextRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = objc_opt_class();

  [(TSWPStorage *)self enumerateAttachmentsOfClass:v8 inTextRange:location usingBlock:length, a4];
}

- (_NSRange)attachmentIndexRangeForTextRange:(_NSRange)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = __Block_byref_object_copy__24;
  v13 = __Block_byref_object_dispose__24;
  v14 = &unk_26CAC6BB9;
  v15 = xmmword_26CA637B0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__TSWPStorage_attachmentIndexRangeForTextRange___block_invoke;
  v8[3] = &unk_279D49E98;
  v8[4] = &v9;
  [(TSWPStorage *)self enumerateAttachmentsInTextRange:a3.location usingBlock:a3.length, v8];
  v3 = v10;
  v4 = v10[6];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
    v10[6] = 0;
  }

  v5 = v3[7];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

uint64_t __48__TSWPStorage_attachmentIndexRangeForTextRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (*(v3 + 48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
    *(v3 + 48) = a3;
  }

  else
  {
    v4 = *(v3 + 56) + 1;
  }

  *(v3 + 56) = v4;
  return result;
}

- (unint64_t)findCharIndexForAttachment:(id)a3
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  Object = TSWPAttributeArray::findObject(v4, a3, 0);
  if (Object == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::charIndexForAttributeIndex(v5, Object);
}

- (_NSRange)attachmentRangeForCharIndex:(unint64_t)a3 forwards:(BOOL)a4
{
  v4 = [(TSWPStorage *)self attachmentRangeForCharIndex:a3 forwards:a4 attributeKind:4];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)attachmentRangeForCharIndex:(unint64_t)a3 forwards:(BOOL)a4 attributeKind:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  if ((a5 & 0xFFFFFFFE) != 4)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage attachmentRangeForCharIndex:forwards:attributeKind:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5077, @"Bad attribute kind passed into attachmentRangeForCharIndex::: method."}];
  }

  v11 = [(TSWPStorage *)self attributeArrayForKind:v5];
  if (!v11 || (v12 = v11, !v11->var2))
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v11, a3);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6)
    {
      v14 = v12;
      v15 = 0;
LABEL_8:
      v16 = TSWPAttributeArray::charIndexForAttributeIndex(v14, v15);
LABEL_11:
      v17 = v16;
      v18 = a3;
      a3 = v17 - a3;
      goto LABEL_21;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v19 = v13;
  v20 = TSWPAttributeArray::charIndexForAttributeIndex(v12, v13);
  if (v6)
  {
    if (v20 == a3)
    {
      v18 = a3;
      goto LABEL_19;
    }

    v15 = v19 + 1;
    if (v19 + 1 < v12->var2)
    {
      v14 = v12;
      goto LABEL_8;
    }

LABEL_10:
    v16 = [(TSWPStorage *)self length];
    goto LABEL_11;
  }

  if (v20 == a3)
  {
    if (!v19)
    {
      goto LABEL_20;
    }

    v21 = TSWPAttributeArray::charIndexForAttributeIndex(v12, v19 - 1);
    v18 = a3 - 1;
    if (v21 != a3 - 1)
    {
      v18 = v21 + 1;
      a3 -= v21 + 1;
      goto LABEL_21;
    }

LABEL_19:
    a3 = 1;
    goto LABEL_21;
  }

  v18 = TSWPAttributeArray::charIndexForAttributeIndex(v12, v19);
  v23 = a3 - (v18 + 1);
  if (v18 == a3 - 1)
  {
    a3 = 1;
  }

  else
  {
    ++v18;
    a3 = v23;
  }

LABEL_21:
  v22 = a3;
  result.length = v22;
  result.location = v18;
  return result;
}

- (BOOL)anchoredDrawableAttachmentCharacterAtCharIndex:(unint64_t)a3
{
  if ([(TSWPStorage *)self characterAtIndex:?]!= 65532)
  {
    return 0;
  }

  v5 = [(TSWPStorage *)self attachmentAtCharIndex:a3];
  if (![v5 isDrawable])
  {
    return 0;
  }

  return [v5 isAnchored];
}

- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  range2 = 0uLL;
  v6 = [(TSWPStorage *)self smartFieldAtCharIndex:a3.location attributeKind:6 effectiveRange:&range2];
  v7 = location + length;
  v15.location = 0;
  v15.length = 0;
  if (!length)
  {
    v15 = range2;
LABEL_8:
    if (!v6 || ([v6 allowsEditing] & 1) != 0)
    {
      v11.location = location;
      v11.length = length;
      goto LABEL_21;
    }

    v12.location = range2;
    if (range2 >= location || (v12.length = *(&range2 + 1), location >= *(&range2 + 1) + range2))
    {
      v11.location = location;
      v11.length = length;
    }

    else
    {
      v18.location = location;
      v18.length = length;
      v11 = NSUnionRange(v18, v12);
    }

    goto LABEL_18;
  }

  v8 = [(TSWPStorage *)self smartFieldAtCharIndex:v7 - 1 attributeKind:6 effectiveRange:&v15];
  if (v6 == v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (v6 && (v10.location = range2, range2 < location) && (v10.length = *(&range2 + 1), location < *(&range2 + 1) + range2))
  {
    v17.location = location;
    v17.length = length;
    v11 = NSUnionRange(v17, v10);
  }

  else
  {
    v11.location = location;
    v11.length = length;
  }

  if (v9)
  {
LABEL_18:
    v13.location = v15.location;
    if (v15.location < v7)
    {
      v13.length = v15.length;
      if (v7 < v15.length + v15.location)
      {
        v11 = NSUnionRange(v11, v13);
      }
    }
  }

LABEL_21:
  if (v11.length == length && v11.location == location)
  {
    v11.location = location;
  }

  return v11;
}

- (id)extendSelectionToIncludeSmartFields:(id)a3
{
  if (![a3 isValid])
  {
    return a3;
  }

  v5 = [a3 range];
  v7 = v6;
  for (i = [a3 range]; ; i = -[TSWPStorage textRangeForParagraphsInCharRange:](self, "textRangeForParagraphsInCharRange:", v12, v13))
  {
    v10 = [(TSWPStorage *)self p_extendRangeToIncludeSmartFields:i, v9];
    v12 = v10;
    v13 = v11;
    if (v10 == v5 && v11 == v7)
    {
      break;
    }

    v5 = v10;
    v7 = v11;
    if ([a3 type] != 2)
    {
      break;
    }
  }

  if (v5 == [a3 range] && v7 == v14)
  {
    return a3;
  }

  v16 = [a3 copyWithNewType:0 range:{v12, v13}];

  return v16;
}

- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unsigned int)a4 effectiveRange:(_NSRange *)a5
{
  v6 = self->_attributesTable[a4];
  if (!v6)
  {
    if (a5)
    {
      v9 = [(TSWPStorage *)self range];
      goto LABEL_7;
    }

    return 0;
  }

  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(self->_attributesTable[a4], a3);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, 0);
      v9 = 0;
LABEL_7:
      v10 = 0;
LABEL_10:
      a5->location = v9;
      a5->length = v8;
      return v10;
    }

    return 0;
  }

  v10 = *(v6->var4 + 2 * v7 + 1);
  if (a5)
  {
    v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
    goto LABEL_10;
  }

  return v10;
}

- (id)editableSmartFieldAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  result = [(TSWPStorage *)self smartFieldAtCharIndex:a3 attributeKind:6 effectiveRange:0];
  if (result)
  {
    v5 = result;
    if ([result allowsEditing])
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)addSmartField:(id)a3 toRange:(_NSRange)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  length = a4.length;
  location = a4.location;
  v12 = [a3 styleAttributeArrayKind];

  [(TSWPStorage *)self applyObject:a3 toCharRange:location forKind:length dolcContext:v12 undoTransaction:a5, a6];
}

- (void)removeSmartField:(id)a3 fromRange:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = [a3 styleAttributeArrayKind];

  [(TSWPStorage *)self applyObject:0 toCharRange:location forKind:length dolcContext:v9 undoTransaction:0, a5];
}

- (BOOL)hasSmartFields
{
  v4 = [(TSWPStorage *)self range];

  return [(TSWPStorage *)self hasSmartFieldsInRange:v4, v3];
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)a3
{
  if (!self->_attributesTable[6])
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v9, self, a3.location, a3.length, 6);
  v8.location = 0;
  v8.length = 0;
  while (1)
  {
    v5 = TSWPAttributeEnumerator::nextAttributeIndex(v9, &v8);
    v6 = v5 != 0;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 8))
    {
      v10.location = location;
      v10.length = length;
      if (NSIntersectionRange(v8, v10).length)
      {
        break;
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v9);
  return v6;
}

- (void)enumerateWithAttributeKind:(unsigned int)a3 inRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  if (self->_attributesTable[a3])
  {
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(v16, self, a4.location, a4.length, *&a3);
    v15.location = 0;
    v15.length = 0;
    v14 = 0;
    while (1)
    {
      v10 = TSWPAttributeEnumerator::nextAttributeIndex(v16, &v15);
      if (!v10)
      {
        break;
      }

      if ((v11 = *(v10 + 8), v17.location = location, v17.length = length, NSIntersectionRange(v17, v15).length) || a3 <= 0x12 && ((1 << a3) & 0x40307) != 0 && (v12 = v15.location, v12 == [(TSWPStorage *)self length]) || !length && TSWPInsertionPointInRangeWithOptions(location, 0, v15.location, v15.length, 0))
      {
        (*(a5 + 2))(a5, v11, v15.location, v15.length, &v14);
        if (v14)
        {
          break;
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v16);
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v18.location = [(TSWPStorage *)self range];
    v19.location = location;
    v19.length = length;
    v13 = NSIntersectionRange(v18, v19);
    (*(a5 + 2))(a5, 0, v13.location, v13.length, v16);
  }
}

- (void)enumerateSmartFieldsWithAttributeKind:(unsigned int)a3 inRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = *&a3;
  if (a3 > 0xC || ((1 << a3) & 0x10C0) == 0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5384, @"Not a smart field attribute kind"}];
  }

  v12 = [(TSWPStorage *)self length];
  if (self->_attributesTable[v8])
  {
    v13 = v12;
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(v20, self, location, length, v8);
    v19.location = 0;
    v19.length = 0;
    v18 = 0;
    while (1)
    {
      v14 = TSWPAttributeEnumerator::nextAttributeIndex(v20, &v19);
      if (!v14)
      {
        break;
      }

      v15 = *(v14 + 8);
      if (v15)
      {
        v21.location = location;
        v21.length = length;
        if (NSIntersectionRange(v21, v19).length || !length && TSWPInsertionPointInRangeWithOptions(location, 0, v19.location, v19.length, 0))
        {
          (*(a5 + 2))(a5, v15, v19.location, v19.length, &v18);
          if ([(TSWPStorage *)self length]!= v13)
          {
            v16 = [MEMORY[0x277D6C290] currentHandler];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:]"];
            [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5404, @"Storage was modified while enumerating attributes"}];
          }

          if (v18)
          {
            break;
          }
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(v20);
  }
}

- (id)smartFieldsWithAttributeKind:(unsigned int)a3 intersectingRange:(_NSRange)a4 passingTest:(id)a5
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__244;
  v12 = __Block_byref_object_dispose__245;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__TSWPStorage_smartFieldsWithAttributeKind_intersectingRange_passingTest___block_invoke;
  v7[3] = &unk_279D49EC0;
  v7[4] = a5;
  v7[5] = &v8;
  [(TSWPStorage *)self enumerateSmartFieldsWithAttributeKind:*&a3 inRange:a4.location usingBlock:a4.length, v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __74__TSWPStorage_smartFieldsWithAttributeKind_intersectingRange_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  if (!v7 || (result = (*(v7 + 16))(v7, a2, a5), result))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (!v9)
    {
      *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEB18] array];
      v9 = *(*(*(a1 + 40) + 8) + 40);
    }

    return [v9 addObject:a2];
  }

  return result;
}

- (void)smartFieldDidChange:(id)a3
{
  if ([a3 parentStorage] != self)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage smartFieldDidChange:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5439, @"smart field doesn't belong to this storage"}];
  }

  v8 = [a3 range];

  [(TSWPStorage *)self p_didChangeRange:v8 delta:v7 broadcastKind:0, 0];
}

- (void)autoUpdateField:(id)a3 withRange:(_NSRange)a4 documentRoot:(id)a5 returningInsertedRange:(_NSRange *)a6
{
  v6 = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage autoUpdateField:withRange:documentRoot:returningInsertedRange:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [v6 handleFailureInFunction:v7 file:v8 lineNumber:5448 description:@"unimplemented"];
}

- (void)autoUpdateSmartFieldsWithDocumentRoot:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage autoUpdateSmartFieldsWithDocumentRoot:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:5455 description:@"unimplemented"];
}

- (void)addGlyphVariantData:(id)a3 toRange:(_NSRange)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage addGlyphVariantData:toRange:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:5463 description:@"unimplemented"];
}

- (void)removeGlyphVariantDataFromRange:(_NSRange)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage removeGlyphVariantDataFromRange:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:5470 description:@"unimplemented"];
}

- (id)glyphVariantDataAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage glyphVariantDataAtCharIndex:effectiveRange:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5476, @"unimplemented"}];
  return 0;
}

- (void)fixGlyphVariantFontsForRange:(_NSRange)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage fixGlyphVariantFontsForRange:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:5483 description:@"unimplemented"];
}

- (id)fontNameAtCharIndex:(unint64_t)a3 size:(double *)a4 effectiveRange:(_NSRange *)a5 styleProvider:(id)a6
{
  v7 = [(TSWPStorage *)self createFontAtCharIndex:a3 scaleTextPercent:100 effectiveRange:a5 styleProvider:a6];
  v8 = CTFontCopyPostScriptName(v7);
  if (a4)
  {
    *a4 = CTFontGetSize(v7);
  }

  CFRelease(v7);

  return v8;
}

- (BOOL)textIsVertical
{
  v2 = TSUProtocolCast();

  return [v2 textIsVertical];
}

- (int64_t)contentWritingDirection
{
  v2 = TSUProtocolCast();
  if (!v2)
  {
    return -1;
  }

  return [v2 contentWritingDirection];
}

- (void)setGeometry:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage setGeometry:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:5537 description:@"can't set geometry on a storage"];
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)a3
{
  if (self->_parentInfo == a3)
  {
    self->_parentInfo = 0;
  }
}

- (BOOL)isThemeContent
{
  v2 = [(TSWPStorage *)self parentInfo];

  return [(TSDContainerInfo *)v2 isThemeContent];
}

- (id)copyWithContext:(id)a3
{
  v5 = [(TSWPStorage *)self range];
  v7 = v6;
  v8 = [(TSWPStorage *)self wpKind];

  return [(TSWPStorage *)self newSubstorageWithRange:v5 storageContext:v7 objectsContext:a3 flags:a3 kind:1, v8];
}

- (id)childInfos
{
  v3 = [(TSWPStorage *)self attachmentCount];
  v4 = [(TSWPStorage *)self footnoteCount];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4 + v3];
  v6 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (v6)
  {
    v7 = v6;
    if (v6->var2)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        objc_opt_class();
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = [v10 drawable];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        ++v8;
        v9 += 16;
      }

      while (v8 < v7->var2);
    }
  }

  v12 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (v12)
  {
    v13 = v12;
    if (v12->var2)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        objc_opt_class();
        v16 = TSUDynamicCast();
        if (v16)
        {
          v17 = [v16 containedStorage];
          if (v17)
          {
            [v5 addObject:v17];
          }
        }

        ++v14;
        v15 += 16;
      }

      while (v14 < v13->var2);
    }
  }

  return v5;
}

- (id)referencedStylesOfClass:(Class)a3
{
  v5 = [MEMORY[0x277CBEB58] set];
  if (objc_opt_class() == a3)
  {
    v8 = 0;
  }

  else if (objc_opt_class() == a3)
  {
    v8 = 2;
  }

  else if (objc_opt_class() == a3)
  {
    v8 = 3;
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage referencedStylesOfClass:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5674, @"Unknown style class."}];
      return v5;
    }

    v8 = 9;
  }

  v9 = [(TSWPStorage *)self attributeArrayForKind:v8];
  if (v9)
  {
    v10 = v9;
    var2 = v9->var2;
    if (var2)
    {
      v12 = 0;
      v13 = 8;
      do
      {
        if (*(v10->var4 + v13))
        {
          [v5 addObject:?];
          var2 = v10->var2;
        }

        ++v12;
        v13 += 16;
      }

      while (v12 < var2);
    }
  }

  return v5;
}

- (id)referencedStyles
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:{4, 0}];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 unionSet:{-[TSWPStorage referencedStylesOfClass:](self, "referencedStylesOfClass:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [&unk_287DDCC30 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&unk_287DDCC30);
        }

        v9 = -[TSWPStorage attributeArrayForKind:](self, "attributeArrayForKind:", [*(*(&v11 + 1) + 8 * v8) unsignedIntegerValue]);
        if (v9)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __49__TSWPStorage_replaceReferencedStylesUsingBlock___block_invoke;
          v10[3] = &unk_279D49EE8;
          v10[4] = a3;
          v10[5] = v9;
          TSWPAttributeArray::enumerateObjectAttributes(v9, v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [&unk_287DDCC30 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __49__TSWPStorage_replaceReferencedStylesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (*(*(a1 + 32) + 16))();
    if (v6 != a2)
    {
      v7 = v6;
      v8 = *(a1 + 40);

      TSWPAttributeArray::replaceObjectForAttributeIndex(v8, v7, a3, 0, 0);
    }
  }
}

- (BOOL)hasVisibleText
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(TSWPStorage *)self length];
  if (v3)
  {
    v4 = v3 > 8;
    if (v3 >= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = v3;
    }

    [(NSMutableString *)self->_string getCharacters:v21 range:0, v5];
    v6 = 0;
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = v21[v6];
        if (v8 < 0x20)
        {
          break;
        }

        if (v8 < 0x7F)
        {
          goto LABEL_31;
        }

        v6 = (v7 + 1);
        v4 = 1;
        v7 = v6;
        if (v6 >= v5)
        {
          goto LABEL_13;
        }
      }

      v6 = (v7 + 1);
      v7 = v6;
    }

    while (v6 < v5);
    if (!v4)
    {
LABEL_30:
      LOBYTE(v3) = 0;
      return v3;
    }

LABEL_13:
    if (-[NSMutableString rangeOfCharacterFromSet:options:](self->_string, "rangeOfCharacterFromSet:options:", [objc_msgSend(MEMORY[0x277CCA900] "invisibleCharacterSet")], 2) != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_31:
      LOBYTE(v3) = 1;
      return v3;
    }

    v9 = [(TSWPStorage *)self attachmentCount];
    if (v9)
    {
      v10 = v9;
      for (i = 0; v10 != i; ++i)
      {
        v12 = [(TSWPStorage *)self attachmentAtAttachmentIndex:i outCharIndex:0];
        if (v12)
        {
          v13 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 stringEquivalent];
            if (v14 && [v14 length])
            {
              goto LABEL_31;
            }
          }

          else
          {
            objc_opt_class();
            v15 = TSUDynamicCast();
            if (v15 && ![v15 isAnchored])
            {
              goto LABEL_31;
            }
          }
        }
      }
    }

    v3 = [(TSWPStorage *)self footnoteCount];
    if (v3)
    {
      v16 = v3;
      v17 = 0;
      while (1)
      {
        v18 = [(TSWPStorage *)self footnoteAtFootnoteIndex:v17 outCharIndex:0];
        if (v18)
        {
          v19 = [v18 stringEquivalent];
          if (v19)
          {
            if ([v19 length])
            {
              goto LABEL_31;
            }
          }
        }

        if (v16 == ++v17)
        {
          goto LABEL_30;
        }
      }
    }
  }

  return v3;
}

- (BOOL)p_hasGoodAttributesForPlainTextPaste
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(TSWPStorage *)self attributeArrayForKind:dword_26CA66E94[v3] withCreate:0 undoTransaction:0];
    if (v5 && v5->var2)
    {
      break;
    }

    v4 = v3++ > 5;
  }

  while (v3 != 7);
  return v4;
}

- (BOOL)canPasteAsPlainText
{
  v3 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:0 undoTransaction:0];
  if (v3 && v3->var2 > 1)
  {
    return 0;
  }

  return [(TSWPStorage *)self p_hasGoodAttributesForPlainTextPaste];
}

- (BOOL)canPasteAsPlainTextWithUniformParagraphs
{
  v3 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:0 undoTransaction:0];
  if (v3)
  {
    var2 = v3->var2;
    if (var2 >= 2)
    {
      var4 = v3->var4;
      v6 = *(var4 + 1);
      v7 = var2 - 1;
      v8 = (var4 + 24);
      while (*v8 == v6)
      {
        v8 += 2;
        if (!--v7)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }
  }

LABEL_6:
  v9 = [(TSWPStorage *)self attributeArrayForKind:18 withCreate:0 undoTransaction:0];
  if (v9 && v9->var2 > 1)
  {
    return 0;
  }

  return [(TSWPStorage *)self p_hasGoodAttributesForPlainTextPaste];
}

- (id)newSubstorageWithRange:(_NSRange)a3 storageContext:(id)a4 objectsContext:(id)a5 flags:(unsigned int)a6
{
  v6 = *&a6;
  length = a3.length;
  location = a3.location;
  v12 = [(TSWPStorage *)self wpKind];

  return [(TSWPStorage *)self newSubstorageWithRange:location storageContext:length objectsContext:a4 flags:a5 kind:v6, v12];
}

- (id)newSubstorageWithRange:(_NSRange)a3 storageContext:(id)a4 objectsContext:(id)a5 flags:(unsigned int)a6 kind:(int)a7
{
  length = a3.length;
  location = a3.location;
  if (a3.length)
  {
    v30 = [(NSMutableString *)self->_string substringWithRange:a3.location, a3.length];
  }

  else
  {
    v30 = 0;
  }

  v29 = [(TSWPStorage *)self paragraphStyleAtCharIndex:location effectiveRange:0];
  v28 = [(TSWPStorage *)self listStyleAtCharIndex:location effectiveRange:0];
  v13 = [(TSWPStorage *)self columnStyleAtCharIndex:location effectiveRange:0];
  v14 = [(TSWPStorage *)self writingDirectionForParagraphAtCharIndex:location];
  v34 = 0;
  v33 = 0;
  if ((a6 & 4) != 0 && [(TSWPStorage *)self supportsSections]&& [(TSWPStorage *)self sectionCount])
  {
    v15 = a4;
    v16 = [-[TSWPStorage sectionAtCharIndex:effectiveRange:](self sectionAtCharIndex:location effectiveRange:{0), "copyWithContext:", a4}];
  }

  else
  {
    v15 = a4;
    v16 = 0;
  }

  [(TSWPStorage *)self paragraphFlags:&v33 andLevel:&v34 atCharIndex:location];
  v17 = [(TSWPStorage *)self listStartAtCharIndex:location];
  LODWORD(v27) = v14;
  v31 = v16;
  v18 = [objc_alloc(objc_opt_class()) initWithContext:v15 string:v30 kind:a7 stylesheet:self->_stylesheet paragraphStyle:v29 listStyle:v28 section:v16 columnStyle:v13 paragraphDirection:v27];
  [v18 setParagraphFlags:v33 level:v34 forCharRange:0 undoTransaction:{objc_msgSend(v18, "length"), 0}];
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v18 setListStart:v17 forCharRange:0 undoTransaction:{objc_msgSend(v18, "length"), 0}];
  }

  if ([v18 supportsSections])
  {
    v19 = v31;
    if ([v18 sectionCount])
    {
      v19 = [v18 sectionAtSectionIndex:0 effectiveRange:0];
    }
  }

  else
  {
    v19 = v31;
  }

  [v18 filterSectionBreaksFromStorage:v18 undoTransaction:0];
  v20 = 0;
  if ((a6 & 8) != 0)
  {
    v20 = +[TSKAddedToDocumentContext changeTrackingSubstorageForCopyContext];
  }

  v21 = 0;
  do
  {
    v22 = [(TSWPStorage *)self attributeArrayForKind:v21];
    if (v22)
    {
      LODWORD(v26) = a6;
      [(TSWPStorage *)self transferAttributeArraySource:v22 forSourceRange:location toDestStorage:length objectContext:v18 dolcContext:a5 flags:v20, v26];
    }

    v21 = (v21 + 1);
  }

  while (v21 != 19);
  if ([v18 supportsSections])
  {
    if (!v19)
    {
      v19 = [v18 pDefaultSectionForContext:{objc_msgSend(v18, "context")}];
    }

    if ([v18 sectionCount])
    {
      if (v19)
      {
LABEL_26:
        [v19 i_ensureHeaderFooterStoragesExistWithStylesheet:{-[TSWPStorage stylesheet](self, "stylesheet")}];
        goto LABEL_29;
      }
    }

    else
    {
      [v18 insertObject:v19 charIndex:0 attributeArray:objc_msgSend(v18 attributeIndex:"attributeArrayForKind:withCreate:undoTransaction:" dolcContext:8 undoTransaction:{1, 0), 0, v20, 0}];
      if (v19)
      {
        goto LABEL_26;
      }
    }

    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage newSubstorageWithRange:storageContext:objectsContext:flags:kind:]"];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 6123, @"No default section in storage."}];
  }

LABEL_29:

  return v18;
}

- (int)compareRange:(_NSRange)a3 otherStorage:(id)a4 otherRange:(_NSRange)a5 options:(unint64_t)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a3.length;
  v11 = a3.location;
  v13 = [a4 range];
  v15 = v14;
  v16 = [a4 string];
  v17 = v16;
  if (location != v13 || length != v15)
  {
    v17 = [v16 substringWithRange:{location, length}];
  }

  result = [(NSMutableString *)self->_string compare:v17 options:a6 range:v11, v10];
  if (!result)
  {
    v19 = 0;
    while (1)
    {
      if (v19 < 0xA || v19 <= 0x12 && ((1 << v19) & 0x43800) != 0)
      {
        v20 = [(TSWPStorage *)self attributeArrayForKind:v19];
        if (v20)
        {
          result = [(TSWPStorage *)self compareAttributeArray:v20 range:v11 otherStorage:v10 otherRange:a4, location, length];
          if (result)
          {
            break;
          }
        }
      }

      v19 = (v19 + 1);
      if (v19 == 19)
      {
        return 0;
      }
    }
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@ Text: '", -[TSWPStorage description](self, "description")];
  [v3 appendString:self->_string];
  [v3 appendString:@"'\n"];
  [v3 appendString:@"Attribute tables:\n"];
  v4 = 0;
  do
  {
    v5 = [(TSWPStorage *)self attributeArrayForKind:v4];
    if (v5)
    {
      v6 = (*(v5->var0 + 17))(v5);
    }

    else
    {
      v6 = 0;
    }

    if ([v6 length])
    {
      [v3 appendString:v6];
    }

    v4 = (v4 + 1);
  }

  while (v4 != 19);

  return v3;
}

- (NSString)description
{
  WPKind = self->_WPKind;
  if (WPKind > 7)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"*#$! Unknown WP kind: %d", WPKind];
  }

  else
  {
    v4 = [TSWPStorage description]::kinds[WPKind];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%@*) %p (length:%lu) kind: %@", objc_opt_class(), self, -[TSWPStorage characterCount](self, "characterCount"), v4];
}

- (void)splitSmartFieldAtCharIndex:(unint64_t)a3 lengthToInsert:(unint64_t)a4 attributeKind:(unsigned int)a5 dolcContext:(id)a6 undoTransaction:(TSWPStorageTransaction *)a7
{
  v11 = [(TSWPStorage *)self smartFieldAtCharIndex:a3 attributeKind:*&a5 effectiveRange:&v16];
  if (v11 && a3 > v16)
  {
    v12 = v17 + v16;
    if (a3 - v16 != v17 && v12 != a3)
    {
      v14 = v12 - a3;
      v15 = [v11 copyWithContext:{-[TSPObject context](self, "context")}];
      [(TSWPStorage *)self addSmartField:v15 toRange:a3 dolcContext:v14 undoTransaction:a6, a7];
    }
  }
}

- (void)splitSmartFieldAtCharIndex:(unint64_t)a3 lengthToInsert:(unint64_t)a4 dolcContext:(id)a5 undoTransaction:(TSWPStorageTransaction *)a6
{
  [(TSWPStorage *)self splitSmartFieldAtCharIndex:a3 lengthToInsert:a4 attributeKind:6 dolcContext:a5 undoTransaction:a6];

  [(TSWPStorage *)self splitSmartFieldAtCharIndex:a3 lengthToInsert:a4 attributeKind:12 dolcContext:a5 undoTransaction:a6];
}

- (__CTFont)createFontAtCharIndex:(unint64_t)a3 scaleTextPercent:(unint64_t)a4 effectiveRange:(_NSRange *)a5 styleProvider:(id)a6
{
  v11 = [(TSWPStorage *)self characterStyleAtCharIndex:a3 left:0 effectiveRange:0];
  v12 = [a6 paragraphStyleAtParIndex:-[TSWPStorage paragraphIndexAtCharIndex:](self effectiveRange:{"paragraphIndexAtCharIndex:", a3), a5}];

  return TSWPFastCreateFontForStyle(v11, v12, a4);
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 options:(unint64_t)a5 changedRange:(_NSRange *)a6 changeDelta:(int64_t *)a7 undoTransaction:(TSWPStorageTransaction *)a8 changeSession:(id)a9
{
  length = a3.length;
  location = a3.location;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = &stru_287D36338;
  }

  v15 = [(__CFString *)v14 stringByCapitalizingToMatchString:[(TSWPStorage *)self string] range:a3.location searchOptions:a3.length, a5];
  v16 = [(TSWPStorage *)self length];
  [(TSWPStorage *)self replaceCharactersInSelection:[TSWPSelection selectionWithRange:?]changeSession:v15 undoTransaction:1 outInsertedRange:0, a9, a8, 0];
  if (a7)
  {
    *a7 = [(TSWPStorage *)self length]- v16;
  }

  if (a6)
  {
    a6->location = location;
    a6->length = [v15 length];
  }
}

- (id)valueForBIUProperties:(id)a3 selection:(id)a4 insertionStyle:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCAB58] indexSet];
  v10 = [a4 superRange];
  v11 = -[TSWPStorage characterStyleAtCharIndex:left:effectiveRange:](self, "characterStyleAtCharIndex:left:effectiveRange:", v10, [a4 isInsertionPoint], 0);
  v12 = [(TSWPStorage *)self paragraphStyleAtCharIndex:v10 effectiveRange:0];
  if (a5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = (&v29 - ((8 * v13 + 15) & 0x30));
  if (a5)
  {
    v14[2] = v12;
  }

  else
  {
    a5 = v11;
    v11 = v12;
  }

  *v14 = a5;
  v14[1] = v11;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [a3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(a3);
        }

        v20 = [*(*(&v29 + 1) + 8 * i) unsignedIntValue];
        v21 = v20;
        if (v20 > 2)
        {
          if (v20 <= 4)
          {
            if (v20 == 3)
            {
              v26 = 26;
              goto LABEL_39;
            }

            v22 = 8226;
            goto LABEL_35;
          }

          if (v20 == 5)
          {
            v22 = 65093;
LABEL_35:
            v27 = TSWPResolvePropertyForStyles(&v29 - ((8 * v13 + 15) & 0x30), v13, 45, 1);
            if ([v27 length] == 1 && v22 == objc_msgSend(v27, "characterAtIndex:", 0))
            {
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          if (v20 != 6)
          {
            goto LABEL_41;
          }

LABEL_22:
          v23 = TSWPResolveIntPropertyForStyles(&v29 - ((8 * v13 + 15) & 0x30), v13, 22, 0x80000000);
          if ((v23 & 0x7FFFFFFF) != 0)
          {
            if (v21 == 2 && v23 == 1)
            {
              goto LABEL_40;
            }

            if (v21 == 6 && v23 == 3)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_41;
        }

        switch(v20)
        {
          case 0:
            v26 = 19;
            goto LABEL_39;
          case 1:
            v26 = 20;
LABEL_39:
            if ((TSWPResolveIntPropertyForStyles(&v29 - ((8 * v13 + 15) & 0x30), v13, v26, 0x80000000) & 0x7FFFFFFF) == 0)
            {
              break;
            }

LABEL_40:
            [v9 addIndex:v17];
            break;
          case 2:
            goto LABEL_22;
        }

LABEL_41:
        ++v17;
      }

      v16 = [a3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  return v9;
}

- (BOOL)p_passesExtraTablesChecksForStoringInAStringValueCell
{
  if ([(TSWPStorage *)self paragraphLevelAtCharIndex:0]|| [(TSWPStorage *)self listStyleCount]> 1)
  {
    return 0;
  }

  if ([(TSWPStorage *)self listStyleCount])
  {
    v4 = [(TSWPStorage *)self listStyleAtCharIndex:0 effectiveRange:0];
    if (v4)
    {
      return [v4 firstLabelType] == 0;
    }
  }

  return 1;
}

- (BOOL)canBeStoredInAStringValueCell
{
  v3 = [(TSWPStorage *)self canPasteAsPlainTextWithUniformParagraphs];
  if (v3)
  {

    LOBYTE(v3) = [(TSWPStorage *)self p_passesExtraTablesChecksForStoringInAStringValueCell];
  }

  return v3;
}

- (id)valueForBIUProperties:(id)a3
{
  v5 = [TSWPSelection alloc];
  v6 = [(TSWPStorage *)self range];
  v8 = [(TSWPSelection *)v5 initWithRange:v6, v7];
  v9 = [(TSWPStorage *)self valueForBIUProperties:a3 selection:v8 insertionStyle:0];

  return v9;
}

- (uint64_t)setListStart:forCharRange:undoTransaction:.cold.1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage setListStart:forCharRange:undoTransaction:]"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:4073 description:@"Out-of-bounds type assignment was clamped to max"];
}

- (_NSRange)rangeForChange:(id)a3
{
  v12.length = [(TSWPStorage *)self length];
  v12.location = 0;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v10, self, v12);
  while (1)
  {
    if (!TSWPChangeEnumerator::change(v10))
    {
      v5 = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    if (TSWPChangeEnumerator::change(v10) == a3)
    {
      break;
    }

    TSWPChangeEnumerator::operator++(v10);
  }

  v6 = TSWPChangeEnumerator::changeRange(v10);
  v5 = v7;
LABEL_7:
  TSWPChangeEnumerator::~TSWPChangeEnumerator(v10);
  v8 = v6;
  v9 = v5;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)changeAtCharIndex:(unint64_t)a3 attributeKind:(unsigned int)a4 effectiveRange:(_NSRange *)a5
{
  v6 = self->_attributesTable[a4];
  if (!v6 || !v6->var2)
  {
    if (a5)
    {
      v9 = [(TSWPStorage *)self range];
      goto LABEL_8;
    }

    return 0;
  }

  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(self->_attributesTable[a4], a3);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(v6->var4 + 2 * v7 + 1);
    if (!a5)
    {
      return v10;
    }

    v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
    goto LABEL_9;
  }

  if (!a5)
  {
    return 0;
  }

  v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, 0);
  v9 = 0;
LABEL_8:
  v10 = 0;
LABEL_9:
  a5->location = v9;
  a5->length = v8;
  return v10;
}

- (id)changeAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  result = [(TSWPStorage *)self changeAtCharIndex:a3 attributeKind:15 effectiveRange:a4];
  if (!result)
  {

    return [(TSWPStorage *)self changeAtCharIndex:a3 attributeKind:16 effectiveRange:a4];
  }

  return result;
}

- (TSWPRangeVector)deletedRangeVectorInRange:(SEL)a3
{
  length = a4.length;
  location = a4.location;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v9, self, a4);
  while (TSWPChangeEnumerator::change(v9))
  {
    if (TSWPChangeEnumerator::changeIsDeletion(v9))
    {
      v8 = 0;
      v10.location = TSWPChangeEnumerator::changeRange(v9);
      v11.location = location;
      v11.length = length;
      v8 = NSIntersectionRange(v10, v11);
      if (v8.length)
      {
        std::vector<CGPoint>::push_back[abi:nn200100](retstr, &v8);
      }
    }

    TSWPChangeEnumerator::operator++(v9);
  }

  TSWPChangeEnumerator::~TSWPChangeEnumerator(v9);
  return result;
}

- (id)deletedRangesInRange:(_NSRange)a3
{
  if (!self)
  {
    return 0;
  }

  [(TSWPStorage *)self deletedRangeVectorInRange:a3.location, a3.length];
  v3 = v6;
  if (v7 != v6)
  {
    v4 = [[TSWPRangeArray alloc] initWithRangeVector:&v6];
    v3 = v6;
    if (!v6)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v6)
  {
LABEL_7:
    v7 = v3;
    operator delete(v3);
  }

  return v4;
}

- (id)hiddenRangesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v8, self, a3);
  v5 = 0;
  while (TSWPChangeEnumerator::change(v8))
  {
    if (TSWPChangeEnumerator::changeIsHidden(v8))
    {
      v9.location = TSWPChangeEnumerator::changeRange(v8);
      v10.location = location;
      v10.length = length;
      v6 = NSIntersectionRange(v9, v10);
      if (v6.length)
      {
        if (!v5)
        {
          v5 = objc_alloc_init(TSWPRangeArray);
        }

        [(TSWPRangeArray *)v5 addRange:v6.location, v6.length];
      }
    }

    TSWPChangeEnumerator::operator++(v8);
  }

  TSWPChangeEnumerator::~TSWPChangeEnumerator(v8);
  return v5;
}

- (BOOL)p_hasDeletedTextAtCharIndex:(unint64_t)a3 requireHidden:(BOOL)a4 range:(_NSRange *)a5
{
  v6 = a4;
  v8 = [(TSWPStorage *)self deletionChangesTable];
  if (v8)
  {
    v9 = v8;
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, a3);
    if (v10 > 0x7FFFFFFFFFFFFFFELL)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v11 = v10;
      v8 = *(v9->var4 + 2 * v10 + 1);
      if (v8)
      {
        if (!v6 || (LODWORD(v8) = [(TSWPChangeAttributeArray *)v8 isHidden], v8))
        {
          v13 = TSWPAttributeArray::rangeForAttributeIndex(v9, v11);
          LOBYTE(v8) = 0;
          if (a3 >= v13 && a3 - v13 < v12)
          {
            if (a5)
            {
              a5->location = v13;
              a5->length = v12;
            }

            LOBYTE(v8) = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (unint64_t)p_indexOfFirstNonDeletedCharInRange:(_NSRange)a3 requireVisible:(BOOL)a4
{
  v4 = a4;
  location = a3.location;
  v17 = a3;
  v6 = [(TSWPStorage *)self deletionChangesTable];
  if (v6)
  {
    v7 = v6;
    TSWPAttributeArray::begin(v6, &v17, &v15);
    TSWPAttributeArray::end(v7, &v17, &v13);
    v8 = v16;
    v9 = v14;
    if (v16 != v14)
    {
      while (1)
      {
        v10 = v15;
        if (!*(v15->var4 + 2 * v8 + 1))
        {
          break;
        }

        if (v4)
        {
          if (([*(v15->var4 + 2 * v8 + 1) isHidden] & 1) == 0)
          {
            v10 = v15;
            v8 = v16;
            break;
          }

          v8 = v16;
          v9 = v14;
        }

        v16 = ++v8;
        if (v8 == v9)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v11 = v17.location;
      if (v11 <= TSWPAttributeArray::rangeForAttributeIndex(v10, v8))
      {
        return TSWPAttributeArray::rangeForAttributeIndex(v15, v16);
      }

      else
      {
        return v17.location;
      }
    }
  }

  return location;
}

- (unint64_t)indexAfterLastVisibleCharInRange:(_NSRange)a3
{
  v16 = a3;
  v3 = a3.location + a3.length;
  v4 = [(TSWPStorage *)self deletionChangesTable];
  if (v4)
  {
    v5 = v4;
    TSWPAttributeArray::end(v4, &v16, &v14);
    TSWPAttributeArray::begin(v5, &v16, &v12);
    v6 = v15;
    if (v15 != v13)
    {
      while (1)
      {
        if (v6)
        {
          v7 = v6 - 1;
          v15 = v6 - 1;
        }

        else
        {
          v7 = 0;
        }

        v8 = v14;
        if (!*(v14->var4 + 2 * v7 + 1))
        {
          break;
        }

        if (([*(v14->var4 + 2 * v7 + 1) isHidden] & 1) == 0)
        {
          v8 = v14;
          v7 = v15;
          break;
        }

        v6 = v15;
        if (v15 == v13)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v3 = v16.length + v16.location;
      v9 = TSWPAttributeArray::rangeForAttributeIndex(v8, v7);
      if (v9 + v10 < v3)
      {
        return v9 + v10;
      }
    }
  }

  return v3;
}

- (BOOL)hasDeletionInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPStorage *)self deletionChangesTable];
  if (v5)
  {
    v6 = v5;
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, location);
    if (*(v6->var4 + 2 * v7 + 1))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
      LOBYTE(v5) = v8 > location || v8 + v9 < location + length;
    }
  }

  return v5;
}

- (void)applyChange:(id)a3 changeRange:(_NSRange)a4 accept:(BOOL)a5 undoTransaction:(void *)a6
{
  v7 = a5;
  length = a4.length;
  location = a4.location;
  if (([a3 isInsertion] & 1) == 0 && (objc_msgSend(a3, "isDeletion") & 1) == 0)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) applyChange:changeRange:accept:undoTransaction:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 361, @"unknown change kind"}];
  }

  if (([a3 isInsertion] & 1) != 0 || objc_msgSend(a3, "isDeletion"))
  {
    if ([a3 isInsertion])
    {
      v14 = 15;
    }

    else
    {
      v14 = 16;
    }

    [(TSWPStorage *)self applyObject:0 toCharRange:location forKind:length dolcContext:v14 undoTransaction:0, a6];
    if (v7)
    {
      if (([a3 isInsertion] & 1) != 0 || (objc_msgSend(a3, "isDeletion") & 1) == 0)
      {
        return;
      }
    }

    else if (([a3 isDeletion] & 1) != 0 || !objc_msgSend(a3, "isInsertion"))
    {
      return;
    }

    [(TSWPStorage *)self deleteRange:location undoTransaction:length, a6];
  }
}

- (void)applyChanges:(BOOL)a3 inRange:(_NSRange)a4 inSelectionRange:(_NSRange)a5 outChangedRange:(_NSRange *)a6 outSelectionRange:(_NSRange *)a7 undoTransaction:(void *)a8 forceAll:(BOOL)a9
{
  length = a5.length;
  location = a5.location;
  v11 = a4.length;
  v12 = a4.location;
  v13 = a3;
  v72 = *MEMORY[0x277D85DE8];
  *a6 = a4;
  *a7 = a5;
  v49 = a7;
  v15 = *MEMORY[0x277D6C268];
  v16 = *(MEMORY[0x277D6C268] + 8);
  v17 = objc_opt_new();
  v81.location = v12;
  v81.length = v11;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v69, self, v81);
  v53 = 0;
  v55 = 0;
  *&v58[8] = 0;
  v59 = 0;
  *v58 = a9;
  range2 = length;
  v57 = location + length;
  v51 = v16;
  v52 = v15;
  range1 = v16;
  while (TSWPChangeEnumerator::change(v69))
  {
    v18 = TSWPChangeEnumerator::changeRange(v69);
    v20 = v19;
    v82.location = v18;
    v82.length = v19;
    *a6 = NSUnionRange(*a6, v82);
    v21 = TSWPChangeEnumerator::change(v69);
    v22 = v21;
    if (v13)
    {
      if (([v21 isDeletion] & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      v73.location = v18;
      v73.length = v20;
      v83.location = 0;
      v83.length = location;
      v23 = NSIntersectionRange(v73, v83).length;
      v74.location = v18;
      v74.length = v20;
      v84.location = location;
      v84.length = range2;
      v59 -= v23;
      *&v58[4] -= NSIntersectionRange(v74, v84).length;
      goto LABEL_8;
    }

    if ([v21 isInsertion])
    {
      goto LABEL_7;
    }

LABEL_8:
    if (!a9 && v18 <= location && v18 + v20 >= v57)
    {
      if ([v22 isDeletion])
      {
        v55 = v22;
        v15 = v18;
        range1 = v20;
      }

      else if ([v22 isInsertion])
      {
        v53 = v22;
        v51 = v20;
        v52 = v18;
      }
    }

    [v17 addObject:{v22, v49}];
    TSWPChangeEnumerator::operator++(v69);
  }

  if (v55)
  {
    a6->location = v15;
    a6->length = range1;
    if (v13)
    {
      v75.location = v15;
      v75.length = range1;
      v85.location = 0;
      v85.length = location;
      v24 = NSIntersectionRange(v75, v85).length;
      v76.location = v15;
      v76.length = range1;
      v86.location = location;
      v86.length = range2;
      v59 = -v24;
      *&v58[4] = -NSIntersectionRange(v76, v86).length;
    }

    else
    {
      *&v58[4] = 0;
      v59 = 0;
    }

    [v17 removeAllObjects];
    [v17 addObject:v55];
  }

  else if (v53)
  {
    a6->location = v52;
    a6->length = v51;
    if (v13)
    {
      *&v58[4] = 0;
      v59 = 0;
    }

    else
    {
      v77.location = v52;
      v77.length = v51;
      v87.location = 0;
      v87.length = location;
      v25 = NSIntersectionRange(v77, v87).length;
      v78.location = v52;
      v78.length = v51;
      v88.location = location;
      v88.length = range2;
      v59 = -v25;
      *&v58[4] = -NSIntersectionRange(v78, v88).length;
    }

    [v17 removeAllObjects];
    [v17 addObject:v53];
  }

  if (v49->location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = v49->length + *&v58[4];
    v49->location += v59;
    v49->length = v26;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = [v17 countByEnumeratingWithState:&v65 objects:v71 count:{16, v49}];
  if (v27)
  {
    v28 = *v66;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(v17);
        }

        v30 = *(*(&v65 + 1) + 8 * i);
        if ([v30 isInsertion])
        {
          v31 = [(TSWPStorage *)self rangeForChange:v30];
          [(TSWPStorage *)self applyChange:v30 changeRange:v31 accept:v32 undoTransaction:v13, a8];
        }
      }

      v27 = [v17 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v27);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v33)
  {
    v34 = *v62;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v62 != v34)
        {
          objc_enumerationMutation(v17);
        }

        v36 = *(*(&v61 + 1) + 8 * j);
        if ([v36 isDeletion])
        {
          v38 = [(TSWPStorage *)self rangeForChange:v36];
          if (v38 <= 0x7FFFFFFFFFFFFFFELL)
          {
            [(TSWPStorage *)self applyChange:v36 changeRange:v38 accept:v37 undoTransaction:v13, a8];
          }
        }
      }

      v33 = [v17 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v33);
  }

  if (*v50 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = v50[1];
    v39 = *v50;
    if (v40 + v39 > [(TSWPStorage *)self length])
    {
      v41 = [MEMORY[0x277D6C290] currentHandler];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) applyChanges:inRange:inSelectionRange:outChangedRange:outSelectionRange:undoTransaction:forceAll:]"];
      [v41 handleFailureInFunction:v42 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 491, @"bad selection range"}];
      v43 = *v50;
      v44 = v50[1];
      v89.location = [(TSWPStorage *)self range];
      v89.length = v45;
      v79.location = v43;
      v79.length = v44;
      *v50 = NSIntersectionRange(v79, v89);
    }
  }

  v46 = a6->location;
  if (a6->location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = a6->length;
    v90.location = [(TSWPStorage *)self range];
    v90.length = v48;
    v80.location = v46;
    v80.length = v47;
    *a6 = NSIntersectionRange(v80, v90);
  }

  TSWPChangeEnumerator::~TSWPChangeEnumerator(v69);
}

- (id)nextChangeFromCharIndex:(unint64_t)a3 afterChange:(id)a4 changeRange:(_NSRange *)a5
{
  v9 = [(TSWPStorage *)self length];
  if (v9 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= a3)
  {
    v11.location = a3;
  }

  else
  {
    v11.location = v9;
  }

  v11.length = v10 - v11.location;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v21, self, v11);
  v12 = 0;
  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  while (TSWPChangeEnumerator::change(v21))
  {
    v15 = !a4 || v13 == a4;
    v16 = !v15;
    v13 = TSWPChangeEnumerator::change(v21);
    v14 = TSWPChangeEnumerator::changeRange(v21);
    v12 = v17;
    if (!v16)
    {
      break;
    }

    TSWPChangeEnumerator::operator++(v21);
  }

  TSWPChangeEnumerator::~TSWPChangeEnumerator(v21);
  if (v13 == a4)
  {
    v22.location = [(TSWPStorage *)self range];
    v22.length = v18;
    TSWPChangeEnumerator::TSWPChangeEnumerator(v21, self, v22);
    v13 = TSWPChangeEnumerator::change(v21);
    v14 = TSWPChangeEnumerator::changeRange(v21);
    v12 = v19;
    TSWPChangeEnumerator::~TSWPChangeEnumerator(v21);
  }

  if (a5)
  {
    a5->location = v14;
    a5->length = v12;
  }

  return v13;
}

- (id)previousChangeFromCharIndex:(unint64_t)a3 beforeChange:(id)a4 changeRange:(_NSRange *)a5
{
  v21.location = 0;
  v21.length = a3;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v20, self, v21);
  v9 = 0;
  v10 = 0;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  while (TSWPChangeEnumerator::change(v20))
  {
    v12 = TSWPChangeEnumerator::change(v20);
    v13 = TSWPChangeEnumerator::changeRange(v20);
    if (v12 == a4)
    {
      break;
    }

    v15 = v13;
    if (v13 > a3)
    {
      break;
    }

    v16 = v14;
    TSWPChangeEnumerator::operator++(v20);
    v9 = v16;
    v11 = v15;
    v10 = v12;
  }

  TSWPChangeEnumerator::~TSWPChangeEnumerator(v20);
  if (!v10)
  {
    v22.location = [(TSWPStorage *)self range];
    v22.length = v17;
    TSWPChangeEnumerator::TSWPChangeEnumerator(v20, self, v22);
    while (TSWPChangeEnumerator::change(v20))
    {
      v10 = TSWPChangeEnumerator::change(v20);
      v11 = TSWPChangeEnumerator::changeRange(v20);
      v9 = v18;
      TSWPChangeEnumerator::operator++(v20);
    }

    TSWPChangeEnumerator::~TSWPChangeEnumerator(v20);
  }

  if (a5)
  {
    a5->location = v11;
    a5->length = v9;
  }

  return v10;
}

- (id)changeDetailsAtCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  if ([(TSWPStorage *)self range]> a3 || (v7 = [(TSWPStorage *)self range], v7 + v8 < a3))
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsAtCharIndex:outRange:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"];
    v17.location = [(TSWPStorage *)self range];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:592 description:{@"charIndex %lu not within storage range %@", a3, NSStringFromRange(v17)}];
  }

  v12 = [(TSWPStorage *)self changeAtCharIndex:a3 outRange:a4];
  location = a4->location;
  length = a4->length;

  return [(TSWPStorage *)self changeDetailsForChange:v12 withRange:location, length];
}

- (id)changeDetailsForChange:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a3)
  {
    if (a4.length)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 602, @"invalid nil value for '%s'", "change"}];
    if (length)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277D6C290] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]"];
  [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 603, @"Should have a change range greater than 0"}];
LABEL_3:
  v8 = [(TSWPStorage *)self substringWithRange:location, length];
  v9 = [v8 length];
  if (!v9)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]"];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 609, @"change text length should be greater than 0"}];
    v20 = TSWPFullNameForCharacter(0, 0);
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v8 characterAtIndex:0];
  v12 = v10 != 1;
  if (v10 == 1)
  {
    v12 = 0;
LABEL_13:
    v21 = TSWPFullNameForCharacter(v11, v12);
    if (v11 != 10)
    {
      goto LABEL_22;
    }

    v22 = [(TSWPStorage *)self columnStyleAtCharIndex:location effectiveRange:0];
    if (v22 == [(TSWPStorage *)self columnStyleAtCharIndex:location + 1 effectiveRange:0])
    {
      goto LABEL_22;
    }

    v23 = TSWPBundle();
    if (v12)
    {
      v24 = @"Layout Breaks";
    }

    else
    {
      v24 = @"Layout Break";
    }

    v20 = [v23 localizedStringForKey:v24 value:&stru_287D36338 table:@"TSText"];
LABEL_21:
    v21 = v20;
LABEL_22:
    if (([a3 isInsertion] & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v21)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Added: %@", &stru_287D36338, @"TSText", v21];
      goto LABEL_30;
    }

LABEL_29:
    v25 = [TSWPBundle() localizedStringForKey:@"Added Text" value:&stru_287D36338 table:@"TSText"];
    goto LABEL_30;
  }

  v13 = 1;
  while (v11 == [v8 characterAtIndex:v13])
  {
    if (v10 == ++v13)
    {
      goto LABEL_13;
    }
  }

  if ([a3 isInsertion])
  {
    goto LABEL_29;
  }

  v21 = 0;
LABEL_25:
  if (v21)
  {
    v8 = v21;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"Deleted: %@", &stru_287D36338, @"TSText", v8];
LABEL_30:
  v26 = [[TSWPChangeDetails alloc] initWithChange:a3 changeString:v25];

  return v26;
}

- (_NSRange)rangeForTrackedChanges:(id)a3
{
  v5 = [a3 range];
  v7 = v6;
  if ([a3 isInsertionPoint])
  {
    v8 = [(TSWPStorage *)self rangeForSelectionWithInsertionSelection:a3];
    if ([a3 start] == v8 + v9)
    {
      if ([a3 start])
      {
        v5 = [a3 start] - 1;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  v10 = v5;
  v11 = v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)selectionContainsVisibleTrackedChanges:(id)a3
{
  v5 = [a3 isValid];
  if (v5)
  {
    v5 = [(TSWPStorage *)self hasTrackedChanges];
    if (v5)
    {
      v6 = [(TSWPStorage *)self rangeForTrackedChanges:a3];
      v8 = v6 + v7;
      while (1)
      {
        v9 = [(TSWPStorage *)self changeAtCharIndex:v6 attributeKind:15 effectiveRange:&v14];
        v10 = [(TSWPStorage *)self changeAtCharIndex:v6 attributeKind:16 effectiveRange:&v12];
        if (v9)
        {
          if (([v9 isHidden] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }
        }

        if (v10)
        {
          if (([v10 isHidden] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }
        }

        if (v13 + v12 >= (v15 + v14))
        {
          v6 = v15 + v14;
        }

        else
        {
          v6 = v13 + v12;
        }

        if (v6 >= v8)
        {
          LOBYTE(v5) = 0;
          return v5;
        }
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)changeViewSettingsDidChange
{
  v4 = [(TSWPStorage *)self range];

  [(TSWPStorage *)self p_didChangeRange:v4 delta:v3 broadcastKind:0, 0];
}

- (BOOL)highlightsAllowed
{
  v3 = [(TSWPStorage *)self wpKind];
  LOBYTE(v4) = (v3 & 0xFFFFFFFD) == 0 || v3 == 3;
  if (v3 <= 3 && v3 != 1)
  {
    objc_opt_class();
    [(TSWPStorage *)self parentInfo];
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = v5;
      if ([v5 supportsAttachedComments])
      {
        documentRoot = self->_documentRoot;
        if (documentRoot)
        {
          return ![(TSKDocumentRoot *)documentRoot documentDisallowsHighlightsOnStorage:v6];
        }

        else
        {
          LOBYTE(v4) = 1;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (id)p_replacementsForSelection:(id)a3 withString:(id)a4 changeSession:(id)a5 shouldTrackDeletions:(BOOL)a6
{
  v9 = [MEMORY[0x277CBEB18] array];
  if (a5)
  {
    v14.location = [a3 range];
    v14.length = v10;
    TSWPRangeVector::TSWPRangeVector(&v13, &v14);
  }

  v11 = [[TSWPTextReplacement alloc] initWithSelection:a3 string:a4];
  [v9 addObject:v11];

  [v9 sortUsingComparator:&__block_literal_global_76];
  return v9;
}

- (void)p_handleChangeSplittingForInsertedRange:(_NSRange)a3 changeSession:(id)a4 undoTransaction:(void *)a5
{
  v26 = a3;
  if (a3.length)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9;
      v11 = *(&unk_26CA67968 + v8);
      v12 = [(TSWPStorage *)self attributeArrayForKind:v11];
      if (v12)
      {
        v13 = v12;
        TSWPAttributeArray::begin(v12, &v26, &v24);
        TSWPAttributeArray::end(v13, &v26, v23);
        for (i = v25; i != v23[1]; i = ++v25)
        {
          v15 = v24->var4 + 16 * i;
          v16 = *(v15 + 1);
          if (v16)
          {
            if ([(TSWPStorage *)self p_shouldInsertionSplitChange:*(v15 + 1) changeSession:a4])
            {
              v17 = TSWPAttributeArray::rangeForAttributeIndex(v24, v25);
              if (v17 < v26.location)
              {
                v19 = v17 + v18;
                if (v17 + v18 > v26.length + v26.location)
                {
                  v20 = [v16 copyWithContext:{-[TSPObject context](self, "context")}];
                  if (v26.length + v26.location <= v19)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = v26.length + v26.location;
                  }

                  if (v26.length + v26.location >= v19)
                  {
                    v22 = v19;
                  }

                  else
                  {
                    v22 = v26.length + v26.location;
                  }

                  [(TSWPStorage *)self applyObject:v20 toCharRange:v22 forKind:v21 - v22 dolcContext:v11 undoTransaction:0, a5];
                  [(TSWPStorage *)self applyObject:0 toCharRange:v26.location forKind:v26.length dolcContext:v11 undoTransaction:0, a5];
                }
              }
            }
          }
        }
      }

      v9 = 0;
      v8 = 1;
    }

    while ((v10 & 1) != 0);
  }
}

- (BOOL)p_shouldInsertionSplitChange:(id)a3 changeSession:(id)a4
{
  if (a4)
  {
    return [a3 canMergeWithKind:1 session:?] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)stashBroadcaster
{
  if (!objc_getAssociatedObject(self, "TSTStorageBroadcaster_Key"))
  {
    objc_setAssociatedObject(self, "TSTStorageBroadcaster_Key", self->_broadcaster, 0x301);
    self->_broadcaster = 0;
  }
}

- (void)unstashBroadcaster
{
  AssociatedObject = objc_getAssociatedObject(self, "TSTStorageBroadcaster_Key");
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
    if (self->_broadcaster)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TablesAdditions) unstashBroadcaster]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSWPStorage_TablesAdditions.mm"), 82, @"swapping in the stashed broadcaster, so the real one should be nil!"}];
      broadcaster = self->_broadcaster;
      if (broadcaster)
      {
      }
    }

    self->_broadcaster = v4;

    objc_setAssociatedObject(self, "TSTStorageBroadcaster_Key", 0, 0x301);
  }
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)hyperlinkCellID
{
  v2 = [(TSWPStorage *)self attributeArrayForKind:10];
  if (v2)
  {
    v3 = v2;
    v4 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v2, 0);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TablesAdditions) hyperlinkCellID]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSWPStorage_TablesAdditions.mm"), 101, @"cell attribute array should not be empty"}];
    }

    v7 = v3->var4 + 16 * v4;
    v8 = *(v7 + 8);
    v9 = *(v7 + 10);
    if (v9 >= 0x100)
    {
      [TSWPStorage(TablesAdditions) hyperlinkCellID];
      v10 = 16711680;
    }

    else
    {
      v10 = v9 << 16;
    }

    return (v10 | v8);
  }

  else
  {
    return 0xFFFFFF;
  }
}

- (void)setHyperlinkCellID:(id)a3
{
  v4 = *&a3 & 0xFFFFFF;
  if (([(TSWPStorage *)self hyperlinkCellID]& 0xFFFFFF) != (*&a3 & 0xFFFFFF))
  {
    v5 = [(TSWPStorage *)self attributeArrayForKind:10 withCreate:1 undoTransaction:0];
    if (v5)
    {
      v6 = v5;
      (*(v5->var0 + 7))(v5, 0, v5->var2, 0);
      v7 = 0;
      v8 = v4;
      TSWPAttributeArray::insertAttribute(v6, &v7, 0, 0, 0);
    }
  }
}

- (BOOL)changesWithPageCount
{
  v3 = [(TSWPStorage *)self attachmentCount];
  if (v3)
  {
    v4 = v3;
    if ([-[TSWPStorage attachmentAtAttachmentIndex:outCharIndex:](self attachmentAtAttachmentIndex:0 outCharIndex:{0), "changesWithPageCount"}])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v5 = 1;
      do
      {
        v6 = v5;
        if (v4 == v5)
        {
          break;
        }

        v7 = [-[TSWPStorage attachmentAtAttachmentIndex:outCharIndex:](self attachmentAtAttachmentIndex:v5 outCharIndex:{0), "changesWithPageCount"}];
        v5 = v6 + 1;
      }

      while (!v7);
      LOBYTE(v3) = v6 < v4;
    }
  }

  return v3;
}

- (BOOL)hasAttachmentsThatChangeWithPageNumberOrPageCount
{
  v3 = [(TSWPStorage *)self attachmentCount];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      v6 = [(TSWPStorage *)self attachmentAtAttachmentIndex:v5 outCharIndex:0];
      if (([v6 changesWithPageNumber] & 1) != 0 || objc_msgSend(v6, "changesWithPageCount"))
      {
        break;
      }

      if (v4 == ++v5)
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

@end