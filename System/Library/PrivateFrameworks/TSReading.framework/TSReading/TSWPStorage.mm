@interface TSWPStorage
+ (TSWPAttributeArray)createAttributeArrayForKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
+ (TSWPAttributeArray)createEmptyAttributeArrayForKind:(unsigned int)kind;
+ (id)filterText:(id)text removingAttachments:(BOOL)attachments;
+ (id)plainTextPasteStringForStorages:(id)storages forcePlainText:(BOOL)text;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)hyperlinkCellID;
- (BOOL)anchoredDrawableAttachmentCharacterAtCharIndex:(unint64_t)index;
- (BOOL)canBeStoredInAStringValueCell;
- (BOOL)canPasteAsPlainText;
- (BOOL)canPasteAsPlainTextWithUniformParagraphs;
- (BOOL)canUserReplaceText;
- (BOOL)changesWithPageCount;
- (BOOL)hasAttachmentsThatChangeWithPageNumberOrPageCount;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasDeletionInRange:(_NSRange)range;
- (BOOL)hasSectionForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasSmartFields;
- (BOOL)hasSmartFieldsInRange:(_NSRange)range;
- (BOOL)hasVisibleText;
- (BOOL)highlightsAllowed;
- (BOOL)isEmptyParagraphSelection:(id)selection outRange:(_NSRange *)range;
- (BOOL)isThemeContent;
- (BOOL)isWholeParagraphsForRange:(_NSRange)range ignoreAttachmentCharacters:(BOOL)characters requireParagraphBreakSelected:(BOOL)selected;
- (BOOL)isWritingDirectionRightToLeftForListAtParIndex:(unint64_t)index;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(unint64_t)index;
- (BOOL)p_hasDeletedTextAtCharIndex:(unint64_t)index requireHidden:(BOOL)hidden range:(_NSRange *)range;
- (BOOL)p_hasGoodAttributesForPlainTextPaste;
- (BOOL)p_passesExtraTablesChecksForStoringInAStringValueCell;
- (BOOL)p_shouldInsertionSplitChange:(id)change changeSession:(id)session;
- (BOOL)paragraphHasListLabelAtCharIndex:(unint64_t)index;
- (BOOL)selectionContainsVisibleTrackedChanges:(id)changes;
- (BOOL)setDOLCSuppressed:(BOOL)suppressed;
- (BOOL)styleOverridesAppliedToRange:(_NSRange)range;
- (BOOL)textIsVertical;
- (NSString)debugDescription;
- (NSString)description;
- (TSWPAttributeArray)attributeArrayForKind:(unsigned int)kind withCreate:(BOOL)create fromUndo:(BOOL)undo undoTransaction:(TSWPStorageTransaction *)transaction;
- (TSWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)index styleProvider:(unint64_t)provider;
- (TSWPParagraphEnumerator)paragraphEnumeratorAtParIndex:(SEL)index styleProvider:(unint64_t)provider;
- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)range styleProvider:(_NSRange)provider;
- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)range styleProvider:(_NSRange)provider requireHidden:(id)hidden;
- (TSWPRangeVector)deletedRangeVectorInRange:(SEL)range;
- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(int)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0;
- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(int)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0 paragraphDirection:(int)self1;
- (_NSRange)attachmentIndexRangeForTextRange:(_NSRange)range;
- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards;
- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards attributeKind:(unsigned int)kind;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)footnoteRangeForTextRange:(_NSRange)range;
- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range;
- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session;
- (_NSRange)insertSection:(id)section atCharIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session;
- (_NSRange)insertSpecialCharacter:(unsigned __int16)character object:(id)object kind:(unsigned int)kind range:(_NSRange)range dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session;
- (_NSRange)nextWordFromIndex:(unint64_t)index forward:(BOOL)forward;
- (_NSRange)p_RelocateNonSelectedAnchorsInRange:(_NSRange)range selectionInfos:(id)infos undoTransaction:(TSWPStorageTransaction *)transaction;
- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)fields;
- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex handleNextWordWhitespace:(BOOL)whitespace;
- (_NSRange)p_replaceCharactersInLogicalSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id *)data changeSession:(id)session undoTransaction:(TSWPStorageTransaction *)transaction outInsertedRange:(_NSRange *)range;
- (_NSRange)paragraphIndexRangeForCharRange:(_NSRange)range;
- (_NSRange)range;
- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)words;
- (_NSRange)rangeByExtendingRangeToLineBreak:(_NSRange)break;
- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace;
- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace skipVisibleDeleted:(BOOL)deleted;
- (_NSRange)rangeByTrimmingRange:(_NSRange)range withBlock:(id)block;
- (_NSRange)rangeForChange:(id)change;
- (_NSRange)rangeForHighlight:(id)highlight;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)rangeForSelectionWithInsertionSelection:(id)selection;
- (_NSRange)rangeForTrackedChanges:(id)changes;
- (_NSRange)rangeOfAnnotationWithOptions:(unint64_t)options range:(_NSRange)range;
- (_NSRange)rangeOfParagraphBreakingCharacter:(unsigned __int16)character backwards:(BOOL)backwards range:(_NSRange)range;
- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options range:(_NSRange)range;
- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options updatingSearchRange:(_NSRange *)range;
- (_NSRange)replaceAllOccurrencesOfObject:(id)object withObject:(id)withObject forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (_NSRange)replaceAllOccurrencesOfStyle:(id)style withStyle:(id)withStyle undoTransaction:(TSWPStorageTransaction *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withStorage:(id)storage usePasteRules:(BOOL)rules dolcContext:(id)context undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string notifyObservers:(BOOL)observers undoTransaction:(TSWPStorageTransaction *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string undoTransaction:(TSWPStorageTransaction *)transaction;
- (_NSRange)replaceCharactersInSelection:(id)selection withStorage:(id)storage usePasteRules:(BOOL)rules dolcContext:(id)context changeSession:(id)session undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id *)data changeSession:(id)session undoTransaction:(TSWPStorageTransaction *)transaction outInsertedRange:(_NSRange *)range;
- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)index;
- (_NSRange)textRangeForListAtCharIndex:(unint64_t)index;
- (_NSRange)textRangeForListsInCharRange:(_NSRange)range;
- (_NSRange)textRangeForParagraphAtCharIndex:(unint64_t)index;
- (_NSRange)textRangeForParagraphAtIndex:(unint64_t)index;
- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)range;
- (_NSRange)textRangeForParagraphsInRange:(_NSRange)range;
- (_NSRange)textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (__CTFont)createFontAtCharIndex:(unint64_t)index scaleTextPercent:(unint64_t)percent effectiveRange:(_NSRange *)range styleProvider:(id)provider;
- (id)attachmentAtAttachmentIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)bestCharacterLanguageForTextRange:(_NSRange)range;
- (id)changeAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)changeAtCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)changeDetailsAtCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)changeDetailsForChange:(id)change withRange:(_NSRange)range;
- (id)characterStyleAtCharIndex:(unint64_t)index left:(BOOL)left effectiveRange:(_NSRange *)range;
- (id)childEnumerator;
- (id)childEnumeratorForRange:(_NSRange)range;
- (id)childInfos;
- (id)columnStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)columnStyleAtColumnStyleIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)copyWithContext:(id)context;
- (id)deletedRangesInRange:(_NSRange)range;
- (id)dictationAndAutocorrectionKeyAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)editableSmartFieldAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)extendSelectionForTopicChildren:(id)children;
- (id)extendSelectionToIncludeSmartFields:(id)fields;
- (id)fontNameAtCharIndex:(unint64_t)index size:(double *)size effectiveRange:(_NSRange *)range styleProvider:(id)provider;
- (id)footnoteAtFootnoteIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex;
- (id)footnoteMarkAtCharIndex:(unint64_t)index;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:(unint64_t)index;
- (id)footnoteStorages;
- (id)glyphVariantDataAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)hiddenRangesInRange:(_NSRange)range;
- (id)languageAtParIndex:(unint64_t)index useStringTokenizer:(BOOL)tokenizer useCreationLanguage:(BOOL)language;
- (id)languageForTextRange:(_NSRange)range useStringTokenizer:(BOOL)tokenizer useCreationLanguage:(BOOL)language;
- (id)listStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags;
- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags kind:(int)kind;
- (id)nextChangeFromCharIndex:(unint64_t)index afterChange:(id)change changeRange:(_NSRange *)range;
- (id)nsAttributedStringWithDefaultAttributeDelegateWithLayoutParent:(id)parent;
- (id)nsAttributedSubstringFromRange:(_NSRange)range delegate:(id)delegate scale:(double)scale applyChanges:(BOOL)changes includeInlineDrawables:(BOOL)drawables withLayoutParent:(id)parent;
- (id)nsAttributedSubstringFromRange:(_NSRange)range scale:(double)scale applyChanges:(BOOL)changes includeInlineDrawables:(BOOL)drawables withLayoutParent:(id)parent;
- (id)nsAttributedSubstringWithAttachmentsRemovedFromRange:(_NSRange)range withLayoutParent:(id)parent;
- (id)objectAtLocationAtExactCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)pDefaultSectionForContext:(id)context;
- (id)pDrawableInfoFromImporter:(id)importer error:(id *)error;
- (id)pExportAttributes:(unint64_t)attributes effectiveRange:(_NSRange *)range stickyFont:(id *)font scale:(double)scale;
- (id)pExportParagraphAttributes:(id)attributes nextParagraphStyle:(id)style scale:(double)scale;
- (id)pFindValidInsertionCharStyleFromCharIndex:(unint64_t)index;
- (id)pImportParagraphAttributes:(id)attributes paragraphStyle:(id)style;
- (id)pNSAttributedStringWithAttributeDelegate:(id)delegate ignoreLists:(BOOL)lists stripTextualAttachments:(BOOL)attachments stripGraphicalAttachments:(BOOL)graphicalAttachments stripInlineAttachments:(BOOL)inlineAttachments attachmentChar:(id)char scale:(double)scale withLayoutParent:(id)self0;
- (id)pNSAttributedStringWithDefaultDelegateIgnoreLists:(BOOL)lists stripTextualAttachments:(BOOL)attachments stripGraphicalAttachments:(BOOL)graphicalAttachments stripInlineAttachments:(BOOL)inlineAttachments attachmentChar:(id)char scale:(double)scale withLayoutParent:(id)parent;
- (id)pOverrideObjectBeforeReplacingCharactersInRange:(_NSRange)range withString:(id)string withInsertionBehavior:(int)behavior;
- (id)pOverrideObjectBeforeReplacingCharactersInSelection:(id)selection withString:(id)string;
- (id)pParagraphStyleWithFrequentAttributesInString:(id)string withinStringRange:(_NSRange)range currentParagraphStyle:(id)style;
- (id)pTextListsFromListStyle:(id)style atLevel:(unint64_t)level labelTypeMap:(id)map;
- (id)p_replacementsForSelection:(id)selection withString:(id)string changeSession:(id)session shouldTrackDeletions:(BOOL)deletions;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)plainTextStringFromRange:(_NSRange)range convertTextualAttachments:(BOOL)attachments includeChildTextStorages:(BOOL)storages forExport:(BOOL)export withLayoutParent:(id)parent;
- (id)previousChangeFromCharIndex:(unint64_t)index beforeChange:(id)change changeRange:(_NSRange *)range;
- (id)referencedStyles;
- (id)referencedStylesOfClass:(Class)class;
- (id)relocateNonSelectedAnchorsInSelection:(id)selection undoTransaction:(TSWPStorageTransaction *)transaction;
- (id)searchForAnnotationsWithHitBlock:(id)block;
- (id)searchForString:(id)string options:(unint64_t)options onHit:(id)hit;
- (id)searchInRange:(_NSRange)range forString:(id)string options:(unint64_t)options onHit:(id)hit;
- (id)sectionAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)sectionAtSectionIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unsigned int)kind intersectingRange:(_NSRange)range passingTest:(id)test;
- (id)stringValue;
- (id)substringWithSelection:(id)selection;
- (id)textSourceForLayoutInRange:(_NSRange)range;
- (id)valueForBIUProperties:(id)properties;
- (id)valueForBIUProperties:(id)properties selection:(id)selection insertionStyle:(id)style;
- (id)valueForProperty:(int)property atCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (int)compareAttributeArray1:(TSWPAttributeArray *)array1 array2:(TSWPAttributeArray *)array2 range1:(_NSRange)range1 range2:(_NSRange)range2 attributeIndex1:(unint64_t)index1 attributeIndex2:(unint64_t)index2;
- (int)compareAttributeArray:(TSWPAttributeArray *)array range:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange;
- (int)compareRange:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange options:(unint64_t)options;
- (int)writingDirectionForParagraphAtCharIndex:(unint64_t)index;
- (int)writingDirectionForParagraphAtParIndex:(unint64_t)index;
- (int64_t)contentWritingDirection;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(__CFLocale *)locale hyphenChar:(unsigned int *)char;
- (int64_t)pMapListsFromStorageRange:(_NSRange)range toString:(id)string atStringLoc:(unint64_t)loc textListMap:(id)map;
- (unint64_t)attachmentCount;
- (unint64_t)attachmentIndexAtCharIndex:(unint64_t)index;
- (unint64_t)attachmentIndexForInsertionAtCharIndex:(unint64_t)index;
- (unint64_t)autoNumberFootnoteCountForRange:(_NSRange)range;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage;
- (unint64_t)characterStyleAttributeCount;
- (unint64_t)columnStyleCount;
- (unint64_t)emptyParagraphCount:(_NSRange)count;
- (unint64_t)findCharIndexForAttachment:(id)attachment;
- (unint64_t)findCharIndexForFootnoteAttachment:(id)attachment;
- (unint64_t)findCharacterIndexForContainedInfo:(id)info;
- (unint64_t)findNextParagraphStyleChange:(unint64_t)change maxCharIndex:(unint64_t)index;
- (unint64_t)firstParIndexInListAtParIndex:(unint64_t)index;
- (unint64_t)footnoteCount;
- (unint64_t)footnoteIndexForCharIndex:(unint64_t)index;
- (unint64_t)footnoteIndexForFootnote:(id)footnote;
- (unint64_t)footnoteIndexForFootnoteStorage:(id)storage;
- (unint64_t)indexAfterLastVisibleCharInRange:(_NSRange)range;
- (unint64_t)indexForCharacter:(unsigned __int16)character startCharIndex:(unint64_t)index;
- (unint64_t)listNumberForParagraphEnumerator:(const TSWPParagraphEnumerator *)enumerator numberingData:(id *)data;
- (unint64_t)listNumberForParagraphIndex:(unint64_t)index numberingData:(id *)data;
- (unint64_t)listStartAtCharIndex:(unint64_t)index;
- (unint64_t)listStyleCount;
- (unint64_t)nextCharacterIndex:(unint64_t)index;
- (unint64_t)p_indexOfFirstNonDeletedCharInRange:(_NSRange)range requireVisible:(BOOL)visible;
- (unint64_t)paragraphCount;
- (unint64_t)paragraphIndexAtCharIndex:(unint64_t)index;
- (unint64_t)paragraphLevelAtCharIndex:(unint64_t)index;
- (unint64_t)paragraphLevelAtParIndex:(unint64_t)index;
- (unint64_t)previousCharacterIndex:(unint64_t)location forDelete:(BOOL)delete;
- (unint64_t)sectionCount;
- (unint64_t)sectionIndexForCharIndex:(unint64_t)index;
- (unint64_t)sectionIndexForSection:(id)section;
- (unint64_t)selectedParagraphBreakCount:(_NSRange)count;
- (unint64_t)wordCount;
- (unsigned)disallowedElementKinds;
- (unsigned)paragraphFlagsAtCharIndex:(unint64_t)index;
- (void)addAllDictationAndAutocorrectionKeyRangesInRange:(_NSRange)range toRanges:(void *)ranges;
- (void)addGlyphVariantData:(id)data toRange:(_NSRange)range;
- (void)addObserver:(id)observer;
- (void)addSmartField:(id)field toRange:(_NSRange)range dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)appendSection:(id)section charIndex:(unint64_t)index undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyChange:(id)change changeRange:(_NSRange)range accept:(BOOL)accept undoTransaction:(void *)transaction;
- (void)applyChanges:(BOOL)changes inRange:(_NSRange)range inSelectionRange:(_NSRange)selectionRange outChangedRange:(_NSRange *)changedRange outSelectionRange:(_NSRange *)outSelectionRange undoTransaction:(void *)transaction forceAll:(BOOL)all;
- (void)applyDataValue:(unsigned int)value toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphsInCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyObject:(id)object toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyObject:(id)object toParagraphsInCharRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)applyWritingDirection:(int)direction toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)autoUpdateField:(id)field withRange:(_NSRange)range documentRoot:(id)root returningInsertedRange:(_NSRange *)insertedRange;
- (void)autoUpdateSmartFieldsWithDocumentRoot:(id)root;
- (void)changeViewSettingsDidChange;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)compress:(TSWPStorageTransaction *)compress;
- (void)compressAttributeArrayKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)continueSearch:(id)search;
- (void)dealloc;
- (void)enumerateAttachmentsInTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateAttachmentsOfClass:(Class)class inTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateParagraphsIntersectingTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateSmartFieldsWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)filterInvalidContentForStorage:(id)storage undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)filterSectionBreaksFromStorage:(id)storage undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)findChangesInRange:(_NSRange)range onHit:(id)hit;
- (void)fixGlyphVariantFontsForRange:(_NSRange)range;
- (void)insertObject:(id)object charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)insertParagraphData:(id)data charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)invalidateCharIndexForAttachment:(id)attachment;
- (void)invalidateFootnoteAttachmentCharIndexes;
- (void)invalidateForStyle:(id)style;
- (void)invalidatePageCountAttachmentCharIndexes:(BOOL)indexes;
- (void)lowLevelApplyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)pApplyOverrideObjectAfterReplacingCharactersInRange:(_NSRange)range withString:(id)string overrideObject:(id)object undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)pApplyOverrideObjectAfterReplacingCharactersInSelection:(id)selection withString:(id)string overrideObject:(id)object undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)pMapAttributesFromAttributedString:(id)string ontoRange:(_NSRange)range asCharacterStylesOnly:(BOOL)only;
- (void)p_attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[19] attributesTable:(id)table[19] effectiveRange:(_NSRange *)range;
- (void)p_didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(int)kind;
- (void)p_fillMarkers:(void *)markers startingAtCharIndex:(unint64_t)index forCount:(unint64_t)count;
- (void)p_fillMarkers:(void *)markers string:(id)string length:(unint64_t)length hasAttachments:(BOOL *)attachments hasFootnotes:(BOOL *)footnotes hasBreaks:(BOOL *)breaks;
- (void)p_handleChangeSplittingForInsertedRange:(_NSRange)range changeSession:(id)session undoTransaction:(void *)transaction;
- (void)p_lowLevelReplaceCharactersInRange:(_NSRange)range withString:(id)string length:(unint64_t)length undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)p_replaceCharactersInSelection:(id)selection withString:(id)string length:(unint64_t)length undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)paragraphFlags:(unsigned __int16 *)flags andLevel:(unint64_t *)level atCharIndex:(unint64_t)index;
- (void)removeGlyphVariantDataFromRange:(_NSRange)range;
- (void)removeSmartField:(id)field fromRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string options:(unint64_t)options changedRange:(_NSRange *)changedRange changeDelta:(int64_t *)delta undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)replaceSectionAtSectionIndex:(unint64_t)index withSection:(id)section dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)replaceWithAttachment:(id)attachment forAttachmentIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setDictationAndAutocorrection:(id)autocorrection forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setDocumentRoot:(id)root;
- (void)setGeometry:(id)geometry;
- (void)setHyperlinkCellID:(id)d;
- (void)setLanguage:(id)language forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setListStart:(unint64_t)start forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setParagraphFlags:(unsigned __int16)flags forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setParagraphLevel:(unint64_t)level atParIndex:(unint64_t)index undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setParagraphLevel:(unint64_t)level forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setParagraphWritingDirection:(int)direction forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)setWPKind:(int)kind undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)smartFieldDidChange:(id)change;
- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert attributeKind:(unsigned int)kind dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)stashBroadcaster;
- (void)transferAttributeArraySource:(TSWPAttributeArray *)source forSourceRange:(_NSRange)range toDestStorage:(id)storage objectContext:(id)context dolcContext:(id)dolcContext flags:(int)flags;
- (void)transferAttributeArraySource:(TSWPAttributeArray *)source toAttributeArrayDest:(TSWPAttributeArray *)dest atCharIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)unstashBroadcaster;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPStorage

+ (id)plainTextPasteStringForStorages:(id)storages forcePlainText:(BOOL)text
{
  v29 = *MEMORY[0x277D85DE8];
  if (!text)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [storages countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(storages);
        }

        if (![*(*(&v23 + 1) + 8 * v8) canPasteAsPlainText])
        {
          return 0;
        }

        if (v6 == ++v8)
        {
          v6 = [storages countByEnumeratingWithState:&v23 objects:v28 count:16];
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
  result = [storages countByEnumeratingWithState:&v19 objects:v27 count:16];
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
        objc_enumerationMutation(storages);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      range = [v14 range];
      v17 = [v14 stringEquivalentFromRange:range withLayoutParent:{v16, 0}];
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

    v10 = [storages countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (id)plainTextStringFromRange:(_NSRange)range convertTextualAttachments:(BOOL)attachments includeChildTextStorages:(BOOL)storages forExport:(BOOL)export withLayoutParent:(id)parent
{
  exportCopy = export;
  storagesCopy = storages;
  length = range.length;
  location = range.location;
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
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_conversion) plainTextStringFromRange:convertTextualAttachments:includeChildTextStorages:forExport:withLayoutParent:]"];
        [currentHandler handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion.mm"), 228, @"Bad charIndex"}];
      }

      else
      {
        if (!attachments)
        {
          goto LABEL_32;
        }

        if (v40)
        {
          if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
          {
            if (objc_opt_respondsToSelector())
            {
              stringEquivalent = [v40 performSelector:sel_stringEquivalentWithLayoutParent_ withObject:parent];
            }

            else
            {
              stringEquivalent = [v40 stringEquivalent];
            }

            if (stringEquivalent)
            {
              v45 = stringEquivalent;
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

          if (storagesCopy)
          {
            if (exportCopy && (objc_opt_respondsToSelector() & 1) != 0)
            {
              textRepresentationForExport = [v40 textRepresentationForExport];
LABEL_37:
              v48 = textRepresentationForExport;
              if (!textRepresentationForExport)
              {
                goto LABEL_42;
              }

              v49 = [textRepresentationForExport length];
              if (!v49)
              {
                goto LABEL_42;
              }

              v50 = [v48 plainTextStringFromRange:0 convertTextualAttachments:v49 includeChildTextStorages:1 forExport:1 withLayoutParent:{exportCopy, parent}];
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
                textRepresentationForExport = [v40 textRepresentationForCopy];
                goto LABEL_37;
              }

LABEL_42:
              if (objc_opt_respondsToSelector())
              {
                v52 = [objc_msgSend(v40 "textStorages")];
                nextObject = [v52 nextObject];
                if (nextObject)
                {
                  nextObject2 = nextObject;
                  v63 = 0;
                  do
                  {
                    v55 = [nextObject2 length];
                    if (v55)
                    {
                      v56 = [nextObject2 plainTextStringFromRange:0 convertTextualAttachments:v55 includeChildTextStorages:1 forExport:1 withLayoutParent:{exportCopy, parent}];
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

                    nextObject2 = [v52 nextObject];
                  }

                  while (nextObject2);
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

- (id)nsAttributedSubstringFromRange:(_NSRange)range scale:(double)scale applyChanges:(BOOL)changes includeInlineDrawables:(BOOL)drawables withLayoutParent:(id)parent
{
  drawablesCopy = drawables;
  changesCopy = changes;
  v11 = [(TSWPStorage *)self newSubstorageWithRange:range.location context:range.length flags:[(TSPObject *)self context], 7];
  v12 = v11;
  if (changesCopy)
  {
    v13 = MEMORY[0x277D6C268];
    v19 = *MEMORY[0x277D6C268];
    v20 = v19;
    range = [v11 range];
    LOBYTE(v18) = 1;
    [v12 applyChanges:1 inRange:range inSelectionRange:v15 outChangedRange:*v13 outSelectionRange:v13[1] undoTransaction:&v20 forceAll:{&v19, 0, v18}];
  }

  v16 = [v12 pNSAttributedStringWithDefaultDelegateIgnoreLists:1 stripTextualAttachments:0 stripGraphicalAttachments:1 stripInlineAttachments:!drawablesCopy attachmentChar:@" " scale:parent withLayoutParent:scale];

  return v16;
}

- (id)nsAttributedSubstringFromRange:(_NSRange)range delegate:(id)delegate scale:(double)scale applyChanges:(BOOL)changes includeInlineDrawables:(BOOL)drawables withLayoutParent:(id)parent
{
  drawablesCopy = drawables;
  changesCopy = changes;
  v13 = [(TSWPStorage *)self newSubstorageWithRange:range.location context:range.length flags:[(TSPObject *)self context], 7];
  v14 = v13;
  if (changesCopy)
  {
    v15 = MEMORY[0x277D6C268];
    v21 = *MEMORY[0x277D6C268];
    v22 = v21;
    range = [v13 range];
    LOBYTE(v20) = 1;
    [v14 applyChanges:1 inRange:range inSelectionRange:v17 outChangedRange:*v15 outSelectionRange:v15[1] undoTransaction:&v22 forceAll:{&v21, 0, v20}];
  }

  v18 = [v14 pNSAttributedStringWithAttributeDelegate:delegate ignoreLists:1 stripTextualAttachments:0 stripGraphicalAttachments:1 stripInlineAttachments:!drawablesCopy attachmentChar:@" " scale:scale withLayoutParent:parent];

  return v18;
}

- (id)nsAttributedSubstringWithAttachmentsRemovedFromRange:(_NSRange)range withLayoutParent:(id)parent
{
  v5 = [(TSWPStorage *)self newSubstorageWithRange:range.location context:range.length flags:[(TSPObject *)self context], 7];
  v6 = [v5 pNSAttributedStringWithDefaultDelegateIgnoreLists:1 stripTextualAttachments:1 stripGraphicalAttachments:1 stripInlineAttachments:1 attachmentChar:&stru_287D36338 scale:parent withLayoutParent:1.0];

  return v6;
}

- (id)nsAttributedStringWithDefaultAttributeDelegateWithLayoutParent:(id)parent
{
  v5 = objc_alloc_init(TSWPNSAttributedStringAttachmentConversionDelegate);
  v6 = [(TSWPStorage *)self pNSAttributedStringWithAttributeDelegate:v5 ignoreLists:0 stripTextualAttachments:0 stripGraphicalAttachments:0 stripInlineAttachments:0 attachmentChar:0 scale:1.0 withLayoutParent:parent];

  return v6;
}

+ (TSWPAttributeArray)createEmptyAttributeArrayForKind:(unsigned int)kind
{
  switch(kind)
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
        TSWPAttributeArray::TSWPAttributeArray(v4, kind);
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
        TSWPAttributeArray::TSWPAttributeArray(v8, kind);
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
        TSWPAttributeArray::TSWPAttributeArray(v6, kind);
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage(AttributeTables) createEmptyAttributeArrayForKind:]"];
      [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 83, @"createAttributeArrayForKind: bad kind."}];
      v5 = 0;
      break;
  }

  return v5;
}

+ (TSWPAttributeArray)createAttributeArrayForKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v6 = [TSWPStorage createEmptyAttributeArrayForKind:?];
  v7 = v6;
  if (kind > 0x12)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage(AttributeTables) createAttributeArrayForKind:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 116, @"createAttributeArrayForKind: bad kind."}];
  }

  else if (((1 << kind) & 0x40F37) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    TSWPAttributeArray::insertAttribute(v6, v11, 0, 0, transaction);
  }

  return v7;
}

- (TSWPAttributeArray)attributeArrayForKind:(unsigned int)kind withCreate:(BOOL)create fromUndo:(BOOL)undo undoTransaction:(TSWPStorageTransaction *)transaction
{
  attributesTable = self->_attributesTable;
  result = self->_attributesTable[kind];
  if (result)
  {
    v9 = 1;
  }

  else
  {
    v9 = !create;
  }

  if (!v9)
  {
    undoCopy = undo;
    v12 = *&kind;
    v13 = objc_opt_class();
    if (undoCopy)
    {
      result = [v13 createEmptyAttributeArrayForKind:v12];
    }

    else
    {
      result = [v13 createAttributeArrayForKind:v12 undoTransaction:transaction];
    }

    attributesTable[v12] = result;
    if (result)
    {
      result->var5 = self;
    }
  }

  return result;
}

- (void)compressAttributeArrayKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  attributesTable = self->_attributesTable;
  v5 = self->_attributesTable[kind];
  if (v5)
  {
    (*(v5->var0 + 19))(self->_attributesTable[kind], transaction);
    if ((*(v5->var0 + 6))(v5))
    {
      (*(v5->var0 + 1))(v5);
      attributesTable[kind] = 0;
    }
  }
}

- (void)compress:(TSWPStorageTransaction *)compress
{
  v5 = 0;
  do
  {
    [(TSWPStorage *)self compressAttributeArrayKind:v5 undoTransaction:compress];
    v5 = (v5 + 1);
  }

  while (v5 != 19);
}

- (void)p_attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[19] attributesTable:(id)table[19] effectiveRange:(_NSRange *)range
{
  v10 = 0;
  v11 = [(TSWPStorage *)self characterCount]- index;
  indexCopy2 = index;
  do
  {
    if (!interest[v10])
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
      TSWPAttributeArray::rangeForCharIndex(v13, index);
      indexCopy2 = NSIntersectionRangeInclusive();
      v11 = v15;
      v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, index);
    }

    else
    {
      v16 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v13, index);
      indexCopy2 = index;
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
    table[v10++] = var2;
  }

  while (v10 != 19);
  range->location = indexCopy2;
  range->length = v11;
}

- (_NSRange)insertSpecialCharacter:(unsigned __int16)character object:(id)object kind:(unsigned int)kind range:(_NSRange)range dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session
{
  length = range.length;
  location = range.location;
  v11 = *&kind;
  characterCopy = character;
  v13 = *MEMORY[0x277D6C268];
  v34 = *(MEMORY[0x277D6C268] + 8);
  if (((1 << kind) & 0x301) != 0)
  {
    v14 = range.location + 1;
  }

  else
  {
    v14 = range.location;
  }

  if (kind <= 9)
  {
    v15 = v14;
  }

  else
  {
    v15 = range.location;
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&characterCopy length:1];
  [(TSWPStorage *)self replaceCharactersInSelection:[TSWPSelection selectionWithRange:?]changeSession:v16 undoTransaction:0 outInsertedRange:0, session, transaction, 0];

  v17 = [(TSWPStorage *)self attributeArrayForKind:v11 withCreate:1 undoTransaction:transaction];
  if (v17)
  {
    v18 = v17;
    v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v17, v15);
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      TSWPAttributeArray::replaceObjectForAttributeIndex(v18, object, v19, context, transaction);
      v29 = 1;
      v13 = location;
      goto LABEL_13;
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertSpecialCharacter:object:kind:range:dolcContext:undoTransaction:changeSession:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
    v23 = @"insertSpecialCharacter: Bad attribute index.";
    v24 = currentHandler;
    v25 = v21;
    v26 = 236;
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertSpecialCharacter:object:kind:range:dolcContext:undoTransaction:changeSession:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
    v23 = @"insertSpecialCharacter: Bad attribute array.";
    v24 = currentHandler2;
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

- (void)insertObject:(id)object charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  [(TSPObject *)self willModify];
  if (!array)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 266, @"insertObject: Bad attribute array."}];
  }

  if (attributeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:]"];
    [currentHandler2 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 267, @"insertObject: Bad attribute index."}];
  }

  v21[0] = index;
  v21[1] = object;
  TSWPAttributeArray::insertAttribute(array, v21, attributeIndex, context, transaction);
  v19 = TSWPAttributeArray::rangeForAttributeIndex(array, attributeIndex);
  [(TSWPStorage *)self p_didChangeRange:v19 delta:v20 broadcastKind:0, 0];
}

- (void)insertParagraphData:(id)data charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex undoTransaction:(TSWPStorageTransaction *)transaction
{
  [(TSPObject *)self willModify];
  if (!array)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertParagraphData:charIndex:attributeArray:attributeIndex:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 283, @"insertParagraphData: Bad attribute array."}];
  }

  if (attributeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) insertParagraphData:charIndex:attributeArray:attributeIndex:undoTransaction:]"];
    [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 284, @"insertParagraphData: Bad attribute index."}];
  }

  indexCopy = index;
  var0 = data.var0.var0.var0;
  TSWPAttributeArray::insertAttribute(array, &indexCopy, attributeIndex, 0, transaction);
  v17 = TSWPAttributeArray::rangeForAttributeIndex(array, attributeIndex);
  [(TSWPStorage *)self p_didChangeRange:v17 delta:v18 broadcastKind:0, 0];
}

- (void)applyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  v8 = *&kind;
  [(TSWPStorage *)self lowLevelApplyObject:object toCharRange:range.location forKind:range.length dolcContext:*&kind undoTransaction:context];

  [(TSWPStorage *)self compressAttributeArrayKind:v8 undoTransaction:transaction];
}

- (void)lowLevelApplyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  if (kind <= 0x11 && ((1 << kind) & 0x3F0C8) != 0)
  {
    length = range.length;
    location = range.location;
    v13 = [(TSWPStorage *)self attributeArrayForKind:*&kind withCreate:object != 0 undoTransaction:transaction];
    if (v13)
    {
      v14 = v13;
      [(TSPObject *)self willModify];
      (*(v14->var0 + 8))(v14, object, location, length, context, transaction);

      [(TSWPStorage *)self p_didChangeRange:location delta:length broadcastKind:0, 0];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) lowLevelApplyObject:toCharRange:forKind:dolcContext:undoTransaction:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

    [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:309 description:@"applyObject:toCharRange: Bad attribute array."];
  }
}

- (void)applyObject:(id)object toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v7 = *&kind;
  length = range.length;
  location = range.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:transaction];
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
    v19 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:object != 0 undoTransaction:transaction];
    if (v19)
    {
      v20 = v19;
      [(TSPObject *)self willModify];
      v24.location = location;
      v24.length = length;
      TSWPParagraphAttributeArray::applyObjectToParagraphRange(v20, object, v24, v13, transaction);

      [(TSWPStorage *)self p_didChangeRange:v18.location delta:v18.length broadcastKind:0, 0];
    }
  }
}

- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v8 = *&kind;
  length = range.length;
  location = range.location;
  v14 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:transaction];
  if (v14)
  {
    v15 = v14;
    flagsCopy = flags;
    v16 = [(TSWPStorage *)self textRangeForParagraphAtIndex:location];
    v18 = v17;
    v19 = location + length;
    v48.location = [(TSWPStorage *)self textRangeForParagraphAtIndex:?];
    v48.length = v20;
    v46.location = v16;
    v46.length = v18;
    v21 = NSUnionRange(v46, v48);
    v22 = v21.location;
    v23 = [(TSWPStorage *)self attributeArrayForKind:v8 withCreate:1 undoTransaction:transaction];
    if (v23)
    {
      v24 = v23;
      [(TSPObject *)self willModify];
      if (((*(v24->var0 + 4))(v24) & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:]"];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
        v27 = v25;
        v22 = v21.location;
        [currentHandler handleFailureInFunction:v27 file:v26 lineNumber:366 description:@"Do not call this method unless table has paired data."];
      }

      if (level >= 0x10000)
      {
        [TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:];
        LOWORD(level) = -1;
      }

      v44[0] = level;
      v44[1] = flagsCopy;
      TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v24, v44, location, length, v15, transaction);
      parent = [(TSWPStorage *)self listStyleAtParIndex:location + length - 1 effectiveRange:0];
      if ([parent parent])
      {
        parent = [parent parent];
      }

      v29 = MEMORY[0x277D6C268];
      v30 = *MEMORY[0x277D6C268];
      v31 = *(MEMORY[0x277D6C268] + 8);
      paragraphCount = [(TSWPStorage *)self paragraphCount];
      if (v19 < paragraphCount)
      {
        v33 = paragraphCount;
        do
        {
          v34 = [(TSWPStorage *)self listStyleAtParIndex:v19 effectiveRange:v43];
          if (v34 != parent && [v34 parent] != parent)
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
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:]"];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

      [currentHandler2 handleFailureInFunction:v39 file:v40 lineNumber:360 description:@"applyObject: Bad attribute array."];
    }
  }
}

- (void)applyDataValue:(unsigned int)value toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v7 = *&kind;
  length = range.length;
  location = range.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:transaction];
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
    v19 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:1 undoTransaction:transaction];
    if (v19)
    {
      v20 = v19;
      [(TSPObject *)self willModify];
      if (((*(v20->var0 + 5))(v20) & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyDataValue:toParagraphIndexRange:forKind:undoTransaction:]"];
        [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 416, @"Do not call this method unless table has single data."}];
      }

      valueCopy = value;
      if (TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v20, &valueCopy, location, length, v13, transaction))
      {
        [(TSWPStorage *)self p_didChangeRange:v18.location delta:v18.length broadcastKind:0, 0];
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyDataValue:toParagraphIndexRange:forKind:undoTransaction:]"];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

      [currentHandler2 handleFailureInFunction:v23 file:v24 lineNumber:410 description:@"applyObject: Bad attribute array."];
    }
  }
}

- (void)applyWritingDirection:(int)direction toParagraphIndexRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v7 = *&kind;
  length = range.length;
  location = range.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:1 undoTransaction:transaction];
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
    v19 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:1 undoTransaction:transaction];
    if (v19)
    {
      v20 = v19;
      [(TSPObject *)self willModify];
      if (((*(v20->var0 + 5))(v20) & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyWritingDirection:toParagraphIndexRange:forKind:undoTransaction:]"];
        [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 450, @"Do not call this method unless table has single data."}];
      }

      directionCopy = direction;
      if (TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(v20, &directionCopy, location, length, v13, transaction))
      {
        [(TSWPStorage *)self p_didChangeRange:v18.location delta:v18.length broadcastKind:0, 0];
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyWritingDirection:toParagraphIndexRange:forKind:undoTransaction:]"];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

      [currentHandler2 handleFailureInFunction:v23 file:v24 lineNumber:444 description:@"applyObject: Bad attribute array."];
    }
  }
}

- (void)applyObject:(id)object toParagraphsInCharRange:(_NSRange)range forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v7 = *&kind;
  length = range.length;
  location = range.location;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v12)
  {
    v19.location = location;
    v19.length = length;
    v14 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v12, v19);

    [(TSWPStorage *)self applyObject:object toParagraphIndexRange:v14 forKind:v13 undoTransaction:v7, transaction];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyObject:toParagraphsInCharRange:forKind:undoTransaction:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

    [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:470 description:@"No paragraph array."];
  }
}

- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphsInCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  flagsCopy = flags;
  v12 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v12)
  {
    v19.location = location;
    v19.length = length;
    v14 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v12, v19);

    [(TSWPStorage *)self applyFlags:flagsCopy level:level toParagraphIndexRange:v14 forKind:v13 undoTransaction:1, transaction];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphsInCharRange:undoTransaction:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

    [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:481 description:@"No paragraph array."];
  }
}

- (_NSRange)replaceAllOccurrencesOfObject:(id)object withObject:(id)withObject forKind:(unsigned int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  v7 = *&kind;
  if (!withObject)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) replaceAllOccurrencesOfObject:withObject:forKind:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 495, @"replaceAllOccurrencesOfStyle: toReplace is nil."}];
  }

  v13 = [(TSWPStorage *)self attributeArrayForKind:v7 withCreate:0 undoTransaction:transaction];
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
    if (*(v14->var4 + v18) == object)
    {
      TSWPAttributeArray::replaceObjectForAttributeIndex(v14, withObject, v17, 0, transaction);
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

- (void)transferAttributeArraySource:(TSWPAttributeArray *)source forSourceRange:(_NSRange)range toDestStorage:(id)storage objectContext:(id)context dolcContext:(id)dolcContext flags:(int)flags
{
  range1 = range.length;
  if (source)
  {
    if (range.length)
    {
      var1 = source->var1;
      if (var1 <= 0x12)
      {
        location = range.location;
        if (((1 << var1) & 0x63BFF) != 0 || ((1 << var1) & 0x18000) != 0 && (flags & 2) != 0)
        {
          v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(source, range.location);
          v12 = v11 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v11;
          if (v12 < source->var2)
          {
            v49 = 0;
            v47 = 0;
            v51 = location + range1;
            v13 = (16 * v12) | 8;
            v14 = MEMORY[0x277D6C268];
            while (1)
            {
              v15 = v14;
              v16 = TSWPAttributeArray::charIndexForAttributeIndex(source, v12);
              v17 = TSWPAttributeArray::rangeForAttributeIndex(source, v12);
              v19 = v18;
              v20 = (*(source->var0 + 3))(source) ? *(source->var4 + v13) : 0;
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
                  if (v49 || (v26 = [storage attributeArrayForKind:var1 withCreate:0 undoTransaction:0]) != 0)
                  {
                    v27 = v16 - location;
                    v28 = v26;
                    v29 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v26, v27);
                    v49 = v28;
                    if (v29 < v28->var2 && TSWPAttributeArray::charIndexForAttributeIndex(v28, v29) >= v25)
                    {
                      currentHandler = [MEMORY[0x277D6C290] currentHandler];
                      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) transferAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]"];
                      [currentHandler handleFailureInFunction:v43 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"), 659, @"Source and dest tables are out of order."}];
                    }

                    else
                    {
                      v52 = v25;
                      v53 = v20;
                      TSWPAttributeArray::insertAttribute(v28, &v52, ++v47, dolcContext, 0);
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
              if ([storage supportsSectionCopying] && v20)
              {
                v24 = [(objc_object *)v20 copyWithContext:context];
                v20 = v24;
LABEL_67:
                if (v16 > location && v16 <= v51)
                {
                  v34 = v49;
                  if (v49 || (v34 = [storage attributeArrayForKind:var1 withCreate:0 undoTransaction:0]) != 0)
                  {
                    v35 = v47 + 1;
                    v49 = v34;
                    var2 = *(v34 + 16);
                    if (v47 + 1 >= var2)
                    {
                      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
                      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) transferAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]"];
                      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];
                      v39 = v37;
                      v14 = v15;
                      [currentHandler2 handleFailureInFunction:v39 file:v38 lineNumber:617 description:@"Bad par index count."];
                      var2 = v49->var2;
                    }

                    if (v35 < var2)
                    {
                      TSWPAttributeArray::replaceObjectForAttributeIndex(v49, v20, v35, dolcContext, 0);
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
              v40 = source->var2;
              if (v12 < v40)
              {
                if (TSWPAttributeArray::charIndexForAttributeIndex(source, v12) > v51)
                {
                  return;
                }

                v40 = source->var2;
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
                  if (v49 || (v23 = [storage attributeArrayForKind:var1 withCreate:1 undoTransaction:0]) != 0)
                  {
                    v49 = v23;
                    if (v47 < v23->var2)
                    {
                      if (flags)
                      {
                        v41 = [(objc_object *)v20 copyWithContext:context];
                        TSWPAttributeArray::replaceObjectForAttributeIndex(v49, v41, v47, dolcContext, 0);
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

              if ((flags & 8) != 0)
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
                v33 = [(objc_object *)v20 copyWithContext:context];
                v20 = v33;
              }

LABEL_76:
              [storage applyObject:v20 toCharRange:v32 - location forKind:length dolcContext:var1 undoTransaction:{dolcContext, 0}];

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
                v21 = [storage attributeArrayForKind:var1 withCreate:0 undoTransaction:0];
                if (!v21)
                {
                  goto LABEL_83;
                }
              }

              v22 = *(source->var4 + v13);
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

- (int)compareAttributeArray:(TSWPAttributeArray *)array range:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange
{
  if (!array)
  {
    return -2;
  }

  length = otherRange.length;
  location = otherRange.location;
  v8 = range.length;
  v9 = range.location;
  v12 = [storage attributeArrayForKind:array->var1 withCreate:0 undoTransaction:0];
  if (!v12)
  {
    return -2;
  }

  v13 = v12;
  v14 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(array, v9);
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

  v18 = array->var2 - v15;
  v19 = v13->var2 - v17;
  v20 = v18 > v19;
  if (v18 <= v19)
  {
    arrayCopy = v13;
  }

  else
  {
    arrayCopy = array;
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
    arrayCopy2 = v13;
  }

  else
  {
    arrayCopy2 = array;
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

  return [(TSWPStorage *)self compareAttributeArray1:arrayCopy2 array2:arrayCopy range1:v26 range2:v27 attributeIndex1:v23 attributeIndex2:v22, v24, v17];
}

- (int)compareAttributeArray1:(TSWPAttributeArray *)array1 array2:(TSWPAttributeArray *)array2 range1:(_NSRange)range1 range2:(_NSRange)range2 attributeIndex1:(unint64_t)index1 attributeIndex2:(unint64_t)index2
{
  v8 = 0;
  if (array1 && array2)
  {
    index1Copy = index1;
    if (array1->var2 > index1)
    {
      index2Copy = index2;
      if (array2->var2 > index2)
      {
        v8 = 0;
        v35 = range1.location + range1.length;
        v13 = (16 * index1) | 8;
        for (i = (16 * index2) | 8; ; i += 16)
        {
          v15 = TSWPAttributeArray::charIndexForAttributeIndex(array1, index1Copy);
          if (v8 || v15 > v35)
          {
            return v8;
          }

          v16 = TSWPAttributeArray::charIndexForAttributeIndex(array1, index1Copy);
          v17 = TSWPAttributeArray::rangeForAttributeIndex(array1, index1Copy);
          range1 = v18;
          if ((*(array1->var0 + 3))(array1))
          {
            v19 = *(array1->var4 + v13);
          }

          else
          {
            v19 = 0;
          }

          var2 = array2->var2;
          v32 = v19;
          if (index2Copy >= var2)
          {
            v33 = 0x7FFFFFFFFFFFFFFFuLL;
          }

          else
          {
            v33.location = TSWPAttributeArray::rangeForAttributeIndex(array2, index2Copy);
            v33.length = v21;
            var2 = array2->var2;
          }

          if (index2Copy < var2 && (*(array2->var0 + 3))(array2))
          {
            v22 = *(array2->var4 + i);
          }

          else
          {
            v22 = 0;
          }

          v8 = 0;
          var1 = array1->var1;
          if (var1 <= 0x12)
          {
            v24 = 1 << var1;
            if ((v24 & 0x3078) != 0)
            {
              if (v16 < v35)
              {
                v39.location = v17;
                v39.length = range1;
                length = NSIntersectionRange(v39, range1).length;
                if (length != NSIntersectionRange(v33, range2).length || v32 != v22 && (!v32 || !v22 || ([v32 isEqual:v22] & 1) == 0))
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
                v25 = NSIntersectionRange(v38, range1).length;
                if (v25 != NSIntersectionRange(v33, range2).length)
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
                v28 = NSIntersectionRange(v40, range1).length;
                if (v28 == NSIntersectionRange(v33, range2).length)
                {
                  v37 = *(array1->var4 + v13);
                  v36 = *(array2->var4 + i);
                  IsSame = TSWPParagraphAttributeArray::dataIsSame(array1, &v37, &v36);
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
          ++index1Copy;
          ++index2Copy;
          v13 += 16;
          if (index1Copy >= array1->var2)
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

- (id)pFindValidInsertionCharStyleFromCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self paragraphStartAtCharIndex:?];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v5;
  while (1)
  {
    v7 = [(TSWPStorage *)self smartFieldAtCharIndex:index attributeKind:6 effectiveRange:&v10];
    if (!(v7 | [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:index]))
    {
      break;
    }

    indexCopy = v10;
    if (!v7)
    {
      indexCopy = index;
    }

    if (indexCopy > v6)
    {
      index = indexCopy - 1;
      if (indexCopy != 0x8000000000000000)
      {
        continue;
      }
    }

    return 0;
  }

  result = [(TSWPStorage *)self characterStyleAtCharIndex:index effectiveRange:0];
  if (!result)
  {
    return [MEMORY[0x277CBEB68] null];
  }

  return result;
}

- (id)pOverrideObjectBeforeReplacingCharactersInSelection:(id)selection withString:(id)string
{
  range = [selection range];
  v9 = v8;
  styleInsertionBehavior = [selection styleInsertionBehavior];

  return [(TSWPStorage *)self pOverrideObjectBeforeReplacingCharactersInRange:range withString:v9 withInsertionBehavior:string, styleInsertionBehavior];
}

- (id)pOverrideObjectBeforeReplacingCharactersInRange:(_NSRange)range withString:(id)string withInsertionBehavior:(int)behavior
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x277D6C268];
  if (![string length] || !length)
  {
    v11 = [string length];
    null = 0;
    if (!v11 || length)
    {
      return null;
    }

    if (behavior == 2)
    {
      v14 = [(TSWPStorage *)self smartFieldAtCharIndex:location attributeKind:6 effectiveRange:&v17];
      null = 0;
      if (!v14 || v17 != location)
      {
        return null;
      }
    }

    else
    {
      if (behavior == 1)
      {
        if (!location)
        {
          goto LABEL_4;
        }

        null = [(TSWPStorage *)self smartFieldAtCharIndex:location - 1 attributeKind:6 effectiveRange:&v17];
        if (!null)
        {
          return null;
        }

        if (*(&v17 + 1) + v17 != location)
        {
          goto LABEL_4;
        }

        selfCopy2 = self;
        v13 = location - 1;
        goto LABEL_31;
      }

      if (behavior)
      {
        goto LABEL_4;
      }

      if (!location)
      {
        null = [(TSWPStorage *)self length];
        if (null)
        {
          if ([(TSWPStorage *)self smartFieldAtCharIndex:0 attributeKind:6 effectiveRange:&v17])
          {
            goto LABEL_40;
          }

          null = [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:0];
          if (null)
          {
            goto LABEL_40;
          }
        }

        return null;
      }

      if (![(TSWPStorage *)self smartFieldAtCharIndex:location - 1 attributeKind:6 effectiveRange:&v17]|| *(&v17 + 1) + v17 != location)
      {
        null = [(TSWPStorage *)self footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:location - 1];
        if (!null || location == 1)
        {
          if (!null)
          {
            return null;
          }
        }

        else
        {
          null = [(TSWPStorage *)self pFindValidInsertionCharStyleFromCharIndex:location - 2];
          if (null)
          {
            return null;
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

    selfCopy2 = self;
    v13 = location;
LABEL_31:
    null = [(TSWPStorage *)selfCopy2 characterStyleAtCharIndex:v13 effectiveRange:0];
    if (null)
    {
      return null;
    }

    goto LABEL_40;
  }

  if (behavior)
  {
LABEL_4:
    null = 0;
    return null;
  }

  if ((-[TSWPStorage smartFieldAtCharIndex:attributeKind:effectiveRange:](self, "smartFieldAtCharIndex:attributeKind:effectiveRange:", location, 6, &v17) && v17 == location && [objc_opt_class() defaultFieldStyleIdentifier] || (null = -[TSWPStorage footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:](self, "footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:", location)) != 0) && (!location || (null = -[TSWPStorage pFindValidInsertionCharStyleFromCharIndex:](self, "pFindValidInsertionCharStyleFromCharIndex:", location - 1)) == 0))
  {
LABEL_40:
    null = [MEMORY[0x277CBEB68] null];
  }

  return null;
}

- (void)pApplyOverrideObjectAfterReplacingCharactersInSelection:(id)selection withString:(id)string overrideObject:(id)object undoTransaction:(TSWPStorageTransaction *)transaction
{
  range = [selection range];

  [(TSWPStorage *)self pApplyOverrideObjectAfterReplacingCharactersInRange:range withString:v10 overrideObject:string undoTransaction:object, transaction];
}

- (void)pApplyOverrideObjectAfterReplacingCharactersInRange:(_NSRange)range withString:(id)string overrideObject:(id)object undoTransaction:(TSWPStorageTransaction *)transaction
{
  location = range.location;
  v10 = [string length];
  if (object)
  {
    v11 = v10;
    if ([MEMORY[0x277CBEB68] null] == object)
    {
      objectCopy = 0;
    }

    else
    {
      objectCopy = object;
    }

    [(TSWPStorage *)self setCharacterStyle:objectCopy range:location undoTransaction:v11, transaction];
  }
}

- (id)pNSAttributedStringWithDefaultDelegateIgnoreLists:(BOOL)lists stripTextualAttachments:(BOOL)attachments stripGraphicalAttachments:(BOOL)graphicalAttachments stripInlineAttachments:(BOOL)inlineAttachments attachmentChar:(id)char scale:(double)scale withLayoutParent:(id)parent
{
  inlineAttachmentsCopy = inlineAttachments;
  graphicalAttachmentsCopy = graphicalAttachments;
  attachmentsCopy = attachments;
  listsCopy = lists;
  v17 = objc_alloc_init(TSWPNSAttributedStringAttachmentConversionDelegate);
  v18 = [(TSWPStorage *)self pNSAttributedStringWithAttributeDelegate:v17 ignoreLists:listsCopy stripTextualAttachments:attachmentsCopy stripGraphicalAttachments:graphicalAttachmentsCopy stripInlineAttachments:inlineAttachmentsCopy attachmentChar:char scale:scale withLayoutParent:parent];

  return v18;
}

- (id)pNSAttributedStringWithAttributeDelegate:(id)delegate ignoreLists:(BOOL)lists stripTextualAttachments:(BOOL)attachments stripGraphicalAttachments:(BOOL)graphicalAttachments stripInlineAttachments:(BOOL)inlineAttachments attachmentChar:(id)char scale:(double)scale withLayoutParent:(id)self0
{
  attachmentsCopy = attachments;
  listsCopy = lists;
  v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:{-[TSWPStorage string](self, "string")}];
  [objc_msgSend(v14 "mutableString")];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    range = [(TSWPStorage *)self range];
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v61, self, range, v16, 6);
    v17 = *MEMORY[0x277D740E8];
    while (TSWPAttributeEnumerator::nextAttributeIndex(&v61, &v60))
    {
      objc_opt_class();
      v18 = TSUDynamicCast();
      if (v18)
      {
        v19 = [delegate urlForHyperlinkField:v18];
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
      v23 = [(TSWPStorage *)self pExportAttributes:v22 effectiveRange:&v61 stickyFont:&v60 scale:scale];
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

  attachmentCount = [(TSWPStorage *)self attachmentCount];
  v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!attachmentCount && !listsCopy)
  {
    v26 = [(TSWPStorage *)self length];
    selfCopy2 = self;
    v28 = 0;
    v29 = v14;
    v30 = 0;
LABEL_68:
    [(TSWPStorage *)selfCopy2 pMapListsFromStorageRange:v28 toString:v26 atStringLoc:v29 textListMap:v30, v58];
    goto LABEL_69;
  }

  if (attachmentCount)
  {
    delegateCopy = delegate;
    graphicalAttachmentsCopy = graphicalAttachments;
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
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pNSAttributedStringWithAttributeDelegate:ignoreLists:stripTextualAttachments:stripGraphicalAttachments:stripInlineAttachments:attachmentChar:scale:withLayoutParent:]"];
        [currentHandler handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 118, @"Could not find an expected attachment"}];
        v35 = v61;
      }

      if (!listsCopy)
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
        if (!attachmentsCopy)
        {
          v42 = [v40 stringEquivalentWithLayoutParent:parent];
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
            if (!graphicalAttachmentsCopy)
            {
LABEL_45:
              if (!delegateCopy || (objc_opt_respondsToSelector() & 1) == 0 || [v45 isAnchored] && !objc_msgSend(v45, "isHTMLWrap"))
              {
                goto LABEL_55;
              }

              v46 = [delegateCopy attachmentStringForDrawableAttachment:v45];
              if (!v46)
              {
                goto LABEL_55;
              }

              v47 = v46;
              [v14 replaceCharactersInRange:v35 + v31 withAttributedString:{1, v46}];
              v48 = [v47 length];
              if (!listsCopy && [(TSWPStorage *)self paragraphHasListLabelAtCharIndex:v61]&& v48 != 1)
              {
                TSULogErrorInFunction();
              }

              v44 = v31 + v48;
              goto LABEL_37;
            }
          }

          else if (!inlineAttachments)
          {
            goto LABEL_45;
          }
        }
      }

      if (![char length])
      {
        goto LABEL_55;
      }

      [v14 replaceCharactersInRange:v35 + v31 withString:{1, char}];
LABEL_56:
      v32 = v35 + 1;
      v25 = v33;
      if (attachmentCount <= v33++)
      {
        goto LABEL_59;
      }
    }
  }

  v32 = 0;
  v31 = 0;
LABEL_59:
  if (v32 < [(TSWPStorage *)self length]&& !listsCopy)
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
    selfCopy2 = self;
    v29 = v14;
    goto LABEL_68;
  }

LABEL_69:

  return v14;
}

- (id)pExportAttributes:(unint64_t)attributes effectiveRange:(_NSRange *)range stickyFont:(id *)font scale:(double)scale
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0;
  range2.location = 0;
  range2.length = 0;
  v12 = [(TSWPStorage *)self paragraphStyleAtCharIndex:attributes effectiveRange:&v20];
  v13 = [(TSWPStorage *)self characterStyleAtCharIndex:attributes effectiveRange:&range2];
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

    [dictionary addEntriesFromDictionary:{-[TSWPStorage pExportParagraphAttributes:nextParagraphStyle:scale:](self, "pExportParagraphAttributes:nextParagraphStyle:scale:", v12, v15, scale)}];
    [TSWPPropertyConverter mapCharacterPropertiesFromStyle:v12 toNS:dictionary stickyFont:font scale:scale];
  }

  [TSWPPropertyConverter mapCharacterPropertiesFromStyle:v13 secondaryStyle:v12 toNS:dictionary stickyFont:font scale:scale];
  v16 = [dictionary count];
  if (range)
  {
    *range = v20;
    v17.length = range2.length;
    if (range2.length)
    {
      v17.location = range2.location;
      *range = NSIntersectionRange(*range, v17);
    }
  }

  if (v16)
  {
    return dictionary;
  }

  else
  {
    return 0;
  }
}

- (int64_t)pMapListsFromStorageRange:(_NSRange)range toString:(id)string atStringLoc:(unint64_t)loc textListMap:(id)map
{
  if (!range.length)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  v54 = range.location + range.length;
  if (range.location >= range.location + range.length)
  {
    return 0;
  }

  locCopy3 = loc;
  v53 = 0;
  v50 = *MEMORY[0x277D74118];
  v10 = range.location;
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

        v19 = v53 + locCopy3 + v18;
        if (v19 < [string length])
        {
          v20 = [string attribute:v50 atIndex:v19 effectiveRange:0];
          if (v20)
          {
            v21 = v20;
            v22 = [objc_msgSend(string "string")];
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
            locCopy3 = loc;
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
            [string addAttribute:v50 value:v24 range:{v49, v48}];
            v42 = [string labelMarkerStringAtIndex:v49];
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t%@\t", v42];
            v44 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v24, v50, 0}];
            v45 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v43 attributes:v44];
            [string insertAttributedString:v45 atIndex:v49];
            v53 += [v43 length];
          }

          else
          {
            locCopy3 = loc;
          }
        }

        location = range.location;
        length = range.length;
      }
    }

    v10 = v12 + v13;
  }

  while (v12 + v13 < v54);
  return v53;
}

- (id)pExportParagraphAttributes:(id)attributes nextParagraphStyle:(id)style scale:(double)scale
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = objc_alloc_init(MEMORY[0x277D74240]);
  v10 = [attributes valueForProperty:85];
  [v10 amount];
  v12 = v11 * scale;
  mode = [v10 mode];
  if (mode > 1)
  {
    if (mode == 2)
    {
      [v9 setMinimumLineHeight:v12];
    }

    else if (mode != 3)
    {
      goto LABEL_11;
    }

    [v9 setMaximumLineHeight:v12];
    goto LABEL_11;
  }

  if (mode)
  {
    if (mode == 1)
    {
      [v9 setMinimumLineHeight:v12];
    }
  }

  else
  {
    [v9 setLineHeightMultiple:v12];
  }

LABEL_11:
  [attributes floatValueForProperty:88];
  v15 = v14;
  if (style)
  {
    [style floatValueForProperty:87];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = v17 * scale;
  if (v15 * scale >= v18)
  {
    v18 = v15 * scale;
  }

  [v9 setParagraphSpacing:v18];
  [v9 setAlignment:{objc_msgSend(attributes, "intValueForProperty:", 86)}];
  [attributes floatValueForProperty:80];
  [v9 setFirstLineHeadIndent:v19 * scale];
  [attributes floatValueForProperty:81];
  [v9 setHeadIndent:v20 * scale];
  [attributes floatValueForProperty:82];
  v22 = v21 * scale;
  if (v22 > 0.0 && v22 < 468.0)
  {
    [v9 setTailIndent:468.0 - v22];
  }

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v24 = [attributes valueForProperty:84];
  [attributes floatValueForProperty:83];
  [v9 setDefaultTabInterval:v25 * scale];
  if ([v24 count])
  {
    v26 = 0;
    v27 = 1;
    v28 = MEMORY[0x277CBEC10];
    do
    {
      v29 = [v24 tabAtIndex:v26];
      [v29 position];
      v31 = v30 * scale;
      alignment = [v29 alignment];
      if (alignment == 2)
      {
        v33 = 2;
      }

      else
      {
        v33 = alignment == 1;
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

  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277D74118]];

  return dictionary;
}

- (id)pTextListsFromListStyle:(id)style atLevel:(unint64_t)level labelTypeMap:(id)map
{
  if (map)
  {
    if (style)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pTextListsFromListStyle:atLevel:labelTypeMap:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 611, @"Expecting a non-nil labelTypeMap parameter"}];
    if (style)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pTextListsFromListStyle:atLevel:labelTypeMap:]"];
  [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 612, @"Expecting a non-nil listStyle parameter"}];
LABEL_3:
  v7 = MEMORY[0x277CBEB18];

  return [v7 arrayWithCapacity:level + 1];
}

- (void)pMapAttributesFromAttributedString:(id)string ontoRange:(_NSRange)range asCharacterStylesOnly:(BOOL)only
{
  location = range.location;
  v8 = range.location + range.length;
  v9 = [string length];
  v10 = MEMORY[0x277D740C0];
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *MEMORY[0x277D740C0];
    do
    {
      v14 = [objc_msgSend(string attributesAtIndex:v12 effectiveRange:{&v43), "objectForKeyedSubscript:", v13}];
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
      if (!only && v20 == v41 && v21 == v42)
      {
        v16 = [(TSWPStorage *)self pParagraphStyleWithFrequentAttributesInString:string withinStringRange:v20 - location currentParagraphStyle:v19 - v20, v16];
        if (v16)
        {
          [(TSWPStorage *)self setParagraphStyle:v16 forCharRange:v41 undoTransaction:v42, 0];
        }
      }

      while (v21)
      {
        v24 = v22 + v21;
        if (v22 + v21 > [string length])
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pMapAttributesFromAttributedString:ontoRange:asCharacterStylesOnly:]"];
          [currentHandler handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 712, @"Remaining range extends outside attributed string"}];
        }

        v27 = [objc_msgSend(string attributesAtIndex:v22 longestEffectiveRange:&v39 inRange:{v22, v21), "mutableCopy"}];
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
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pMapAttributesFromAttributedString:ontoRange:asCharacterStylesOnly:]"];
          [currentHandler2 handleFailureInFunction:v32 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 746, @"Attribute range extends outside remaining range - expected attribute range to be clamped"}];
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

- (id)pParagraphStyleWithFrequentAttributesInString:(id)string withinStringRange:(_NSRange)range currentParagraphStyle:(id)style
{
  length = range.length;
  location = range.location;
  v9 = range.location + range.length;
  if (range.location + range.length > [string length])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(conversion_private) pParagraphStyleWithFrequentAttributesInString:withinStringRange:currentParagraphStyle:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_conversion_private.mm"), 760, @"Range extends outside attributed string"}];
  }

  v12 = [MEMORY[0x277CBEB58] set];
  if (location < v9)
  {
    v13 = location;
    do
    {
      v25 = 0;
      v26 = 0;
      [v12 addObjectsFromArray:{objc_msgSend(objc_msgSend(string, "attributesAtIndex:effectiveRange:", v13, &v25), "allKeys")}];
      v13 = v26 + v25;
    }

    while (v26 + v25 < v9);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objectEnumerator = [v12 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
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
          v21 = [string attribute:nextObject2 atIndex:v20 longestEffectiveRange:&v25 inRange:{location, length}];
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
          [dictionary setObject:v18 forKeyedSubscript:nextObject2];
        }
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v22 = +[TSSPropertyMap propertyMap];
  [v22 addValuesFromPropertyMap:{+[TSWPPropertyConverter mapCharacterPropertiesFromNS:](TSWPPropertyConverter, "mapCharacterPropertiesFromNS:", dictionary)}];
  [v22 addValuesFromPropertyMap:{-[TSWPStorage pImportParagraphAttributes:paragraphStyle:](self, "pImportParagraphAttributes:paragraphStyle:", dictionary, 0)}];
  return [(TSSStylesheet *)self->_stylesheet variationOfStyle:style propertyMap:v22];
}

- (id)pImportParagraphAttributes:(id)attributes paragraphStyle:(id)style
{
  v4 = [attributes objectForKeyedSubscript:{*MEMORY[0x277D74118], style}];
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
  alignment = [v5 alignment];
  if (alignment >= 0x80000000)
  {
    [TSWPStorage(conversion_private) pImportParagraphAttributes:paragraphStyle:];
  }

  else if (alignment <= 0xFFFFFFFF7FFFFFFFLL)
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
  tabStops = [v5 tabStops];
  if ([tabStops count])
  {
    v22 = objc_alloc_init(TSWPTabs);
    if ([tabStops count])
    {
      v23 = 0;
      do
      {
        v24 = [tabStops objectAtIndexedSubscript:v23];
        alignment2 = [v24 alignment];
        [v24 location];
        v27 = v26;
        if (alignment2 == 2)
        {
          v28 = 2;
        }

        else
        {
          v28 = alignment2 == 1;
        }

        v29 = +[TSWPTab tab];
        [v29 setPosition:v27];
        [v29 setAlignment:v28];
        [(TSWPTabs *)v22 insertTab:v29];
        ++v23;
      }

      while (v23 < [tabStops count]);
    }

    [v6 setObject:v22 forProperty:84];
  }

  return v6;
}

- (id)pDrawableInfoFromImporter:(id)importer error:(id *)error
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
  if (importer)
  {
    v6 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__TSWPStorage_conversion_private__pDrawableInfoFromImporter_error___block_invoke;
    v9[3] = &unk_279D49AC8;
    v9[6] = &v16;
    v9[7] = &v10;
    v9[4] = importer;
    v9[5] = v6;
    [importer importInfoWithCompletionHandler:v9];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
  }

  if (error)
  {
    *error = v11[5];
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

- (void)transferAttributeArraySource:(TSWPAttributeArray *)source toAttributeArrayDest:(TSWPAttributeArray *)dest atCharIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(void *)transaction
{
  if (source && (destCopy4 = dest) != 0)
  {
    var2 = source->var2;
    if (var2)
    {
      indexCopy2 = index;
      v43 = 0;
      v10 = 0;
      v39 = index - 1;
      v11 = 8;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v13 = TSWPAttributeArray::rangeForAttributeIndex(source, v10);
        v15 = v14;
        v16 = (*(source->var0 + 3))(source) ? *(source->var4 + v11) : 0;
        v17 = v13 + indexCopy2;
        var1 = source->var1;
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
              if (indexCopy2 && (v25 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(destCopy4, v39), v25 < 0x7FFFFFFFFFFFFFFELL))
              {
                v12 = v25 + 1;
              }

              else
              {
                v12 = 0;
              }
            }

            v26 = v12 + v10;
            v27 = destCopy4;
            v28 = v16;
            contextCopy = context;
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
                v12 = [(TSWPStorage *)self paragraphIndexAtCharIndex:indexCopy2];
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
                destCopy4 = dest;
                if (v22 - v21 != -1)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                v32 = TSWPAttributeArray::charIndexForAttributeIndex(v43, v21) < indexCopy2 && v24 != 0;
                if (v32)
                {
                  v24 = v23;
                }

                if (v24)
                {
                  v21 += v32;
                  destCopy4 = dest;
                  if (TSWPAttributeArray::charIndexForAttributeIndex(v43, v21) >= indexCopy2)
                  {
LABEL_53:
                    v33 = source->var1;
                    if (v33 <= 0x12 && ((1 << v33) & 0x40802) != 0)
                    {
                      v47 = *(source->var4 + v11);
                      TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(destCopy4, &v47, v21, v24, v43, transaction);
                    }

                    else
                    {
                      if (!destCopy4->var2)
                      {
                        currentHandler = [MEMORY[0x277D6C290] currentHandler];
                        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_copying) transferAttributeArraySource:toAttributeArrayDest:atCharIndex:dolcContext:undoTransaction:]"];
                        [currentHandler handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_copying.mm"), 100, @"This attribute table should not be empty. This storage was created incorrectly."}];
                      }

                      v49.location = v21;
                      v49.length = v24;
                      TSWPParagraphAttributeArray::applyObjectToParagraphRange(destCopy4, v16, v49, v43, transaction);
                    }

                    goto LABEL_61;
                  }
                }

                else
                {
                  destCopy4 = dest;
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
          if (![context exportingFootnotes] || !v15)
          {
            goto LABEL_61;
          }

          var1 = source->var1;
LABEL_42:
          if (var1 != 17)
          {
            goto LABEL_45;
          }

          if ([(TSWPStorage *)self highlightsAllowed])
          {
            var1 = source->var1;
LABEL_45:
            v30 = 0;
            if (var1 <= 0x11 && ((1 << var1) & 0x390C0) != 0)
            {
              selfCopy2 = self;
              v16 = [(objc_object *)v16 copyWithContext:[(TSPObject *)self context]];
              v30 = v16;
            }

            else
            {
              selfCopy2 = self;
            }

            [(TSWPStorage *)selfCopy2 lowLevelApplyObject:v16 toCharRange:v17 forKind:v15 dolcContext:var1 undoTransaction:context, transaction];

            indexCopy2 = index;
            destCopy4 = dest;
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
          v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(destCopy4, indexCopy2);
        }

        if (!v10 && TSWPAttributeArray::charIndexForAttributeIndex(destCopy4, v12) < indexCopy2)
        {
          goto LABEL_61;
        }

        v26 = v12 + v10;
        v27 = destCopy4;
        v28 = v16;
        contextCopy = 0;
LABEL_60:
        TSWPAttributeArray::replaceObjectForAttributeIndex(v27, v28, v26, contextCopy, transaction);
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
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_copying) transferAttributeArraySource:toAttributeArrayDest:atCharIndex:dolcContext:undoTransaction:]"];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_copying.mm"];

    [currentHandler2 handleFailureInFunction:v36 file:v37 lineNumber:25 description:@"transferAttributeArraySource: bad tables."];
  }
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withStorage:(id)storage usePasteRules:(BOOL)rules dolcContext:(id)context undoTransaction:(void *)transaction
{
  rulesCopy = rules;
  v12 = [[TSWPSelection alloc] initWithRange:range.location, range.length];
  v13 = [(TSWPStorage *)self replaceCharactersInSelection:v12 withStorage:storage usePasteRules:rulesCopy dolcContext:context changeSession:0 undoTransaction:transaction];
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)replaceCharactersInSelection:(id)selection withStorage:(id)storage usePasteRules:(BOOL)rules dolcContext:(id)context changeSession:(id)session undoTransaction:(void *)transaction
{
  rulesCopy = rules;
  [(TSPObject *)self willModify];
  if (rulesCopy)
  {
    v15 = objc_alloc_init(TSWPStoragePasteRules);
  }

  else
  {
    v15 = 0;
  }

  v16 = [(TSWPStorage *)self relocateNonSelectedAnchorsInSelection:selection undoTransaction:transaction];
  range = [v16 range];
  [(TSWPStoragePasteRules *)v15 willPasteStorage:storage intoDestStorage:self atDestRange:range, v18];
  string = [storage string];
  v20 = [(TSWPStorage *)self length];
  v33 = xmmword_26CA637B0;
  v21 = [(TSWPStorage *)self replaceCharactersInSelection:v16 withString:string withFlags:0 replaceTextData:0 changeSession:session undoTransaction:transaction outInsertedRange:&v33];
  v23 = v22;
  if (*(&v33 + 1))
  {
    v24 = 0;
    do
    {
      v25 = [storage attributeArrayForKind:v24];
      if (v25)
      {
        v26 = v25;
        if (v24 == 9)
        {
          if ([storage columnStyleCount] < 2 || !-[TSWPStorage supportsColumnStyles](self, "supportsColumnStyles"))
          {
            goto LABEL_19;
          }
        }

        else if (v24 == 8)
        {
          if ([storage sectionCount] < 2 || !-[TSWPStorage supportsSections](self, "supportsSections"))
          {
            goto LABEL_19;
          }
        }

        else if (v24 == 2 && (![(TSWPStorage *)self supportsListStyles]|| ![(TSWPStorage *)self listStyleCount]))
        {
          goto LABEL_19;
        }

        v27 = [(TSWPStorage *)self attributeArrayForKind:v24 withCreate:1 undoTransaction:transaction];
        [(TSWPStorage *)self transferAttributeArraySource:v26 toAttributeArrayDest:v27 atCharIndex:v33 dolcContext:context undoTransaction:transaction];
      }

LABEL_19:
      v24 = (v24 + 1);
    }

    while (v24 != 19);
  }

  [(TSWPStorage *)self compress:transaction];
  if (transaction)
  {
    *&v28 = *&TSWPStorageTransaction::compress(transaction);
  }

  [(TSWPStorage *)self p_didChangeRange:v21 delta:v23 broadcastKind:[(TSWPStorage *)self length]- v20, 1];
  self->_delayBroadcast = 1;
  self->_rangeToBroadcast.location = 0;
  self->_rangeToBroadcast.length = 0;
  [(TSWPStoragePasteRules *)v15 didPasteWithIOTransaction:transaction atDestRange:v33];

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

- (_NSRange)textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];
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

- (id)pDefaultSectionForContext:(id)context
{
  if (objc_opt_respondsToSelector())
  {

    return [(TSWPStorage *)self defaultSectionForContext:context];
  }

  else
  {
    v6 = [[TSWPSectionPlaceholder alloc] initWithContext:context];

    return v6;
  }
}

- (void)p_didChangeRange:(_NSRange)range delta:(int64_t)delta broadcastKind:(int)kind
{
  v5 = *&kind;
  length = range.length;
  location = range.location;
  ++self->_changeCount;
  if (delta || !self->_delayBroadcast)
  {
    [(TSPObject *)self willModify];
    broadcaster = self->_broadcaster;

    [(TSWPStorageBroadcaster *)broadcaster broadcastStorage:self didChangeRange:location delta:length broadcastKind:delta, v5];
  }

  else
  {
    p_rangeToBroadcast = &self->_rangeToBroadcast;
    v11.location = self->_rangeToBroadcast.location;
    if (*&self->_rangeToBroadcast == 0)
    {
      p_rangeToBroadcast->location = range.location;
      self->_rangeToBroadcast.length = range.length;
    }

    else
    {
      v11.length = self->_rangeToBroadcast.length;
      v13 = NSUnionRange(v11, range);
      p_rangeToBroadcast->location = v13.location;
      self->_rangeToBroadcast.length = v13.length;
    }
  }
}

- (void)p_replaceCharactersInSelection:(id)selection withString:(id)string length:(unint64_t)length undoTransaction:(TSWPStorageTransaction *)transaction
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  if (!selection)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_private) p_replaceCharactersInSelection:withString:length:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_private.mm"), 78, @"invalid nil value for '%s'", "selection"}];
  }

  if (length)
  {
    [(TSWPStorage *)self p_fillMarkers:&__p string:string length:length hasAttachments:&v31 + 1 hasFootnotes:&v31 hasBreaks:0];
  }

  v13 = [(TSWPStorage *)self pOverrideObjectBeforeReplacingCharactersInSelection:selection withString:string];
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

      v16 = [(TSWPStorage *)self attributeArrayForKind:v14 withCreate:v15 & 1 undoTransaction:transaction];
      if (v16)
      {
        range = [selection range];
        (*(v16->var0 + 9))(v16, range, v18, string, length, &__p, transaction);
      }
    }

    v14 = (v14 + 1);
  }

  while (v14 != 19);
  v19 = [(TSWPStorage *)self attributeArrayForKind:0 withCreate:0 undoTransaction:transaction];
  if (v19)
  {
    range2 = [selection range];
    (*(v19->var0 + 9))(v19, range2, v21, string, length, &__p, transaction);
  }

  range3 = [selection range];
  [(TSWPStorage *)self p_lowLevelReplaceCharactersInRange:range3 withString:v23 length:string undoTransaction:length, transaction];
  v24 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v24)
  {
    range4 = [selection range];
    (*(v24->var0 + 11))(v24, range4, v26, string, length, &__p, transaction, [selection styleInsertionBehavior]);
  }

  v27 = 0;
  do
  {
    if (v27)
    {
      v28 = [(TSWPStorage *)self attributeArrayForKind:v27];
      if (v28)
      {
        range5 = [selection range];
        (*(v28->var0 + 11))(v28, range5, v30, string, length, &__p, transaction, [selection styleInsertionBehavior]);
      }
    }

    v27 = (v27 + 1);
  }

  while (v27 != 19);
  [(TSWPStorage *)self pApplyOverrideObjectAfterReplacingCharactersInSelection:selection withString:string overrideObject:v13 undoTransaction:transaction];
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

- (void)p_lowLevelReplaceCharactersInRange:(_NSRange)range withString:(id)string length:(unint64_t)length undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > [(NSMutableString *)self->_string length])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TSWPStorage_private) p_lowLevelReplaceCharactersInRange:withString:length:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_private.mm"), 143, @"Attempting to delete past end of storage."}];
  }

  string = self->_string;
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_287D36338;
  }

  [(NSMutableString *)string replaceCharactersInRange:location withString:length, stringCopy];
}

- (void)p_fillMarkers:(void *)markers string:(id)string length:(unint64_t)length hasAttachments:(BOOL *)attachments hasFootnotes:(BOOL *)footnotes hasBreaks:(BOOL *)breaks
{
  if (length)
  {
    lengthCopy2 = length;
    if (length == 1)
    {
      v13 = [string characterAtIndex:0];
      if (v13 == 14)
      {
        if (footnotes)
        {
          *footnotes = 1;
        }

        *&v27 = 0;
        v15 = 14;
        goto LABEL_36;
      }

      v14 = v13;
      if (v13 == 65532)
      {
        if (attachments)
        {
          *attachments = 1;
        }

        *&v27 = 0;
        v15 = -4;
LABEL_36:
        WORD4(v27) = v15;
LABEL_37:
        std::vector<std::pair<unsigned long,unsigned short>>::push_back[abi:nn200100](markers, &v27);
        return;
      }

      if (IsParagraphBreakingCharacter(v13))
      {
        if (breaks)
        {
          *breaks = 1;
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
        if (v16 + 1024 < lengthCopy2)
        {
          lengthCopy2 = v16 + 1024;
        }

        v28.location = v16;
        v28.length = lengthCopy2 - v16;
        v26 = v17;
        CFStringGetCharacters(string, v28, v17);
        if ((lengthCopy2 - v16) >= 1)
        {
          v19 = v26;
          do
          {
            if ((IsParagraphBreakingCharacter(*v19) & 1) != 0 || ((v20 = *v19, v20 != 65532) ? (v21 = v20 == 14) : (v21 = 1), v21))
            {
              if (attachments && (v22 = attachments, *v19 == -4) || footnotes && (v22 = footnotes, *v19 == 14) || breaks && (v23 = IsParagraphBreakingCharacter(*v19), v22 = breaks, v23))
              {
                *v22 = 1;
              }

              *&v27 = v16;
              WORD4(v27) = *v19;
              std::vector<std::pair<unsigned long,unsigned short>>::push_back[abi:nn200100](markers, &v27);
            }

            ++v16;
            ++v19;
          }

          while (lengthCopy2 != v16);
        }

        v16 = lengthCopy2;
        lengthCopy2 = length;
        v17 = v26;
      }

      while (v18 < length);
      if (v26)
      {
        free(v26);
      }
    }
  }
}

- (void)p_fillMarkers:(void *)markers startingAtCharIndex:(unint64_t)index forCount:(unint64_t)count
{
  range.location = index;
  std::vector<unsigned long>::push_back[abi:nn200100](markers, &range);
  if (count > (*(markers + 1) - *markers) >> 3)
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
      selfCopy = self;
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
          std::vector<unsigned long>::push_back[abi:nn200100](markers, &v18);
          v14 = v15 + 1;
          v17 = count <= (*(markers + 1) - *markers) >> 3 || v12 <= v14;
          ++v15;
        }

        while (!v17);
      }

LABEL_19:
      location = v11;
      self = selfCopy;
    }

    while (count > (*(markers + 1) - *markers) >> 3);
    if (v9)
    {
      free(v9);
    }
  }
}

+ (id)filterText:(id)text removingAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v5 = +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageChars;
  if (+[TSWPStorage filterText:removingAttachments:]::sFilteredStorageChars)
  {
    textCopy3 = text;
    v7 = +[TSWPStorage filterText:removingAttachments:]::sFilteredStorageCharsWithAttachmentChar;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB50]);
    [v8 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "controlCharacterSet")}];
    textCopy3 = text;
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

  if (attachmentsCopy)
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
    string = [v10 string];
  }

  else
  {
    objc_opt_class();
    string = TSUDynamicCast();
  }

  v12 = string;
  if (!string)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage filterText:removingAttachments:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];
    v16 = currentHandler;
    textCopy3 = text;
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
          v24 = [text mutableCopy];
          textCopy3 = v24;
          mutableString = [v24 mutableString];
        }

        else
        {
          mutableString = [MEMORY[0x277CCAB68] stringWithString:v12];
          textCopy3 = mutableString;
        }

        v12 = mutableString;
      }

      [textCopy3 replaceCharactersInRange:v17 withString:{v22, &stru_287D36338}];
      v18 = 1;
    }

    while (v23 != v17 + v22);
  }

  if (v29 && ([v12 isEqualToString:{objc_msgSend(textCopy3, "string")}] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPStorage filterText:removingAttachments:]"];
    [currentHandler2 handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 305, @"Internal inconsistency in attributed string"}];
  }

  return textCopy3;
}

- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(int)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0
{
  v13 = *&kind;
  objc_opt_class();
  [context documentObject];
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
  return [(TSWPStorage *)self initWithContext:context string:string kind:v13 stylesheet:stylesheet paragraphStyle:style listStyle:listStyle section:section columnStyle:columnStyle paragraphDirection:v20];
}

- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(int)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0 paragraphDirection:(int)self1
{
  if (!style)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]"];
    [currentHandler handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 381, @"initWithString: Missing paragraph style."}];

    return 0;
  }

  v15 = *&kind;
  v18 = [(TSPObject *)self initWithContext:?];
  v19 = v18;
  if (v18)
  {
    v18->_isInInit = 1;
    v18->_stylesheet = stylesheet;
    v19->_WPKind = v15;
    v19->_writingDirectionCache = -1;
    [(TSWPStorage *)v19 insertObject:style charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:0 withCreate:1 undoTransaction:0] attributeIndex:0 dolcContext:0 undoTransaction:0];
    [(TSWPStorage *)v19 insertParagraphData:0 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:1 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    [(TSWPStorage *)v19 insertParagraphData:0 charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:11 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    [(TSWPStorage *)v19 insertParagraphData:direction charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:18 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    if (v15 == 5)
    {
      [(TSWPStorage *)v19 insertParagraphData:direction charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:10 withCreate:1 undoTransaction:0] attributeIndex:0 undoTransaction:0];
    }

    if (listStyle)
    {
      v20 = [(TSWPStorage *)v19 attributeArrayForKind:2 withCreate:1 undoTransaction:0];
      v21 = v19;
      listStyleCopy = listStyle;
    }

    else
    {
      if (v19->_WPKind != 5 || [(TSWPStorage *)v19 attributeArrayForKind:2 withCreate:0 undoTransaction:0])
      {
        goto LABEL_11;
      }

      v28 = [(TSWPStorage *)v19 attributeArrayForKind:2 withCreate:1 undoTransaction:0];
      listStyleCopy = [-[TSWPStorage stylesheet](v19 "stylesheet")];
      v21 = v19;
      v20 = v28;
    }

    [(TSWPStorage *)v21 insertObject:listStyleCopy charIndex:0 attributeArray:v20 attributeIndex:0 dolcContext:0 undoTransaction:0];
LABEL_11:
    if ([(TSWPStorage *)v19 supportsSections])
    {
      sectionCopy = section;
      if (!section)
      {
        sectionCopy = [(TSWPStorage *)v19 pDefaultSectionForContext:context];
      }

      [(TSWPStorage *)v19 insertObject:sectionCopy charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:8 withCreate:1 undoTransaction:0] attributeIndex:0 dolcContext:0 undoTransaction:0];
    }

    if ([(TSWPStorage *)v19 supportsColumnStyles])
    {
      columnStyleCopy = columnStyle;
      if (!columnStyle)
      {
        columnStyleCopy = [stylesheet defaultColumnStyle];
      }

      [(TSWPStorage *)v19 insertObject:columnStyleCopy charIndex:0 attributeArray:[(TSWPStorage *)v19 attributeArrayForKind:9 withCreate:1 undoTransaction:0] attributeIndex:0 dolcContext:0 undoTransaction:0];
    }

    v19->_string = objc_alloc_init([objc_opt_class() pStringClassForWPKind:v15]);
    if (string)
    {
      [(TSWPStorage *)v19 insertString:string atCharIndex:0 undoTransaction:0];
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

- (void)addObserver:(id)observer
{
  broadcaster = self->_broadcaster;
  if (!broadcaster)
  {
    broadcaster = objc_alloc_init(TSWPStorageBroadcaster);
    self->_broadcaster = broadcaster;
  }

  [(TSWPStorageBroadcaster *)broadcaster addObserver:observer];
}

- (void)setDocumentRoot:(id)root
{
  if (self->_documentRoot != root)
  {
    [(TSPObject *)self willModify];
  }

  self->_documentRoot = root;
}

- (void)setWPKind:(int)kind undoTransaction:(TSWPStorageTransaction *)transaction
{
  if (self->_WPKind != kind)
  {
    if (!kind)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage setWPKind:undoTransaction:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1081, @"Can't set storage kind to kBody without a context and column style"}];
    }

    self->_WPKind = kind;
    if (![(TSWPStorage *)self supportsColumnStyles])
    {
      v9 = [(TSWPStorage *)self attributeArrayForKind:9 withCreate:0 undoTransaction:0];
      if (v9)
      {
        (*(v9->var0 + 7))(v9, 0, v9->var2, transaction);
      }
    }

    if (![(TSWPStorage *)self supportsSections])
    {
      v10 = [(TSWPStorage *)self attributeArrayForKind:8 withCreate:0 undoTransaction:0];
      if (v10)
      {
        (*(v10->var0 + 7))(v10, 0, v10->var2, transaction);
      }
    }

    if (self->_WPKind == 5 && ![(TSWPStorage *)self attributeArrayForKind:2 withCreate:0 undoTransaction:0])
    {
      -[TSWPStorage insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:](self, "insertObject:charIndex:attributeArray:attributeIndex:dolcContext:undoTransaction:", [-[TSWPStorage stylesheet](self "stylesheet")], 0, -[TSWPStorage attributeArrayForKind:withCreate:undoTransaction:](self, "attributeArrayForKind:withCreate:undoTransaction:", 2, 1, 0), 0, 0, 0);
    }

    [(TSWPStorage *)self filterInvalidContentForStorage:self undoTransaction:transaction];
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

- (void)filterSectionBreaksFromStorage:(id)storage undoTransaction:(TSWPStorageTransaction *)transaction
{
  if (([storage supportsSectionCopying] & 1) == 0)
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:8 withCreate:0 undoTransaction:0];
    if (v6)
    {
      (*(v6->var0 + 7))(v6, 0, v6->var2, transaction);
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

- (void)filterInvalidContentForStorage:(id)storage undoTransaction:(TSWPStorageTransaction *)transaction
{
  [TSWPStorage filterSectionBreaksFromStorage:"filterSectionBreaksFromStorage:undoTransaction:" undoTransaction:?];
  if (([storage allowsElementKind:1049087] & 1) == 0)
  {
    attachmentCount = [(TSWPStorage *)self attachmentCount];
    if (attachmentCount)
    {
      v8 = attachmentCount - 1;
      do
      {
        v29[0] = 0x7FFFFFFFFFFFFFFFLL;
        v9 = [(TSWPStorage *)self attachmentAtAttachmentIndex:v8 outCharIndex:v29];
        if (v9)
        {
          if (v29[0] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
            if (![storage allowsElementKind:{objc_msgSend(v9, "elementKind")}] || objc_msgSend(v10, "isDrawable") && objc_msgSend(v10, "isAnchored") && objc_msgSend(storage, "wpKind"))
            {
              v11 = objc_opt_respondsToSelector();
              stringEquivalent = &stru_287D36338;
              if (v11)
              {
                stringEquivalent = [v10 stringEquivalent];
              }

              [(TSWPStorage *)self replaceCharactersInRange:v29[0] withString:1 notifyObservers:stringEquivalent undoTransaction:0, transaction];
            }
          }
        }

        --v8;
      }

      while (v8 != -1);
    }

    footnoteCount = [(TSWPStorage *)self footnoteCount];
    if (footnoteCount)
    {
      v14 = footnoteCount - 1;
      do
      {
        v29[0] = 0x7FFFFFFFFFFFFFFFLL;
        v15 = [(TSWPStorage *)self footnoteAtFootnoteIndex:v14 outCharIndex:v29];
        if (v15)
        {
          if (v29[0] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v15;
            if (([storage allowsElementKind:{objc_msgSend(v15, "elementKind")}] & 1) == 0)
            {
              v17 = objc_opt_respondsToSelector();
              stringEquivalent2 = &stru_287D36338;
              if (v17)
              {
                stringEquivalent2 = [v16 stringEquivalent];
              }

              [(TSWPStorage *)self replaceCharactersInRange:v29[0] withString:1 notifyObservers:stringEquivalent2 undoTransaction:0, transaction];
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
      if (([storage allowsElementKind:802304] & 1) == 0)
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

            while (!v25 || ([storage allowsElementKind:{objc_msgSend(*(v24 + 8), "elementKind")}] & 1) != 0);
            [(TSWPStorage *)self removeSmartField:v25 fromRange:v28.location undoTransaction:v28.length, transaction];
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

- (id)textSourceForLayoutInRange:(_NSRange)range
{
  v3 = [[TSWPRubyTextSource alloc] initWithSource:self subRange:range.location, range.length];

  return v3;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)index styleProvider:(unint64_t)provider
{
  result = [(TSWPStorage *)self length];
  if (self)
  {
    if (result >= provider)
    {
      providerCopy = provider;
    }

    else
    {
      providerCopy = result;
    }

    if (result <= provider)
    {
      providerCopy2 = provider;
    }

    else
    {
      providerCopy2 = result;
    }

    return [(TSWPStorage *)self paragraphEnumeratorForCharRange:providerCopy styleProvider:providerCopy2 - providerCopy, a5];
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

- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)range styleProvider:(_NSRange)provider
{
  if (self)
  {
    return [(TSWPParagraphEnumerator *)self paragraphEnumeratorForCharRange:provider.location styleProvider:provider.length requireHidden:a5, 1];
  }

  *&retstr->var6 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  return self;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)range styleProvider:(_NSRange)provider requireHidden:(id)hidden
{
  length = provider.length;
  location = provider.location;
  v12 = [(TSWPStorage *)self paragraphIndexAtCharIndex:?];
  v13 = location + length;
  if (v13 == [(TSWPStorage *)self length])
  {
    paragraphCount = [(TSWPStorage *)self paragraphCount];
  }

  else if (length)
  {
    paragraphCount = [(TSWPStorage *)self paragraphIndexAtCharIndex:v13 - 1]+ 1;
  }

  else
  {
    paragraphCount = v12 + 1;
  }

  return TSWPParagraphEnumerator::TSWPParagraphEnumerator(retstr, self, hidden, v12, paragraphCount, a6);
}

- (TSWPParagraphEnumerator)paragraphEnumeratorAtParIndex:(SEL)index styleProvider:(unint64_t)provider
{
  paragraphCount = [(TSWPStorage *)self paragraphCount];

  return TSWPParagraphEnumerator::TSWPParagraphEnumerator(retstr, self, a5, provider, paragraphCount, 1);
}

- (BOOL)setDOLCSuppressed:(BOOL)suppressed
{
  dolcSuppressed = self->_dolcSuppressed;
  self->_dolcSuppressed = suppressed;
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
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage stringValue]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1362, @"performance warning: -[TSWPStorage stringValue] should not be called on body storage."}];
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

- (id)childEnumeratorForRange:(_NSRange)range
{
  v3 = [[TSWPStorageChildEnumerator alloc] initWithStorage:self range:range.location, range.length];

  return v3;
}

- (unint64_t)previousCharacterIndex:(unint64_t)location forDelete:(BOOL)delete
{
  deleteCopy = delete;
  characterCount = [(TSWPStorage *)self characterCount];
  if (characterCount >= location)
  {
    v10 = location - 1;
    if (location - 1 < characterCount)
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(self->_string, location - 1);
      location = RangeOfComposedCharactersAtIndex.location;
      v12 = RangeOfComposedCharactersAtIndex.length < 2 || !deleteCopy;
      if (!v12 && isDeletableWithoutCombining([(NSMutableString *)self->_string characterAtIndex:v10]))
      {
        return v10;
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage previousCharacterIndex:forDelete:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1455, @"Character index is outside storage bounds"}];
  }

  return location;
}

- (unint64_t)nextCharacterIndex:(unint64_t)index
{
  indexCopy = index;
  if ([(TSWPStorage *)self characterCount]> index)
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(self->_string, indexCopy);
    return RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
  }

  return indexCopy;
}

- (unint64_t)indexForCharacter:(unsigned __int16)character startCharIndex:(unint64_t)index
{
  characterCopy = character;
  v7 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
  indexCopy = [(TSWPStorage *)self characterCount];
  if (indexCopy > index)
  {
    while (1)
    {
      v9 = index + 1024;
      v10 = indexCopy >= index + 1024 ? index + 1024 : indexCopy;
      v14.location = index;
      v14.length = v10 - index;
      CFStringGetCharacters(self->_string, v14, v7);
      v11 = v7;
      if ((v10 - index) >= 1)
      {
        break;
      }

LABEL_8:
      index = v10;
      if (v9 >= indexCopy)
      {
        goto LABEL_11;
      }
    }

    while (1)
    {
      v12 = *v11++;
      if (v12 == characterCopy)
      {
        break;
      }

      if (v10 == ++index)
      {
        goto LABEL_8;
      }
    }

    indexCopy = index;
  }

LABEL_11:
  free(v7);
  return indexCopy;
}

- (unint64_t)selectedParagraphBreakCount:(_NSRange)count
{
  if (!count.length)
  {
    return 0;
  }

  length = count.length;
  location = count.location;
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

- (unint64_t)emptyParagraphCount:(_NSRange)count
{
  if (!count.length)
  {
    return 0;
  }

  v4 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:count.location];
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

- (BOOL)isWholeParagraphsForRange:(_NSRange)range ignoreAttachmentCharacters:(BOOL)characters requireParagraphBreakSelected:(BOOL)selected
{
  if (!range.length)
  {
    v16 = 0;
    return v16 & 1;
  }

  charactersCopy = characters;
  length = range.length;
  location = range.location;
  v10 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];
  v12 = v10;
  if (charactersCopy && (v13 = v11, v14 = v10 + v11, v10 < v10 + v11))
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
        v16 = !selected | v22;
        return v16 & 1;
      }

      if (!selected)
      {
        v16 = (v17 == v21) & v22;
        return v16 & 1;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage isWholeParagraphsForRange:ignoreAttachmentCharacters:requireParagraphBreakSelected:]"];
      [currentHandler handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1604, @"Paragraph should not be zero length"}];
    }

    v16 = 0;
  }

  return v16 & 1;
}

- (BOOL)isEmptyParagraphSelection:(id)selection outRange:(_NSRange *)range
{
  if (![selection isInsertionPoint])
  {
    return 0;
  }

  range = [selection range];
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtCharIndex:range styleProvider:0];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v9 = TSWPParagraphEnumerator::paragraphString(&v12);
  if (![v9 length] || objc_msgSend(v9, "length") == 1 && IsParagraphBreakingCharacter(objc_msgSend(v9, "characterAtIndex:", 0)))
  {
    if (range)
    {
      range->location = TSWPParagraphEnumerator::paragraphTextRange(&v12);
      range->length = v10;
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

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index
{
  v3 = [(TSWPStorage *)self whiteSpaceRangeAtCharIndex:index includingBreaks:1];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks
{
  v7 = [(TSWPStorage *)self selectionRangeForCharIndex:?];
  v9 = v8;
  if ([(TSWPStorage *)self length]> index && IsWhitespaceCharacter([(TSWPStorage *)self characterAtIndex:index]))
  {
    indexCopy2 = index;
    if (v7 < index)
    {
      indexCopy2 = index;
      while (1)
      {
        v11 = indexCopy2 - 1;
        v12 = [(TSWPStorage *)self characterAtIndex:indexCopy2 - 1];
        if (!IsWhitespaceCharacter(v12))
        {
          break;
        }

        if (!breaks)
        {
          v13 = IsParagraphBreakingCharacter(v12);
          if (v12 == 8232 || (v13 & 1) != 0)
          {
            break;
          }
        }

        --indexCopy2;
        if (v11 <= v7)
        {
          indexCopy2 = v7;
          break;
        }
      }
    }

    v14 = v7 + v9;
    if (v14 > index)
    {
      while (1)
      {
        v15 = [(TSWPStorage *)self characterAtIndex:index];
        if (!IsWhitespaceCharacter(v15))
        {
          break;
        }

        if (!breaks)
        {
          v16 = IsParagraphBreakingCharacter(v15);
          if (v15 == 8232 || (v16 & 1) != 0)
          {
            break;
          }
        }

        if (v14 == ++index)
        {
          index = v14;
          break;
        }
      }
    }

    v17 = index - indexCopy2;
  }

  else
  {
    v17 = 0;
    indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = indexCopy2;
  result.length = v17;
  result.location = v18;
  return result;
}

- (_NSRange)rangeForSelectionWithInsertionSelection:(id)selection
{
  if (![selection isValid] || (objc_msgSend(selection, "isInsertionPoint") & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage rangeForSelectionWithInsertionSelection:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1692, @"Invalid selection parameter passed in"}];
  }

  if ([selection isValid] && objc_msgSend(selection, "start"))
  {
    v7 = [selection start] - 1;
  }

  else
  {
    v7 = 0;
  }

  if ([selection isValid])
  {
    start = [selection start];
  }

  else
  {
    start = 0;
  }

  v9 = [(TSWPStorage *)self p_rangeForSelectionAtCharIndex:v7 caretIndex:start handleNextWordWhitespace:1];
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace
{
  v3 = [(TSWPStorage *)self rangeByExtendingRangeToWhitespace:whitespace.location skipVisibleDeleted:whitespace.length, 0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace skipVisibleDeleted:(BOOL)deleted
{
  length = whitespace.length;
  location = whitespace.location;
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorForCharRange:whitespace.location styleProvider:whitespace.length requireHidden:0, !deleted];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  selfCopy = self;
  v8 = [(TSWPStorage *)selfCopy charRangeMappedFromStorage:location, length];
  v10 = TSWPRangeByExtendingRangeToWhitespaceForTextSource(v8, v9, selfCopy);
  v12 = [(TSWPStorage *)selfCopy charRangeMappedToStorage:v10, v11];
  v14 = v13;

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v17);
  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (_NSRange)rangeByExtendingRangeToLineBreak:(_NSRange)break
{
  location = break.location;
  v5 = break.location + break.length;
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

- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self selectionRangeForCharIndex:?];
  indexCopy3 = index;
  if (v5 + v6 > index)
  {
    indexCopy3 = index;
    if (IsWhitespaceCharacter([(TSWPStorage *)self characterAtIndex:index]))
    {
      v8 = [(TSWPStorage *)self whiteSpaceRangeAtCharIndex:index];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexCopy3 = index;
      }

      else
      {
        indexCopy3 = v8;
      }
    }
  }

  v9 = [(TSWPStorage *)self wordAtCharIndex:index includePreviousWord:1];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = indexCopy3;
  }

  v10 = index - v9;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  string = self->_string;
  v8 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:?];

  wordCopy = [(NSMutableString *)string rangeOfWordAtCharacterIndex:index range:v8 includePreviousWord:v7, wordCopy];
  result.length = v10;
  result.location = wordCopy;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  v7 = *MEMORY[0x277D6C268];
  v8 = *(MEMORY[0x277D6C268] + 8);
  range = [(TSWPStorage *)self range];
  v11 = v10;
  string = self->_string;
  if (CFStringGetLength(string) > index && ((CharacterAtIndex = CFStringGetCharacterAtIndex(string, index), CharacterAtIndex) ? (v14 = range + v11 > index) : (v14 = 0), v14))
  {
    v15 = IsWhitespaceCharacter(CharacterAtIndex) ^ 1;
    if (!wordCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    if (!wordCopy)
    {
      goto LABEL_12;
    }
  }

  if (range < index)
  {
    v16 = CFStringGetCharacterAtIndex(string, index - 1);
    v17 = IsWhitespaceCharacter(v16);
    LOBYTE(v15) = v17 ^ 1 | v15;
    if (!v17)
    {
      --index;
    }
  }

LABEL_12:
  if (v15)
  {
    if (v11)
    {
      v27.location = range;
      v27.length = v11;
      v18 = CFStringTokenizerCreate(0, string, v27, 4uLL, 0);
      if (v18)
      {
        v19 = v18;
        if (CFStringTokenizerGoToTokenAtIndex(v18, index))
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

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex
{
  v4 = [(TSWPStorage *)self p_rangeForSelectionAtCharIndex:index caretIndex:caretIndex handleNextWordWhitespace:1];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex handleNextWordWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  caretIndexCopy = index;
  v9 = caretIndex - 1;
  if (index != caretIndex && v9 != index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1883, @"Precondition: caretIndex is either equal to the given charIndex or one past"}];
  }

  v12 = [(TSWPStorage *)self selectionRangeForCharIndex:caretIndex];
  v14 = v12;
  v15 = v13;
  if (v12 > caretIndexCopy)
  {
    caretIndexCopy = v12;
  }

  if (v13 - 1 < caretIndexCopy - v12)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]"];
    [currentHandler2 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 1893, @"Character index should be inside allowable selection range."}];
  }

  v18 = v14 + v15;
  if (caretIndexCopy >= v14 + v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = [(TSWPStorage *)self characterAtIndex:caretIndexCopy];
  }

  if (!IsSpecialCharacter(v19))
  {
    v21 = 0;
    goto LABEL_18;
  }

  v20 = [(TSWPStorage *)self attachmentOrFootnoteAtCharIndex:caretIndexCopy];
  v21 = v20;
  if (!v20)
  {
LABEL_18:
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_22;
  }

  if ([v20 isDrawable] && objc_msgSend(v21, "isAnchored"))
  {
    if (v18 <= caretIndex)
    {
      v19 = 0;
    }

    else
    {
      v19 = [(TSWPStorage *)self characterAtIndex:caretIndex];
    }

    v21 = 0;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    caretIndexCopy = caretIndex;
  }

  else
  {
    v21 = 1;
    v22 = caretIndexCopy;
  }

LABEL_22:
  if (IsSpecialCharacter(v19))
  {
    goto LABEL_45;
  }

  if (whitespaceCopy && IsWhitespaceCharacter(v19))
  {
    if (caretIndexCopy != caretIndex || !caretIndexCopy || caretIndexCopy <= v14)
    {
      if (v18 <= caretIndex)
      {
        caretIndexCopy2 = caretIndexCopy;
      }

      else
      {
        caretIndexCopy2 = caretIndex;
      }

      if (caretIndexCopy + 1 == caretIndex)
      {
        v9 = caretIndexCopy2;
      }

      else
      {
        v9 = caretIndexCopy;
      }
    }

    v24 = [(TSWPStorage *)self characterAtIndex:v9];
    v25 = v24;
    if ((IsWhitespaceCharacter(v24) & 1) == 0 && !IsSpecialCharacter(v25))
    {
      goto LABEL_38;
    }

    v22 = [(TSWPStorage *)self whiteSpaceRangeAtCharIndex:caretIndexCopy includingBreaks:0];
    v21 = v26;
  }

  v9 = caretIndexCopy;
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

- (_NSRange)nextWordFromIndex:(unint64_t)index forward:(BOOL)forward
{
  forwardCopy = forward;
  v8 = *MEMORY[0x277D6C268];
  length = *(MEMORY[0x277D6C268] + 8);
  v9 = [TSWPStorage wordAtCharIndex:"wordAtCharIndex:includePreviousWord:" includePreviousWord:?];
  v11 = v10;
  v12 = [(TSWPStorage *)self selectionRangeForCharIndex:index];
  v14 = v13;
  v15 = [(TSWPStorage *)self textRangeForParagraphAtCharIndex:index];
  v16 = v15;
  v18 = v17;
  string = self->_string;
  if (forwardCopy)
  {
    v12 += v14;
    v33.length = v12 - v15;
    v33.location = v15;
    v20 = CFStringTokenizerCreate(0, string, v33, 0, 0);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      indexCopy = index;
      do
      {
        v24 = indexCopy - 1;
        ++v22;
        if (CFStringTokenizerGoToTokenAtIndex(v21, indexCopy))
        {
          break;
        }

        if (indexCopy <= v16)
        {
          break;
        }

        --indexCopy;
      }

      while (v12 == index);
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
      indexCopy2 = index;
      while (1)
      {
        while (!CFStringTokenizerGoToTokenAtIndex(v21, indexCopy2))
        {
          if (indexCopy2 <= v12)
          {
            goto LABEL_28;
          }

          --indexCopy2;
        }

        v29 = CFStringTokenizerGetCurrentTokenRange(v21);
        length = v29.length;
        if (v29.location + v29.length < index || v29.location + v29.length == v9)
        {
          break;
        }

        if (v29.location <= v12)
        {
          goto LABEL_28;
        }

        if (v29.location - 1 >= indexCopy2 - 1)
        {
          --indexCopy2;
        }

        else
        {
          indexCopy2 = v29.location - 1;
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

- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)words
{
  location = words.location;
  v5 = words.location + words.length;
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

- (_NSRange)rangeByTrimmingRange:(_NSRange)range withBlock:(id)block
{
  location = range.location;
  if (range.length)
  {
    length = range.length;
    v8 = range.length;
    v9 = range.location;
    while ((*(block + 2))(block, [(TSWPStorage *)self characterAtIndex:v9]))
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
      if (!(*(block + 2))(block, [(TSWPStorage *)self characterAtIndex:v10]))
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

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  indexCopy = index;
  if (range)
  {
    *range = xmmword_26CA637B0;
  }

  if (index)
  {
    v7 = [(TSWPStorage *)self attributeArrayForKind:*&kind];
    if (v7 && (v8 = v7, v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, indexCopy - 1), v9 < v8->var2))
    {
      indexCopy = *(v8->var4 + 2 * v9 + 1);
      if (range)
      {
        range->location = TSWPAttributeArray::rangeForAttributeIndex(v8, v9);
        range->length = v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return indexCopy;
}

- (id)objectAtLocationAtExactCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind
{
  v4 = *&kind;
  if ([(TSWPStorage *)self length]<= index)
  {
    return 0;
  }

  result = [(TSWPStorage *)self attributeArrayForKind:v4];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = TSWPAttributeArray::exactAttributeIndexForCharIndex(result, index);
  if (v9 >= v8[2])
  {
    return 0;
  }

  else
  {
    return *(v8[4] + 16 * v9 + 8);
  }
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(__CFLocale *)locale hyphenChar:(unsigned int *)char
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]"];
  [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2175, @"notreached"}];
  return -1;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage
{
  v4 = [(TSWPStorage *)self charIndexMappedFromStorage:storage];

  return [(TSWPStorage *)self charIndexMappedToStorage:v4];
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)relocateNonSelectedAnchorsInSelection:(id)selection undoTransaction:(TSWPStorageTransaction *)transaction
{
  [(TSPObject *)self willModify];
  if (![selection isRange])
  {
    return selection;
  }

  memset(&__p, 0, sizeof(__p));
  if ([selection isVisual])
  {
    visualRanges = [selection visualRanges];
    if (&__p != visualRanges)
    {
      std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(&__p, *visualRanges, visualRanges[1], (visualRanges[1] - *visualRanges) >> 4);
    }
  }

  if (![selection visualRangeCount])
  {
    visualRangeCount = 1;
LABEL_10:
    v10 = 0;
    v18 = 0;
    v11 = visualRangeCount;
    selectionCopy2 = selection;
    do
    {
      v20.location = 0;
      v20.length = 0;
      if (visualRangeCount == 1)
      {
        location = [selection range];
        length = v13;
        v20.location = location;
        v20.length = v13;
      }

      else
      {
        v20 = *(*[selection visualRanges] + v10);
        location = v20.location;
        length = v20.length;
      }

      v19.location = 0;
      v19.length = 0;
      v19.location = -[TSWPStorage p_RelocateNonSelectedAnchorsInRange:selectionInfos:undoTransaction:](self, "p_RelocateNonSelectedAnchorsInRange:selectionInfos:undoTransaction:", location, length, [TSUProtocolCast() infos], transaction);
      v19.length = v15;
      if (v20.location != v19.location || v20.length != v15)
      {
        if ([selection isVisual])
        {
          TSWPRangeVector::removeRange(&__p, &v20);
          TSWPRangeVector::addRange(&__p, &v19);
          v18 = 1;
        }

        else
        {
          selectionCopy2 = [selection copyWithNewRange:{v19.location, v19.length}];
        }
      }

      v10 += 16;
      --v11;
    }

    while (v11);
    if (v18)
    {
      selectionCopy2 = [selection copyWithNewVisualRanges:&__p];
    }

    goto LABEL_24;
  }

  visualRangeCount = [selection visualRangeCount];
  if (visualRangeCount)
  {
    goto LABEL_10;
  }

  selectionCopy2 = selection;
LABEL_24:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return selectionCopy2;
}

- (_NSRange)p_RelocateNonSelectedAnchorsInRange:(_NSRange)range selectionInfos:(id)infos undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  if (range.length >= 2)
  {
    v10 = [(TSWPStorage *)self attachmentIndexRangeForTextRange:range.location, range.length];
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
        if ([v14 isAnchored] && (objc_msgSend(infos, "containsObject:", objc_msgSend(v14, "drawable")) & 1) == 0)
        {
          v15 = [(TSWPStorage *)self setDOLCSuppressed:1];
          v16 = v14;
          [(TSWPStorage *)self replaceCharactersInRange:v19 withString:1 undoTransaction:0, transaction];
          [(TSWPStorage *)self insertAttachmentOrFootnote:v14 range:location++ dolcContext:0 undoTransaction:0 changeSession:transaction, 0];
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

- (id)extendSelectionForTopicChildren:(id)children
{
  childrenCopy = children;
  if ([children type] == 2)
  {
    TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v15, self, 0, [(TSWPStorage *)self paragraphIndexAtCharIndex:[(TSWPSelection *)childrenCopy range]], [(TSWPStorage *)self paragraphCount], 1);
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
      range = [(TSWPSelection *)childrenCopy range];
      v10 = TSWPParagraphEnumerator::paragraphTextRange(&v15);
      if (range <= v10 + v11)
      {
        v12 = v10 + v11;
      }

      else
      {
        v12 = range;
      }

      if (range >= v10 + v11)
      {
        v13 = v10 + v11;
      }

      else
      {
        v13 = range;
      }

      childrenCopy = [TSWPSelection selectionWithRange:v13 type:v12 - v13 leadingEdge:2 storage:1, 0];
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v15);
  }

  return childrenCopy;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string undoTransaction:(TSWPStorageTransaction *)transaction
{
  transaction = [(TSWPStorage *)self replaceCharactersInRange:range.location withString:range.length notifyObservers:string undoTransaction:1, transaction];
  result.length = v6;
  result.location = transaction;
  return result;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string notifyObservers:(BOOL)observers undoTransaction:(TSWPStorageTransaction *)transaction
{
  observersCopy = observers;
  v10 = [[TSWPSelection alloc] initWithRange:range.location, range.length];
  v11 = [(TSWPStorage *)self p_replaceCharactersInLogicalSelection:v10 withString:string withFlags:observersCopy replaceTextData:0 changeSession:0 undoTransaction:transaction outInsertedRange:0];
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)replaceCharactersInSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id *)data changeSession:(id)session undoTransaction:(TSWPStorageTransaction *)transaction outInsertedRange:(_NSRange *)range
{
  v9 = *&flags;
  selectionCopy = selection;
  if ([selection visualRangeCount] < 2)
  {
    if ([selectionCopy isVisual])
    {
      superRange = [selectionCopy superRange];
      selectionCopy = [selectionCopy copyWithNewType:0 range:{superRange, v22}];
    }

    v23 = [(TSWPStorage *)self p_replaceCharactersInLogicalSelection:selectionCopy withString:string withFlags:v9 replaceTextData:data changeSession:session undoTransaction:transaction outInsertedRange:range];
  }

  else
  {
    std::vector<CGPoint>::vector[abi:nn200100](&__p, [selectionCopy visualRanges]);
    superRange2 = [selectionCopy superRange];
    v15 = v14;
    v26 = superRange2;
    v16 = [string length];
    v25 = v16 + v15 - TSWPRangeVector::characterCount([selectionCopy visualRanges]);
    v17 = v31 - __p;
    v18 = ((v31 - __p) >> 4) + 1;
    while (v18-- > 1)
    {
      v20 = [[TSWPSelection alloc] initWithRange:*(__p + v17 - 16), *(__p + v17 - 8)];
      [(TSWPStorage *)self p_replaceCharactersInLogicalSelection:v20 withString:string withFlags:v9 replaceTextData:data changeSession:session undoTransaction:transaction outInsertedRange:range];
      v17 -= 16;

      string = &stru_287D36338;
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

- (_NSRange)p_replaceCharactersInLogicalSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id *)data changeSession:(id)session undoTransaction:(TSWPStorageTransaction *)transaction outInsertedRange:(_NSRange *)range
{
  flagsCopy = flags;
  v79 = *MEMORY[0x277D85DE8];
  location = [selection range];
  length = v14;
  [selection range];
  if (v16 || [string length])
  {
    range = [selection range];
    if (range != -[TSWPStorage length](self, "length") && (-[TSWPStorage characterAtIndex:](self, "characterAtIndex:", [selection range]) & 0xFC00) == 0xDC00)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]"];
      [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2432, @"Inserting text within surrogate pair"}];
    }

    [(TSPObject *)self willModify];
    v64 = [(TSWPStorage *)self relocateNonSelectedAnchorsInSelection:selection undoTransaction:transaction];
    self->_delayBroadcast = 1;
    selfCopy = self;
    stringCopy = string;
    v20 = [TSWPStorage p_replacementsForSelection:"p_replacementsForSelection:withString:changeSession:shouldTrackDeletions:" withString:? changeSession:? shouldTrackDeletions:?];
    __src = 0;
    v76 = 0;
    v77 = 0;
    insertedRange2 = *MEMORY[0x277D6C268];
    v22 = *(MEMORY[0x277D6C268] + 8);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v20;
    v23 = [v20 countByEnumeratingWithState:&v71 objects:v78 count:16];
    v63 = flagsCopy;
    v24 = 0;
    if (v23)
    {
      v68 = *v72;
      selfCopy3 = self;
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
          [v27 performWithStorage:selfCopy3 delta:v24 undoTransaction:? replaceBlock:?];
          delta = [v27 delta];
          insertedRange = [v27 insertedRange];
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
            *v42 = insertedRange;
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

            selfCopy3 = selfCopy;
          }

          else
          {
            *v76 = insertedRange;
            *(v32 + 1) = v30;
            v33 = (v32 + 16);
          }

          v76 = v33;
          [v27 insertedRange];
          if (v45)
          {
            insertedRange2 = [v27 insertedRange];
            v22 = v46;
          }

          v24 += delta;
        }

        v23 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v23);
    }

    else
    {
      selfCopy3 = self;
    }

    if (data)
    {
      if (v22)
      {
        if (![data->var0 isEqualToString:@"TSWPShouldExtendStoredLanguage"])
        {
          if ([stringCopy isEqualToString:@"\t"] && -[TSWPStorage writingDirectionForParagraphAtCharIndex:](selfCopy3, "writingDirectionForParagraphAtCharIndex:", insertedRange2) == 1 && objc_msgSend(MEMORY[0x277CBEAF8], "characterDirectionForLanguage:", data->var0) != 2)
          {
            [(TSWPStorage *)selfCopy3 setLanguage:*MEMORY[0x277D6C3A0] forCharRange:insertedRange2 undoTransaction:v22, transaction];
          }

          else
          {
            [(TSWPStorage *)selfCopy3 setLanguage:data->var0 forCharRange:insertedRange2 undoTransaction:v22, transaction];
          }
        }

        [(TSWPStorage *)selfCopy3 setDictationAndAutocorrection:data->var1 forCharRange:insertedRange2 undoTransaction:v22, transaction];
      }
    }

    else if (v22)
    {
      [(TSWPStorage *)selfCopy3 applyObject:0 toCharRange:insertedRange2 forKind:v22 dolcContext:13 undoTransaction:0, transaction];
    }

    selfCopy3->_delayBroadcast = 0;
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
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]"];
          [currentHandler2 handleFailureInFunction:v52 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2510, @"multiple inserted ranges aren't handled yet"}];
        }

        v48 |= v50 != 0;
        ++v47;
      }

      while (v47 != v76);
    }

    if (v63)
    {
      v53 = selfCopy->_rangeToBroadcast.location;
      v54 = selfCopy->_rangeToBroadcast.length;
      [(TSWPStorage *)selfCopy p_didChangeRange:location delta:length broadcastKind:v24, 1];
      if (v53 | v54)
      {
        [(TSWPStorage *)selfCopy p_didChangeRange:v53 delta:v54 broadcastKind:0, 1];
      }
    }

    v55 = __src;
    if (range)
    {
      v56 = v76;
      if (__src != v76)
      {
        v57 = __src;
        do
        {
          *range = *v57;
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

    selfCopy->_rangeToBroadcast.location = 0;
    selfCopy->_rangeToBroadcast.length = 0;
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

- (id)substringWithSelection:(id)selection
{
  v21 = *MEMORY[0x277D85DE8];
  if ([selection type])
  {
    if ([selection type] != 7)
    {
      return &stru_287D36338;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    visualRangesArray = [selection visualRangesArray];
    v6 = [visualRangesArray countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(visualRangesArray);
        }

        rangeValue = [*(*(&v16 + 1) + 8 * i) rangeValue];
        v9 = [(__CFString *)v9 stringByAppendingString:[(TSWPStorage *)self substringWithRange:rangeValue, v12]];
      }

      v7 = [visualRangesArray countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
    return v9;
  }

  else
  {
    range = [selection range];

    return [(TSWPStorage *)self substringWithRange:range, v14];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  [(TSWPStorage *)self setDocumentRoot:?];
  v7 = 0;
  do
  {
    v8 = [(TSWPStorage *)self attributeArrayForKind:v7];
    if (v8)
    {
      (*(v8->var0 + 13))(v8, root, context);
    }

    v7 = (v7 + 1);
  }

  while (v7 != 19);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v7 = 0;
  do
  {
    v8 = [(TSWPStorage *)self attributeArrayForKind:v7];
    if (v8)
    {
      (*(v8->var0 + 14))(v8, root, context);
    }

    v7 = (v7 + 1);
  }

  while (v7 != 19);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v5 = 0;
  do
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:v5];
    if (v6)
    {
      (*(v6->var0 + 15))(v6, root);
    }

    v5 = (v5 + 1);
  }

  while (v5 != 19);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = 0;
  do
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:v5];
    if (v6)
    {
      (*(v6->var0 + 16))(v6, root);
    }

    v5 = (v5 + 1);
  }

  while (v5 != 19);

  [(TSWPStorage *)self setDocumentRoot:0];
}

- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options updatingSearchRange:(_NSRange *)range
{
  v5 = [(NSMutableString *)self->_string rangeOfString:string searchOptions:options updatingSearchRange:range];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options range:(_NSRange)range
{
  rangeCopy = range;
  v5 = [(NSMutableString *)self->_string rangeOfString:string searchOptions:options updatingSearchRange:&rangeCopy];
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfParagraphBreakingCharacter:(unsigned __int16)character backwards:(BOOL)backwards range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  backwardsCopy = backwards;
  if ((IsParagraphBreakingCharacter(character) & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage rangeOfParagraphBreakingCharacter:backwards:range:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2682, @"invalid character"}];
  }

  characterCopy = character;
  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&characterCopy length:1];
  if (backwardsCopy)
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
  range = [(TSWPStorage *)self range];

  return [(TSWPStorage *)self childEnumeratorForRange:range, v3];
}

- (_NSRange)rangeOfAnnotationWithOptions:(unint64_t)options range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  optionsCopy = options;
  v8 = *MEMORY[0x277D6C268];
  v9 = *(MEMORY[0x277D6C268] + 8);
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v14, self, range.location, range.length, 15);
  v10 = 0;
  while (TSWPAttributeEnumerator::nextAttributeIndex(v14, &v13))
  {
    objc_opt_class();
    if (TSUDynamicCast() && v13.location >= location && v13.location - location < length)
    {
      if ((optionsCopy & 4) == 0)
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
      if ((optionsCopy & 4) == 0)
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

- (void)findChangesInRange:(_NSRange)range onHit:(id)hit
{
  length = range.length;
  location = range.location;
  [(TSWPStorage *)self p_findChangesInRange:range.location onHit:range.length withAttributeKind:hit, 15];

  [(TSWPStorage *)self p_findChangesInRange:location onHit:length withAttributeKind:hit, 16];
}

- (_NSRange)rangeForHighlight:(id)highlight
{
  v4 = *MEMORY[0x277D6C268];
  v5 = *(MEMORY[0x277D6C268] + 8);
  v6 = [(TSWPStorage *)self attributeArrayForKind:17];
  if (v6)
  {
    v7 = v6;
    Object = TSWPAttributeArray::findObject(v6, highlight, 0);
    if (Object == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage rangeForHighlight:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2887, @"Expected to find highlight in storage"}];
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

- (id)searchForString:(id)string options:(unint64_t)options onHit:(id)hit
{
  if ([(TSWPStorage *)self wpKind]== 7)
  {
    return 0;
  }

  range = [(TSWPStorage *)self range];

  return [(TSWPStorage *)self searchInRange:range forString:v10 options:string onHit:options, hit];
}

- (id)searchInRange:(_NSRange)range forString:(id)string options:(unint64_t)options onHit:(id)hit
{
  v7 = [[TSWPSearch alloc] initWithString:string options:options hitBlock:hit storage:self range:range.location, range.length];
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

- (id)searchForAnnotationsWithHitBlock:(id)block
{
  range = [(TSWPStorage *)self range];
  [(TSWPStorage *)self findCommentsInRange:range onHit:v6, block];
  range2 = [(TSWPStorage *)self range];
  [(TSWPStorage *)self findChangesInRange:range2 onHit:v8, block];
  return 0;
}

- (void)continueSearch:(id)search
{
  if (!search)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage continueSearch:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 2930, @"invalid nil value for '%s'", "search"}];
  }

  range = [search range];
  v11 = v7;
  if (v7 && [(TSWPStorage *)self wpKind]!= 7)
  {
    v8 = [objc_msgSend(search "searchedString")];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [search foundHitWithRange:{v8, v9}];
    }

    [search setRange:{range, v11}];
  }
}

- (BOOL)canUserReplaceText
{
  if ([(TSWPStorage *)self wpKind]== 7)
  {
    return 0;
  }

  parentInfo = [(TSWPStorage *)self parentInfo];
  if (parentInfo)
  {
    parentInfo2 = parentInfo;
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

      parentInfo2 = [(TSDContainerInfo *)parentInfo2 parentInfo];
      if (!parentInfo2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

- (_NSRange)replaceAllOccurrencesOfStyle:(id)style withStyle:(id)withStyle undoTransaction:(TSWPStorageTransaction *)transaction
{
  v9 = *MEMORY[0x277D6C268];
  v10 = *(MEMORY[0x277D6C268] + 8);
  if ([style isMemberOfClass:objc_opt_class()])
  {
    v11 = 0;
LABEL_7:
    v9 = [(TSWPStorage *)self replaceAllOccurrencesOfObject:style withObject:withStyle forKind:v11 undoTransaction:transaction];
    v10 = v12;
    goto LABEL_8;
  }

  if ([style isMemberOfClass:objc_opt_class()])
  {
    v11 = 2;
    goto LABEL_7;
  }

  if ([style isMemberOfClass:objc_opt_class()])
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

- (BOOL)styleOverridesAppliedToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v13, self, range.location, range.length, 3);
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

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  if (self->_stylesheet != stylesheet)
  {
    [mapper pushMappingContext:self];
    v7 = 0;
    do
    {
      v8 = [(TSWPStorage *)self attributeArrayForKind:v7];
      if (v8)
      {
        (*(v8->var0 + 12))(v8, stylesheet, mapper);
      }

      v7 = (v7 + 1);
    }

    while (v7 != 19);
    stylesheetCopy = stylesheet;

    self->_stylesheet = stylesheet;

    [mapper popMappingContext:self];
  }
}

- (_NSRange)textRangeForListsInCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (_NSRange)textRangeForListAtCharIndex:(unint64_t)index
{
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtCharIndex:index styleProvider:0];
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

- (unint64_t)firstParIndexInListAtParIndex:(unint64_t)index
{
  indexCopy = index;
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtParIndex:index styleProvider:0];
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
      if (!indexCopy || isFirstParagraph)
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

      --indexCopy;
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v11);
  return indexCopy;
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

- (unint64_t)paragraphIndexAtCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphIndexAtCharIndex:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3193, @"paragraphIndexAtCharIndex: no paragraph table."}];
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
}

- (_NSRange)textRangeForParagraphAtIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (v5)
  {
    v6 = v5;
    v7 = TSWPAttributeArray::charIndexForAttributeIndex(v5, index);
    if (index + 1 >= v6->var2)
    {
      characterCount = [(TSWPStorage *)self characterCount];
    }

    else
    {
      characterCount = TSWPAttributeArray::charIndexForAttributeIndex(v6, index + 1);
    }

    v11 = characterCount - v7;
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphAtIndex:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3205, @"textRangeForParagraphAtIndex: no paragraph table."}];
    v11 = 0;
    v7 = 0;
  }

  v12 = v7;
  result.length = v11;
  result.location = v12;
  return result;
}

- (_NSRange)textRangeForParagraphsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(TSWPStorage *)self textRangeForParagraphAtIndex:?];
  v8 = v7;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphsInRange:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3224, @"bogus first paragraph text range"}];
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
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphsInRange:]"];
        [currentHandler2 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3233, @"bogus first paragraph text range"}];
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

- (_NSRange)textRangeForParagraphAtCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage textRangeForParagraphAtCharIndex:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3246, @"textRangeForParagraphAtCharIndex: no paragraph table."}];
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index);

  v9 = [(TSWPStorage *)self textRangeForParagraphAtIndex:v8];
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (_NSRange)paragraphIndexRangeForCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (BOOL)paragraphHasListLabelAtCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self listStyleAtCharIndex:index effectiveRange:0];
  if (v5)
  {
    LOBYTE(v5) = [v5 labelTypeForLevel:{-[TSWPStorage paragraphLevelAtCharIndex:](self, "paragraphLevelAtCharIndex:", index)}] != 0;
  }

  return v5;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self paragraphIndexAtCharIndex:index];

  return [(TSWPStorage *)self isWritingDirectionRightToLeftForParagraphAtParIndex:v4];
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self writingDirectionForParagraphAtParIndex:index];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage isWritingDirectionRightToLeftForParagraphAtParIndex:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3343, @"Unknown writing direction."}];
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)isWritingDirectionRightToLeftForListAtParIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self listStyleAtParIndex:index effectiveRange:0];
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

  v9 = [(TSWPStorage *)self firstParIndexInListAtParIndex:index];

  return [(TSWPStorage *)self isWritingDirectionRightToLeftForParagraphAtParIndex:v9];
}

- (int)writingDirectionForParagraphAtCharIndex:(unint64_t)index
{
  result = [-[TSWPStorage paragraphStyleAtCharIndex:effectiveRange:](self paragraphStyleAtCharIndex:index effectiveRange:{0), "intValueForProperty:", 44}];
  if (result == -1)
  {
    v6 = [(TSWPStorage *)self attributeArrayForKind:18];
    if (!v6)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage writingDirectionForParagraphAtCharIndex:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3383, @"writingDirectionForParagraphAtParIndex: no paragraph table."}];
      return [(TSKDocumentRoot *)self->_documentRoot isDirectionRightToLeft];
    }

    v7 = v6;
    if (!v6->var2)
    {
      return [(TSKDocumentRoot *)self->_documentRoot isDirectionRightToLeft];
    }

    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, index);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage writingDirectionForParagraphAtCharIndex:]"];
      [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3387, @"writingDirectionForParagraphAtParIndex: no paragraph table."}];
    }

    result = *(v7->var4 + 4 * v8 + 2);
    if (result == -1)
    {
      return [(TSKDocumentRoot *)self->_documentRoot isDirectionRightToLeft];
    }
  }

  return result;
}

- (int)writingDirectionForParagraphAtParIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];

  return [(TSWPStorage *)self writingDirectionForParagraphAtCharIndex:v4];
}

- (void)setParagraphWritingDirection:(int)direction forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  v6 = *&direction;
  v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:range.location, range.length];
  if (v9)
  {

    [(TSWPStorage *)self applyWritingDirection:v6 toParagraphIndexRange:v8 forKind:v9 undoTransaction:18, transaction];
  }
}

- (void)setLanguage:(id)language forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  v10 = [(TSWPStorage *)self attributeArrayForKind:13];
  if (!v10 || (v11 = v10, v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location), v12 == v11->var2) || (v13 = *(v11->var4 + 2 * v12 + 1), v14 = TSWPAttributeArray::rangeForAttributeIndex(v11, v12), v14 > location) || v14 + v15 < location + length || v13 != language && (!language || !v13 || ([v13 isEqualToString:language] & 1) == 0))
  {

    [(TSWPStorage *)self applyObject:language toCharRange:location forKind:length dolcContext:13 undoTransaction:0, transaction];
  }
}

- (id)bestCharacterLanguageForTextRange:(_NSRange)range
{
  range2 = range.length;
  location = range.location;
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

- (id)languageForTextRange:(_NSRange)range useStringTokenizer:(BOOL)tokenizer useCreationLanguage:(BOOL)language
{
  languageCopy = language;
  tokenizerCopy = tokenizer;
  length = range.length;
  location = range.location;
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
      v32 = languageCopy;
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
        languageCopy = v32;
        length = v31;
        v14 = v34;
        goto LABEL_44;
      }

LABEL_38:
      v14 = v34;
      languageCopy = v32;
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

  if (!tokenizerCopy || ((v13 = 0, length == v12[1]) ? (v28 = v14 == *v12) : (v28 = 0), v28 || !length))
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
  if (languageCopy)
  {
    return [(TSKDocumentRoot *)self->_documentRoot creationLanguage];
  }

  return v13;
}

- (id)languageAtParIndex:(unint64_t)index useStringTokenizer:(BOOL)tokenizer useCreationLanguage:(BOOL)language
{
  languageCopy = language;
  tokenizerCopy = tokenizer;
  v8 = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];
  v10 = (__PAIR128__(v9, v8 + v9) - [(TSWPStorage *)self length]) >> 64;

  return [(TSWPStorage *)self languageForTextRange:v8 useStringTokenizer:v10 useCreationLanguage:tokenizerCopy, languageCopy];
}

- (id)dictationAndAutocorrectionKeyAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if (range)
  {
    range->location = 0;
    range->length = 0;
  }

  result = [(TSWPStorage *)self attributeArrayForKind:14];
  if (result)
  {
    v7 = result;
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index);
    if (v8 >= v7->var2)
    {
      return 0;
    }

    else
    {
      v9 = v8;
      if (range)
      {
        range->location = TSWPAttributeArray::rangeForAttributeIndex(v7, v8);
        range->length = v10;
      }

      return *(v7->var4 + 2 * v9 + 1);
    }
  }

  return result;
}

- (void)addAllDictationAndAutocorrectionKeyRangesInRange:(_NSRange)range toRanges:(void *)ranges
{
  length = range.length;
  location = range.location;
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
          v17 = *(ranges + 1);
          v16 = *(ranges + 2);
          if (v17 >= v16)
          {
            v19 = *ranges;
            v20 = v17 - *ranges;
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
              std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(ranges, v25);
            }

            v26 = (16 * v21);
            *v26 = v13;
            v26[1] = v14;
            v18 = 16 * v21 + 16;
            memcpy(0, v19, v20);
            v27 = *ranges;
            *ranges = 0;
            *(ranges + 1) = v18;
            *(ranges + 2) = 0;
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

          *(ranges + 1) = v18;
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

- (void)setDictationAndAutocorrection:(id)autocorrection forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  v10 = [(TSWPStorage *)self attributeArrayForKind:14];
  if (!v10 || (v11 = v10, v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location), v12 == v11->var2) || (v13 = *(v11->var4 + 2 * v12 + 1), v14 = TSWPAttributeArray::rangeForAttributeIndex(v11, v12), v14 > location) || v14 + v15 < location + length || v13 != autocorrection && (!autocorrection || !v13 || ([v13 isEqualToString:autocorrection] & 1) == 0))
  {

    [(TSWPStorage *)self applyObject:autocorrection toCharRange:location forKind:length dolcContext:14 undoTransaction:0, transaction];
  }
}

- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v7)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphStyleAtParIndex:effectiveRange:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3800, @"paragraphStyleAtParIndex: no paragraph table."}];
  }

  if (range)
  {
    range->location = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];
    range->length = v10;
  }

  if (v7 && v7->var2 > index)
  {
    return *(v7->var4 + 2 * index + 1);
  }

  else
  {
    return 0;
  }
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = [(TSWPStorage *)self paragraphIndexAtCharIndex:index];

  return [(TSWPStorage *)self paragraphStyleAtParIndex:v6 effectiveRange:range];
}

- (unint64_t)findNextParagraphStyleChange:(unint64_t)change maxCharIndex:(unint64_t)index
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage findNextParagraphStyleChange:maxCharIndex:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3835, @"findNextParagraphStyleChange: no paragraph table."}];
  }

  v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, change);
  var2 = v6->var2;
  v11 = *(v6->var4 + 2 * v9 + 1);
  v12 = 16 * v9 + 24;
  do
  {
    if (++v9 >= var2 || TSWPAttributeArray::charIndexForAttributeIndex(v6, v9) >= index)
    {
      return index;
    }

    v13 = *(v6->var4 + v12);
    v12 += 16;
  }

  while (v13 == v11);

  return TSWPAttributeArray::charIndexForAttributeIndex(v6, v9);
}

- (void)enumerateParagraphsIntersectingTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v8 = [(TSWPStorage *)self attributeArrayForKind:0];
  if (!v8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage enumerateParagraphsIntersectingTextRange:usingBlock:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 3867, @"enumerateParagraphsIntersectingTextRange:usingBlock: no paragraph table."}];
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
      (*(block + 2))(block, v14, v16[0], v16[1], v15, &v17);
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

- (id)listStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, index);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = *(v7->var4 + 2 * v8 + 1);
  if (range)
  {
    range->location = TSWPAttributeArray::rangeForAttributeIndex(v7, v8);
    range->length = v10;
  }

  return v9;
}

- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];
  if (range)
  {
    range->location = v6;
    range->length = v7;
  }

  return [(TSWPStorage *)self listStyleAtCharIndex:v6 effectiveRange:0];
}

- (unint64_t)listNumberForParagraphIndex:(unint64_t)index numberingData:(id *)data
{
  if (self)
  {
    [(TSWPStorage *)self paragraphEnumeratorAtParIndex:index styleProvider:0];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v6 = [(TSWPStorage *)self listNumberForParagraphEnumerator:&v8 numberingData:data];
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v8);
  return v6;
}

- (unint64_t)listNumberForParagraphEnumerator:(const TSWPParagraphEnumerator *)enumerator numberingData:(id *)data
{
  v7 = TSWPParagraphEnumerator::paragraphListStyle(enumerator);
  v8 = TSWPParagraphEnumerator::paragraphLevel(enumerator);
  if (!v7)
  {
    [0 baseStyleForTopicNumbers];
    v9 = 0;
    goto LABEL_6;
  }

  v9 = [v7 labelTypeForLevel:v8];
  baseStyleForTopicNumbers = [v7 baseStyleForTopicNumbers];
  if (v9 != 3)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_29;
  }

  v11 = baseStyleForTopicNumbers;
  v12 = TSWPParagraphEnumerator::paragraphListStart(enumerator);
  if (v12)
  {
    v13 = v12;
    goto LABEL_28;
  }

  TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v28, enumerator);
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
  v24 = TSWPParagraphEnumerator::paragraphListStart(enumerator);
  if (data)
  {
    data->var0 = v9;
    data->var1 = v8;
    data->var2 = v24 == 0;
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

- (void)setListStart:(unint64_t)start forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  v8 = [(TSWPStorage *)self paragraphIndexRangeForCharRange:range.location, range.length];
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (HIDWORD(start))
    {
      [TSWPStorage setListStart:forCharRange:undoTransaction:];
      start = 0xFFFFFFFFLL;
    }

    [(TSWPStorage *)self applyDataValue:start toParagraphIndexRange:v10 forKind:v11 undoTransaction:11, transaction];
  }
}

- (unint64_t)listStartAtCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:11];
  if (v4)
  {
    v5 = v4;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v4->var2)
    {
      v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage listStartAtCharIndex:]"];
        [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4086, @"paragraphStartAtCharIndex: no paragraph table."}];
      }

      return *(v5->var4 + 4 * v7 + 2);
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage listStartAtCharIndex:]"];
    [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4081, @"paragraphLevelAtCharIndex: no paragraph table."}];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)paragraphFlags:(unsigned __int16 *)flags andLevel:(unint64_t *)level atCharIndex:(unint64_t)index
{
  v8 = [(TSWPStorage *)self attributeArrayForKind:1];
  if (v8)
  {
    v9 = v8;
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, index);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphFlags:andLevel:atCharIndex:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4107, @"paragraphFlagsAtCharIndex: no paragraph table."}];
    }

    v13 = v9->var4 + 16 * v10;
    v14 = *(v13 + 8);
    v15 = *(v13 + 10);
    if (flags)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (flags)
    {
LABEL_5:
      *flags = v15;
    }
  }

  if (level)
  {
    *level = v14;
  }
}

- (unsigned)paragraphFlagsAtCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:1];
  if (v4)
  {
    v5 = v4;
    v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphFlagsAtCharIndex:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4128, @"paragraphFlagsAtCharIndex: no paragraph table."}];
    }

    return *(v5->var4 + 8 * v6 + 5);
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphFlagsAtCharIndex:]"];
    [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4123, @"paragraphFlagsAtCharIndex: no paragraph table."}];
    return 0;
  }
}

- (void)setParagraphFlags:(unsigned __int16)flags forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  flagsCopy = flags;
  v10 = [(TSWPStorage *)self paragraphLevelAtCharIndex:range.location];

  [(TSWPStorage *)self applyFlags:flagsCopy level:v10 toParagraphsInCharRange:location undoTransaction:length, transaction];
}

- (unint64_t)paragraphLevelAtCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:1];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphLevelAtCharIndex:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4146, @"paragraphLevelAtCharIndex: no paragraph table."}];
    return 0;
  }

  v5 = v4;
  if (!v4->var2)
  {
    return 0;
  }

  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage paragraphLevelAtCharIndex:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4151, @"paragraphFlagsAtCharIndex: no paragraph table."}];
  }

  return *(v5->var4 + 8 * v6 + 4);
}

- (unint64_t)paragraphLevelAtParIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];

  return [(TSWPStorage *)self paragraphLevelAtCharIndex:v4];
}

- (void)setParagraphLevel:(unint64_t)level forCharRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  v10 = [(TSWPStorage *)self paragraphFlagsAtCharIndex:range.location];

  [(TSWPStorage *)self applyFlags:v10 level:level toParagraphsInCharRange:location undoTransaction:length, transaction];
}

- (void)setParagraphLevel:(unint64_t)level atParIndex:(unint64_t)index undoTransaction:(TSWPStorageTransaction *)transaction
{
  v8 = [(TSWPStorage *)self textRangeForParagraphAtIndex:index];
  v10 = v9;
  v11 = [(TSWPStorage *)self paragraphFlagsAtCharIndex:v8];

  [(TSWPStorage *)self applyFlags:v11 level:level toParagraphsInCharRange:v8 undoTransaction:v10, transaction];
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

- (id)characterStyleAtCharIndex:(unint64_t)index left:(BOOL)left effectiveRange:(_NSRange *)range
{
  leftCopy = left;
  indexCopy = index;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage characterStyleAtCharIndex:left:effectiveRange:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4203, @"charIndex has an uninitialized value"}];
  }

  v11 = [(TSWPStorage *)self attributeArrayForKind:3];
  if (!v11 || (v12 = v11, !v11->var2))
  {
    if (range)
    {
      range = [(TSWPStorage *)self range];
      goto LABEL_13;
    }

    return 0;
  }

  if (leftCopy)
  {
    if (!indexCopy)
    {
      goto LABEL_9;
    }

    --indexCopy;
  }

  v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v11, indexCopy);
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = *(v12->var4 + 2 * v13 + 1);
    if (!range)
    {
      return v16;
    }

    range = TSWPAttributeArray::rangeForAttributeIndex(v12, v13);
    goto LABEL_14;
  }

LABEL_9:
  if (!range)
  {
    return 0;
  }

  v14 = TSWPAttributeArray::charIndexForAttributeIndex(v12, 0);
  range = 0;
LABEL_13:
  v16 = 0;
LABEL_14:
  range->location = range;
  range->length = v14;
  return v16;
}

- (id)valueForProperty:(int)property atCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = *&property;
  v9 = [(TSWPStorage *)self characterStyleAtCharIndex:index left:0 effectiveRange:?];
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
    v11 = [(TSWPStorage *)self paragraphStyleAtCharIndex:index effectiveRange:range];
    goto LABEL_6;
  }

  if ([+[TSWPColumnStyle properties](TSWPColumnStyle "properties")])
  {
    v12 = [-[TSWPStorage columnStyleAtCharIndex:effectiveRange:](self columnStyleAtCharIndex:index effectiveRange:{range), "valueForProperty:", v7}];
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage valueForProperty:atCharIndex:effectiveRange:]"];
  [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4268, @"Bad property sent to storage: %@", String(v7)}];
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

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  LODWORD(v5) = [(TSWPStorage *)self supportsColumnStyles];
  if (v5)
  {
    v5 = [(TSWPStorage *)self attributeArrayForKind:9];
    if (v5)
    {
      LOBYTE(v5) = TSWPAttributeArray::exactAttributeIndexForCharIndex(v5, index + 1) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self characterAtIndex:?];
  if ((v5 - 4) < 0xC && ((0x907u >> (v5 - 4)) & 1) != 0 || (v6 = IsParagraphBreakingCharacter(v5)) != 0 && ([(TSWPStorage *)self hasColumnStyleForParagraphBreakAtCharIndex:index]|| (v6 = [(TSWPStorage *)self hasSectionForParagraphBreakAtCharIndex:index]) != 0))
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)columnStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = [(TSWPStorage *)self attributeArrayForKind:9];
  if (!v7)
  {
    return 0;
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, index);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(TSWPStorage *)self columnStyleAtColumnStyleIndex:v8 effectiveRange:range];
}

- (id)columnStyleAtColumnStyleIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  result = [(TSWPStorage *)self attributeArrayForKind:9];
  if (result)
  {
    v7 = result;
    var2 = *(result + 2);
    if (var2 <= index)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage columnStyleAtColumnStyleIndex:effectiveRange:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4350, @"Bad columnStyleIndex"}];
      var2 = v7->var2;
    }

    if (var2 <= index)
    {
      return 0;
    }

    else
    {
      if (range)
      {
        range->location = TSWPAttributeArray::rangeForAttributeIndex(v7, index);
        range->length = v11;
      }

      return *(v7->var4 + 2 * index + 1);
    }
  }

  return result;
}

- (void)invalidateForStyle:(id)style
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
          v10[4] = style;
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

- (BOOL)hasSectionForParagraphBreakAtCharIndex:(unint64_t)index
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
      LOBYTE(v3) = TSWPAttributeArray::exactAttributeIndexForCharIndex(v3, index + 1) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (id)sectionAtSectionIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  result = [(TSWPStorage *)self attributeArrayForKind:8];
  if (result)
  {
    v7 = result;
    if (range)
    {
      range->location = TSWPAttributeArray::rangeForAttributeIndex(result, index);
      range->length = v8;
    }

    return *(v7[4] + 16 * index + 8);
  }

  return result;
}

- (void)replaceSectionAtSectionIndex:(unint64_t)index withSection:(id)section dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  v10 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (v10 && v10->var2 > index)
  {

    TSWPAttributeArray::replaceObjectForAttributeIndex(v10, section, index, context, transaction);
  }
}

- (unint64_t)sectionIndexForCharIndex:(unint64_t)index
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
}

- (unint64_t)sectionIndexForSection:(id)section
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::findObject(v4, section, 0);
}

- (id)sectionAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = [(TSWPStorage *)self attributeArrayForKind:8];
  if (!v7)
  {
    return 0;
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, index);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(TSWPStorage *)self sectionAtSectionIndex:v8 effectiveRange:range];
}

- (_NSRange)insertSection:(id)section atCharIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session
{
  [TSWPStorage splitSmartFieldAtCharIndex:"splitSmartFieldAtCharIndex:lengthToInsert:dolcContext:undoTransaction:" lengthToInsert:index dolcContext:1 undoTransaction:?];
  [(TSWPStorage *)self insertSpecialCharacter:4 object:section kind:8 range:index dolcContext:0 undoTransaction:context changeSession:transaction, session];
  v13 = [(TSWPStorage *)self attributeArrayForKind:8 withCreate:1 undoTransaction:transaction];
  if (!v13)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage insertSection:atCharIndex:dolcContext:undoTransaction:changeSession:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4520, @"insertSection: bad attribute array."}];
  }

  v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, index + 1);
  v17 = v16;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || *(v13->var4 + 2 * v16 + 1) != section)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage insertSection:atCharIndex:dolcContext:undoTransaction:changeSession:]"];
    [currentHandler2 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4523, @"insertSection: bad insertion object."}];
  }

  v20 = TSWPAttributeArray::rangeForAttributeIndex(v13, v17);
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)appendSection:(id)section charIndex:(unint64_t)index undoTransaction:(TSWPStorageTransaction *)transaction
{
  v9 = [(TSWPStorage *)self length]- index;

  [(TSWPStorage *)self applyObject:section toParagraphsInCharRange:index forKind:v9 undoTransaction:8, transaction];
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

- (unint64_t)footnoteIndexForCharIndex:(unint64_t)index
{
  result = [(TSWPStorage *)self attributeArrayForKind:5];
  if (result)
  {
    v5 = result;
    if (*(result + 16) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index), v6 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v7 = v6;
      if (TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == index)
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

- (id)footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v5 || (v6 = v5, !v5->var2) || (v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index), v7 == 0x7FFFFFFFFFFFFFFFLL) || (v8 = v7, TSWPAttributeArray::charIndexForAttributeIndex(v6, v7) != index) || (result = *(v6->var4 + 2 * v8 + 1)) == 0)
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
    if (*(result + 2) && (v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index), v11 != 0x7FFFFFFFFFFFFFFFLL) && (v12 = v11, TSWPAttributeArray::charIndexForAttributeIndex(v10, v11) == index))
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

- (id)footnoteMarkAtCharIndex:(unint64_t)index
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

  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) != index)
  {
    return 0;
  }

  objc_opt_class();

  return TSUDynamicCast();
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  result = [(TSWPStorage *)self attributeArrayForKind:5];
  if (result)
  {
    v5 = result;
    if (*(result + 2) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == index))
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

- (id)footnoteAtFootnoteIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v6 || v6->var2 <= index)
  {
    return 0;
  }

  v7 = *(v6->var4 + 2 * index + 1);
  if (charIndex)
  {
    *charIndex = TSWPAttributeArray::charIndexForAttributeIndex(v6, index);
  }

  return v7;
}

- (_NSRange)footnoteRangeForTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (unint64_t)autoNumberFootnoteCountForRange:(_NSRange)range
{
  v4 = [(TSWPStorage *)self footnoteRangeForTextRange:range.location, range.length];
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

- (unint64_t)footnoteIndexForFootnote:(id)footnote
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::findObject(v4, footnote, 0);
}

- (unint64_t)footnoteIndexForFootnoteStorage:(id)storage
{
  if (!storage)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteIndexForFootnoteStorage:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4706, @"invalid nil value for '%s'", "footnoteStorage"}];
  }

  if ([storage wpKind] != 2)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteIndexForFootnoteStorage:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4707, @"This isn't a footnote storage"}];
  }

  objc_opt_class();
  [storage owningAttachment];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteIndexForFootnoteStorage:]"];
    [currentHandler3 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4710, @"invalid nil value for '%s'", "footnoteAttachment"}];
  }

  return [(TSWPStorage *)self footnoteIndexForFootnote:v9];
}

- (id)footnoteStorages
{
  v3 = [MEMORY[0x277CBEB58] set];
  footnoteCount = [(TSWPStorage *)self footnoteCount];
  if (footnoteCount)
  {
    v5 = footnoteCount;
    for (i = 0; i != v5; ++i)
    {
      v7 = [-[TSWPStorage footnoteAtFootnoteIndex:outCharIndex:](self footnoteAtFootnoteIndex:i outCharIndex:{0), "containedStorage"}];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage footnoteStorages]"];
        [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4726, @"invalid nil value for '%s'", "footnoteStorage"}];
      }
    }
  }

  return v3;
}

- (unint64_t)findCharIndexForFootnoteAttachment:(id)attachment
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:5];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  Object = TSWPAttributeArray::findObject(v4, attachment, 0);
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

- (void)invalidatePageCountAttachmentCharIndexes:(BOOL)indexes
{
  indexesCopy = indexes;
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
          stringEquivalent = [v9 stringEquivalent];
          if ([stringEquivalent length])
          {
            intValue = [stringEquivalent intValue];
            if (intValue == 0x7FFFFFFF)
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage invalidatePageCountAttachmentCharIndexes:]"];
              [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 4803, @"Invalid page count."}];
            }

            else
            {
              v14 = 10;
              if (intValue >= 11)
              {
                do
                {
                  v14 *= 10;
                }

                while (v14 < intValue);
              }

              if (v14 == intValue + !indexesCopy)
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

- (void)invalidateCharIndexForAttachment:(id)attachment
{
  findCharIndex = [attachment findCharIndex];
  if (findCharIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = findCharIndex;
    broadcaster = self->_broadcaster;

    [(TSWPStorageBroadcaster *)broadcaster broadcastStorage:self didChangeRange:v5 delta:1 broadcastKind:0, 1];
  }
}

- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  v11 = [(TSWPStorage *)self insertSpecialCharacter:v10 object:footnote kind:v9 range:location dolcContext:length undoTransaction:0 changeSession:0, 0];
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session
{
  length = range.length;
  location = range.location;
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

  session = [(TSWPStorage *)self insertSpecialCharacter:v16 object:footnote kind:v15 range:location dolcContext:length undoTransaction:context changeSession:transaction, session];
  result.length = v18;
  result.location = session;
  return result;
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  v5 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v5 || (v6 = v5, !v5->var2) || (v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index), v7 == 0x7FFFFFFFFFFFFFFFLL) || (v8 = v7, TSWPAttributeArray::charIndexForAttributeIndex(v6, v7) != index) || (result = *(v6->var4 + 2 * v8 + 1)) == 0)
  {
    result = [(TSWPStorage *)self attributeArrayForKind:5];
    if (result)
    {
      v10 = result;
      if (*(result + 2) && (v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index), v11 != 0x7FFFFFFFFFFFFFFFLL) && (v12 = v11, TSWPAttributeArray::charIndexForAttributeIndex(v10, v11) == index))
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

- (unint64_t)findCharacterIndexForContainedInfo:(id)info
{
  infoCopy = info;
  parentInfo = [info parentInfo];
  v6 = parentInfo != 0;
  if (parentInfo)
  {
    v7 = parentInfo;
    if (parentInfo != self)
    {
      do
      {
        parentInfo2 = [(TSWPStorage *)v7 parentInfo];
        if (parentInfo2 == self)
        {
          infoCopy = v7;
        }

        v6 = parentInfo2 != 0;
        if (!parentInfo2)
        {
          break;
        }

        v7 = parentInfo2;
      }

      while (parentInfo2 != self);
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
      if ([v13 drawable] == infoCopy)
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

- (id)attachmentAtAttachmentIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex
{
  v6 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v6 || v6->var2 <= index)
  {
    return 0;
  }

  v7 = *(v6->var4 + 2 * index + 1);
  if (charIndex)
  {
    *charIndex = TSWPAttributeArray::charIndexForAttributeIndex(v6, index);
  }

  return v7;
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  result = [(TSWPStorage *)self attributeArrayForKind:4];
  if (result)
  {
    v5 = result;
    if (*(result + 2) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == index))
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

- (unint64_t)attachmentIndexAtCharIndex:(unint64_t)index
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
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      if (TSWPAttributeArray::charIndexForAttributeIndex(v5, v7) == index)
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

- (void)replaceWithAttachment:(id)attachment forAttachmentIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  v10 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (v10 && v10->var2 > index)
  {

    TSWPAttributeArray::replaceObjectForAttributeIndex(v10, attachment, index, context, transaction);
  }
}

- (unint64_t)attachmentIndexForInsertionAtCharIndex:(unint64_t)index
{
  result = [(TSWPStorage *)self attributeArrayForKind:4];
  if (result)
  {
    v5 = result;
    v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index);
    if (v6 >= v5->var2 || TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) >= index)
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

- (void)enumerateAttachmentsOfClass:(Class)class inTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
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
    v10[4] = class;
    v10[5] = block;
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

- (void)enumerateAttachmentsInTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v8 = objc_opt_class();

  [(TSWPStorage *)self enumerateAttachmentsOfClass:v8 inTextRange:location usingBlock:length, block];
}

- (_NSRange)attachmentIndexRangeForTextRange:(_NSRange)range
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
  [(TSWPStorage *)self enumerateAttachmentsInTextRange:range.location usingBlock:range.length, v8];
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

- (unint64_t)findCharIndexForAttachment:(id)attachment
{
  v4 = [(TSWPStorage *)self attributeArrayForKind:4];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  Object = TSWPAttributeArray::findObject(v4, attachment, 0);
  if (Object == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::charIndexForAttributeIndex(v5, Object);
}

- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards
{
  v4 = [(TSWPStorage *)self attachmentRangeForCharIndex:index forwards:forwards attributeKind:4];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards attributeKind:(unsigned int)kind
{
  v5 = *&kind;
  forwardsCopy = forwards;
  if ((kind & 0xFFFFFFFE) != 4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage attachmentRangeForCharIndex:forwards:attributeKind:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5077, @"Bad attribute kind passed into attachmentRangeForCharIndex::: method."}];
  }

  v11 = [(TSWPStorage *)self attributeArrayForKind:v5];
  if (!v11 || (v12 = v11, !v11->var2))
  {
    if (!forwardsCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v11, index);
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (forwardsCopy)
    {
      v14 = v12;
      v15 = 0;
LABEL_8:
      v16 = TSWPAttributeArray::charIndexForAttributeIndex(v14, v15);
LABEL_11:
      v17 = v16;
      indexCopy2 = index;
      index = v17 - index;
      goto LABEL_21;
    }

LABEL_20:
    indexCopy2 = 0;
    goto LABEL_21;
  }

  v19 = v13;
  v20 = TSWPAttributeArray::charIndexForAttributeIndex(v12, v13);
  if (forwardsCopy)
  {
    if (v20 == index)
    {
      indexCopy2 = index;
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

  if (v20 == index)
  {
    if (!v19)
    {
      goto LABEL_20;
    }

    v21 = TSWPAttributeArray::charIndexForAttributeIndex(v12, v19 - 1);
    indexCopy2 = index - 1;
    if (v21 != index - 1)
    {
      indexCopy2 = v21 + 1;
      index -= v21 + 1;
      goto LABEL_21;
    }

LABEL_19:
    index = 1;
    goto LABEL_21;
  }

  indexCopy2 = TSWPAttributeArray::charIndexForAttributeIndex(v12, v19);
  v23 = index - (indexCopy2 + 1);
  if (indexCopy2 == index - 1)
  {
    index = 1;
  }

  else
  {
    ++indexCopy2;
    index = v23;
  }

LABEL_21:
  indexCopy3 = index;
  result.length = indexCopy3;
  result.location = indexCopy2;
  return result;
}

- (BOOL)anchoredDrawableAttachmentCharacterAtCharIndex:(unint64_t)index
{
  if ([(TSWPStorage *)self characterAtIndex:?]!= 65532)
  {
    return 0;
  }

  v5 = [(TSWPStorage *)self attachmentAtCharIndex:index];
  if (![v5 isDrawable])
  {
    return 0;
  }

  return [v5 isAnchored];
}

- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)fields
{
  length = fields.length;
  location = fields.location;
  range2 = 0uLL;
  v6 = [(TSWPStorage *)self smartFieldAtCharIndex:fields.location attributeKind:6 effectiveRange:&range2];
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

- (id)extendSelectionToIncludeSmartFields:(id)fields
{
  if (![fields isValid])
  {
    return fields;
  }

  range = [fields range];
  v7 = v6;
  for (i = [fields range]; ; i = -[TSWPStorage textRangeForParagraphsInCharRange:](self, "textRangeForParagraphsInCharRange:", v12, v13))
  {
    v10 = [(TSWPStorage *)self p_extendRangeToIncludeSmartFields:i, v9];
    v12 = v10;
    v13 = v11;
    if (v10 == range && v11 == v7)
    {
      break;
    }

    range = v10;
    v7 = v11;
    if ([fields type] != 2)
    {
      break;
    }
  }

  if (range == [fields range] && v7 == v14)
  {
    return fields;
  }

  v16 = [fields copyWithNewType:0 range:{v12, v13}];

  return v16;
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  v6 = self->_attributesTable[kind];
  if (!v6)
  {
    if (range)
    {
      range = [(TSWPStorage *)self range];
      goto LABEL_7;
    }

    return 0;
  }

  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(self->_attributesTable[kind], index);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (range)
    {
      v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, 0);
      range = 0;
LABEL_7:
      v10 = 0;
LABEL_10:
      range->location = range;
      range->length = v8;
      return v10;
    }

    return 0;
  }

  v10 = *(v6->var4 + 2 * v7 + 1);
  if (range)
  {
    range = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
    goto LABEL_10;
  }

  return v10;
}

- (id)editableSmartFieldAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  result = [(TSWPStorage *)self smartFieldAtCharIndex:index attributeKind:6 effectiveRange:0];
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

- (void)addSmartField:(id)field toRange:(_NSRange)range dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  styleAttributeArrayKind = [field styleAttributeArrayKind];

  [(TSWPStorage *)self applyObject:field toCharRange:location forKind:length dolcContext:styleAttributeArrayKind undoTransaction:context, transaction];
}

- (void)removeSmartField:(id)field fromRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  styleAttributeArrayKind = [field styleAttributeArrayKind];

  [(TSWPStorage *)self applyObject:0 toCharRange:location forKind:length dolcContext:styleAttributeArrayKind undoTransaction:0, transaction];
}

- (BOOL)hasSmartFields
{
  range = [(TSWPStorage *)self range];

  return [(TSWPStorage *)self hasSmartFieldsInRange:range, v3];
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)range
{
  if (!self->_attributesTable[6])
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(v9, self, range.location, range.length, 6);
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

- (void)enumerateWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  if (self->_attributesTable[kind])
  {
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(v16, self, range.location, range.length, *&kind);
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

      if ((v11 = *(v10 + 8), v17.location = location, v17.length = length, NSIntersectionRange(v17, v15).length) || kind <= 0x12 && ((1 << kind) & 0x40307) != 0 && (v12 = v15.location, v12 == [(TSWPStorage *)self length]) || !length && TSWPInsertionPointInRangeWithOptions(location, 0, v15.location, v15.length, 0))
      {
        (*(block + 2))(block, v11, v15.location, v15.length, &v14);
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
    (*(block + 2))(block, 0, v13.location, v13.length, v16);
  }
}

- (void)enumerateSmartFieldsWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v8 = *&kind;
  if (kind > 0xC || ((1 << kind) & 0x10C0) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5384, @"Not a smart field attribute kind"}];
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
          (*(block + 2))(block, v15, v19.location, v19.length, &v18);
          if ([(TSWPStorage *)self length]!= v13)
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:]"];
            [currentHandler2 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5404, @"Storage was modified while enumerating attributes"}];
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

- (id)smartFieldsWithAttributeKind:(unsigned int)kind intersectingRange:(_NSRange)range passingTest:(id)test
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
  v7[4] = test;
  v7[5] = &v8;
  [(TSWPStorage *)self enumerateSmartFieldsWithAttributeKind:*&kind inRange:range.location usingBlock:range.length, v7];
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

- (void)smartFieldDidChange:(id)change
{
  if ([change parentStorage] != self)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage smartFieldDidChange:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5439, @"smart field doesn't belong to this storage"}];
  }

  range = [change range];

  [(TSWPStorage *)self p_didChangeRange:range delta:v7 broadcastKind:0, 0];
}

- (void)autoUpdateField:(id)field withRange:(_NSRange)range documentRoot:(id)root returningInsertedRange:(_NSRange *)insertedRange
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage autoUpdateField:withRange:documentRoot:returningInsertedRange:]"];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:5448 description:@"unimplemented"];
}

- (void)autoUpdateSmartFieldsWithDocumentRoot:(id)root
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage autoUpdateSmartFieldsWithDocumentRoot:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:5455 description:@"unimplemented"];
}

- (void)addGlyphVariantData:(id)data toRange:(_NSRange)range
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage addGlyphVariantData:toRange:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:5463 description:@"unimplemented"];
}

- (void)removeGlyphVariantDataFromRange:(_NSRange)range
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage removeGlyphVariantDataFromRange:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:5470 description:@"unimplemented"];
}

- (id)glyphVariantDataAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage glyphVariantDataAtCharIndex:effectiveRange:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5476, @"unimplemented"}];
  return 0;
}

- (void)fixGlyphVariantFontsForRange:(_NSRange)range
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage fixGlyphVariantFontsForRange:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:5483 description:@"unimplemented"];
}

- (id)fontNameAtCharIndex:(unint64_t)index size:(double *)size effectiveRange:(_NSRange *)range styleProvider:(id)provider
{
  v7 = [(TSWPStorage *)self createFontAtCharIndex:index scaleTextPercent:100 effectiveRange:range styleProvider:provider];
  v8 = CTFontCopyPostScriptName(v7);
  if (size)
  {
    *size = CTFontGetSize(v7);
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

- (void)setGeometry:(id)geometry
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage setGeometry:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:5537 description:@"can't set geometry on a storage"];
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  if (self->_parentInfo == needed)
  {
    self->_parentInfo = 0;
  }
}

- (BOOL)isThemeContent
{
  parentInfo = [(TSWPStorage *)self parentInfo];

  return [(TSDContainerInfo *)parentInfo isThemeContent];
}

- (id)copyWithContext:(id)context
{
  range = [(TSWPStorage *)self range];
  v7 = v6;
  wpKind = [(TSWPStorage *)self wpKind];

  return [(TSWPStorage *)self newSubstorageWithRange:range storageContext:v7 objectsContext:context flags:context kind:1, wpKind];
}

- (id)childInfos
{
  attachmentCount = [(TSWPStorage *)self attachmentCount];
  footnoteCount = [(TSWPStorage *)self footnoteCount];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:footnoteCount + attachmentCount];
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
          drawable = [v10 drawable];
          if (drawable)
          {
            [v5 addObject:drawable];
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
          containedStorage = [v16 containedStorage];
          if (containedStorage)
          {
            [v5 addObject:containedStorage];
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

- (id)referencedStylesOfClass:(Class)class
{
  v5 = [MEMORY[0x277CBEB58] set];
  if (objc_opt_class() == class)
  {
    v8 = 0;
  }

  else if (objc_opt_class() == class)
  {
    v8 = 2;
  }

  else if (objc_opt_class() == class)
  {
    v8 = 3;
  }

  else
  {
    if (objc_opt_class() != class)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage referencedStylesOfClass:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 5674, @"Unknown style class."}];
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

- (void)replaceReferencedStylesUsingBlock:(id)block
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
          v10[4] = block;
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
  footnoteCount = [(TSWPStorage *)self length];
  if (footnoteCount)
  {
    v4 = footnoteCount > 8;
    if (footnoteCount >= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = footnoteCount;
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
      LOBYTE(footnoteCount) = 0;
      return footnoteCount;
    }

LABEL_13:
    if (-[NSMutableString rangeOfCharacterFromSet:options:](self->_string, "rangeOfCharacterFromSet:options:", [objc_msgSend(MEMORY[0x277CCA900] "invisibleCharacterSet")], 2) != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_31:
      LOBYTE(footnoteCount) = 1;
      return footnoteCount;
    }

    attachmentCount = [(TSWPStorage *)self attachmentCount];
    if (attachmentCount)
    {
      v10 = attachmentCount;
      for (i = 0; v10 != i; ++i)
      {
        v12 = [(TSWPStorage *)self attachmentAtAttachmentIndex:i outCharIndex:0];
        if (v12)
        {
          v13 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringEquivalent = [v13 stringEquivalent];
            if (stringEquivalent && [stringEquivalent length])
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

    footnoteCount = [(TSWPStorage *)self footnoteCount];
    if (footnoteCount)
    {
      v16 = footnoteCount;
      v17 = 0;
      while (1)
      {
        v18 = [(TSWPStorage *)self footnoteAtFootnoteIndex:v17 outCharIndex:0];
        if (v18)
        {
          stringEquivalent2 = [v18 stringEquivalent];
          if (stringEquivalent2)
          {
            if ([stringEquivalent2 length])
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

  return footnoteCount;
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

- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags
{
  v6 = *&flags;
  length = range.length;
  location = range.location;
  wpKind = [(TSWPStorage *)self wpKind];

  return [(TSWPStorage *)self newSubstorageWithRange:location storageContext:length objectsContext:context flags:objectsContext kind:v6, wpKind];
}

- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags kind:(int)kind
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v30 = [(NSMutableString *)self->_string substringWithRange:range.location, range.length];
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
  if ((flags & 4) != 0 && [(TSWPStorage *)self supportsSections]&& [(TSWPStorage *)self sectionCount])
  {
    contextCopy2 = context;
    v16 = [-[TSWPStorage sectionAtCharIndex:effectiveRange:](self sectionAtCharIndex:location effectiveRange:{0), "copyWithContext:", context}];
  }

  else
  {
    contextCopy2 = context;
    v16 = 0;
  }

  [(TSWPStorage *)self paragraphFlags:&v33 andLevel:&v34 atCharIndex:location];
  v17 = [(TSWPStorage *)self listStartAtCharIndex:location];
  LODWORD(v27) = v14;
  v31 = v16;
  v18 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy2 string:v30 kind:kind stylesheet:self->_stylesheet paragraphStyle:v29 listStyle:v28 section:v16 columnStyle:v13 paragraphDirection:v27];
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
  if ((flags & 8) != 0)
  {
    v20 = +[TSKAddedToDocumentContext changeTrackingSubstorageForCopyContext];
  }

  v21 = 0;
  do
  {
    v22 = [(TSWPStorage *)self attributeArrayForKind:v21];
    if (v22)
    {
      LODWORD(v26) = flags;
      [(TSWPStorage *)self transferAttributeArraySource:v22 forSourceRange:location toDestStorage:length objectContext:v18 dolcContext:objectsContext flags:v20, v26];
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

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage newSubstorageWithRange:storageContext:objectsContext:flags:kind:]"];
    [currentHandler handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"), 6123, @"No default section in storage."}];
  }

LABEL_29:

  return v18;
}

- (int)compareRange:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange options:(unint64_t)options
{
  length = otherRange.length;
  location = otherRange.location;
  v10 = range.length;
  v11 = range.location;
  range = [storage range];
  v15 = v14;
  string = [storage string];
  v17 = string;
  if (location != range || length != v15)
  {
    v17 = [string substringWithRange:{location, length}];
  }

  result = [(NSMutableString *)self->_string compare:v17 options:options range:v11, v10];
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
          result = [(TSWPStorage *)self compareAttributeArray:v20 range:v11 otherStorage:v10 otherRange:storage, location, length];
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
    wPKind = [MEMORY[0x277CCACA8] stringWithFormat:@"*#$! Unknown WP kind: %d", WPKind];
  }

  else
  {
    wPKind = [TSWPStorage description]::kinds[WPKind];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%@*) %p (length:%lu) kind: %@", objc_opt_class(), self, -[TSWPStorage characterCount](self, "characterCount"), wPKind];
}

- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert attributeKind:(unsigned int)kind dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  v11 = [(TSWPStorage *)self smartFieldAtCharIndex:index attributeKind:*&kind effectiveRange:&v16];
  if (v11 && index > v16)
  {
    v12 = v17 + v16;
    if (index - v16 != v17 && v12 != index)
    {
      v14 = v12 - index;
      v15 = [v11 copyWithContext:{-[TSPObject context](self, "context")}];
      [(TSWPStorage *)self addSmartField:v15 toRange:index dolcContext:v14 undoTransaction:context, transaction];
    }
  }
}

- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert dolcContext:(id)context undoTransaction:(TSWPStorageTransaction *)transaction
{
  [(TSWPStorage *)self splitSmartFieldAtCharIndex:index lengthToInsert:insert attributeKind:6 dolcContext:context undoTransaction:transaction];

  [(TSWPStorage *)self splitSmartFieldAtCharIndex:index lengthToInsert:insert attributeKind:12 dolcContext:context undoTransaction:transaction];
}

- (__CTFont)createFontAtCharIndex:(unint64_t)index scaleTextPercent:(unint64_t)percent effectiveRange:(_NSRange *)range styleProvider:(id)provider
{
  v11 = [(TSWPStorage *)self characterStyleAtCharIndex:index left:0 effectiveRange:0];
  v12 = [provider paragraphStyleAtParIndex:-[TSWPStorage paragraphIndexAtCharIndex:](self effectiveRange:{"paragraphIndexAtCharIndex:", index), range}];

  return TSWPFastCreateFontForStyle(v11, v12, percent);
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string options:(unint64_t)options changedRange:(_NSRange *)changedRange changeDelta:(int64_t *)delta undoTransaction:(TSWPStorageTransaction *)transaction changeSession:(id)session
{
  length = range.length;
  location = range.location;
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_287D36338;
  }

  options = [(__CFString *)stringCopy stringByCapitalizingToMatchString:[(TSWPStorage *)self string] range:range.location searchOptions:range.length, options];
  v16 = [(TSWPStorage *)self length];
  [(TSWPStorage *)self replaceCharactersInSelection:[TSWPSelection selectionWithRange:?]changeSession:options undoTransaction:1 outInsertedRange:0, session, transaction, 0];
  if (delta)
  {
    *delta = [(TSWPStorage *)self length]- v16;
  }

  if (changedRange)
  {
    changedRange->location = location;
    changedRange->length = [options length];
  }
}

- (id)valueForBIUProperties:(id)properties selection:(id)selection insertionStyle:(id)style
{
  v34 = *MEMORY[0x277D85DE8];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  superRange = [selection superRange];
  v11 = -[TSWPStorage characterStyleAtCharIndex:left:effectiveRange:](self, "characterStyleAtCharIndex:left:effectiveRange:", superRange, [selection isInsertionPoint], 0);
  v12 = [(TSWPStorage *)self paragraphStyleAtCharIndex:superRange effectiveRange:0];
  if (style)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = (&v29 - ((8 * v13 + 15) & 0x30));
  if (style)
  {
    v14[2] = v12;
  }

  else
  {
    style = v11;
    v11 = v12;
  }

  *v14 = style;
  v14[1] = v11;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [properties countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(properties);
        }

        unsignedIntValue = [*(*(&v29 + 1) + 8 * i) unsignedIntValue];
        v21 = unsignedIntValue;
        if (unsignedIntValue > 2)
        {
          if (unsignedIntValue <= 4)
          {
            if (unsignedIntValue == 3)
            {
              v26 = 26;
              goto LABEL_39;
            }

            v22 = 8226;
            goto LABEL_35;
          }

          if (unsignedIntValue == 5)
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

          if (unsignedIntValue != 6)
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

        switch(unsignedIntValue)
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
            [indexSet addIndex:v17];
            break;
          case 2:
            goto LABEL_22;
        }

LABEL_41:
        ++v17;
      }

      v16 = [properties countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  return indexSet;
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
  canPasteAsPlainTextWithUniformParagraphs = [(TSWPStorage *)self canPasteAsPlainTextWithUniformParagraphs];
  if (canPasteAsPlainTextWithUniformParagraphs)
  {

    LOBYTE(canPasteAsPlainTextWithUniformParagraphs) = [(TSWPStorage *)self p_passesExtraTablesChecksForStoringInAStringValueCell];
  }

  return canPasteAsPlainTextWithUniformParagraphs;
}

- (id)valueForBIUProperties:(id)properties
{
  v5 = [TSWPSelection alloc];
  range = [(TSWPStorage *)self range];
  v8 = [(TSWPSelection *)v5 initWithRange:range, v7];
  v9 = [(TSWPStorage *)self valueForBIUProperties:properties selection:v8 insertionStyle:0];

  return v9;
}

- (uint64_t)setListStart:forCharRange:undoTransaction:.cold.1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage setListStart:forCharRange:undoTransaction:]"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage.mm"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:4073 description:@"Out-of-bounds type assignment was clamped to max"];
}

- (_NSRange)rangeForChange:(id)change
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

    if (TSWPChangeEnumerator::change(v10) == change)
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

- (id)changeAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  v6 = self->_attributesTable[kind];
  if (!v6 || !v6->var2)
  {
    if (range)
    {
      range = [(TSWPStorage *)self range];
      goto LABEL_8;
    }

    return 0;
  }

  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(self->_attributesTable[kind], index);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(v6->var4 + 2 * v7 + 1);
    if (!range)
    {
      return v10;
    }

    range = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
    goto LABEL_9;
  }

  if (!range)
  {
    return 0;
  }

  v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, 0);
  range = 0;
LABEL_8:
  v10 = 0;
LABEL_9:
  range->location = range;
  range->length = v8;
  return v10;
}

- (id)changeAtCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  result = [(TSWPStorage *)self changeAtCharIndex:index attributeKind:15 effectiveRange:range];
  if (!result)
  {

    return [(TSWPStorage *)self changeAtCharIndex:index attributeKind:16 effectiveRange:range];
  }

  return result;
}

- (TSWPRangeVector)deletedRangeVectorInRange:(SEL)range
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

- (id)deletedRangesInRange:(_NSRange)range
{
  if (!self)
  {
    return 0;
  }

  [(TSWPStorage *)self deletedRangeVectorInRange:range.location, range.length];
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

- (id)hiddenRangesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v8, self, range);
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

- (BOOL)p_hasDeletedTextAtCharIndex:(unint64_t)index requireHidden:(BOOL)hidden range:(_NSRange *)range
{
  hiddenCopy = hidden;
  deletionChangesTable = [(TSWPStorage *)self deletionChangesTable];
  if (deletionChangesTable)
  {
    v9 = deletionChangesTable;
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(deletionChangesTable, index);
    if (v10 > 0x7FFFFFFFFFFFFFFELL)
    {
      LOBYTE(deletionChangesTable) = 0;
    }

    else
    {
      v11 = v10;
      deletionChangesTable = *(v9->var4 + 2 * v10 + 1);
      if (deletionChangesTable)
      {
        if (!hiddenCopy || (LODWORD(deletionChangesTable) = [(TSWPChangeAttributeArray *)deletionChangesTable isHidden], deletionChangesTable))
        {
          v13 = TSWPAttributeArray::rangeForAttributeIndex(v9, v11);
          LOBYTE(deletionChangesTable) = 0;
          if (index >= v13 && index - v13 < v12)
          {
            if (range)
            {
              range->location = v13;
              range->length = v12;
            }

            LOBYTE(deletionChangesTable) = 1;
          }
        }
      }
    }
  }

  return deletionChangesTable;
}

- (unint64_t)p_indexOfFirstNonDeletedCharInRange:(_NSRange)range requireVisible:(BOOL)visible
{
  visibleCopy = visible;
  location = range.location;
  rangeCopy = range;
  deletionChangesTable = [(TSWPStorage *)self deletionChangesTable];
  if (deletionChangesTable)
  {
    v7 = deletionChangesTable;
    TSWPAttributeArray::begin(deletionChangesTable, &rangeCopy, &v15);
    TSWPAttributeArray::end(v7, &rangeCopy, &v13);
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

        if (visibleCopy)
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

      v11 = rangeCopy.location;
      if (v11 <= TSWPAttributeArray::rangeForAttributeIndex(v10, v8))
      {
        return TSWPAttributeArray::rangeForAttributeIndex(v15, v16);
      }

      else
      {
        return rangeCopy.location;
      }
    }
  }

  return location;
}

- (unint64_t)indexAfterLastVisibleCharInRange:(_NSRange)range
{
  rangeCopy = range;
  v3 = range.location + range.length;
  deletionChangesTable = [(TSWPStorage *)self deletionChangesTable];
  if (deletionChangesTable)
  {
    v5 = deletionChangesTable;
    TSWPAttributeArray::end(deletionChangesTable, &rangeCopy, &v14);
    TSWPAttributeArray::begin(v5, &rangeCopy, &v12);
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

      v3 = rangeCopy.length + rangeCopy.location;
      v9 = TSWPAttributeArray::rangeForAttributeIndex(v8, v7);
      if (v9 + v10 < v3)
      {
        return v9 + v10;
      }
    }
  }

  return v3;
}

- (BOOL)hasDeletionInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  deletionChangesTable = [(TSWPStorage *)self deletionChangesTable];
  if (deletionChangesTable)
  {
    v6 = deletionChangesTable;
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(deletionChangesTable, location);
    if (*(v6->var4 + 2 * v7 + 1))
    {
      LOBYTE(deletionChangesTable) = 1;
    }

    else
    {
      v8 = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
      LOBYTE(deletionChangesTable) = v8 > location || v8 + v9 < location + length;
    }
  }

  return deletionChangesTable;
}

- (void)applyChange:(id)change changeRange:(_NSRange)range accept:(BOOL)accept undoTransaction:(void *)transaction
{
  acceptCopy = accept;
  length = range.length;
  location = range.location;
  if (([change isInsertion] & 1) == 0 && (objc_msgSend(change, "isDeletion") & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) applyChange:changeRange:accept:undoTransaction:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 361, @"unknown change kind"}];
  }

  if (([change isInsertion] & 1) != 0 || objc_msgSend(change, "isDeletion"))
  {
    if ([change isInsertion])
    {
      v14 = 15;
    }

    else
    {
      v14 = 16;
    }

    [(TSWPStorage *)self applyObject:0 toCharRange:location forKind:length dolcContext:v14 undoTransaction:0, transaction];
    if (acceptCopy)
    {
      if (([change isInsertion] & 1) != 0 || (objc_msgSend(change, "isDeletion") & 1) == 0)
      {
        return;
      }
    }

    else if (([change isDeletion] & 1) != 0 || !objc_msgSend(change, "isInsertion"))
    {
      return;
    }

    [(TSWPStorage *)self deleteRange:location undoTransaction:length, transaction];
  }
}

- (void)applyChanges:(BOOL)changes inRange:(_NSRange)range inSelectionRange:(_NSRange)selectionRange outChangedRange:(_NSRange *)changedRange outSelectionRange:(_NSRange *)outSelectionRange undoTransaction:(void *)transaction forceAll:(BOOL)all
{
  length = selectionRange.length;
  location = selectionRange.location;
  v11 = range.length;
  v12 = range.location;
  changesCopy = changes;
  v72 = *MEMORY[0x277D85DE8];
  *changedRange = range;
  *outSelectionRange = selectionRange;
  outSelectionRangeCopy = outSelectionRange;
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
  *v58 = all;
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
    *changedRange = NSUnionRange(*changedRange, v82);
    v21 = TSWPChangeEnumerator::change(v69);
    v22 = v21;
    if (changesCopy)
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
    if (!all && v18 <= location && v18 + v20 >= v57)
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

    [v17 addObject:{v22, outSelectionRangeCopy}];
    TSWPChangeEnumerator::operator++(v69);
  }

  if (v55)
  {
    changedRange->location = v15;
    changedRange->length = range1;
    if (changesCopy)
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
    changedRange->location = v52;
    changedRange->length = v51;
    if (changesCopy)
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

  if (outSelectionRangeCopy->location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = outSelectionRangeCopy->length + *&v58[4];
    outSelectionRangeCopy->location += v59;
    outSelectionRangeCopy->length = v26;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = [v17 countByEnumeratingWithState:&v65 objects:v71 count:{16, outSelectionRangeCopy}];
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
          [(TSWPStorage *)self applyChange:v30 changeRange:v31 accept:v32 undoTransaction:changesCopy, transaction];
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
            [(TSWPStorage *)self applyChange:v36 changeRange:v38 accept:v37 undoTransaction:changesCopy, transaction];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) applyChanges:inRange:inSelectionRange:outChangedRange:outSelectionRange:undoTransaction:forceAll:]"];
      [currentHandler handleFailureInFunction:v42 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 491, @"bad selection range"}];
      v43 = *v50;
      v44 = v50[1];
      v89.location = [(TSWPStorage *)self range];
      v89.length = v45;
      v79.location = v43;
      v79.length = v44;
      *v50 = NSIntersectionRange(v79, v89);
    }
  }

  v46 = changedRange->location;
  if (changedRange->location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = changedRange->length;
    v90.location = [(TSWPStorage *)self range];
    v90.length = v48;
    v80.location = v46;
    v80.length = v47;
    *changedRange = NSIntersectionRange(v80, v90);
  }

  TSWPChangeEnumerator::~TSWPChangeEnumerator(v69);
}

- (id)nextChangeFromCharIndex:(unint64_t)index afterChange:(id)change changeRange:(_NSRange *)range
{
  v9 = [(TSWPStorage *)self length];
  if (v9 <= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v9;
  }

  if (v9 >= index)
  {
    v11.location = index;
  }

  else
  {
    v11.location = v9;
  }

  v11.length = indexCopy - v11.location;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v21, self, v11);
  v12 = 0;
  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  while (TSWPChangeEnumerator::change(v21))
  {
    v15 = !change || v13 == change;
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
  if (v13 == change)
  {
    v22.location = [(TSWPStorage *)self range];
    v22.length = v18;
    TSWPChangeEnumerator::TSWPChangeEnumerator(v21, self, v22);
    v13 = TSWPChangeEnumerator::change(v21);
    v14 = TSWPChangeEnumerator::changeRange(v21);
    v12 = v19;
    TSWPChangeEnumerator::~TSWPChangeEnumerator(v21);
  }

  if (range)
  {
    range->location = v14;
    range->length = v12;
  }

  return v13;
}

- (id)previousChangeFromCharIndex:(unint64_t)index beforeChange:(id)change changeRange:(_NSRange *)range
{
  v21.location = 0;
  v21.length = index;
  TSWPChangeEnumerator::TSWPChangeEnumerator(v20, self, v21);
  v9 = 0;
  v10 = 0;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  while (TSWPChangeEnumerator::change(v20))
  {
    v12 = TSWPChangeEnumerator::change(v20);
    v13 = TSWPChangeEnumerator::changeRange(v20);
    if (v12 == change)
    {
      break;
    }

    v15 = v13;
    if (v13 > index)
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

  if (range)
  {
    range->location = v11;
    range->length = v9;
  }

  return v10;
}

- (id)changeDetailsAtCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if ([(TSWPStorage *)self range]> index || (v7 = [(TSWPStorage *)self range], v7 + v8 < index))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsAtCharIndex:outRange:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"];
    v17.location = [(TSWPStorage *)self range];
    [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:592 description:{@"charIndex %lu not within storage range %@", index, NSStringFromRange(v17)}];
  }

  v12 = [(TSWPStorage *)self changeAtCharIndex:index outRange:range];
  location = range->location;
  length = range->length;

  return [(TSWPStorage *)self changeDetailsForChange:v12 withRange:location, length];
}

- (id)changeDetailsForChange:(id)change withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (change)
  {
    if (range.length)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]"];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 602, @"invalid nil value for '%s'", "change"}];
    if (length)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]"];
  [currentHandler2 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 603, @"Should have a change range greater than 0"}];
LABEL_3:
  v8 = [(TSWPStorage *)self substringWithRange:location, length];
  v9 = [v8 length];
  if (!v9)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]"];
    [currentHandler3 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_changeTracking.mm"), 609, @"change text length should be greater than 0"}];
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
    if (([change isInsertion] & 1) == 0)
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

  if ([change isInsertion])
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
  v26 = [[TSWPChangeDetails alloc] initWithChange:change changeString:v25];

  return v26;
}

- (_NSRange)rangeForTrackedChanges:(id)changes
{
  range = [changes range];
  v7 = v6;
  if ([changes isInsertionPoint])
  {
    v8 = [(TSWPStorage *)self rangeForSelectionWithInsertionSelection:changes];
    if ([changes start] == v8 + v9)
    {
      if ([changes start])
      {
        range = [changes start] - 1;
      }

      else
      {
        range = 0;
      }
    }
  }

  v10 = range;
  v11 = v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)selectionContainsVisibleTrackedChanges:(id)changes
{
  isValid = [changes isValid];
  if (isValid)
  {
    isValid = [(TSWPStorage *)self hasTrackedChanges];
    if (isValid)
    {
      v6 = [(TSWPStorage *)self rangeForTrackedChanges:changes];
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
          LOBYTE(isValid) = 0;
          return isValid;
        }
      }

      LOBYTE(isValid) = 1;
    }
  }

  return isValid;
}

- (void)changeViewSettingsDidChange
{
  range = [(TSWPStorage *)self range];

  [(TSWPStorage *)self p_didChangeRange:range delta:v3 broadcastKind:0, 0];
}

- (BOOL)highlightsAllowed
{
  wpKind = [(TSWPStorage *)self wpKind];
  LOBYTE(v4) = (wpKind & 0xFFFFFFFD) == 0 || wpKind == 3;
  if (wpKind <= 3 && wpKind != 1)
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

- (id)p_replacementsForSelection:(id)selection withString:(id)string changeSession:(id)session shouldTrackDeletions:(BOOL)deletions
{
  array = [MEMORY[0x277CBEB18] array];
  if (session)
  {
    v14.location = [selection range];
    v14.length = v10;
    TSWPRangeVector::TSWPRangeVector(&v13, &v14);
  }

  v11 = [[TSWPTextReplacement alloc] initWithSelection:selection string:string];
  [array addObject:v11];

  [array sortUsingComparator:&__block_literal_global_76];
  return array;
}

- (void)p_handleChangeSplittingForInsertedRange:(_NSRange)range changeSession:(id)session undoTransaction:(void *)transaction
{
  rangeCopy = range;
  if (range.length)
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
        TSWPAttributeArray::begin(v12, &rangeCopy, &v24);
        TSWPAttributeArray::end(v13, &rangeCopy, v23);
        for (i = v25; i != v23[1]; i = ++v25)
        {
          v15 = v24->var4 + 16 * i;
          v16 = *(v15 + 1);
          if (v16)
          {
            if ([(TSWPStorage *)self p_shouldInsertionSplitChange:*(v15 + 1) changeSession:session])
            {
              v17 = TSWPAttributeArray::rangeForAttributeIndex(v24, v25);
              if (v17 < rangeCopy.location)
              {
                v19 = v17 + v18;
                if (v17 + v18 > rangeCopy.length + rangeCopy.location)
                {
                  v20 = [v16 copyWithContext:{-[TSPObject context](self, "context")}];
                  if (rangeCopy.length + rangeCopy.location <= v19)
                  {
                    v21 = v19;
                  }

                  else
                  {
                    v21 = rangeCopy.length + rangeCopy.location;
                  }

                  if (rangeCopy.length + rangeCopy.location >= v19)
                  {
                    v22 = v19;
                  }

                  else
                  {
                    v22 = rangeCopy.length + rangeCopy.location;
                  }

                  [(TSWPStorage *)self applyObject:v20 toCharRange:v22 forKind:v21 - v22 dolcContext:v11 undoTransaction:0, transaction];
                  [(TSWPStorage *)self applyObject:0 toCharRange:rangeCopy.location forKind:rangeCopy.length dolcContext:v11 undoTransaction:0, transaction];
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

- (BOOL)p_shouldInsertionSplitChange:(id)change changeSession:(id)session
{
  if (session)
  {
    return [change canMergeWithKind:1 session:?] ^ 1;
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TablesAdditions) unstashBroadcaster]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSWPStorage_TablesAdditions.mm"), 82, @"swapping in the stashed broadcaster, so the real one should be nil!"}];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TablesAdditions) hyperlinkCellID]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSWPStorage_TablesAdditions.mm"), 101, @"cell attribute array should not be empty"}];
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

- (void)setHyperlinkCellID:(id)d
{
  v4 = *&d & 0xFFFFFF;
  if (([(TSWPStorage *)self hyperlinkCellID]& 0xFFFFFF) != (*&d & 0xFFFFFF))
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
  attachmentCount = [(TSWPStorage *)self attachmentCount];
  if (attachmentCount)
  {
    v4 = attachmentCount;
    if ([-[TSWPStorage attachmentAtAttachmentIndex:outCharIndex:](self attachmentAtAttachmentIndex:0 outCharIndex:{0), "changesWithPageCount"}])
    {
      LOBYTE(attachmentCount) = 1;
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
      LOBYTE(attachmentCount) = v6 < v4;
    }
  }

  return attachmentCount;
}

- (BOOL)hasAttachmentsThatChangeWithPageNumberOrPageCount
{
  attachmentCount = [(TSWPStorage *)self attachmentCount];
  if (attachmentCount)
  {
    v4 = attachmentCount;
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
        LOBYTE(attachmentCount) = 0;
        return attachmentCount;
      }
    }

    LOBYTE(attachmentCount) = 1;
  }

  return attachmentCount;
}

@end