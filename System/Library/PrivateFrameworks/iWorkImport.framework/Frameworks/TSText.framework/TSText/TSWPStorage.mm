@interface TSWPStorage
+ (BOOL)shouldInvalidateForStylePropertyChangeSet:(id)set;
+ (Class)classForUnarchiver:(id)unarchiver;
+ (Class)pStringClassForWPKind:(unsigned __int8)kind;
+ (TSWPAttributeArray)createAttributeArrayForKind:(unint64_t)kind actionState:(void *)state;
+ (TSWPAttributeArray)createEmptyAttributeArrayForKind:(unint64_t)kind;
+ (id)filterMarkAttributes:(id)attributes;
+ (id)filterText:(id)text;
+ (id)filterText:(id)text flags:(unint64_t)flags;
+ (id)filterText:(id)text removingAttachments:(BOOL)attachments;
+ (id)filterText:(id)text removingAttachments:(BOOL)attachments removingControlCharacters:(BOOL)characters;
+ (id)filterText:(id)text removingAttachments:(BOOL)attachments removingControlCharacters:(BOOL)characters returnIndexSet:(BOOL)set;
+ (void)initialize;
+ (void)nonUndoableRemoveUnsupportedHyperlinksInInfos:(id)infos;
+ (void)nonUndoableRemoveUnsupportedHyperlinksInInfos:(id)infos forCrossDocumentPaste:(BOOL)paste;
+ (void)resetAllTextAttributeUUIDStringsInInfo:(id)info;
+ (void)resetAllTextAttributeUUIDStringsInInfos:(id)infos;
+ (void)resetDisallowedElementKinds;
+ (void)resetDisallowedSmartFieldKinds;
- (BOOL)allowsElementKind:(unsigned int)kind;
- (BOOL)allowsElementKind:(unsigned int)kind nestingDepth:(int64_t)depth;
- (BOOL)anchoredDrawableAttachmentCharacterAtCharIndex:(unint64_t)index;
- (BOOL)canAcceptAttachmentForDrawableInfo:(id)info;
- (BOOL)canAcceptDrawableAttachments;
- (BOOL)canBeAnnotatedWithPencil;
- (BOOL)canBeStoredInAStringValueCell;
- (BOOL)canPasteAsPlainText;
- (BOOL)canPasteAsPlainTextWithUniformParagraphs;
- (BOOL)canTransferAttributesForInitialization:(unint64_t)initialization withFlags:(unsigned int)flags;
- (BOOL)containsOnlyInlineDrawableAttachments;
- (BOOL)hasAnyCommentsRequiring2_2;
- (BOOL)hasAttachmentsRequiring4_1InRange:(_NSRange)range;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasComments;
- (BOOL)hasData:(TSWPParagraphData)data attributeArrayKind:(unint64_t)kind range:(_NSRange)range;
- (BOOL)hasDeletionInRange:(_NSRange)range;
- (BOOL)hasDrawableAttachmentOfClass:(Class)class;
- (BOOL)hasEmptyListAtCharIndex:(unint64_t)index;
- (BOOL)hasEmptyParagraphFillOrBordersAtCharIndex:(unint64_t)index;
- (BOOL)hasObject:(id)object attributeArrayKind:(unint64_t)kind range:(_NSRange)range findUsingExactRangeLocation:(BOOL)location;
- (BOOL)hasPartitionableAttachmentAtStartOfTextRange:(_NSRange)range;
- (BOOL)hasSectionForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasSmartFields;
- (BOOL)hasSmartFieldsInRange:(_NSRange)range;
- (BOOL)hasUserGeneratedVisibleText;
- (BOOL)hasVisibleContent;
- (BOOL)hasVisibleTextOnlyContent;
- (BOOL)highlightsAllowed;
- (BOOL)isAllWhitespaceInSelection:(id)selection;
- (BOOL)isAllowedToAddCaptionToChildInfo:(id)info;
- (BOOL)isCharRangeEntirelyDeleted:(_NSRange)deleted;
- (BOOL)isCharRangeEntirelyHidden:(_NSRange)hidden;
- (BOOL)isCharRangePartiallyDeleted:(_NSRange)deleted;
- (BOOL)isEmptyParagraphRange:(_NSRange)range ignoreAttachmentCharacters:(BOOL)characters outRange:(_NSRange *)outRange;
- (BOOL)isEmptyParagraphSelection:(id)selection ignoreAttachmentCharacters:(BOOL)characters outRange:(_NSRange *)range;
- (BOOL)isObjectValid:(id)valid forStyleKind:(int)kind;
- (BOOL)isSingleAnchoredDrawableAttachmentForSelection:(id)selection;
- (BOOL)isThemeContent;
- (BOOL)isTopmostContainerInfo;
- (BOOL)isWholeParagraphsForRange:(_NSRange)range ignoreAttachmentCharacters:(BOOL)characters requireParagraphBreakSelected:(BOOL)selected;
- (BOOL)isWritingDirectionRightToLeftForListAtParIndex:(unint64_t)index;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(unint64_t)index;
- (BOOL)pAllowsAttachment:(id)attachment withNestingDepth:(int64_t)depth;
- (BOOL)p_canTransferBookmark:(id)bookmark;
- (BOOL)p_hasDeletedTextAtCharIndex:(unint64_t)index requireHidden:(BOOL)hidden range:(_NSRange *)range;
- (BOOL)p_hasGoodAttributesForPlainTextPaste;
- (BOOL)p_hasVisibleTextInRange:(_NSRange)range graphicalAttachmentsIncluded:(BOOL)included;
- (BOOL)p_isRotatedInAnyParent;
- (BOOL)p_nestedInHeaderFooter;
- (BOOL)p_passesExtraTablesChecksForStoringInAStringValueCell;
- (BOOL)p_shouldAcceptChangesForRange:(_NSRange)range copiedRanges:(id)ranges removeDeletedText:(BOOL *)text;
- (BOOL)p_shouldInsertionSplitChange:(id)change changeSession:(id)session;
- (BOOL)paragraphHasListLabelAtCharIndex:(unint64_t)index;
- (BOOL)phoneticsExistInSelection:(id)selection;
- (BOOL)phoneticsExistOnRange:(_NSRange)range;
- (BOOL)selectionContainsExclusivelyEmptyParagraphs:(id)paragraphs ignoreAttachmentCharacters:(BOOL)characters;
- (BOOL)setDOLCSuppressed:(BOOL)suppressed;
- (BOOL)supportsDropCaps;
- (BOOL)supportsMultipleColumns;
- (BOOL)supportsParentRotation;
- (BOOL)textIsVerticalAtCharIndex:(unint64_t)index;
- (BOOL)validate:(unint64_t)validate;
- (Class)layoutClass;
- (NSArray)childInfos;
- (NSSet)referencedStyles;
- (NSString)debugDescription;
- (NSString)description;
- (TSDContainerInfo)parentInfo;
- (TSDDrawableInfo)parentDrawable;
- (TSWPAttributeArray)attributeArrayForKind:(unint64_t)kind withCreate:(BOOL)create fromUndo:(BOOL)undo actionState:(void *)state;
- (TSWPCharacterStyle)hyperlinkStyle;
- (TSWPDeletionRangeMap)rangeMap;
- (TSWPDocumentRoot)documentRoot;
- (TSWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)index styleProvider:(unint64_t)provider;
- (TSWPParagraphEnumerator)paragraphEnumeratorAtParIndex:(SEL)index styleProvider:(unint64_t)provider;
- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)range styleProvider:(_NSRange)provider requireHidden:(id)hidden;
- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(unsigned __int8)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0;
- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(unsigned __int8)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0 paragraphDirection:(int)self1;
- (TSWPStorage)initWithContext:(id)context string:(id)string stylesheet:(id)stylesheet kind:(unsigned __int8)kind;
- (_NSRange)annotationRangeForRange:(_NSRange)range;
- (_NSRange)appendString:(id)string undoTransaction:(void *)transaction;
- (_NSRange)attachmentIndexRangeForTextRange:(_NSRange)range;
- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards;
- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards attributeKind:(unint64_t)kind;
- (_NSRange)attributeRangeForOverlappingField:(id)field atAttributeIndex:(unint64_t)index attributeKind:(unint64_t)kind;
- (_NSRange)attributeRangeForOverlappingField:(id)field attributeKind:(unint64_t)kind;
- (_NSRange)charRangeForAttributeRange:(_NSRange)range attributeKind:(unint64_t)kind;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage;
- (_NSRange)footnoteRangeForTextRange:(_NSRange)range;
- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range;
- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session;
- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range placementIndex:(int)index dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session;
- (_NSRange)insertSection:(id)section atCharIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session;
- (_NSRange)insertSectionBreakAtCharIndex:(unint64_t)index replaceParagraphBreak:(BOOL)break sectionToInsert:(id)insert changeSession:(id)session dolcContext:(id)context undoTransaction:(void *)transaction;
- (_NSRange)insertSpecialCharacter:(unsigned __int16)character object:(id)object kind:(unint64_t)kind range:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session;
- (_NSRange)insertSpecialCharacter:(unsigned __int16)character object:(id)object kind:(unint64_t)kind range:(_NSRange)range placementIndex:(int)index dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)self0;
- (_NSRange)moveCharactersInRange:(_NSRange)range toLocation:(unint64_t)location undoTransaction:(void *)transaction;
- (_NSRange)nextWordFromIndex:(unint64_t)index forward:(BOOL)forward;
- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)fields;
- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)fields ofKind:(unint64_t)kind;
- (_NSRange)p_parIndexRangeForTextSourceForCharacterRange:(_NSRange)range;
- (_NSRange)p_rangeForOverlappingField:(id)field attributeKind:(unint64_t)kind;
- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex handleNextWordWhitespace:(BOOL)whitespace;
- (_NSRange)p_rangeWithNonVisibleAttachmentsTrimmedForRange:(_NSRange)range;
- (_NSRange)p_relocateNonSelectedAnchorsInRange:(_NSRange)range selectedInfos:(id)infos undoTransaction:(void *)transaction;
- (_NSRange)p_removeOverlappingFieldsInRange:(_NSRange)range attributeKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (_NSRange)p_replaceCharactersInLogicalSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id)data changeSession:(id)session undoTransaction:(void *)transaction outInsertedRange:(_NSRange *)range;
- (_NSRange)paragraphIndexRangeForCharRange:(_NSRange)range;
- (_NSRange)paragraphIndexRangeIncludingFinalEmptyParagraphForCharRange:(_NSRange)range;
- (_NSRange)range;
- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)words;
- (_NSRange)rangeByExtendingRangeToLineBreak:(_NSRange)break;
- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace;
- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace skipVisibleDeleted:(BOOL)deleted;
- (_NSRange)rangeByTrimmingRange:(_NSRange)range withBlock:(id)block;
- (_NSRange)rangeForAnnotation:(id)annotation;
- (_NSRange)rangeForChange:(id)change;
- (_NSRange)rangeForHighlight:(id)highlight;
- (_NSRange)rangeForPencilAnnotation:(id)annotation;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)rangeForSelectionWithInsertionLocation:(unint64_t)location;
- (_NSRange)rangeOfAnnotationWithOptions:(unint64_t)options range:(_NSRange)range;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index actualCharacterCount:(unint64_t *)count;
- (_NSRange)rangeOfParagraphBreakingCharacter:(unsigned __int16)character backwards:(BOOL)backwards range:(_NSRange)range;
- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options range:(_NSRange)range;
- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options updatingSearchRange:(_NSRange *)range;
- (_NSRange)removePencilAnnotationsInRange:(_NSRange)range undoTransaction:(void *)transaction;
- (_NSRange)replaceAllOccurrencesOfObject:(id)object withObject:(id)withObject forKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (_NSRange)replaceAllOccurrencesOfStyle:(id)style withStyle:(id)withStyle undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withStorage:(id)storage;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withStorage:(id)storage usePasteRules:(BOOL)rules dolcContext:(id)context undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string notifyObservers:(BOOL)observers changeSession:(id)session undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string notifyObservers:(BOOL)observers undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInSelection:(id)selection withStorage:(id)storage usePasteRules:(BOOL)rules srcStylesAmbiguous:(BOOL)ambiguous dolcContext:(id)context changeSession:(id)session undoTransaction:(void *)transaction;
- (_NSRange)replaceCharactersInSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id)data changeSession:(id)session undoTransaction:(void *)transaction outInsertedRange:(_NSRange *)range;
- (_NSRange)replaceSectionAtSectionIndex:(unint64_t)index withSection:(id)section dolcContext:(id)context undoTransaction:(void *)transaction;
- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)index;
- (_NSRange)textRangeForListAtCharIndex:(unint64_t)index;
- (_NSRange)textRangeForListsInCharRange:(_NSRange)range;
- (_NSRange)textRangeForParagraphAtCharIndex:(unint64_t)index;
- (_NSRange)textRangeForParagraphAtIndex:(unint64_t)index;
- (_NSRange)textRangeForParagraphIndexRange:(_NSRange)range;
- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)range;
- (_NSRange)textRangeForSectionRange:(_NSRange)range;
- (_NSRange)textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (__CTFont)createFontAtCharIndex:(unint64_t)index scaleTextPercent:(unint64_t)percent effectiveRange:(_NSRange *)range styleProvider:(id)provider;
- (id)attachmentAtAttachmentIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)attachments;
- (id)bestCharacterLanguageForTextRange:(_NSRange)range;
- (id)changeAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)changeAtCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)changeDetailsAtCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)changeDetailsForChange:(id)change withRange:(_NSRange)range;
- (id)characterStyleAtCharIndex:(unint64_t)index left:(BOOL)left effectiveRange:(_NSRange *)range;
- (id)characterStyleForDeletedRange:(_NSRange)range;
- (id)characterStyleForDropCapAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)childEnumerator;
- (id)columnStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)columnStyleAtColumnStyleIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)copyWithContext:(id)context;
- (id)deletedRangesInRange:(_NSRange)range;
- (id)dictationAndAutocorrectionKeyAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)dropCapCharIndexesInRange:(_NSRange)range;
- (id)dropCapCharIndexesInSelection:(id)selection;
- (id)dropCapStyleAtCharIndex:(unint64_t)index;
- (id)dropCapStyleAtParIndex:(unint64_t)index;
- (id)dropCapStyleIfMatchingSelectionExactly:(id)exactly;
- (id)editableAnnotationForInsertionPointSelection:(id)selection includeComments:(BOOL)comments withOutRange:(_NSRange *)range selectionIsOnEdge:(BOOL *)edge;
- (id)editableSmartFieldAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)effectiveFontAtCharIndex:(unint64_t)index;
- (id)extendSelectionForTopicChildren:(id)children;
- (id)extendSelectionToIncludeSmartFields:(id)fields;
- (id)filteredStorageForWritingToolsWithRange:(_NSRange)range expandRangeToParagraphBoundaries:(BOOL)boundaries;
- (id)firstHighlightForSelection:(id)selection;
- (id)firstHighlightForSelection:(id)selection requireComment:(BOOL)comment;
- (id)firstHighlightForSelectionRange:(_NSRange)range outRange:(_NSRange *)outRange requireComment:(BOOL)comment;
- (id)fontNameAtCharIndex:(unint64_t)index size:(double *)size effectiveRange:(_NSRange *)range styleProvider:(id)provider;
- (id)footnoteAtFootnoteIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex;
- (id)footnoteMarkAtCharIndex:(unint64_t)index;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex:(unint64_t)index;
- (id)footnoteStorages;
- (id)glyphVariantDataAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)hiddenRangesInRange:(_NSRange)range;
- (id)highlightSelectionForSelection:(id)selection;
- (id)indexesSetForBIUProperties:(id)properties;
- (id)indexesSetForBIUProperties:(id)properties selection:(id)selection insertionStyle:(id)style;
- (id)indexesSetForBIUProperties:(id)properties styles:(id)styles;
- (id)languageAtParIndex:(unint64_t)index useStringTokenizer:(BOOL)tokenizer useDocumentLanguage:(BOOL)language;
- (id)languageEntryAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)languageForTextRange:(_NSRange)range useStringTokenizer:(BOOL)tokenizer useDocumentLanguage:(BOOL)language;
- (id)listStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags;
- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags kind:(unsigned __int8)kind;
- (id)nextChangeFromCharIndex:(unint64_t)index afterChange:(id)change changeRange:(_NSRange *)range;
- (id)objectAtLocationAtExactCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)overlappingFieldsAtAttributeIndex:(unint64_t)index attributeKind:(unint64_t)kind;
- (id)pDefaultSectionForContext:(id)context;
- (id)pFindValidInsertionCharStyleFromCharIndex:(unint64_t)index;
- (id)pFlipStringForObject:(id)object insertLength:(unint64_t)length attributeArrayKind:(unint64_t)kind;
- (id)pOverrideObjectBeforeReplacingCharactersInRange:(_NSRange)range withString:(id)string withInsertionBehavior:(int64_t)behavior;
- (id)pOverrideObjectBeforeReplacingCharactersInSelection:(id)selection withString:(id)string;
- (id)p_highlightsForSelectionRange:(_NSRange)range outRange:(_NSRange *)outRange requireComment:(BOOL)comment stopOnFirst:(BOOL)first;
- (id)p_kindDescription;
- (id)p_lazyBroadcaster;
- (id)p_replacementsForRange:(_NSRange)range withString:(id)string replaceTextData:(id)data changeSession:(id)session shouldTrackDeletions:(BOOL)deletions;
- (id)p_stringWithAttachmentCharacterSubstitutedWithCharacter:(id)character;
- (id)p_trackedChangesIntersectingRange:(_NSRange)range;
- (id)p_undeletedCharIndexesInRange:(_NSRange)range;
- (id)paragraphIndicesForSelection:(id)selection;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)pencilAnnotationsInContainedTextRange:(_NSRange)range;
- (id)placeholderSmartFieldAtRange:(_NSRange)range;
- (id)previousChangeFromCharIndex:(unint64_t)index beforeChange:(id)change changeRange:(_NSRange *)range;
- (id)referencedStylesOfClass:(Class)class;
- (id)relocateNonSelectedAnchorsInSelection:(id)selection undoTransaction:(void *)transaction;
- (id)replaceCharactersInSelection:(id)selection withStorage:(id)storage usePasteRules:(BOOL)rules srcStylesAmbiguous:(BOOL)ambiguous dolcContext:(id)context changeSession:(id)session undoTransaction:(void *)transaction outInsertedRanges:(id *)self0;
- (id)replaceCharactersInSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id)data changeSession:(id)session undoTransaction:(void *)transaction outInsertedRanges:(id *)ranges;
- (id)sectionAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)sectionAtSectionIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind inSelection:(id)selection;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range passingTest:(id)test;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind withClass:(Class)class intersectingRange:(_NSRange)range;
- (id)snapshotRubyStateInRange:(_NSRange)range;
- (id)storageByApplyingCustomFormat:(id)format;
- (id)stringForStatisticsInRange:(_NSRange)range;
- (id)stringValue;
- (id)stringWithAttachmentCharacterSubstitution;
- (id)stylesForResolvingBIUPropertiesWithSelection:(id)selection charIndex:(unint64_t)index insertionStyle:(id)style;
- (id)substringWithSelection:(id)selection;
- (id)textSourceForParagraphsContainingRange:(_NSRange)range;
- (id)textSourceForRange:(_NSRange)range;
- (id)trackedChangesIntersectingSelection:(id)selection;
- (id)typesetterTextSourceForRange:(_NSRange)range;
- (id)valueForProperty:(int)property atCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)visibleRangesInRange:(_NSRange)range;
- (int)compareAttributeArray1:(TSWPAttributeArray *)array1 array2:(TSWPAttributeArray *)array2 range1:(_NSRange)range1 range2:(_NSRange)range2 attributeIndex1:(unint64_t)index1 attributeIndex2:(unint64_t)index2 objectComparisonBlock:(id)block;
- (int)compareAttributeArray:(TSWPAttributeArray *)array range:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange objectComparisonBlock:(id)block;
- (int)compareBreakingTablesWithStorage:(id)storage;
- (int)compareRange:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange options:(unint64_t)options objectComparisonBlock:(id)block;
- (int)writingDirectionForParagraphAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (int)writingDirectionForParagraphAtParIndex:(unint64_t)index;
- (int)writingDirectionFromBidiAttributesTableForParagraphAtCharIndex:(unint64_t)index;
- (int64_t)contentWritingDirection;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char;
- (int64_t)nestedTextboxDepth;
- (int64_t)pFlipSpecialCharacterForObject:(id)object range:(_NSRange)range insertLength:(unint64_t)length outChangeRange:(_NSRange *)changeRange attributeArrayKind:(unint64_t)kind actionState:(void *)state;
- (unint64_t)attachmentCount;
- (unint64_t)attachmentIndexAtCharIndex:(unint64_t)index;
- (unint64_t)attachmentIndexForInsertionAtCharIndex:(unint64_t)index;
- (unint64_t)attributeIndexForCharacterIndex:(unint64_t)index attributeKind:(unint64_t)kind;
- (unint64_t)autoNumberFootnoteCountForRange:(_NSRange)range;
- (unint64_t)charIndexAfterAnyAnchoredAttachmentsAtCharIndex:(unint64_t)index;
- (unint64_t)charIndexBeforeAnyAnchoredAttachmentsAtCharIndex:(unint64_t)index;
- (unint64_t)charIndexForParagraphAtIndex:(unint64_t)index;
- (unint64_t)characterStyleAttributeCount;
- (unint64_t)columnStyleCount;
- (unint64_t)countTrackChangesInSelection:(id)selection;
- (unint64_t)dropCapStyleCount;
- (unint64_t)emptyParagraphCount:(_NSRange)count;
- (unint64_t)findCharIndexForAttachment:(id)attachment withHintIndex:(unint64_t *)index;
- (unint64_t)findCharIndexForFootnoteAttachment:(id)attachment withHintIndex:(unint64_t *)index;
- (unint64_t)findCharacterIndexForContainedInfo:(id)info;
- (unint64_t)findNextParagraphStyleChange:(unint64_t)change maxCharIndex:(unint64_t)index;
- (unint64_t)footnoteCount;
- (unint64_t)footnoteIndexForCharIndex:(unint64_t)index;
- (unint64_t)footnoteIndexForFootnote:(id)footnote;
- (unint64_t)footnoteIndexForFootnoteStorage:(id)storage;
- (unint64_t)indexAfterLastVisibleCharInRange:(_NSRange)range;
- (unint64_t)listNumberForParagraphEnumerator:(const TSWPParagraphEnumerator *)enumerator numberingData:(id *)data;
- (unint64_t)listNumberForParagraphIndex:(unint64_t)index numberingData:(id *)data;
- (unint64_t)listStartAtCharIndex:(unint64_t)index;
- (unint64_t)listStartAtParIndex:(unint64_t)index;
- (unint64_t)listStyleCount;
- (unint64_t)moveByLineRange:(_NSRange)range up:(BOOL)up;
- (unint64_t)nextCharacterIndex:(unint64_t)index;
- (unint64_t)pFirstParIndexInListAtParIndex:(unint64_t)index;
- (unint64_t)p_indexOfFirstNonDeletedCharInRange:(_NSRange)range requireVisible:(BOOL)visible;
- (unint64_t)paragraphCount;
- (unint64_t)paragraphIndexAtCharIndex:(unint64_t)index;
- (unint64_t)paragraphLevelAtCharIndex:(unint64_t)index;
- (unint64_t)paragraphLevelAtParIndex:(unint64_t)index;
- (unint64_t)previousCharacterIndex:(unint64_t)index;
- (unint64_t)previousDecomposedCharacterIndex:(unint64_t)index;
- (unint64_t)sectionCount;
- (unint64_t)sectionIndexForCharIndex:(unint64_t)index;
- (unint64_t)sectionIndexForSection:(id)section;
- (unint64_t)selectedParagraphBreakCount:(_NSRange)count;
- (unint64_t)wordCount;
- (unsigned)disallowedElementKinds;
- (unsigned)disallowedSmartFieldKinds;
- (unsigned)paragraphFlagsAtCharIndex:(unint64_t)index;
- (vector<unsigned)p_charIndicesForAttributeArray:(vector<unsigned)long;
- (vector<unsigned)p_charIndicesForString:(TSWPStorage *)self breakingCharacterSet:(SEL)set;
- (void)addAllDictationAndAutocorrectionKeyRangesInRange:(_NSRange)range toRanges:(id)ranges;
- (void)addDisallowedElementKind:(unsigned int)kind;
- (void)addGlyphVariantData:(id)data toRange:(_NSRange)range;
- (void)addObserver:(id)observer;
- (void)addOverlappingField:(id)field toRange:(_NSRange)range attributeKind:(unint64_t)kind dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)addParagraphObserver:(id)observer;
- (void)addSmartField:(id)field toRange:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)applyChange:(id)change changeRange:(_NSRange)range accept:(BOOL)accept undoTransaction:(void *)transaction;
- (void)applyChangeSet:(id)set tableKind:(unint64_t)kind range:(_NSRange)range undoTransaction:(void *)transaction;
- (void)applyChanges:(BOOL)changes inRange:(_NSRange)range inSelectionRange:(_NSRange)selectionRange outChangedRange:(_NSRange *)changedRange outSelectionRange:(_NSRange *)outSelectionRange undoTransaction:(void *)transaction forceAll:(BOOL)all kind:(int)self0;
- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphIndexRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphsInCharRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)applyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind actionBuilder:(void *)builder;
- (void)applyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)applyObject:(id)object toParagraphIndexRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (void)applyObject:(id)object toParagraphsInCharRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (void)applyParagraphData:(TSWPParagraphData)data toParagraphIndexRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (void)autoUpdateField:(id)field withRange:(_NSRange)range documentRoot:(id)root returningInsertedRange:(_NSRange *)insertedRange;
- (void)autoUpdateSmartFieldsWithDocumentRoot:(id)root;
- (void)cfRetainedNonUndoableFastCopyAttributeRecord:(TSWPAttributeRecord *)record shouldAddRecord:(BOOL *)addRecord attributeArrayKind:(unint64_t)kind atIndex:(unint64_t)index sourceStorage:(id)storage objectContext:(id)context flags:(unsigned int)flags actionState:(void *)self0;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)commonInit;
- (void)compress:(void *)compress;
- (void)compressAttributeArrayKind:(unint64_t)kind actionState:(void *)state;
- (void)dealloc;
- (void)didChangeParagraphAttributeLocation:(unint64_t)location delta:(int64_t)delta;
- (void)enumerateAllHyperlinksUsingBlock:(id)block;
- (void)enumerateAttachmentsInTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateAttachmentsOfClass:(Class)class inTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateBookmarksInRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateBookmarksInSelection:(id)selection usingBlock:(id)block;
- (void)enumerateChangesInRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateFootnoteAttachmentsInTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateHighlightsInExpandedRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateHighlightsInSelection:(id)selection usingBlock:(id)block;
- (void)enumerateHighlightsInSelectionExpandedRange:(id)range usingBlock:(id)block;
- (void)enumerateParagraphsIntersectingTextRange:(_NSRange)range usingBlock:(id)block;
- (void)enumeratePencilAnnotationsUsingBlock:(id)block;
- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateTateChuYokoInRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range withOptions:(unint64_t)options usingBlock:(id)block;
- (void)fixGlyphVariantFontsForRange:(_NSRange)range;
- (void)i_assignStylesheet:(id)stylesheet;
- (void)i_repairParagraphArray;
- (void)insertPlaceholderText:(id)text atCharIndex:(unint64_t)index undoTransaction:(void *)transaction;
- (void)invalidateCharIndexForAttachment:(id)attachment;
- (void)invalidateFootnoteAttachmentCharIndexes;
- (void)invalidateForStyle:(id)style;
- (void)invalidatePageCountAttachmentCharIndexes:(BOOL)indexes;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveDropCapStyleFromParIndex:(unint64_t)index toParIndex:(unint64_t)parIndex undoTransaction:(void *)transaction;
- (void)nonUndoableAppendSection:(id)section charIndex:(unint64_t)index;
- (void)nonUndoableFilterInvalidContentForStorage:(id)storage keepHighlights:(BOOL)highlights;
- (void)nonUndoableFilterInvalidContentForStorage:(id)storage keepHighlights:(BOOL)highlights nestingDepth:(int64_t)depth rangesToUpdate:(id)update;
- (void)nonUndoableFilterParagraphStylesForHeaderFooter;
- (void)nonUndoableInitializeAttributeArraySource:(TSWPAttributeArray *)source forSourceRange:(_NSRange)range toDestStorage:(id)storage objectContext:(id)context dolcContext:(id)dolcContext flags:(unsigned int)flags;
- (void)nonUndoableInsertObject:(id)object charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex dolcContext:(id)context;
- (void)nonUndoableInsertParagraphData:(TSWPParagraphData)data charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex;
- (void)nonUndoableRemoveUnsupportedHyperlinksForCrossDocumentPaste:(BOOL)paste;
- (void)nonUndoableReplaceWithAttachment:(id)attachment forAttachmentIndex:(unint64_t)index dolcContext:(id)context;
- (void)nonUndoableSetWPKind:(unsigned __int8)kind keepHighlights:(BOOL)highlights;
- (void)p_attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range;
- (void)p_createAttributeTablesIfNeededWithListStyleFlag:(BOOL)flag;
- (void)p_deduplicateAttributeObjectsWithVersion:(unint64_t)version hasPreUFFVersion:(BOOL)fVersion;
- (void)p_finalizeLoadingFromUnarchiverWithTimes:(const double *)times isInDocument:(BOOL)document isFromCopy:(BOOL)copy hasTableListStyle:(BOOL)style isCrossAppPaste:(BOOL)paste hasPreUFFVersion:(BOOL)version fileFormatVersion:(unint64_t)formatVersion;
- (void)p_handleChangeSplittingForInsertedRange:(_NSRange)range changeSession:(id)session actionBuilder:(TSWPStorageActionBuilder *)builder;
- (void)p_mutateByWordWithUndoTransaction:(void *)transaction locale:(id)locale transformer:(id)transformer;
- (void)p_nonUndoableFilterPageBreaksFromStorage:(id)storage;
- (void)p_nonUndoableFilterSectionBreaksFromStorage:(id)storage;
- (void)p_repairAttachments;
- (void)p_repairAttributeArrays;
- (void)p_repairComments;
- (void)p_repairHyperlinksWithVersion:(unint64_t)version hasPreUFFVersion:(BOOL)fVersion;
- (void)p_repairListLevels;
- (void)p_repairSectionArray;
- (void)p_replaceRange:(_NSRange)range withString:(id)string markers:(void *)markers flags:(unsigned int)flags actionState:(void *)state;
- (void)p_updateChangeTimestampForDeletedRange:(_NSRange)range actionBuilder:(TSWPStorageActionBuilder *)builder;
- (void)paragraphFlags:(unsigned __int16 *)flags andLevel:(unint64_t *)level atCharIndex:(unint64_t)index;
- (void)removeDisallowedElementKind:(unsigned int)kind;
- (void)removeGlyphVariantDataFromRange:(_NSRange)range;
- (void)removeHighlight:(id)highlight dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)removeHighlightsInRange:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction author:(id)author;
- (void)removeOverlappingField:(id)field fromRange:(_NSRange)range attributeKind:(unint64_t)kind undoTransaction:(void *)transaction;
- (void)removePencilAnnotations;
- (void)removeSmartField:(id)field fromRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string options:(unint64_t)options changedRange:(_NSRange *)changedRange changeDelta:(int64_t *)delta undoTransaction:(void *)transaction changeSession:(id)session;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)resetAllTextAttributeUUIDStrings;
- (void)saveRange:(_NSRange)range toArchiver:(id)archiver styleProvider:(id)provider archiveChanges:(BOOL)changes removeDeletedText:(BOOL)text archivePencilAnnotations:(BOOL)annotations;
- (void)saveToArchiver:(id)archiver;
- (void)setCharacterStyle:(id)style range:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setDictationAndAutocorrection:(id)autocorrection forCharRange:(_NSRange)range actionBuilder:(void *)builder;
- (void)setDocumentRoot:(id)root;
- (void)setDropCapStyle:(id)style atParIndex:(unint64_t)index undoTransaction:(void *)transaction;
- (void)setDropCapStyle:(id)style forCharRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setDropCapStyle:(id)style forParagraphIndexRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setGeometry:(id)geometry;
- (void)setIngestingWTAttributedString:(BOOL)string;
- (void)setLanguage:(id)language forCharRange:(_NSRange)range actionBuilder:(void *)builder;
- (void)setListStart:(unint64_t)start forCharRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setParagraphFlags:(unsigned __int16)flags forCharRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setParagraphLevel:(unint64_t)level atParIndex:(unint64_t)index undoTransaction:(void *)transaction;
- (void)setParagraphLevel:(unint64_t)level forCharRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setParagraphWritingDirection:(int)direction forCharRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setParagraphWritingDirection:(int)direction forParagraphIndexRange:(_NSRange)range undoTransaction:(void *)transaction;
- (void)setParentInfo:(id)info;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)settingsDidChangeRequiringLayoutAndRendering;
- (void)smartFieldDidChange:(id)change;
- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert attributeKind:(unint64_t)kind dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert dolcContext:(id)context undoTransaction:(void *)transaction;
- (void)styleDidChangeInRange:(_NSRange)range;
- (void)transferAttributeArraySource:(TSWPAttributeArray *)source toAttributeArrayDest:(TSWPAttributeArray *)dest atCharIndex:(unint64_t)index delta:(int64_t)delta dolcContext:(id)context actionBuilder:(void *)builder;
- (void)unarchiverAppendParagraphBreak:(unsigned __int16)break;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPStorage

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_msgSend_resetDisallowedElementKinds(self, v3, v4);

    MEMORY[0x2821F9670](self, sel_resetDisallowedSmartFieldKinds, v5);
  }
}

+ (void)resetDisallowedElementKinds
{
  xmmword_280A57DE0 = xmmword_276F98AA0;
  *algn_280A57DF0 = xmmword_276F98AB0;
  dword_280A57E00 = 0;
}

+ (void)resetDisallowedSmartFieldKinds
{
  xmmword_280A57E10 = xmmword_276F98AC0;
  unk_280A57E20 = xmmword_276F98AD0;
  dword_280A57E30 = 0;
}

+ (id)filterText:(id)text
{
  v3 = objc_msgSend_filterText_removingAttachments_(self, a2, text, 1);

  return v3;
}

+ (id)filterText:(id)text removingAttachments:(BOOL)attachments
{
  v4 = objc_msgSend_filterText_removingAttachments_removingControlCharacters_(self, a2, text, attachments, 1);

  return v4;
}

+ (id)filterText:(id)text removingAttachments:(BOOL)attachments removingControlCharacters:(BOOL)characters
{
  v5 = objc_msgSend_filterText_removingAttachments_removingControlCharacters_returnIndexSet_(self, a2, text, attachments, characters, 0);

  return v5;
}

+ (id)filterText:(id)text removingAttachments:(BOOL)attachments removingControlCharacters:(BOOL)characters returnIndexSet:(BOOL)set
{
  setCopy = set;
  charactersCopy = characters;
  attachmentsCopy = attachments;
  textCopy = text;
  if (qword_280A57E58 != -1)
  {
    sub_276F4EAF8();
  }

  v84 = qword_280A57E38;
  if (!attachmentsCopy || !charactersCopy)
  {
    if (attachmentsCopy || charactersCopy)
    {
      if (!attachmentsCopy || charactersCopy)
      {
        goto LABEL_12;
      }

      v9 = &qword_280A57E50;
    }

    else
    {
      v9 = &qword_280A57E48;
    }
  }

  else
  {
    v9 = &qword_280A57E40;
  }

  v10 = *v9;

  v84 = v10;
LABEL_12:
  objc_opt_class();
  v11 = TSUDynamicCast();
  v14 = v11;
  if (v11)
  {
    objc_msgSend_string(v11, v12, v13);
  }

  else
  {
    objc_opt_class();
    TSUDynamicCast();
  }
  v16 = ;
  if (!v16)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSWPStorage filterText:removingAttachments:removingControlCharacters:returnIndexSet:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 430, 0, "invalid nil value for '%{public}s'", "theStr");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v82 = v14;
  v26 = textCopy;
  v27 = 0;
  v28 = v26;
  while (objc_msgSend_length(v16, v24, v25) && objc_msgSend_characterAtIndex_(v16, v29, 0) == 65279)
  {
    if ((v27 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objc_msgSend_mutableCopy(v26, v31, v32);

        v36 = objc_msgSend_mutableString(v33, v34, v35);

        v28 = v33;
        v16 = v36;
      }

      else
      {
        v37 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v31, v16);

        v16 = v37;
        v33 = v28;
        v28 = v16;
      }
    }

    v27 = 1;
    objc_msgSend_replaceCharactersInRange_withString_(v28, v29, 0, 1, &stru_28860A0F0);
  }

  v38 = objc_msgSend_length(v16, v29, v30);
  v41 = v38;
  if (setCopy)
  {
    v42 = objc_opt_new();

    v83 = v42;
    v28 = v42;
    if (!v41)
    {
      goto LABEL_61;
    }

    goto LABEL_30;
  }

  v83 = 0;
  if (v38)
  {
LABEL_30:
    v43 = 0;
    do
    {
      v44 = objc_msgSend_length(v16, v39, v40);
      v45 = v44 - v43;
      v47 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v16, v46, v84, 0, v43, v44 - v43);
      v49 = v48;
      v50 = sub_276D157F4(v47, v16, v43, v45, 0xD800uLL, 0x400uLL);
      v52 = v51;
      v53 = sub_276D157F4(v50, v16, v43, v45, 0xDC00uLL, 0x400uLL);
      if (v50 >= v47 || v50 >= v53)
      {
        v58 = v53 < v47;
        v59 = v53 < v50;
        if (v58 && v59)
        {
          v52 = v39;
        }

        else
        {
          v52 = v49;
        }

        if (v58 && v59)
        {
          v50 = v53;
        }

        else
        {
          v50 = v47;
        }
      }

      else
      {
        v54 = objc_msgSend_length(v16, v39, v40);
        v40 = v50 + 1;
        if (v50 + 1 < v54 && objc_msgSend_characterAtIndex_(v16, v39, v40) >> 10 == 55)
        {
          v55 = objc_msgSend_length(v16, v39, v40);
          if (v50 + 2 <= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = v50 + 2;
          }

          if (v50 + 2 >= v55)
          {
            v50 = v55;
          }

          else
          {
            v50 += 2;
          }

          v57 = v56 - v50;
          goto LABEL_60;
        }
      }

      if (v50 == 0x7FFFFFFFFFFFFFFFLL || v52 == 0)
      {
        break;
      }

      v62 = objc_msgSend_length(v16, v39, v40);
      if (((v27 | setCopy) & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = objc_msgSend_mutableCopy(v26, v63, v64);

          v68 = objc_msgSend_mutableString(v65, v66, v67);

          v28 = v65;
          v16 = v68;
        }

        else
        {
          v69 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v63, v16);

          v16 = v69;
          v65 = v28;
          v28 = v16;
        }

        v27 = 1;
      }

      v57 = v62 - &v52[v50];
      if (setCopy)
      {
        objc_msgSend_addIndexesInRange_(v83, v61, v50, v52);
        v50 += v52;
      }

      else
      {
        objc_msgSend_replaceCharactersInRange_withString_(v28, v61, v50, v52, &stru_28860A0F0);
      }

LABEL_60:
      v43 = v50;
    }

    while (v57);
  }

LABEL_61:
  if (v82)
  {
    if (!setCopy)
    {
      v70 = objc_msgSend_string(v28, v39, v40);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v71, v70);

      if ((isEqualToString & 1) == 0)
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "+[TSWPStorage filterText:removingAttachments:removingControlCharacters:returnIndexSet:]");
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v78, v75, v77, 546, 0, "Internal inconsistency in attributed string");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
      }
    }
  }

  return v28;
}

+ (id)filterText:(id)text flags:(unint64_t)flags
{
  textCopy = text;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = flags & 3;
  v10 = (flags & 3) != 0 && v7 == 0;
  v11 = v8 == 3 || v10;
  v66 = v11;
  v12 = v7;
  v15 = v12;
  if (v12)
  {
    objc_msgSend_string(v12, v13, v14);
  }

  else
  {
    objc_opt_class();
    TSUDynamicCast();
  }
  v17 = ;
  if (!v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSWPStorage filterText:flags:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 572, 0, "invalid nil value for '%{public}s'", "theStr");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = textCopy;
  v28 = objc_msgSend_length(v17, v26, v27);
  v30 = v66;
  if ((v8 == 0) | v66 & 1)
  {
    v31 = 0;
    v32 = v25;
    v67 = v15;
    objc_msgSend_filterText_removingAttachments_removingControlCharacters_returnIndexSet_(self, v29, v25, v66, (flags >> 2) & 1, (flags >> 3) & 1);
    goto LABEL_40;
  }

  v33 = v28;
  v64 = v25;
  v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"%C", 65532);
  selfCopy = self;
  if (v33)
  {
    v37 = v15;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v63 = v37;
    v67 = v37;
    v65 = v64;
    while (1)
    {
      while (1)
      {
        v41 = objc_msgSend_length(v17, v34, v35);
        v43 = objc_msgSend_rangeOfString_options_range_(v17, v42, v36, 0, v38, v41 - v38);
        v44 = v43;
        if (v34 == 1)
        {
          break;
        }

        v48 = v34;
        v38 = v43;
LABEL_32:
        if (!v48)
        {
          goto LABEL_37;
        }
      }

      v45 = objc_msgSend_length(v17, 1, v35);
      if (v44 + 1 > v45)
      {
        v47 = v44 + 1;
      }

      else
      {
        v47 = v45;
      }

      if (v44 + 1 < v45)
      {
        v38 = v44 + 1;
      }

      else
      {
        v38 = v45;
      }

      v48 = (v47 - v38);
      if ((objc_msgSend_hasAttachmentMatchingFlags_atCharIndex_(v67, v46, flags, v44) & 1) == 0)
      {
        goto LABEL_32;
      }

      if ((flags & 8) != 0)
      {
        v49 = v39;
        if (!v39)
        {
          v49 = objc_opt_new();
        }

        v39 = v49;
        objc_msgSend_addIndex_(v49, v34, v44);
        goto LABEL_32;
      }

      if (!v40)
      {
        v50 = objc_msgSend_mutableCopy(v63, v34, v35);

        v40 = v50;
        v53 = objc_msgSend_mutableString(v40, v51, v52);

        v65 = v40;
        v17 = v53;
        v67 = v40;
      }

      objc_msgSend_replaceCharactersInRange_withString_(v40, v34, v44, 1, &stru_28860A0F0);
      --v38;
      if (!v48)
      {
LABEL_37:

        v15 = v63;
        v30 = v66;
        v31 = v39;
        v32 = v65;
        goto LABEL_39;
      }
    }
  }

  v31 = 0;
  v32 = v64;
  v67 = v15;
LABEL_39:

  v25 = v64;
  objc_msgSend_filterText_removingAttachments_removingControlCharacters_returnIndexSet_(selfCopy, v54, v32, v30, (flags >> 2) & 1, (flags >> 3) & 1);
  v55 = LABEL_40:;

  objc_opt_class();
  v56 = TSUDynamicCast();
  v58 = v56;
  if (v31 && v56)
  {
    objc_msgSend_addIndexes_(v31, v57, v56);
    v59 = v31;

    v55 = v59;
  }

  v60 = v55;

  return v55;
}

+ (id)filterMarkAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  v11 = attributesCopy;
  if (objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_attributesAtIndex_effectiveRange_(v7, v10, 0, 0);
    v13 = *MEMORY[0x277D741F0];
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, *MEMORY[0x277D741F0]);
    if (objc_msgSend_integerValue(v15, v16, v17))
    {
      v20 = objc_msgSend_length(v7, v18, v19);
      objc_msgSend_removeAttribute_range_(v7, v21, v13, 0, v20);
      v24 = objc_msgSend_length(v7, v22, v23);
      objc_msgSend_removeAttribute_range_(v7, v25, *MEMORY[0x277D741E8], 0, v24);
    }

    v26 = *MEMORY[0x277D74068];
    v27 = objc_msgSend_objectForKeyedSubscript_(v12, v18, *MEMORY[0x277D74068]);

    if (v27)
    {
      v30 = objc_msgSend_length(v7, v28, v29);
      objc_msgSend_removeAttribute_range_(v7, v31, v26, 0, v30);
    }

    v11 = v7;
  }

  return v11;
}

+ (BOOL)shouldInvalidateForStylePropertyChangeSet:(id)set
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276D160D4;
  v5[3] = &unk_27A6F35F0;
  v5[4] = &v6;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(set, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (Class)pStringClassForWPKind:(unsigned __int8)kind
{
  v3 = objc_opt_class();

  return v3;
}

- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(unsigned __int8)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0
{
  kindCopy = kind;
  contextCopy = context;
  stringCopy = string;
  stylesheetCopy = stylesheet;
  styleCopy = style;
  listStyleCopy = listStyle;
  sectionCopy = section;
  columnStyleCopy = columnStyle;
  objc_opt_class();
  v24 = objc_msgSend_documentObject(contextCopy, v22, v23);
  v25 = TSUDynamicCast();

  if (v25)
  {
    v28 = stringCopy;
    v29 = objc_msgSend_writingDirectionForStorage(v25, v26, v27) == 2;
  }

  else
  {
    v29 = 0;
    v28 = stringCopy;
  }

  v30 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(self, v26, contextCopy, v28, kindCopy, stylesheetCopy, styleCopy, listStyleCopy, sectionCopy, columnStyleCopy, v29);

  return v30;
}

- (TSWPStorage)initWithContext:(id)context string:(id)string kind:(unsigned __int8)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0 paragraphDirection:(int)self1
{
  contextCopy = context;
  stringCopy = string;
  stylesheetCopy = stylesheet;
  styleCopy = style;
  listStyleCopy = listStyle;
  sectionCopy = section;
  columnStyleCopy = columnStyle;
  if (!stylesheetCopy)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 701, 0, "invalid nil value for '%{public}s'", "stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  if (styleCopy)
  {
    v57.receiver = self;
    v57.super_class = TSWPStorage;
    v29 = [(TSWPStorage *)&v57 initWithContext:contextCopy];
    v30 = v29;
    v32 = listStyleCopy;
    v31 = stringCopy;
    if (v29)
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_276D1664C;
      v46[3] = &unk_27A6F3618;
      v47 = v29;
      v48 = stylesheetCopy;
      kindCopy = kind;
      v49 = styleCopy;
      directionCopy = direction;
      v50 = listStyleCopy;
      v51 = sectionCopy;
      v52 = contextCopy;
      v53 = columnStyleCopy;
      v54 = stringCopy;
      objc_msgSend_performBlockIgnoringModifications_(v47, v33, v46);
    }

    self = v30;
    selfCopy = self;
  }

  else
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 702, 0, "initWithString: Missing paragraph style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    selfCopy = 0;
    v32 = listStyleCopy;
    v31 = stringCopy;
  }

  return selfCopy;
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = TSWPStorage;
  [(TSWPStorage *)&v3 commonInit];
  *(self + 302) |= 0x30u;
  self->_wordAtCharIndexChangeCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_wordAtCharIndex = *MEMORY[0x277D81490];
}

- (TSWPStorage)initWithContext:(id)context string:(id)string stylesheet:(id)stylesheet kind:(unsigned __int8)kind
{
  kindCopy = kind;
  contextCopy = context;
  stringCopy = string;
  stylesheetCopy = stylesheet;
  v15 = objc_msgSend_defaultParagraphStyle(stylesheetCopy, v13, v14);
  v18 = objc_msgSend_defaultListStyle(stylesheetCopy, v16, v17);
  v20 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(self, v19, contextCopy, stringCopy, kindCopy, stylesheetCopy, v15, v18, 0, 0);

  return v20;
}

- (void)dealloc
{
  if (objc_msgSend_usesSystemFonts(self, a2, v2))
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
    objc_msgSend_removeObserver_name_object_(v6, v7, self, *MEMORY[0x277D76810], 0);
  }

  for (i = 0; i != 23; ++i)
  {
    v9 = self->_attributesTable[i];
    if (v9)
    {
      (*(v9->var0 + 1))(v9);
    }
  }

  v10.receiver = self;
  v10.super_class = TSWPStorage;
  [(TSWPStorage *)&v10 dealloc];
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[18]);

  v8 = objc_opt_class();
  if ((*(v5 + 19) & 2) != 0 && *(v5 + 236) == 5 && objc_msgSend_hasPreUFFVersion(unarchiverCopy, v6, v7))
  {
    v8 = objc_opt_class();
  }

  v9 = v8;

  return v8;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[18]);

  if (objc_msgSend_preUFFVersion(unarchiverCopy, v7, v8) >= 0x2CBCCAD1CLL)
  {
    v11 = *(v6 + 233);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v9, v10);
    v11 = 1;
  }

  if ((*(v6 + 19) & 2) != 0)
  {
    v13 = *(v6 + 236);
    v12 = self + 302;
    *(self + 302) = *(self + 302) & 0xF0 | v13 & 0xF;
    if ((v13 & 0xF) == 8)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPStorage loadFromUnarchiver:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 898, 0, "Unarchiving a storage with undefined kind");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }
  }

  else
  {
    v12 = self + 302;
    *(self + 302) = *(self + 302) & 0xF0 | 3;
  }

  if (*(v6 + 16))
  {
    v21 = *(v6 + 48);
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = sub_276D17CD0;
    v118[3] = &unk_27A6F3640;
    v118[4] = self;
    v22 = unarchiverCopy;
    v23 = v118;
    v24 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v22, v25, v21, v24, 0, v23);
  }

  v26 = objc_opt_class();
  v28 = objc_alloc_init(objc_msgSend_pStringClassForWPKind_(v26, v27, *v12 & 0xF));
  if (*(v6 + 32) >= 1)
  {
    v29 = 0;
    v30 = *MEMORY[0x277CBED00];
    do
    {
      v31 = *(v6 + 40) + 8 * v29;
      v32 = *(v31 + 8);
      v33 = *(v32 + 23);
      if (v33 < 0)
      {
        v32 = *v32;
        v33 = *(*(v31 + 8) + 8);
      }

      v35 = CFStringCreateWithBytesNoCopy(0, v32, v33, 0x8000100u, 0, v30);
      if (v35)
      {
        objc_msgSend_appendString_(v28, v34, v35);
      }

      ++v29;
    }

    while (v29 < *(v6 + 32));
  }

  objc_storeStrong(&self->_string, v28);

  v38 = *(v6 + 16);
  if ((v38 & 2) != 0)
  {
    v39 = objc_msgSend_paragraphAttributeArrayForKind_withCreate_(self, v36, 0, 1);
    if (*(v6 + 56))
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v40 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v39 + 232))(v39, v40, unarchiverCopy);
    v38 = *(v6 + 16);
  }

  if ((v38 & 4) != 0)
  {
    v41 = objc_msgSend_paragraphAttributeArrayForKind_withCreate_(self, v36, 1, 1);
    if (*(v6 + 64))
    {
      v42 = *(v6 + 64);
    }

    else
    {
      v42 = &TSWP::_ParaDataAttributeTable_default_instance_;
    }

    TSWPParagraphAttributeArray::loadFromArchive(v41, v42);
    v38 = *(v6 + 16);
  }

  if ((v38 & 0x100) != 0)
  {
    v43 = objc_msgSend_paragraphAttributeArrayForKind_withCreate_(self, v36, 11, 1);
    if (*(v6 + 112))
    {
      v44 = *(v6 + 112);
    }

    else
    {
      v44 = &TSWP::_ParaDataAttributeTable_default_instance_;
    }

    TSWPParagraphAttributeArray::loadFromArchive(v43, v44);
    v38 = *(v6 + 16);
  }

  if ((v38 & 0x40000) != 0)
  {
    v45 = objc_msgSend_paragraphAttributeArrayForKind_withCreate_(self, v36, 18, 1);
    if (*(v6 + 192))
    {
      v46 = *(v6 + 192);
    }

    else
    {
      v46 = &TSWP::_ParaDataAttributeTable_default_instance_;
    }

    TSWPParagraphAttributeArray::loadFromArchive(v45, v46);
    v38 = *(v6 + 16);
  }

  if ((v38 & 8) != 0)
  {
    v47 = objc_msgSend_attributeArrayForKind_withCreate_(self, v36, 2, 1);
    if (*(v6 + 72))
    {
      v48 = *(v6 + 72);
    }

    else
    {
      v48 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v47 + 232))(v47, v48, unarchiverCopy);
    v38 = *(v6 + 16);
  }

  if ((v38 & 0x10) != 0)
  {
    v49 = objc_msgSend_attributeArrayForKind_withCreate_(self, v36, 3, 1);
    if (*(v6 + 80))
    {
      v50 = *(v6 + 80);
    }

    else
    {
      v50 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v49 + 232))(v49, v50, unarchiverCopy);
    v38 = *(v6 + 16);
  }

  if ((v38 & 0x2000) != 0)
  {
    v51 = objc_msgSend_attributeArrayForKind_withCreate_(self, v36, 13, 1);
    if (*(v6 + 152))
    {
      v52 = *(v6 + 152);
    }

    else
    {
      v52 = &TSWP::_StringAttributeTable_default_instance_;
    }

    (*(*v51 + 272))(v51, v52, unarchiverCopy);
    v38 = *(v6 + 16);
  }

  if ((v38 & 0x4000) != 0)
  {
    v53 = objc_msgSend_attributeArrayForKind_withCreate_(self, v36, 14, 1);
    if (*(v6 + 160))
    {
      v54 = *(v6 + 160);
    }

    else
    {
      v54 = &TSWP::_StringAttributeTable_default_instance_;
    }

    (*(*v53 + 272))(v53, v54, unarchiverCopy);
    v38 = *(v6 + 16);
  }

  if ((v38 & 0x80) != 0)
  {
    v55 = objc_msgSend_attributeArrayForKind_withCreate_(self, v36, 9, 1);
    if (*(v6 + 104))
    {
      v56 = *(v6 + 104);
    }

    else
    {
      v56 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v55 + 232))(v55, v56, unarchiverCopy);
  }

  v57 = objc_msgSend_supportsSections(self, v36, v37);
  v60 = *(v6 + 16);
  if ((*&v57 & ((v60 & 0x800) >> 11)) == 1)
  {
    v61 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 8, 1);
    if (*(v6 + 136))
    {
      v62 = *(v6 + 136);
    }

    else
    {
      v62 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v61 + 232))(v61, v62, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x40) != 0)
  {
    v63 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 6, 1);
    if (*(v6 + 96))
    {
      v64 = *(v6 + 96);
    }

    else
    {
      v64 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v63 + 232))(v63, v64, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x200) != 0)
  {
    v65 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 12, 1);
    if (*(v6 + 120))
    {
      v66 = *(v6 + 120);
    }

    else
    {
      v66 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v65 + 232))(v65, v66, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x200000) != 0)
  {
    v67 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 21, 1);
    if (*(v6 + 216))
    {
      v68 = *(v6 + 216);
    }

    else
    {
      v68 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v67 + 232))(v67, v68, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x20) != 0)
  {
    v69 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 4, 1);
    if (*(v6 + 88))
    {
      v70 = *(v6 + 88);
    }

    else
    {
      v70 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v69 + 232))(v69, v70, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x400) != 0)
  {
    v71 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 5, 1);
    if (*(v6 + 128))
    {
      v72 = *(v6 + 128);
    }

    else
    {
      v72 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v71 + 232))(v71, v72, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x1000) != 0)
  {
    v73 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 7, 1);
    if (*(v6 + 144))
    {
      v74 = *(v6 + 144);
    }

    else
    {
      v74 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v73 + 232))(v73, v74, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x8000) != 0)
  {
    v75 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 15, 1);
    if (*(v6 + 168))
    {
      v76 = *(v6 + 168);
    }

    else
    {
      v76 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v75 + 232))(v75, v76, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x10000) != 0)
  {
    v77 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 16, 1);
    if (*(v6 + 176))
    {
      v78 = *(v6 + 176);
    }

    else
    {
      v78 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v77 + 232))(v77, v78, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x20000) != 0)
  {
    v79 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 17, 1);
    v80 = *(v6 + 184) ? *(v6 + 184) : &TSWP::_ObjectAttributeTable_default_instance_;
    (*(*v79 + 232))(v79, v80, unarchiverCopy);
    v60 = *(v6 + 16);
    if ((v60 & 0x80000) != 0)
    {
      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSWPStorage loadFromUnarchiver:]");
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 954, 0, "Should not have highlights and overlapping highlights in same document");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
      v60 = *(v6 + 16);
    }
  }

  if ((v60 & 0x80000) != 0)
  {
    if ((v60 & 0x20000) != 0)
    {
      v88 = MEMORY[0x277D81150];
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSWPStorage loadFromUnarchiver:]");
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v92, v89, v91, 957, 0, "Should not have highlights and overlapping highlights in same document");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94);
    }

    v95 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 19, 1);
    if (*(v6 + 200))
    {
      v96 = *(v6 + 200);
    }

    else
    {
      v96 = &TSWP::_OverlappingFieldAttributeTable_default_instance_;
    }

    (*(*v95 + 248))(v95, v96, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x100000) != 0)
  {
    v97 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 20, 1);
    if (*(v6 + 208))
    {
      v98 = *(v6 + 208);
    }

    else
    {
      v98 = &TSWP::_OverlappingFieldAttributeTable_default_instance_;
    }

    (*(*v97 + 248))(v97, v98, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  if ((v60 & 0x400000) != 0)
  {
    v99 = objc_msgSend_attributeArrayForKind_withCreate_(self, v58, 22, 1);
    if (*(v6 + 224))
    {
      v100 = *(v6 + 224);
    }

    else
    {
      v100 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    (*(*v99 + 232))(v99, v100, unarchiverCopy);
    v60 = *(v6 + 16);
  }

  v101 = objc_msgSend_isFromCopy(unarchiverCopy, v58, v59);
  isCrossAppPaste = objc_msgSend_isCrossAppPaste(unarchiverCopy, v102, v103);
  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(unarchiverCopy, v105, v106);
  v110 = objc_msgSend_fileFormatVersion(unarchiverCopy, v108, v109);
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = sub_276D17CE4;
  v112[3] = &unk_27A6F3668;
  v113 = v11 & 1;
  v114 = v101;
  v115 = (v60 & 8) >> 3;
  v116 = isCrossAppPaste;
  v117 = hasPreUFFVersion;
  v112[4] = self;
  v112[5] = v110;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v111, v112);
}

- (void)p_finalizeLoadingFromUnarchiverWithTimes:(const double *)times isInDocument:(BOOL)document isFromCopy:(BOOL)copy hasTableListStyle:(BOOL)style isCrossAppPaste:(BOOL)paste hasPreUFFVersion:(BOOL)version fileFormatVersion:(unint64_t)formatVersion
{
  versionCopy = version;
  pasteCopy = paste;
  styleCopy = style;
  copyCopy = copy;
  if (document || (objc_opt_class(), objc_msgSend_parentInfo(self, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v17 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_tsp_isInDocument(v17, v18, v19), v17, v16, (v20 & 1) != 0))
  {
    if (copyCopy)
    {
      p_documentRoot = &self->_documentRoot;
      objc_storeWeak(&self->_documentRoot, 0);
    }

    else
    {
      objc_opt_class();
      v25 = objc_msgSend_context(self, v23, v24);
      v28 = objc_msgSend_documentObject(v25, v26, v27);
      v29 = TSUDynamicCast();
      p_documentRoot = &self->_documentRoot;
      objc_storeWeak(&self->_documentRoot, v29);
    }

    if (!self->_stylesheet)
    {
      WeakRetained = objc_loadWeakRetained(p_documentRoot);
      v33 = objc_msgSend_stylesheet(WeakRetained, v31, v32);
      objc_msgSend_setStylesheet_(self, v34, v33);
    }
  }

  objc_msgSend_p_createAttributeTablesIfNeededWithListStyleFlag_(self, v21, styleCopy);
  objc_msgSend_p_repairAttachments(self, v35, v36);
  objc_msgSend_p_repairComments(self, v37, v38);
  objc_msgSend_p_deduplicateAttributeObjectsWithVersion_hasPreUFFVersion_(self, v39, formatVersion, versionCopy);
  objc_msgSend_p_repairAttributeArrays(self, v40, v41);
  if (objc_msgSend_supportsSections(self, v42, v43))
  {
    objc_msgSend_p_repairSectionArray(self, v44, v45);
  }

  objc_msgSend_p_repairListLevels(self, v44, v45);
  objc_msgSend_p_repairHyperlinksWithVersion_hasPreUFFVersion_(self, v46, formatVersion, versionCopy);
  objc_msgSend_i_repairParagraphArray(self, v47, v48);
  if (pasteCopy)
  {
    v50 = objc_msgSend_validate_(self, v49, 16);
  }

  else
  {
    v50 = objc_msgSend_validate_(self, v49, 0);
  }

  if ((v50 & 1) == 0)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSWPStorage p_finalizeLoadingFromUnarchiverWithTimes:isInDocument:isFromCopy:hasTableListStyle:isCrossAppPaste:hasPreUFFVersion:fileFormatVersion:]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 1048, 0, "storage is corrupt and will prevent archiving");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
  }

  objc_msgSend_compress_(self, v51, 0);
}

- (void)p_createAttributeTablesIfNeededWithListStyleFlag:(BOOL)flag
{
  if (!flag && objc_msgSend_supportsListStyles(self, a2, flag))
  {
    objc_msgSend_willModifyForUpgrade(self, a2, v4);
    v6 = objc_msgSend_attributeArrayForKind_withCreate_(self, v5, 2, 1);
    v9 = objc_msgSend_stylesheet(self, v7, v8);
    v12 = objc_msgSend_defaultListStyle(v9, v10, v11);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v13, v12, 0, v6, 0, 0);
  }

  objc_msgSend_paragraphAttributeArrayForKind_withCreate_(self, a2, 11, 1);
  if (objc_msgSend_listStartAtCharIndex_(self, v14, 0) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_willModifyForUpgrade(self, v15, v16);
    v18 = objc_msgSend_attributeArrayForKind_withCreate_(self, v17, 11, 1);
    objc_msgSend_nonUndoableInsertParagraphData_charIndex_attributeArray_attributeIndex_(self, v19, 0, 0, v18, 0);
  }

  if (objc_msgSend_supportsSections(self, v15, v16) && !objc_msgSend_sectionCount(self, v20, v21))
  {
    objc_msgSend_willModifyForUpgrade(self, v20, v21);
    v24 = objc_msgSend_context(self, v22, v23);
    v26 = objc_msgSend_pDefaultSectionForContext_(self, v25, v24);

    v28 = objc_msgSend_attributeArrayForKind_withCreate_(self, v27, 8, 1);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v29, v26, 0, v28, 0, 0);
  }

  if (objc_msgSend_WPKindSupportsDropCaps(self, v20, v21) && !objc_msgSend_dropCapStyleCount(self, v30, v31))
  {
    objc_msgSend_willModifyForUpgrade(self, v30, v32);
    v34 = objc_msgSend_attributeArrayForKind_withCreate_(self, v33, 22, 1);
    objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v35, 0, 0, v34, 0, 0);
  }

  if (!*(objc_msgSend_paragraphAttributeArrayForKind_withCreate_(self, v30, 18, 1) + 24))
  {
    objc_msgSend_willModifyForUpgrade(self, v36, v37);
    v40 = objc_msgSend_attributeArrayForKind_withCreate_(self, v38, 18, 1);

    objc_msgSend_nonUndoableInsertParagraphData_charIndex_attributeArray_attributeIndex_(self, v39, 0, 0, v40, 0);
  }
}

- (void)p_deduplicateAttributeObjectsWithVersion:(unint64_t)version hasPreUFFVersion:(BOOL)fVersion
{
  if (*MEMORY[0x277D80970] > version || fVersion)
  {
    for (i = 0; i != 23; ++i)
    {
      if (TSWPAttributeArray::attributeKindHasTextSpanningObjects(i))
      {
        v8 = objc_msgSend_attributeArrayForKind_withCreate_(self, v7, i, 0);
        if (v8)
        {
          v9 = v8;
          v10 = *(v8 + 24);
          v11 = objc_alloc(MEMORY[0x277D81258]);
          v13 = objc_msgSend_initWithCapacity_(v11, v12, v10);
          if (v10)
          {
            for (j = 0; j != v10; ++j)
            {
              v16 = TSWPAttributeArray::objectForAttributeIndex(v9, j);
              if (v16)
              {
                if (objc_msgSend_containsObject_(v13, v15, v16))
                {
                  v19 = objc_msgSend_context(self, v17, v18);
                  v21 = objc_msgSend_copyWithContext_(v16, v20, v19);

                  objc_msgSend_willModifyForUpgrade(self, v22, v23);
                  TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(v9, v21, j, 0, 0);
                }

                else
                {
                  objc_msgSend_addObject_(v13, v17, v16);
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v16 = 0;
  objc_msgSend_validate_(self, v5, 4);
  v10 = objc_msgSend_targetType(archiverCopy, v6, v7);
  if (v10 == 1)
  {
    v12 = objc_msgSend_range(self, v8, v9);
    v11 = objc_msgSend_p_shouldAcceptChangesForRange_copiedRanges_removeDeletedText_(self, v13, v12, v13, 0, &v16) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v14 = objc_msgSend_range(self, v8, v9);
  objc_msgSend_saveRange_toArchiver_styleProvider_archiveChanges_removeDeletedText_archivePencilAnnotations_(self, v15, v14, v15, archiverCopy, 0, v11, v16, v10 != 1);
}

- (void)saveRange:(_NSRange)range toArchiver:(id)archiver styleProvider:(id)provider archiveChanges:(BOOL)changes removeDeletedText:(BOOL)text archivePencilAnnotations:(BOOL)annotations
{
  textCopy = text;
  changesCopy = changes;
  range2 = range.length;
  location = range.location;
  v177 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  providerCopy = provider;
  v14 = 0x277CCA000uLL;
  v160 = changesCopy;
  if (changesCopy && textCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPStorage saveRange:toArchiver:styleProvider:archiveChanges:removeDeletedText:archivePencilAnnotations:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1171, 0, "unsupported change-tracking configuration");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  for (i = 0; i != 23; ++i)
  {
    if (TSWPAttributeArray::shouldRepairInvalidAttributeArray(i))
    {
      v25 = objc_msgSend_attributeArrayForKind_withCreate_(self, v23, i, 0);
      if (v25)
      {
        if ((*(*v25 + 288))(v25))
        {
          v26 = MEMORY[0x277D81150];
          v27 = objc_msgSend_stringWithUTF8String_(*(v14 + 3240), v23, "[TSWPStorage saveRange:toArchiver:styleProvider:archiveChanges:removeDeletedText:archivePencilAnnotations:]");
          v28 = v14;
          v30 = objc_msgSend_stringWithUTF8String_(*(v14 + 3240), v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          v31 = *(self + 302);
          v33 = TSWPAttributeArray::attributeArrayName(i, v32);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v27, v30, 1177, 0, "Storage (kind: %lu) Attribute array needs repair %{public}@", v31 & 0xF, v33);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
          v14 = v28;
        }
      }
    }
  }

  if (!textCopy || v160 || !objc_msgSend_hasTrackedChanges(self, v23, v24) || (v37 = self->_attributesTable[16]) == 0)
  {
    v52 = objc_msgSend_length(self->_string, v23, v24);
    if (location + range2 >= v52)
    {
      v55 = v52 - location;
    }

    else
    {
      v55 = range2;
    }

    if (v52 <= location)
    {
      v56 = 0;
    }

    else
    {
      v56 = v55;
    }

    if (location >= v52)
    {
      v57 = v52;
    }

    else
    {
      v57 = location;
    }

    range2a = v57;
    if (v57)
    {
      v58 = 0;
    }

    else
    {
      v58 = v56 == v52;
    }

    v59 = v58;
    if (v58 && !objc_msgSend_targetType(archiverCopy, v53, v54))
    {
      for (j = 0; j != 23; ++j)
      {
        if (TSWPAttributeArray::shouldRepairInvalidAttributeArray(j))
        {
          v62 = objc_msgSend_attributeArrayForKind_withCreate_(self, v61, j, 0);
          if (v62)
          {
            if ((*(*v62 + 288))(v62))
            {
              v155 = TSWPAttributeArray::attributeArrayName(j, v63);
              TSUSetCrashReporterInfo();

              v146 = MEMORY[0x277D81150];
              v148 = objc_msgSend_stringWithUTF8String_(*(v14 + 3240), v147, "[TSWPStorage saveRange:toArchiver:styleProvider:archiveChanges:removeDeletedText:archivePencilAnnotations:]", "[TSWPStorage saveRange:toArchiver:styleProvider:archiveChanges:removeDeletedText:archivePencilAnnotations:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 1235, v155);
              v150 = objc_msgSend_stringWithUTF8String_(*(v14 + 3240), v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              v152 = TSWPAttributeArray::attributeArrayName(j, v151);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v153, v148, v150, 1235, 1, "Attribute array is in disrepair: %{public}@. Aborting archive.", v152);

              TSUCrashBreakpoint();
              abort();
            }
          }
        }
      }
    }

    v64 = archiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v66 = objc_msgSend_messageWithNewFunction_descriptor_(v64, v65, sub_276D34E6C, off_2812DC408[18]);
    v156 = v59;

    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    if (WeakRetained)
    {
      *(v66 + 16) |= 0x1000000u;
      *(v66 + 233) = 1;
    }

    v70 = *(self + 302) & 0xF;
    if (v70 != 3)
    {
      *(v66 + 16) |= 0x2000000u;
      *(v66 + 236) = v70;
    }

    stylesheet = self->_stylesheet;
    if (stylesheet)
    {
      *(v66 + 16) |= 1u;
      v72 = *(v66 + 48);
      if (!v72)
      {
        v73 = *(v66 + 8);
        if (v73)
        {
          v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
        }

        v72 = MEMORY[0x277CA3250](v73);
        *(v66 + 48) = v72;
      }

      objc_msgSend_setWeakReference_message_(v64, v68, stylesheet, v72);
    }

    if (!v56)
    {
      goto LABEL_70;
    }

    v74 = *(v66 + 40);
    if (!v74)
    {
      goto LABEL_64;
    }

    v75 = *(v66 + 32);
    v76 = *v74;
    if (v75 < *v74)
    {
      *(v66 + 32) = v75 + 1;
      v77 = *&v74[2 * v75 + 2];
      goto LABEL_66;
    }

    if (v76 == *(v66 + 36))
    {
LABEL_64:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v66 + 24));
      v74 = *(v66 + 40);
      v76 = *v74;
    }

    *v74 = v76 + 1;
    v77 = sub_276D34D8C(*(v66 + 24));
    v78 = *(v66 + 32);
    v79 = *(v66 + 40) + 8 * v78;
    *(v66 + 32) = v78 + 1;
    *(v79 + 8) = v77;
LABEL_66:
    std::string::reserve(v77, v56);
    v80 = range2a;
    do
    {
      v168 = 0;
      v178.location = v80;
      v178.length = v55;
      Bytes = CFStringGetBytes(self->_string, v178, 0x8000100u, 0, 0, buffer, 512, &v168);
      v69 = v168;
      if (v168)
      {
        std::string::append(v77, buffer, v168);
      }

      v80 += Bytes;
      v55 -= Bytes;
    }

    while (v55);
LABEL_70:
    v82 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v156)
    {
      v82 = v56;
    }

    v172.location = range2a;
    v172.length = v82;
    v83 = self->_attributesTable[0];
    if (v83)
    {
      *(v66 + 16) |= 2u;
      if (!*(v66 + 56))
      {
        v84 = *(v66 + 8);
        if (v84)
        {
          v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 56) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v84);
      }

      (*(v83->var0 + 30))(v83);
    }

    v85 = self->_attributesTable[1];
    if (v85)
    {
      *(v66 + 16) |= 4u;
      v86 = *(v66 + 64);
      if (!v86)
      {
        v87 = *(v66 + 8);
        if (v87)
        {
          v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
        }

        v86 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v87);
        *(v66 + 64) = v86;
      }

      TSWPParagraphAttributeArray::saveToArchive(v85, v86, &v172);
    }

    v88 = self->_attributesTable[11];
    if (v88)
    {
      *(v66 + 16) |= 0x100u;
      v89 = *(v66 + 112);
      if (!v89)
      {
        v90 = *(v66 + 8);
        if (v90)
        {
          v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
        }

        v89 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v90);
        *(v66 + 112) = v89;
      }

      TSWPParagraphAttributeArray::saveToArchive(v88, v89, &v172);
    }

    v91 = self->_attributesTable[18];
    if (v91)
    {
      *(v66 + 16) |= 0x40000u;
      v92 = *(v66 + 192);
      if (!v92)
      {
        v93 = *(v66 + 8);
        if (v93)
        {
          v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
        }

        v92 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v93);
        *(v66 + 192) = v92;
      }

      TSWPParagraphAttributeArray::saveToArchive(v91, v92, &v172);
    }

    v94 = self->_attributesTable[2];
    if (v94)
    {
      *(v66 + 16) |= 8u;
      if (!*(v66 + 72))
      {
        v95 = *(v66 + 8);
        if (v95)
        {
          v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 72) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v95);
      }

      (*(v94->var0 + 30))(v94);
    }

    v96 = self->_attributesTable[3];
    if (v96)
    {
      *(v66 + 16) |= 0x10u;
      if (!*(v66 + 80))
      {
        v97 = *(v66 + 8);
        if (v97)
        {
          v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 80) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v97);
      }

      (*(v96->var0 + 30))(v96);
    }

    v98 = self->_attributesTable[13];
    if (v98)
    {
      *(v66 + 16) |= 0x2000u;
      if (!*(v66 + 152))
      {
        v99 = *(v66 + 8);
        if (v99)
        {
          v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 152) = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable>(v99);
      }

      (*(v98->var0 + 35))(v98);
    }

    v100 = self->_attributesTable[14];
    if (v100)
    {
      *(v66 + 16) |= 0x4000u;
      if (!*(v66 + 160))
      {
        v101 = *(v66 + 8);
        if (v101)
        {
          v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 160) = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable>(v101);
      }

      (*(v100->var0 + 35))(v100);
    }

    v102 = self->_attributesTable[9];
    if (v102)
    {
      *(v66 + 16) |= 0x80u;
      if (!*(v66 + 104))
      {
        v103 = *(v66 + 8);
        if (v103)
        {
          v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 104) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v103);
      }

      (*(v102->var0 + 30))(v102);
    }

    if (objc_msgSend_supportsSections(self, v68, v69))
    {
      v106 = self->_attributesTable[8];
      if (v106)
      {
        *(v66 + 16) |= 0x800u;
        if (!*(v66 + 136))
        {
          v107 = *(v66 + 8);
          if (v107)
          {
            v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
          }

          *(v66 + 136) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v107);
        }

        (*(v106->var0 + 30))(v106);
      }
    }

    v108 = self->_attributesTable[6];
    if (v108)
    {
      *(v66 + 16) |= 0x40u;
      if (!*(v66 + 96))
      {
        v109 = *(v66 + 8);
        if (v109)
        {
          v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 96) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v109);
      }

      (*(v108->var0 + 30))(v108);
    }

    v110 = self->_attributesTable[12];
    if (v110)
    {
      *(v66 + 16) |= 0x200u;
      if (!*(v66 + 120))
      {
        v111 = *(v66 + 8);
        if (v111)
        {
          v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 120) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v111);
      }

      (*(v110->var0 + 30))(v110);
    }

    v112 = self->_attributesTable[21];
    if (v112)
    {
      *(v66 + 16) |= 0x200000u;
      if (!*(v66 + 216))
      {
        v113 = *(v66 + 8);
        if (v113)
        {
          v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 216) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v113);
      }

      (*(v112->var0 + 30))(v112);
    }

    v114 = self->_attributesTable[4];
    if (v114)
    {
      *(v66 + 16) |= 0x20u;
      if (!*(v66 + 88))
      {
        v115 = *(v66 + 8);
        if (v115)
        {
          v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 88) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v115);
      }

      (*(v114->var0 + 30))(v114);
    }

    v116 = self->_attributesTable[5];
    if (v116)
    {
      *(v66 + 16) |= 0x400u;
      if (!*(v66 + 128))
      {
        v117 = *(v66 + 8);
        if (v117)
        {
          v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 128) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v117);
      }

      (*(v116->var0 + 30))(v116);
    }

    v118 = self->_attributesTable[7];
    if (v118)
    {
      *(v66 + 16) |= 0x1000u;
      if (!*(v66 + 144))
      {
        v119 = *(v66 + 8);
        if (v119)
        {
          v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 144) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v119);
      }

      (*(v118->var0 + 30))(v118);
    }

    if (v160)
    {
      v120 = self->_attributesTable[15];
      if (v120)
      {
        *(v66 + 16) |= 0x8000u;
        if (!*(v66 + 168))
        {
          v121 = *(v66 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          *(v66 + 168) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v121);
        }

        (*(v120->var0 + 30))(v120);
      }

      v122 = self->_attributesTable[16];
      if (v122)
      {
        *(v66 + 16) |= 0x10000u;
        if (!*(v66 + 176))
        {
          v123 = *(v66 + 8);
          if (v123)
          {
            v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
          }

          *(v66 + 176) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v123);
        }

        (*(v122->var0 + 30))(v122);
      }
    }

    if (objc_msgSend_hasComments(self, v104, v105))
    {
      hasAnyCommentsRequiring2_2 = objc_msgSend_hasAnyCommentsRequiring2_2(self, v124, v125);
      v127 = self->_attributesTable[19];
      if (hasAnyCommentsRequiring2_2)
      {
        if (v127)
        {
          *(v66 + 16) |= 0x80000u;
          if (!*(v66 + 200))
          {
            v128 = *(v66 + 8);
            if (v128)
            {
              v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
            }

            *(v66 + 200) = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable>(v128);
          }

          (*(v127->var0 + 32))(v127);
        }

        objc_msgSend_requiresDocumentVersion_featureIdentifier_(v64, v124, *MEMORY[0x277D80980], @"TSWPOverlappingComments");
      }

      else if (v127)
      {
        *(v66 + 16) |= 0x20000u;
        if (!*(v66 + 184))
        {
          v129 = *(v66 + 8);
          if (v129)
          {
            v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
          }

          *(v66 + 184) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v129);
        }

        (*(v127->var0 + 33))(v127);
      }
    }

    if (objc_msgSend_hasAttachmentsRequiring4_1InRange_(self, v124, v172.location, v172.length))
    {
      objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v64, v130, *MEMORY[0x277D809B0], *MEMORY[0x277D809B0], @"TSWPInlineDrawables");
    }

    if (objc_msgSend_hasTrackedChanges(self, v130, v131) && (*(self + 302) & 0xD | 2) != 2)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v64, v132, *MEMORY[0x277D80998], @"TSWPChangeTrackingInTextBoxes");
    }

    if (annotations)
    {
      v134 = self->_attributesTable[20];
      if (v134)
      {
        *buffer = 0;
        v174 = buffer;
        v175 = 0x2020000000;
        v176 = 0;
        v168 = 0;
        v169 = &v168;
        v170 = 0x2020000000;
        v171 = 0;
        v164 = 0;
        v165 = &v164;
        v166 = 0x2020000000;
        v167 = 0;
        v135 = objc_msgSend_range(self, v132, v133);
        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = sub_276D198E4;
        v163[3] = &unk_27A6F3690;
        v163[4] = buffer;
        v163[5] = &v168;
        v163[6] = &v164;
        objc_msgSend_enumeratePencilAnnotationsInRange_usingBlock_(self, v136, v135, v136, v163);
        if (v174[24])
        {
          objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v64, v137, *MEMORY[0x277D80970], *MEMORY[0x277D809A8], @"TSKImprovedPencilAnnotations");
        }

        else
        {
          v138 = @"TSKImprovedPencilAnnotations";
          if (v169[3])
          {
            v139 = MEMORY[0x277D809A0];
          }

          else
          {
            if (*(v165 + 24))
            {
              v139 = MEMORY[0x277D80998];
            }

            else
            {
              v139 = MEMORY[0x277D80990];
            }

            if (!*(v165 + 24))
            {
              v138 = @"TSKPencilAnnotations";
            }
          }

          objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v64, v137, *MEMORY[0x277D80970], *v139, v138);
        }

        *(v66 + 16) |= 0x100000u;
        if (!*(v66 + 208))
        {
          v140 = *(v66 + 8);
          if (v140)
          {
            v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
          }

          *(v66 + 208) = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable>(v140);
        }

        (*(v134->var0 + 32))(v134);
        _Block_object_dispose(&v164, 8);
        _Block_object_dispose(&v168, 8);
        _Block_object_dispose(buffer, 8);
      }
    }

    v141 = self->_attributesTable[22];
    if (v141)
    {
      *(v66 + 16) |= 0x400000u;
      if (!*(v66 + 224))
      {
        v142 = *(v66 + 8);
        if (v142)
        {
          v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v66 + 224) = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v142);
      }

      (*(v141->var0 + 30))(v141);
      *buffer = 0;
      v174 = buffer;
      v175 = 0x2020000000;
      v176 = 0;
      v162[0] = MEMORY[0x277D85DD0];
      v162[1] = 3221225472;
      v162[2] = sub_276D19A30;
      v162[3] = &unk_27A6F36B8;
      v162[4] = buffer;
      TSWPAttributeArray::enumerateObjectAttributes(v141, v162);
      if (v174[24] == 1)
      {
        objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v64, v143, 0xA000000000000, *MEMORY[0x277D808C8], @"TSWPDropCaps");
      }

      _Block_object_dispose(buffer, 8);
    }

    goto LABEL_229;
  }

  v38 = objc_msgSend_supportsSections(self, v23, v24);
  v42 = objc_msgSend_context(self, v39, v40);
  if (v38)
  {
    v43 = objc_msgSend_newSubstorageWithRange_context_flags_(self, v41, location, range2, v42, 4);
  }

  else
  {
    v43 = objc_msgSend_newSubstorageWithRange_context_flags_(self, v41, location, range2, v42, 0);
  }

  v44 = v43;

  v47 = *(v37 + 6);
  if (v47)
  {
    for (k = (v47 - 1); k != -1; --k)
    {
      v49 = TSWPAttributeArray::objectForAttributeIndex(v37, k);
      if (v49)
      {
        v50.location = TSWPAttributeArray::rangeForAttributeIndex(v37, k);
        if (v50.location + v50.length <= location)
        {

          break;
        }

        if (v50.location < location + range2)
        {
          v179.location = location;
          v179.length = range2;
          v51 = NSIntersectionRange(v50, v179);
          if (v51.length)
          {
            objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v44, v51.length, v51.location - location, v51.length, &stru_28860A0F0, 0);
          }
        }
      }
    }
  }

  v144 = objc_msgSend_range(v44, v45, v46);
  LOBYTE(usedBufLen) = annotations;
  objc_msgSend_saveRange_toArchiver_styleProvider_archiveChanges_removeDeletedText_archivePencilAnnotations_(v44, v145, v144, v145, archiverCopy, providerCopy, 1, 0, usedBufLen);

LABEL_229:
}

- (void)unarchiverAppendParagraphBreak:(unsigned __int16)break
{
  chars = break;
  v4 = objc_msgSend_length(self->_string, a2, break);
  v6 = CFStringCreateWithCharactersNoCopy(0, &chars, 1, *MEMORY[0x277CBED00]);
  if (v6)
  {
    objc_msgSend_appendString_(self->_string, v5, v6);
    v8 = objc_msgSend_attributeArrayForKind_(self, v7, 0);
    v9 = TSWPAttributeArray::objectForAttributeIndex(v8, *(v8 + 24) - 1);
    (*(*v8 + 56))(v8, v9, v4 + 1, *(v8 + 24), 0, 0);
  }
}

- (vector<unsigned)p_charIndicesForString:(TSWPStorage *)self breakingCharacterSet:(SEL)set
{
  v7 = a4;
  v8 = a5;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v26 = 0;
  sub_276D19CF0(&retstr->__begin_, &v26);
  v12 = objc_msgSend_length(v7, v9, v10);
  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v7, v11, v8, 2, v13, v12 - v13);
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = v14 + 1;
      end = retstr->__end_;
      cap = retstr->__cap_;
      if (end >= cap)
      {
        begin = retstr->__begin_;
        v19 = end - retstr->__begin_;
        v20 = v19 >> 3;
        v21 = (v19 >> 3) + 1;
        if (v21 >> 61)
        {
          sub_276D34ED8();
        }

        v22 = cap - begin;
        if (v22 >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          sub_276D34EF0(retstr, v23);
        }

        *(8 * v20) = v13;
        v17 = (8 * v20 + 8);
        memcpy(0, begin, v19);
        v24 = retstr->__begin_;
        retstr->__begin_ = 0;
        retstr->__end_ = v17;
        retstr->__cap_ = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *end = v13;
        v17 = end + 1;
      }

      retstr->__end_ = v17;
    }

    while (v13 < v12);
  }

  return result;
}

- (vector<unsigned)p_charIndicesForAttributeArray:(vector<unsigned)long
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  if (*(a4 + 6))
  {
    v6 = 0;
    do
    {
      v7 = TSWPAttributeArray::charIndexForAttributeIndex(a4, v6);
      sub_276D19CF0(&retstr->__begin_, &v7);
      ++v6;
    }

    while (v6 < *(a4 + 6));
  }

  return self;
}

- (void)i_repairParagraphArray
{
  v3 = sub_276D35FA4();
  objc_msgSend_p_charIndicesForString_breakingCharacterSet_(self, v4, self->_string, v3);
  v6 = objc_msgSend_attributeArrayForKind_(self, v5, 0);
  objc_msgSend_p_charIndicesForAttributeArray_(self, v7, v6);
  v9 = v28 - __p;
  v10 = v25;
  if (v28 - __p != v26 - v25 || memcmp(__p, v25, v9))
  {
    objc_msgSend_willModifyForUpgrade(self, v8, v9);
    if (*MEMORY[0x277D81500] != -1)
    {
      sub_276F4EB0C();
    }

    v13 = objc_msgSend_stylesheet(self, v11, v12);
    v16 = objc_msgSend_defaultParagraphStyle(v13, v14, v15);

    if (!v16)
    {
      TSUSetCrashReporterInfo();
      v19 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage i_repairParagraphArray]", "[TSWPStorage i_repairParagraphArray]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 1481);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v21, v23, 1481, 1, "Could not get default paragraph style when repairing stylesheet.");

      TSUCrashBreakpoint();
      abort();
    }

    (*(*v6 + 64))(v6, 0, v6[6], 0);
    v17 = __p;
    if (v28 != __p)
    {
      v18 = 0;
      do
      {
        (*(*v6 + 56))(v6, v16, v17[v18], v18, 0, 0);
        ++v18;
        v17 = __p;
      }

      while (v18 < (v28 - __p) >> 3);
    }

    v10 = v25;
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

- (void)p_repairSectionArray
{
  v3 = objc_msgSend_characterSetWithRange_(MEMORY[0x277CCA900], a2, 4, 1);
  objc_msgSend_p_charIndicesForString_breakingCharacterSet_(self, v4, self->_string, v3);
  v6 = objc_msgSend_attributeArrayForKind_(self, v5, 8);
  objc_msgSend_p_charIndicesForAttributeArray_(self, v7, v6);
  v8 = v20;
  v9 = v21 - v20;
  v10 = __p;
  if (v21 - v20 != v19 - __p || memcmp(v20, __p, v9))
  {
    objc_msgSend_willModifyForUpgrade(self, v10, v9);
    if (*MEMORY[0x277D81500] != -1)
    {
      sub_276F4EB34();
    }

    (*(*v6 + 64))(v6, 0, v6[6], 0);
    v8 = v20;
    if (v21 != v20)
    {
      v13 = 0;
      do
      {
        v14 = objc_msgSend_context(self, v11, v12);
        v16 = objc_msgSend_pDefaultSectionForContext_(self, v15, v14);
        objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v17, v16, *&v20[8 * v13], v6, v13, 0);

        ++v13;
        v8 = v20;
      }

      while (v13 < (v21 - v20) >> 3);
    }
  }

  if (__p)
  {
    operator delete(__p);
    v8 = v20;
  }

  if (v8)
  {
    operator delete(v8);
  }
}

- (void)p_repairListLevels
{
  v3 = objc_msgSend_attributeArrayForKind_(self, a2, 1);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 24);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = MEMORY[0x277D81500];
      do
      {
        v10 = TSWPAttributeRecord::paragraphData(*(v4 + 8) + v6, *(v4 + 28));
        if (*v10 >= 9u)
        {
          v13 = v10;
          if ((v7 & 1) == 0)
          {
            if (*v9 != -1)
            {
              sub_276F4EB5C();
            }

            objc_msgSend_willModifyForUpgrade(self, v11, v12);
          }

          v7 = 1;
          objc_msgSend_applyFlags_level_toParagraphIndexRange_forKind_undoTransaction_(self, v11, v13[1], 8, v8, 1, 1, 0);
        }

        ++v8;
        v6 += 16;
      }

      while (v5 != v8);
    }
  }
}

- (void)p_repairAttachments
{
  v4 = objc_msgSend_attachmentCount(self, a2, v2);
  if (v4)
  {
    v7 = v4 - 1;
    do
    {
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v5, v7, &v40);
      objc_opt_class();
      v9 = TSUDynamicCast();
      v12 = v9;
      if (v9 && (objc_msgSend_drawable(v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        objc_msgSend_willModifyForUpgrade(self, v10, v14);
        objc_msgSend_replaceCharactersInRange_withStorage_(self, v17, v40, 1, 0);
      }

      else
      {
        objc_msgSend_didFinalizeUnarchivingFromWPStorage_(v12, v10, self);
      }

      if (objc_msgSend_wpKind(self, v15, v16) != 7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (*MEMORY[0x277D81500] != -1)
          {
            sub_276F4EB70();
          }

          objc_msgSend_willModifyForUpgrade(self, v18, v19);
          v20 = [TSWPPageNumberAttachment alloc];
          v23 = objc_msgSend_context(self, v21, v22);
          v25 = objc_msgSend_initWithContext_(v20, v24, v23);

          objc_msgSend_insertAttachmentOrFootnote_range_(self, v26, v25, v40, 1);
        }
      }

      --v7;
    }

    while (v7 != -1);
  }

  v27 = objc_msgSend_length(self, v5, v6);
  if (v27)
  {
    v29 = v27 - 1;
    v30 = MEMORY[0x277D81408];
    do
    {
      v31 = objc_msgSend_characterAtIndex_(self, v28, v29);
      if (v31 == 65532 || v31 == 14)
      {
        v34 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(self, v28, v29);
        if (!v34)
        {
          objc_msgSend_willModifyForUpgrade(self, v32, v33);
          if (*v30 != -1)
          {
            sub_276F4EB98();
          }

          objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(self, v35, v29, 1, &stru_28860A0F0, 0);
          v38 = objc_msgSend_documentRoot(self, v36, v37);
          objc_msgSend_setDidRemoveMissingAttachments_(v38, v39, 1);
        }
      }

      --v29;
    }

    while (v29 != -1);
  }
}

- (void)p_repairComments
{
  v29 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_hasComments(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
    v8 = objc_msgSend_setDOLCSuppressed_(self, v7, 1);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_276D1A9EC;
    v26[3] = &unk_27A6F3708;
    v26[4] = self;
    v9 = v6;
    v27 = v9;
    objc_msgSend_performBlockIgnoringModifications_(self, v10, v26);
    v13 = objc_msgSend_range(self, v11, v12);
    objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v14, 0, v13, v14, 17, 0, 0);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v9;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v22, v28, 16);
    if (v18)
    {
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v15);
          }

          objc_msgSend_setParentStorage_(*(*(&v22 + 1) + 8 * v20++), v17, self, v22);
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v22, v28, 16);
      }

      while (v18);
    }

    objc_msgSend_setDOLCSuppressed_(self, v21, v8);
  }
}

- (void)p_repairHyperlinksWithVersion:(unint64_t)version hasPreUFFVersion:(BOOL)fVersion
{
  if (*MEMORY[0x277D809A0] > version || fVersion)
  {
    MEMORY[0x2821F9670](self, sel_nonUndoableRemoveUnsupportedHyperlinks, version);
  }
}

- (void)p_repairAttributeArrays
{
  v3 = 0;
  v4 = MEMORY[0x277D81500];
  do
  {
    v5 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, v3, 0);
    if (v5 && (*(*v5 + 96))(v5))
    {
      objc_msgSend_willModifyForUpgrade(self, v6, v7);
      objc_msgSend_compressAttributeArrayKind_actionState_(self, v8, v3, 0);
    }

    if (TSWPAttributeArray::shouldRepairInvalidAttributeArray(v3))
    {
      v9 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, v3, 0);
      if (v9)
      {
        v10 = v9;
        if ((*(*v9 + 288))(v9))
        {
          if (*v4 != -1)
          {
            sub_276F4EBC0();
          }

          objc_msgSend_willModifyForUpgrade(self, a2, v11);
          (*(*v10 + 88))(v10);
        }
      }
    }

    ++v3;
  }

  while (v3 != 23);
}

- (id)p_lazyBroadcaster
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_broadcaster)
  {
    v3 = objc_alloc_init(TSWPStorageBroadcaster);
    broadcaster = selfCopy->_broadcaster;
    selfCopy->_broadcaster = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_broadcaster;

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6 = objc_msgSend_p_lazyBroadcaster(self, v4, v5);
  objc_msgSend_addObserver_(v6, v7, observerCopy);
}

- (void)addParagraphObserver:(id)observer
{
  observerCopy = observer;
  v6 = objc_msgSend_p_lazyBroadcaster(self, v4, v5);
  objc_msgSend_addParagraphObserver_(v6, v7, observerCopy);
}

- (void)setDocumentRoot:(id)root
{
  obj = root;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  if (WeakRetained != obj)
  {
    objc_msgSend_willModify(self, v5, v6);
  }

  objc_storeWeak(&self->_documentRoot, obj);
}

- (void)nonUndoableSetWPKind:(unsigned __int8)kind keepHighlights:(BOOL)highlights
{
  v4 = *(self + 302);
  if ((v4 & 0xF) != kind)
  {
    if (!kind)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage nonUndoableSetWPKind:keepHighlights:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1820, 0, "Can't set storage kind to TSWPKindBody without a context and column style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
      v4 = *(self + 302);
    }

    *(self + 302) = v4 & 0xF0 | kind & 0xF;
    if ((objc_msgSend_supportsColumnStyles(self, a2, kind) & 1) == 0)
    {
      v16 = objc_msgSend_attributeArrayForKind_withCreate_(self, v14, 9, 0);
      if (v16)
      {
        (*(*v16 + 64))(v16, 0, v16[6], 0);
      }
    }

    if ((objc_msgSend_supportsSections(self, v14, v15) & 1) == 0)
    {
      v19 = objc_msgSend_attributeArrayForKind_withCreate_(self, v17, 8, 0);
      if (v19)
      {
        (*(*v19 + 64))(v19, 0, v19[6], 0);
      }
    }

    if (objc_msgSend_WPKindSupportsDropCaps(self, v17, v18))
    {
      if (!objc_msgSend_dropCapStyleCount(self, v20, v21))
      {
        v23 = objc_msgSend_attributeArrayForKind_withCreate_(self, v22, 22, 1);
        objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v24, 0, 0, v23, 0, 0);
      }
    }

    else
    {
      v25 = objc_msgSend_attributeArrayForKind_withCreate_(self, v20, 22, 0);
      if (v25)
      {
        (*(*v25 + 64))(v25, 0, v25[6], 0);
      }
    }

    if ((*(self + 302) & 0xF) == 5 && !objc_msgSend_attributeArrayForKind_withCreate_(self, v22, 2, 0))
    {
      v26 = objc_msgSend_attributeArrayForKind_withCreate_(self, v22, 2, 1);
      v29 = objc_msgSend_stylesheet(self, v27, v28);
      v32 = objc_msgSend_defaultListStyle(v29, v30, v31);
      objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v33, v32, 0, v26, 0, 0);
    }

    objc_msgSend_compress_(self, v22, 0);

    MEMORY[0x2821F9670](self, sel_nonUndoableFilterInvalidContentForStorage_keepHighlights_, self);
  }
}

- (void)addDisallowedElementKind:(unsigned int)kind
{
  v3 = *(self + 148);
  v4 = v3 | (*(self + 298) << 16) | kind;
  *(self + 148) = v3 | kind;
  *(self + 298) = BYTE2(v4);
}

- (void)removeDisallowedElementKind:(unsigned int)kind
{
  v3 = *(self + 148);
  v4 = (v3 | (*(self + 298) << 16)) & ~kind;
  *(self + 148) = v3 & ~kind;
  *(self + 298) = BYTE2(v4);
}

- (unsigned)disallowedElementKinds
{
  v4 = *(self + 302) & 0xF;
  v5 = *(&xmmword_280A57DE0 + v4) | *(self + 148) | (*(self + 298) << 16);
  if (v4 == 5)
  {
    v5 |= 0xCu;
  }

  if ((*(self + 302) & 0xF) == 0 || v4 == 6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 | 0x240;
  }

  v8 = objc_msgSend_documentRoot(self, a2, v2);
  IsVerticalInStorage_atCharIndex = objc_msgSend_textIsVerticalInStorage_atCharIndex_(v8, v9, self, 0);

  if (IsVerticalInStorage_atCharIndex)
  {
    v13 = v7 | 4;
  }

  else
  {
    v13 = v7;
  }

  if ((v13 & 0x2000) == 0)
  {
    v14 = objc_msgSend_documentRoot(self, v11, v12);
    isSectionTemplateInfo = objc_msgSend_isSectionTemplateInfo_(v14, v15, self);

    if (isSectionTemplateInfo)
    {
      v13 |= 0x2000u;
    }
  }

  v17 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v11, v12);
  v20 = v17;
  if (v17 && !objc_msgSend_supportsWebVideos(v17, v18, v19))
  {
    v13 |= 0x10000u;
  }

  return v13;
}

- (BOOL)p_nestedInHeaderFooter
{
  v2 = TSDNearestParentInfoFromInfoPassingTest();
  v3 = v2 != 0;

  return v3;
}

- (int64_t)nestedTextboxDepth
{
  v3 = objc_msgSend_parentInfo(self, a2, v2);
  v4 = TSUProtocolCast();

  v7 = objc_msgSend_nestedTextboxDepth(v4, v5, v6, &unk_2886471D8);
  return v7;
}

- (BOOL)allowsElementKind:(unsigned int)kind
{
  v3 = *&kind;
  v6 = objc_msgSend_nestedTextboxDepth(self, a2, *&kind);

  return objc_msgSend_allowsElementKind_nestingDepth_(self, v5, v3, v6);
}

- (BOOL)allowsElementKind:(unsigned int)kind nestingDepth:(int64_t)depth
{
  if ((objc_msgSend_disallowedElementKinds(self, a2, *&kind) & kind) != 0)
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  if ((*(self + 302) & 0xF) == 3)
  {
    v9 = (kind & 2) == 0 || depth < 3;
    if ((kind & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v9)
    {
      v9 = objc_msgSend_p_nestedInHeaderFooter(self, v7, v8) ^ 1;
    }

    goto LABEL_15;
  }

  v9 = 1;
  if ((kind & 0x2000) != 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((kind & 0x12000) != 0 && v9)
  {
    LOBYTE(v9) = objc_msgSend_p_isRotatedInAnyParent(self, v7, v8) ^ 1;
  }

  return v9;
}

- (BOOL)p_isRotatedInAnyParent
{
  selfCopy = self;
  if (!selfCopy)
  {
    return selfCopy;
  }

  v5 = selfCopy;
  while (1)
  {
    v6 = objc_msgSend_parentInfo(v5, v3, v4);

    objc_opt_class();
    v7 = TSUDynamicCast();
    v10 = v7;
    if (!v7)
    {
      break;
    }

    if (objc_msgSend_containsRotatedOrFlippedTextBox(v7, v8, v9))
    {
      goto LABEL_15;
    }

LABEL_12:

    v5 = v6;
    if (!v6)
    {
      LOBYTE(selfCopy) = 0;
      return selfCopy;
    }
  }

  v11 = objc_msgSend_geometry(v6, v8, v9);
  v14 = v11;
  if (!v11 || ((objc_msgSend_angle(v11, v12, v13), v17 == 0.0) || fabs(v17) < 0.01) && (objc_msgSend_horizontalFlip(v14, v15, v16) & 1) == 0 && (objc_msgSend_verticalFlip(v14, v18, v19) & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_15:
  LOBYTE(selfCopy) = 1;
  return selfCopy;
}

- (BOOL)isAllowedToAddCaptionToChildInfo:(id)info
{
  if (objc_msgSend_nestedTextboxDepth(self, a2, info) > 1)
  {
    return 0;
  }

  v6 = objc_msgSend_parentInfo(self, v4, v5);
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v10 = objc_msgSend_parentInfo(self, v8, v9);
  isAllowedToAddCaptionToChildInfo = objc_msgSend_isAllowedToAddCaptionToChildInfo_(v10, v11, self);

  return isAllowedToAddCaptionToChildInfo;
}

- (BOOL)canAcceptDrawableAttachments
{
  if (objc_msgSend_allowsElementKind_(self, a2, 1) & 1) != 0 || (objc_msgSend_allowsElementKind_(self, v3, 2) & 1) != 0 || (objc_msgSend_allowsElementKind_(self, v4, 4))
  {
    return 1;
  }

  return objc_msgSend_allowsElementKind_(self, v5, 8);
}

- (BOOL)canAcceptAttachmentForDrawableInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_nestedTextboxDepth(self, v5, v6);
  objc_opt_class();
  v8 = TSUDynamicCast();
  if ((objc_msgSend_isTextBox(v8, v9, v10) & 1) != 0 || (objc_msgSend_textStorage(v8, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_length(v13, v14, v15), v13, v16))
  {
    ++v7;
  }

  v17 = objc_msgSend_elementKind(infoCopy, v11, v12);
  v19 = objc_msgSend_allowsElementKind_nestingDepth_(self, v18, v17, v7);

  return v19;
}

- (unsigned)disallowedSmartFieldKinds
{
  selfCopy = self;
  v4 = *(self + 150);
  v5 = *(&xmmword_280A57E10 + (*(self + 302) & 0xF));
  v6 = objc_msgSend_documentRoot(self, a2, v2);
  LODWORD(selfCopy) = objc_msgSend_isSectionTemplateInfo_(v6, v7, selfCopy);
  v8 = v5 | v4;

  if (selfCopy)
  {
    return v8 | 0x40;
  }

  else
  {
    return v8;
  }
}

- (BOOL)pAllowsAttachment:(id)attachment withNestingDepth:(int64_t)depth
{
  attachmentCopy = attachment;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (objc_msgSend_isAnchored(v7, v8, v9) && (objc_msgSend_isHTMLWrap(v7, v10, v11) & 1) == 0)
  {
    v16 = objc_msgSend_wpKind(self, v10, v11) == 0;
  }

  else
  {
    v12 = objc_msgSend_elementKind(attachmentCopy, v10, v11);
    v16 = objc_msgSend_allowsElementKind_nestingDepth_(self, v13, v12, depth);
  }

  if (objc_msgSend_wpKind(self, v14, v15) == 5)
  {
    v16 &= objc_msgSend_elementKind(attachmentCopy, v17, v18) != 8;
  }

  return v16;
}

- (void)p_nonUndoableFilterSectionBreaksFromStorage:(id)storage
{
  storageCopy = storage;
  if ((objc_msgSend_supportsSectionCopying(storageCopy, v5, v6) & 1) == 0)
  {
    v8 = objc_msgSend_attributeArrayForKind_withCreate_(self, v7, 8, 0);
    if (v8)
    {
      (*(*v8 + 64))(v8, 0, v8[6], 0);
    }

    if (objc_msgSend_length(self->_string, v9, v10))
    {
      v25 = 4;
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_initWithCharacters_length_(v11, v12, &v25, 1);
      v15 = objc_msgSend_rangeOfString_(self->_string, v14, v13);
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 5;
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v18 = objc_msgSend_initWithCharacters_length_(v16, v17, &v24, 1);
        string = self->_string;
        v22 = objc_msgSend_length(string, v20, v21);
        objc_msgSend_replaceOccurrencesOfString_withString_options_range_(string, v23, v13, v18, 2, v15, v22 - v15);
      }
    }
  }
}

- (void)p_nonUndoableFilterPageBreaksFromStorage:(id)storage
{
  if ((objc_msgSend_supportsPageBreaks(storage, a2, storage) & 1) == 0)
  {
    v17 = 5;
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithCharacters_length_(v4, v5, &v17, 1);
    v16 = 10;
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_msgSend_initWithCharacters_length_(v7, v8, &v16, 1);
    v14 = objc_msgSend_range(self, v10, v11);
    v15 = v12;
    while (v15)
    {
      v13 = objc_msgSend_rangeOfString_searchOptions_updatingSearchRange_(self, v12, v6, 0, &v14);
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(self, v12, v13, v12, v9, 0);
      }
    }
  }
}

- (void)nonUndoableFilterInvalidContentForStorage:(id)storage keepHighlights:(BOOL)highlights
{
  highlightsCopy = highlights;
  storageCopy = storage;
  v8 = objc_msgSend_nestedTextboxDepth(self, v6, v7);
  objc_msgSend_nonUndoableFilterInvalidContentForStorage_keepHighlights_nestingDepth_(self, v9, storageCopy, highlightsCopy, v8);
}

- (void)nonUndoableFilterInvalidContentForStorage:(id)storage keepHighlights:(BOOL)highlights nestingDepth:(int64_t)depth rangesToUpdate:(id)update
{
  v190[1] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  updateCopy = update;
  selfCopy = storageCopy;
  v185 = storageCopy;
  if (!storageCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage nonUndoableFilterInvalidContentForStorage:keepHighlights:nestingDepth:rangesToUpdate:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 2093, 0, "invalid nil value for '%{public}s'", "inTargetStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    selfCopy = self;
  }

  highlightsCopy = highlights;
  v19 = selfCopy;
  objc_msgSend_p_nonUndoableFilterSectionBreaksFromStorage_(self, v20, v19);
  objc_msgSend_p_nonUndoableFilterPageBreaksFromStorage_(self, v21, v19);
  if ((objc_msgSend_allowsElementKind_(v19, v22, 784895) & 1) == 0)
  {
    v25 = objc_msgSend_attachmentCount(self, v23, v24);
    if (v25)
    {
      v28 = v25 - 1;
      while (1)
      {
        v189.var0 = 0x7FFFFFFFFFFFFFFFLL;
        v30 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v26, v28, &v189);
        if (!v30 || v189.var0 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_32;
        }

        if ((objc_msgSend_pAllowsAttachment_withNestingDepth_(v19, v29, v30, depth) & 1) == 0)
        {
          v37 = &stru_28860A0F0;
          if (objc_opt_respondsToSelector())
          {
            v37 = objc_msgSend_stringEquivalent(v30, v73, v74);
          }

          var0 = v189.var0;
          objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(self, v73, v189.var0, 1, v37, 0, 0);
          v78 = objc_msgSend_length(v37, v76, v77);
          objc_msgSend_updateForTextReplacementInRange_delta_(updateCopy, v79, var0, 1, v78 - 1);
          goto LABEL_31;
        }

        if (objc_msgSend_wpKind(v19, v31, v32) == 5 || objc_msgSend_wpKind(v19, v33, v34) == 1)
        {
          break;
        }

        v99 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v35, v36);
        if (objc_msgSend_supportsCommentsInMasters(v99, v100, v101))
        {
        }

        else
        {
          v106 = objc_msgSend_documentRoot(v19, v102, v103);
          isSectionTemplateInfo = objc_msgSend_isSectionTemplateInfo_(v106, v107, v19);

          if (isSectionTemplateInfo)
          {
            break;
          }
        }

        if (!objc_msgSend_wpKind(v19, v104, v105))
        {
          goto LABEL_32;
        }

        objc_opt_class();
        v37 = TSUDynamicCast();
        if (objc_msgSend_isAnchored(v37, v109, v110) && (objc_msgSend_isHTMLWrap(v37, v111, v112) & 1) == 0)
        {
          v113 = MEMORY[0x277D81150];
          v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSWPStorage nonUndoableFilterInvalidContentForStorage:keepHighlights:nestingDepth:rangesToUpdate:]");
          v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v117, v114, v116, 2154, 0, "non-Body: Expected non-HTMLWrap anchored attachments to already be filtered.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119);
        }

        if (objc_msgSend_isAnchored(v37, v111, v112))
        {
          v120 = objc_alloc(MEMORY[0x277D80240]);
          IsHTMLWrap_type_direction_fitType_margin_alphaThreshold = objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v120, v121, 0, 0, 2, 0, 0.0, 0.5);
          v125 = objc_msgSend_drawable(v37, v123, v124);
          objc_msgSend_setExteriorTextWrap_(v125, v126, IsHTMLWrap_type_direction_fitType_margin_alphaThreshold);
        }

        objc_opt_class();
        v129 = objc_msgSend_parentInfo(v19, v127, v128);
        v130 = TSUDynamicCast();
        isCaptionOrContainedByCaption = objc_msgSend_isCaptionOrContainedByCaption(v130, v131, v132);

        if (isCaptionOrContainedByCaption)
        {
          v136 = objc_msgSend_drawable(v37, v134, v135);
          objc_msgSend_setTitle_(v136, v137, 0);

          v59 = objc_msgSend_drawable(v37, v138, v139);
          objc_msgSend_setCaption_(v59, v140, 0);
LABEL_30:
        }

LABEL_31:

LABEL_32:
        if (--v28 == -1)
        {
          goto LABEL_45;
        }
      }

      objc_opt_class();
      v37 = TSUDynamicCast();
      if (objc_msgSend_isAnchored(v37, v38, v39) && (objc_msgSend_isHTMLWrap(v37, v40, v41) & 1) == 0)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSWPStorage nonUndoableFilterInvalidContentForStorage:keepHighlights:nestingDepth:rangesToUpdate:]");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 2120, 0, "Table cells or headers: Expected non-HTMLWrap anchored attachments to already be filtered.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
      }

      if (objc_msgSend_isAnchored(v37, v40, v41))
      {
        v49 = objc_alloc(MEMORY[0x277D80240]);
        v51 = objc_msgSend_initWithIsHTMLWrap_type_direction_fitType_margin_alphaThreshold_(v49, v50, 0, 0, 2, 0, 0.0, 0.5);
        v54 = objc_msgSend_drawable(v37, v52, v53);
        objc_msgSend_setExteriorTextWrap_(v54, v55, v51);
      }

      objc_opt_class();
      v58 = objc_msgSend_drawable(v37, v56, v57);
      v59 = TSUDynamicCast();

      v62 = objc_msgSend_drawable(v37, v60, v61);
      v65 = objc_msgSend_disallowedElementKinds(v19, v63, v64);
      v67 = objc_msgSend_containsDisallowedDrawableElementKind_(v62, v66, v65);
      if (v59)
      {
        v68 = 1;
      }

      else
      {
        v68 = v67;
      }

      if (v68)
      {
        v71 = v189.var0;
        objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(self, v69, v189.var0, 1, &stru_28860A0F0, 0, 0);
        objc_msgSend_updateForTextReplacementInRange_delta_(updateCopy, v72, v71, 1, -1);
      }

      else
      {
        v82 = objc_msgSend_drawable(v37, v69, v70);
        if (v82)
        {
          v183 = objc_msgSend_context(v19, v80, v81);
          v86 = objc_msgSend_documentObject(v183, v83, v84);
          if (!v86)
          {
            v87 = MEMORY[0x277D81150];
            v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSWPStorage nonUndoableFilterInvalidContentForStorage:keepHighlights:nestingDepth:rangesToUpdate:]");
            v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v90, v182, v89, 2143, 0, "invalid nil value for '%{public}s'", "documentRoot");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92);
          }

          v190[0] = v82;
          v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v85, v190, 1);
          objc_msgSend_removeAllAnnotationsFromDrawables_(v86, v94, v93);

          if (objc_msgSend_wpKind(v19, v95, v96) == 5)
          {
            objc_msgSend_setCaption_(v82, v97, 0);
            objc_msgSend_setTitle_(v82, v98, 0);
          }
        }
      }

      goto LABEL_30;
    }

LABEL_45:
    v141 = objc_msgSend_footnoteCount(self, v26, v27);
    if (v141)
    {
      v142 = v141 - 1;
      do
      {
        v189.var0 = 0x7FFFFFFFFFFFFFFFLL;
        v143 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(self, v23, v142, &v189);
        v146 = v143;
        if (v143)
        {
          if (v189.var0 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v147 = objc_msgSend_elementKind(v143, v144, v145);
            if ((objc_msgSend_allowsElementKind_(v19, v148, v147) & 1) == 0)
            {
              v151 = &stru_28860A0F0;
              if (objc_opt_respondsToSelector())
              {
                v151 = objc_msgSend_stringEquivalent(v146, v149, v150);
              }

              v152 = v189.var0;
              objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(self, v149, v189.var0, 1, v151, 0, 0);
              v155 = objc_msgSend_length(v151, v153, v154);
              objc_msgSend_updateForTextReplacementInRange_delta_(updateCopy, v156, v152, 1, v155 - 1);
            }
          }
        }

        --v142;
      }

      while (v142 != -1);
    }
  }

  for (i = 0; i != 4; ++i)
  {
    v158 = &unk_276F98B30 + 16 * i;
    v159 = *v158;
    if (self->_attributesTable[*v158])
    {
      if ((objc_msgSend_allowsSmartFieldKind_(v19, v23, *(v158 + 4)) & 1) == 0)
      {
        v160 = objc_msgSend_length(self, v23, v24);
        if (v160)
        {
          v161 = 0;
          while (2)
          {
            TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v189, self, v161, v160 - v161, v159, 0);
            v188.location = 0;
            v188.length = 0;
            while (1)
            {
              v163 = TSWPAttributeEnumerator::nextAttributeIndex(&v189, &v188, v162);
              if (!v163)
              {
                TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v189);
                goto LABEL_67;
              }

              v164 = TSWPAttributeRecord::object(v163, v159);
              v167 = v164;
              if (v164)
              {
                v168 = objc_msgSend_smartFieldKind(v164, v165, v166);
                if ((objc_msgSend_allowsSmartFieldKind_(v19, v169, v168) & 1) == 0)
                {
                  break;
                }
              }
            }

            objc_msgSend_removeSmartField_fromRange_undoTransaction_(self, v170, v167, v188.location, v188.length, 0);
            location = v188.location;
            length = v188.length;
            v160 = objc_msgSend_length(self, v173, v174);

            v161 = length + location;
            TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v189);
            if (length + location < v160)
            {
              continue;
            }

            break;
          }
        }
      }
    }

LABEL_67:
    ;
  }

  if (!highlightsCopy)
  {
    goto LABEL_71;
  }

  if (!v19)
  {
    goto LABEL_76;
  }

  if ((objc_msgSend_highlightsAllowed(v19, v23, v24) & 1) == 0)
  {
LABEL_71:
    v175 = objc_msgSend_range(self, v23, v24);
    objc_msgSend_removeHighlightsInRange_dolcContext_undoTransaction_author_(self, v176, v175, v176, 0, 0, 0);
    if (!v19)
    {
      goto LABEL_76;
    }
  }

  if ((objc_msgSend_supportsDropCaps(v19, v23, v24) & 1) == 0)
  {
    v177 = objc_msgSend_attributeArrayForKind_withCreate_(self, v23, 22, 0);
    if (v177)
    {
      (*(*v177 + 64))(v177, 0, v177[6], 0);
      if (objc_msgSend_WPKindSupportsDropCaps(self, v178, v179))
      {
        v180 = objc_msgSend_attributeArrayForKind_withCreate_(self, v23, 22, 1);
        objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(self, v181, 0, 0, v180, 0, 0);
      }
    }
  }

LABEL_76:
  objc_msgSend_compress_(self, v23, 0);
}

- (id)typesetterTextSourceForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_textSourceForRange_(self, a2, range.location);
  if (objc_msgSend_hasTrackedChanges(self, v7, v8))
  {
    location = objc_msgSend_charRangeMappedFromStorage_(v6, v9, location, length);
    length = v10;
  }

  v11 = [TSWPTypesetterTextSource alloc];
  v13 = objc_msgSend_initWithSource_subRange_(v11, v12, v6, location, length);

  return v13;
}

- (id)textSourceForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  if (objc_msgSend_hasTrackedChanges(selfCopy, v6, v7))
  {
    v8 = [TSWPFilteredStorage alloc];
    v10 = objc_msgSend_initWithStorage_subRange_(v8, v9, selfCopy, location, length);

    selfCopy = v10;
  }

  return selfCopy;
}

- (id)filteredStorageForWritingToolsWithRange:(_NSRange)range expandRangeToParagraphBoundaries:(BOOL)boundaries
{
  length = range.length;
  location = range.location;
  if (boundaries)
  {
    v7 = objc_msgSend_p_parIndexRangeForTextSourceForCharacterRange_(self, a2, range.location, range.length);
    location = objc_msgSend_textRangeForParagraphIndexRange_(self, v8, v7, v8);
    length = a2;
  }

  if (objc_msgSend_hasTrackedChanges(self, a2, range.location))
  {
    v10 = objc_msgSend_deletedRangesInRange_(self, v9, location, length);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
  }

  else
  {
    v13 = objc_alloc_init(TSWPMutableRangeArray);
  }

  if (objc_msgSend_allowsElementKind_(self, v14, 0x40000))
  {
    v15 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276D1CD14;
    v21[3] = &unk_27A6F3750;
    v22 = v13;
    objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(self, v16, v15, location, length, v21);
  }

  v17 = [TSWPFilteredStorage alloc];
  v19 = objc_msgSend_initWithStorage_subRange_removeRanges_(v17, v18, self, location, length, v13);

  return v19;
}

- (id)textSourceForParagraphsContainingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  if (objc_msgSend_hasTrackedChanges(selfCopy, v6, v7))
  {
    v9 = objc_msgSend_p_parIndexRangeForTextSourceForCharacterRange_(selfCopy, v8, location, length);
    v11 = objc_msgSend_textRangeForParagraphIndexRange_(selfCopy, v10, v9, v10);
    v13 = objc_msgSend_textSourceForRange_(selfCopy, v12, v11, v12);

    selfCopy = v13;
  }

  return selfCopy;
}

- (TSWPDeletionRangeMap)rangeMap
{
  v3 = [TSWPDeletionRangeMap alloc];
  v6 = objc_msgSend_range(self, v4, v5);
  v8 = v7;
  v10 = objc_msgSend_rangeArray(TSWPRangeArray, v7, v9);
  v12 = objc_msgSend_initWithSubRange_removeRanges_(v3, v11, v6, v8, v10);

  return v12;
}

- (_NSRange)p_parIndexRangeForTextSourceForCharacterRange:(_NSRange)range
{
  v4 = objc_msgSend_paragraphIndexRangeForCharRange_(self, a2, range.location, range.length);
  v7 = &v5[v4];
  v8 = v5 - 1;
  while (1)
  {
    v9 = v4;
    if (!v4)
    {
      break;
    }

    v10 = objc_msgSend_textRangeForParagraphAtIndex_(self, v5, v4);
    hasDeletionInRange = objc_msgSend_hasDeletionInRange_(self, v11, v10 - 1, 1);
    v4 = v9 - 1;
    ++v8;
    if ((hasDeletionInRange & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v8 = v7;
LABEL_6:
  v14 = objc_msgSend_paragraphCount(self, v5, v6);
  while (1)
  {
    v15 = v8;
    if (&v8[v9] >= v14)
    {
      break;
    }

    v16 = objc_msgSend_textRangeForParagraphAtIndex_(self, v13, &v8[v9]);
    if (!v17)
    {
      v15 = (v8 + 1);
      break;
    }

    if (v16)
    {
      ++v8;
      if (objc_msgSend_hasDeletionInRange_(self, v17, v16 - 1, 1))
      {
        continue;
      }
    }

    break;
  }

  v18 = v9;
  v19 = v15;
  result.length = v19;
  result.location = v18;
  return result;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorAtCharIndex:(SEL)index styleProvider:(unint64_t)provider
{
  v13 = a5;
  v9 = objc_msgSend_length(self, v7, v8);
  if (v9 <= provider)
  {
    providerCopy = provider;
  }

  else
  {
    providerCopy = v9;
  }

  if (v9 >= provider)
  {
    objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_(self, v10, provider, providerCopy - provider, v13);
  }

  else
  {
    objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_(self, v10, v9, providerCopy - v9, v13);
  }

  return result;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorForCharRange:(SEL)range styleProvider:(_NSRange)provider requireHidden:(id)hidden
{
  v6 = a6;
  length = provider.length;
  location = provider.location;
  hiddenCopy = hidden;
  v12 = objc_msgSend_paragraphIndexAtCharIndex_(self, v11, location);
  if (location + length == objc_msgSend_length(self, v13, v14))
  {
    v17 = objc_msgSend_paragraphCount(self, v15, v16);
  }

  else if (length)
  {
    v17 = objc_msgSend_paragraphIndexAtCharIndex_(self, v15, location + length - 1) + 1;
  }

  else
  {
    v17 = v12 + 1;
  }

  TSWPParagraphEnumerator::TSWPParagraphEnumerator(retstr, self, hiddenCopy, v12, v17, v6);

  return result;
}

- (TSWPParagraphEnumerator)paragraphEnumeratorAtParIndex:(SEL)index styleProvider:(unint64_t)provider
{
  v12 = a5;
  v10 = objc_msgSend_paragraphCount(self, v8, v9);
  TSWPParagraphEnumerator::TSWPParagraphEnumerator(retstr, self, v12, provider, v10, 1);

  return result;
}

- (BOOL)setDOLCSuppressed:(BOOL)suppressed
{
  v3 = *(self + 303);
  *(self + 303) = v3 & 0xFE | suppressed;
  return v3 & 1;
}

- (_NSRange)range
{
  v3 = objc_msgSend_length(self->_string, a2, v2);
  v4 = 0;
  result.length = v3;
  result.location = v4;
  return result;
}

- (id)stringValue
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  if (WeakRetained)
  {
    v5 = *(self + 302) & 0xF;

    if (!v5)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPStorage stringValue]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 2407, 0, "performance warning: [TSWPStorage stringValue] should not be called on body storage.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    }
  }

  v13 = MEMORY[0x277CCACA8];
  string = self->_string;

  return objc_msgSend_stringWithString_(v13, v4, string);
}

- (id)stringWithAttachmentCharacterSubstitution
{
  v4 = sub_276E32640(self, a2, v2);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"", &stru_28860A0F0, @"TSText");

  v8 = objc_msgSend_p_stringWithAttachmentCharacterSubstitutedWithCharacter_(self, v7, v6);

  return v8;
}

- (id)p_stringWithAttachmentCharacterSubstitutedWithCharacter:(id)character
{
  characterCopy = character;
  if (objc_msgSend_length(characterCopy, v5, v6) != 1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage p_stringWithAttachmentCharacterSubstitutedWithCharacter:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2426, 0, "Attachment character substitution must be a single character");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v18 = objc_msgSend_attachmentCount(self, v7, v8);
  if (v18 && objc_msgSend_length(characterCopy, v16, v17) == 1)
  {
    v19 = MEMORY[0x277CCAB68];
    v20 = objc_msgSend_string(self, v16, v17);
    v22 = objc_msgSend_stringWithString_(v19, v21, v20);

    for (i = 0; i != v18; ++i)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      v25 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v23, i, &v29);
      v26 = v29;
      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_replaceCharactersInRange_withString_(v22, v23, v29, 1, characterCopy);
      }
    }

    v27 = objc_msgSend_copy(v22, v23, v26);
  }

  else
  {
    v27 = objc_msgSend_string(self, v16, v17);
  }

  return v27;
}

- (id)stringForStatisticsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_hasTrackedChanges(self, a2, range.location))
  {
    v7 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v6, length);
    sub_276E0A8BC(v29, self, location, length);
    v8 = location;
    while (1)
    {
      v9 = sub_276E0AA14(v29);

      if (!v9)
      {
        break;
      }

      v10 = sub_276E0AA14(v29);
      v11 = sub_276E0AA48(v29);
      v13 = v12;
      if (objc_msgSend_isDeletion(v10, v12, v14))
      {
        if (v11 > v8)
        {
          v16 = objc_msgSend_substringWithRange_(self->_string, v15, v8, v11 - v8);
          objc_msgSend_appendString_(v7, v17, v16);
        }

        v8 = &v13[v11];
      }

      sub_276E0A8F0(v29);
    }

    nullsub_7(v29);
    v19 = location + length - v8;
    if (location + length > v8)
    {
      v20 = objc_msgSend_substringWithRange_(self->_string, v18, v8, v19);
      objc_msgSend_appendString_(v7, v21, v20);
    }
  }

  else
  {
    v7 = objc_msgSend_substringWithRange_(self->_string, v6, location, length);
  }

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%C", v19, 4);
  objc_msgSend_rangeOfString_(v7, v23, v22);
  if (v24)
  {
    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%C", 5);
    v27 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v26, v22, v25);

    v7 = v27;
  }

  return v7;
}

- (unint64_t)wordCount
{
  v9.location = objc_msgSend_range(self, a2, v2);
  v9.length = v4;
  v5 = CFStringTokenizerCreate(0, self->_string, v9, 0, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = -1;
  do
  {
    ++v7;
  }

  while (CFStringTokenizerAdvanceToNextToken(v6));
  CFRelease(v6);
  return v7;
}

- (unint64_t)previousCharacterIndex:(unint64_t)index
{
  indexCopy = index;
  if (index)
  {
    if (objc_msgSend_length(self, a2, index) >= index)
    {
      return CFStringGetRangeOfComposedCharactersAtIndex(self->_string, indexCopy - 1).location;
    }

    else
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage previousCharacterIndex:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      v12 = objc_msgSend_length(self, v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v9, 2512, 0, "Character index is outside storage bounds %lu / %lu", indexCopy, v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }

  return indexCopy;
}

- (unint64_t)previousDecomposedCharacterIndex:(unint64_t)index
{
  indexCopy = index;
  if (index)
  {
    if (objc_msgSend_length(self, a2, index) >= index)
    {
      selfCopy = self;
      if (objc_msgSend_hasTrackedChanges(selfCopy, v17, v18))
      {
        objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(selfCopy, v19, indexCopy, 0);
        v21 = TSWPParagraphEnumerator::paragraphTextRange(&v37, v20);
        v23 = v22;
        v24 = [TSWPFilteredStorage alloc];
        v38.location = 0;
        v38.length = v21;
        v39.location = v21;
        v39.length = v23;
        v25 = NSUnionRange(v38, v39);
        v26 = objc_msgSend_initWithStorage_subRange_(v24, v25.length, selfCopy, v25.location, v25.length);

        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v37);
        selfCopy = v26;
      }

      v27 = objc_msgSend_charIndexMappedFromStorage_(selfCopy, v19, indexCopy);
      v37.var0 = 0;
      v37.var1 = &v37;
      v37.var2 = 0x2020000000;
      v37.var3 = indexCopy;
      v30 = objc_msgSend_string(selfCopy, v28, v29);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_276D1DC70;
      v34[3] = &unk_27A6F3778;
      v36 = &v37;
      v31 = selfCopy;
      v35 = v31;
      objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v30, v32, 0, v27, 262, v34);

      indexCopy = *(v37.var1 + 3);
      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage previousDecomposedCharacterIndex:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      v12 = objc_msgSend_length(self, v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v9, 2529, 0, "Character index is outside storage bounds %lu / %lu", indexCopy, v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }

  return indexCopy;
}

- (unint64_t)nextCharacterIndex:(unint64_t)index
{
  indexCopy = index;
  v6 = objc_msgSend_characterCount(self, a2, index);
  if (v6 < indexCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage nextCharacterIndex:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 2563, 0, "Character index is outside storage bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (v6 > indexCopy)
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(self->_string, indexCopy);
    return RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
  }

  return indexCopy;
}

- (BOOL)selectionContainsExclusivelyEmptyParagraphs:(id)paragraphs ignoreAttachmentCharacters:(BOOL)characters
{
  charactersCopy = characters;
  paragraphsCopy = paragraphs;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (!paragraphsCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage selectionContainsExclusivelyEmptyParagraphs:ignoreAttachmentCharacters:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2574, 0, "invalid nil value for '%{public}s'", "selection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_isValid(paragraphsCopy, v6, v7))
  {
    if (objc_msgSend_isInsertionPoint(paragraphsCopy, v16, v17))
    {
      Range = objc_msgSend_firstRange(paragraphsCopy, v18, v19);
      isEmptyParagraphRange_ignoreAttachmentCharacters_outRange = objc_msgSend_isEmptyParagraphRange_ignoreAttachmentCharacters_outRange_(self, v21, Range, v21, charactersCopy, 0);
      *(v28 + 24) = isEmptyParagraphRange_ignoreAttachmentCharacters_outRange;
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_276D1DF7C;
      v25[3] = &unk_27A6F37A0;
      v25[4] = self;
      v25[5] = &v27;
      v26 = charactersCopy;
      objc_msgSend_enumerateRanges_(paragraphsCopy, v18, v25);
    }
  }

  v23 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v23;
}

- (BOOL)isEmptyParagraphSelection:(id)selection ignoreAttachmentCharacters:(BOOL)characters outRange:(_NSRange *)range
{
  charactersCopy = characters;
  selectionCopy = selection;
  if (objc_msgSend_isInsertionPoint(selectionCopy, v9, v10))
  {
    Range = objc_msgSend_firstRange(selectionCopy, v11, v12);
    isEmptyParagraphRange_ignoreAttachmentCharacters_outRange = objc_msgSend_isEmptyParagraphRange_ignoreAttachmentCharacters_outRange_(self, v14, Range, v14, charactersCopy, range);
  }

  else
  {
    isEmptyParagraphRange_ignoreAttachmentCharacters_outRange = 0;
  }

  return isEmptyParagraphRange_ignoreAttachmentCharacters_outRange;
}

- (BOOL)isEmptyParagraphRange:(_NSRange)range ignoreAttachmentCharacters:(BOOL)characters outRange:(_NSRange *)outRange
{
  v5 = 0;
  if (!range.length && range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    charactersCopy = characters;
    objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(self, a2, range.location, 0);
    v12 = TSWPParagraphEnumerator::paragraphString(&v30, v9);
    if (charactersCopy)
    {
      v13 = TSWPParagraphEnumerator::paragraphTextRange(&v30, v10);
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_276D1E290;
      v25[3] = &unk_27A6F37C8;
      v25[4] = &v26;
      objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(self, v14, v13, v14, v25);
      if ((v27[3] & 1) == 0)
      {
        v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%C", 65532);
        v18 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v12, v17, v16, &stru_28860A0F0);

        v12 = v18;
      }

      _Block_object_dispose(&v26, 8);
    }

    if (!objc_msgSend_length(v12, v10, v11) || objc_msgSend_length(v12, v19, v20) == 1 && (v22 = objc_msgSend_characterAtIndex_(v12, v21, 0), IsParagraphBreakingCharacter(v22)))
    {
      if (outRange)
      {
        outRange->location = TSWPParagraphEnumerator::paragraphTextRange(&v30, v19);
        outRange->length = v23;
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);
  }

  return v5;
}

- (BOOL)isAllWhitespaceInSelection:(id)selection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276D1E414;
  v5[3] = &unk_27A6F37F0;
  v5[4] = self;
  v5[5] = &v6;
  objc_msgSend_enumerateRanges_(selection, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index
{
  v3 = objc_msgSend_whiteSpaceRangeAtCharIndex_includingBreaks_(self, a2, index, 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks
{
  indexCopy = index;
  v7 = objc_msgSend_range(self, a2, index);
  v9 = v8;
  if (objc_msgSend_length(self, v8, v10) > indexCopy && (v12 = objc_msgSend_characterAtIndex_(self, v11, indexCopy), IsWhitespaceCharacter(v12, v13)))
  {
    v15 = indexCopy;
    if (v7 < indexCopy)
    {
      v15 = indexCopy;
      while (1)
      {
        v16 = v15 - 1;
        v17 = objc_msgSend_characterAtIndex_(self, v14, v15 - 1);
        if (!IsWhitespaceCharacter(v17, v18))
        {
          break;
        }

        if (!breaks)
        {
          v19 = IsParagraphBreakingCharacter(v17);
          if (v17 == 8232 || (v19 & 1) != 0)
          {
            break;
          }
        }

        --v15;
        if (v16 <= v7)
        {
          v15 = v7;
          break;
        }
      }
    }

    v20 = &v9[v7];
    if (v20 > indexCopy)
    {
      while (1)
      {
        v21 = objc_msgSend_characterAtIndex_(self, v14, indexCopy);
        if (!IsWhitespaceCharacter(v21, v22))
        {
          break;
        }

        if (!breaks)
        {
          v23 = IsParagraphBreakingCharacter(v21);
          if (v21 == 8232 || (v23 & 1) != 0)
          {
            break;
          }
        }

        if (v20 == ++indexCopy)
        {
          indexCopy = v20;
          break;
        }
      }
    }

    v24 = indexCopy - v15;
  }

  else
  {
    v24 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = v15;
  result.length = v24;
  result.location = v25;
  return result;
}

- (_NSRange)rangeForSelectionWithInsertionLocation:(unint64_t)location
{
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  if (objc_msgSend_length(self, a2, location) < location)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage rangeForSelectionWithInsertionLocation:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2683, 0, "Invalid insertion location");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_length(self, v7, v8) >= location)
  {
    if (location)
    {
      WordWhitespace = objc_msgSend_p_rangeForSelectionAtCharIndex_caretIndex_handleNextWordWhitespace_(self, v16, location - 1, location, 1);
    }

    else
    {
      WordWhitespace = objc_msgSend_p_rangeForSelectionAtCharIndex_caretIndex_handleNextWordWhitespace_(self, v16, 0, 0, 1);
    }

    v5 = WordWhitespace;
    v6 = v18;
  }

  v19 = v5;
  v20 = v6;
  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace
{
  v3 = MEMORY[0x2821F9670](self, sel_rangeByExtendingRangeToWhitespace_skipVisibleDeleted_, whitespace.location);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)rangeByExtendingRangeToWhitespace:(_NSRange)whitespace skipVisibleDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  length = whitespace.length;
  location = whitespace.location;
  objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_requireHidden_(self, a2, whitespace.location, whitespace.length, 0, !deleted);
  if (objc_msgSend_hasTrackedChanges(self, v8, v9))
  {
    v11 = TSWPParagraphEnumerator::paragraphTextRange(&v30, v10);
    v13 = v12;
    v15 = [TSWPFilteredStorage alloc];
    if (deletedCopy)
    {
      objc_msgSend_deletedRangesInRange_(self, v14, v11, v13);
    }

    else
    {
      objc_msgSend_hiddenRangesInRange_(self, v14, v11, v13);
    }
    v20 = ;
    selfCopy = objc_msgSend_initWithStorage_subRange_removeRanges_(v15, v21, self, v11, v13, v20);

    v18 = objc_msgSend_charRangeMappedFromStorage_(selfCopy, v22, location, length);
  }

  else
  {
    selfCopy = self;
    v18 = objc_msgSend_charRangeMappedFromStorage_(selfCopy, v17, location, length);
  }

  v23 = sub_276D37B98(v18, v19, selfCopy);
  v25 = objc_msgSend_charRangeMappedToStorage_(selfCopy, v24, v23, v24);
  v27 = v26;
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);

  v28 = v25;
  v29 = v27;
  result.length = v29;
  result.location = v28;
  return result;
}

- (_NSRange)rangeByExtendingRangeToLineBreak:(_NSRange)break
{
  location = break.location;
  v5 = break.location + break.length;
  v7 = objc_msgSend_range(self, a2, break.location);
  v8 = v6;
  v24 = *MEMORY[0x277D81490];
  if (location > v7)
  {
    do
    {
      v9 = location - 1;
      v10 = objc_msgSend_characterAtIndex_(self->_string, v6, location - 1, v24);
      v11 = v10;
      v12 = IsParagraphBreakingCharacter(v10);
      if (v11 == 8232 || v12 != 0)
      {
        v14 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, v6, location - 1, 16, &v24);

        if (!v14)
        {
          break;
        }

        v9 = v24;
      }

      location = v9;
    }

    while (v9 > v7);
  }

  v15 = &v8[v7];
  while (v5 < v15)
  {
    v16 = objc_msgSend_characterAtIndex_(self->_string, v6, v5, v24);
    v17 = v16;
    v18 = IsParagraphBreakingCharacter(v16);
    if (v17 != 8232 && v18 == 0)
    {
      ++v5;
    }

    else
    {
      v20 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, v6, v5, 16, &v24);

      if (!v20)
      {
        break;
      }

      v5 = *(&v24 + 1) + v24;
    }
  }

  if (location <= v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = location;
  }

  if (location >= v5)
  {
    v22 = v5;
  }

  else
  {
    v22 = location;
  }

  v23 = v21 - v22;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)scanLeftForWordAtCharIndex:(unint64_t)index
{
  v5 = objc_msgSend_range(self, a2, index);
  indexCopy3 = index;
  if (&v6[v5] > index)
  {
    v8 = objc_msgSend_characterAtIndex_(self, v6, index);
    indexCopy3 = index;
    if (IsWhitespaceCharacter(v8, v9))
    {
      v10 = objc_msgSend_whiteSpaceRangeAtCharIndex_(self, v6, index);
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexCopy3 = index;
      }

      else
      {
        indexCopy3 = v10;
      }
    }
  }

  v11 = objc_msgSend_wordAtCharIndex_includePreviousWord_(self, v6, index, 1);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = indexCopy3;
  }

  v12 = index - v11;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  v4 = objc_msgSend_wordAtCharIndex_includePreviousWord_includeHyphenation_(self, a2, index, word, 0);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  wordCopy = word;
  wordAtCharIndexChangeCount = self->_wordAtCharIndexChangeCount;
  v10 = atomic_load(&self->_changeCount.__a_.__a_value);
  if (wordAtCharIndexChangeCount != v10 || self->_charIndexForWord != index || ((*(self + 302) & 0x40) == 0) == word || *(self + 302) >= 0 == hyphenation)
  {
    v13 = objc_msgSend_textRangeForParagraphAtCharIndex_(self, a2, index);
    v15 = v14;
    v16 = objc_msgSend_languageForTextRange_useStringTokenizer_useDocumentLanguage_(self, v14, v13, v14, 1, 1);
    v17 = objc_alloc(MEMORY[0x277CBEAF8]);
    v19 = objc_msgSend_initWithLocaleIdentifier_(v17, v18, v16);
    v21 = objc_msgSend_tswp_rangeOfWordAtCharacterIndex_range_includePreviousWord_includeHyphenation_forLocale_(self->_string, v20, index, v13, v15, wordCopy, hyphenationCopy, v19);
    location = v21;
    length = v22;
    v23 = atomic_load(&self->_changeCount.__a_.__a_value);
    self->_wordAtCharIndexChangeCount = v23;
    self->_charIndexForWord = index;
    if (wordCopy)
    {
      v24 = 64;
    }

    else
    {
      v24 = 0;
    }

    *(self + 302) = *(self + 302) & 0xBF | v24;
    if (hyphenationCopy)
    {
      v25 = 0x80;
    }

    else
    {
      v25 = 0;
    }

    *(self + 302) = v25 & 0x80 | *(self + 302) & 0x7F;
    self->_wordAtCharIndex.location = v21;
    self->_wordAtCharIndex.length = v22;
  }

  else
  {
    location = self->_wordAtCharIndex.location;
    length = self->_wordAtCharIndex.length;
  }

  v26 = location;
  v27 = length;
  result.length = v27;
  result.location = v26;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  indexCopy = index;
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  v9 = objc_msgSend_range(self, a2, index);
  v11 = v10;
  string = self->_string;
  if (CFStringGetLength(string) > indexCopy && ((CharacterAtIndex = CFStringGetCharacterAtIndex(string, indexCopy), CharacterAtIndex) ? (v15 = v9 + v11 > indexCopy) : (v15 = 0), v15))
  {
    v16 = IsWhitespaceCharacter(CharacterAtIndex, v14) ^ 1;
    if (!wordCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    if (!wordCopy)
    {
      goto LABEL_12;
    }
  }

  if (v9 < indexCopy)
  {
    v17 = CFStringGetCharacterAtIndex(string, indexCopy - 1);
    v19 = IsWhitespaceCharacter(v17, v18);
    LOBYTE(v16) = v19 ^ 1 | v16;
    if (!v19)
    {
      --indexCopy;
    }
  }

LABEL_12:
  if (v16)
  {
    if (v11)
    {
      v29.location = v9;
      v29.length = v11;
      v20 = CFStringTokenizerCreate(0, string, v29, 4uLL, 0);
      if (v20)
      {
        v21 = v20;
        if (CFStringTokenizerGoToTokenAtIndex(v20, indexCopy))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v21);
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

        CFRelease(v21);
      }
    }
  }

  v26 = v7;
  v27 = v8;
  result.length = v27;
  result.location = v26;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex
{
  WordWhitespace = objc_msgSend_p_rangeForSelectionAtCharIndex_caretIndex_handleNextWordWhitespace_(self, a2, index, caretIndex, 1);
  result.length = v5;
  result.location = WordWhitespace;
  return result;
}

- (_NSRange)p_rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex handleNextWordWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  caretIndexCopy = index;
  v8 = caretIndex - 1;
  if (index != caretIndex && v8 != index)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2859, 0, "Precondition: caretIndex is either equal to the given charIndex or one past");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_range(self, a2, index);
  v18 = v16;
  v19 = v17;
  if (v16 > caretIndexCopy)
  {
    caretIndexCopy = v16;
  }

  if ((v17 - 1) < caretIndexCopy - v16)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPStorage p_rangeForSelectionAtCharIndex:caretIndex:handleNextWordWhitespace:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 2868, 0, "Character index should be inside allowable selection range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = &v19[v18];
  if (caretIndexCopy >= &v19[v18])
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_characterAtIndex_(self, v17, caretIndexCopy);
  }

  if (sub_276D36AEC(v28))
  {
    v30 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(self, v29, caretIndexCopy);
    v33 = v30;
    if (v30)
    {
      if (objc_msgSend_isDrawable(v30, v31, v32) && (objc_msgSend_isAnchored(v33, v34, v35) & 1) != 0)
      {
        if (v27 <= caretIndex)
        {
          v28 = 0;
        }

        else
        {
          v28 = objc_msgSend_characterAtIndex_(self, v36, caretIndex);
        }

        v37 = 0;
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        caretIndexCopy = caretIndex;
      }

      else
      {
        v37 = 1;
        v38 = caretIndexCopy;
      }
    }

    else
    {
      v37 = 0;
      v38 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v37 = 0;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!sub_276D36AEC(v28))
  {
    if (!whitespaceCopy || !IsWhitespaceCharacter(v28, v39))
    {
      goto LABEL_39;
    }

    if (caretIndexCopy != caretIndex || !caretIndexCopy || caretIndexCopy <= v18)
    {
      if (v27 <= caretIndex)
      {
        caretIndexCopy2 = caretIndexCopy;
      }

      else
      {
        caretIndexCopy2 = caretIndex;
      }

      if (caretIndexCopy + 1 != caretIndex)
      {
        v8 = caretIndexCopy;
        v41 = objc_msgSend_characterAtIndex_(self, v39, caretIndexCopy);
        goto LABEL_36;
      }

      v8 = caretIndexCopy2;
    }

    v41 = objc_msgSend_characterAtIndex_(self, v39, v8);
LABEL_36:
    v43 = v41;
    if ((IsWhitespaceCharacter(v41, v42) & 1) == 0 && !sub_276D36AEC(v43))
    {
LABEL_40:
      if (v38 == 0x7FFFFFFFFFFFFFFFLL || !v37)
      {
        v44 = objc_msgSend_wordAtCharIndex_includePreviousWord_(self, v39, v8, 0);
        v37 = v45;
        if (v44 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v8 >= v27)
          {
            v38 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = objc_msgSend_string(self, v45, v46);
            v38 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v47, v48, v8);
            v37 = v49;
          }
        }

        else
        {
          v38 = v44;
        }
      }

      goto LABEL_47;
    }

    v38 = objc_msgSend_whiteSpaceRangeAtCharIndex_includingBreaks_(self, v39, caretIndexCopy, 0);
    v37 = v39;
LABEL_39:
    v8 = caretIndexCopy;
    goto LABEL_40;
  }

LABEL_47:
  v50 = v38;
  v51 = v37;
  result.length = v51;
  result.location = v50;
  return result;
}

- (_NSRange)nextWordFromIndex:(unint64_t)index forward:(BOOL)forward
{
  forwardCopy = forward;
  v8 = *MEMORY[0x277D81490];
  length = *(MEMORY[0x277D81490] + 8);
  v9 = objc_msgSend_wordAtCharIndex_includePreviousWord_(self, a2, index);
  v11 = v10;
  v13 = objc_msgSend_range(self, v10, v12);
  v15 = v14;
  v16 = objc_msgSend_textRangeForParagraphAtCharIndex_(self, v14, index);
  v17 = v16;
  v19 = v18;
  string = self->_string;
  if (forwardCopy)
  {
    v13 += v15;
    v34.length = v13 - v16;
    v34.location = v16;
    v21 = CFStringTokenizerCreate(0, string, v34, 0, 0);
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      indexCopy = index;
      do
      {
        v25 = indexCopy - 1;
        ++v23;
        if (CFStringTokenizerGoToTokenAtIndex(v22, indexCopy))
        {
          break;
        }

        if (indexCopy <= v17)
        {
          break;
        }

        --indexCopy;
      }

      while (v13 == index);
      do
      {
        ++v25;
        --v23;
      }

      while (!CFStringTokenizerGoToTokenAtIndex(v22, v25) && v25 < v13);
      location = CFStringTokenizerGetCurrentTokenRange(v22).location;
      if (&v11[v9] == location || v23 && location == v25 || CFStringTokenizerAdvanceToNextToken(v22))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v22);
        if (CurrentTokenRange.location < 0)
        {
          length = 0;
        }

        else
        {
          v13 = CurrentTokenRange.location;
          length = CurrentTokenRange.length;
        }
      }

      else
      {
LABEL_28:
        length = 0;
      }

LABEL_30:
      CFRelease(v22);
      v8 = v13;
    }
  }

  else
  {
    v35.length = v19 - v13 + v16;
    v35.location = v13;
    v28 = CFStringTokenizerCreate(0, string, v35, 0, 0);
    if (v28)
    {
      v22 = v28;
      indexCopy2 = index;
      while (1)
      {
        while (!CFStringTokenizerGoToTokenAtIndex(v22, indexCopy2))
        {
          if (indexCopy2 <= v13)
          {
            goto LABEL_28;
          }

          --indexCopy2;
        }

        v30 = CFStringTokenizerGetCurrentTokenRange(v22);
        length = v30.length;
        if (v30.location + v30.length < index || v30.location + v30.length == v9)
        {
          break;
        }

        if (v30.location <= v13)
        {
          goto LABEL_28;
        }

        if (v30.location - 1 >= indexCopy2 - 1)
        {
          --indexCopy2;
        }

        else
        {
          indexCopy2 = v30.location - 1;
        }
      }

      v13 = v30.location;
      goto LABEL_30;
    }
  }

  v31 = v8;
  v32 = length;
  result.length = v32;
  result.location = v31;
  return result;
}

- (_NSRange)rangeByExpandingToIncludePartialWords:(_NSRange)words
{
  length = words.length;
  location = words.location;
  selfCopy = self;
  v9 = selfCopy;
  if (objc_msgSend_hasTrackedChanges(selfCopy, v6, v7))
  {
    objc_msgSend_paragraphEnumeratorForCharRange_styleProvider_requireHidden_(selfCopy, v8, location, length, 0, 0);
    v10 = [TSWPFilteredStorage alloc];
    v12 = TSWPParagraphEnumerator::paragraphTextRange(&v47, v11);
    v9 = objc_msgSend_initWithStorage_subRange_(v10, v13, selfCopy, v12, v13);

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v47);
  }

  v14 = objc_msgSend_charRangeMappedFromStorage_(v9, v8, location, length);
  v17 = v14;
  v18 = v15;
  if (v14)
  {
    v19 = objc_msgSend_characterAtIndex_(v9, v15, v14 - 1);
    if (IsWhitespaceCharacter(v19, v20))
    {
      v21 = v17;
    }

    else
    {
      v21 = v17;
      while (1)
      {
        v37 = objc_msgSend_wordAtCharIndex_includePreviousWord_(v9, v15, v21 - 1, 0);
        v38 = v37;
        if (!v37)
        {
          break;
        }

        if (v37 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v37;
          if (objc_msgSend_characterAtIndex_(v9, v15, v37 - 1) == 45)
          {
            v21 = v38 - 1;
            if (v38 != 1)
            {
              continue;
            }
          }
        }

        goto LABEL_7;
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_7:
  v23 = &v18[v17];
  v24 = location + length;
  if (location + length > objc_msgSend_length(selfCopy, v15, v16))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPStorage rangeByExpandingToIncludePartialWords:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    v31 = objc_msgSend_length(selfCopy, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v26, v28, 3025, 0, "Illegal range past end of storage: %lu vs %lu", v24, v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    goto LABEL_21;
  }

  if (v23 <= v21)
  {
    if (v23 != v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v35 = objc_msgSend_characterAtIndex_(v9, v22, v23 - 1);
    if (IsWhitespaceCharacter(v35, v36))
    {
      goto LABEL_21;
    }
  }

  v39 = objc_msgSend_wordAtCharIndex_includePreviousWord_(v9, v22, v23, 0);
  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = &v22[v39];
  }

LABEL_21:
  if (v21 <= v23)
  {
    v40 = v23;
  }

  else
  {
    v40 = v21;
  }

  if (v21 >= v23)
  {
    v41 = objc_msgSend_charRangeMappedToStorage_(v9, v22, v23, v40 - v23);
  }

  else
  {
    v41 = objc_msgSend_charRangeMappedToStorage_(v9, v22, v21, v40 - v21);
  }

  v43 = v41;
  v44 = v42;

  v45 = v43;
  v46 = v44;
  result.length = v46;
  result.location = v45;
  return result;
}

- (_NSRange)rangeByTrimmingRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (length)
  {
    v9 = length;
    v10 = location;
    while (1)
    {
      v11 = objc_msgSend_characterAtIndex_(self, v7, v10);
      if (!blockCopy[2](blockCopy, v11))
      {
        break;
      }

      ++v10;
      if (!--v9)
      {
        goto LABEL_10;
      }
    }

    v12 = location + length - 1;
    do
    {
      v13 = objc_msgSend_characterAtIndex_(self, v7, v12);
      if (!blockCopy[2](blockCopy, v13))
      {
        break;
      }

      --v12;
      --v9;
    }

    while (v9);
LABEL_10:
    location = v10;
  }

  else
  {
    v9 = 0;
  }

  v14 = location;
  v15 = v9;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  indexCopy = index;
  if (range)
  {
    *range = xmmword_276F98AE0;
  }

  if (index)
  {
    v7 = objc_msgSend_attributeArrayForKind_(self, a2, kind);
    if (v7 && (v8 = v7, v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, indexCopy - 1), v9 < *(v8 + 6)))
    {
      v10 = v9;
      indexCopy = TSWPAttributeArray::objectForAttributeIndex(v8, v9);
      if (range)
      {
        range->location = TSWPAttributeArray::rangeForAttributeIndex(v8, v10);
        range->length = v11;
      }
    }

    else
    {
      indexCopy = 0;
    }
  }

  return indexCopy;
}

- (id)objectAtLocationAtExactCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind
{
  if (objc_msgSend_length(self, a2, index) <= index)
  {
    goto LABEL_5;
  }

  v8 = objc_msgSend_attributeArrayForKind_(self, v7, kind);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v8, index);
  if (v10 >= *(v9 + 6))
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v8 = TSWPAttributeArray::objectForAttributeIndex(v9, v10);
  }

LABEL_6:

  return v8;
}

- (BOOL)hasObject:(id)object attributeArrayKind:(unint64_t)kind range:(_NSRange)range findUsingExactRangeLocation:(BOOL)location
{
  locationCopy = location;
  length = range.length;
  location = range.location;
  objectCopy = object;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage hasObject:attributeArrayKind:range:findUsingExactRangeLocation:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 3105, 0, "Bad input range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v20 = objc_msgSend_attributeArrayForKind_(self, v11, kind);
  v21 = v20;
  if (v20)
  {
    if (location == 0x7FFFFFFFFFFFFFFFLL || (!locationCopy ? (v22 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v20, location)) : (v22 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v20, location)), v24 = v22, v22 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v23 = 0;
      goto LABEL_26;
    }

    v25 = TSWPAttributeArray::objectForAttributeIndex(v21, v22);
    if (!TSWPAttributeArray::objectIsEquivalentToObject(kind, v25, objectCopy))
    {
      goto LABEL_24;
    }

    v26 = TSWPAttributeArray::rangeForAttributeIndex(v21, v24);
    v28 = v26;
    v29 = v27;
    if (locationCopy && (v26 > location || &v27[v26] < location + length))
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPStorage hasObject:attributeArrayKind:range:findUsingExactRangeLocation:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 3118, 0, "If findUsingExactRangeLocation, the input range cannot exceed the paragraph length of the paragraph located at range.location.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    }

    if (TSWPAttributeArray::supportsSparseNonCollapsingEntries(kind))
    {
      v23 = v28 == location && v29 == length;
      goto LABEL_25;
    }

    if (v28 <= location)
    {
      v23 = &v29[v28] >= location + length;
    }

    else
    {
LABEL_24:
      v23 = 0;
    }

LABEL_25:

    goto LABEL_26;
  }

  v23 = objectCopy == 0;
LABEL_26:

  return v23;
}

- (BOOL)hasData:(TSWPParagraphData)data attributeArrayKind:(unint64_t)kind range:(_NSRange)range
{
  listStart = data.var0.var0.listStart;
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage hasData:attributeArrayKind:range:]", kind, 0x7FFFFFFFFFFFFFFFLL, range.length);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 3135, 0, "Bad input range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    if (!objc_msgSend_attributeArrayForKind_(self, v14, kind))
    {
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v20) = 0;
    return v20;
  }

  length = range.length;
  location = range.location;
  v17 = objc_msgSend_attributeArrayForKind_(self, a2, kind);
  if (!v17)
  {
LABEL_7:
    v25 = 0;
    LOBYTE(v20) = TSWPAttributeArray::paragraphDataIsSame(kind, &listStart, &v25);
    return v20;
  }

  v18 = v17;
  v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v17, location);
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v21 = v19;
  v24 = *TSWPAttributeRecord::paragraphData(&v18->var1[v19], *(v18 + 28));
  LODWORD(v20) = TSWPAttributeArray::paragraphDataIsSame(kind, &v24, &listStart);
  if (v20)
  {
    v20 = TSWPAttributeArray::rangeForAttributeIndex(v18, v21);
    LOBYTE(v20) = v20 <= location && v20 + v22 >= location + length;
  }

  return v20;
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]", range.location, range.length, locale, char);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 3167, 0, "not reached");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  return -1;
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

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)relocateNonSelectedAnchorsInSelection:(id)selection undoTransaction:(void *)transaction
{
  selectionCopy = selection;
  v11 = selectionCopy;
  if (objc_msgSend_isRange(selectionCopy, v7, v8))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v12 = objc_msgSend_ranges(selectionCopy, v9, v10);
    v15 = objc_msgSend_mutableCopy(v12, v13, v14);

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276D1FE3C;
    v20[3] = &unk_27A6F3818;
    v20[4] = self;
    v11 = selectionCopy;
    v21 = v11;
    v22 = v15;
    v23 = &v25;
    transactionCopy = transaction;
    objc_msgSend_enumerateRanges_(v11, v16, v20);
    if (*(v26 + 24) == 1)
    {
      v18 = objc_msgSend_copyWithNewLogicalRanges_(v11, v17, v15);

      v11 = v18;
    }

    _Block_object_dispose(&v25, 8);
  }

  return v11;
}

- (_NSRange)p_relocateNonSelectedAnchorsInRange:(_NSRange)range selectedInfos:(id)infos undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  infosCopy = infos;
  if (length >= 2)
  {
    v9 = objc_msgSend_attachmentIndexRangeForTextRange_(self, v8, location, length);
    v11 = v10;
    if (v9 < v9 + v10)
    {
      do
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v13 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v12, v9, &v37);
        v14 = TSUDynamicCast();

        if (objc_msgSend_isAnchored(v14, v15, v16))
        {
          if ((objc_msgSend_isHTMLWrap(v14, v17, v18) & 1) == 0)
          {
            v21 = objc_msgSend_drawable(v14, v19, v20);
            v23 = objc_msgSend_containsObject_(infosCopy, v22, v21);

            if ((v23 & 1) == 0)
            {
              transactionCopy2 = transaction;
              if (transaction)
              {
                v28 = sub_276E3EAC8(transaction);
                if (v28)
                {
                  v29 = objc_msgSend_drawable(v14, v26, v27);
                  v31 = objc_msgSend_indexForObject_(v28, v30, v29);
                }

                else
                {
                  v31 = 0xFFFFFFFFLL;
                }

                transactionCopy2 = transaction;
              }

              else
              {
                v31 = 0xFFFFFFFFLL;
              }

              objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(self, v24, v37, 1, 0, transactionCopy2);
              objc_msgSend_insertAttachmentOrFootnote_range_placementIndex_dolcContext_undoTransaction_changeSession_(self, v32, v14, location++, 0, v31, 0, transactionCopy2, 0);
              --length;
            }
          }
        }

        ++v9;
        --v11;
      }

      while (v11);
    }
  }

  v33 = location;
  v34 = length;
  result.length = v34;
  result.location = v33;
  return result;
}

- (id)extendSelectionForTopicChildren:(id)children
{
  childrenCopy = children;
  v9 = childrenCopy;
  if (objc_msgSend_type(childrenCopy, v5, v6) == 2)
  {
    v10 = objc_msgSend_superRange(childrenCopy, v7, v8);
    v12 = objc_msgSend_paragraphIndexAtCharIndex_(self, v11, v10);
    v15 = objc_msgSend_paragraphCount(self, v13, v14);
    TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v32, self, 0, v12, v15, 1);
    v17 = TSWPParagraphEnumerator::paragraphLevel(&v32, v16);
    v18 = 0;
    while (1)
    {
      v19 = v18;
      if (TSWPParagraphEnumerator::isLastParagraph(&v32))
      {
        break;
      }

      TSWPParagraphEnumerator::operator++(&v32, v20);
      v22 = TSWPParagraphEnumerator::paragraphLevel(&v32, v21);
      v18 = 1;
      if (v22 <= v17)
      {
        TSWPParagraphEnumerator::operator--(&v32, v23);
        break;
      }
    }

    v9 = childrenCopy;
    if (v19)
    {
      v24 = TSWPParagraphEnumerator::paragraphTextRange(&v32, v20);
      v26 = v25;
      v27 = objc_opt_class();
      v29 = v24 + v26;
      if (v10 >= v24 + v26)
      {
        v30 = v24 + v26;
      }

      else
      {
        v30 = v10;
      }

      if (v10 > v24 + v26)
      {
        v29 = v10;
      }

      v9 = objc_msgSend_selectionWithRange_type_leadingEdge_storage_(v27, v28, v30, v29 - v30, 2, 1, 0);
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v32);
  }

  return v9;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string undoTransaction:(void *)transaction
{
  v5 = objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(self, a2, range.location, range.length, string, 1, transaction);
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)appendString:(id)string undoTransaction:(void *)transaction
{
  stringCopy = string;
  v9 = objc_msgSend_length(self, v7, v8);
  v11 = objc_msgSend_replaceCharactersInRange_withString_notifyObservers_undoTransaction_(self, v10, v9, 0, stringCopy, 1, transaction);
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string notifyObservers:(BOOL)observers undoTransaction:(void *)transaction
{
  v6 = MEMORY[0x2821F9670](self, sel_replaceCharactersInRange_withString_notifyObservers_changeSession_undoTransaction_, range.location);
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withString:(id)string notifyObservers:(BOOL)observers changeSession:(id)session undoTransaction:(void *)transaction
{
  observersCopy = observers;
  length = range.length;
  location = range.location;
  stringCopy = string;
  sessionCopy = session;
  v15 = [TSWPSelection alloc];
  v17 = objc_msgSend_initWithRange_(v15, v16, location, length);
  v19 = objc_msgSend_p_replaceCharactersInLogicalSelection_withString_withFlags_replaceTextData_changeSession_undoTransaction_outInsertedRange_(self, v18, v17, stringCopy, observersCopy, 0, sessionCopy, transaction, 0);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)replaceCharactersInSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id)data changeSession:(id)session undoTransaction:(void *)transaction outInsertedRange:(_NSRange *)range
{
  v19 = 0;
  v9 = objc_msgSend_replaceCharactersInSelection_withString_withFlags_replaceTextData_changeSession_undoTransaction_outInsertedRanges_(self, a2, selection, string, *&flags, data, session, transaction, &v19);
  v10 = v19;
  v13 = v10;
  if (range)
  {
    range->location = objc_msgSend_firstRange(v10, v11, v12);
    range->length = v11;
  }

  v14 = objc_msgSend_superRange(v9, v11, v12);
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

- (id)replaceCharactersInSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id)data changeSession:(id)session undoTransaction:(void *)transaction outInsertedRanges:(id *)ranges
{
  selectionCopy = selection;
  stringCopy = string;
  dataCopy = data;
  sessionCopy = session;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_276D208C8;
  v62[4] = sub_276D208D8;
  v29 = stringCopy;
  v63 = v29;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_276D208C8;
  v60[4] = sub_276D208D8;
  v28 = dataCopy;
  v61 = v28;
  v51 = 0;
  v52 = &v51;
  v53 = 0x4812000000;
  v54 = sub_276D208E0;
  v55 = sub_276D20904;
  v56 = &unk_276FDE562;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4812000000;
  v45 = sub_276D208E0;
  v46 = sub_276D20904;
  v47 = &unk_276FDE562;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_276D2091C;
  v30[3] = &unk_27A6F3840;
  v34 = v41;
  v35 = v62;
  v19 = selectionCopy;
  v31 = v19;
  selfCopy = self;
  flagsCopy = flags;
  v36 = v60;
  v20 = sessionCopy;
  v33 = v20;
  v37 = &v51;
  v38 = &v42;
  transactionCopy = transaction;
  objc_msgSend_enumerateRanges_(v19, v21, v30);
  v22 = [TSWPRangeArray alloc];
  v24 = objc_msgSend_initWithRangeVector_(v22, v23, (v43 + 6));
  if (ranges)
  {
    v25 = [TSWPRangeArray alloc];
    *ranges = objc_msgSend_initWithRangeVector_(v25, v26, (v52 + 6));
  }

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v42, 8);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v51, 8);
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);

  return v24;
}

- (_NSRange)p_replaceCharactersInLogicalSelection:(id)selection withString:(id)string withFlags:(unsigned int)flags replaceTextData:(id)data changeSession:(id)session undoTransaction:(void *)transaction outInsertedRange:(_NSRange *)range
{
  v186 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  stringCopy = string;
  dataCopy = data;
  sessionCopy = session;
  v16 = objc_msgSend_ranges(selectionCopy, v14, v15);
  v19 = objc_msgSend_rangeCount(v16, v17, v18);

  if (v19 != 1)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 3442, 0, "Unsupported discontiguous selection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  location = objc_msgSend_superRange(selectionCopy, v20, v21);
  length = v30;
  objc_msgSend_superRange(selectionCopy, v30, v32);
  if (v33 || objc_msgSend_length(stringCopy, 0, v34))
  {
    v35 = objc_msgSend_superRange(selectionCopy, v33, v34);
    if (v35 > objc_msgSend_length(self, v36, v37) || (v40 = objc_msgSend_superRange(selectionCopy, v38, v39), &v43[v40] > objc_msgSend_length(self, v43, v41)))
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]");
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      v187.location = objc_msgSend_superRange(selectionCopy, v48, v49);
      v50 = NSStringFromRange(v187);
      v53 = objc_msgSend_length(self, v51, v52);
      v56 = objc_msgSend_length(stringCopy, v54, v55);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v57, v45, v47, 3449, 0, "Bad selection superRange: %@, storage length=%lu, insertion length=%lu", v50, v53, v56);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
    }

    v60 = objc_msgSend_superRange(selectionCopy, v38, v42);
    if (v60 != objc_msgSend_length(self, v61, v62))
    {
      v65 = objc_msgSend_superRange(selectionCopy, v63, v64);
      if (objc_msgSend_characterAtIndex_(self, v66, v65) >> 10 == 55)
      {
        v67 = MEMORY[0x277D81150];
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]");
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 3450, 0, "Inserting text within surrogate pair");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
      }
    }

    v171 = objc_msgSend_relocateNonSelectedAnchorsInSelection_undoTransaction_(self, v63, selectionCopy, transaction);

    v76 = objc_msgSend_ranges(v171, v74, v75);
    v79 = objc_msgSend_rangeCount(v76, v77, v78);

    if (v79 != 1)
    {
      v82 = MEMORY[0x277D81150];
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSWPStorage p_replaceCharactersInLogicalSelection:withString:withFlags:replaceTextData:changeSession:undoTransaction:outInsertedRange:]");
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v86, v83, v85, 3454, 0, "Unexpected discontiguous selection returned from relocateNonSelectedAnchorsInSelection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88);
    }

    v89 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v80, v81);
    sub_276F32CA8(v181, 1, self, transaction, v89);
    v181[0] = &unk_288609A08;

    if (v182)
    {
      v90 = v182;
    }

    else
    {
      v90 = v183;
    }

    sub_276E3EBC0(v90);
    if (v182)
    {
      v93 = (v182 + 312);
    }

    else
    {
      v93 = v184;
    }

    ++*v93;
    Range = objc_msgSend_firstRange(v171, v91, v92);
    v165 = objc_msgSend_p_replacementsForRange_withString_replaceTextData_changeSession_shouldTrackDeletions_(self, v95, Range, v95, stringCopy, dataCopy, sessionCopy, (flags & 2) == 0);
    v173 = objc_msgSend_rangeArray(TSWPMutableRangeArray, v96, v97);
    v98 = *MEMORY[0x277D81490];
    v99 = *(MEMORY[0x277D81490] + 8);
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    obj = v165;
    v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v100, &v177, v185, 16);
    v102 = 0;
    if (v101)
    {
      v103 = *v178;
      do
      {
        for (i = 0; i != v101; ++i)
        {
          if (*v178 != v103)
          {
            objc_enumerationMutation(obj);
          }

          v105 = *(*(&v177 + 1) + 8 * i);
          v174[0] = MEMORY[0x277D85DD0];
          v174[1] = 3221225472;
          v174[2] = sub_276D215EC;
          v174[3] = &unk_27A6F3868;
          v176 = v181;
          v175 = v171;
          objc_msgSend_performWithStorage_delta_actionBuilder_withFlags_replaceBlock_(v105, v106, self, v102, v181, flags, v174);
          v109 = objc_msgSend_delta(v105, v107, v108);
          v112 = objc_msgSend_insertedRange(v105, v110, v111);
          objc_msgSend_concatenateRange_(v173, v113, v112, v113);
          objc_msgSend_insertedRange(v105, v114, v115);
          if (v116)
          {
            v98 = objc_msgSend_insertedRange(v105, v116, v117);
            v99 = v118;
          }

          v102 += v109;
        }

        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v119, &v177, v185, 16);
      }

      while (v101);
    }

    v122 = objc_msgSend_attachments(dataCopy, v120, v121);
    v125 = objc_msgSend_count(v122, v123, v124) == 0;

    if (v125)
    {
      if (v99)
      {
        v128 = objc_msgSend_language(dataCopy, v126, v127);
        isEqualToString = objc_msgSend_isEqualToString_(v128, v129, @"TSWPShouldExtendStoredLanguage");

        if ((isEqualToString & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(stringCopy, v131, @"\t") && objc_msgSend_writingDirectionForParagraphAtCharIndex_(self, v133, v98) == 1 && (v135 = MEMORY[0x277CBEAF8], objc_msgSend_language(dataCopy, v133, v134), v136 = objc_claimAutoreleasedReturnValue(), LOBYTE(v135) = objc_msgSend_characterDirectionForLanguage_(v135, v137, v136) == 2, v136, (v135 & 1) == 0))
          {
            objc_msgSend_setLanguage_forCharRange_actionBuilder_(self, v133, *MEMORY[0x277D813C0], v98, v99, v181);
          }

          else
          {
            v138 = objc_msgSend_language(dataCopy, v133, v134);
            v141 = objc_msgSend_length(v138, v139, v140) == 0;

            if (!v141 || (flags & 4) == 0)
            {
              v142 = objc_msgSend_language(dataCopy, v131, v132);
              objc_msgSend_setLanguage_forCharRange_actionBuilder_(self, v143, v142, v98, v99, v181);
            }
          }
        }

        v144 = objc_msgSend_dictationAndAutocorrection(dataCopy, v131, v132);
        objc_msgSend_setDictationAndAutocorrection_forCharRange_actionBuilder_(self, v145, v144, v98, v99, v181);
      }
    }

    else if ((flags & 4) == 0 && v99)
    {
      objc_msgSend_setLanguage_forCharRange_actionBuilder_(self, v126, 0, v98, v99, v181);
    }

    if (v182)
    {
      v146 = v182;
    }

    else
    {
      v146 = v183;
    }

    sub_276E3F9EC(v146);
    v184[35] = 2;
    sub_276F33734(v181, 0);
    location = objc_msgSend_superRange(v171, v147, v148);
    if (objc_msgSend_rangeCount(v173, v149, v150))
    {
      v190.location = objc_msgSend_superRange(v173, v151, v152);
      v190.length = v153;
      v188.location = location;
      v188.length = 0;
      v154 = NSUnionRange(v188, v190);
      location = v154.location;
      length = v154.length;
    }

    else
    {
      length = 0;
    }

    v155 = v182;
    v156 = (v182 + 312);
    if (!v182)
    {
      v156 = v184;
    }

    if (*v156)
    {
      --*v156;
    }

    if ((flags & 1) != 0 && length | v102)
    {
      if (v155)
      {
        v157 = v155;
      }

      else
      {
        v157 = v183;
      }

      sub_276E3F5CC(v157, location, length, v102, 1);
      v155 = v182;
    }

    if (v155)
    {
      v158 = v155;
    }

    else
    {
      v158 = v183;
    }

    sub_276E3EBD0(v158, v181, flags & 1);
    sub_276F2F2FC(v181);
    if (range)
    {
      v161 = 0;
      do
      {
        if (v161 >= objc_msgSend_rangeCount(v173, v159, v160))
        {
          break;
        }

        range->location = objc_msgSend_rangeAtIndex_(v173, v162, v161);
        range->length = v159;
        ++v161;
      }

      while (!v159);
    }

    sub_276F32E10(v181);
    selectionCopy = v171;
  }

  v163 = location;
  v164 = length;
  result.length = v164;
  result.location = v163;
  return result;
}

- (_NSRange)moveCharactersInRange:(_NSRange)range toLocation:(unint64_t)location undoTransaction:(void *)transaction
{
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)substringWithSelection:(id)selection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276D208C8;
  v10 = sub_276D208D8;
  v11 = &stru_28860A0F0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276D21938;
  v5[3] = &unk_27A6F37F0;
  v5[4] = self;
  v5[5] = &v6;
  objc_msgSend_enumerateRanges_(selection, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)insertPlaceholderText:(id)text atCharIndex:(unint64_t)index undoTransaction:(void *)transaction
{
  textCopy = text;
  objc_msgSend_insertString_atCharIndex_undoTransaction_(self, v8, textCopy, index, transaction);
  v9 = [TSWPPlaceholderSmartField alloc];
  v12 = objc_msgSend_context(self, v10, v11);
  v14 = objc_msgSend_initWithContext_(v9, v13, v12);

  v17 = objc_msgSend_length(textCopy, v15, v16);
  objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(self, v18, v14, index, v17, 0, transaction);
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  objc_msgSend_willModify(self, v7, v8);
  *(self + 303) &= ~2u;
  objc_opt_class();
  v9 = TSUCheckedDynamicCast();
  objc_msgSend_setDocumentRoot_(self, v10, v9);

  for (i = 0; i != 23; ++i)
  {
    v13 = objc_msgSend_attributeArrayForKind_(self, v11, i);
    if (v13)
    {
      (*(*v13 + 176))(v13, rootCopy, contextCopy);
    }
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v25[1] = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v10 = objc_msgSend_context(rootCopy, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10);

  v14 = objc_msgSend_parentInfo(self, v12, v13);
  v17 = v14;
  if (v14)
  {
    v24 = *MEMORY[0x277D80770];
    v25[0] = v14;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v25, &v24, 1);
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v15, v16);
  objc_msgSend_postNotificationName_object_userInfo_(v19, v20, *MEMORY[0x277D807C8], rootCopy, v18);

  for (i = 0; i != 23; ++i)
  {
    v23 = objc_msgSend_attributeArrayForKind_(self, v21, i);
    if (v23)
    {
      (*(*v23 + 184))(v23, rootCopy, contextCopy);
    }
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  for (i = 0; i != 23; ++i)
  {
    v6 = objc_msgSend_attributeArrayForKind_(self, v4, i);
    if (v6)
    {
      (*(*v6 + 192))(v6, rootCopy);
    }
  }

  v8 = objc_msgSend_context(rootCopy, v4, v7);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v9, v8);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v20[1] = *MEMORY[0x277D85DE8];
  rootCopy = root;
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_parentInfo(self, v7, v8);
  v12 = v9;
  if (v9)
  {
    v19 = *MEMORY[0x277D80770];
    v20[0] = v9;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v20, &v19, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11);
  objc_msgSend_postNotificationName_object_userInfo_(v14, v15, *MEMORY[0x277D807D0], rootCopy, v13);

  for (i = 0; i != 23; ++i)
  {
    v18 = objc_msgSend_attributeArrayForKind_(self, v16, i);
    if (v18)
    {
      (*(*v18 + 200))(v18, rootCopy);
    }
  }

  objc_msgSend_setDocumentRoot_(self, v16, 0);
  *(self + 303) |= 2u;
}

- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options updatingSearchRange:(_NSRange *)range
{
  v5 = objc_msgSend_tsk_rangeOfString_searchOptions_updatingSearchRange_(self->_string, a2, string, options, range);
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)rangeOfString:(id)string searchOptions:(unint64_t)options range:(_NSRange)range
{
  rangeCopy = range;
  v5 = objc_msgSend_tsk_rangeOfString_searchOptions_updatingSearchRange_(self->_string, a2, string, options, &rangeCopy);
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
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage rangeOfParagraphBreakingCharacter:backwards:range:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 3723, 0, "invalid character");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  characterCopy = character;
  v19 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v10, &characterCopy, 1);
  if (backwardsCopy)
  {
    v20 = objc_msgSend_rangeOfString_options_range_(self->_string, v18, v19, 6, location, length);
  }

  else
  {
    v20 = objc_msgSend_rangeOfString_options_range_(self->_string, v18, v19, 2, location, length);
  }

  v22 = v20;
  v23 = v21;

  v24 = v22;
  v25 = v23;
  result.length = v25;
  result.location = v24;
  return result;
}

- (id)childEnumerator
{
  v3 = [TSWPStorageChildEnumerator alloc];
  v5 = objc_msgSend_initWithStorage_(v3, v4, self);

  return v5;
}

- (void)enumeratePencilAnnotationsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v7 = objc_msgSend_range(self, v4, v5);
    v9 = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276D22324;
    v11[3] = &unk_27A6F3890;
    v12 = blockCopy;
    objc_msgSend_enumeratePencilAnnotationsInRange_usingBlock_(self, v10, v7, v9, v11);
  }
}

- (BOOL)canBeAnnotatedWithPencil
{
  v4 = objc_msgSend_length(self, a2, v2);
  v7 = objc_msgSend_sectionCount(self, v5, v6);
  v10 = objc_msgSend_attachmentCount(self, v8, v9);
  if (!v4)
  {
    return 0;
  }

  v13 = v7 - 1;
  if (!v7)
  {
    v13 = 0;
  }

  if (v10 + v13 >= objc_msgSend_length(self, v11, v12) || objc_msgSend_wpKind(self, v14, v15) == 1)
  {
    return 0;
  }

  v20 = objc_msgSend_documentRoot(self, v16, v17);
  v18 = objc_msgSend_documentAllowsPencilAnnotationsOnModel_(v20, v21, self);

  return v18;
}

- (void)removePencilAnnotations
{
  v4 = objc_msgSend_range(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_removePencilAnnotationsInRange_undoTransaction_, v4);
}

- (_NSRange)replaceAllOccurrencesOfStyle:(id)style withStyle:(id)withStyle undoTransaction:(void *)transaction
{
  styleCopy = style;
  withStyleCopy = withStyle;
  v10 = *MEMORY[0x277D81490];
  v11 = *(MEMORY[0x277D81490] + 8);
  v12 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(styleCopy, v13, v12))
  {
    v15 = objc_msgSend_replaceAllOccurrencesOfObject_withObject_forKind_undoTransaction_(self, v14, styleCopy, withStyleCopy, 0, transaction);
LABEL_11:
    v10 = v15;
    v11 = v16;
    goto LABEL_12;
  }

  v17 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(styleCopy, v18, v17))
  {
    v15 = objc_msgSend_replaceAllOccurrencesOfObject_withObject_forKind_undoTransaction_(self, v19, styleCopy, withStyleCopy, 2, transaction);
    goto LABEL_11;
  }

  v20 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(styleCopy, v21, v20))
  {
    v15 = objc_msgSend_replaceAllOccurrencesOfObject_withObject_forKind_undoTransaction_(self, v22, styleCopy, withStyleCopy, 3, transaction);
    goto LABEL_11;
  }

  v23 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(styleCopy, v24, v23))
  {
    v15 = objc_msgSend_replaceAllOccurrencesOfObject_withObject_forKind_undoTransaction_(self, v25, styleCopy, withStyleCopy, 9, transaction);
    goto LABEL_11;
  }

  v26 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(styleCopy, v27, v26))
  {
    v15 = objc_msgSend_replaceAllOccurrencesOfObject_withObject_forKind_undoTransaction_(self, v28, styleCopy, withStyleCopy, 22, transaction);
    goto LABEL_11;
  }

LABEL_12:

  v29 = v10;
  v30 = v11;
  result.length = v30;
  result.location = v29;
  return result;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  if (self->_stylesheet != stylesheetCopy || objc_msgSend_clientsMustRemap(mapperCopy, v6, v7))
  {
    objc_msgSend_pushMappingContext_(mapperCopy, v6, self);
    for (i = 0; i != 23; ++i)
    {
      v11 = objc_msgSend_attributeArrayForKind_(self, v9, i);
      if (v11)
      {
        (*(*v11 + 168))(v11, stylesheetCopy, mapperCopy);
      }
    }

    objc_msgSend_setStylesheet_(self, v9, stylesheetCopy);
    objc_msgSend_popMappingContext_(mapperCopy, v12, self);
  }
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  if (self->_stylesheet != stylesheetCopy)
  {
    objc_msgSend_willModifyForUpgrade(self, v4, v5);
    objc_msgSend_setStylesheet_(self, v6, stylesheetCopy);
  }
}

- (_NSRange)textRangeForListsInCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = MEMORY[0x277D81490];
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  v9 = objc_msgSend_textRangeForListAtCharIndex_(self, a2, range.location);
  if (v9 != *v6 || v10 != v6[1])
  {
    v21.location = v9;
    v21.length = v10;
    v19.location = location;
    v19.length = length;
    v12 = NSUnionRange(v19, v21);
    v10 = v12.length;
    v7 = v12.location;
    v8 = v12.length;
  }

  if (location + length)
  {
    v13 = objc_msgSend_listEndAtCharIndex_(self, v10, location + length - 1);
    if (v7 >= location)
    {
      v14 = location;
    }

    else
    {
      v14 = v7;
    }

    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v14 >= v13)
    {
      v14 = v13;
    }

    v16 = v15 - v14;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v14;
      v8 = v16;
    }
  }

  v17 = v7;
  v18 = v8;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)textRangeForListAtCharIndex:(unint64_t)index
{
  objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(self, a2, index, 0);
  v4 = TSWPParagraphEnumerator::paragraphListStyle(&v33, v3);
  v6 = TSWPParagraphEnumerator::paragraphLevel(&v33, v5);
  if (v4 && objc_msgSend_labelTypeForLevel_(v4, v7, v6))
  {
    location = TSWPParagraphEnumerator::paragraphTextRange(&v33, v8);
    length = v10;
    TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v32, &v33);
    while (1)
    {
      if (TSWPParagraphEnumerator::isLastParagraph(&v32))
      {
        goto LABEL_11;
      }

      TSWPParagraphEnumerator::operator++(&v32, v12);
      v14 = TSWPParagraphEnumerator::paragraphListStyle(&v32, v13);

      v16 = TSWPParagraphEnumerator::paragraphLevel(&v33, v15);
      if (!v14)
      {
        v4 = 0;
        goto LABEL_11;
      }

      if (!objc_msgSend_labelTypeForLevel_(v14, v17, v16))
      {
        break;
      }

      v37.location = TSWPParagraphEnumerator::paragraphTextRange(&v32, v18);
      v37.length = v19;
      v34.location = location;
      v34.length = length;
      v20 = NSUnionRange(v34, v37);
      location = v20.location;
      length = v20.length;
      v4 = v14;
    }

    v4 = v14;
LABEL_11:
    while (!TSWPParagraphEnumerator::isFirstParagraph(&v33))
    {
      TSWPParagraphEnumerator::operator--(&v33, v21);
      v23 = TSWPParagraphEnumerator::paragraphListStyle(&v33, v22);

      v25 = TSWPParagraphEnumerator::paragraphLevel(&v33, v24);
      if (!v23)
      {
        v4 = 0;
        break;
      }

      if (!objc_msgSend_labelTypeForLevel_(v23, v26, v25))
      {
        v4 = v23;
        break;
      }

      v38.location = TSWPParagraphEnumerator::paragraphTextRange(&v33, v27);
      v38.length = v28;
      v35.location = location;
      v35.length = length;
      v29 = NSUnionRange(v35, v38);
      location = v29.location;
      length = v29.length;
      v4 = v23;
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v32);
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v33);
  v30 = location;
  v31 = length;
  result.length = v31;
  result.location = v30;
  return result;
}

- (unint64_t)pFirstParIndexInListAtParIndex:(unint64_t)index
{
  indexCopy = index;
  objc_msgSend_paragraphEnumeratorAtParIndex_styleProvider_(self, a2, index, 0);
  v5 = TSWPParagraphEnumerator::paragraphListStyle(&v18, v4);
  v7 = TSWPParagraphEnumerator::paragraphLevel(&v18, v6);
  if (v5 && objc_msgSend_labelTypeForLevel_(v5, v8, v7))
  {
    while (1)
    {
      isFirstParagraph = TSWPParagraphEnumerator::isFirstParagraph(&v18);
      if (!indexCopy || isFirstParagraph)
      {
        break;
      }

      TSWPParagraphEnumerator::operator--(&v18, v10);
      v13 = TSWPParagraphEnumerator::paragraphListStyle(&v18, v12);

      v15 = TSWPParagraphEnumerator::paragraphLevel(&v18, v14);
      if (!v13)
      {
        v5 = 0;
        break;
      }

      if (!objc_msgSend_labelTypeForLevel_(v13, v16, v15))
      {
        v5 = v13;
        break;
      }

      --indexCopy;
      v5 = v13;
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v18);
  return indexCopy;
}

- (unint64_t)paragraphCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (unint64_t)paragraphIndexAtCharIndex:(unint64_t)index
{
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPStorage paragraphIndexAtCharIndex:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 4071, 0, "paragraphIndexAtCharIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index);
}

- (unint64_t)charIndexForParagraphAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (v4)
  {

    return TSWPAttributeArray::charIndexForAttributeIndex(v4, index);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage charIndexForParagraphAtIndex:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 4080, 0, "charIndexForParagraphAtIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    return 0;
  }
}

- (_NSRange)textRangeForParagraphAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (v5)
  {
    v7 = v5;
    v9 = TSWPAttributeArray::charIndexForAttributeIndex(v5, index);
    v10 = (index + 1);
    if (index + 1 >= *(v7 + 6))
    {
      v11 = objc_msgSend_characterCount(self, v10, v8);
    }

    else
    {
      v11 = TSWPAttributeArray::charIndexForAttributeIndex(v7, v10);
    }

    v19 = v11 - v9;
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage textRangeForParagraphAtIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 4093, 0, "textRangeForParagraphAtIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v19 = 0;
    v9 = 0;
  }

  v20 = v9;
  result.length = v19;
  result.location = v20;
  return result;
}

- (_NSRange)textRangeForParagraphIndexRange:(_NSRange)range
{
  location = range.location;
  v5 = range.location + range.length;
  if (range.location > 0x7FFFFFFFFFFFFFFELL || range.length == 0 || v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    length = range.length;
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage textRangeForParagraphIndexRange:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    v46.location = location;
    v46.length = length;
    v13 = NSStringFromRange(v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v12, 4115, 0, "Bad parIndexRange: %{public}@", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v5 = location + length;
  }

  v17 = objc_msgSend_length(self, a2, range.location);
  v20 = objc_msgSend_paragraphCount(self, v18, v19);
  v22 = objc_msgSend_textRangeForParagraphAtIndex_(self, v21, location);
  v24 = v23;
  v25 = objc_msgSend_textRangeForParagraphAtIndex_(self, v23, v5 - 1);
  v27.location = v25;
  v29 = v5 < v20 && v24 > 1;
  v30 = v24 - v29;
  if (v22 + v24 == v17)
  {
    v31 = v30;
  }

  else
  {
    v31 = v24;
  }

  v33 = v5 < v20 && v26 > 1;
  v34 = v26 - v33;
  if (v25 + v26 == v17)
  {
    v27.length = v34;
  }

  else
  {
    v27.length = v26;
  }

  v47.location = v22;
  v47.length = v31;
  v35 = NSUnionRange(v47, v27);
  if (v35.location > 0x7FFFFFFFFFFFFFFELL || v35.location + v35.length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35.length, "[TSWPStorage textRangeForParagraphIndexRange:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    v40 = NSStringFromRange(v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v39, 4134, 0, "bad result: %{public}@", v40);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
  }

  v44 = v35.location;
  v45 = v35.length;
  result.length = v45;
  result.location = v44;
  return result;
}

- (_NSRange)textRangeForParagraphAtCharIndex:(unint64_t)index
{
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage textRangeForParagraphAtCharIndex:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 4142, 0, "textRangeForParagraphAtCharIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, index);

  v16 = objc_msgSend_textRangeForParagraphAtIndex_(self, v14, v15);
  result.length = v17;
  result.location = v16;
  return result;
}

- (unint64_t)selectedParagraphBreakCount:(_NSRange)count
{
  if (!count.length)
  {
    return 0;
  }

  length = count.length;
  location = count.location;
  v6 = objc_msgSend_paragraphIndexRangeForCharRange_(self, a2, count.location);
  if (v6 >= &v7[v6])
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = 0;
  do
  {
    v11 = objc_msgSend_textRangeForParagraphAtIndex_(self, v7, v8);
    v12 = &v7[v11 - 1];
    v14 = v12 >= location;
    v13 = v12 - location;
    v14 = !v14 || v13 >= length;
    if (!v14)
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

  v4 = objc_msgSend_paragraphIndexRangeForCharRange_(self, a2, count.location);
  if (v4 >= &v5[v4])
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = 0;
  do
  {
    v9 = objc_msgSend_textRangeForParagraphAtIndex_(self, v5, v6);
    if (!v5 || v5 == 1 && (v10 = objc_msgSend_characterAtIndex_(self, 1, v9), IsParagraphBreakingCharacter(v10)))
    {
      ++v8;
    }

    ++v6;
    --v7;
  }

  while (v7);
  return v8;
}

- (_NSRange)p_rangeWithNonVisibleAttachmentsTrimmedForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v42 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v6;
  if (length)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_276D235A8;
    v39[3] = &unk_27A6F38B8;
    v39[4] = v6;
    objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(self, v7, location, length, v39);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v8;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v35, v41, 16);
    if (v13)
    {
      v14 = *v36;
      v30 = v8;
      while (2)
      {
        v15 = 0;
        v16 = location + v13;
        v17 = length - v13;
        v18 = location;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v9);
          }

          if (v18 != objc_msgSend_unsignedIntegerValue(*(*(&v35 + 1) + 8 * v15), v11, v12))
          {
            v17 = length - v15;
            v16 = v18;
            v8 = v30;
            goto LABEL_15;
          }

          if (length - 1 == v15)
          {
            v17 = 0;
            v16 = length + location;
            v8 = v30;
            goto LABEL_28;
          }

          ++v18;
          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v35, v41, 16);
        location = v16;
        length = v17;
        v8 = v30;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = location;
      v17 = length;
    }

LABEL_15:

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = objc_msgSend_reverseObjectEnumerator(v9, v19, v20);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v21, &v31, v40, 16);
    if (v24)
    {
      v25 = *v32;
      while (2)
      {
        v26 = 0;
        v27 = v17 - 1;
        v17 -= v24;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v9);
          }

          if (v16 + v27 != objc_msgSend_unsignedIntegerValue(*(*(&v31 + 1) + 8 * v26), v22, v23))
          {
            v17 = v27 + 1;
            goto LABEL_28;
          }

          if (!v27)
          {
            v17 = 0;
            goto LABEL_28;
          }

          ++v26;
          --v27;
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v22, &v31, v40, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    location = v16;
  }

  else
  {
    v17 = 0;
  }

  v28 = location;
  v29 = v17;
  result.length = v29;
  result.location = v28;
  return result;
}

- (BOOL)isWholeParagraphsForRange:(_NSRange)range ignoreAttachmentCharacters:(BOOL)characters requireParagraphBreakSelected:(BOOL)selected
{
  charactersCopy = characters;
  length = range.length;
  location = range.location;
  v10 = range.location + range.length;
  if (range.location + range.length > objc_msgSend_length(self, a2, range.location))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage isWholeParagraphsForRange:ignoreAttachmentCharacters:requireParagraphBreakSelected:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 4244, 0, "Range is outside storage bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (length)
  {
    objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(self, v11, location, 0);
    v21 = TSWPParagraphEnumerator::paragraphTextRange(&v36, v19);
    if (charactersCopy)
    {
      v21 = objc_msgSend_p_rangeWithNonVisibleAttachmentsTrimmedForRange_(self, v20, v21, v20);
    }

    if (location <= v21)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(self, v20, v10 - 1, 0);
      v24 = TSWPParagraphEnumerator::paragraphTextRange(&v35, v23);
      v26 = v24;
      v27 = v25;
      if (!selected)
      {
        v28 = objc_msgSend_characterAtIndex_(self, v25, &v25[v24 - 1]);
        v29 = IsParagraphBreakingCharacter(v28);
        if (v29)
        {
          v31 = v27 - 1;
        }

        else
        {
          v31 = v27;
        }

        if (charactersCopy)
        {
          if (v29)
          {
            v32 = objc_msgSend_p_rangeWithNonVisibleAttachmentsTrimmedForRange_(self, v30, v26, v27 - 1);
          }

          else
          {
            v32 = objc_msgSend_p_rangeWithNonVisibleAttachmentsTrimmedForRange_(self, v30, v26, v27);
          }

          v26 = v32;
          v27 = v33;
        }

        else
        {
          v27 = v31;
        }
      }

      v22 = v10 >= &v27[v26];
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v35);
    }

    else
    {
      v22 = 0;
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v36);
  }

  else if (objc_msgSend_isEmptyParagraphRange_ignoreAttachmentCharacters_outRange_(self, v11, location, 0, charactersCopy, &v36))
  {
    return !v36.var1 || !selected;
  }

  else
  {
    return 0;
  }

  return v22;
}

- (_NSRange)textRangeForParagraphsInCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_paragraphIndexAtCharIndex_(self, a2, range.location);
  TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v18, self, 0, v6, v6, 0);
  v9 = TSWPParagraphEnumerator::paragraphTextRange(&v18, v7);
  v10 = v8;
  if (length >= 2)
  {
    v11 = objc_msgSend_paragraphIndexAtCharIndex_(self, v8, length + location - 1);
    if (v11 != v6)
    {
      TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v17, self, 0, v11, v11, 0);
      v21.location = TSWPParagraphEnumerator::paragraphTextRange(&v17, v12);
      v21.length = v13;
      v19.location = v9;
      v19.length = v10;
      v14 = NSUnionRange(v19, v21);
      v9 = v14.location;
      v10 = v14.length;
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v17);
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v18);
  v15 = v9;
  v16 = v10;
  result.length = v16;
  result.location = v15;
  return result;
}

- (_NSRange)paragraphIndexRangeForCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage paragraphIndexRangeForCharRange:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 4312, 0, "paragraphIndexRangeForCharRange: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14.location = location;
  v14.length = length;

  v15 = TSWPAttributeArray::attributeRangeContainingCharacterRange(v6, v14);
  result.length = v16;
  result.location = v15;
  return result;
}

- (id)paragraphIndicesForSelection:(id)selection
{
  selectionCopy = selection;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6);
  if (objc_msgSend_isValid(selectionCopy, v8, v9))
  {
    if (objc_msgSend_isInsertionPoint(selectionCopy, v10, v11))
    {
      v14 = objc_msgSend_leadingCharIndex(selectionCopy, v12, v13);
      v16 = objc_msgSend_paragraphIndexRangeForCharRange_(self, v15, v14, 0);
      objc_msgSend_addIndexesInRange_(v7, v17, v16, v17);
    }

    else
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_276D23BD4;
      v19[3] = &unk_27A6F38E0;
      v19[4] = v7;
      v19[5] = self;
      objc_msgSend_enumerateRanges_(selectionCopy, v12, v19);
    }
  }

  return v7;
}

- (_NSRange)paragraphIndexRangeIncludingFinalEmptyParagraphForCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage paragraphIndexRangeIncludingFinalEmptyParagraphForCharRange:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 4336, 0, "paragraphIndexRangeForCharRange: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v27.location = location;
  v27.length = length;
  v15 = TSWPAttributeArray::attributeRangeContainingCharacterRange(v7, v27);
  v18 = v15;
  v19 = v16;
  if (v16)
  {
    if (&v16[v15 + 1] == objc_msgSend_paragraphCount(self, v16, v17))
    {
      v21 = objc_msgSend_textRangeForParagraphAtIndex_(self, v20, &v19[v18]);
      if (location < v21 && v21 <= location + length && !v22 && v21 == objc_msgSend_length(self, 0, v23))
      {
        ++v19;
      }
    }
  }

  v24 = v18;
  v25 = v19;
  result.length = v25;
  result.location = v24;
  return result;
}

- (BOOL)paragraphHasListLabelAtCharIndex:(unint64_t)index
{
  v6 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(self, a2, index, 0);
  if (v6)
  {
    v7 = objc_msgSend_paragraphLevelAtCharIndex_(self, v5, index);
    v9 = objc_msgSend_labelTypeForLevel_(v6, v8, v7) != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index
{
  v5 = objc_msgSend_paragraphIndexAtCharIndex_(self, a2, index);

  return objc_msgSend_isWritingDirectionRightToLeftForParagraphAtParIndex_(self, v4, v5);
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtParIndex:(unint64_t)index
{
  v4 = objc_msgSend_writingDirectionForParagraphAtParIndex_(self, a2, index);
  if (v4 >= 2)
  {
    if (v4 != -1)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage isWritingDirectionRightToLeftForParagraphAtParIndex:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 4398, 0, "Unknown writing direction.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
      LOBYTE(v4) = 0;
      return v4;
    }

    v6 = *(self + 302) << 26 >> 30;
    if (v6 != -1)
    {
      LOBYTE(v4) = v6 == 1;
      return v4;
    }

    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

    if (!WeakRetained)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPStorage isWritingDirectionRightToLeftForParagraphAtParIndex:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 4383, 0, "_documentRoot should never be nil at this point");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v23 = objc_loadWeakRetained(&self->_documentRoot);
    if (v23)
    {
      v24 = v23;
      v25 = objc_loadWeakRetained(&self->_documentRoot);
      isDirectionRightToLeft = objc_msgSend_isDirectionRightToLeft(v25, v26, v27);

      v29 = *(self + 302);
      if (!isDirectionRightToLeft)
      {
        LOBYTE(v4) = 0;
        v30 = 0;
LABEL_13:
        *(self + 302) = v30 | v29 & 0xCF;
        return v4;
      }
    }

    else
    {
      v29 = *(self + 302);
    }

    v30 = 16;
    LOBYTE(v4) = 1;
    goto LABEL_13;
  }

  return v4;
}

- (BOOL)isWritingDirectionRightToLeftForListAtParIndex:(unint64_t)index
{
  v5 = objc_msgSend_listStyleAtParIndex_effectiveRange_(self, a2, index, 0);
  v7 = v5;
  if (v5 && objc_msgSend_containsProperty_(v5, v6, 44) && (v8 = objc_msgSend_intValueForProperty_(v7, v6, 44), v8 != -1))
  {
    v9 = v8 != 0;
  }

  else
  {
    if (*(objc_msgSend_attributeArrayForKind_(self, v6, 18) + 24) == 1)
    {
      isWritingDirectionRightToLeftForParagraphAtParIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtParIndex_(self, v10, 0);
    }

    else
    {
      ParIndexInListAtParIndex = objc_msgSend_pFirstParIndexInListAtParIndex_(self, v10, index);
      isWritingDirectionRightToLeftForParagraphAtParIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtParIndex_(self, v13, ParIndexInListAtParIndex);
    }

    v9 = isWritingDirectionRightToLeftForParagraphAtParIndex;
  }

  return v9;
}

- (int)writingDirectionForParagraphAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(self, a2, index, range);
  isDirectionRightToLeft = objc_msgSend_intValueForProperty_(v6, v7, 44);
  if (isDirectionRightToLeft == -1)
  {
    isDirectionRightToLeft = objc_msgSend_writingDirectionFromBidiAttributesTableForParagraphAtCharIndex_(self, v8, index);
    if (isDirectionRightToLeft == -1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
      isDirectionRightToLeft = objc_msgSend_isDirectionRightToLeft(WeakRetained, v11, v12);
    }
  }

  return isDirectionRightToLeft;
}

- (int)writingDirectionFromBidiAttributesTableForParagraphAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 18);
  if (!v4)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage writingDirectionFromBidiAttributesTableForParagraphAtCharIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 4457, 0, "writingDirectionForParagraphAtParIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    return -1;
  }

  v6 = v4;
  if (!*(v4 + 24))
  {
    return -1;
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage writingDirectionFromBidiAttributesTableForParagraphAtCharIndex:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 4460, 0, "writingDirectionForParagraphAtParIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  return *TSWPAttributeRecord::paragraphData(*(v6 + 8) + 16 * v8, *(v6 + 28));
}

- (int)writingDirectionForParagraphAtParIndex:(unint64_t)index
{
  v5 = objc_msgSend_charIndexForParagraphAtIndex_(self, a2, index);

  return objc_msgSend_writingDirectionForParagraphAtCharIndex_(self, v4, v5);
}

- (void)setParagraphWritingDirection:(int)direction forCharRange:(_NSRange)range undoTransaction:(void *)transaction
{
  v5 = *&direction;
  objc_msgSend_paragraphIndexRangeForCharRange_(self, a2, range.location, range.length);
  if (v7)
  {

    MEMORY[0x2821F9670](self, sel_applyWritingDirection_toParagraphIndexRange_forKind_undoTransaction_, v5);
  }
}

- (void)setParagraphWritingDirection:(int)direction forParagraphIndexRange:(_NSRange)range undoTransaction:(void *)transaction
{
  if (range.length)
  {
    MEMORY[0x2821F9670](self, sel_applyWritingDirection_toParagraphIndexRange_forKind_undoTransaction_, *&direction);
  }
}

- (id)languageEntryAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = objc_msgSend_attributeArrayForKind_(self, a2, 13);
  if (!v7)
  {
    if (range)
    {
      v15 = objc_msgSend_range(self, v8, v9);
      v14 = 0;
      range->location = v15;
      range->length = v16;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = v7;
  v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, index);
  if (v11 >= *(v10 + 6))
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v12 = v11;
  if (range)
  {
    range->location = TSWPAttributeArray::rangeForAttributeIndex(v10, v11);
    range->length = v13;
  }

  v14 = TSWPAttributeArray::objectForAttributeIndex(v10, v12);
LABEL_9:

  return v14;
}

- (id)bestCharacterLanguageForTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v53[7] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_attributeArrayForKind_(self, a2, 13);
  if (!v3)
  {
    v41 = 0;
    goto LABEL_61;
  }

  v4 = v3;
  v5 = 0;
  v52 = 0;
  v53[1] = 0;
  v53[3] = 0;
  v53[5] = 0;
  do
  {
    v6 = v53[v5 - 1];
    v53[v5 - 1] = 0;

    v53[v5] = 0x7FFFFFFFFFFFFFFFLL;
    v5 += 2;
  }

  while (v5 != 8);
  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, location);
  v47 = *(v4 + 24);
  if (v7 >= v47)
  {
    goto LABEL_37;
  }

  v45 = 0;
  v50 = location + length;
  v46 = 0;
  do
  {
    v8 = TSWPAttributeArray::rangeForAttributeIndex(v4, v7);
    v10 = v9;
    v11 = v4;
    v12 = TSWPAttributeArray::objectForAttributeIndex(v4, v7);
    v55.location = v8;
    v55.length = v10;
    v56.length = length;
    v56.location = location;
    v14 = NSIntersectionRange(v55, v56);
    v13 = v14.length;
    if (!v12)
    {
      if (v8 + v10 >= v50)
      {
        v21 = location + length;
      }

      else
      {
        v21 = v8 + v10;
      }

      v22 = v8;
      if (v8 >= v21)
      {
LABEL_25:
        v20 = 0;
        goto LABEL_33;
      }

      while (1)
      {
        v23 = objc_msgSend_characterAtIndex_(self, v13, v22);
        if (!sub_276D36AEC(v23))
        {
          v24 = IsParagraphBreakingCharacter(v23);
          v25 = v23 == 8232 ? 1 : v24;
          if ((v25 & 1) == 0)
          {
            break;
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_25;
        }
      }
    }

    if (!v14.length)
    {
      goto LABEL_25;
    }

    v15 = 0;
    v16 = v53;
    v17 = v53;
    do
    {
      v18 = *v17;
      v17 += 2;
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = *(v16 - 1);
        if (v19 == v12 || (objc_msgSend_isEqualToString_(v19, v13, v12) & 1) != 0)
        {
          v26 = v46;
          if (v46 <= v15)
          {
            v26 = v15 + 1;
          }

          goto LABEL_30;
        }
      }

      ++v15;
      v16 = v17;
    }

    while (v15 != 4);
    if (v46 > 3)
    {
      v45 = 1;
      v20 = 1;
      goto LABEL_33;
    }

    v15 = v46;
    v26 = v46 + 1;
LABEL_30:
    v46 = v26;
    v27 = &v53[2 * v15 - 1];
    objc_storeStrong(v27, v12);
    v20 = 0;
    v28 = v27[1];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0;
    }

    v27[1] = &v28[v14.length];
LABEL_33:
    ++v7;

    if (v7 >= v47)
    {
      break;
    }

    if (v8 + v10 >= v50)
    {
      break;
    }

    v4 = v11;
  }

  while (!v20);
  if ((v45 & 1) == 0)
  {
LABEL_37:
    v29 = 0;
    v30 = 0;
    v31 = v53;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v35 = *v31;
      v31 += 2;
      v34 = v35;
      v37 = v32 == 0x7FFFFFFFFFFFFFFFLL || v34 > v32;
      v38 = !v37;
      if (v37)
      {
        v39 = v29;
      }

      else
      {
        v39 = v33;
      }

      if (v38)
      {
        v40 = v32;
      }

      else
      {
        v40 = v34;
      }

      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = v39;
        ++v30;
        v32 = v40;
      }

      ++v29;
    }

    while (v29 != 4);
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = &v53[2 * v33 - 1];
      if (v30 == 1 || v42[1] / length >= 0.75)
      {
        v41 = *v42;
        goto LABEL_59;
      }
    }
  }

  v41 = 0;
LABEL_59:
  for (i = 6; i != -2; i -= 2)
  {
  }

LABEL_61:

  return v41;
}

- (id)languageForTextRange:(_NSRange)range useStringTokenizer:(BOOL)tokenizer useDocumentLanguage:(BOOL)language
{
  languageCopy = language;
  tokenizerCopy = tokenizer;
  length = range.length;
  location = range.location;
  v10 = objc_msgSend_paragraphIndexAtCharIndex_(self, a2, range.location);
  v53 = location + length;
  v13 = objc_msgSend_paragraphIndexAtCharIndex_(self, v11, location + length);
  if (v13 > v10)
  {
    v13 -= v53 == objc_msgSend_charIndexForParagraphAtIndex_(self, v12, v13);
  }

  if (v10 > v13)
  {
LABEL_16:
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self, v12, v10, 0);
      v17 = objc_msgSend_valueForProperty_(v15, v16, 39);
      v18 = v17;
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend_isEqualToString_(v14, v19, v18) & 1) == 0)
        {

          goto LABEL_16;
        }
      }

      else
      {
        v14 = v17;
      }

      ++v10;
    }

    while (v10 <= v13);
    if (v14)
    {
      v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v20);

      if (v14 != v21)
      {
        goto LABEL_18;
      }
    }
  }

  if (location > v53)
  {
LABEL_18:
    v22 = 0;
    goto LABEL_45;
  }

  v49 = tokenizerCopy;
  v51 = length;
  v52 = languageCopy;
  v22 = 0;
  v23 = MEMORY[0x277D81490];
  v24 = *MEMORY[0x277D81490];
  v25 = *(MEMORY[0x277D81490] + 8);
  v50 = location;
  while (1)
  {
    v54 = *v23;
    v26 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v12, location, &v54);
    v28 = objc_msgSend_valueForProperty_(v26, v27, 39);
    v31 = v28;
    if (v54.location >= v53)
    {
      break;
    }

    if (!v28 || (objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30), v32 = objc_claimAutoreleasedReturnValue(), v32, v31 == v32))
    {
LABEL_37:

      v22 = 0;
LABEL_38:
      languageCopy = v52;
      location = v50;
      length = v51;
      tokenizerCopy = v49;
      goto LABEL_45;
    }

    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_37;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isEqualToString_(v22, v33, v31))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v22 = v31;
    }

    v34 = v54.length;
    v35 = v54.location;
    if (v54.length + v54.location <= location)
    {
      ++location;
    }

    else
    {
      location = v54.length + v54.location;
    }

    if (v24 != *MEMORY[0x277D81490] || v25 != *(MEMORY[0x277D81490] + 8))
    {
      v55.location = v24;
      v55.length = v25;
      v36 = NSUnionRange(v55, v54);
      v35 = v36.location;
      v34 = v36.length;
    }

    v25 = v34;
    v24 = v35;
    v23 = MEMORY[0x277D81490];
    if (location > v53)
    {
      goto LABEL_40;
    }
  }

  v34 = v25;
  v35 = v24;
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_40:
  location = v50;
  length = v51;
  languageCopy = v52;
  tokenizerCopy = v49;
  if (v35 == v50 && v34 == v51 || v35 <= v50 && v34 + v35 >= v53)
  {
    v22 = v22;

    v14 = v22;
  }

LABEL_45:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v14, v37, v38) >= 2)
  {
    v39 = v14;
    if (v39)
    {
      goto LABEL_68;
    }
  }

  if (length == *(MEMORY[0x277D81490] + 8) && location == *MEMORY[0x277D81490] || length == 0)
  {
    v39 = 0;
LABEL_58:
    if (tokenizerCopy)
    {
      v39 = 0;
      v43 = length == *(MEMORY[0x277D81490] + 8) && location == *MEMORY[0x277D81490];
      if (!v43 && length)
      {
        v56.location = location;
        v56.length = length;
        v39 = CFStringTokenizerCopyBestStringLanguage(self->_string, v56);
      }
    }

    goto LABEL_65;
  }

  v42 = objc_msgSend_bestCharacterLanguageForTextRange_(self, v37, location, length);
  v39 = v42;
  if (!v42)
  {
    goto LABEL_58;
  }

LABEL_65:
  if (!v39 && languageCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    v39 = objc_msgSend_documentLanguage(WeakRetained, v45, v46);
  }

LABEL_68:
  v47 = v39;

  return v39;
}

- (id)languageAtParIndex:(unint64_t)index useStringTokenizer:(BOOL)tokenizer useDocumentLanguage:(BOOL)language
{
  languageCopy = language;
  tokenizerCopy = tokenizer;
  v8 = objc_msgSend_textRangeForParagraphAtIndex_(self, a2, index);
  v12 = (__PAIR128__(v9, &v9[v8]) - objc_msgSend_length(self, v9, v10)) >> 64;

  return objc_msgSend_languageForTextRange_useStringTokenizer_useDocumentLanguage_(self, v11, v8, v12, tokenizerCopy, languageCopy);
}

- (id)dictationAndAutocorrectionKeyAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if (range)
  {
    range->location = 0;
    range->length = 0;
  }

  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 14);
  if (v6)
  {
    v7 = v6;
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, index);
    if (v8 >= *(v7 + 6))
    {
      v6 = 0;
    }

    else
    {
      v9 = v8;
      if (range)
      {
        range->location = TSWPAttributeArray::rangeForAttributeIndex(v7, v8);
        range->length = v10;
      }

      v6 = TSWPAttributeArray::objectForAttributeIndex(v7, v9);
    }
  }

  return v6;
}

- (void)addAllDictationAndAutocorrectionKeyRangesInRange:(_NSRange)range toRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  rangesCopy = ranges;
  v8 = objc_msgSend_attributeArrayForKind_(self, v7, 14);
  v9 = v8;
  if (v8)
  {
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, location);
    v11 = *(v9 + 6);
    if (v10 < v11)
    {
      do
      {
        v12 = TSWPAttributeArray::rangeForAttributeIndex(v9, v10);
        v14 = v13;
        v15 = TSWPAttributeArray::objectForAttributeIndex(v9, v10);
        v19.location = v12;
        v19.length = v14;
        v20.location = location;
        v20.length = length;
        v16 = NSIntersectionRange(v19, v20);
        if (v16.length && v15)
        {
          objc_msgSend_concatenateRange_(rangesCopy, v16.length, v12, v14);
        }

        ++v10;
      }

      while (v10 < v11 && v12 + v14 < location + length);
    }
  }
}

- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v8 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage paragraphStyleAtParIndex:effectiveRange:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 4784, 0, "paragraphStyleAtParIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (range)
  {
    range->location = objc_msgSend_textRangeForParagraphAtIndex_(self, v7, index);
    range->length = v16;
  }

  if (v8 && *(v8 + 24) > index)
  {
    v17 = TSWPAttributeArray::objectForAttributeIndex(v8, index);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = objc_msgSend_paragraphIndexAtCharIndex_(self, a2, index);

  return objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self, v6, v7, range);
}

- (unint64_t)findNextParagraphStyleChange:(unint64_t)change maxCharIndex:(unint64_t)index
{
  v7 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage findNextParagraphStyleChange:maxCharIndex:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 4812, 0, "findNextParagraphStyleChange: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, change);
  v16 = *(v7 + 24);
  v17 = TSWPAttributeArray::objectForAttributeIndex(v7, v15);
  v18 = (v15 + 1);
  if (v18 < v16)
  {
    while (1)
    {
      v19 = TSWPAttributeArray::charIndexForAttributeIndex(v7, v18);
      v20 = TSWPAttributeArray::objectForAttributeIndex(v7, v18);
      v21 = v20;
      if (v19 >= index)
      {
        break;
      }

      if (v20 != v17)
      {
        index = TSWPAttributeArray::charIndexForAttributeIndex(v7, v18);
        break;
      }

      if (v16 == ++v18)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:

  return index;
}

- (void)nonUndoableFilterParagraphStylesForHeaderFooter
{
  if (objc_msgSend_wpKind(self, a2, v2) != 1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPStorage nonUndoableFilterParagraphStylesForHeaderFooter]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 4837, 0, "Should only be filtering header/footer storages");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_paragraphCount(self, v4, v5);
  if (v13)
  {
    v15 = v13;
    for (i = 0; i != v15; ++i)
    {
      v17 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self, v14, i, v25);
      if (v17)
      {
        v18 = objc_alloc_init(MEMORY[0x277D80AB8]);
        objc_msgSend_setFloatValue_forProperty_(v18, v19, 81, 0.0);
        objc_msgSend_setFloatValue_forProperty_(v18, v20, 80, 0.0);
        objc_msgSend_setFloatValue_forProperty_(v18, v21, 82, 0.0);
        v24 = objc_msgSend_variationOfStyle_propertyMap_(self->_stylesheet, v22, v17, v18);
        if (v24 != v17)
        {
          objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(self, v23, v24, v25[0], v25[1], 0);
        }
      }
    }
  }
}

- (void)enumerateParagraphsIntersectingTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v9 = objc_msgSend_attributeArrayForKind_(self, v8, 0);
  if (v9)
  {
    v28.location = location;
    v28.length = length;
    v12 = TSWPAttributeArray::attributeRangeContainingCharacterRange(v9, v28);
    v27 = 0;
    for (i = &v11[v12]; v12 < i; ++v12)
    {
      v14 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(self, v11, v12, v26);
      (*(blockCopy + 2))(blockCopy, v12, v26[0], v26[1], v14, &v27);

      if (v27)
      {
        break;
      }
    }
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage enumerateParagraphsIntersectingTextRange:usingBlock:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    v19 = *(self + 302);
    v22 = objc_msgSend_length(self, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v16, v18, 4873, 0, "enumerateParagraphsIntersectingTextRange:usingBlock: no paragraph table. Kind: %lu, Length: %lu", v19 & 0xF, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }
}

- (id)dropCapCharIndexesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, range.location);
  if (objc_msgSend_WPKindSupportsDropCaps(self, v7, v8))
  {
    v10 = objc_msgSend_attributeArrayForKind_(self, v9, 22);
    v13 = v10;
    if (v10)
    {
      v14 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location);
      v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, location + length);
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        for (i = v15; v14 <= i; ++v14)
        {
          v17 = TSWPAttributeArray::objectForAttributeIndex(v13, v14);

          if (v17)
          {
            v18 = TSWPAttributeArray::charIndexForAttributeIndex(v13, v14);
            objc_msgSend_addIndex_(v6, v19, v18);
          }

          if (v14 == 0x7FFFFFFFFFFFFFFELL)
          {
            break;
          }
        }
      }
    }

    else
    {
      v20 = objc_msgSend_parentInfo(self, v11, v12);

      if (v20)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage dropCapCharIndexesInRange:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 4896, 0, "Expected a drop cap attribute array or parent info to be nil.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      }
    }
  }

  return v6;
}

- (id)dropCapCharIndexesInSelection:(id)selection
{
  selectionCopy = selection;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6);
  if (objc_msgSend_WPKindSupportsDropCaps(self, v8, v9))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276D25854;
    v12[3] = &unk_27A6F38E0;
    v12[4] = self;
    v12[5] = v7;
    objc_msgSend_enumerateRanges_(selectionCopy, v10, v12);
  }

  return v7;
}

- (id)dropCapStyleAtParIndex:(unint64_t)index
{
  if (objc_msgSend_WPKindSupportsDropCaps(self, a2, index))
  {
    v6 = objc_msgSend_attributeArrayForKind_(self, v5, 22);
    if (v6)
    {
      v9 = v6;
      v10 = objc_msgSend_charIndexForParagraphAtIndex_(self, v7, index);
      v11 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v9, v10);
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = TSWPAttributeArray::objectForAttributeIndex(v9, v11);
        goto LABEL_8;
      }
    }

    else
    {
      v13 = objc_msgSend_parentInfo(self, v7, v8);

      if (v13)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPStorage dropCapStyleAtParIndex:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 4929, 0, "Expected a drop cap attribute array or parent info to be nil.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)characterStyleForDropCapAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v8 = objc_msgSend_rangeOfDropCapAtCharIndex_(self, a2, index);
  v9 = 0;
  if (index >= v8)
  {
    v10 = v7;
    if (index - v8 < v7)
    {
      if (v8 >= &v7[v8])
      {
LABEL_7:
        v9 = 0;
      }

      else
      {
        while (1)
        {
          v11 = objc_msgSend_characterAtIndex_(self, v7, v8);
          if (v11 != 65532 && (IsWhitespaceCharacter(v11, v7) & 1) == 0)
          {
            break;
          }

          ++v8;
          if (!--v10)
          {
            goto LABEL_7;
          }
        }

        v9 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v7, v8, range);
      }
    }
  }

  return v9;
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index
{
  v3 = MEMORY[0x2821F9670](self, sel_rangeOfDropCapAtCharIndex_actualCharacterCount_, index);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index actualCharacterCount:(unint64_t *)count
{
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  v10 = objc_msgSend_dropCapStyleAtCharIndex_(self, a2, index);
  if (!v10 || (v11 = objc_msgSend_textRangeForParagraphAtCharIndex_(self, v9, index), v7 = v11, !v12))
  {
    v14 = 0;
    if (!count)
    {
      goto LABEL_18;
    }

LABEL_17:
    *count = v14;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = &v12[v11];
  for (i = v11; ; i = objc_msgSend_nextCharacterIndex_(self, v23, i))
  {
    v17 = objc_msgSend_dropCap(v10, v12, v13);
    if (v14 >= objc_msgSend_numberOfCharacters(v17, v18, v19))
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_20;
    }

    v21 = objc_msgSend_characterAtIndex_(self, v20, i);
    v22 = IsParagraphBreakingCharacter(v21);
    v24 = v21 == 8232 ? 1 : v22;
    if (v24)
    {
      goto LABEL_20;
    }

    if (v21 != 65532)
    {
      if (v14 || (IsWhitespaceCharacter(v21, v23) & 1) == 0)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }
  }

LABEL_20:
  v8 = i - v7;
  if (count)
  {
    goto LABEL_17;
  }

LABEL_18:

  v25 = v7;
  v26 = v8;
  result.length = v26;
  result.location = v25;
  return result;
}

- (void)setDropCapStyle:(id)style atParIndex:(unint64_t)index undoTransaction:(void *)transaction
{
  styleCopy = style;
  if (objc_msgSend_WPKindSupportsDropCaps(self, v8, v9))
  {
    objc_msgSend_applyObject_toParagraphIndexRange_forKind_undoTransaction_(self, v10, styleCopy, index, 1, 22, transaction);
  }
}

- (id)dropCapStyleAtCharIndex:(unint64_t)index
{
  if (objc_msgSend_WPKindSupportsDropCaps(self, a2, index))
  {
    v6 = objc_msgSend_paragraphIndexAtCharIndex_(self, v5, index);
    v8 = objc_msgSend_dropCapStyleAtParIndex_(self, v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setDropCapStyle:(id)style forCharRange:(_NSRange)range undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  styleCopy = style;
  if ((objc_msgSend_WPKindSupportsDropCaps(self, v9, v10) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage setDropCapStyle:forCharRange:undoTransaction:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 5021, 0, "Drop caps not supported for wpKind %ld", *(self + 302) & 0xF);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (objc_msgSend_WPKindSupportsDropCaps(self, v11, v12))
  {
    objc_msgSend_applyObject_toParagraphsInCharRange_forKind_undoTransaction_(self, v20, styleCopy, location, length, 22, transaction);
  }
}

- (void)setDropCapStyle:(id)style forParagraphIndexRange:(_NSRange)range undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  styleCopy = style;
  if ((objc_msgSend_WPKindSupportsDropCaps(self, v9, v10) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage setDropCapStyle:forParagraphIndexRange:undoTransaction:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 5028, 0, "Drop caps not supported for wpKind %ld", *(self + 302) & 0xF);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (objc_msgSend_WPKindSupportsDropCaps(self, v11, v12))
  {
    objc_msgSend_applyObject_toParagraphIndexRange_forKind_undoTransaction_(self, v20, styleCopy, location, length, 22, transaction);
  }
}

- (BOOL)supportsDropCaps
{
  if (!objc_msgSend_WPKindSupportsDropCaps(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_parentInfo(self, v4, v5);
  v7 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_supportsDropCapsInChildStorages(v7, v8, v9, &unk_28862E0E0);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (unint64_t)dropCapStyleCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 22);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)moveDropCapStyleFromParIndex:(unint64_t)index toParIndex:(unint64_t)parIndex undoTransaction:(void *)transaction
{
  if (objc_msgSend_WPKindSupportsDropCaps(self, a2, index))
  {
    v12 = objc_msgSend_dropCapStyleAtParIndex_(self, v9, index);
    if (v12)
    {
      objc_msgSend_setDropCapStyle_atParIndex_undoTransaction_(self, v10, v12, parIndex, transaction);
      objc_msgSend_setDropCapStyle_atParIndex_undoTransaction_(self, v11, 0, index, transaction);
    }
  }
}

- (id)dropCapStyleIfMatchingSelectionExactly:(id)exactly
{
  exactlyCopy = exactly;
  if (objc_msgSend_isValid(exactlyCopy, v5, v6) && (v9 = objc_msgSend_superRange(exactlyCopy, v7, v8), v11 = v10, v12 = objc_msgSend_rangeOfDropCapAtCharIndex_(self, v10, v9), v12 <= v9) && (v15 = &v13[v12], v16 = &v11[v9], &v13[v12] >= v16) && ((isInsertionPoint = objc_msgSend_isInsertionPoint(exactlyCopy, v13, v14), v15 == v16) ? (v19 = isInsertionPoint) : (v19 = 0), (v19 & 1) == 0))
  {
    v20 = objc_msgSend_dropCapStyleAtCharIndex_(self, v18, v9);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)listStyleCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 2);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)listStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 2);
  if (v6 && (v7 = v6, v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, index), v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = v8;
    v9 = TSWPAttributeArray::objectForAttributeIndex(v7, v8);
    if (range)
    {
      range->location = TSWPAttributeArray::rangeForAttributeIndex(v7, v10);
      range->length = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)listStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_textRangeForParagraphAtIndex_(self, a2, index);
  if (range)
  {
    range->location = v6;
    range->length = v7;
  }

  return objc_msgSend_listStyleAtCharIndex_effectiveRange_(self, v7, v6, 0);
}

- (unint64_t)listNumberForParagraphIndex:(unint64_t)index numberingData:(id *)data
{
  objc_msgSend_paragraphEnumeratorAtParIndex_styleProvider_(self, a2, index, 0);
  v7 = objc_msgSend_listNumberForParagraphEnumerator_numberingData_(self, v6, &v9, data);
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v9);
  return v7;
}

- (unint64_t)listNumberForParagraphEnumerator:(const TSWPParagraphEnumerator *)enumerator numberingData:(id *)data
{
  v7 = TSWPParagraphEnumerator::paragraphListStyle(enumerator, a2);
  v11 = TSWPParagraphEnumerator::paragraphLevel(enumerator, v8);
  if (v7)
  {
    v44 = objc_msgSend_labelTypeForLevel_(v7, v9, v11);
  }

  else
  {
    v44 = 0;
  }

  v13 = objc_msgSend_baseStyleForTopicNumbers(v7, v9, v10);
  if (v44 != 3 || (v14 = TSWPParagraphEnumerator::paragraphTextRange(enumerator, v12), (objc_msgSend_hasPartitionableAttachmentAtStartOfTextRange_(self, v15, v14, v15) & 1) != 0))
  {
    v16 = 0;
    goto LABEL_7;
  }

  v16 = TSWPParagraphEnumerator::paragraphListStart(enumerator, v12);
  if (!v16)
  {
    v42 = v11;
    v43 = v13;
    TSWPParagraphEnumerator::TSWPParagraphEnumerator(&v45, enumerator);
    v41 = 0;
    for (i = 1; ; i = v16 + 1)
    {
      if (TSWPParagraphEnumerator::isFirstParagraph(&v45))
      {
        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v45);
        v16 = i + (v41 & 1);
        v11 = v42;
        v13 = v43;
        break;
      }

      TSWPParagraphEnumerator::operator--(&v45, v20);
      v22 = TSWPParagraphEnumerator::paragraphListStyle(&v45, v21);
      v25 = TSWPParagraphEnumerator::paragraphLevel(&v45, v23);
      if (v22)
      {
        v26 = objc_msgSend_labelTypeForLevel_(v22, v24, v25);
      }

      else
      {
        v26 = 0;
      }

      v27 = TSWPParagraphEnumerator::paragraphTextRange(&v45, v24);
      hasPartitionableAttachmentAtStartOfTextRange = objc_msgSend_hasPartitionableAttachmentAtStartOfTextRange_(self, v28, v27, v28);
      v31 = objc_msgSend_dropCapStyleAtCharIndex_(self, v30, v27);

      if (v26 == 3)
      {
        v34 = hasPartitionableAttachmentAtStartOfTextRange;
      }

      else
      {
        v34 = 1;
      }

      if ((v34 & 1) != 0 || (objc_msgSend_baseStyleForTopicNumbers(v22, v32, v33), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_baseStyleForTopicNumbers(v43, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), v38, v35, v35 != v38) || v31)
      {
        v16 = i - 1;
      }

      else
      {
        if (v25 < v42)
        {
          v16 = i + (v41 & 1);
LABEL_32:
          v11 = v42;
          v13 = v43;

          TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v45);
          break;
        }

        if (v25 > v42)
        {
          v16 = i - 1;
          v41 = 1;
        }

        else
        {
          v40 = TSWPParagraphEnumerator::paragraphListStart(&v45, v39);
          v16 = v40 + i;
          if (v40)
          {
            goto LABEL_32;
          }

          v41 = 0;
        }
      }
    }
  }

LABEL_7:
  v17 = TSWPParagraphEnumerator::paragraphListStart(enumerator, v12);
  if (data)
  {
    data->var0 = v44;
    data->var1 = v11;
    data->var2 = v17 == 0;
  }

  return v16;
}

- (void)setListStart:(unint64_t)start forCharRange:(_NSRange)range undoTransaction:(void *)transaction
{
  v8 = objc_msgSend_paragraphIndexRangeForCharRange_(self, a2, range.location, range.length);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (HIDWORD(start))
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPStorage setListStart:forCharRange:undoTransaction:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 5227, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      start = 0xFFFFFFFFLL;
    }

    objc_msgSend_applyDataValue_toParagraphIndexRange_forKind_undoTransaction_(self, v9, start, v10, v11, 11, transaction);
  }
}

- (unint64_t)listStartAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 11);
  if (v4)
  {
    v6 = v4;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (*(v4 + 24))
    {
      v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPStorage listStartAtCharIndex:]");
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 5238, 0, "paragraphStartAtCharIndex: no paragraph table.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      }

      return *TSWPAttributeRecord::paragraphData(*(v6 + 8) + 16 * v9, *(v6 + 28));
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage listStartAtCharIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 5234, 0, "paragraphLevelAtCharIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (unint64_t)listStartAtParIndex:(unint64_t)index
{
  v5 = objc_msgSend_charIndexForParagraphAtIndex_(self, a2, index);

  return objc_msgSend_listStartAtCharIndex_(self, v4, v5);
}

- (void)paragraphFlags:(unsigned __int16 *)flags andLevel:(unint64_t *)level atCharIndex:(unint64_t)index
{
  v8 = objc_msgSend_attributeArrayForKind_(self, a2, 1);
  if (v8)
  {
    v9 = v8;
    v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, index);
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage paragraphFlags:andLevel:atCharIndex:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 5263, 0, "paragraphFlagsAtCharIndex: no paragraph table.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = TSWPAttributeRecord::paragraphData(&v9->var1[v11], *(v9 + 28));
    v20 = *v19;
    v21 = v19[1];
    if (flags)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    if (flags)
    {
LABEL_5:
      *flags = v21;
    }
  }

  if (level)
  {
    *level = v20;
  }
}

- (unsigned)paragraphFlagsAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 1);
  if (v4)
  {
    v6 = v4;
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage paragraphFlagsAtCharIndex:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 5282, 0, "paragraphFlagsAtCharIndex: no paragraph table.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    return *(TSWPAttributeRecord::paragraphData(&v6->var1[v8], *(v6 + 28)) + 2);
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage paragraphFlagsAtCharIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 5278, 0, "paragraphFlagsAtCharIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    return 0;
  }
}

- (void)setParagraphFlags:(unsigned __int16)flags forCharRange:(_NSRange)range undoTransaction:(void *)transaction
{
  flagsCopy = flags;
  objc_msgSend_paragraphLevelAtCharIndex_(self, a2, range.location);

  MEMORY[0x2821F9670](self, sel_applyFlags_level_toParagraphsInCharRange_undoTransaction_, flagsCopy);
}

- (unint64_t)paragraphLevelAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 1);
  if (!v4)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage paragraphLevelAtCharIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 5298, 0, "paragraphLevelAtCharIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    return 0;
  }

  v6 = v4;
  if (!*(v4 + 24))
  {
    return 0;
  }

  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage paragraphLevelAtCharIndex:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 5302, 0, "paragraphFlagsAtCharIndex: no paragraph table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  return *TSWPAttributeRecord::paragraphData(*(v6 + 8) + 16 * v8, *(v6 + 28));
}

- (unint64_t)paragraphLevelAtParIndex:(unint64_t)index
{
  v5 = objc_msgSend_charIndexForParagraphAtIndex_(self, a2, index);

  return objc_msgSend_paragraphLevelAtCharIndex_(self, v4, v5);
}

- (void)setParagraphLevel:(unint64_t)level forCharRange:(_NSRange)range undoTransaction:(void *)transaction
{
  v6 = objc_msgSend_paragraphFlagsAtCharIndex_(self, a2, range.location);

  MEMORY[0x2821F9670](self, sel_applyFlags_level_toParagraphsInCharRange_undoTransaction_, v6);
}

- (void)setParagraphLevel:(unint64_t)level atParIndex:(unint64_t)index undoTransaction:(void *)transaction
{
  v6 = objc_msgSend_textRangeForParagraphAtIndex_(self, a2, index);
  v8 = objc_msgSend_paragraphFlagsAtCharIndex_(self, v7, v6);

  MEMORY[0x2821F9670](self, sel_applyFlags_level_toParagraphsInCharRange_undoTransaction_, v8);
}

- (unint64_t)characterStyleAttributeCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 3);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)characterStyleAtCharIndex:(unint64_t)index left:(BOOL)left effectiveRange:(_NSRange *)range
{
  leftCopy = left;
  indexCopy = index;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage characterStyleAtCharIndex:left:effectiveRange:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 5347, 0, "charIndex has an uninitialized value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_attributeArrayForKind_(self, a2, 3);
  if (!v16 || (v19 = v16, !*(v16 + 24)))
  {
    if (range)
    {
      v22 = objc_msgSend_range(self, v17, v18);
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (leftCopy)
  {
    if (!indexCopy)
    {
      goto LABEL_9;
    }

    --indexCopy;
  }

  v20 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v16, indexCopy);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    if (range)
    {
      v21 = TSWPAttributeArray::charIndexForAttributeIndex(v19, 0);
      v22 = 0;
LABEL_13:
      v23 = 0;
LABEL_14:
      range->location = v22;
      range->length = v21;
      goto LABEL_16;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  v25 = v20;
  v23 = TSWPAttributeArray::objectForAttributeIndex(v19, v20);
  if (range)
  {
    v22 = TSWPAttributeArray::rangeForAttributeIndex(v19, v25);
    goto LABEL_14;
  }

LABEL_16:

  return v23;
}

- (void)applyChangeSet:(id)set tableKind:(unint64_t)kind range:(_NSRange)range undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  setCopy = set;
  v11 = [TSWPStyleDiff alloc];
  v14 = objc_msgSend_context(self, v12, v13);
  v16 = objc_msgSend_initWithContext_changeSet_(v11, v15, v14, setCopy);

  if (kind)
  {
    if (kind == 3)
    {
      objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v17, v16, location, length, 3, 0, transaction);
    }

    else
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPStorage applyChangeSet:tableKind:range:undoTransaction:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 5386, 0, "Unsupported change set table");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }
  }

  else
  {
    v18 = objc_msgSend_variationPropertyMapFromStyle_(setCopy, v17, 0);
    v20 = objc_msgSend_boxedObjectForProperty_(v18, v19, 44);
    v23 = v20;
    if (v20 && objc_msgSend_unsignedIntegerValue(v20, v21, v22) != -1)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage applyChangeSet:tableKind:range:undoTransaction:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 5383, 0, "should not be applying writing direction to a paragraph style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    }

    objc_msgSend_applyObject_toParagraphsInCharRange_forKind_undoTransaction_(self, v21, v16, location, length, 0, transaction);
  }
}

- (void)setCharacterStyle:(id)style range:(_NSRange)range undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  styleCopy = style;
  v11 = objc_msgSend_stylesheet(self, v9, v10);
  v14 = objc_msgSend_defaultCharacterStyle(v11, v12, v13);

  v15 = styleCopy;
  if (v14 == styleCopy)
  {

    v15 = 0;
  }

  v17 = v15;
  objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v15, v15, location, length, 3, 0, transaction);
}

- (id)valueForProperty:(int)property atCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = *&property;
  v9 = objc_msgSend_characterStyleAtCharIndex_left_effectiveRange_(self, a2, index, 0);
  v12 = v9;
  if (v9 && objc_msgSend_definesProperty_(v9, v10, v7))
  {
    v15 = objc_msgSend_boxedValueForProperty_(v12, v10, v7);
    goto LABEL_10;
  }

  v16 = objc_msgSend_properties(TSWPParagraphStyle, v10, v11);
  v18 = objc_msgSend_containsProperty_(v16, v17, v7);

  if (v18)
  {
    v21 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(self, v19, index, range);
    v23 = objc_msgSend_boxedValueForProperty_(v21, v22, v7);
LABEL_8:
    v15 = v23;

    goto LABEL_10;
  }

  v24 = objc_msgSend_properties(TSWPColumnStyle, v19, v20);
  v26 = objc_msgSend_containsProperty_(v24, v25, v7);

  if (v26)
  {
    v21 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(self, v27, index, range);
    v23 = objc_msgSend_valueForProperty_(v21, v28, v7);
    goto LABEL_8;
  }

  v29 = MEMORY[0x277D81150];
  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPStorage valueForProperty:atCharIndex:effectiveRange:]");
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  v33 = String();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v32, 5416, 0, "Bad property sent to storage: %{public}@", v33);

  v15 = 0;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
LABEL_10:
  v37 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);

  if (v15 == v37)
  {

    v15 = 0;
  }

  return v15;
}

- (BOOL)supportsMultipleColumns
{
  v4 = objc_msgSend_parentInfo(self, a2, v2);
  v7 = v4;
  if (v4 && !objc_msgSend_supportsMultipleColumns(v4, v5, v6))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = 0x49u >> (*(self + 302) & 0xF);
  }

  return v8 & 1;
}

- (unint64_t)columnStyleCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 9);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  LODWORD(v5) = objc_msgSend_supportsColumnStyles(self, a2, index);
  if (v5)
  {
    v5 = objc_msgSend_attributeArrayForKind_(self, v6, 9);
    if (v5)
    {
      LOBYTE(v5) = TSWPAttributeArray::exactAttributeIndexForCharIndex(v5, index + 1) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  v5 = objc_msgSend_characterAtIndex_(self, a2, index);
  if ((v5 - 4) < 0xC && ((0x907u >> (v5 - 4)) & 1) != 0 || (hasSectionForParagraphBreakAtCharIndex = IsParagraphBreakingCharacter(v5)) != 0 && ((objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(self, v7, index) & 1) != 0 || (hasSectionForParagraphBreakAtCharIndex = objc_msgSend_hasSectionForParagraphBreakAtCharIndex_(self, v8, index)) != 0))
  {
    LOBYTE(hasSectionForParagraphBreakAtCharIndex) = 1;
  }

  return hasSectionForParagraphBreakAtCharIndex;
}

- (id)columnStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = objc_msgSend_attributeArrayForKind_(self, a2, 9);
  if (v7)
  {
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, index);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_msgSend_columnStyleAtColumnStyleIndex_effectiveRange_(self, v9, v8, range);
    }
  }

  return v7;
}

- (id)columnStyleAtColumnStyleIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 9);
  if (v6)
  {
    v8 = v6;
    v9 = v6[6];
    if (v9 <= index)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage columnStyleAtColumnStyleIndex:effectiveRange:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 5490, 0, "Bad columnStyleIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      v9 = v8[6];
    }

    if (v9 <= index)
    {
      v6 = 0;
    }

    else
    {
      if (range)
      {
        range->location = TSWPAttributeArray::rangeForAttributeIndex(v8, index);
        range->length = v17;
      }

      v6 = TSWPAttributeArray::objectForAttributeIndex(v8, index);
    }
  }

  return v6;
}

- (void)styleDidChangeInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_msgSend_didChangeRange_delta_broadcastKind_attributeKindChanges_(self, a2, range.location, range.length, 0, 0, 0);
  v8 = objc_msgSend_paragraphIndexRangeForCharRange_(self, v6, location, length);

  objc_msgSend_didChangeParagraphsInIndexRange_(self, v7, v8, v7);
}

- (void)invalidateForStyle:(id)style
{
  v42 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_288627650, v5, &v37, v41, 16);
  if (v8)
  {
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(&unk_288627650);
        }

        v11 = objc_msgSend_unsignedIntegerValue(*(*(&v37 + 1) + 8 * i), v6, v7);
        v13 = objc_msgSend_attributeArrayForKind_(self, v12, v11);
        if (v13)
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = sub_276D27D70;
          v34[3] = &unk_27A6F3908;
          v35 = styleCopy;
          selfCopy = self;
          TSWPAttributeArray::enumerateObjectAttributes(v13, v34);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_288627650, v6, &v37, v41, 16);
    }

    while (v8);
  }

  v14 = objc_msgSend_attributeArrayForKind_(self, v6, 4);
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 24);
    if (v16)
    {
      for (j = 0; j != v16; ++j)
      {
        v18 = TSWPAttributeArray::objectForAttributeIndex(v15, j);
        v21 = v18;
        if (v18)
        {
          if (objc_msgSend_shouldInvalidateWhenTextPropertiesChange(v18, v19, v20))
          {
            v22 = TSWPAttributeArray::charIndexForAttributeIndex(v15, j);
            if (v22 < objc_msgSend_length(self, v23, v24))
            {
              if (objc_msgSend_needsUpdateForStyleChangeToStorage_charIndex_(v21, v25, self, v22))
              {
                objc_msgSend_updateForStyleChangeToStorage_charIndex_(v21, v26, self, v22);
              }
            }
          }
        }

        else
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPStorage invalidateForStyle:]");
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 5533, 0, "invalid nil value for '%{public}s'", "attachment");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
        }
      }
    }
  }
}

- (unint64_t)sectionCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 8);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (BOOL)hasSectionForParagraphBreakAtCharIndex:(unint64_t)index
{
  if ((*(self + 302) & 0xF) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = objc_msgSend_attributeArrayForKind_(self, a2, 8);
    if (v3)
    {
      LOBYTE(v3) = TSWPAttributeArray::exactAttributeIndexForCharIndex(v3, index + 1) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (id)sectionAtSectionIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 8);
  if (v6)
  {
    v7 = v6;
    if (range)
    {
      range->location = TSWPAttributeArray::rangeForAttributeIndex(v6, index);
      range->length = v8;
    }

    v6 = TSWPAttributeArray::objectForAttributeIndex(v7, index);
  }

  return v6;
}

- (_NSRange)textRangeForSectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 8);
  if (v5)
  {
    v6 = v5;
    v7 = TSWPAttributeArray::rangeForAttributeIndex(v5, location);
    v9 = v8;
    v16.location = TSWPAttributeArray::rangeForAttributeIndex(v6, &location[length - 1]);
    v16.length = v10;
    v14.location = v7;
    v14.length = v9;
    v13 = NSUnionRange(v14, v16);
    v12 = v13.length;
    v11 = v13.location;
  }

  else
  {
    v11 = *MEMORY[0x277D81490];
    v12 = *(MEMORY[0x277D81490] + 8);
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)insertSectionBreakAtCharIndex:(unint64_t)index replaceParagraphBreak:(BOOL)break sectionToInsert:(id)insert changeSession:(id)session dolcContext:(id)context undoTransaction:(void *)transaction
{
  breakCopy = break;
  insertCopy = insert;
  sessionCopy = session;
  contextCopy = context;
  v14 = 0;
  v15 = *MEMORY[0x277D81490];
  range1 = *(MEMORY[0x277D81490] + 8);
  v16 = index + 1;
  if (index && breakCopy)
  {
    v17 = objc_msgSend_characterAtIndex_(self, v13, index - 1);
    if (IsParagraphBreakingCharacter(v17))
    {
      v18 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(self, v13, index, 0);
      v14 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(self, v19, index, 0);
      v47 = objc_msgSend_listStartAtCharIndex_(self, v20, index);
      objc_msgSend_deleteRange_undoTransaction_(self, v21, index - 1, 1, transaction);
      v16 = index--;
    }

    else
    {
      v14 = 0;
      v18 = 0;
      v47 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0;
  }

  if (!insertCopy)
  {
    v22 = objc_msgSend_sectionAtCharIndex_effectiveRange_(self, v13, index, 0);
    v25 = objc_msgSend_context(self, v23, v24);
    insertCopy = objc_msgSend_copyWithContext_(v22, v26, v25);
  }

  v27 = objc_msgSend_insertSection_atCharIndex_dolcContext_undoTransaction_changeSession_(self, v13, insertCopy, index, 0, transaction, sessionCopy, v47);
  location = v27;
  v30 = length;
  v31 = *(MEMORY[0x277D81490] + 8);
  if (v15 != *MEMORY[0x277D81490] || range1 != v31)
  {
    if (v27 == *MEMORY[0x277D81490] && length == v31)
    {
      location = v15;
      v30 = range1;
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v54.location = v15;
    v54.length = range1;
    v58.location = location;
    v58.length = v30;
    v34 = NSUnionRange(v54, v58);
    length = v34.length;
    location = v34.location;
    v30 = v34.length;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_21:
  objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(self, length, v18, v16, 1, transaction);
  v36 = objc_msgSend_textRangeForParagraphAtCharIndex_(self, v35, v16);
  v37.location = v36;
  v37.length = length;
  v38 = *(MEMORY[0x277D81490] + 8);
  if (location == *MEMORY[0x277D81490] && v30 == v38)
  {
    location = v36;
    v30 = length;
    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_28:
    objc_msgSend_setListStyle_forCharRange_undoTransaction_(self, length, v14, v16, 1, transaction);
    objc_msgSend_setListStart_forCharRange_undoTransaction_(self, v39, v48, v16, 1, transaction);
    goto LABEL_29;
  }

  if (v36 == *MEMORY[0x277D81490] && length == v38)
  {
LABEL_27:
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v56.location = location;
  v56.length = v30;
  v46 = NSUnionRange(v56, v37);
  length = v46.length;
  location = v46.location;
  v30 = v46.length;
  if (v14)
  {
    goto LABEL_28;
  }

LABEL_29:
  v40 = 1;
  v41 = *(MEMORY[0x277D81490] + 8);
  if (location != *MEMORY[0x277D81490] || v30 != v41)
  {
    if (index == *MEMORY[0x277D81490] && v41 == 1)
    {
      index = location;
      v40 = v30;
    }

    else
    {
      v55.location = location;
      v55.length = v30;
      v59.location = index;
      v59.length = 1;
      v43 = NSUnionRange(v55, v59);
      index = v43.location;
      v40 = v43.length;
    }
  }

  indexCopy = index;
  v45 = v40;
  result.length = v45;
  result.location = indexCopy;
  return result;
}

- (_NSRange)replaceSectionAtSectionIndex:(unint64_t)index withSection:(id)section dolcContext:(id)context undoTransaction:(void *)transaction
{
  sectionCopy = section;
  contextCopy = context;
  v12 = MEMORY[0x277D81490];
  v13 = *MEMORY[0x277D81490];
  v14 = *(MEMORY[0x277D81490] + 8);
  v16 = objc_msgSend_attributeArrayForKind_(self, v15, 8);
  if (v16 && *(v16 + 24) > index)
  {
    v13 = TSWPAttributeArray::rangeForAttributeIndex(v16, index);
    if (index)
    {
      v13 = objc_msgSend_insertSectionBreakAtCharIndex_replaceParagraphBreak_sectionToInsert_changeSession_dolcContext_undoTransaction_(self, v18, v13, 1, sectionCopy, 0, contextCopy, transaction);
      v14 = v17;
    }

    else
    {
      v14 = v18;
      objc_msgSend_applyObject_toParagraphsInCharRange_forKind_undoTransaction_(self, v18, sectionCopy, v13, v18, 8, transaction);
    }
  }

  if (v13 == *v12 && v14 == v12[1])
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPStorage replaceSectionAtSectionIndex:withSection:dolcContext:undoTransaction:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 5671, 0, "Expected the the requested section index (%tu) to replace be within the section attribute array", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = v13;
  v28 = v14;
  result.length = v28;
  result.location = v27;
  return result;
}

- (unint64_t)sectionIndexForCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 8);
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index);
}

- (unint64_t)sectionIndexForSection:(id)section
{
  sectionCopy = section;
  v6 = objc_msgSend_attributeArrayForKind_(self, v5, 8);
  if (v6)
  {
    v7 = (*(*v6 + 112))(v6, sectionCopy, 0);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)sectionAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = objc_msgSend_attributeArrayForKind_(self, a2, 8);
  if (v7)
  {
    v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v7, index);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(self, v9, v8, range);
    }
  }

  return v7;
}

- (_NSRange)insertSection:(id)section atCharIndex:(unint64_t)index dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session
{
  sectionCopy = section;
  contextCopy = context;
  sessionCopy = session;
  objc_msgSend_splitSmartFieldAtCharIndex_lengthToInsert_dolcContext_undoTransaction_(self, v15, index, 1, contextCopy, transaction);
  objc_msgSend_insertSpecialCharacter_object_kind_range_dolcContext_undoTransaction_changeSession_(self, v16, 4, sectionCopy, 8, index, 0, contextCopy, transaction, sessionCopy);
  v19 = objc_msgSend_attributeArrayForKind_(self, v17, 8);
  if (!v19)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage insertSection:atCharIndex:dolcContext:undoTransaction:changeSession:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 5717, 0, "insertSection: bad attribute array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v28 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v19, index + 1);
  if (v28 == 0x7FFFFFFFFFFFFFFFLL || (TSWPAttributeArray::objectForAttributeIndex(v19, v28), v29 = objc_claimAutoreleasedReturnValue(), v29, v29 != sectionCopy))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPStorage insertSection:atCharIndex:dolcContext:undoTransaction:changeSession:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 5720, 0, "insertSection: bad object after insertion.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  v37 = TSWPAttributeArray::rangeForAttributeIndex(v19, v28);
  v39 = v38;

  v40 = v37;
  v41 = v39;
  result.length = v41;
  result.location = v40;
  return result;
}

- (void)nonUndoableAppendSection:(id)section charIndex:(unint64_t)index
{
  sectionCopy = section;
  v7 = objc_msgSend_sectionIndexForCharIndex_(self, v6, index);
  if (v7 + 1 != objc_msgSend_sectionCount(self, v8, v9))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage nonUndoableAppendSection:charIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 5728, 0, "Not appending at end");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_length(self, v10, v11);
  objc_msgSend_applyObject_toParagraphsInCharRange_forKind_undoTransaction_(self, v20, sectionCopy, index, v19 - index, 8, 0);
}

- (unint64_t)footnoteCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 5);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (unint64_t)footnoteIndexForCharIndex:(unint64_t)index
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 5);
  if (result)
  {
    v5 = result;
    if (*(result + 24) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index), v6 != 0x7FFFFFFFFFFFFFFFLL))
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
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 5);
  if (!v5 || (v8 = v5, !*(v5 + 24)) || (v9 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index), v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9, TSWPAttributeArray::charIndexForAttributeIndex(v8, v9) != index) || (TSWPAttributeArray::objectForAttributeIndex(v8, v10), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_msgSend_wpKind(self, v6, v7) == 2 && (v13 = objc_msgSend_attributeArrayForKind_(self, v12, 4)) != 0 && (v14 = v13, *(v13 + 24)) && (v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, index), v15 != 0x7FFFFFFFFFFFFFFFLL) && (v16 = v15, TSWPAttributeArray::charIndexForAttributeIndex(v14, v15) == index))
    {
      v17 = TSWPAttributeArray::objectForAttributeIndex(v14, v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v17;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)footnoteMarkAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  v5 = v4;
  if (v4)
  {
    if (*(v4 + 24) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == index))
    {
      objc_opt_class();
      v8 = TSWPAttributeArray::objectForAttributeIndex(v5, v7);
      v5 = TSUDynamicCast();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 5);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 24) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == index))
    {
      v4 = TSWPAttributeArray::objectForAttributeIndex(v5, v7);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)footnoteAtFootnoteIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex
{
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 5);
  v7 = v6;
  if (v6 && *(v6 + 24) > index)
  {
    v8 = TSWPAttributeArray::objectForAttributeIndex(v6, index);
    if (charIndex)
    {
      *charIndex = TSWPAttributeArray::charIndexForAttributeIndex(v7, index);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_NSRange)footnoteRangeForTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 5);
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
  v4 = objc_msgSend_footnoteRangeForTextRange_(self, a2, range.location, range.length);
  if (v4 >= &v5[v4])
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = 0;
  do
  {
    v9 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(self, v5, v6, 0);
    v12 = objc_msgSend_customMarkString(v9, v10, v11);

    if (!v12)
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
  footnoteCopy = footnote;
  v6 = objc_msgSend_attributeArrayForKind_(self, v5, 5);
  if (v6)
  {
    v7 = (*(*v6 + 112))(v6, footnoteCopy, 0);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (unint64_t)footnoteIndexForFootnoteStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPStorage footnoteIndexForFootnoteStorage:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 5876, 0, "invalid nil value for '%{public}s'", "footnoteStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (objc_msgSend_wpKind(storageCopy, v4, v5) != 2)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPStorage footnoteIndexForFootnoteStorage:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 5877, 0, "This isn't a footnote storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_opt_class();
  v24 = objc_msgSend_owningAttachment(storageCopy, v22, v23);
  v25 = TSUDynamicCast();

  if (!v25)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPStorage footnoteIndexForFootnoteStorage:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 5880, 0, "invalid nil value for '%{public}s'", "footnoteAttachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v34 = objc_msgSend_footnoteIndexForFootnote_(self, v26, v25);

  return v34;
}

- (id)footnoteStorages
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  v8 = objc_msgSend_footnoteCount(self, v5, v6);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(self, v7, i, 0);
      v14 = objc_msgSend_containedStorage(v10, v11, v12);
      if (v14)
      {
        objc_msgSend_addObject_(v4, v13, v14);
      }

      else
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPStorage footnoteStorages]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 5893, 0, "invalid nil value for '%{public}s'", "footnoteStorage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }
    }
  }

  return v4;
}

- (unint64_t)findCharIndexForFootnoteAttachment:(id)attachment withHintIndex:(unint64_t *)index
{
  attachmentCopy = attachment;
  v8 = objc_msgSend_attributeArrayForKind_(self, v7, 5);
  v9 = v8;
  if (v8)
  {
    if (index)
    {
      v10 = *index;
    }

    else
    {
      v10 = 0;
    }

    v12 = (*(*v8 + 112))(v8, attachmentCopy, v10);
    if (index)
    {
      *index = v12;
    }

    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = TSWPAttributeArray::charIndexForAttributeIndex(v9, v12);
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)invalidateFootnoteAttachmentCharIndexes
{
  v3 = objc_msgSend_attributeArrayForKind_(self, a2, 5);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 24);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = TSWPAttributeArray::charIndexForAttributeIndex(v4, i);
        objc_msgSend_broadcastStorage_didChangeRange_delta_broadcastKind_(self->_broadcaster, v8, self, v7, 1, 0, 1);
      }
    }
  }
}

- (void)invalidatePageCountAttachmentCharIndexes:(BOOL)indexes
{
  indexesCopy = indexes;
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  if (v5)
  {
    v7 = v5;
    v8 = *(v5 + 24);
    if (v8)
    {
      v9 = 0;
      v10 = !indexesCopy;
      do
      {
        v11 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v6, v9, 0);
        if (objc_msgSend_changesWithPageCount(v11, v12, v13))
        {
          v16 = objc_msgSend_stringEquivalent(v11, v14, v15);
          if (objc_msgSend_length(v16, v17, v18))
          {
            v21 = objc_msgSend_intValue(v16, v19, v20);
            if (v21 == 0x7FFFFFFF)
            {
              v23 = MEMORY[0x277D81150];
              v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPStorage invalidatePageCountAttachmentCharIndexes:]");
              v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 5962, 0, "Invalid page count.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
            }

            else
            {
              v30 = 10;
              if (v21 >= 11)
              {
                do
                {
                  v30 *= 10;
                }

                while (v30 < v21);
              }

              if (v30 == v21 + v10)
              {
                v31 = TSWPAttributeArray::charIndexForAttributeIndex(v7, v9);
                objc_msgSend_broadcastStorage_didChangeRange_delta_broadcastKind_(self->_broadcaster, v32, self, v31, 1, 0, 1);
              }
            }
          }
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }
}

- (void)invalidateCharIndexForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  CharIndex = objc_msgSend_findCharIndex(attachmentCopy, v4, v5);
  if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_broadcastStorage_didChangeRange_delta_broadcastKind_(self->_broadcaster, v6, self, CharIndex, 1, 0, 1);
  }
}

- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  footnoteCopy = footnote;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  if (isKindOfClass)
  {
    v12 = 14;
  }

  else
  {
    v12 = -4;
  }

  if ((isKindOfClass & 1) == 0 && objc_msgSend_isAnchored(footnoteCopy, v9, v10) && (objc_msgSend_allowsElementKind_(self, v9, 0x40000) & 1) == 0)
  {
    v28 = objc_msgSend_p_kindDescription(self, v9, v13);
    TSUSetCrashReporterInfo();

    v19 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage insertAttachmentOrFootnote:range:]", "[TSWPStorage insertAttachmentOrFootnote:range:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 5990, v28);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    v26 = objc_msgSend_p_kindDescription(self, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v21, v23, 5990, 1, "Unsupported: inserting anchored attachment into %{public}@", v26);

    TSUCrashBreakpoint();
    abort();
  }

  v14 = objc_msgSend_insertSpecialCharacter_object_kind_range_dolcContext_undoTransaction_changeSession_(self, v9, v12, footnoteCopy, v11, location, length, 0, 0, 0);
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session
{
  v7 = objc_msgSend_insertAttachmentOrFootnote_range_placementIndex_dolcContext_undoTransaction_changeSession_(self, a2, footnote, range.location, range.length, 0xFFFFFFFFLL, context, transaction, session);
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)insertAttachmentOrFootnote:(id)footnote range:(_NSRange)range placementIndex:(int)index dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session
{
  v10 = *&index;
  length = range.length;
  location = range.location;
  footnoteCopy = footnote;
  contextCopy = context;
  sessionCopy = session;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = 5;
  }

  else
  {
    v19 = 4;
  }

  if (isKindOfClass)
  {
    v20 = objc_msgSend_insertSpecialCharacter_object_kind_range_placementIndex_dolcContext_undoTransaction_changeSession_(self, v18, 14, footnoteCopy, v19, location, length, v10, contextCopy, transaction, sessionCopy);
  }

  else
  {
    v20 = objc_msgSend_insertSpecialCharacter_object_kind_range_placementIndex_dolcContext_undoTransaction_changeSession_(self, v18, 65532, footnoteCopy, v19, location, length, v10, contextCopy, transaction, sessionCopy);
  }

  v22 = v20;
  v23 = v21;

  v24 = v22;
  v25 = v23;
  result.length = v25;
  result.location = v24;
  return result;
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  v5 = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  if (!v5 || (v7 = v5, !*(v5 + 24)) || (v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index), v8 == 0x7FFFFFFFFFFFFFFFLL) || (v9 = v8, TSWPAttributeArray::charIndexForAttributeIndex(v7, v8) != index) || (TSWPAttributeArray::objectForAttributeIndex(v7, v9), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = objc_msgSend_attributeArrayForKind_(self, v6, 5);
    if (v10)
    {
      v11 = v10;
      if (*(v10 + 24) && (v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, index), v12 != 0x7FFFFFFFFFFFFFFFLL) && (v13 = v12, TSWPAttributeArray::charIndexForAttributeIndex(v11, v12) == index))
      {
        v10 = TSWPAttributeArray::objectForAttributeIndex(v11, v13);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (BOOL)hasPartitionableAttachmentAtStartOfTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276D29C64;
  v12[3] = &unk_27A6F3928;
  rangeCopy = range;
  v8 = _Block_copy(v12);
  if (length)
  {
    if (objc_msgSend_hasTrackedChanges(self, v6, v7))
    {
      v10 = objc_msgSend_filteredStorageRemovingDeletionsFromStorage_subRange_(TSWPFilteredStorage, v9, self, location, length);
      LOBYTE(length) = v8[2](v8, v10);
    }

    else
    {
      LOBYTE(length) = v8[2](v8, self);
    }
  }

  return length;
}

- (unint64_t)findCharacterIndexForContainedInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_parentInfo(infoCopy, v5, v6);
  v8 = infoCopy;
  v10 = v8;
  if (!v7 || v7 == self)
  {
    v11 = v8;
    if (!v7)
    {
LABEL_17:
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = v8;
    do
    {
      v12 = v7;
      v7 = objc_msgSend_parentInfo(v12, v13, v14);

      if (v7 == self)
      {
        v15 = v12;

        v11 = v15;
      }
    }

    while (v7 && v7 != self);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v16 = objc_msgSend_attributeArrayForKind_(self, v9, 4);
  v17 = v16;
  if (!v16 || !*(v16 + 24))
  {
    goto LABEL_17;
  }

  v18 = 0;
  while (1)
  {
    v19 = TSWPAttributeArray::objectForAttributeIndex(v17, v18);
    if (objc_msgSend_isDrawable(v19, v20, v21))
    {
      v24 = objc_msgSend_drawable(v19, v22, v23);
      v25 = TSUProtocolCast();

      if (v25 == v11)
      {
        break;
      }
    }

    if (++v18 >= *(v17 + 24))
    {
      goto LABEL_17;
    }
  }

  v26 = TSWPAttributeArray::charIndexForAttributeIndex(v17, v18);

LABEL_18:
  return v26;
}

- (unint64_t)attachmentCount
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)attachmentAtAttachmentIndex:(unint64_t)index outCharIndex:(unint64_t *)charIndex
{
  v6 = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  v7 = v6;
  if (v6 && *(v6 + 24) > index)
  {
    v8 = TSWPAttributeArray::objectForAttributeIndex(v6, index);
    if (charIndex)
    {
      *charIndex = TSWPAttributeArray::charIndexForAttributeIndex(v7, index);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 24) && (v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v4, index), v6 != 0x7FFFFFFFFFFFFFFFLL) && (v7 = v6, TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) == index))
    {
      v4 = TSWPAttributeArray::objectForAttributeIndex(v5, v7);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (unint64_t)attachmentIndexAtCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (*(v4 + 24))
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

- (void)nonUndoableReplaceWithAttachment:(id)attachment forAttachmentIndex:(unint64_t)index dolcContext:(id)context
{
  attachmentCopy = attachment;
  contextCopy = context;
  v10 = objc_msgSend_attributeArrayForKind_(self, v9, 4);
  if (v10 && *(v10 + 24) > index)
  {
    TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(v10, attachmentCopy, index, contextCopy, 0);
  }
}

- (unint64_t)attachmentIndexForInsertionAtCharIndex:(unint64_t)index
{
  result = objc_msgSend_attributeArrayForKind_(self, a2, 4);
  if (result)
  {
    v5 = result;
    v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, index);
    if (v6 >= *(v5 + 24) || TSWPAttributeArray::charIndexForAttributeIndex(v5, v6) >= index)
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
      return (v6 + 1);
    }
  }

  return result;
}

- (void)enumerateAttachmentsOfClass:(Class)class inTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (objc_opt_class() == class)
  {
    v11 = objc_msgSend_attributeArrayForKind_(self, v10, 5);
  }

  else
  {
    v11 = objc_msgSend_attributeArrayForKind_(self, v10, 4);
  }

  v12 = v11;
  if (v11)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_276D2A338;
    v13[3] = &unk_27A6F3950;
    v16 = location;
    v17 = length;
    classCopy = class;
    v14 = blockCopy;
    v15 = v19;
    TSWPAttributeArray::enumerateObjectAttributesInCharacterRange(v12, location, length, v13);

    _Block_object_dispose(v19, 8);
  }
}

- (void)enumerateAttachmentsInTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v7 = objc_opt_class();
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(self, v8, v7, location, length, blockCopy);
}

- (void)enumerateFootnoteAttachmentsInTextRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v7 = objc_opt_class();
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(self, v8, v7, location, length, blockCopy);
}

- (_NSRange)attachmentIndexRangeForTextRange:(_NSRange)range
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = sub_276D2A64C;
  v13 = nullsub_1;
  v14 = &unk_276FDE562;
  v15 = xmmword_276F98AE0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276D2A65C;
  v8[3] = &unk_27A6F3978;
  v8[4] = &v9;
  objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(self, a2, range.location, range.length, v8);
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

- (unint64_t)findCharIndexForAttachment:(id)attachment withHintIndex:(unint64_t *)index
{
  attachmentCopy = attachment;
  v8 = objc_msgSend_attributeArrayForKind_(self, v7, 4);
  v9 = v8;
  if (v8)
  {
    if (index)
    {
      v10 = *index;
    }

    else
    {
      v10 = 0;
    }

    v12 = (*(*v8 + 112))(v8, attachmentCopy, v10);
    if (index)
    {
      *index = v12;
    }

    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = TSWPAttributeArray::charIndexForAttributeIndex(v9, v12);
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards
{
  v4 = MEMORY[0x2821F9670](self, sel_attachmentRangeForCharIndex_forwards_attributeKind_, index);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)attachmentRangeForCharIndex:(unint64_t)index forwards:(BOOL)forwards attributeKind:(unint64_t)kind
{
  forwardsCopy = forwards;
  if ((kind & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage attachmentRangeForCharIndex:forwards:attributeKind:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 6243, 0, "Bad attribute kind passed into attachmentRangeForCharIndex::: method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_attributeArrayForKind_(self, a2, kind);
  if (!v16 || (v19 = v16, !*(v16 + 24)))
  {
    if (!forwardsCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v20 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v16, index);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (forwardsCopy)
    {
      v21 = v19;
      v17 = 0;
LABEL_8:
      v22 = TSWPAttributeArray::charIndexForAttributeIndex(v21, v17);
LABEL_11:
      v23 = v22;
      indexCopy2 = index;
      index = v23 - index;
      goto LABEL_21;
    }

LABEL_20:
    indexCopy2 = 0;
    goto LABEL_21;
  }

  v25 = v20;
  v26 = TSWPAttributeArray::charIndexForAttributeIndex(v19, v20);
  if (forwardsCopy)
  {
    if (v26 == index)
    {
      indexCopy2 = index;
      goto LABEL_19;
    }

    v17 = v25 + 1;
    if ((v25 + 1) < *(v19 + 24))
    {
      v21 = v19;
      goto LABEL_8;
    }

LABEL_10:
    v22 = objc_msgSend_length(self, v17, v18);
    goto LABEL_11;
  }

  if (v26 == index)
  {
    if (!v25)
    {
      goto LABEL_20;
    }

    v27 = TSWPAttributeArray::charIndexForAttributeIndex(v19, v25 - 1);
    indexCopy2 = index - 1;
    if (v27 != index - 1)
    {
      indexCopy2 = v27 + 1;
      index -= v27 + 1;
      goto LABEL_21;
    }

LABEL_19:
    index = 1;
    goto LABEL_21;
  }

  indexCopy2 = TSWPAttributeArray::charIndexForAttributeIndex(v19, v25);
  v29 = index - (indexCopy2 + 1);
  if (indexCopy2 == index - 1)
  {
    index = 1;
  }

  else
  {
    ++indexCopy2;
    index = v29;
  }

LABEL_21:
  indexCopy3 = index;
  result.length = indexCopy3;
  result.location = indexCopy2;
  return result;
}

- (BOOL)anchoredDrawableAttachmentCharacterAtCharIndex:(unint64_t)index
{
  if (objc_msgSend_characterAtIndex_(self, a2, index) != 65532)
  {
    return 0;
  }

  v6 = objc_msgSend_attachmentAtCharIndex_(self, v5, index);
  if (objc_msgSend_isDrawable(v6, v7, v8))
  {
    isAnchored = objc_msgSend_isAnchored(v6, v9, v10);
  }

  else
  {
    isAnchored = 0;
  }

  return isAnchored;
}

- (unint64_t)charIndexBeforeAnyAnchoredAttachmentsAtCharIndex:(unint64_t)index
{
  indexCopy = index;
  if (index - 1 < objc_msgSend_length(self, a2, index))
  {
    do
    {
      v6 = indexCopy - 1;
      if (!objc_msgSend_anchoredDrawableAttachmentCharacterAtCharIndex_(self, v5, indexCopy - 1))
      {
        break;
      }

      --indexCopy;
    }

    while (v6);
  }

  return indexCopy;
}

- (unint64_t)charIndexAfterAnyAnchoredAttachmentsAtCharIndex:(unint64_t)index
{
  indexCopy = index;
  if (objc_msgSend_length(self, a2, index) >= index && objc_msgSend_length(self, v5, v6) > indexCopy)
  {
    do
    {
      if (!objc_msgSend_anchoredDrawableAttachmentCharacterAtCharIndex_(self, v7, indexCopy))
      {
        break;
      }

      ++indexCopy;
    }

    while (indexCopy < objc_msgSend_length(self, v8, v9));
  }

  return indexCopy;
}

- (id)attachments
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_range(self, v4, v5);
  v8 = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276D2AB90;
  v12[3] = &unk_27A6F38B8;
  v9 = v3;
  v13 = v9;
  objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(self, v10, v6, v8, v12);

  return v9;
}

- (BOOL)containsOnlyInlineDrawableAttachments
{
  v4 = objc_msgSend_length(self, a2, v2);
  v8 = objc_msgSend_attachmentCount(self, v5, v6);
  result = 0;
  if (v4 && v4 == v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v7, v10, 0);
      objc_opt_class();
      v12 = TSUDynamicCast();
      v15 = v12;
      if (!v12 || objc_msgSend_isAnchored(v12, v13, v14) && (objc_msgSend_isHTMLWrap(v15, v16, v17) & 1) == 0)
      {
        break;
      }

      if (v4 == ++v10)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

- (BOOL)hasAttachmentsRequiring4_1InRange:(_NSRange)range
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = *(self + 302) & 0xF;
  if (v3 >= 2)
  {
    length = range.length;
    location = range.location;
    if (v3 != 5 || (objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, range.location), v7 = objc_claimAutoreleasedReturnValue(), WarningForInlineDrawables = objc_msgSend_requiresFourOneDocumentReadWarningForInlineDrawables(v7, v8, v9), v7, (WarningForInlineDrawables & 1) != 0))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_276D2ADC4;
      v13[3] = &unk_27A6F39A0;
      v13[4] = &v14;
      objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(self, a2, 4, location, length, v13);
    }
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)fields
{
  length = fields.length;
  location = fields.location;
  v6 = objc_msgSend_p_extendRangeToIncludeSmartFields_ofKind_(self, a2, fields.location, fields.length, 6);
  v8 = v7;
  v9.location = objc_msgSend_p_extendRangeToIncludeSmartFields_ofKind_(self, v7, location, length, 21);
  v10 = *(MEMORY[0x277D81490] + 8);
  if (v9.location != *MEMORY[0x277D81490] || v9.length != v10)
  {
    if (v6 != *MEMORY[0x277D81490] || v8 != v10)
    {
      v16.location = v6;
      v16.length = v8;
      v9 = NSUnionRange(v9, v16);
    }

    v6 = v9.location;
    v8 = v9.length;
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = length;
  }

  if (v8)
  {
    v14 = v6;
  }

  else
  {
    v14 = location;
  }

  result.length = v13;
  result.location = v14;
  return result;
}

- (_NSRange)p_extendRangeToIncludeSmartFields:(_NSRange)fields ofKind:(unint64_t)kind
{
  length = fields.length;
  location = fields.location;
  range2 = 0uLL;
  v8 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, a2, fields.location, kind, &range2);
  v10 = v8;
  v11 = location + length;
  v26.location = 0;
  v26.length = 0;
  if (!length)
  {
    v19 = v8;
    v26 = range2;
    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_15:
    if ((objc_msgSend_allowsEditing(v10, v13, v14, v26.location) & 1) == 0)
    {
      v21.location = range2;
      if (range2 >= location || (v21.length = *(&range2 + 1), location >= *(&range2 + 1) + range2))
      {
        v17.location = location;
        v18 = length;
      }

      else
      {
        v29.location = location;
        v29.length = length;
        v17 = NSUnionRange(v29, v21);
        v18 = v17.length;
      }

      v22.location = v26.location;
      if (v26.location < v11)
      {
        v22.length = v26.length;
        if (v11 < v26.length + v26.location)
        {
          v17.length = v18;
          v17 = NSUnionRange(v17, v22);
          v18 = v17.length;
        }
      }

      v15 = v19;
      goto LABEL_25;
    }

LABEL_16:
    v15 = v19;
    v17.location = location;
    v18 = length;
    goto LABEL_25;
  }

  v12 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v9, v11 - 1, kind, &v26);
  v15 = v12;
  if (v10 == v12)
  {
    v19 = v12;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v10 && (v16.location = range2, range2 < location) && (v16.length = *(&range2 + 1), location < *(&range2 + 1) + range2))
  {
    v28.location = location;
    v28.length = length;
    v17 = NSUnionRange(v28, v16);
    v18 = v17.length;
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v17.location = location;
    v18 = length;
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  v20.location = v26.location;
  if (v26.location < v11)
  {
    v20.length = v26.length;
    if (v11 < v26.length + v26.location)
    {
      v17.length = v18;
      v17 = NSUnionRange(v17, v20);
      v18 = v17.length;
    }
  }

LABEL_25:
  if (v18 != length || v17.location != location)
  {
    location = v17.location;
  }

  v24 = location;
  v25 = v18;
  result.length = v25;
  result.location = v24;
  return result;
}

- (id)extendSelectionToIncludeSmartFields:(id)fields
{
  fieldsCopy = fields;
  v7 = fieldsCopy;
  if (objc_msgSend_isValid(fieldsCopy, v5, v6))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276D2B3C4;
    aBlock[3] = &unk_27A6F39C8;
    aBlock[4] = self;
    v7 = fieldsCopy;
    v39 = v7;
    v8 = _Block_copy(aBlock);
    if (objc_msgSend_type(v7, v9, v10) == 7 && (objc_msgSend_validVisualRanges(v7, v11, v12) & 1) == 0)
    {
      if (objc_msgSend_isRange(v7, v11, v12))
      {
        Range = objc_msgSend_visualDefinitionRange(v7, v21, v22);
      }

      else
      {
        Range = objc_msgSend_firstRange(v7, v21, v22);
      }

      v25 = v8[2](v8, Range, v24);
      v27 = v26;
      if (v25 != objc_msgSend_superRange(v7, v26, v28) || v27 != v29)
      {
        v30 = objc_msgSend_copyWithNewType_range_(v7, v29, 8, v25, v27);

        v7 = v30;
      }
    }

    else
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      v13 = objc_msgSend_ranges(v7, v11, v12);
      v16 = objc_msgSend_mutableCopy(v13, v14, v15);

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_276D2B474;
      v31[3] = &unk_27A6F39F0;
      v31[4] = v16;
      v32 = v8;
      v33 = &v34;
      objc_msgSend_enumerateRanges_(v7, v17, v31);
      if (*(v35 + 24) == 1)
      {
        v19 = objc_msgSend_copyWithNewLogicalRanges_(v7, v18, v16);

        v7 = v19;
      }

      _Block_object_dispose(&v34, 8);
    }
  }

  return v7;
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  v6 = self->_attributesTable[kind];
  if (v6)
  {
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(self->_attributesTable[kind], index);
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v7;
      v10 = TSWPAttributeArray::objectForAttributeIndex(v6, v7);
      if (!range)
      {
        goto LABEL_12;
      }

      v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, v11);
      goto LABEL_10;
    }

    if (range)
    {
      v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, 0);
      v9 = 0;
LABEL_7:
      v10 = 0;
LABEL_10:
      range->location = v9;
      range->length = v8;
      goto LABEL_12;
    }
  }

  else if (range)
  {
    v9 = objc_msgSend_range(self, a2, index);
    goto LABEL_7;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)editableSmartFieldAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v4 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, a2, index, 6, 0);
  v7 = v4;
  if (v4)
  {
    if (objc_msgSend_allowsEditing(v4, v5, v6))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (void)addSmartField:(id)field toRange:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  contextCopy = context;
  v14 = objc_msgSend_styleAttributeArrayKind(fieldCopy, v12, v13);
  objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v15, fieldCopy, location, length, v14, contextCopy, transaction);
}

- (void)removeSmartField:(id)field fromRange:(_NSRange)range undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  v11 = objc_msgSend_styleAttributeArrayKind(fieldCopy, v9, v10);
  objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v12, 0, location, length, v11, 0, transaction);
}

- (BOOL)hasSmartFields
{
  v5 = objc_msgSend_range(self, a2, v2);

  return objc_msgSend_hasSmartFieldsInRange_(self, v4, v5, v4);
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)range
{
  if (!self->_attributesTable[6])
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v12, self, range.location, range.length, 6, 0);
  v11.location = 0;
  v11.length = 0;
  while (1)
  {
    v6 = TSWPAttributeEnumerator::nextAttributeIndex(&v12, &v11, v5);
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    v8 = TSWPAttributeRecord::object(v6, 6uLL);
    if (v8)
    {
      v13.location = location;
      v13.length = length;
      v9 = NSIntersectionRange(v11, v13).length;

      if (v9)
      {
        break;
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v12);
  return v7;
}

- (void)enumerateWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range withOptions:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (TSWPAttributeArray::attributeKindIsOverlapping(kind))
  {
    sub_276E32B04(&v25, self, location, length, kind);
    v24 = 0;
    v23 = *MEMORY[0x277D81490];
    while (1)
    {
      v12 = sub_276E331F0(&v25, &v23, 0);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v26.location = location;
      v26.length = length;
      if (NSIntersectionRange(v26, v23).length || ((TSWPAttributeArray::attributeKindIsBreaking(kind) & 1) != 0 || TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(kind)) && (v16 = v23.location, v16 == objc_msgSend_length(self, v14, v15, v23.location)) || !length && v23.length && sub_276D39898(location, 0, v23.location, v23.length, options))
      {
        blockCopy[2](blockCopy, v13, v23.location, v23.length, &v24);
        if (v24 == 1)
        {

          break;
        }
      }
    }

    sub_276E32B08(&v25);
  }

  else
  {
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v25, self, location, length, kind, 1);
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v18 = TSWPAttributeEnumerator::nextAttributeIndex(&v25, &v23, v17);
      if (!v18)
      {
        break;
      }

      v19 = TSWPAttributeRecord::object(v18, kind);
      v27.location = location;
      v27.length = length;
      if (NSIntersectionRange(v27, v23).length || ((TSWPAttributeArray::attributeKindIsBreaking(kind) & 1) != 0 || TSWPAttributeArray::supportsObjectsStartingAtEndOfStorage(kind)) && (v22 = v23.location, v22 == objc_msgSend_length(self, v20, v21, v23.location)) || !length && v23.length && sub_276D39898(location, 0, v23.location, v23.length, options))
      {
        blockCopy[2](blockCopy, v19, v23.location, v23.length, &v24);
        if (v24 == 1)
        {

          break;
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v25);
  }
}

- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v11 = 0x277D81000uLL;
  if ((TSWPAttributeArray::attributeKindIsSmartField(kind) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPStorage enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 6618, 0, "Not a smart field attribute kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_length(self, v9, v10);
  if (self->_attributesTable[kind])
  {
    v20 = v19;
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v45, self, location, length, kind, 0);
    v44.location = 0;
    v44.length = 0;
    v22 = blockCopy + 16;
    v43 = 0;
    kindCopy = kind;
    while (1)
    {
      v23 = TSWPAttributeEnumerator::nextAttributeIndex(&v45, &v44, v21);
      if (!v23)
      {
        break;
      }

      v24 = TSWPAttributeRecord::object(v23, kind);
      if (v24)
      {
        v46.location = location;
        v46.length = length;
        if (NSIntersectionRange(v46, v44).length || !length && sub_276D39898(location, 0, v44.location, v44.length, 0))
        {
          (*(blockCopy + 2))(blockCopy, v24, v44.location, v44.length, &v43);
          if (v43 == 1)
          {

            break;
          }

          if (objc_msgSend_length(self, v25, v26) != v20)
          {
            v28 = *(v11 + 336);
            v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSWPStorage enumerateSmartFieldsWithAttributeKind:inRange:usingBlock:]");
            v30 = length;
            v31 = location;
            v32 = v22;
            v33 = v20;
            selfCopy = self;
            v35 = v11;
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v38, v29, v37, 6636, 0, "Storage was modified while enumerating attributes");

            v11 = v35;
            objc_msgSend_logBacktraceThrottled(*(v35 + 336), v39, v40);
            self = selfCopy;
            v20 = v33;
            v22 = v32;
            location = v31;
            length = v30;
            kind = kindCopy;
          }
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v45);
  }
}

- (void)resetAllTextAttributeUUIDStrings
{
  v4 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v19[0] = xmmword_276F98AF0;
  v19[1] = xmmword_276F98B00;
  v20 = 21;
  do
  {
    v5 = objc_msgSend_range(self, a2, v2, v16);
    v6 = *(v19 + v4);
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v18, self, v5, v7, v6, 0);
    v17.location = 0;
    v17.length = 0;
    while (1)
    {
      v9 = TSWPAttributeEnumerator::nextAttributeIndex(&v18, &v17, v8);
      if (!v9)
      {
        break;
      }

      v10 = TSWPAttributeRecord::object(v9, v6);
      v16 = &unk_288643E30;
      v11 = TSUProtocolCast();

      if (v11)
      {
        objc_msgSend_resetTextAttributeUUIDString(v11, v12, v13, &unk_288643E30);
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v18);
    ++v4;
  }

  while (v4 != 5);
  v14 = objc_msgSend_range(self, a2, v2);
  objc_msgSend_enumerateHighlightsInRange_usingBlock_(self, v15, v14, v15, &unk_2885FDCF0);
}

+ (void)resetAllTextAttributeUUIDStringsInInfo:(id)info
{
  infoCopy = info;
  v3 = objc_alloc(MEMORY[0x277D80660]);
  v5 = objc_msgSend_initWithRootModelObject_filter_(v3, v4, infoCopy, 0);
  objc_msgSend_enumerateUsingBlock_(v5, v6, &unk_2885FDD10);
}

+ (void)resetAllTextAttributeUUIDStringsInInfos:(id)infos
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  infosCopy = infos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(infosCopy, v5, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(infosCopy);
        }

        objc_msgSend_resetAllTextAttributeUUIDStringsInInfo_(self, v6, *(*(&v10 + 1) + 8 * v9++), v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(infosCopy, v6, &v10, v14, 16);
    }

    while (v7);
  }
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range passingTest:(id)test
{
  length = range.length;
  location = range.location;
  testCopy = test;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_276D208C8;
  v21 = sub_276D208D8;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276D2C334;
  v14[3] = &unk_27A6F3A58;
  v15 = testCopy;
  v16 = &v17;
  v10 = testCopy;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(self, v11, kind, location, length, v14);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)nonUndoableRemoveUnsupportedHyperlinksForCrossDocumentPaste:(BOOL)paste
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, paste);
  v7 = objc_msgSend_context(self, v5, v6);
  v40 = objc_msgSend_documentRoot(v7, v8, v9);

  v12 = objc_msgSend_range(self, v10, v11);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_276D2C72C;
  v47[3] = &unk_27A6F3A80;
  pasteCopy = paste;
  v47[4] = v40;
  v47[5] = v39;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(self, v13, 6, v12, v13, v47);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v39;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v43, v49, 16);
  if (v17)
  {
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = objc_msgSend_second(v20, v15, v16);
        v24 = objc_msgSend_rangeValue(v21, v22, v23);
        v26 = v25;

        v29 = objc_msgSend_first(v20, v27, v28);
        objc_msgSend_removeSmartField_fromRange_undoTransaction_(self, v30, v29, v24, v26, 0);

        v42 = *MEMORY[0x277D81490];
        v32 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v31, v24, &v42);
        v35 = objc_msgSend_styleIdentifier(v32, v33, v34);
        if ((objc_msgSend_isEqual_(v35, v36, @"character-style-hyperlink") & 1) != 0 || objc_msgSend_isEqual_(v35, v37, @"text-0-characterstyle-Hyperlink"))
        {
          v51.location = v24;
          v51.length = v26;
          v38 = NSIntersectionRange(v51, v42);
          if (v24 == v38.location && v26 == v38.length)
          {
            objc_msgSend_setCharacterStyle_range_undoTransaction_(self, v38.length, 0, v24, v26, 0);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v43, v49, 16);
    }

    while (v17);
  }
}

+ (void)nonUndoableRemoveUnsupportedHyperlinksInInfos:(id)infos forCrossDocumentPaste:(BOOL)paste
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  infosCopy = infos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(infosCopy, v6, &v18, v22, 16);
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(infosCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277D80660]);
        v13 = objc_msgSend_initWithRootModelObject_filter_(v11, v12, v10, 0);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_276D2CA54;
        v16[3] = &unk_27A6F3AA0;
        pasteCopy = paste;
        objc_msgSend_enumerateUsingBlock_(v13, v14, v16);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(infosCopy, v15, &v18, v22, 16);
    }

    while (v7);
  }
}

+ (void)nonUndoableRemoveUnsupportedHyperlinksInInfos:(id)infos
{
  infosCopy = infos;
  v3 = objc_opt_class();
  objc_msgSend_nonUndoableRemoveUnsupportedHyperlinksInInfos_forCrossDocumentPaste_(v3, v4, infosCopy, 0);
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind inSelection:(id)selection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_276D208C8;
  v11 = sub_276D208D8;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276D2CC5C;
  v6[3] = &unk_27A6F3AC8;
  v6[5] = &v7;
  v6[6] = kind;
  v6[4] = self;
  objc_msgSend_enumerateRanges_(selection, a2, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind withClass:(Class)class intersectingRange:(_NSRange)range
{
  v6 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(self, a2, kind, range.location, range.length);
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, @"class == %@", class);
  v10 = objc_msgSend_filteredArrayUsingPredicate_(v6, v9, v8);

  return v10;
}

- (id)placeholderSmartFieldAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_msgSend_placeholderSmartFieldsIntersectingRange_(self, a2, range.location);
  if (objc_msgSend_count(v5, v6, v7) != 1)
  {
    goto LABEL_5;
  }

  v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v8, 0);
  if (objc_msgSend_range(v9, v10, v11) != location || v12 != length)
  {

LABEL_5:
    v9 = 0;
  }

  return v9;
}

- (void)enumerateAllHyperlinksUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_range(self, v5, v6);
  v9 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276D2CFA4;
  v12[3] = &unk_27A6F3B10;
  v10 = blockCopy;
  v13 = v10;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(self, v11, 6, v7, v9, v12);
}

- (void)smartFieldDidChange:(id)change
{
  changeCopy = change;
  v6 = objc_msgSend_parentStorage(changeCopy, v4, v5);

  if (v6 != self)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage smartFieldDidChange:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 6806, 0, "smart field doesn't belong to this storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_range(changeCopy, v7, v8);
  objc_msgSend_didChangeRange_delta_broadcastKind_attributeKindChanges_(self, v17, v16, v17, 0, 0, 0);
}

- (void)autoUpdateField:(id)field withRange:(_NSRange)range documentRoot:(id)root returningInsertedRange:(_NSRange *)insertedRange
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage autoUpdateField:withRange:documentRoot:returningInsertedRange:]", range.location, range.length, root, insertedRange);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 6814, 0, "unimplemented");

  v13 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v13, v11, v12);
}

- (void)autoUpdateSmartFieldsWithDocumentRoot:(id)root
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage autoUpdateSmartFieldsWithDocumentRoot:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 6820, 0, "unimplemented");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)enumerateBookmarksInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v10 = objc_msgSend_length(self, v8, v9);
  if (self->_attributesTable[12])
  {
    v11 = v10;
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v31, self, location, length, 12, 0);
    v30 = 0;
    while (1)
    {
      v13 = TSWPAttributeEnumerator::nextAttributeIndex(&v31, &v29, v12);
      if (!v13)
      {
        break;
      }

      objc_opt_class();
      v14 = TSWPAttributeRecord::object(v13, 0xCuLL);
      v15 = TSUDynamicCast();

      if (v15)
      {
        if (location == v11 && v13->var0 != location)
        {
          goto LABEL_14;
        }

        if (objc_msgSend_forRange(v15, v16, v17))
        {
          v18 = v29.length;
        }

        else
        {
          v18 = 0;
          v29.length = 0;
        }

        blockCopy[2](blockCopy, v15, v29.location, v18, &v30);
        if (objc_msgSend_length(self, v19, v20) != v11)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage enumerateBookmarksInRange:usingBlock:]");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 6850, 0, "Storage was modified while enumerating attributes");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
        }

        if (v30 == 1)
        {
LABEL_14:

          break;
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v31);
  }
}

- (void)enumerateBookmarksInSelection:(id)selection usingBlock:(id)block
{
  selectionCopy = selection;
  blockCopy = block;
  v8 = blockCopy;
  if (self->_attributesTable[12])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_276D2D61C;
    v10[3] = &unk_27A6F3B38;
    v10[4] = self;
    v11 = blockCopy;
    objc_msgSend_enumerateRanges_(selectionCopy, v9, v10);
  }
}

- (void)enumerateTateChuYokoInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v10 = objc_msgSend_length(self, v8, v9);
  if (self->_attributesTable[21])
  {
    v11 = v10;
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v28, self, location, length, 21, 0);
    v27 = 0;
    while (1)
    {
      v13 = TSWPAttributeEnumerator::nextAttributeIndex(&v28, &v26, v12);
      if (!v13)
      {
        break;
      }

      objc_opt_class();
      v14 = TSWPAttributeRecord::object(v13, 0x15uLL);
      v15 = TSUDynamicCast();

      if (v15)
      {
        blockCopy[2](blockCopy, v15, v26.location, v26.length, &v27);
        if (objc_msgSend_length(self, v16, v17) != v11)
        {
          v19 = MEMORY[0x277D81150];
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage enumerateTateChuYokoInRange:usingBlock:]");
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 6880, 0, "Storage was modified while enumerating attributes");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
        }

        if (v27 == 1)
        {

          break;
        }
      }
    }

    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v28);
  }
}

- (void)addOverlappingField:(id)field toRange:(_NSRange)range attributeKind:(unint64_t)kind dolcContext:(id)context undoTransaction:(void *)transaction
{
  rangeCopy = range;
  fieldCopy = field;
  if (!TSWPAttributeArray::attributeKindIsOverlapping(kind))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage addOverlappingField:toRange:attributeKind:dolcContext:undoTransaction:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 6892, 0, "Bad attribute kind for overlapping fields API.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  sub_276F32CA8(v19, 2, self, transaction, 0);
  v19[0] = &unk_288609A08;
  sub_276F33A24(v19, kind, &rangeCopy, fieldCopy, 1, 0xFFFFFFFFLL);
  sub_276F32E84(v19);
  sub_276F32E10(v19);
}

- (void)removeOverlappingField:(id)field fromRange:(_NSRange)range attributeKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  rangeCopy = range;
  fieldCopy = field;
  if (!TSWPAttributeArray::attributeKindIsOverlapping(kind))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage removeOverlappingField:fromRange:attributeKind:undoTransaction:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 6899, 0, "Bad attribute kind for overlapping fields API.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  sub_276F32CA8(v18, 2, self, transaction, 0);
  v18[0] = &unk_288609A08;
  sub_276F33A24(v18, kind, &rangeCopy, fieldCopy, 2, 0xFFFFFFFFLL);
  sub_276F32E84(v18);
  sub_276F32E10(v18);
}

- (unint64_t)attributeIndexForCharacterIndex:(unint64_t)index attributeKind:(unint64_t)kind
{
  v5 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, kind, 0);
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, index);
}

- (id)overlappingFieldsAtAttributeIndex:(unint64_t)index attributeKind:(unint64_t)kind
{
  v5 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, kind, 0);
  if (v5)
  {
    v5 = (*(*v5 + 136))(v5, index);
  }

  return v5;
}

- (_NSRange)attributeRangeForOverlappingField:(id)field attributeKind:(unint64_t)kind
{
  fieldCopy = field;
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  v10 = objc_msgSend_attributeArrayForKind_withCreate_(self, v9, kind, 0);
  v11 = v10;
  if (v10)
  {
    v12 = (*(*v10 + 112))(v10, fieldCopy, 0);
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = (*(*v11 + 152))(v11, fieldCopy, v12);
      v8 = v13;
    }
  }

  v14 = v7;
  v15 = v8;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)attributeRangeForOverlappingField:(id)field atAttributeIndex:(unint64_t)index attributeKind:(unint64_t)kind
{
  fieldCopy = field;
  v9 = *MEMORY[0x277D81490];
  v10 = *(MEMORY[0x277D81490] + 8);
  v12 = objc_msgSend_attributeArrayForKind_withCreate_(self, v11, kind, 0);
  if (v12)
  {
    v9 = (*(*v12 + 152))(v12, fieldCopy, index);
    v10 = v13;
  }

  v14 = v9;
  v15 = v10;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)charRangeForAttributeRange:(_NSRange)range attributeKind:(unint64_t)kind
{
  length = range.length;
  location = range.location;
  v6 = *MEMORY[0x277D81490];
  v7 = *(MEMORY[0x277D81490] + 8);
  v8 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, kind, 0);
  if (v8)
  {
    v13.location = location;
    v13.length = length;
    v6 = TSWPAttributeArray::rangeForAttributeRange(v8, v13);
    v7 = v9;
  }

  v10 = v6;
  v11 = v7;
  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)phoneticsExistOnRange:(_NSRange)range
{
  v3 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(self, a2, 7, range.location, range.length);
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

- (BOOL)phoneticsExistInSelection:(id)selection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276D2DF10;
  v5[3] = &unk_27A6F3B60;
  v5[4] = self;
  v5[5] = &v6;
  objc_msgSend_enumerateRanges_(selection, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)snapshotRubyStateInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, range.location);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276D2E040;
  v10[3] = &unk_27A6F3B88;
  v7 = v6;
  v11 = v7;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(self, v8, 7, location, length, v10);

  return v7;
}

- (void)addGlyphVariantData:(id)data toRange:(_NSRange)range
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage addGlyphVariantData:toRange:]", range.location, range.length);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 6993, 0, "unimplemented");

  v11 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (void)removeGlyphVariantDataFromRange:(_NSRange)range
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage removeGlyphVariantDataFromRange:]", range.length);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 6999, 0, "unimplemented");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (id)glyphVariantDataAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage glyphVariantDataAtCharIndex:effectiveRange:]", range);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 7004, 0, "unimplemented");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (void)fixGlyphVariantFontsForRange:(_NSRange)range
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage fixGlyphVariantFontsForRange:]", range.length);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 7010, 0, "unimplemented");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (id)fontNameAtCharIndex:(unint64_t)index size:(double *)size effectiveRange:(_NSRange *)range styleProvider:(id)provider
{
  FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider = objc_msgSend_createFontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider_(self, a2, index, 100, range, provider);
  v8 = CTFontCopyPostScriptName(FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider);
  if (size)
  {
    *size = CTFontGetSize(FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider);
  }

  CFRelease(FontAtCharIndex_scaleTextPercent_effectiveRange_styleProvider);

  return v8;
}

- (id)effectiveFontAtCharIndex:(unint64_t)index
{
  v10 = 0.0;
  v3 = objc_msgSend_fontNameAtCharIndex_size_effectiveRange_styleProvider_(self, a2, index, &v10, 0, self);
  v6 = objc_msgSend_sharedInstance(TSWPFontList, v4, v5);
  v8 = objc_msgSend_fontForPostscriptName_atSize_(v6, v7, v3, v10);

  return v8;
}

- (BOOL)textIsVerticalAtCharIndex:(unint64_t)index
{
  if (objc_msgSend_wpKind(self, a2, index))
  {
    v7 = objc_msgSend_parentInfo(self, v5, v6);
    IsVerticalAtCharIndex = objc_msgSend_textIsVerticalAtCharIndex_(v7, v8, index);
  }

  else
  {
    v7 = objc_msgSend_documentRoot(self, v5, v6);
    IsVerticalAtCharIndex = objc_msgSend_laysOutBodyVertically(v7, v10, v11);
  }

  v12 = IsVerticalAtCharIndex;

  return v12;
}

- (int64_t)contentWritingDirection
{
  v6 = objc_msgSend_parentInfo(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_parentInfo(self, v4, v5);
    v10 = objc_msgSend_contentWritingDirection(v7, v8, v9);
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)setGeometry:(id)geometry
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage setGeometry:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 7073, 0, "can't set geometry on a storage");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)setParentInfo:(id)info
{
  obj = info;
  objc_opt_class();
  v4 = TSUClassAndProtocolCast();
  v5 = obj;
  if (v4 != obj && *MEMORY[0x277D81430] != -1)
  {
    sub_276F4EBD4();
    v5 = obj;
  }

  objc_storeWeak(&self->_parentInfo, v5);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  v6 = objc_msgSend_parentInfo(self, v4, v5);

  if (v6 == neededCopy)
  {
    objc_msgSend_setParentInfo_(self, v7, 0);
  }
}

- (Class)layoutClass
{
  v3 = objc_opt_class();
  if (objc_msgSend_wpKind(self, v4, v5) == 1)
  {
    v3 = objc_opt_class();
  }

  v8 = objc_msgSend_parentInfo(self, v6, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (BOOL)isThemeContent
{
  v3 = objc_msgSend_parentInfo(self, a2, v2);
  isThemeContent = objc_msgSend_isThemeContent(v3, v4, v5);

  return isThemeContent;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_range(self, v5, v6);
  v9 = v8;
  v11 = objc_msgSend_wpKind(self, v8, v10);
  v13 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_kind_(self, v12, v7, v9, contextCopy, contextCopy, 33, v11);

  return v13;
}

- (NSArray)childInfos
{
  v4 = objc_msgSend_attachmentCount(self, a2, v2);
  v7 = objc_msgSend_footnoteCount(self, v5, v6);
  v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v8, v7 + v4);
  v11 = objc_msgSend_attributeArrayForKind_(self, v10, 4);
  v13 = v11;
  if (v11 && *(v11 + 24))
  {
    v14 = 0;
    do
    {
      objc_opt_class();
      v15 = TSWPAttributeArray::objectForAttributeIndex(v13, v14);
      v16 = TSUDynamicCast();

      if (v16)
      {
        v20 = objc_msgSend_drawable(v16, v17, v18);
        if (v20)
        {
          objc_msgSend_addObject_(v9, v19, v20);
        }
      }

      ++v14;
    }

    while (v14 < *(v13 + 24));
  }

  v21 = objc_msgSend_attributeArrayForKind_(self, v12, 5);
  v22 = v21;
  if (v21 && *(v21 + 24))
  {
    v23 = 0;
    do
    {
      objc_opt_class();
      v24 = TSWPAttributeArray::objectForAttributeIndex(v22, v23);
      v25 = TSUDynamicCast();

      if (v25)
      {
        v29 = objc_msgSend_containedStorage(v25, v26, v27);
        if (v29)
        {
          objc_msgSend_addObject_(v9, v28, v29);
        }
      }

      ++v23;
    }

    while (v23 < *(v22 + 24));
  }

  return v9;
}

- (BOOL)isTopmostContainerInfo
{
  if (objc_msgSend_wpKind(self, a2, v2) == 3)
  {
    v6 = objc_msgSend_parentDrawable(self, v4, v5);

    if (v6)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      objc_opt_class();
      v10 = objc_msgSend_parentInfo(self, v8, v9);
      v11 = TSUDynamicCast();
      v7 = v11 == 0;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (TSDDrawableInfo)parentDrawable
{
  v3 = objc_opt_class();

  return MEMORY[0x2821E99B0](v3, self);
}

- (id)referencedStylesOfClass:(Class)class
{
  v5 = objc_msgSend_set(MEMORY[0x277D81258], a2, class);
  if (objc_opt_class() == class)
  {
    v18 = objc_msgSend_attributeArrayForKind_(self, v6, 0);
  }

  else if (objc_opt_class() == class)
  {
    v18 = objc_msgSend_attributeArrayForKind_(self, v7, 2);
  }

  else if (objc_opt_class() == class)
  {
    v18 = objc_msgSend_attributeArrayForKind_(self, v8, 3);
  }

  else if (objc_opt_class() == class)
  {
    v18 = objc_msgSend_attributeArrayForKind_(self, v9, 9);
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage referencedStylesOfClass:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 7255, 0, "Unknown style class.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      goto LABEL_19;
    }

    v18 = objc_msgSend_attributeArrayForKind_(self, v10, 22);
  }

  v19 = v18;
  if (v18 && *(v18 + 24))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = TSWPAttributeArray::objectForAttributeIndex(v19, v20);

      if (v22)
      {
        objc_msgSend_addObject_(v5, v23, v22);
      }

      ++v20;
      v21 = v22;
    }

    while (v20 < *(v19 + 24));
  }

LABEL_19:

  return v5;
}

- (NSSet)referencedStyles
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_set(MEMORY[0x277D81258], a2, v2);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  v19[3] = objc_opt_class();
  v19[4] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v19, 5, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v20, 16);
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = objc_msgSend_referencedStylesOfClass_(self, v8, *(*(&v15 + 1) + 8 * i));
        objc_msgSend_unionSet_(v4, v13, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v15, v20, 16);
    }

    while (v9);
  }

  return v4;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_288627668, v5, &v23, v27, 16);
  if (v8)
  {
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(&unk_288627668);
        }

        v11 = objc_msgSend_unsignedIntegerValue(*(*(&v23 + 1) + 8 * v10), v6, v7);
        v13 = objc_msgSend_attributeArrayForKind_(self, v12, v11);
        if (v13)
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2020000000;
          v22 = 0;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_276D2F3A8;
          v15[3] = &unk_27A6F3BB0;
          v14 = blockCopy;
          v15[4] = self;
          v16 = v14;
          v17 = &v19;
          v18 = v13;
          TSWPAttributeArray::enumerateObjectAttributes(v13, v15);
          if (*(v20 + 24) == 1)
          {
            (*(*v13 + 296))(v13);
          }

          _Block_object_dispose(&v19, 8);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_288627668, v6, &v23, v27, 16);
    }

    while (v8);
  }
}

- (TSWPCharacterStyle)hyperlinkStyle
{
  v4 = objc_msgSend_stylesheet(self, a2, v2);
  v6 = objc_msgSend_cascadedStyleWithIdentifier_(v4, v5, @"character-style-hyperlink");

  if (!v6)
  {
    v9 = objc_msgSend_documentRoot(self, v7, v8);
    v12 = objc_msgSend_theme(v9, v10, v11);
    v6 = objc_msgSend_hyperlinkStyle(v12, v13, v14);
  }

  return v6;
}

- (void)didChangeParagraphAttributeLocation:(unint64_t)location delta:(int64_t)delta
{
  if (delta)
  {
    broadcaster = self->_broadcaster;
    if (delta < 1)
    {

      MEMORY[0x2821F9670](broadcaster, sel_broadcastStorage_didDeleteParagraphsInIndexRange_, self);
    }

    else
    {

      MEMORY[0x2821F9670](broadcaster, sel_broadcastStorage_didInsertParagraphsInIndexRange_, self);
    }
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage didChangeParagraphAttributeLocation:delta:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 7338, 0, "Expected paragraph index change to be positive or negative.");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v11, v12);
  }
}

- (BOOL)isSingleAnchoredDrawableAttachmentForSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_msgSend_isRange(selectionCopy, v5, v6) && (objc_msgSend_superRange(selectionCopy, v7, v8), v9 == 1))
  {
    objc_opt_class();
    Range = objc_msgSend_firstRange(selectionCopy, v10, v11);
    v14 = objc_msgSend_attachmentAtCharIndex_(self, v13, Range);
    v15 = TSUDynamicCast();
    isAnchored = objc_msgSend_isAnchored(v15, v16, v17);
  }

  else
  {
    isAnchored = 0;
  }

  return isAnchored;
}

- (void)p_mutateByWordWithUndoTransaction:(void *)transaction locale:(id)locale transformer:(id)transformer
{
  locale = locale;
  transformerCopy = transformer;
  v9 = objc_msgSend_range(self, v7, v8);
  v11 = v10;
  v35 = objc_msgSend_copy(self->_string, v10, v12);
  v14 = &v11[v9];
  v15 = v35;
  if (v14)
  {
    v16 = 0;
    v17 = 0;
    v37 = v14;
    do
    {
      v18 = objc_msgSend_textRangeForParagraphAtCharIndex_(self, v13, v16 + v17);
      v20 = v19;
      v21 = v18 - v17;
      v41.location = v18 - v17;
      v41.length = v19;
      v22 = CFStringTokenizerCreate(0, v15, v41, 0, locale);
      if (v22)
      {
        while (CFStringTokenizerAdvanceToNextToken(v22))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v22);
          if (CurrentTokenRange.length)
          {
            v24 = objc_msgSend_substringWithRange_(self, CurrentTokenRange.length, CurrentTokenRange.location + v17, CurrentTokenRange.length);
            if (v24)
            {
              selfCopy = self;
              v26 = transformerCopy[2](transformerCopy, v24);
              if ((objc_msgSend_isEqualToString_(v26, v27, v24) & 1) == 0)
              {
                v36 = objc_msgSend_length(v26, v28, v29);
                v32 = objc_msgSend_length(v24, v30, v31);
                objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(selfCopy, v33, CurrentTokenRange.location + v17, CurrentTokenRange.length, v26, transaction);
                v17 += v36 - v32;
                v15 = v35;
              }

              self = selfCopy;
              v14 = v37;
            }
          }
        }

        CFRelease(v22);
      }

      v16 = v21 + v20;
    }

    while (v21 + v20 < v14);
  }
}

- (BOOL)p_hasVisibleTextInRange:(_NSRange)range graphicalAttachmentsIncluded:(BOOL)included
{
  length = range.length;
  v44 = *MEMORY[0x277D85DE8];
  if (!range.length)
  {
    return length;
  }

  includedCopy = included;
  location = range.location;
  v8 = range.length > 8;
  if (range.length >= 8)
  {
    v9 = 8;
    objc_msgSend_getCharacters_range_(self->_string, a2, v43, range.location, 8);
  }

  else
  {
    v9 = range.length;
    objc_msgSend_getCharacters_range_(self->_string, a2, v43, range.location, range.length);
  }

  v12 = 0;
  v13 = 0;
  do
  {
    while (1)
    {
      v14 = v43[v12];
      if (v14 < 0x21)
      {
        break;
      }

      if (v14 < 0x7F)
      {
        goto LABEL_35;
      }

      v12 = (v13 + 1);
      v8 = 1;
      v13 = v12;
      if (v12 >= v9)
      {
        goto LABEL_14;
      }
    }

    if (v14 == 14)
    {
      goto LABEL_35;
    }

    v12 = (v13 + 1);
    v13 = v12;
  }

  while (v12 < v9);
  if (!v8)
  {
LABEL_32:
    LOBYTE(length) = 0;
    return length;
  }

LABEL_14:
  string = self->_string;
  v16 = objc_msgSend_tswp_invisibleCharacterSet(MEMORY[0x277CCA900], v10, v11);
  v19 = objc_msgSend_invertedSet(v16, v17, v18);
  v21 = objc_msgSend_rangeOfCharacterFromSet_options_range_(string, v20, v19, 2, location, length);

  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  v24 = objc_msgSend_attachmentIndexRangeForTextRange_(self, v22, location, length);
  v25 = v23;
  if (v24 >= &v23[v24])
  {
LABEL_25:
    v38 = objc_msgSend_footnoteRangeForTextRange_(self, v23, location, length);
    if (v38 < &v37[v38])
    {
      v39 = v37 - 1;
      do
      {
        v40 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(self, v37, v38, 0);
        LOBYTE(length) = v40 != 0;

        ++v38;
        if (v39)
        {
          v41 = length;
        }

        else
        {
          v41 = 1;
        }

        --v39;
      }

      while ((v41 & 1) == 0);
      return length;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v26 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(self, v23, v24, 0);
    if (!v26)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v29 = objc_msgSend_stringEquivalent(v26, v27, v28);
    v32 = objc_msgSend_length(v29, v30, v31) == 0;

    if (!v32)
    {
      goto LABEL_34;
    }

LABEL_24:

    ++v24;
    if (!--v25)
    {
      goto LABEL_25;
    }
  }

  objc_opt_class();
  v33 = TSUDynamicCast();
  v36 = v33;
  if (!v33 || !includedCopy || (objc_msgSend_isAnchored(v33, v34, v35) & 1) != 0)
  {

    goto LABEL_24;
  }

LABEL_34:
LABEL_35:
  LOBYTE(length) = 1;
  return length;
}

- (BOOL)hasVisibleContent
{
  v4 = objc_msgSend_range(self, a2, v2);

  return MEMORY[0x2821F9670](self, sel_p_hasVisibleTextInRange_graphicalAttachmentsIncluded_, v4);
}

- (BOOL)hasVisibleTextOnlyContent
{
  v4 = objc_msgSend_range(self, a2, v2);

  return MEMORY[0x2821F9670](self, sel_p_hasVisibleTextInRange_graphicalAttachmentsIncluded_, v4);
}

- (BOOL)hasUserGeneratedVisibleText
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (objc_msgSend_hasVisibleContent(self, a2, v2))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v6 = objc_msgSend_range(self, v4, v5);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276D30024;
    v17[3] = &unk_27A6F3BF8;
    v17[4] = self;
    v17[5] = &v18;
    v17[6] = &v22;
    objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(self, v7, 6, v6, v7, v17);
    if ((v23[3] & 1) == 0)
    {
      v10 = v19[3];
      v11 = objc_msgSend_length(self, v8, v9);
      if (v10 != v11)
      {
        if (v10 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v10;
        }

        if (v10 <= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = v10;
        }

        if ((objc_msgSend_isAllWhitespaceInRange_(self, v12, v13, v14 - v13) & 1) == 0)
        {
          *(v23 + 24) = 1;
        }
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

- (BOOL)hasEmptyParagraphFillOrBordersAtCharIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(self, a2, index, 0);
  v4 = TSWPParagraphEnumerator::paragraphStyle(&v12, 0);
  if (objc_msgSend_intValueForProperty_(v4, v5, 105))
  {
    v3 = 1;
  }

  else
  {
    v7 = objc_msgSend_objectForProperty_(v4, v6, 94);
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9);
    v3 = v7 != v10;
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v12);
  return v3;
}

- (BOOL)hasEmptyListAtCharIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(self, a2, index, 0);
  v6 = TSWPParagraphEnumerator::paragraphListStyle(&v10, v4);
  if (v6)
  {
    v7 = TSWPParagraphEnumerator::paragraphLevel(&v10, v5);
    v3 = objc_msgSend_labelTypeForLevel_(v6, v8, v7) != 0;
  }

  else
  {
    v3 = 0;
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v10);
  return v3;
}

- (BOOL)p_hasGoodAttributesForPlainTextPaste
{
  v3 = 0;
  while (1)
  {
    v4 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, qword_276F98B70[v3], 0);
    if (v4)
    {
      if (*(v4 + 24))
      {
        break;
      }
    }

    if (++v3 == 7)
    {
      return objc_msgSend_hasComments(self, a2, v5) ^ 1;
    }
  }

  return 0;
}

- (BOOL)canPasteAsPlainText
{
  v3 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, 0, 0);
  if (v3 && *(v3 + 24) > 1u)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_p_hasGoodAttributesForPlainTextPaste, v4);
}

- (BOOL)canPasteAsPlainTextWithUniformParagraphs
{
  v3 = objc_msgSend_attributeArrayForKind_withCreate_(self, a2, 0, 0);
  if (v3)
  {
    v5 = v3;
    v6 = *(v3 + 24);
    if (v6 >= 2)
    {
      v7 = TSWPAttributeArray::objectForAttributeIndex(v3, 0);
      v8 = 1;
      while (1)
      {
        v9 = TSWPAttributeArray::objectForAttributeIndex(v5, v8);

        if (v9 != v7)
        {
          break;
        }

        if (v6 == ++v8)
        {

          goto LABEL_7;
        }
      }

      return 0;
    }
  }

LABEL_7:
  v10 = objc_msgSend_attributeArrayForKind_withCreate_(self, v4, 1, 0);
  if (v10)
  {
    v12 = v10;
    v13 = *(v10 + 24);
    if (v13 >= 2)
    {
      v14 = TSWPAttributeRecord::paragraphData(*(v10 + 8), *(v10 + 28));
      v15 = 16 * v13;
      v16 = 16;
      do
      {
        v17 = TSWPAttributeRecord::paragraphData(*(v12 + 8) + v16, *(v12 + 28));
        if (*v14 != *v17 || v14[1] != v17[1])
        {
          return 0;
        }

        v16 += 16;
      }

      while (v15 != v16);
    }
  }

  v18 = objc_msgSend_attributeArrayForKind_withCreate_(self, v11, 18, 0);
  if (v18 && *(v18 + 24) > 1u)
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_p_hasGoodAttributesForPlainTextPaste, v19);
}

- (unint64_t)moveByLineRange:(_NSRange)range up:(BOOL)up
{
  upCopy = up;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_range(self, a2, range.location);
  if (upCopy)
  {
    v10 = location;
    if (location > v8)
    {
      v10 = location - 1;
      v11 = objc_msgSend_characterAtIndex_(self, v9, location - 1);
      v12 = v11;
      v13 = IsParagraphBreakingCharacter(v11);
      if (v12 != 8232 && (v13 & 1) == 0)
      {
        v15 = objc_msgSend_attachmentAtCharIndex_(self, v14, location - 1);
        isPartitioned = objc_msgSend_isPartitioned(v15, v16, v17);

        if (!isPartitioned)
        {
          return location;
        }
      }
    }
  }

  else
  {
    v10 = location + length;
    if (v10 > v8 && v10 < &v9[v8])
    {
      v19 = objc_msgSend_attachmentAtCharIndex_(self, v9, v10);
      if (objc_msgSend_isPartitioned(v19, v20, v21))
      {
        v23 = objc_msgSend_characterAtIndex_(self, v22, v10 - 1);
        v24 = v23;
        v25 = IsParagraphBreakingCharacter(v23);
        if (v24 == 8232)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        v27 = ~v26;

        v10 += v27 & 1;
      }

      else
      {
      }
    }
  }

  return v10;
}

- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags
{
  v6 = *&flags;
  length = range.length;
  location = range.location;
  contextCopy = context;
  objectsContextCopy = objectsContext;
  v15 = objc_msgSend_wpKind(self, v13, v14);
  v17 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_kind_(self, v16, location, length, contextCopy, objectsContextCopy, v6, v15);

  return v17;
}

- (id)newSubstorageWithRange:(_NSRange)range storageContext:(id)context objectsContext:(id)objectsContext flags:(unsigned int)flags kind:(unsigned __int8)kind
{
  kindCopy = kind;
  v8 = *&flags;
  length = range.length;
  location = range.location;
  contextCopy = context;
  objectsContextCopy = objectsContext;
  if (location == objc_msgSend_range(self, v14, v15) && length == v16 && (*(self + 302) & 0xF) == kindCopy)
  {
    v17 = objc_alloc(objc_opt_class());
    v19 = objc_msgSend_initWithContext_(v17, v18, objectsContextCopy);
    v21 = v19;
    if (v19)
    {
      *(v19 + 320) = 1;
      objc_storeStrong((v19 + 256), self->_stylesheet);
      *(v21 + 302) = *(v21 + 302) & 0xF0 | *(self + 302) & 0xF;
      *(v21 + 302) = *(v21 + 302) & 0xCF | *(self + 302) & 0x30;
      v22 = objc_opt_class();
      v24 = objc_alloc_init(objc_msgSend_pStringClassForWPKind_(v22, v23, *(v21 + 302) & 0xF));
      v25 = *(v21 + 64);
      *(v21 + 64) = v24;

      v27 = *(v21 + 64);
      if (v27 || (v28 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPStorage newSubstorageWithRange:storageContext:objectsContext:flags:kind:]"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 7769, 0, "invalid nil value for '%{public}s'", "storage->_string"), v31, v29, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34), (v27 = *(v21 + 64)) != 0))
      {
        string = self->_string;
        if (string)
        {
          objc_msgSend_insertString_atIndex_(v27, v26, string, 0);
        }
      }

      *(v21 + 304) = 0x7FFFFFFFFFFFFFFFLL;
      *(v21 + 280) = *MEMORY[0x277D81490];
      objc_msgSend_p_nonUndoableFilterSectionBreaksFromStorage_(v21, v26, v21);
      v38 = 72;
      v39 = -23;
      do
      {
        v40 = *(&self->super.super.isa + v38);
        if (v40 && objc_msgSend_canTransferAttributesForInitialization_withFlags_(self, v36, v39 + 23, v8))
        {
          EmptyAttributeArrayForKind = objc_msgSend_createEmptyAttributeArrayForKind_(TSWPStorage, v36, v39 + 23);
          *(v21 + v38) = EmptyAttributeArrayForKind;
          TSWPAttributeArray::setStorage(EmptyAttributeArrayForKind, v21);
          (*(EmptyAttributeArrayForKind->var0 + 10))(EmptyAttributeArrayForKind, v40, objectsContextCopy, v8, 0);
        }

        v38 += 8;
      }

      while (!__CFADD__(v39++, 1));
      if (objc_msgSend_WPKindSupportsDropCaps(v21, v36, v37))
      {
        if (!objc_msgSend_dropCapStyleCount(v21, v43, v44))
        {
          v46 = objc_msgSend_attributeArrayForKind_withCreate_(v21, v45, 22, 1);
          objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v21, v47, 0, 0, v46, 0, 0);
        }
      }

      else
      {
        v122 = objc_msgSend_attributeArrayForKind_withCreate_(v21, v43, 22, 0);
        if (v122)
        {
          (*(*v122 + 64))(v122, 0, v122[6], 0);
        }
      }

      *(v21 + 320) = 0;
    }

    else
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage newSubstorageWithRange:storageContext:objectsContext:flags:kind:]");
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v119, v116, v118, 7761, 0, "invalid nil value for '%{public}s'", "storage");

      v21 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121);
    }
  }

  else
  {
    if (length)
    {
      v134 = objc_msgSend_substringWithRange_(self->_string, v16, location, length);
    }

    else
    {
      v134 = 0;
    }

    v133 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(self, v16, location, 0);
    v132 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(self, v48, location, 0);
    v131 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(self, v49, location, 0);
    v135 = objc_msgSend_dropCapStyleAtCharIndex_(self, v50, location);
    if ((v8 & 0x20) != 0)
    {
      v52 = objc_msgSend_writingDirectionFromBidiAttributesTableForParagraphAtCharIndex_(self, v51, location);
    }

    else
    {
      v52 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(self, v51, location);
    }

    v55 = v52;
    v138 = 0;
    v137 = 0;
    if ((v8 & 4) != 0 && objc_msgSend_supportsSections(self, v53, v54) && objc_msgSend_sectionCount(self, v53, v56))
    {
      v57 = objc_msgSend_sectionAtCharIndex_effectiveRange_(self, v53, location, 0);
      v59 = objc_msgSend_copyWithContext_(v57, v58, contextCopy);
    }

    else
    {
      v59 = 0;
    }

    objc_msgSend_paragraphFlags_andLevel_atCharIndex_(self, v53, &v137, &v138, location);
    v61 = objc_msgSend_listStartAtCharIndex_(self, v60, location);
    v62 = objc_alloc(objc_opt_class());
    v21 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v62, v63, contextCopy, v134, kindCopy, self->_stylesheet, v133, v132, v59, v131, v55);
    v66 = objc_msgSend_WPKindSupportsDropCaps(v21, v64, v65);
    if (v135)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0;
    }

    if (v68 == 1)
    {
      objc_msgSend_setDropCapStyle_atParIndex_undoTransaction_(v21, v67, v135, 0, 0);
    }

    objc_msgSend_setIsInInit_(v21, v67, 1);
    v69 = v137;
    v70 = v138;
    v73 = objc_msgSend_length(v21, v71, v72);
    objc_msgSend_setParagraphFlags_level_forCharRange_undoTransaction_(v21, v74, v69, v70, 0, v73, 0);
    if (v61 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (HIDWORD(v61))
      {
        v123 = MEMORY[0x277D81150];
        v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "[TSWPStorage newSubstorageWithRange:storageContext:objectsContext:flags:kind:]");
        v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v123, v127, v124, v126, 7844, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129);
        v61 = 0xFFFFFFFFLL;
      }

      v77 = objc_msgSend_paragraphCount(v21, v75, v76);
      objc_msgSend_applyDataValue_toParagraphIndexRange_forKind_undoTransaction_(v21, v78, v61, 0, v77, 11, 0);
    }

    if (objc_msgSend_supportsSections(v21, v75, v76) && objc_msgSend_sectionCount(v21, v79, v80))
    {
      v81 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v21, v79, 0, 0);

      v59 = v81;
    }

    objc_msgSend_p_nonUndoableFilterSectionBreaksFromStorage_(v21, v79, v21);
    if ((v8 & 8) != 0)
    {
      v84 = objc_msgSend_preserveParentStorageContext(MEMORY[0x277D805F0], v82, v83);
    }

    else
    {
      v84 = 0;
    }

    for (i = 0; i != 23; ++i)
    {
      v86 = objc_msgSend_attributeArrayForKind_(self, v82, i);
      if (v86)
      {
        LODWORD(v130) = v8;
        objc_msgSend_nonUndoableInitializeAttributeArraySource_forSourceRange_toDestStorage_objectContext_dolcContext_flags_(self, v82, v86, location, length, v21, objectsContextCopy, v84, v130);
      }
    }

    if ((v8 & 4) != 0)
    {
      v87 = objc_msgSend_preserveParentStorageContext(MEMORY[0x277D805F0], v82, v86);
    }

    else
    {
      v87 = 0;
    }

    if (objc_msgSend_supportsSections(v21, v88, v89))
    {
      if (!v59)
      {
        v92 = objc_msgSend_context(v21, v90, v91);
        v59 = objc_msgSend_pDefaultSectionForContext_(v21, v93, v92);
      }

      if (!objc_msgSend_sectionCount(v21, v90, v91))
      {
        v96 = objc_msgSend_attributeArrayForKind_withCreate_(v21, v94, 8, 1);
        objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v21, v97, v59, 0, v96, 0, v87);
      }

      if (v59)
      {
        v98 = objc_msgSend_stylesheet(self, v94, v95);
        objc_msgSend_i_ensureHeaderFooterStoragesExistWithStylesheet_(v59, v99, v98);
      }

      else
      {
        v100 = MEMORY[0x277D81150];
        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TSWPStorage newSubstorageWithRange:storageContext:objectsContext:flags:kind:]");
        v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v104, v101, v103, 7876, 0, "No default section in storage.");

        v59 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106);
      }
    }

    if (objc_msgSend_WPKindSupportsDropCaps(v21, v90, v91))
    {
      if (!objc_msgSend_dropCapStyleCount(v21, v107, v108))
      {
        v110 = objc_msgSend_attributeArrayForKind_withCreate_(v21, v109, 22, 1);
        objc_msgSend_nonUndoableInsertObject_charIndex_attributeArray_attributeIndex_dolcContext_(v21, v111, 0, 0, v110, 0, 0);
      }
    }

    else
    {
      v112 = objc_msgSend_attributeArrayForKind_withCreate_(v21, v107, 22, 0);
      if (v112)
      {
        (*(*v112 + 64))(v112, 0, v112[6], 0);
      }
    }

    objc_msgSend_setIsInInit_(v21, v109, 0);
    objc_msgSend_compress_(v21, v113, 0);
  }

  return v21;
}

- (int)compareRange:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange options:(unint64_t)options objectComparisonBlock:(id)block
{
  length = otherRange.length;
  location = otherRange.location;
  v10 = range.length;
  v11 = range.location;
  storageCopy = storage;
  blockCopy = block;
  if (location == objc_msgSend_range(storageCopy, v14, v15) && length == v16)
  {
    v19 = objc_msgSend_string(storageCopy, v16, v17);
  }

  else
  {
    v20 = objc_msgSend_string(storageCopy, v16, v17);
    v22 = objc_msgSend_substringWithRange_(v20, v21, location, length);

    v19 = v22;
  }

  v28 = v19;
  v24 = objc_msgSend_compare_options_range_(self->_string, v18, v19, options, v11, v10);
  if (!v24)
  {
    v25 = 0;
    while (1)
    {
      if (v25 <= 0x16 && ((1 << v25) & 0x7C3AFF) != 0)
      {
        v26 = objc_msgSend_attributeArrayForKind_(self, v23, v25);
        if (v26)
        {
          v24 = objc_msgSend_compareAttributeArray_range_otherStorage_otherRange_objectComparisonBlock_(self, v23, v26, v11, v10, storageCopy, location, length, blockCopy);
          if (v24)
          {
            break;
          }
        }
      }

      if (++v25 == 23)
      {
        v24 = 0;
        break;
      }
    }
  }

  return v24;
}

- (int)compareBreakingTablesWithStorage:(id)storage
{
  storageCopy = storage;
  v6 = 0;
  while (1)
  {
    if (v6 <= 0x16 && ((1 << v6) & 0x440A07) != 0)
    {
      v7 = objc_msgSend_attributeArrayForKind_(self, v4, v6);
      v8 = v7;
      if (v7)
      {
        break;
      }
    }

LABEL_8:
    if (++v6 == 23)
    {
      v18 = 0;
      goto LABEL_11;
    }
  }

  actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v4, *(v7 + 28), 0, 0);
  if (actionState && *(actionState + 24) == *(v8 + 24))
  {
    v12 = objc_msgSend_range(self, v10, v11);
    v14 = v13;
    v16 = objc_msgSend_range(storageCopy, v13, v15);
    v18 = objc_msgSend_compareAttributeArray_range_otherStorage_otherRange_objectComparisonBlock_(self, v17, v8, v12, v14, storageCopy, v16, v17, &unk_2885FDDF0);
    if (v18)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v18 = -2;
LABEL_11:

  return v18;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = objc_msgSend_description(self, v4, v5);
  objc_msgSend_appendFormat_(v3, v7, @"%@ Text: '", v6);

  objc_msgSend_appendString_(v3, v8, self->_string);
  objc_msgSend_appendString_(v3, v9, @"'\n");
  objc_msgSend_appendString_(v3, v10, @"Attribute tables:\n");
  for (i = 0; i != 23; ++i)
  {
    v13 = objc_msgSend_attributeArrayForKind_(self, v11, i);
    if (v13)
    {
      v16 = (*(*v13 + 224))(v13);
      v19 = objc_msgSend_length(v16, v17, v18);
    }

    else
    {
      v16 = 0;
      v19 = objc_msgSend_length(0, v14, v15);
    }

    if (v19)
    {
      objc_msgSend_appendString_(v3, v20, v16);
    }
  }

  return v3;
}

- (id)p_kindDescription
{
  v2 = *(self + 302) & 0xF;
  if (v2 > 8)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"*#$! Unknown WP kind: %d", v2);
  }

  else
  {
    v3 = off_27A6F3C38[v2];
  }

  return v3;
}

- (NSString)description
{
  v4 = objc_msgSend_p_kindDescription(self, a2, v2);
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_characterCount(self, v7, v8);
  v11 = objc_msgSend_stringWithFormat_(v5, v10, @"(%@*) %p (length:%lu) kind: %@", v6, self, v9, v4);

  return v11;
}

- (BOOL)validate:(unint64_t)validate
{
  if (self->_isInInit)
  {
    return 1;
  }

  validateCopy = validate;
  if ((validate & 4) != 0 && (*(self + 302) & 0xF) == 8)
  {
    TSUSetCrashReporterInfo();
    v275 = MEMORY[0x277D81150];
    v277 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v276, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8177);
    v279 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v278, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v275, v280, v277, v279, 8177, 1, "Attempt to archive a storage with undefined kind");

    TSUCrashBreakpoint();
    goto LABEL_235;
  }

  v4 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  v304 = objc_msgSend_attributeArrayForKind_(self, v5, 3);
  v307 = v4;
  v305 = objc_msgSend_attributeArrayForKind_(self, v6, 22);
  v300 = objc_msgSend_attributeArrayForKind_(self, v7, 8);
  if (v4)
  {
    v10 = *(v4 + 24);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPStorage validate:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 8204, 0, "invalid nil value for '%{public}s'", "parTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    v10 = 0;
  }

  selfCopy = self;
  v302 = objc_msgSend_characterCount(self, v8, v9);
  v20 = v10 != 0;
  if (!v10)
  {
    if ((validateCopy & 4) != 0)
    {
      TSUSetCrashReporterInfo();
      v281 = MEMORY[0x277D81150];
      v283 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v282, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8209);
      v285 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v281, v286, v283, v285, 8209, 1, "storage validation fail: par count");

      TSUCrashBreakpoint();
      goto LABEL_235;
    }

    if (qword_280A57D98 != -1)
    {
      sub_276F4EBE8();
    }
  }

  v21 = v10 == 0;
  if ((validateCopy & 1) == 0)
  {
    string = selfCopy->_string;
    theString = string;
    v314 = 0;
    v315 = v302;
    CharactersPtr = CFStringGetCharactersPtr(string);
    v299 = v10;
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(string, 0x600u);
    }

    v316 = 0;
    v317 = 0;
    v313 = CStringPtr;
    if (v302)
    {
      v24 = 0;
      v301 = 0;
      v25 = 0;
      v26 = 64;
      v27 = 0x277CCA000uLL;
      while (1)
      {
        if (v25 >= 4)
        {
          v28 = 4;
        }

        else
        {
          v28 = v25;
        }

        if (v25 < 0 || (v29 = v315, v315 <= v25))
        {
          v31 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v30 = &CharactersPtr[v314];
LABEL_24:
            v31 = v30[v25];
            goto LABEL_26;
          }

          if (!v313)
          {
            if (v317 <= v25 || (v74 = v316, v316 > v25))
            {
              v75 = -v28;
              v76 = v28 + v24;
              v77 = v26 - v28;
              v78 = v25 + v75;
              v79 = v78 + 64;
              if (v78 + 64 >= v315)
              {
                v79 = v315;
              }

              v316 = v78;
              v317 = v79;
              if (v315 >= v77)
              {
                v29 = v77;
              }

              v318.location = v78 + v314;
              v318.length = v29 + v76;
              CFStringGetCharacters(theString, v318, buffer);
              v74 = v316;
            }

            v30 = &buffer[-v74];
            goto LABEL_24;
          }

          v31 = v313[v314 + v25];
        }

LABEL_26:
        if (IsParagraphBreakingCharacter(v31))
        {
          if (TSWPAttributeArray::exactAttributeIndexForCharIndex(v307, v25 + 1) != ++v301)
          {
            v49 = MEMORY[0x277D81150];
            v50 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v18, "[TSWPStorage validate:]");
            v52 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 8222, 0, "Mismatch between breaking characters and the paragraph attribute table.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
LABEL_37:
            if ((validateCopy & 4) != 0)
            {
              TSUSetCrashReporterInfo();
              v239 = MEMORY[0x277D81150];
              v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v240, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8224);
              v243 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v242, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v239, v244, v241, v243, 8224, 1, "storage validation fail: par attr table");

              TSUCrashBreakpoint();
              goto LABEL_235;
            }

            if (v21)
            {
LABEL_39:
              LOBYTE(v20) = 0;
            }

            else
            {
              if (qword_280A57D98 != -1)
              {
                sub_276F4EC4C();
                goto LABEL_39;
              }

              LOBYTE(v20) = 0;
            }

            v21 = 1;
            goto LABEL_64;
          }

          if ((v20 & 1) == 0)
          {
            goto LABEL_37;
          }

          LOBYTE(v20) = 1;
        }

        else
        {
          if (v31 == 14)
          {
            v33 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(selfCopy, v18, v25);
            if (v33)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v20)
                {
                  LOBYTE(v20) = 1;
                  v27 = 0x277CCA000;
LABEL_63:

                  goto LABEL_64;
                }
              }

              else
              {
                v65 = MEMORY[0x277D81150];
                v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSWPStorage validate:]");
                v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
                v69 = objc_opt_class();
                v70 = NSStringFromClass(v69);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v71, v66, v68, 8238, 0, "Unexpected %{public}@ for footnote character", v70);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
              }
            }

            else
            {
              v58 = MEMORY[0x277D81150];
              v59 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v56, "[TSWPStorage validate:]");
              v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 8234, 0, "invalid nil value for '%{public}s'", "footnoteAttachment");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
            }

            if ((validateCopy & 4) != 0)
            {
              TSUSetCrashReporterInfo();
              v257 = MEMORY[0x277D81150];
              v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v258, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8241);
              v261 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v257, v262, v259, v261, 8241, 1, "storage validation fail: footnote");

              TSUCrashBreakpoint();
              goto LABEL_235;
            }

            v27 = 0x277CCA000;
            if (!v21)
            {
              if (qword_280A57D98 == -1)
              {
                LOBYTE(v20) = 0;
                goto LABEL_62;
              }

              sub_276F4EBFC();
            }

            goto LABEL_59;
          }

          if (v31 == 65532)
          {
            v33 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(selfCopy, v18, v25);
            if (!v33)
            {
              v34 = MEMORY[0x277D81150];
              v35 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v32, "[TSWPStorage validate:]");
              v37 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 8227, 0, "invalid nil value for '%{public}s'", "attachment");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = MEMORY[0x277D81150];
              v43 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v41, "[TSWPStorage validate:]");
              v45 = objc_msgSend_stringWithUTF8String_(*(v27 + 3240), v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 8229, 0, "Unexpected footnote reference for attachment character");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
              goto LABEL_51;
            }

            if ((v20 & (v33 != 0)) != 0)
            {
              LOBYTE(v20) = 1;
              goto LABEL_63;
            }

LABEL_51:
            if ((validateCopy & 4) != 0)
            {
              TSUSetCrashReporterInfo();
              v263 = MEMORY[0x277D81150];
              v265 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v264, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8231);
              v267 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v266, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v263, v268, v265, v267, 8231, 1, "storage validation fail: attachment");

              TSUCrashBreakpoint();
              goto LABEL_235;
            }

            if (!v21)
            {
              if (qword_280A57D98 == -1)
              {
                LOBYTE(v20) = 0;
LABEL_62:
                v21 = 1;
                goto LABEL_63;
              }

              sub_276F4EC24();
            }

LABEL_59:
            LOBYTE(v20) = 0;
            goto LABEL_62;
          }
        }

LABEL_64:
        ++v25;
        --v24;
        ++v26;
        if (v302 == v25)
        {
          v80 = (v301 + 1);
          goto LABEL_78;
        }
      }
    }

    v80 = 1;
LABEL_78:
    v10 = v299;
    v20 = v20 & (v299 == v80);
    if (v299 == v80)
    {
      if (v20)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage validate:]");
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 8245, 0, "Mismatch between breaking character count and paragraph count.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
    }

    if ((validateCopy & 4) != 0)
    {
      TSUSetCrashReporterInfo();
      v287 = MEMORY[0x277D81150];
      v289 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v288, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8246);
      v291 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v290, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v287, v292, v289, v291, 8246, 1, "storage validation fail: bad paragraph count");

      TSUCrashBreakpoint();
      goto LABEL_235;
    }

    if (!v21 && qword_280A57D98 != -1)
    {
      sub_276F4EC74();
    }

    v21 = 1;
  }

LABEL_86:
  if (!v307)
  {
    v111 = MEMORY[0x277D81150];
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage validate:]");
    v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v115, v112, v114, 8249, 0, "Paragraph table is required..");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117);
    goto LABEL_126;
  }

  if (v20)
  {
    if (!v10)
    {
      LOBYTE(v20) = 1;
      goto LABEL_126;
    }

    v88 = v10;
    v89 = 0;
    v90 = 0;
    LOBYTE(v20) = 1;
    v91 = 0x277CCA000uLL;
    v92 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      objc_opt_class();
      v93 = TSWPAttributeArray::objectForAttributeIndex(v307, v90);
      v94 = TSUDynamicCast();

      if (!v94)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        goto LABEL_94;
      }

      v96 = 1;
      v97 = v307;
LABEL_100:
      v106 = TSWPAttributeArray::charIndexForAttributeIndex(v97, v90);
      v108 = v106;
      if (v92 != 0x7FFFFFFFFFFFFFFFLL && v106 <= v92)
      {
        if ((validateCopy & 4) != 0)
        {
          TSUSetCrashReporterInfo();
          v245 = MEMORY[0x277D81150];
          v247 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v246, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8268);
          v249 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v248, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v245, v250, v247, v249, 8268, 1, "storage validation fail: Par style index");

          TSUCrashBreakpoint();
          goto LABEL_235;
        }

        if (!v21)
        {
          if (qword_280A57D98 == -1)
          {
            LOBYTE(v20) = 0;
LABEL_116:
            v21 = 1;
            goto LABEL_117;
          }

          sub_276F4ECC4();
        }

LABEL_113:
        LOBYTE(v20) = 0;
        goto LABEL_116;
      }

      if (!v96 || v90 && (v106 - 1 >= v302 || (v109 = objc_msgSend_characterAtIndex_(selfCopy, v107, v106 - 1), (IsParagraphBreakingCharacter(v109) & 1) == 0)))
      {
        if ((validateCopy & 4) != 0)
        {
          TSUSetCrashReporterInfo();
          v251 = MEMORY[0x277D81150];
          v253 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v252, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8273);
          v255 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v254, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v251, v256, v253, v255, 8273, 1, "storage validation fail: par break char");

          TSUCrashBreakpoint();
          goto LABEL_235;
        }

        if (!v21)
        {
          if (qword_280A57D98 == -1)
          {
            LOBYTE(v20) = 0;
            goto LABEL_116;
          }

          sub_276F4ECEC();
        }

        goto LABEL_113;
      }

      LOBYTE(v20) = 1;
LABEL_117:
      if (v94 != v89)
      {
        v110 = v94;

        v89 = v110;
      }

      ++v90;
      v92 = v108;
      if (v88 == v90)
      {

        goto LABEL_126;
      }
    }

    v98 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v95, "[TSWPStorage validate:]");
    v100 = v91;
    v102 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v103, v99, v102, 8260, 0, "Non-paragraph style in paragraph table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
    v91 = v100;
LABEL_94:
    if ((validateCopy & 4) != 0)
    {
      TSUSetCrashReporterInfo();
      v233 = MEMORY[0x277D81150];
      v235 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v234, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8262);
      v237 = objc_msgSend_stringWithUTF8String_(*(v91 + 3240), v236, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v233, v238, v235, v237, 8262, 1, "storage validation fail: par style");

      TSUCrashBreakpoint();
      goto LABEL_235;
    }

    v97 = v307;
    if (!v21)
    {
      if (qword_280A57D98 == -1)
      {
        v96 = 0;
        goto LABEL_99;
      }

      sub_276F4EC9C();
    }

    v96 = 0;
LABEL_99:
    v21 = 1;
    goto LABEL_100;
  }

LABEL_126:
  v118 = v304;
  if (v304 && *(v304 + 6))
  {
    v119 = 0;
    v120 = 0x277CCA000uLL;
    v121 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v122 = TSWPAttributeArray::objectForAttributeIndex(v118, v119);
      if (v122)
      {
        break;
      }

LABEL_141:
      v133 = TSWPAttributeArray::charIndexForAttributeIndex(v118, v119);
      v134 = v133;
      if (v121 == 0x7FFFFFFFFFFFFFFFLL || v133 > v121)
      {
        goto LABEL_149;
      }

      if ((validateCopy & 4) != 0)
      {
        TSUSetCrashReporterInfo();
        v215 = MEMORY[0x277D81150];
        v217 = objc_msgSend_stringWithUTF8String_(*(v120 + 3240), v216, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8306);
        v219 = objc_msgSend_stringWithUTF8String_(*(v120 + 3240), v218, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v215, v220, v217, v219, 8306, 1, "storage validation fail: char style index");

        TSUCrashBreakpoint();
        goto LABEL_235;
      }

      if (!v21)
      {
        if (qword_280A57D98 == -1)
        {
          LOBYTE(v20) = 0;
          goto LABEL_148;
        }

        sub_276F4ED3C();
      }

      LOBYTE(v20) = 0;
LABEL_148:
      v21 = 1;
LABEL_149:

      ++v119;
      v121 = v134;
      v118 = v304;
      if (v119 >= *(v304 + 6))
      {
        goto LABEL_153;
      }
    }

    objc_opt_class();
    v124 = TSUDynamicCast();
    if (v124)
    {
      if (v20)
      {
        LOBYTE(v20) = 1;
        v118 = v304;
LABEL_140:

        goto LABEL_141;
      }
    }

    else
    {
      v125 = MEMORY[0x277D81150];
      v126 = objc_msgSend_stringWithUTF8String_(*(v120 + 3240), v123, "[TSWPStorage validate:]");
      v127 = v120;
      v129 = objc_msgSend_stringWithUTF8String_(*(v120 + 3240), v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v130, v126, v129, 8298, 0, "Non-character style object in attribute table");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132);
      v120 = v127;
    }

    if ((validateCopy & 4) != 0)
    {
      TSUSetCrashReporterInfo();
      v227 = MEMORY[0x277D81150];
      v229 = objc_msgSend_stringWithUTF8String_(*(v120 + 3240), v228, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8300);
      v231 = objc_msgSend_stringWithUTF8String_(*(v120 + 3240), v230, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v227, v232, v229, v231, 8300, 1, "storage validation fail: char style object");

      TSUCrashBreakpoint();
      goto LABEL_235;
    }

    v118 = v304;
    if (!v21)
    {
      if (qword_280A57D98 == -1)
      {
        LOBYTE(v20) = 0;
        goto LABEL_139;
      }

      sub_276F4ED14();
    }

    LOBYTE(v20) = 0;
LABEL_139:
    v21 = 1;
    goto LABEL_140;
  }

LABEL_153:
  if (v20)
  {
    v135 = v305;
    if (v305)
    {
      if (*(v305 + 6))
      {
        v136 = 0;
        LOBYTE(v20) = 1;
        v137 = "[TSWPStorage validate:]";
        while (1)
        {
          v138 = TSWPAttributeArray::charIndexForAttributeIndex(v135, v136);
          if (TSWPAttributeArray::exactAttributeIndexForCharIndex(v307, v138) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v140 = MEMORY[0x277D81150];
            v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, v137);
            v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v144, v141, v143, 8315, 0, "Mismatch between par table and drop cap table.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146);
          }

          v147 = TSWPAttributeArray::objectForAttributeIndex(v305, v136);
          if (v147)
          {
            objc_opt_class();
            v148 = TSUDynamicCast();

            if (!v148)
            {
              break;
            }
          }

          if ((v20 & 1) == 0)
          {
            goto LABEL_164;
          }

          LOBYTE(v20) = 1;
LABEL_170:

          ++v136;
          v135 = v305;
          if (v136 >= *(v305 + 6))
          {
            goto LABEL_173;
          }
        }

        v150 = MEMORY[0x277D81150];
        v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, v137);
        v152 = v137;
        v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v155, v151, v154, 8318, 0, "Bad drop cap style object (%@) in wp storage.", v147);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157);
        v137 = v152;
LABEL_164:
        if ((validateCopy & 4) != 0)
        {
          TSUSetCrashReporterInfo();
          v221 = MEMORY[0x277D81150];
          v223 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v222, "[TSWPStorage validate:]", v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8320, v147);
          v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v224, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v221, v226, v223, v225, 8320, 1, "Bad drop cap style object (%@) in wp storage.", v147);

          TSUCrashBreakpoint();
          goto LABEL_235;
        }

        if (!v21)
        {
          if (qword_280A57D98 == -1)
          {
            LOBYTE(v20) = 0;
            goto LABEL_169;
          }

          sub_276F4ED64();
        }

        LOBYTE(v20) = 0;
LABEL_169:
        v21 = 1;
        goto LABEL_170;
      }

LABEL_174:
      if (objc_msgSend_WPKindSupportsDropCaps(selfCopy, v18, v19))
      {
        if (!v305)
        {
          v158 = MEMORY[0x277D81150];
          v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage validate:]");
          v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v162, v159, v161, 8326, 0, "WPStorage should have a drop cap table but does not have one.");
LABEL_180:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v167, v168);
        }
      }

      else if (v305)
      {
        v164 = MEMORY[0x277D81150];
        v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage validate:]");
        v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v164, v166, v159, v161, 8329, 0, "WPStorage should not have a drop cap table but does have one.");
        goto LABEL_180;
      }

      v163 = 1;
      goto LABEL_182;
    }
  }

LABEL_173:
  if (v20)
  {
    goto LABEL_174;
  }

  v163 = 0;
LABEL_182:
  v171 = objc_msgSend_documentRoot(selfCopy, v18, v19);
  if (!v171 || !objc_msgSend_supportsSections(selfCopy, v169, v170))
  {

    if ((v163 & 1) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_189;
  }

  if (!v300)
  {

    goto LABEL_209;
  }

  v172 = *(v300 + 24);

  if (!v172)
  {
LABEL_209:
    v208 = MEMORY[0x277D81150];
    v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "[TSWPStorage validate:]");
    v211 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v208, v212, v209, v211, 8380, 0, "No section table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v213, v214);
    goto LABEL_210;
  }

  if (v163)
  {
LABEL_189:
    if (!objc_msgSend_hasTrackedChanges(selfCopy, v173, v174) || objc_msgSend_supportsChangeTracking(selfCopy, v175, v176))
    {
      v177 = 0;
      v178 = selfCopy;
      do
      {
        v179 = objc_msgSend_attributeArrayForKind_(v178, v175, v177);
        v180 = v179;
        if (v179 && TSWPAttributeArray::hasObjects(*(v179 + 28)) && *(v180 + 28) != 8 && *(v180 + 24))
        {
          v181 = 0;
          v182 = 0;
          do
          {
            v183 = v182;
            v184 = TSWPAttributeArray::objectForAttributeIndex(v180, v181);
            v185 = v184;
            if (v182 != v184 && v184 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v190 = objc_msgSend_parentStorage(v185, v186, v187);
              if (v190 == selfCopy)
              {
              }

              else
              {
                v191 = objc_msgSend_documentRoot(selfCopy, v188, v189);

                if (v191)
                {
                  v193 = MEMORY[0x277D81150];
                  v308 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v192, "[TSWPStorage validate:]");
                  v306 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
                  v197 = objc_msgSend_parentStorage(v185, v195, v196);
                  v198 = objc_opt_class();
                  v199 = NSStringFromClass(v198);
                  v200 = TSWPAttributeArray::charIndexForAttributeIndex(v180, v181);
                  v203 = objc_msgSend_parentStorage(v185, v201, v202);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v204, v308, v306, 8496, 0, "Expected parentStorage to be %@ but got %@ for %{public}@ at %lu. Is parent storage nil (%d)? ", selfCopy, v197, v199, v200, v203 == 0);

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206);
                }
              }
            }

            v182 = v185;

            ++v181;
          }

          while (v181 < *(v180 + 24));

          v178 = selfCopy;
        }

        ++v177;
      }

      while (v177 != 23);
      return 1;
    }

    if ((validateCopy & 4) == 0)
    {
      if (v21)
      {
        return 0;
      }

      if (qword_280A57D98 != -1)
      {
        sub_276F4EDB4();
        return 0;
      }

      return 0;
    }

    TSUSetCrashReporterInfo();
    v293 = MEMORY[0x277D81150];
    v295 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v294, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8475);
    v297 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v296, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v293, v298, v295, v297, 8475, 1, "storage validation fail: tracked changes in unsupported storage");

    TSUCrashBreakpoint();
LABEL_235:
    abort();
  }

LABEL_210:
  if ((validateCopy & 4) != 0)
  {
    TSUSetCrashReporterInfo();
    v269 = MEMORY[0x277D81150];
    v271 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v270, "[TSWPStorage validate:]", "[TSWPStorage validate:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm", 8382);
    v273 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v272, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v269, v274, v271, v273, 8382, 1, "storage validation fail: section");

    TSUCrashBreakpoint();
    goto LABEL_235;
  }

  if (v21)
  {
    return 0;
  }

  if (qword_280A57D98 != -1)
  {
    sub_276F4ED8C();
    return 0;
  }

  return 0;
}

- (TSDContainerInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

- (TSWPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert attributeKind:(unint64_t)kind dolcContext:(id)context undoTransaction:(void *)transaction
{
  contextCopy = context;
  v13 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v12, index, kind, &v24);
  if (v13)
  {
    if (index > v24 && index - v24 != v25)
    {
      v14 = v25 + v24 - index;
      if (v25 + v24 != index)
      {
        if (TSWPAttributeArray::attributeKindMustCopyOnSplit(kind))
        {
          v17 = objc_msgSend_context(self, v15, v16);
          v19 = objc_msgSend_copyWithContext_(v13, v18, v17);

          objc_msgSend_resetTextAttributeUUIDString(v19, v20, v21);
        }

        else
        {
          v19 = 0;
        }

        v22 = objc_msgSend_styleAttributeArrayKind(v13, v15, v16);
        objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v23, v19, index, v14, v22, contextCopy, transaction);
      }
    }
  }
}

- (void)splitSmartFieldAtCharIndex:(unint64_t)index lengthToInsert:(unint64_t)insert dolcContext:(id)context undoTransaction:(void *)transaction
{
  contextCopy = context;
  objc_msgSend_splitSmartFieldAtCharIndex_lengthToInsert_attributeKind_dolcContext_undoTransaction_(self, v10, index, insert, 6);
  objc_msgSend_splitSmartFieldAtCharIndex_lengthToInsert_attributeKind_dolcContext_undoTransaction_(self, v11, index, insert, 12, contextCopy, transaction);
  objc_msgSend_splitSmartFieldAtCharIndex_lengthToInsert_attributeKind_dolcContext_undoTransaction_(self, v12, index, insert, 21, contextCopy, transaction);
}

- (__CTFont)createFontAtCharIndex:(unint64_t)index scaleTextPercent:(unint64_t)percent effectiveRange:(_NSRange *)range styleProvider:(id)provider
{
  providerCopy = provider;
  v12 = objc_msgSend_characterStyleAtCharIndex_left_effectiveRange_(self, v11, index, 0, 0);
  v14 = objc_msgSend_paragraphIndexAtCharIndex_(self, v13, index);
  v16 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(providerCopy, v15, v14, range);
  FontForStyle = TSWPFastCreateFontForStyle(v12, v16, percent);

  return FontForStyle;
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string options:(unint64_t)options changedRange:(_NSRange *)changedRange changeDelta:(int64_t *)delta undoTransaction:(void *)transaction changeSession:(id)session
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  sessionCopy = session;
  if (!stringCopy)
  {
    stringCopy = &stru_28860A0F0;
  }

  v19 = objc_msgSend_string(self, v16, v17);
  v29 = objc_msgSend_tsk_stringByCapitalizingToMatchString_range_searchOptions_(stringCopy, v20, v19, location, length, options);

  v23 = objc_msgSend_length(self, v21, v22);
  v25 = objc_msgSend_selectionWithRange_(TSWPSelection, v24, location, length);
  objc_msgSend_replaceCharactersInSelection_withString_withFlags_replaceTextData_changeSession_undoTransaction_outInsertedRange_(self, v26, v25, v29, 1, 0, sessionCopy, transaction, 0);

  if (delta)
  {
    *delta = objc_msgSend_length(self, v27, v28) - v23;
  }

  if (changedRange)
  {
    changedRange->location = location;
    changedRange->length = objc_msgSend_length(v29, v27, v28);
  }
}

- (id)indexesSetForBIUProperties:(id)properties selection:(id)selection insertionStyle:(id)style
{
  propertiesCopy = properties;
  selectionCopy = selection;
  styleCopy = style;
  v13 = objc_msgSend_superRange(selectionCopy, v11, v12);
  v15 = objc_msgSend_stylesForResolvingBIUPropertiesWithSelection_charIndex_insertionStyle_(self, v14, selectionCopy, v13, styleCopy);
  v17 = objc_msgSend_indexesSetForBIUProperties_styles_(self, v16, propertiesCopy, v15);

  return v17;
}

- (id)indexesSetForBIUProperties:(id)properties styles:(id)styles
{
  v37 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  stylesCopy = styles;
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = propertiesCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v36, 16);
  if (v14)
  {
    v15 = 0;
    v16 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_unsignedIntValue(*(*(&v32 + 1) + 8 * i), v12, v13, v32);
        v19 = v18;
        if (v18 <= 2)
        {
          if (!v18)
          {
            v22 = 0;
            v21 = 19;
            goto LABEL_25;
          }

          if (v18 == 1)
          {
            v22 = 0;
            v21 = 20;
            goto LABEL_25;
          }

          if (v18 != 2)
          {
            goto LABEL_37;
          }

          goto LABEL_16;
        }

        if (v18 > 4)
        {
          if (v18 == 5)
          {
            v20 = 65093;
LABEL_20:
            v23 = TSWPResolvePropertyForStyles(stylesCopy, 45);
            if (objc_msgSend_length(v23, v24, v25) == 1 && v20 == objc_msgSend_characterAtIndex_(v23, v26, 0))
            {
              objc_msgSend_addIndex_(v9, v27, v15);
            }

            goto LABEL_37;
          }

          if (v18 != 6)
          {
            goto LABEL_37;
          }

LABEL_16:
          v21 = 23;
          v22 = 1;
          goto LABEL_25;
        }

        if (v18 != 3)
        {
          v20 = 8226;
          goto LABEL_20;
        }

        v22 = 0;
        v21 = 27;
LABEL_25:
        v28 = sub_276D38764(stylesCopy, v21, 0x80000000);
        if ((v28 & 0x7FFFFFFF) != 0)
        {
          if (!v22 || (v19 == 2 ? (v29 = v28 == 1) : (v29 = 0), v29 || (v19 == 6 ? (v30 = v28 == 3) : (v30 = 0), v30)))
          {
            objc_msgSend_addIndex_(v9, v12, v15);
          }
        }

LABEL_37:
        ++v15;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v32, v36, 16);
    }

    while (v14);
  }

  return v9;
}

- (id)stylesForResolvingBIUPropertiesWithSelection:(id)selection charIndex:(unint64_t)index insertionStyle:(id)style
{
  selectionCopy = selection;
  styleCopy = style;
  isInsertionPoint = objc_msgSend_isInsertionPoint(selectionCopy, v10, v11);
  v14 = objc_msgSend_characterStyleAtCharIndex_left_effectiveRange_(self, v13, index, isInsertionPoint, 0);
  v16 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(self, v15, index, 0);
  v17 = objc_opt_new();
  if (objc_msgSend_isInsertionPoint(selectionCopy, v18, v19))
  {
    objc_msgSend_tsu_addNonNilObject_(v17, v20, styleCopy);
  }

  else
  {
    objc_msgSend_tsu_addNonNilObject_(v17, v20, 0);
  }

  if (!objc_msgSend_isInsertionPoint(selectionCopy, v21, v22) || (objc_msgSend_documentRoot(self, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_theme(v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_defaultCharacterStyle(v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), v31, v28, v25, v31 != styleCopy))
  {
    objc_msgSend_tsu_addNonNilObject_(v17, v23, v14);
  }

  v32 = objc_msgSend_dropCapStyleIfMatchingSelectionExactly_(self, v23, selectionCopy);
  objc_msgSend_tsu_addNonNilObject_(v17, v33, v32);

  objc_msgSend_tsu_addNonNilObject_(v17, v34, v16);

  return v17;
}

- (void)setIngestingWTAttributedString:(BOOL)string
{
  if (string)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 303) = *(self + 303) & 0xF7 | v3;
}

- (BOOL)p_passesExtraTablesChecksForStoringInAStringValueCell
{
  if (objc_msgSend_paragraphLevelAtCharIndex_(self, a2, 0) || objc_msgSend_listStyleCount(self, v3, v4) > 1)
  {
    return 0;
  }

  if (!objc_msgSend_listStyleCount(self, v5, v6))
  {
    return 1;
  }

  v10 = objc_msgSend_listStyleAtCharIndex_effectiveRange_(self, v9, 0, 0);
  v13 = v10;
  if (v10)
  {
    v7 = objc_msgSend_firstLabelType(v10, v11, v12) == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)canBeStoredInAStringValueCell
{
  canPasteAsPlainTextWithUniformParagraphs = objc_msgSend_canPasteAsPlainTextWithUniformParagraphs(self, a2, v2);
  if (canPasteAsPlainTextWithUniformParagraphs)
  {

    LOBYTE(canPasteAsPlainTextWithUniformParagraphs) = MEMORY[0x2821F9670](self, sel_p_passesExtraTablesChecksForStoringInAStringValueCell, v5);
  }

  return canPasteAsPlainTextWithUniformParagraphs;
}

- (BOOL)hasDrawableAttachmentOfClass:(Class)class
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = objc_opt_class();
  v8 = objc_msgSend_range(self, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276D34418;
  v11[3] = &unk_27A6F3C88;
  v11[4] = &v12;
  v11[5] = class;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(self, v9, v5, v8, v9, v11);
  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return self;
}

- (id)indexesSetForBIUProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [TSWPSelection alloc];
  v8 = objc_msgSend_range(self, v6, v7);
  v10 = objc_msgSend_initWithRange_(v5, v9, v8, v9);
  v12 = objc_msgSend_indexesSetForBIUProperties_selection_insertionStyle_(self, v11, propertiesCopy, v10, 0);

  return v12;
}

- (id)storageByApplyingCustomFormat:(id)format
{
  formatCopy = format;
  selfCopy = self;
  v8 = selfCopy;
  if (formatCopy)
  {
    v9 = objc_msgSend_context(selfCopy, v6, v7);
    v11 = objc_msgSend_copyWithContext_(v8, v10, v9);

    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%C", *MEMORY[0x277D81400]);
    v15 = objc_msgSend_rangeOfString_(formatCopy, v14, v13);

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = objc_msgSend_substringToIndex_(formatCopy, v16, v15);
      v18 = objc_msgSend_substringFromIndex_(formatCopy, v19, v15 + 1);
      if (v17)
      {
        objc_msgSend_insertString_atCharIndex_undoTransaction_(v11, v20, v17, 0, 0);
      }

      if (v18)
      {
        v22 = objc_msgSend_length(v11, v20, v21);
        objc_msgSend_insertString_atCharIndex_undoTransaction_(v11, v23, v18, v22, 0);
      }
    }
  }

  else
  {
    v11 = selfCopy;
  }

  return v11;
}

- (BOOL)supportsParentRotation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_childInfos(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if ((objc_msgSend_supportsParentRotation(*(*(&v12 + 1) + 8 * i), v5, v6) & 1) == 0)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

+ (TSWPAttributeArray)createEmptyAttributeArrayForKind:(unint64_t)kind
{
  kindCopy = kind;
  switch(kind)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0x12uLL:
      v4 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v4;
      if (v4)
      {
        TSWPAttributeArray::TSWPAttributeArray(v4, kindCopy);
        goto LABEL_4;
      }

      break;
    case 3uLL:
      v15 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v15;
      if (v15)
      {
        TSWPAttributeArray::TSWPAttributeArray(v15, 3u);
        v6 = &unk_288606DB0;
        goto LABEL_29;
      }

      break;
    case 4uLL:
      v17 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v17;
      if (v17)
      {
        TSWPAttributeArray::TSWPAttributeArray(v17, 4u);
        goto LABEL_28;
      }

      break;
    case 5uLL:
      v9 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v9;
      if (v9)
      {
        TSWPAttributeArray::TSWPAttributeArray(v9, 5u);
LABEL_28:
        v6 = &unk_2885FFA28;
        goto LABEL_29;
      }

      break;
    case 6uLL:
    case 7uLL:
      v8 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v8;
      if (v8)
      {
        TSWPAttributeArray::TSWPAttributeArray(v8, kindCopy);
        goto LABEL_19;
      }

      break;
    case 8uLL:
      v19 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v19;
      if (v19)
      {
        TSWPAttributeArray::TSWPAttributeArray(v19, 8u);
        goto LABEL_4;
      }

      break;
    case 9uLL:
      v29 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v29;
      if (v29)
      {
        TSWPAttributeArray::TSWPAttributeArray(v29, 9u);
        goto LABEL_4;
      }

      break;
    case 0xCuLL:
      v11 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v11;
      if (v11)
      {
        TSWPAttributeArray::TSWPAttributeArray(v11, 0xCu);
        goto LABEL_19;
      }

      break;
    case 0xDuLL:
    case 0xEuLL:
      v7 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v7;
      if (v7)
      {
        TSWPAttributeArray::TSWPAttributeArray(v7, kindCopy);
        v6 = &unk_288606FD0;
        goto LABEL_29;
      }

      break;
    case 0xFuLL:
      v21 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v21;
      if (v21)
      {
        sub_276DCF878(v21, 0xFu);
      }

      break;
    case 0x10uLL:
      v10 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v10;
      if (v10)
      {
        sub_276DCF878(v10, 0x10u);
      }

      break;
    case 0x11uLL:
      v14 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v14;
      if (v14)
      {
        TSWPAttributeArray::TSWPAttributeArray(v14, 0x11u);
        v6 = &unk_2885FEFE8;
        goto LABEL_29;
      }

      break;
    case 0x13uLL:
      v20 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v20;
      if (v20)
      {
        sub_276E0AB1C(v20, 0x13u);
      }

      break;
    case 0x14uLL:
      v12 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v12;
      if (v12)
      {
        sub_276E0AB1C(v12, 0x14u);
      }

      break;
    case 0x15uLL:
      v13 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v13;
      if (v13)
      {
        TSWPAttributeArray::TSWPAttributeArray(v13, 0x15u);
LABEL_19:
        v6 = &unk_2886071D0;
        goto LABEL_29;
      }

      break;
    case 0x16uLL:
      v16 = operator new(0x20uLL, MEMORY[0x277D826F0]);
      v5 = v16;
      if (v16)
      {
        TSWPAttributeArray::TSWPAttributeArray(v16, 0x16u);
LABEL_4:
        v6 = &unk_288606BB0;
LABEL_29:
        v5->var0 = v6;
      }

      break;
    default:
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPStorage(AttributeTables) createEmptyAttributeArrayForKind:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 105, 0, "createAttributeArrayForKind: bad kind.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      v5 = 0;
      break;
  }

  return v5;
}

- (void)p_attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range
{
  v10 = 0;
  v11 = objc_msgSend_characterCount(self, a2, index) - index;
  indexCopy = index;
  do
  {
    if (interest[v10] && (v13 = self->_attributesTable[v10]) != 0 && *(v13 + 6) && (!TSWPAttributeArray::appliesToRange(*(v13 + 28)) ? (v15 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v13, index), indexCopy = index, v11 = 1) : (TSWPAttributeArray::rangeForCharIndex(v13, index), indexCopy = NSIntersectionRangeInclusive(), v11 = v14, v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v13, index)), v15 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v16 = TSWPAttributeArray::objectForAttributeIndex(v13, v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    table[v10] = v17;

    ++v10;
  }

  while (v10 != 23);
  range->location = indexCopy;
  range->length = v11;
}

- (_NSRange)insertSpecialCharacter:(unsigned __int16)character object:(id)object kind:(unint64_t)kind range:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)session
{
  v9 = objc_msgSend_insertSpecialCharacter_object_kind_range_placementIndex_dolcContext_undoTransaction_changeSession_(self, a2, character, object, kind, range.location, range.length, 0xFFFFFFFFLL, context, transaction, session);
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)insertSpecialCharacter:(unsigned __int16)character object:(id)object kind:(unint64_t)kind range:(_NSRange)range placementIndex:(int)index dolcContext:(id)context undoTransaction:(void *)transaction changeSession:(id)self0
{
  v10 = *MEMORY[0x277D81490];
  v11 = *(MEMORY[0x277D81490] + 8);
  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)isObjectValid:(id)valid forStyleKind:(int)kind
{
  validCopy = valid;
  if (!validCopy)
  {
    goto LABEL_25;
  }

  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);

  if (v8 == validCopy)
  {
    goto LABEL_25;
  }

  isKindOfClass = 0;
  if (kind > 14)
  {
    if (kind > 18)
    {
      if (kind == 19 || kind == 20 || kind == 21)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (kind != 15 && kind != 16)
    {
      if (kind != 17)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (objc_opt_class())
    {
      goto LABEL_25;
    }

LABEL_26:
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_27;
  }

  if (kind > 11)
  {
    goto LABEL_26;
  }

  if (kind == 3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    isKindOfClass = 1;
    goto LABEL_27;
  }

  if (kind == 6 || kind == 7)
  {
    goto LABEL_26;
  }

LABEL_27:

  return isKindOfClass & 1;
}

- (void)nonUndoableInsertObject:(id)object charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex dolcContext:(id)context
{
  v38[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contextCopy = context;
  objc_msgSend_willModify(self, v14, v15);
  if (!array)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPStorage(AttributeTables) nonUndoableInsertObject:charIndex:attributeArray:attributeIndex:dolcContext:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 237, 0, "insertObject: Bad attribute array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  if (attributeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPStorage(AttributeTables) nonUndoableInsertObject:charIndex:attributeArray:attributeIndex:dolcContext:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 238, 0, "insertObject: Bad attribute index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  (*(array->var0 + 7))(array, objectCopy, index, attributeIndex, contextCopy, 0);
  v31 = TSWPAttributeArray::rangeForAttributeIndex(array, attributeIndex);
  v33 = v32;
  v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v32, *(array + 28));
  v38[0] = v34;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v38, 1);
  objc_msgSend_didChangeRange_delta_broadcastKind_attributeKindChanges_(self, v37, v31, v33, 0, 0, v36);
}

- (void)nonUndoableInsertParagraphData:(TSWPParagraphData)data charIndex:(unint64_t)index attributeArray:(TSWPAttributeArray *)array attributeIndex:(unint64_t)attributeIndex
{
  v35[1] = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, *&data.var0.var0.listStart);
  if (!array)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(AttributeTables) nonUndoableInsertParagraphData:charIndex:attributeArray:attributeIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 248, 0, "nonUndoableInsertParagraphData: Bad attribute array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (attributeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(AttributeTables) nonUndoableInsertParagraphData:charIndex:attributeArray:attributeIndex:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 249, 0, "nonUndoableInsertParagraphData: Bad attribute index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26.var0.var0.listStart = data.var0.var0.listStart;
  TSWPAttributeRecord::TSWPAttributeRecord(&v34, index, v26);
  TSWPAttributeArray::nonUndoableInsertAttribute(array, &v34, attributeIndex, 0, 0);
  v27 = TSWPAttributeArray::rangeForAttributeIndex(array, attributeIndex);
  v29 = v28;
  v30 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v28, *(array + 28));
  v35[0] = v30;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v35, 1);
  objc_msgSend_didChangeRange_delta_broadcastKind_attributeKindChanges_(self, v33, v27, v29, 0, 0, v32);
}

- (void)applyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind actionBuilder:(void *)builder
{
  v7 = *&kind;
  rangeCopy = range;
  objectCopy = object;
  if ((objc_msgSend_isObjectValid_forStyleKind_(self, v10, objectCopy, v7) & 1) == 0)
  {
    TSUSetCrashReporterInfo();
    v21 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPStorage(AttributeTables) applyObject:toCharRange:forKind:actionBuilder:]", "[TSWPStorage(AttributeTables) applyObject:toCharRange:forKind:actionBuilder:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm", 257, objectCopy, v7);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v23, v25, 257, 1, "Object %@ not allowed for style kind: %d in WPStorage", objectCopy, v7);

    TSUCrashBreakpoint();
    abort();
  }

  if (builder)
  {
    sub_276F33868(builder, v7, &rangeCopy, objectCopy);
    (*(*builder + 16))(builder);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(AttributeTables) applyObject:toCharRange:forKind:actionBuilder:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 259, 0, "No action builder supplied.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_opt_class();
  v20 = TSUDynamicCast();
  if (v20)
  {
    objc_msgSend_didChangeRange_delta_broadcastKind_(self, v19, rangeCopy.location, rangeCopy.length, 0, 1);
  }
}

- (void)applyObject:(id)object toCharRange:(_NSRange)range forKind:(int)kind dolcContext:(id)context undoTransaction:(void *)transaction
{
  v9 = *&kind;
  length = range.length;
  location = range.location;
  objectCopy = object;
  sub_276F32CA8(v15, 2, self, transaction, context);
  v15[0] = &unk_288609A08;
  objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v14, objectCopy, location, length, v9, v15);
  sub_276F32E10(v15);
}

- (void)applyObject:(id)object toParagraphIndexRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  objectCopy = object;
  v18[0] = objc_msgSend_textRangeForParagraphIndexRange_(self, v12, location, length);
  v18[1] = v13;
  sub_276F32CA8(v17, 2, self, transaction, 0);
  v17[0] = &unk_288609A08;
  if (length)
  {
    objc_msgSend_textRangeForParagraphAtIndex_(self, v14, length + location - 1, v17[0]);
    v16 = (v15 != 0) << 11;
  }

  else
  {
    v16 = 2048;
  }

  sub_276F33A24(v17, kind, v18, objectCopy, v16, 0xFFFFFFFFLL);
  sub_276F32E84(v17);
  sub_276F32E10(v17);
}

- (void)applyObject:(id)object toParagraphsInCharRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  objectCopy = object;
  v13 = objc_msgSend_attributeArrayForKind_(self, v12, 0);
  if (v13)
  {
    v27.location = location;
    v27.length = length;
    v15 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v13, v27);
    v26[0] = objc_msgSend_textRangeForParagraphIndexRange_(self, v16, v15, v16);
    v26[1] = v17;
    sub_276F32CA8(v25, 2, self, transaction, 0);
    v25[0] = &unk_288609A08;
    sub_276F33A24(v25, kind, v26, objectCopy, (length == 0) << 11, 0xFFFFFFFFLL);
    sub_276F32E84(v25);
    sub_276F32E10(v25);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPStorage(AttributeTables) applyObject:toParagraphsInCharRange:forKind:undoTransaction:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 298, 0, "No paragraph array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }
}

- (void)applyParagraphData:(TSWPParagraphData)data toParagraphIndexRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  listStart = data.var0.var0.listStart;
  v15[0] = objc_msgSend_textRangeForParagraphIndexRange_(self, a2, range.location, range.length);
  v15[1] = v11;
  if (length)
  {
    objc_msgSend_textRangeForParagraphAtIndex_(self, v11, length + location - 1);
    v13 = (v12 != 0) << 11;
  }

  else
  {
    v13 = 2048;
  }

  sub_276F32CA8(v14, 2, self, transaction, 0);
  v14[0] = &unk_288609A08;
  sub_276F33818(v14, kind, v15, &listStart, v13);
  sub_276F32E84(v14);
  sub_276F32E10(v14);
}

- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphIndexRange:(_NSRange)range forKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  flagsCopy = flags;
  if (level >= 9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 337, 0, "illegal list level %lu", level);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  levelCopy = 8;
  if (level < 8)
  {
    levelCopy = level;
  }

  MEMORY[0x2821F9670](self, sel_applyParagraphData_toParagraphIndexRange_forKind_undoTransaction_, levelCopy | (flagsCopy << 16));
}

- (void)applyFlags:(unsigned __int16)flags level:(unint64_t)level toParagraphsInCharRange:(_NSRange)range undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  levelCopy = level;
  if (level >= 9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage(AttributeTables) applyFlags:level:toParagraphsInCharRange:undoTransaction:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 347, 0, "illegal list level %lu", levelCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_attributeArrayForKind_(self, a2, 0);
  if (v19)
  {
    if (levelCopy >= 8)
    {
      LOWORD(levelCopy) = 8;
    }

    v36.location = location;
    v36.length = length;
    v21 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(v19, v36);
    v34[0] = levelCopy;
    v34[1] = flags;
    v33[0] = objc_msgSend_textRangeForParagraphIndexRange_(self, v22, v21, v22);
    v33[1] = v23;
    sub_276F32CA8(v32, 2, self, transaction, 0);
    v32[0] = &unk_288609A08;
    sub_276F33818(v32, 1, v33, v34, (length == 0) << 11);
    sub_276F32E84(v32);
    sub_276F32E10(v32);
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage(AttributeTables) applyFlags:level:toParagraphsInCharRange:undoTransaction:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 351, 0, "No paragraph array.");

    v31 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v31, v29, v30);
  }
}

- (_NSRange)replaceAllOccurrencesOfObject:(id)object withObject:(id)withObject forKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  objectCopy = object;
  withObjectCopy = withObject;
  sub_276F32CA8(v32, 2, self, transaction, 0);
  v32[0] = &unk_288609A08;
  if (!withObjectCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPStorage(AttributeTables) replaceAllOccurrencesOfObject:withObject:forKind:undoTransaction:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 392, 0, "replaceAllOccurrencesOfStyle: toReplace is nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(self, v12, kind, 0, v32);
  v21 = actionState;
  if (!actionState || !*(actionState + 24))
  {
    length = 0;
LABEL_17:
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  length = 0;
  v23 = 0;
  location = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v25 = TSWPAttributeArray::objectForAttributeIndex(v21, v23);
    if (v25 == objectCopy)
    {
      v31.location = 0;
      v31.length = 0;
      v31.location = TSWPAttributeArray::rangeForAttributeIndex(v21, v23);
      v31.length = v26;
      sub_276F33A24(v32, kind, &v31, withObjectCopy, 2048, 0xFFFFFFFFLL);
      v27 = v31;
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35.location = location;
        v35.length = length;
        v27 = NSUnionRange(v35, v27);
      }

      length = v27.length;
      location = v27.location;
    }

    ++v23;
  }

  while (v23 < *(v21 + 24));
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v33)
  {
    v28 = v33;
  }

  else
  {
    v28 = &v34;
  }

  sub_276E3F5CC(v28, location, length, 0, 0);
LABEL_18:
  sub_276F32E84(v32);
  sub_276F32E10(v32);

  v29 = location;
  v30 = length;
  result.length = v30;
  result.location = v29;
  return result;
}

- (BOOL)canTransferAttributesForInitialization:(unint64_t)initialization withFlags:(unsigned int)flags
{
  if (((1 << initialization) & 0x18000) != 0)
  {
    v4 = (flags >> 1) & 1;
  }

  else
  {
    LOBYTE(v4) = initialization == 20;
  }

  if (((1 << initialization) & 0x6E3BFF) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return initialization <= 0x16 && v5;
}

- (void)cfRetainedNonUndoableFastCopyAttributeRecord:(TSWPAttributeRecord *)record shouldAddRecord:(BOOL *)addRecord attributeArrayKind:(unint64_t)kind atIndex:(unint64_t)index sourceStorage:(id)storage objectContext:(id)context flags:(unsigned int)flags actionState:(void *)self0
{
  storageCopy = storage;
  contextCopy = context;
  *addRecord = 1;
  if (TSWPAttributeArray::hasObjects(kind))
  {
    v20 = TSWPAttributeRecord::object(record, kind);
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  if (kind <= 7)
  {
    if (kind - 4 < 2)
    {
      if (v20 && (flags & 1) != 0)
      {
        v29 = objc_msgSend_copyWithContext_(v20, v18, contextCopy);

        v21 = CFRetain(v29);
        TSWPAttributeRecord::setObject(record, kind, v29);
        v20 = v29;
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (kind - 6 >= 2 && kind != 3)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (kind > 0x15)
    {
LABEL_33:
      if (kind != 8)
      {
        goto LABEL_51;
      }

      if (v20)
      {
        if (index)
        {
          if (objc_msgSend_supportsSectionCopying(self, v18, v19))
          {
            v32 = objc_msgSend_copyWithContext_(v20, v31, contextCopy);

            v21 = CFRetain(v32);
            v35 = objc_msgSend_stylesheet(self, v33, v34);
            objc_msgSend_i_ensureHeaderFooterStoragesExistWithStylesheet_(v32, v36, v35);

            TSWPAttributeRecord::setObject(record, 8uLL, v32);
            v20 = v32;
          }

          else
          {
            v21 = 0;
            *addRecord = 0;
          }
        }

        else
        {
          if (objc_msgSend_supportsSections(self, v18, v19))
          {
            if ((flags & 4) != 0)
            {
              v38 = objc_msgSend_copyWithContext_(v20, v37, contextCopy);
            }

            else
            {
              v38 = objc_msgSend_pDefaultSectionForContext_(self, v37, contextCopy);
            }

            v39 = CFRetain(v38);
          }

          else
          {
            v43 = MEMORY[0x277D81150];
            v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSWPStorage(AttributeTables) cfRetainedNonUndoableFastCopyAttributeRecord:shouldAddRecord:attributeArrayKind:atIndex:sourceStorage:objectContext:flags:actionState:]");
            v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 476, 0, "Must support sections if a section array exists.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
            v38 = objc_msgSend_pDefaultSectionForContext_(self, v50, contextCopy);

            v39 = CFRetain(v38);
          }

          v21 = v39;
          v20 = v38;
          v51 = objc_msgSend_stylesheet(self, v40, v41);
          objc_msgSend_i_ensureHeaderFooterStoragesExistWithStylesheet_(v38, v52, v51);

          TSWPAttributeRecord::setObject(record, 8uLL, v38);
        }

        goto LABEL_51;
      }

LABEL_50:
      v21 = 0;
      goto LABEL_51;
    }

    if (((1 << kind) & 0x23B000) == 0)
    {
      if (((1 << kind) & 0x180000) != 0)
      {
        v20 = v20;
        if (v20)
        {
          if ((flags & 8) != 0 || !TSWPAttributeArray::attributeKindIsOverlapping(kind))
          {
            v21 = 0;
            v24 = v20;
          }

          else
          {
            v24 = objc_msgSend_copyWithContext_(v20, v22, contextCopy);

            v21 = CFRetain(v24);
            TSWPAttributeRecord::setObject(record, kind, v24);
          }

          if ((flags & 0x10) != 0)
          {
            objc_msgSend_resetTextAttributeUUIDString(v24, v22, v23);
          }
        }

        else
        {
          v21 = 0;
          v24 = 0;
        }

        goto LABEL_51;
      }

      if (kind == 18)
      {
        if (!index)
        {
          if ((flags & 0x20) != 0)
          {
            v30 = objc_msgSend_writingDirectionFromBidiAttributesTableForParagraphAtCharIndex_(storageCopy, v18, 0);
          }

          else
          {
            v30 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(storageCopy, v18, 0);
          }

          v53 = v30;
          TSWPAttributeRecord::setParagraphData(record, 0x12uLL, &v53);
        }

        goto LABEL_50;
      }

      goto LABEL_33;
    }
  }

  if (!v20)
  {
    goto LABEL_50;
  }

  v21 = 0;
  if ((flags & 8) == 0 && kind <= 0x15 && ((1 << kind) & 0x2390C0) != 0)
  {
    v25 = objc_msgSend_copyWithContext_(v20, v18, contextCopy);

    v21 = CFRetain(v25);
    v20 = v25;
  }

  if ((flags & 0x10) != 0)
  {
    v28 = objc_msgSend_conformsToProtocol_(v20, v18, &unk_288643E30) ^ 1;
    if (kind == 12)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      objc_msgSend_resetTextAttributeUUIDString(v20, v26, v27);
    }
  }

  TSWPAttributeRecord::setObject(record, kind, v20);
LABEL_51:

  return v21;
}

- (void)nonUndoableInitializeAttributeArraySource:(TSWPAttributeArray *)source forSourceRange:(_NSRange)range toDestStorage:(id)storage objectContext:(id)context dolcContext:(id)dolcContext flags:(unsigned int)flags
{
  range1 = range.length;
  location = range.location;
  storageCopy = storage;
  contextCopy = context;
  dolcContextCopy = dolcContext;
  if (source)
  {
    if (range1)
    {
      v14 = *(source + 14);
      v100 = v14;
      if (objc_msgSend_canTransferAttributesForInitialization_withFlags_(self, v13, v14))
      {
        v15 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(source, location);
        v16 = v15 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v15;
        if (v16 < *(source + 6))
        {
          v92 = 0;
          actionState = 0;
          v96 = v14;
          v94 = location + range1;
          v91 = v14 - 15;
          while (1)
          {
            v17 = TSWPAttributeArray::charIndexForAttributeIndex(source, v16);
            v18 = TSWPAttributeArray::rangeForAttributeIndex(source, v16);
            v20 = v19;
            if (TSWPAttributeArray::hasObjects(*(source + 28)))
            {
              v101 = TSWPAttributeArray::objectForAttributeIndex(source, v16);
            }

            else
            {
              v101 = 0;
            }

            switch(v96)
            {
              case 0u:
                v58 = 0;
                if (v101)
                {
                  goto LABEL_92;
                }

                v101 = 0;
                goto LABEL_113;
              case 1u:
              case 0xBu:
              case 0x12u:
                if (v17 > location && v17 <= v94)
                {
                  if (!actionState)
                  {
                    actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v21, v100, 0, 0);
                    if (!actionState)
                    {
                      goto LABEL_109;
                    }
                  }

                  v32.var0.var0.listStart = *TSWPAttributeRecord::paragraphData(&source->var1[v16], *(source + 28));
                  TSWPAttributeRecord::TSWPAttributeRecord(&__p, v17 - location, v32);
                  TSWPAttributeArray::nonUndoableInsertAttribute(actionState, &__p, ++v92, 0, 0);
                }

                goto LABEL_113;
              case 2u:
              case 9u:
              case 0x16u:
                if (!v101)
                {
                  goto LABEL_49;
                }

                if (!v92)
                {
                  v29 = TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(source + 28));
                  if (v17 == location && v29)
                  {
                    v31 = actionState;
                    if (!actionState)
                    {
                      v31 = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v21, v100, 0, 0);
                    }

                    actionState = v31;
                    if (*(v31 + 24))
                    {
                      TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(v31, v101, 0, dolcContextCopy, 0);
                    }

                    else
                    {
                      v72 = MEMORY[0x277D81150];
                      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage(AttributeTables) nonUndoableInitializeAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]");
                      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v76, v73, v75, 664, 0, "Dest is missing initial object.");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78);
                    }
                  }
                }

                if (v17 > location && v17 <= v94)
                {
                  v79 = actionState;
                  if (!actionState)
                  {
                    v79 = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v21, v100, 0, 0);
                    if (!v79)
                    {
                      goto LABEL_109;
                    }
                  }

                  actionState = v79;
                  v80 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v79, v17 - location);
                  v81 = actionState;
                  if (v80 < actionState[6] && (v82 = TSWPAttributeArray::charIndexForAttributeIndex(actionState, v80) >= v17 - location, v81 = actionState, v82))
                  {
                    v84 = MEMORY[0x277D81150];
                    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "[TSWPStorage(AttributeTables) nonUndoableInitializeAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]");
                    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v88, v85, v87, 690, 0, "Source and dest tables are out of order.");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90);
                  }

                  else
                  {
                    ++v92;
                    (*(*v81 + 56))(v81, v101, v17 - location);
                  }
                }

                goto LABEL_113;
              case 3u:
              case 6u:
              case 7u:
              case 0xCu:
              case 0xDu:
              case 0xFu:
              case 0x10u:
              case 0x11u:
              case 0x15u:
                if (!v101)
                {
                  goto LABEL_49;
                }

                v104.location = location;
                v104.length = range1;
                v107.location = v18;
                v107.length = v20;
                v24 = NSIntersectionRange(v104, v107);
                length = v24.length;
                v25 = v100 == 17 && v24.length < v20;
                if (v25)
                {
                  v26 = *(MEMORY[0x277D81490] + 8);
                }

                else
                {
                  v26 = v24.length;
                }

                if (!v26)
                {
                  goto LABEL_113;
                }

                if (v25)
                {
                  v27 = *MEMORY[0x277D81490];
                }

                else
                {
                  v27 = v24.location;
                }

                if ((flags & 8) != 0)
                {
                  if (v91 >= 3)
                  {
                    goto LABEL_25;
                  }
                }

                else if ((v96 > 0x15 || ((1 << v96) & 0x2210C0) == 0) && v91 > 1)
                {
LABEL_25:
                  v28 = 0;
                  goto LABEL_78;
                }

                v28 = objc_msgSend_copyWithContext_(v101, v24.length, contextCopy);

                v101 = v28;
LABEL_78:
                if ((flags & 0x10) != 0)
                {
                  v55 = objc_msgSend_conformsToProtocol_(v101, length, &unk_288643E30);
                  v57 = v100 == 12 ? 0 : v55;
                  if (v57 == 1)
                  {
                    objc_msgSend_resetTextAttributeUUIDString(v101, length, v56);
                  }
                }

                objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(storageCopy, length, v101, v27 - location, v26, v100, dolcContextCopy, 0);

LABEL_113:
                if (++v16 < *(source + 6) && TSWPAttributeArray::charIndexForAttributeIndex(source, v16) > v94)
                {

                  goto LABEL_118;
                }

                if (v16 >= *(source + 6))
                {
                  goto LABEL_118;
                }

                break;
              case 4u:
              case 5u:
                if (v101)
                {
                  if (v17 >= location && v17 < v94)
                  {
                    v33 = actionState;
                    if (actionState || (v33 = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v21, v100, 1, 0)) != 0)
                    {
                      actionState = v33;
                      if (v92 < *(v33 + 24))
                      {
                        if (flags)
                        {
                          v58 = objc_msgSend_copyWithContext_(v101, v101, contextCopy);
                          TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(actionState, v58, v92++, dolcContextCopy, 0);
                          goto LABEL_112;
                        }

                        TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndexForShallowCopy(v33, v101, v92++);
                      }
                    }

                    else
                    {
LABEL_109:
                      actionState = 0;
                    }
                  }
                }

                else
                {
LABEL_49:
                  v101 = 0;
                }

                goto LABEL_113;
              case 8u:
                v59 = objc_msgSend_supportsSectionCopying(storageCopy, v21, v22);
                if (v101)
                {
                  v61 = v59;
                }

                else
                {
                  v61 = 0;
                }

                if (v61)
                {
                  v58 = objc_msgSend_copyWithContext_(v101, v60, contextCopy);

                  v101 = v58;
LABEL_92:
                  if (v17 > location && v17 <= v94)
                  {
                    v62 = actionState;
                    if (actionState || (v62 = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v21, v100, 0, 0)) != 0)
                    {
                      v63 = v92 + 1;
                      actionState = v62;
                      v64 = *(v62 + 24);
                      if (v92 + 1 >= v64)
                      {
                        v65 = MEMORY[0x277D81150];
                        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage(AttributeTables) nonUndoableInitializeAttributeArraySource:forSourceRange:toDestStorage:objectContext:dolcContext:flags:]");
                        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_attributeTables.mm");
                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v66, v68, 639, 0, "Bad par index count.");

                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
                        v64 = actionState[6];
                      }

                      if (v63 < v64)
                      {
                        TSWPAttributeArray::nonUndoableReplaceObjectForAttributeIndex(actionState, v101, v63, dolcContextCopy, 0);
                        ++v92;
                      }
                    }

                    else
                    {
                      actionState = 0;
                    }
                  }

LABEL_112:
                }

                goto LABEL_113;
              case 0x13u:
              case 0x14u:
                __p.var0 = 0;
                __p.var1.var0 = 0;
                v103 = 0;
                v34 = (*(source->var0 + 20))(source, v17, 1, &__p);
                if (objc_msgSend_count(v34, v35, v36))
                {
                  for (i = 0; i < objc_msgSend_count(v34, v37, v38); ++i)
                  {
                    v41 = objc_msgSend_objectAtIndexedSubscript_(v34, v40, i);
                    if (!v16 || ((*(source->var0 + 18))(source, v41, v16 - 1) & 1) == 0)
                    {
                      v42 = (*(source->var0 + 19))(source, v41, v16);
                      v44 = v43;
                      v106.location = v42;
                      v106.length = v44;
                      v108.location = TSWPAttributeArray::rangeForAttributeRange(source, v106);
                      v46 = v45;
                      v105.location = location;
                      v105.length = range1;
                      v108.length = v46;
                      v48 = NSIntersectionRange(v105, v108);
                      v47 = v48.length;
                      v49 = v48.length >= v46 ? v48.length : *(MEMORY[0x277D81490] + 8);
                      if (v49)
                      {
                        if (v48.length >= v46)
                        {
                          v50 = v48.location;
                        }

                        else
                        {
                          v50 = *MEMORY[0x277D81490];
                        }

                        if ((flags & 8) != 0 || !TSWPAttributeArray::attributeKindIsOverlapping(v100))
                        {
                          v51 = 0;
                        }

                        else
                        {
                          v51 = objc_msgSend_copyWithContext_(v41, v47, contextCopy);

                          v41 = v51;
                        }

                        if ((flags & 0x10) != 0)
                        {
                          v52 = objc_msgSend_conformsToProtocol_(v41, v47, &unk_288643E30);
                          v54 = v100 == 12 ? 0 : v52;
                          if (v54 == 1)
                          {
                            objc_msgSend_resetTextAttributeUUIDString(v41, v47, v53);
                          }
                        }

                        objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(storageCopy, v47, v41, v50 - location, v49, v100, dolcContextCopy, 0);
                      }
                    }
                  }
                }

                if (__p.var0)
                {
                  __p.var1.var0 = __p.var0;
                  operator delete(__p.var0);
                }

                goto LABEL_113;
              default:
                goto LABEL_113;
            }
          }
        }
      }
    }
  }

LABEL_118:
}

- (int)compareAttributeArray:(TSWPAttributeArray *)array range:(_NSRange)range otherStorage:(id)storage otherRange:(_NSRange)otherRange objectComparisonBlock:(id)block
{
  length = otherRange.length;
  location = otherRange.location;
  v9 = range.length;
  v10 = range.location;
  storageCopy = storage;
  blockCopy = block;
  if (array && (actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(storageCopy, v14, *(array + 28), 0, 0)) != 0)
  {
    v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(array, v10);
    v18 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(actionState, location);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    v22 = *(array + 6) - v20;
    v23 = *(actionState + 24) - v21;
    v24 = v22 > v23;
    if (v22 <= v23)
    {
      arrayCopy = array;
    }

    else
    {
      arrayCopy = actionState;
    }

    if (v22 <= v23)
    {
      arrayCopy2 = actionState;
    }

    else
    {
      arrayCopy2 = array;
    }

    if (v22 <= v23)
    {
      v27 = length;
    }

    else
    {
      v27 = v9;
    }

    if (v22 <= v23)
    {
      v28 = location;
    }

    else
    {
      v28 = v10;
    }

    if (v22 <= v23)
    {
      v29 = v20;
    }

    else
    {
      v29 = v21;
    }

    if (v24)
    {
      v21 = v20;
      v30 = location;
    }

    else
    {
      v30 = v10;
    }

    if (v24)
    {
      v31 = objc_msgSend_compareAttributeArray1_array2_range1_range2_attributeIndex1_attributeIndex2_objectComparisonBlock_(self, v19, arrayCopy, arrayCopy2, v30, length, v28, v27, v29, v21, blockCopy);
    }

    else
    {
      v31 = objc_msgSend_compareAttributeArray1_array2_range1_range2_attributeIndex1_attributeIndex2_objectComparisonBlock_(self, v19, arrayCopy, arrayCopy2, v30, v9, v28, v27, v29, v21, blockCopy);
    }

    v32 = v31;
  }

  else
  {
    v32 = -2;
  }

  return v32;
}

- (int)compareAttributeArray1:(TSWPAttributeArray *)array1 array2:(TSWPAttributeArray *)array2 range1:(_NSRange)range1 range2:(_NSRange)range2 attributeIndex1:(unint64_t)index1 attributeIndex2:(unint64_t)index2 objectComparisonBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  if (array1)
  {
    array2Copy = array2;
    if (array2)
    {
      index1Copy = index1;
      if (*(array1 + 6) > index1)
      {
        index2Copy = index2;
        if (*(array2 + 6) > index2)
        {
          v11 = 0;
          v37 = range1.location + range1.length;
          index1Copy2 = index1;
          index2Copy2 = index2;
          while (1)
          {
            v15 = TSWPAttributeArray::charIndexForAttributeIndex(array1, index1Copy);
            if (v11 || v15 > v37)
            {
              goto LABEL_62;
            }

            v16 = TSWPAttributeArray::charIndexForAttributeIndex(array1, index1Copy);
            v17 = TSWPAttributeArray::rangeForAttributeIndex(array1, index1Copy);
            v19 = v18;
            if (TSWPAttributeArray::hasObjects(*(array1 + 28)))
            {
              v35 = TSWPAttributeArray::objectForAttributeIndex(array1, index1Copy);
            }

            else
            {
              v35 = 0;
            }

            v20 = *(array2Copy + 6);
            if (index2Copy >= v20)
            {
              v23 = 0;
              v21 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = TSWPAttributeArray::rangeForAttributeIndex(array2Copy, index2Copy);
              v23 = v22;
              v20 = *(array2Copy + 6);
            }

            if (index2Copy < v20 && TSWPAttributeArray::hasObjects(*(array2Copy + 28)))
            {
              v40 = TSWPAttributeArray::objectForAttributeIndex(array2Copy, index2Copy);
            }

            else
            {
              v40 = 0;
            }

            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_276D9C44C;
            aBlock[3] = &unk_27A6F43B8;
            v46 = blockCopy;
            v41 = v35;
            v45 = v41;
            v38 = _Block_copy(aBlock);
            v11 = 0;
            v24 = *(array1 + 28);
            if (v24 > 0xA)
            {
              if (*(array1 + 28) > 0x12u)
              {
                if (v24 - 19 < 2)
                {
                  if (v16 >= v37)
                  {
                    goto LABEL_57;
                  }

                  v53.location = v17;
                  v53.length = v19;
                  length = NSIntersectionRange(v53, range1).length;
                  v54.location = v21;
                  v54.length = v23;
                  if (length != NSIntersectionRange(v54, range2).length)
                  {
                    goto LABEL_58;
                  }

                  if (v41 == v40)
                  {
                    goto LABEL_57;
                  }

                  if (!v41 || !v40)
                  {
                    goto LABEL_58;
                  }

                  IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(*(array1 + 28), v41, v40);
                }

                else
                {
                  if (v24 != 21)
                  {
                    if (v24 != 22)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_40;
                  }

LABEL_32:
                  if (v16 >= v37)
                  {
                    goto LABEL_57;
                  }

                  v47.location = v17;
                  v47.length = v19;
                  v25 = NSIntersectionRange(v47, range1).length;
                  v48.location = v21;
                  v48.length = v23;
                  if (v25 != NSIntersectionRange(v48, range2).length)
                  {
                    goto LABEL_58;
                  }

                  if (v41 == v40)
                  {
                    goto LABEL_57;
                  }

                  if (!v41 || !v40)
                  {
                    goto LABEL_58;
                  }

                  IsEquivalentToObject = v38[2](v38, v41);
                }

                if ((IsEquivalentToObject & 1) == 0)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v24 - 12 < 2)
              {
                goto LABEL_32;
              }

              if (v24 != 11 && v24 != 18)
              {
                goto LABEL_59;
              }
            }

            else
            {
              if (*(array1 + 28) > 2u)
              {
                if (v24 - 3 >= 4)
                {
                  if (v24 - 8 >= 2)
                  {
                    goto LABEL_59;
                  }

LABEL_40:
                  if (v16 <= v37)
                  {
                    v49.location = v17;
                    v49.length = v19;
                    v27 = NSIntersectionRange(v49, range1).length;
                    v50.location = v21;
                    v50.length = v23;
                    if (v27 != NSIntersectionRange(v50, range2).length)
                    {
                      goto LABEL_58;
                    }

                    if (v41 != v40)
                    {
                      IsSame = (v38[2])();
                      goto LABEL_47;
                    }
                  }

                  goto LABEL_57;
                }

                goto LABEL_32;
              }

              if (!*(array1 + 28) || v24 != 1)
              {
                goto LABEL_40;
              }
            }

            if (v16 <= v37)
            {
              v51.location = v17;
              v51.length = v19;
              v29 = NSIntersectionRange(v51, range1).length;
              v52.location = v21;
              v52.length = v23;
              if (v29 == NSIntersectionRange(v52, range2).length)
              {
                v43.var0.var0.listStart = *TSWPAttributeRecord::paragraphData(&array1->var1[index1Copy2], *(array1 + 28));
                v42.var0.var0.listStart = *TSWPAttributeRecord::paragraphData(&array2Copy->var1[index2Copy2], *(array2Copy + 28));
                IsSame = TSWPParagraphAttributeArray::dataIsSame(array1, &v43, &v42);
LABEL_47:
                if (IsSame)
                {
                  v11 = 0;
                }

                else
                {
                  v11 = -2;
                }

                goto LABEL_59;
              }

LABEL_58:
              v11 = -2;
              goto LABEL_59;
            }

LABEL_57:
            v11 = 0;
LABEL_59:
            ++index1Copy;
            ++index2Copy;

            ++index1Copy2;
            ++index2Copy2;
            if (index1Copy >= *(array1 + 6))
            {
              goto LABEL_62;
            }
          }
        }
      }

      v11 = 0;
    }
  }

LABEL_62:

  return v11;
}

- (id)pFindValidInsertionCharStyleFromCharIndex:(unint64_t)index
{
  indexCopy = index;
  v5 = objc_msgSend_paragraphStartAtCharIndex_(self, a2, index);
  if (indexCopy == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    v14 = 0;
  }

  else
  {
    v7 = v5;
    while (1)
    {
      v8 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v6, indexCopy, 6, &v18);
      v10 = objc_msgSend_footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex_(self, v9, indexCopy);
      v12 = v10;
      if (!(v8 | v10))
      {
        break;
      }

      v13 = v18;
      if (!v8)
      {
        v13 = indexCopy;
      }

      if (v13 <= v7)
      {
        v14 = 0;
        goto LABEL_12;
      }

      indexCopy = v13 - 1;

      if (indexCopy == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }
    }

    v14 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v11, indexCopy, 0);
    if (!v14)
    {
      v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v15, v16);
    }

LABEL_12:
  }

  return v14;
}

- (id)pOverrideObjectBeforeReplacingCharactersInSelection:(id)selection withString:(id)string
{
  selectionCopy = selection;
  stringCopy = string;
  Range = objc_msgSend_firstRange(selectionCopy, v8, v9);
  v12 = v11;
  v14 = objc_msgSend_styleInsertionBehavior(selectionCopy, v11, v13);
  v16 = objc_msgSend_pOverrideObjectBeforeReplacingCharactersInRange_withString_withInsertionBehavior_(self, v15, Range, v12, stringCopy, v14);

  return v16;
}

- (id)pOverrideObjectBeforeReplacingCharactersInRange:(_NSRange)range withString:(id)string withInsertionBehavior:(int64_t)behavior
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v35 = *MEMORY[0x277D81490];
  if (!objc_msgSend_length(stringCopy, v10, v11) || !length)
  {
    v14 = 0;
    v15 = 0;
    if (!objc_msgSend_length(stringCopy, v12, v13) || length)
    {
      goto LABEL_44;
    }

    if (behavior == 2)
    {
      v14 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v16, location, 6, &v35);
      if (!v14 || v35 != location)
      {
        goto LABEL_5;
      }

      v15 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v27, location, 0);
      if (v15)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (behavior != 1)
      {
        if (behavior)
        {
          goto LABEL_4;
        }

        if (location)
        {
          v14 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v16, location - 1, 6, &v35);
          if (!v14 || *(&v35 + 1) + v35 != location)
          {
            v15 = objc_msgSend_footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex_(self, v18, location - 1);

            if (!v15 || location == 1)
            {
              if (!v15)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v15 = objc_msgSend_pFindValidInsertionCharStyleFromCharIndex_(self, v18, location - 2);
              if (v15)
              {
                goto LABEL_44;
              }
            }
          }

          if (location < objc_msgSend_length(self, v18, v19))
          {
            v30 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v20, location, 6, &v35);
            v32 = objc_msgSend_footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex_(self, v31, location);
            if (v30 | v32)
            {
            }

            else
            {
              v15 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v33, location, 0);
              if (v15)
              {
                goto LABEL_44;
              }
            }
          }
        }

        else
        {
          if (!objc_msgSend_length(self, v16, v17))
          {
            goto LABEL_4;
          }

          v14 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v28, 0, 6, &v35);
          if (!v14)
          {
            v29 = objc_msgSend_footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex_(self, v20, 0);

            if (!v29)
            {
              goto LABEL_4;
            }
          }
        }

        goto LABEL_43;
      }

      if (!location)
      {
        goto LABEL_4;
      }

      v14 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v16, location - 1, 6, &v35);
      if (!v14 || *(&v35 + 1) + v35 != location)
      {
        goto LABEL_5;
      }

      v15 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v26, location - 1, 0);
      if (v15)
      {
        goto LABEL_44;
      }
    }

LABEL_43:
    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v25);
    goto LABEL_44;
  }

  if (behavior)
  {
LABEL_4:
    v14 = 0;
LABEL_5:
    v15 = 0;
    goto LABEL_44;
  }

  v14 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, v12, location, 6, &v35);
  if (v14 && v35 == location && (v21 = objc_opt_class(), objc_msgSend_defaultFieldStyleIdentifier(v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v24, v24) || (objc_msgSend_footnoteReferenceAttachmentOrFootnoteMarkAttachmentAtCharIndex_(self, v20, location), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    if (!location)
    {
      goto LABEL_43;
    }

    v15 = objc_msgSend_pFindValidInsertionCharStyleFromCharIndex_(self, v20, location - 1);
    if (!v15)
    {
      goto LABEL_43;
    }
  }

LABEL_44:

  return v15;
}

- (id)pDefaultSectionForContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_defaultSectionForContext_(self, v5, contextCopy);
  }

  else
  {
    v7 = [TSWPSectionPlaceholder alloc];
    v6 = objc_msgSend_initWithContext_(v7, v8, contextCopy);
  }

  v9 = v6;

  return v9;
}

- (void)p_replaceRange:(_NSRange)range withString:(id)string markers:(void *)markers flags:(unsigned int)flags actionState:(void *)state
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (location + length > objc_msgSend_length(self->_string, v14, v15))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPStorage(TSWPStorage_private) p_replaceRange:withString:markers:flags:actionState:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_private.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 58, 0, "Attempting to delete past end of storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  if ((flags & 0x20) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = (flags >> 4) & 1;
  }

  v27 = objc_msgSend_length(stringCopy, v16, v17);
  for (i = 0; i != 552; i += 24)
  {
    v29 = &v52[i];
    *v29 = *&v52[i] & 0xFFFFFFFE00000000 | 0x1FFFFFFFELL;
    *(v29 + 2) = -1;
    *(v29 + 2) = 0;
  }

  v30 = 0;
  v51[0] = 0;
  do
  {
    if (v30)
    {
      if (markers && v30 == 4)
      {
        v31 = *(markers + 24);
      }

      else
      {
        v31 = 0;
        if (markers && v30 == 5)
        {
          v31 = *(markers + 25);
        }
      }

      actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(self, v26, v30, v31 & 1, state);
      if (actionState)
      {
        (*(*actionState + 16))(actionState, location, length, stringCopy, v27, markers, state, v52);
      }
    }

    sub_276D14D78(v51);
    v30 = v51[0];
  }

  while (v51[0] < 0x17uLL);
  v33 = objc_msgSend_attributeArrayForKind_withCreate_actionState_(self, v26, 0, 0, state);
  if (v33)
  {
    (*(*v33 + 16))(v33, location, length, stringCopy, v27, markers, state, v52);
  }

  if (state)
  {
    sub_276F2F46C(state, v34);
    v37 = state + 24;
    if (*(state + 2))
    {
      v37 = *(state + 2);
    }

    if (v37[320] != 1 || length == 0)
    {
      v39 = 0;
    }

    else
    {
      v39 = objc_msgSend_substringWithRange_(self->_string, v35, location, length);
    }

    if ((*(state + 472) & 1) == 0 && *(state + 57) && *(state + 58))
    {
      if (length)
      {
        v50 = objc_msgSend_substringWithRange_(self->_string, v35, location, length);
      }

      else
      {
        v50 = 0;
      }

      v39 = v50;
      sub_276F4070C(v51, *(state + 58), location, v27, v50);
      sub_276F2F6C0(state, v51, 0);
      sub_276F40794(v51);
    }

    v40 = objc_msgSend_length(stringCopy, v35, v36);
    sub_276F2F680(state, 1, v39, location, v40);
  }

  string = self->_string;
  if (stringCopy)
  {
    objc_msgSend_replaceCharactersInRange_withString_(string, v34, location, length, stringCopy);
  }

  else
  {
    objc_msgSend_replaceCharactersInRange_withString_(string, v34, location, length, &stru_28860A0F0);
  }

  v43 = objc_msgSend_attributeArrayForKind_(self, v42, 0);
  if (v43)
  {
    (*(*v43 + 24))(v43, location, length, stringCopy, v27, markers, state, v25, v52);
  }

  v45 = 0;
  v51[0] = 0;
  if ((flags & 0x100) != 0)
  {
    v46 = 2;
  }

  else
  {
    v46 = (flags >> 7) & 1;
  }

  do
  {
    if (v45)
    {
      v47 = objc_msgSend_attributeArrayForKind_(self, v44, v45);
      if (v47)
      {
        if (v47[28] == 15)
        {
          v48 = v46;
        }

        else
        {
          v48 = v25;
        }

        (*(*v47 + 24))(v47, location, length, stringCopy, v27, markers, state, v48, v52);
      }
    }

    sub_276D14D78(v51);
    v45 = v51[0];
  }

  while (v51[0] < 0x17uLL);
  for (j = 544; j != -8; j -= 24)
  {
  }
}

- (id)pFlipStringForObject:(id)object insertLength:(unint64_t)length attributeArrayKind:(unint64_t)kind
{
  objectCopy = object;
  v8 = objectCopy;
  if (!length)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCACA8]);
    goto LABEL_17;
  }

  if (!objectCopy)
  {
    switch(kind)
    {
      case 4uLL:
        v25 = 32;
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = objc_msgSend_initWithCharacters_length_(v21, v22, &v25, 1);
        goto LABEL_17;
      case 8uLL:
        v24 = 10;
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = objc_msgSend_initWithCharacters_length_(v19, v20, &v24, 1);
        goto LABEL_17;
      case 5uLL:
        v26 = 32;
        v12 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = objc_msgSend_initWithCharacters_length_(v12, v13, &v26, 1);
        goto LABEL_17;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_18;
  }

  if (kind == 4)
  {
    v28 = -4;
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_initWithCharacters_length_(v17, v18, &v28, 1);
    goto LABEL_17;
  }

  if (kind == 8)
  {
    v27 = 4;
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_initWithCharacters_length_(v15, v16, &v27, 1);
    goto LABEL_17;
  }

  if (kind != 5)
  {
    goto LABEL_12;
  }

  v29 = 14;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_msgSend_initWithCharacters_length_(v9, v10, &v29, 1);
LABEL_17:
  v14 = v11;
LABEL_18:

  return v14;
}

- (int64_t)pFlipSpecialCharacterForObject:(id)object range:(_NSRange)range insertLength:(unint64_t)length outChangeRange:(_NSRange *)changeRange attributeArrayKind:(unint64_t)kind actionState:(void *)state
{
  length = range.length;
  location = range.location;
  objectCopy = object;
  v46 = objectCopy;
  if (length >= 2)
  {
    TSUSetCrashReporterInfo();
    v34 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSWPStorage(TSWPStorage_private) pFlipSpecialCharacterForObject:range:insertLength:outChangeRange:attributeArrayKind:actionState:]", "[TSWPStorage(TSWPStorage_private) pFlipSpecialCharacterForObject:range:insertLength:outChangeRange:attributeArrayKind:actionState:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_private.mm", 178);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_private.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v36, v38, 178, 1, "Bad range length.");

    TSUCrashBreakpoint();
    goto LABEL_25;
  }

  if (length >= 2)
  {
    TSUSetCrashReporterInfo();
    v40 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSWPStorage(TSWPStorage_private) pFlipSpecialCharacterForObject:range:insertLength:outChangeRange:attributeArrayKind:actionState:]", "[TSWPStorage(TSWPStorage_private) pFlipSpecialCharacterForObject:range:insertLength:outChangeRange:attributeArrayKind:actionState:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_private.mm", 179);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_private.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v42, v44, 179, 1, "Bad insert length.");

    TSUCrashBreakpoint();
LABEL_25:
    abort();
  }

  v16 = objc_msgSend_pFlipStringForObject_insertLength_attributeArrayKind_(self, v15, objectCopy, length, kind);
  v20 = objc_msgSend_length(v16, v17, v18);
  if (v20 != length)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPStorage(TSWPStorage_private) pFlipSpecialCharacterForObject:range:insertLength:outChangeRange:attributeArrayKind:actionState:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_private.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 184, 0, "Bad flip string length.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (state)
  {
    sub_276F2F46C(state, v19);
    v29 = state + 24;
    if (*(state + 2))
    {
      v29 = *(state + 2);
    }

    if (v29[320] != 1 || length == 0)
    {
      v31 = 0;
    }

    else
    {
      v31 = objc_msgSend_substringWithRange_(self->_string, v28, location, length);
    }

    sub_276F2F680(state, 1, v31, location, v20);
  }

  changeRange->location = location;
  changeRange->length = v20;
  if ((v20 || length != 1) && (!v20 || length))
  {
    objc_msgSend_replaceCharactersInRange_withString_(self->_string, v19, location, length, v16);
  }

  else
  {
    __p = 0;
    v48 = 0;
    v50 = 0;
    v49 = 0;
    sub_276F31920(&__p, v16);
    objc_msgSend_p_replaceRange_withString_markers_flags_actionState_(self, v32, location, length, v16, &__p, 0, state);
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }
  }

  return v20 - length;
}

- (BOOL)p_shouldAcceptChangesForRange:(_NSRange)range copiedRanges:(id)ranges removeDeletedText:(BOOL *)text
{
  length = range.length;
  location = range.location;
  rangesCopy = ranges;
  hasTrackedChanges = objc_msgSend_hasTrackedChanges(self, v10, v11);
  if (objc_msgSend_rangeCount(rangesCopy, v13, v14) > 1)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_rangeCount(rangesCopy, v15, v16) == 1)
  {
    v21 = objc_msgSend_firstRange(rangesCopy, v18, v19) == location && v18 == length;
    if ((v21 & hasTrackedChanges & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (!hasTrackedChanges)
  {
    goto LABEL_2;
  }

  v22 = objc_msgSend_deletionChangesTable(self, v18, v19);
  v23 = v22;
  if (v22)
  {
    v24 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v22, location);
    if (v24 < *(v23 + 6))
    {
      v25 = 0;
      v26 = location + length;
      while (location + v25 < v26)
      {
        v27 = TSWPAttributeArray::objectForAttributeIndex(v23, v24);
        if (!v27)
        {
          *text = 1;
          break;
        }

        location = TSWPAttributeArray::rangeForAttributeIndex(v23, v24);
        v25 = v28;

        if (++v24 >= *(v23 + 6))
        {
          break;
        }
      }
    }
  }

LABEL_2:

  return hasTrackedChanges;
}

- (void)i_assignStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  objc_msgSend_willModify(self, v5, v6);
  stylesheet = self->_stylesheet;
  self->_stylesheet = stylesheetCopy;
}

- (_NSRange)textRangeIgnoringTrailingLineBreaksForParagraphAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_textRangeForParagraphAtIndex_(self, a2, index);
  v6 = v4;
  if (v5)
  {
    v7 = v5;
    v8 = objc_msgSend_characterAtIndex_(self, v5, &v5[v4 - 1]);
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

    v5 = &v7[-v11];
  }

  v12 = v6;
  result.length = v5;
  result.location = v12;
  return result;
}

- (BOOL)p_canTransferBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = objc_msgSend_supportsBookmarks(self, v5, v6);
  if (*(v18 + 24) == 1)
  {
    v9 = objc_msgSend_url(bookmarkCopy, v7, v8);
    v12 = objc_msgSend_range(self, v10, v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_276DD1088;
    v16[3] = &unk_27A6F4648;
    v16[4] = v9;
    v16[5] = &v17;
    objc_msgSend_enumerateBookmarksInRange_usingBlock_(self, v13, v12, v13, v16);

    v14 = *(v18 + 24);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v14 & 1;
}

- (void)transferAttributeArraySource:(TSWPAttributeArray *)source toAttributeArrayDest:(TSWPAttributeArray *)dest atCharIndex:(unint64_t)index delta:(int64_t)delta dolcContext:(id)context actionBuilder:(void *)builder
{
  contextCopy = context;
  if (source && dest)
  {
    v15 = *(source + 6);
    v90 = TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(source + 28));
    v96 = v15;
    if (v15)
    {
      v16 = 0;
      v95 = delta + index;
      v93 = 0;
      v94 = 0x7FFFFFFFFFFFFFFFLL;
      v91 = contextCopy;
      while (2)
      {
        v97 = v16;
        v17 = TSWPAttributeArray::rangeForAttributeIndex(source, v16);
        v19 = v18;
        if (TSWPAttributeArray::hasObjects(*(source + 28)))
        {
          v98 = TSWPAttributeArray::objectForAttributeIndex(source, v97);
        }

        else
        {
          v98 = 0;
        }

        v103 = v95 + v17;
        v104 = v19;
        v21 = *(source + 14);
        v22 = v21;
        switch(v21)
        {
          case 0:
            if (v94 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v94 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(dest, index);
            }

            if (v97 || TSWPAttributeArray::charIndexForAttributeIndex(dest, v94) >= index)
            {
              __p = 0;
              v101 = 0;
              __p = objc_msgSend_textRangeForParagraphIndexRange_(self, v22, v94 + v97, 1);
              v101 = v79;
              if ((objc_msgSend_hasObject_attributeArrayKind_range_(self, v79, v98, *(source + 28), __p, v79) & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            goto LABEL_88;
          case 1:
          case 2:
          case 9:
          case 11:
          case 18:
          case 22:
            if (v95 + v17)
            {
              v24 = v21 == 9;
            }

            else
            {
              v24 = 0;
            }

            if (v24 && v97 == 0 || v19 == 0)
            {
              goto LABEL_88;
            }

            if (v94 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v94 = objc_msgSend_paragraphIndexAtCharIndex_(self, v21, index);
            }

            if (!v93)
            {
              v93 = objc_msgSend_attributeArrayForKind_(self, v22, 0);
            }

            v28 = objc_msgSend_paragraphIndexAtCharIndex_(self, v22, v103);
            v29 = v104 - 1;
            if (!v104)
            {
              v29 = 0;
            }

            v30 = objc_msgSend_paragraphIndexAtCharIndex_(self, v27, v103 + v29);
            v32 = v30 - v28;
            v33 = v30 - v28 + 1;
            if (v97)
            {
              if (v30 - v28 == -1)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v72 = (TSWPAttributeArray::charIndexForAttributeIndex(v93, v28) < index) & (v33 != 0);
              if (v72)
              {
                v33 = v32;
              }

              if (!v33)
              {
                goto LABEL_88;
              }

              v28 += v72;
              if (TSWPAttributeArray::charIndexForAttributeIndex(v93, v28) < index)
              {
                goto LABEL_88;
              }
            }

            v73 = *(source + 14);
            if (v73 <= 0x12u && (v31 = v73, ((1 << v73) & 0x40802) != 0))
            {
              LODWORD(v99.location) = *TSWPAttributeRecord::paragraphData(&source->var1[v97], v73);
              __p = 0;
              v101 = 0;
              __p = objc_msgSend_textRangeForParagraphIndexRange_(self, v74, v28, v33);
              v101 = v75;
              if ((objc_msgSend_hasData_attributeArrayKind_range_(self, v75, LODWORD(v99.location), *(source + 28), __p, v75) & 1) == 0)
              {
                sub_276F33818(builder, *(source + 28), &__p, &v99, 0);
                (*(*builder + 16))(builder);
              }
            }

            else
            {
              __p = 0;
              v101 = 0;
              v80 = objc_msgSend_textRangeForParagraphIndexRange_(self, v31, v28, v33);
              if (v90)
              {
                v82 = v81 != 0;
              }

              else
              {
                v82 = v81;
              }

              __p = v80;
              v101 = v82;
              if ((objc_msgSend_hasObject_attributeArrayKind_range_findUsingExactRangeLocation_(self, v81, v98, *(source + 28), v80) & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            goto LABEL_88;
          case 3:
          case 6:
          case 7:
          case 12:
          case 13:
          case 17:
          case 21:
            goto LABEL_9;
          case 4:
          case 5:
            __p = (v95 + v17);
            v101 = 1;
            sub_276F33A24(builder, v21, &__p, v98, 0, 0xFFFFFFFFLL);
            (*(*builder + 16))(builder);
            goto LABEL_88;
          case 8:
            if (v94 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v94 = objc_msgSend_paragraphIndexAtCharIndex_(self, v21, index);
            }

            if (!v93)
            {
              v93 = objc_msgSend_attributeArrayForKind_(self, v22, 0);
            }

            v77 = objc_msgSend_paragraphIndexAtCharIndex_(self, v22, v103);
            if (v97 || !v103)
            {
              __p = 0;
              v101 = 0;
              __p = objc_msgSend_textRangeForParagraphAtIndex_(self, v76, v77);
              v101 = v78;
              if ((objc_msgSend_hasObject_attributeArrayKind_range_(self, v78, v98, *(source + 28), __p, v78) & 1) == 0)
              {
LABEL_94:
                sub_276F33A24(builder, *(source + 28), &__p, v98, 0, 0xFFFFFFFFLL);
                (*(*builder + 16))(builder);
              }
            }

            goto LABEL_88;
          case 15:
          case 16:
            if (!objc_msgSend_preserveChangeTracking(contextCopy, v21, v20))
            {
              goto LABEL_88;
            }

            v21 = *(source + 14);
LABEL_9:
            if (v21 == 17)
            {
              v23 = objc_msgSend_highlightsAllowed(self, v22, v20);
              v21 = *(source + 14);
            }

            else
            {
              v23 = 1;
            }

            v34 = v21 == 12 ? objc_msgSend_p_canTransferBookmark_(self, v22, v98) : 1;
            v35 = v104;
            if (((v104 != 0) & v23) != 1 || v34 == 0)
            {
              goto LABEL_88;
            }

            v37 = *(source + 28);
            if (v37 <= 0x15 && ((1 << v37) & 0x2390C0) != 0)
            {
              v38 = objc_msgSend_context(self, v22, v20);
              v40 = objc_msgSend_copyWithContext_(v98, v39, v38);

              v41 = v40;
              v98 = v41;
              if (v41)
              {
                goto LABEL_86;
              }

              v42 = 0;
              v37 = *(source + 28);
              v35 = v104;
            }

            else
            {
              v42 = v98;
            }

            v98 = v42;
            v41 = 0;
            if (objc_msgSend_hasObject_attributeArrayKind_range_(self, v22, v42, v37, v103, v35))
            {
              goto LABEL_87;
            }

LABEL_86:
            sub_276F33A24(builder, *(source + 28), &v103, v98, 0, 0xFFFFFFFFLL);
            (*(*builder + 16))(builder);
LABEL_87:

LABEL_88:
            v16 = (v97 + 1);
            if (v97 + 1 == v96)
            {
              break;
            }

            continue;
          case 19:
          case 20:
            __p = 0;
            v101 = 0;
            v102 = 0;
            v43 = (*(source->var0 + 20))(source, v17, 1, &__p);
            v48 = v97;
            if (objc_msgSend_count(v43, v44, v45))
            {
              for (i = 0; i < objc_msgSend_count(v43, v46, v47); ++i)
              {
                v51 = objc_msgSend_objectAtIndexedSubscript_(v43, v50, i);
                if (!v48 || ((*(source->var0 + 18))(source, v51, v97 - 1) & 1) == 0)
                {
                  v52 = (*(source->var0 + 19))(source, v51, v48);
                  v54 = v53;
                  selfCopy = self;
                  v99.location = 0;
                  v99.length = 0;
                  v106.location = v52;
                  v106.length = v54;
                  TSWPAttributeArray::rangeForAttributeRange(source, v106);
                  v99.location = v103;
                  v99.length = v56;
                  builderCopy = builder;
                  v58 = *(builder + 1);
                  v61 = objc_msgSend_range(v58, v59, v60);
                  v63 = v62;

                  v105.location = v61;
                  v105.length = v63;
                  v66 = NSIntersectionRange(v105, v99);
                  length = v66.length;
                  v99 = v66;
                  builder = builderCopy;
                  self = selfCopy;
                  if (*(source + 28) == 19)
                  {
                    v67 = objc_msgSend_highlightsAllowed(selfCopy, v66.length, v65);
                  }

                  else
                  {
                    v67 = 1;
                  }

                  if (v104 && v67)
                  {
                    v68 = objc_msgSend_context(selfCopy, length, v65);
                    v70 = objc_msgSend_copyWithContext_(v51, v69, v68);

                    v71 = v70;
                    sub_276F33A24(builderCopy, *(source + 28), &v99, v71, 1, 0xFFFFFFFFLL);
                    (*(*builderCopy + 16))(builderCopy);

                    self = selfCopy;
                  }

                  else
                  {
                    v71 = v98;
                  }

                  v98 = v71;
                  v48 = v97;
                }
              }
            }

            if (__p)
            {
              v101 = __p;
              operator delete(__p);
            }

            contextCopy = v91;
            goto LABEL_88;
          default:
            goto LABEL_88;
        }

        break;
      }
    }
  }

  else
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPStorage(TSWPStorage_copying) transferAttributeArraySource:toAttributeArrayDest:atCharIndex:delta:dolcContext:actionBuilder:]");
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_copying.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v87, v84, v86, 55, 0, "transferAttributeArraySource: bad tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
  }
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withStorage:(id)storage
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  sub_276E3E8D0(v14, 0);
  v9 = objc_msgSend_replaceCharactersInRange_withStorage_usePasteRules_dolcContext_undoTransaction_(self, v8, location, length, storageCopy, 0, 0, v14);
  v11 = v10;
  sub_276E3EAC4(v14);

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)replaceCharactersInRange:(_NSRange)range withStorage:(id)storage usePasteRules:(BOOL)rules dolcContext:(id)context undoTransaction:(void *)transaction
{
  rulesCopy = rules;
  length = range.length;
  location = range.location;
  storageCopy = storage;
  contextCopy = context;
  v15 = [TSWPSelection alloc];
  v17 = objc_msgSend_initWithRange_(v15, v16, location, length);
  v19 = objc_msgSend_replaceCharactersInSelection_withStorage_usePasteRules_srcStylesAmbiguous_dolcContext_changeSession_undoTransaction_(self, v18, v17, storageCopy, rulesCopy, 0, contextCopy, 0, transaction);
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)replaceCharactersInSelection:(id)selection withStorage:(id)storage usePasteRules:(BOOL)rules srcStylesAmbiguous:(BOOL)ambiguous dolcContext:(id)context changeSession:(id)session undoTransaction:(void *)transaction
{
  v9 = objc_msgSend_replaceCharactersInSelection_withStorage_usePasteRules_srcStylesAmbiguous_dolcContext_changeSession_undoTransaction_outInsertedRanges_(self, a2, selection, storage, rules, ambiguous, context, session, transaction, 0);
  v12 = objc_msgSend_superRange(v9, v10, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (id)replaceCharactersInSelection:(id)selection withStorage:(id)storage usePasteRules:(BOOL)rules srcStylesAmbiguous:(BOOL)ambiguous dolcContext:(id)context changeSession:(id)session undoTransaction:(void *)transaction outInsertedRanges:(id *)self0
{
  v10 = [TSWPRangeArray alloc];
  v12 = objc_msgSend_initWithRange_(v10, v11, 0, 0);

  return v12;
}

- (_NSRange)rangeForChange:(id)change
{
  changeCopy = change;
  v7 = objc_msgSend_length(self, v5, v6);
  sub_276E0A8BC(v14, self, 0, v7);
  while (1)
  {
    v8 = sub_276E0AA14(v14);

    if (!v8)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    v9 = sub_276E0AA14(v14);

    if (v9 == changeCopy)
    {
      break;
    }

    sub_276E0A8F0(v14);
  }

  v10 = sub_276E0AA48(v14);
  v8 = v11;
LABEL_7:
  nullsub_7(v14);

  v12 = v10;
  v13 = v8;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)changeAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  v6 = self->_attributesTable[kind];
  if (!v6 || !*(v6 + 6))
  {
    if (range)
    {
      v9 = objc_msgSend_range(self, a2, index);
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(self->_attributesTable[kind], index);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (range)
    {
      v8 = TSWPAttributeArray::charIndexForAttributeIndex(v6, 0);
      v9 = 0;
LABEL_8:
      v10 = 0;
LABEL_9:
      range->location = v9;
      range->length = v8;
      goto LABEL_11;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v12 = v7;
  v10 = TSWPAttributeArray::objectForAttributeIndex(v6, v7);
  if (range)
  {
    v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, v12);
    goto LABEL_9;
  }

LABEL_11:

  return v10;
}

- (id)changeAtCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  v7 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, a2, index, 15, range);
  if (!v7)
  {
    v7 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, v8, index, 16, range);
  }

  return v7;
}

- (id)deletedRangesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_opt_new();
  sub_276E0A8BC(v13, self, location, length);
  while (1)
  {
    v7 = sub_276E0AA14(v13);

    if (!v7)
    {
      break;
    }

    if (sub_276E0AAD4(v13))
    {
      v15.location = sub_276E0AA48(v13);
      v16.location = location;
      v16.length = length;
      v8 = NSIntersectionRange(v15, v16);
      if (v8.length)
      {
        objc_msgSend_concatenateRange_(v6, v8.length, v8.location, v8.length);
      }
    }

    sub_276E0A8F0(v13);
  }

  nullsub_7(v13);
  v11 = objc_msgSend_copy(v6, v9, v10);

  return v11;
}

- (id)hiddenRangesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  sub_276E0A8BC(v13, self, range.location, range.length);
  v5 = 0;
  while (1)
  {
    v6 = sub_276E0AA14(v13);

    if (!v6)
    {
      break;
    }

    if (sub_276E0AA8C(v13))
    {
      v15.location = sub_276E0AA48(v13);
      v16.location = location;
      v16.length = length;
      v8 = NSIntersectionRange(v15, v16);
      v7 = v8.length;
      if (v8.length)
      {
        if (!v5)
        {
          v5 = objc_alloc_init(TSWPMutableRangeArray);
        }

        objc_msgSend_addRange_(v5, v7, v8.location, v8.length);
      }
    }

    sub_276E0A8F0(v13);
  }

  nullsub_7(v13);
  v11 = objc_msgSend_copy(v5, v9, v10);

  return v11;
}

- (id)visibleRangesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [TSWPMutableRangeArray alloc];
  v8 = objc_msgSend_initWithRange_(v6, v7, location, length);
  sub_276E0A8BC(v16, self, location, length);
  while (1)
  {
    v9 = sub_276E0AA14(v16);

    if (!v9)
    {
      break;
    }

    if (sub_276E0AA8C(v16))
    {
      v10 = sub_276E0AA48(v16);
      objc_msgSend_removeRange_(v8, v11, v10, v11);
    }

    sub_276E0A8F0(v16);
  }

  nullsub_7(v16);
  v14 = objc_msgSend_copy(v8, v12, v13);

  return v14;
}

- (BOOL)p_hasDeletedTextAtCharIndex:(unint64_t)index requireHidden:(BOOL)hidden range:(_NSRange *)range
{
  hiddenCopy = hidden;
  v8 = objc_msgSend_deletionChangesTable(self, a2, index);
  v9 = v8;
  if (v8)
  {
    v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, index);
    if (v10 > 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0;
    }

    else
    {
      v11 = v10;
      v12 = TSWPAttributeArray::objectForAttributeIndex(v9, v10);
      v15 = v12;
      if (v12 && (!hiddenCopy || objc_msgSend_isHidden(v12, v13, v14)))
      {
        v16 = TSWPAttributeArray::rangeForAttributeIndex(v9, v11);
        LOBYTE(v9) = 0;
        if (index >= v16 && index - v16 < v17)
        {
          if (range)
          {
            range->location = v16;
            range->length = v17;
          }

          LOBYTE(v9) = 1;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v9) = 0;
LABEL_13:
  }

  return v9;
}

- (unint64_t)p_indexOfFirstNonDeletedCharInRange:(_NSRange)range requireVisible:(BOOL)visible
{
  visibleCopy = visible;
  location = range.location;
  rangeCopy = range;
  v6 = objc_msgSend_deletionChangesTable(self, a2, range.location);
  if (v6)
  {
    v7 = v6;
    TSWPAttributeArray::begin(v6, &rangeCopy, &v18);
    TSWPAttributeArray::end(v7, &rangeCopy, v8, &v16);
    if (v19 != v17)
    {
      while (1)
      {
        v9 = TSWPAttributeArray::iterator::operator*(&v18);
        v12 = v9;
        if (!v9 || visibleCopy && (objc_msgSend_isHidden(v9, v10, v11) & 1) == 0)
        {
          break;
        }

        if (++v19 == v17)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v13 = rangeCopy.location;
      v14 = TSWPAttributeArray::rangeForAttributeIndex(v18, v19);
      if (v13 <= v14)
      {
        location = v14;
      }

      else
      {
        location = v13;
      }
    }
  }

  return location;
}

- (unint64_t)indexAfterLastVisibleCharInRange:(_NSRange)range
{
  rangeCopy = range;
  v3 = range.location + range.length;
  v4 = objc_msgSend_deletionChangesTable(self, a2, range.location);
  if (v4)
  {
    v6 = v4;
    TSWPAttributeArray::end(v4, &rangeCopy, v5, &v19);
    TSWPAttributeArray::begin(v6, &rangeCopy, &v17);
    v7 = v20;
    if (v20 != v18)
    {
      while (1)
      {
        if (v7)
        {
          v20 = v7 - 1;
        }

        v8 = TSWPAttributeArray::iterator::operator*(&v19);
        v11 = v8;
        if (!v8 || (objc_msgSend_isHidden(v8, v9, v10) & 1) == 0)
        {
          break;
        }

        v7 = v20;
        if (v20 == v18)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      location = rangeCopy.location;
      length = rangeCopy.length;
      v14 = TSWPAttributeArray::rangeForAttributeIndex(v19, v20);
      if (v14 + v15 >= length + location)
      {
        v3 = length + location;
      }

      else
      {
        v3 = v14 + v15;
      }
    }
  }

  return v3;
}

- (BOOL)hasDeletionInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_msgSend_deletionChangesTable(self, a2, range.location);
  if (v5)
  {
    v6 = v5;
    v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5, location);
    v8 = TSWPAttributeArray::objectForAttributeIndex(v6, v7);

    if (v8)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, v7);
      LOBYTE(v5) = v9 > location || v9 + v10 < location + length;
    }
  }

  return v5;
}

- (id)p_undeletedCharIndexesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_range(self, a2, range.location);
  v8 = v6;
  v9 = v7;
  if (v6 > location || &v7[v6] < location + length)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage(ChangeTracking) p_undeletedCharIndexesInRange:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
    v32.location = location;
    v32.length = length;
    v14 = NSStringFromRange(v32);
    v33.location = v8;
    v33.length = v9;
    v15 = NSStringFromRange(v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v13, 282, 0, "Input range (%{public}@) is not entirely within storage range (%{public}@).", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v34.location = location;
  v34.length = length;
  v35.location = v8;
  v35.length = v9;
  v19 = NSIntersectionRange(v34, v35);
  v20 = v19.location;
  v22 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v19.length, v19.location, v19.length);
  do
  {
    v23 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, v21, v20, 16, &v29);
    v26 = v23;
    if (v23)
    {
      if ((objc_msgSend_isHidden(v23, v24, v25) & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_removeIndexesInRange_(v22, v27, v29, v30);
        }
      }
    }

    v20 = v30 + v29;
  }

  while (v20 < v19.location + v19.length);

  return v22;
}

- (BOOL)isCharRangePartiallyDeleted:(_NSRange)deleted
{
  length = deleted.length;
  v4 = objc_msgSend_p_undeletedCharIndexesInRange_(self, a2, deleted.location);
  LOBYTE(length) = objc_msgSend_count(v4, v5, v6) < length;

  return length;
}

- (BOOL)isCharRangeEntirelyDeleted:(_NSRange)deleted
{
  v3 = objc_msgSend_p_undeletedCharIndexesInRange_(self, a2, deleted.location, deleted.length);
  v6 = objc_msgSend_count(v3, v4, v5) == 0;

  return v6;
}

- (BOOL)isCharRangeEntirelyHidden:(_NSRange)hidden
{
  v3 = objc_msgSend_visibleRangesInRange_(self, a2, hidden.location, hidden.length);
  v6 = objc_msgSend_rangeCount(v3, v4, v5) == 0;

  return v6;
}

- (void)applyChange:(id)change changeRange:(_NSRange)range accept:(BOOL)accept undoTransaction:(void *)transaction
{
  acceptCopy = accept;
  length = range.length;
  location = range.location;
  changeCopy = change;
  if ((objc_msgSend_isInsertion(changeCopy, v11, v12) & 1) == 0 && (objc_msgSend_isDeletion(changeCopy, v13, v14) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPStorage(ChangeTracking) applyChange:changeRange:accept:undoTransaction:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 322, 0, "unknown change kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if ((objc_msgSend_isInsertion(changeCopy, v13, v14) & 1) != 0 || objc_msgSend_isDeletion(changeCopy, v22, v23))
  {
    if (objc_msgSend_isInsertion(changeCopy, v22, v23))
    {
      objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v24, 0, location, length, 15, 0, transaction);
    }

    else
    {
      objc_msgSend_applyObject_toCharRange_forKind_dolcContext_undoTransaction_(self, v24, 0, location, length, 16, 0, transaction);
    }

    if (acceptCopy)
    {
      if ((objc_msgSend_isInsertion(changeCopy, v25, v26) & 1) != 0 || (objc_msgSend_isDeletion(changeCopy, v27, v28) & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_15:
      objc_msgSend_deleteRange_undoTransaction_(self, v29, location, length, transaction);
      goto LABEL_16;
    }

    if ((objc_msgSend_isDeletion(changeCopy, v25, v26) & 1) == 0 && objc_msgSend_isInsertion(changeCopy, v30, v31))
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)applyChanges:(BOOL)changes inRange:(_NSRange)range inSelectionRange:(_NSRange)selectionRange outChangedRange:(_NSRange *)changedRange outSelectionRange:(_NSRange *)outSelectionRange undoTransaction:(void *)transaction forceAll:(BOOL)all kind:(int)self0
{
  changedRangeCopy = changedRange;
  length = selectionRange.length;
  location = selectionRange.location;
  v13 = range.length;
  v14 = range.location;
  changesCopy = changes;
  v111 = *MEMORY[0x277D85DE8];
  *changedRange = range;
  *outSelectionRange = selectionRange;
  outSelectionRangeCopy = outSelectionRange;
  v17 = *MEMORY[0x277D81490];
  v18 = *(MEMORY[0x277D81490] + 8);
  v98 = objc_opt_new();
  sub_276E0A8BC(v108, self, v14, v13);
  v93 = 0;
  v90 = 0;
  v96 = 0;
  v97 = 0;
  range2 = length;
  v92 = location + length;
  v91 = v17;
  v87 = v18;
  v88 = v17;
  p_location = &changedRangeCopy->location;
  v94 = location;
  while (1)
  {
    v19 = sub_276E0AA14(v108);
    v20 = v19 == 0;

    if (v20)
    {
      break;
    }

    v23 = sub_276E0AA14(v108);
    v26 = v23;
    v99 = v18;
    if (!kind || objc_msgSend_kind(v23, v24, v25) == kind)
    {
      v27 = sub_276E0AA48(v108);
      v29 = v28;
      v120.location = v27;
      v120.length = v28;
      v31 = NSUnionRange(*changedRangeCopy, v120);
      *changedRangeCopy = v31;
      if (changesCopy)
      {
        if ((objc_msgSend_isDeletion(v26, v31.length, v30) & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_9:
        v112.location = v27;
        v112.length = v29;
        v121.location = 0;
        v121.length = location;
        v34 = NSIntersectionRange(v112, v121).length;
        v113.location = v27;
        v113.length = v29;
        v122.location = location;
        v122.length = range2;
        v32 = NSIntersectionRange(v113, v122).length;
        v97 -= v34;
        v96 -= v32;
      }

      else if (objc_msgSend_isInsertion(v26, v31.length, v30))
      {
        goto LABEL_9;
      }

LABEL_10:
      if (!all && v27 <= location && v27 + v29 >= v92)
      {
        if (objc_msgSend_isDeletion(v26, v32, v33))
        {
          v38 = v90;
          v37 = v91;
          v39 = v99;
          v40 = v93;
          v87 = v29;
          v88 = v27;
          v90 = v26;
          goto LABEL_16;
        }

        v38 = v93;
        v37 = v27;
        v39 = v29;
        v40 = v26;
        if (objc_msgSend_isInsertion(v26, v35, v36))
        {
LABEL_16:
          v41 = v26;

          v91 = v37;
          v99 = v39;
          v93 = v40;
        }
      }

      objc_msgSend_addObject_(v98, v32, v26, outSelectionRangeCopy);
      changedRangeCopy = p_location;
      location = v94;
    }

    sub_276E0A8F0(v108);

    v18 = v99;
  }

  if (v90)
  {
    changedRangeCopy->location = v88;
    changedRangeCopy->length = v87;
    if (changesCopy)
    {
      v114.location = v88;
      v114.length = v87;
      v123.location = 0;
      v123.length = location;
      v42 = NSIntersectionRange(v114, v123).length;
      v115.location = v88;
      v115.length = v87;
      v124.location = location;
      v124.length = range2;
      v21 = NSIntersectionRange(v115, v124).length;
      v97 = -v42;
      v96 = -v21;
    }

    else
    {
      v96 = 0;
      v97 = 0;
    }

    objc_msgSend_removeAllObjects(v98, v21, v22, outSelectionRangeCopy);
    objc_msgSend_addObject_(v98, v43, v90);
  }

  else if (v93)
  {
    changedRangeCopy->location = v91;
    changedRangeCopy->length = v18;
    if (changesCopy)
    {
      v96 = 0;
      v97 = 0;
    }

    else
    {
      v116.location = v91;
      v116.length = v18;
      v125.location = 0;
      v125.length = location;
      v44 = NSIntersectionRange(v116, v125).length;
      v117.location = v91;
      v117.length = v18;
      v126.location = location;
      v126.length = range2;
      v21 = NSIntersectionRange(v117, v126).length;
      v97 = -v44;
      v96 = -v21;
    }

    objc_msgSend_removeAllObjects(v98, v21, v22, outSelectionRangeCopy);
    objc_msgSend_addObject_(v98, v45, v93);
  }

  if (outSelectionRangeCopy->location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = outSelectionRangeCopy->length + v96;
    outSelectionRangeCopy->location += v97;
    outSelectionRangeCopy->length = v46;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v47 = v98;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v104, v110, 16);
  if (v51)
  {
    v52 = *v105;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v105 != v52)
        {
          objc_enumerationMutation(v47);
        }

        v54 = *(*(&v104 + 1) + 8 * i);
        if (objc_msgSend_isInsertion(v54, v49, v50, outSelectionRangeCopy))
        {
          v55 = objc_msgSend_rangeForChange_(self, v49, v54);
          objc_msgSend_applyChange_changeRange_accept_undoTransaction_(self, v56, v54, v55, v56, changesCopy, transaction);
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v104, v110, 16);
    }

    while (v51);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v57 = v47;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v100, v109, 16);
  if (v61)
  {
    v62 = *v101;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v101 != v62)
        {
          objc_enumerationMutation(v57);
        }

        v64 = *(*(&v100 + 1) + 8 * j);
        if (objc_msgSend_isDeletion(v64, v59, v60, outSelectionRangeCopy))
        {
          v65 = objc_msgSend_rangeForChange_(self, v59, v64);
          if (v65 <= 0x7FFFFFFFFFFFFFFELL)
          {
            objc_msgSend_applyChange_changeRange_accept_undoTransaction_(self, v59, v64, v65, v59, changesCopy, transaction);
          }
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v100, v109, 16);
    }

    while (v61);
  }

  if (outSelectionRangeCopy->location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v69 = outSelectionRangeCopy->length;
    v68 = outSelectionRangeCopy->location;
    if (v69 + v68 > objc_msgSend_length(self, v66, v67))
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSWPStorage(ChangeTracking) applyChanges:inRange:inSelectionRange:outChangedRange:outSelectionRange:undoTransaction:forceAll:kind:]");
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v74, v71, v73, 437, 0, "bad selection range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76);
      v77 = outSelectionRangeCopy->location;
      v78 = outSelectionRangeCopy->length;
      v127.location = objc_msgSend_range(self, v79, v80);
      v127.length = v81;
      v118.location = v77;
      v118.length = v78;
      v82 = NSIntersectionRange(v118, v127);
      v66 = v82.length;
      *outSelectionRangeCopy = v82;
    }
  }

  v83 = *p_location;
  if (*p_location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v84 = p_location[1];
    v128.location = objc_msgSend_range(self, v66, v67);
    v128.length = v85;
    v119.location = v83;
    v119.length = v84;
    *p_location = NSIntersectionRange(v119, v128);
  }

  nullsub_7(v108);
}

- (id)nextChangeFromCharIndex:(unint64_t)index afterChange:(id)change changeRange:(_NSRange *)range
{
  changeCopy = change;
  v11 = objc_msgSend_length(self, v9, v10);
  if (v11 <= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v11;
  }

  if (v11 >= index)
  {
    indexCopy2 = index;
  }

  else
  {
    indexCopy2 = v11;
  }

  sub_276E0A8BC(v29, self, indexCopy2, indexCopy - indexCopy2);
  v14 = 0;
  v15 = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v17 = sub_276E0AA14(v29);

    if (!v17)
    {
      break;
    }

    if (changeCopy)
    {
      v18 = v15 == changeCopy;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    v20 = sub_276E0AA14(v29);

    v16 = sub_276E0AA48(v29);
    v14 = v21;
    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }

    v15 = v20;
    sub_276E0A8F0(v29);
  }

  v20 = v15;
LABEL_18:
  nullsub_7(v29);
  if (v20 != changeCopy)
  {
    v24 = v20;
    if (!range)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v26 = objc_msgSend_range(self, v22, v23);
  sub_276E0A8BC(v29, self, v26, v27);
  v24 = sub_276E0AA14(v29);

  v16 = sub_276E0AA48(v29);
  v14 = v28;
  nullsub_7(v29);
  if (range)
  {
LABEL_20:
    range->location = v16;
    range->length = v14;
  }

LABEL_21:

  return v24;
}

- (id)previousChangeFromCharIndex:(unint64_t)index beforeChange:(id)change changeRange:(_NSRange *)range
{
  changeCopy = change;
  sub_276E0A8BC(v26, self, 0, index);
  v9 = 0;
  v10 = 0;
  for (i = 0x7FFFFFFFFFFFFFFFLL; ; i = v16)
  {
    v12 = sub_276E0AA14(v26);

    if (!v12)
    {
      break;
    }

    v13 = sub_276E0AA14(v26);
    v14 = sub_276E0AA48(v26);
    if (v13 == changeCopy || (v16 = v14, v14 > index))
    {

      break;
    }

    v17 = v15;

    v10 = v13;
    sub_276E0A8F0(v26);
    v9 = v17;
  }

  nullsub_7(v26);
  if (!v10)
  {
    v20 = objc_msgSend_range(self, v18, v19);
    sub_276E0A8BC(v26, self, v20, v21);
    v10 = 0;
    while (1)
    {
      v22 = sub_276E0AA14(v26);

      if (!v22)
      {
        break;
      }

      v23 = sub_276E0AA14(v26);

      i = sub_276E0AA48(v26);
      v9 = v24;
      v10 = v23;
      sub_276E0A8F0(v26);
    }

    nullsub_7(v26);
  }

  if (range)
  {
    range->location = i;
    range->length = v9;
  }

  return v10;
}

- (id)changeDetailsAtCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if (objc_msgSend_range(self, a2, index) > index || (v9 = objc_msgSend_range(self, v7, v8), &v7[v9] < index))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorage(ChangeTracking) changeDetailsAtCharIndex:outRange:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
    v25.location = objc_msgSend_range(self, v14, v15);
    v16 = NSStringFromRange(v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v13, 520, 0, "charIndex %lu not within storage range %@", index, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v21 = objc_msgSend_changeAtCharIndex_outRange_(self, v7, index, range);
  if (v21)
  {
    v22 = objc_msgSend_changeDetailsForChange_withRange_(self, v20, v21, range->location, range->length);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)changeDetailsForChange:(id)change withRange:(_NSRange)range
{
  length = range.length;
  changeCopy = change;
  if (!changeCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 534, 0, "invalid nil value for '%{public}s'", "change");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (!length)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage(ChangeTracking) changeDetailsForChange:withRange:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 535, 0, "Should have a change range greater than 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = [TSWPChangeDetails alloc];
  v23 = objc_msgSend_initWithChange_(v21, v22, changeCopy);

  return v23;
}

- (_NSRange)annotationRangeForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (!range.length)
  {
    v5 = objc_msgSend_rangeForSelectionWithInsertionLocation_(self, a2, range.location);
    v7 = location - 1;
    if (!location)
    {
      v7 = 0;
    }

    if (location == v5 + v6)
    {
      location = v7;
    }
  }

  v8 = location;
  v9 = length;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)trackedChangesIntersectingSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_msgSend_isValid(selectionCopy, v5, v6) && (v9 = objc_msgSend_superRange(selectionCopy, v7, v8), v11 = v10, v13 = objc_msgSend_range(self, v10, v12), &v11[v9] <= &v14[v13]) && objc_msgSend_hasTrackedChanges(self, v14, v15))
  {
    if (objc_msgSend_isInsertionPoint(selectionCopy, v16, v17))
    {
      v20 = objc_msgSend_leadingCharIndex(selectionCopy, v18, v19);
      v22 = objc_msgSend_annotationRangeForRange_(self, v21, v20, 0);
      v24 = objc_msgSend_p_trackedChangesIntersectingRange_(self, v23, v22, v23);
      if (!objc_msgSend_count(v24, v25, v26))
      {
        Range = objc_msgSend_firstRange(selectionCopy, v27, v28);
        v31 = objc_msgSend_p_trackedChangesIntersectingRange_(self, v30, Range, v30);

        v24 = v31;
      }
    }

    else
    {
      v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19);
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = sub_276E116F8;
      v41 = &unk_27A6F38E0;
      v34 = v33;
      v42 = v34;
      selfCopy = self;
      objc_msgSend_enumerateRanges_(selectionCopy, v35, &v38);
      v24 = objc_msgSend_copy(v34, v36, v37, v38, v39, v40, v41);
    }
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  return v24;
}

- (id)p_trackedChangesIntersectingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = 0;
  v8 = location + length;
  v9 = &selRef_fontsChanged_;
  do
  {
    v10 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, v6, location, 15, &v29);
    v14 = objc_msgSend_changeAtCharIndex_attributeKind_effectiveRange_(self, v11, location, 16, &v27);
    if (v10)
    {
      if ((objc_msgSend_isHidden(v10, v12, v13) & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = objc_msgSend_changeDetailsAtCharIndex_outRange_(self, v12, location, v31);
          v16 = v9;
          v24 = v9[289];
          v17 = TSUCheckedProtocolCast();

          v7 = v17;
          objc_msgSend_tsu_addNonNilObject_(v26, v18, v17, v24);
          v9 = v16;
        }
      }
    }

    if (v14)
    {
      if ((objc_msgSend_isHidden(v14, v12, v13) & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_msgSend_changeDetailsAtCharIndex_outRange_(self, v19, location, v31);
          v25 = v9[289];
          v21 = TSUCheckedProtocolCast();

          v7 = v21;
          objc_msgSend_tsu_addNonNilObject_(v26, v22, v21, v25);
        }
      }
    }

    if (v28 + v27 >= (v30 + v29))
    {
      location = v30 + v29;
    }

    else
    {
      location = v28 + v27;
    }
  }

  while (location < v8);

  return v26;
}

- (unint64_t)countTrackChangesInSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_msgSend_isValid(selectionCopy, v5, v6) && (v9 = objc_msgSend_superRange(selectionCopy, v7, v8), v11 = v10, v13 = objc_msgSend_range(self, v10, v12), &v11[v9] <= &v14[v13]) && objc_msgSend_hasTrackedChanges(self, v14, v15))
  {
    v20 = selectionCopy;
    if (objc_msgSend_isInsertionPoint(selectionCopy, v16, v17))
    {
      Range = objc_msgSend_firstRange(selectionCopy, v18, v19);
      v23 = objc_msgSend_annotationRangeForRange_(self, v22, Range, v22);
      v20 = objc_msgSend_selectionWithRange_(TSWPSelection, v24, v23, v24);
    }

    v25 = objc_msgSend_trackedChangesIntersectingSelection_(self, v18, v20);
    v28 = objc_msgSend_count(v25, v26, v27);
  }

  else
  {
    v28 = 0;
    v20 = selectionCopy;
  }

  return v28;
}

- (void)settingsDidChangeRequiringLayoutAndRendering
{
  v4 = objc_msgSend_range(self, a2, v2);
  objc_msgSend_didChangeRange_delta_broadcastKind_(self, v5, v4, v5, 0, 0);
  v9 = objc_msgSend_paragraphCount(self, v6, v7);

  objc_msgSend_didChangeParagraphsInIndexRange_(self, v8, 0, v9);
}

- (id)characterStyleForDeletedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(self, a2, range.location, 6, &v19);
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = v19;

  v10 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(self, v9, location);

  if ((v8 != location || v7 == 0) && v10 == 0)
  {
    v15 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(self, v11, location, v18);
    v16 = v15;
    v14 = 0;
    if (v15 && v18[0] == location)
    {
      if (v18[1] + location <= location + length)
      {
        v14 = v15;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)enumerateChangesInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v18, self, location, length, 16, 0);
  v16 = 0;
  while (1)
  {
    v9 = TSWPAttributeEnumerator::nextAttributeIndex(&v18, &v17, v8);
    if (!v9)
    {
      break;
    }

    v16 = 0;
    v10 = TSWPAttributeRecord::object(v9, 0x10uLL);
    blockCopy[2](blockCopy, v10, v17.location, v17.length, &v16);

    if (v16)
    {
      goto LABEL_10;
    }
  }

  if ((v16 & 1) == 0)
  {
    TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v15, self, location, length, 15, 0);
    do
    {
      v12 = TSWPAttributeEnumerator::nextAttributeIndex(&v15, &v14, v11);
      if (!v12)
      {
        break;
      }

      v16 = 0;
      v13 = TSWPAttributeRecord::object(v12, 0xFuLL);
      blockCopy[2](blockCopy, v13, v14.location, v14.length, &v16);
    }

    while ((v16 & 1) == 0);
    TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v15);
  }

LABEL_10:
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v18);
}

- (BOOL)hasAnyCommentsRequiring2_2
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_attributeArrayForKind_(self, a2, 19);
  if (v2)
  {
    v26 = *(v2 + 24);
    if (v26)
    {
      v27 = v2;
      v28 = 0;
      while (1)
      {
        objc_opt_class();
        v3 = TSWPAttributeArray::objectForAttributeIndex(v27, v28);
        v29 = TSUDynamicCast();

        v6 = objc_msgSend_fields(v29, v4, v5);
        if (objc_msgSend_count(v6, v7, v8) > 1)
        {
          break;
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = v6;
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
        if (v11)
        {
          v12 = *v31;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v9);
              }

              objc_opt_class();
              v14 = TSUDynamicCast();
              v17 = objc_msgSend_commentStorage(v14, v15, v16);
              v20 = objc_msgSend_replies(v17, v18, v19);
              v23 = objc_msgSend_count(v20, v21, v22) == 0;

              if (!v23)
              {

                goto LABEL_16;
              }
            }

            v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v24, &v30, v34, 16);
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        LOBYTE(v2) = 0;
        if (++v28 == v26)
        {
          return v2;
        }
      }

LABEL_16:

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

- (BOOL)hasComments
{
  v2 = objc_msgSend_attributeArrayForKind_(self, a2, 19);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 24) != 0;
  }

  return v2;
}

- (BOOL)highlightsAllowed
{
  v4 = objc_msgSend_wpKind(self, a2, v2);
  LOBYTE(v7) = (v4 & 0xFD) == 0 || v4 == 3;
  if (v4 <= 3)
  {
    v8 = v4;
    if (v4 != 1)
    {
      v9 = objc_msgSend_parentDrawable(self, v5, v6);
      if (v9)
      {
        v12 = v9;
        if ((objc_msgSend_supportsAttachedComments(v9, v10, v11) & 1) == 0)
        {
          objc_opt_class();
          v17 = objc_msgSend_parentDrawable(self, v15, v16);
          v7 = TSUDynamicCast();

          if (!v7)
          {
LABEL_17:

            return v7;
          }

          v20 = objc_msgSend_textStorageAllowsCommentsDisregardingParent(v7, v18, v19);

          if (!v20)
          {
            LOBYTE(v7) = 0;
            goto LABEL_17;
          }
        }

        v21 = objc_msgSend_documentRoot(self, v13, v14);

        if (v21)
        {
          v24 = objc_msgSend_documentRoot(self, v22, v23);
          v26 = objc_msgSend_documentDisallowsHighlightsOnStorage_(v24, v25, v12);

          if (v26)
          {
            LOBYTE(v7) = 0;
            return v7;
          }
        }

        else
        {
        }
      }

      else
      {
        LOBYTE(v7) = 0;
        if (v8 == 1)
        {
          return v7;
        }
      }

      v12 = objc_msgSend_parentInfo(self, v10, v11);
      LODWORD(v7) = objc_msgSend_preventsComments(v12, v27, v28) ^ 1;
      goto LABEL_17;
    }
  }

  return v7;
}

- (_NSRange)rangeForHighlight:(id)highlight
{
  v3 = MEMORY[0x2821F9670](self, sel_p_rangeForOverlappingField_attributeKind_, highlight);
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)firstHighlightForSelection:(id)selection
{
  v3 = objc_msgSend_firstHighlightForSelection_requireComment_(self, a2, selection, 0);

  return v3;
}

- (id)firstHighlightForSelection:(id)selection requireComment:(BOOL)comment
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_276E1233C;
  v12 = sub_276E1234C;
  v13 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276E12354;
  v6[3] = &unk_27A6F4E20;
  v6[4] = self;
  v6[5] = &v8;
  commentCopy = comment;
  objc_msgSend_enumerateRanges_(selection, a2, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)firstHighlightForSelectionRange:(_NSRange)range outRange:(_NSRange *)outRange requireComment:(BOOL)comment
{
  v5 = objc_msgSend_p_highlightsForSelectionRange_outRange_requireComment_stopOnFirst_(self, a2, range.location, range.length, outRange, comment, 1);
  v8 = objc_msgSend_firstObject(v5, v6, v7);

  return v8;
}

- (void)enumerateHighlightsInExpandedRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (location != 0x7FFFFFFFFFFFFFFFLL && !length)
  {
    objc_msgSend_range(self, v7, v8);
    location = NSExpandedRange();
    length = v7;
  }

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_enumerateHighlightsInRange_usingBlock_(self, v7, location, length, blockCopy);
  }
}

- (void)enumerateHighlightsInSelectionExpandedRange:(id)range usingBlock:(id)block
{
  rangeCopy = range;
  blockCopy = block;
  v22 = rangeCopy;
  v10 = objc_msgSend_superRange(v22, v8, v9);
  v12 = v22;
  v13 = v22;
  v14 = v10 == 0x7FFFFFFFFFFFFFFFLL;
  v15 = v22;
  if (!v14)
  {
    objc_msgSend_superRange(v22, v22, v11);
    v15 = v22;
    v13 = v22;
    if (!v12)
    {
      objc_msgSend_superRange(v22, 0, v11);
      objc_msgSend_range(self, v16, v17);
      v18 = NSExpandedRange();
      v20 = objc_msgSend_selectionWithRange_(TSWPSelection, v19, v18, v19);

      v15 = v22;
      v13 = v20;
    }
  }

  if (objc_msgSend_superRange(v15, v12, v11) != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_enumerateHighlightsInSelection_usingBlock_(self, v21, v13, blockCopy);
  }
}

- (void)enumerateHighlightsInSelection:(id)selection usingBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276E12740;
  v9[3] = &unk_27A6F3B38;
  v9[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend_enumerateRanges_(selection, v8, v9);
}

- (void)removeHighlightsInRange:(_NSRange)range dolcContext:(id)context undoTransaction:(void *)transaction author:(id)author
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  authorCopy = author;
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
  v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_276E12980;
  v36[3] = &unk_27A6F4E48;
  v35 = authorCopy;
  v37 = v35;
  v19 = v15;
  v38 = v19;
  v20 = v18;
  v39 = v20;
  objc_msgSend_enumerateHighlightsInExpandedRange_usingBlock_(self, v21, location, length, v36, v15, authorCopy);
  for (i = 0; i < objc_msgSend_count(v19, v22, v23); ++i)
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(v19, v25, i);
    v28 = objc_msgSend_objectAtIndexedSubscript_(v20, v27, i);
    v31 = objc_msgSend_rangeValue(v28, v29, v30);
    v33 = v32;

    objc_msgSend_removeHighlight_atRange_dolcContext_undoTransaction_(self, v34, v26, v31, v33, contextCopy, transaction);
  }
}

- (void)removeHighlight:(id)highlight dolcContext:(id)context undoTransaction:(void *)transaction
{
  highlightCopy = highlight;
  contextCopy = context;
  v11 = objc_msgSend_rangeForHighlight_(self, v9, highlightCopy);
  if (v11 == *MEMORY[0x277D81490] && v10 == *(MEMORY[0x277D81490] + 8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage(ChangeTracking) removeHighlight:dolcContext:undoTransaction:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_annotation.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1006, 0, "Invalid remove highlight range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  else
  {
    objc_msgSend_removeHighlight_atRange_dolcContext_undoTransaction_(self, v10, highlightCopy, v11, v10, contextCopy, transaction);
  }
}

- (id)p_highlightsForSelectionRange:(_NSRange)range outRange:(_NSRange *)outRange requireComment:(BOOL)comment stopOnFirst:(BOOL)first
{
  length = range.length;
  location = range.location;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, range.location);
  v13 = v12;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_276E12CE4;
    v16[3] = &unk_27A6F4E70;
    commentCopy = comment;
    v17 = v12;
    outRangeCopy = outRange;
    firstCopy = first;
    objc_msgSend_enumerateHighlightsInExpandedRange_usingBlock_(self, v14, location, length, v16);
  }

  return v13;
}

- (id)highlightSelectionForSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_msgSend_isValid(selectionCopy, v5, v6))
  {
    if (objc_msgSend_isInsertionPoint(selectionCopy, v7, v8))
    {
      v11 = objc_msgSend_leadingCharIndex(selectionCopy, v9, v10);
      v13 = objc_msgSend_rangeForSelectionWithInsertionLocation_(self, v12, v11);
      v15 = objc_msgSend_selectionWithRange_(TSWPSelection, v14, v13, v14);
    }

    else
    {
      v15 = selectionCopy;
    }

    v18 = v15;
    if (objc_msgSend_isRange(v15, v16, v17))
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 1;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_276E12F14;
      v21[3] = &unk_27A6F3B60;
      v21[4] = self;
      v21[5] = &v22;
      objc_msgSend_enumerateRanges_(v18, v19, v21);
      if (*(v23 + 24) == 1)
      {

        v18 = 0;
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  else
  {
    v18 = selectionCopy;
  }

  return v18;
}

- (_NSRange)rangeForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v5 = objc_msgSend_rangeForHighlight_(self, v7, v8);
    v6 = v9;
  }

  else
  {
    objc_opt_class();
    v10 = TSUDynamicCast();
    v13 = v10;
    if (v10)
    {
      v14 = objc_msgSend_change(v10, v11, v12);
      v5 = objc_msgSend_rangeForChange_(self, v15, v14);
      v6 = v16;
    }
  }

  v17 = v5;
  v18 = v6;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)rangeOfAnnotationWithOptions:(unint64_t)options range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  optionsCopy = options;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4012000000;
  v31 = sub_276E13444;
  v32 = nullsub_9;
  v33 = &unk_276FDE562;
  v34 = *MEMORY[0x277D81490];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_276E13454;
  v25[3] = &unk_27A6F4E98;
  rangeCopy = range;
  v27 = (options & 4) != 0;
  v25[4] = &v35;
  v25[5] = &v28;
  objc_msgSend_enumerateHighlightsInRange_usingBlock_(self, a2, range.location, range.length, v25);
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v24, self, location, length, 15, 0);
  v9 = optionsCopy & 4;
  while (1)
  {
    v10 = TSWPAttributeEnumerator::nextAttributeIndex(&v24, &v23, v8);
    if (!v10)
    {
      break;
    }

    objc_opt_class();
    v11 = TSWPAttributeRecord::object(v10, 0xFuLL);
    v12 = TSUDynamicCast();

    if (v12 && v23.location >= location && v23.location - location < length)
    {
      v13 = v36;
      if (!v9)
      {
        if (!*(v36 + 24) || v23.location < v29[3].location)
        {
          v29[3] = v23;
          *(v13 + 24) = 1;
        }

        break;
      }

      if (!*(v36 + 24) || v23.location > v29[3].location)
      {
        v29[3] = v23;
        *(v13 + 24) = 1;
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v24);
  TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v24, self, location, length, 16, 0);
  while (1)
  {
    v15 = TSWPAttributeEnumerator::nextAttributeIndex(&v24, &v23, v14);
    if (!v15)
    {
      break;
    }

    objc_opt_class();
    v16 = TSWPAttributeRecord::object(v15, 0x10uLL);
    v17 = TSUDynamicCast();

    if (v17 && v23.location >= location && v23.location - location < length)
    {
      v18 = v36;
      if (!v9)
      {
        if (!*(v36 + 24) || v23.location < v29[3].location)
        {
          v29[3] = v23;
        }

        break;
      }

      if (!*(v36 + 24) || v23.location > v29[3].location)
      {
        v29[3] = v23;
        *(v18 + 24) = 1;
      }
    }
  }

  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v24);
  v19 = v29[3].location;
  v20 = v29[3].length;
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v35, 8);
  v21 = v19;
  v22 = v20;
  result.length = v22;
  result.location = v21;
  return result;
}

- (id)editableAnnotationForInsertionPointSelection:(id)selection includeComments:(BOOL)comments withOutRange:(_NSRange *)range selectionIsOnEdge:(BOOL *)edge
{
  commentsCopy = comments;
  selectionCopy = selection;
  if (!objc_msgSend_isInsertionPoint(selectionCopy, v11, v12))
  {
    v19 = 0;
    goto LABEL_17;
  }

  v14 = objc_msgSend_trackedChangesIntersectingSelection_(self, v13, selectionCopy);
  if (!objc_msgSend_count(v14, v15, v16))
  {
    v19 = 0;
LABEL_7:
    if (commentsCopy)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = sub_276E1233C;
      v38 = sub_276E1234C;
      v39 = 0;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2020000000;
      v33[3] = 0x7FFFFFFFFFFFFFFFLL;
      Range = objc_msgSend_firstRange(selectionCopy, v17, v18);
      v22 = v21;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_276E13768;
      v28[3] = &unk_27A6F4EC0;
      v29 = selectionCopy;
      v30 = &v34;
      v31 = v33;
      rangeCopy = range;
      objc_msgSend_enumerateHighlightsInExpandedRange_usingBlock_(self, v23, Range, v22, v28);
      if (v35[5])
      {
        v19 = TSUProtocolCast();
      }

      else
      {
        v19 = 0;
      }

      _Block_object_dispose(v33, 8);
      _Block_object_dispose(&v34, 8);
    }

    goto LABEL_12;
  }

  v19 = objc_msgSend_firstObject(v14, v17, v18);
  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (edge)
  {
    v24 = objc_msgSend_firstRange(selectionCopy, v17, v18);
    if (&v25[v24] == (range->length + range->location) || objc_msgSend_firstRange(selectionCopy, v25, v26) == range->location)
    {
      *edge = 1;
    }
  }

LABEL_17:

  return v19;
}

- (id)p_replacementsForRange:(_NSRange)range withString:(id)string replaceTextData:(id)data changeSession:(id)session shouldTrackDeletions:(BOOL)deletions
{
  deletionsCopy = deletions;
  rangeCopy = range;
  stringCopy = string;
  dataCopy = data;
  sessionCopy = session;
  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15);
  if (sessionCopy)
  {
    v17 = [TSWPMutableRangeArray alloc];
    v19 = objc_msgSend_initWithRange_(v17, v18, rangeCopy.location, rangeCopy.length);
    v107 = objc_opt_new();
    if (rangeCopy.length)
    {
      if (deletionsCopy)
      {
        objc_msgSend_addRange_(v107, v20, rangeCopy.location);
      }

      v22 = objc_msgSend_insertionChangesTable(self, v20, v21);
      v24 = v22;
      if (v22)
      {
        TSWPAttributeArray::begin(v22, &rangeCopy, &v122);
        TSWPAttributeArray::end(v24, &rangeCopy, v25, &v132);
        for (i = v123; i != v133; i = ++v123)
        {
          v27 = TSWPAttributeArray::iterator::operator*(&v122);
          if (objc_msgSend_isFromChangeSession_(v27, v28, sessionCopy))
          {
            v29 = TSWPAttributeArray::rangeForAttributeIndex(v122, v123);
            objc_msgSend_removeRange_(v107, v30, v29, v30);
          }
        }
      }

      v31 = objc_msgSend_attributeArrayForKind_(self, v23, 4);
      v33 = v31;
      if (v31)
      {
        TSWPAttributeArray::begin(v31, &rangeCopy, &v122);
        TSWPAttributeArray::end(v33, &rangeCopy, v34, &v132);
        for (; v123 != v133; ++v123)
        {
          v35 = TSWPAttributeArray::iterator::operator*(&v122);
          if ((objc_msgSend_elementKind(v35, v36, v37) & 0xBF80F) != 0)
          {
            v39 = TSWPAttributeArray::rangeForAttributeIndex(v122, v123);
            if (v39 != 0x7FFFFFFFFFFFFFFFLL)
            {
              objc_msgSend_removeRange_(v107, v38, v39, 1);
            }
          }
        }
      }

      v40 = objc_msgSend_attributeArrayForKind_(self, v32, 6);
      v41 = v40;
      if (v40)
      {
        TSWPAttributeArray::begin(v40, &rangeCopy, &v122);
        TSWPAttributeArray::end(v41, &rangeCopy, v42, &v132);
        for (; v123 != v133; ++v123)
        {
          v43 = TSWPAttributeArray::iterator::operator*(&v122);
          v44 = objc_opt_class();
          if (objc_msgSend_isMemberOfClass_(v43, v45, v44))
          {
            v46 = TSWPAttributeArray::rangeForAttributeIndex(v122, v123);
            objc_msgSend_removeRange_(v107, v47, v46, v47);
          }
        }
      }

      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = sub_276E141A0;
      v130[3] = &unk_27A6F4EE8;
      v131 = v19;
      objc_msgSend_enumerateRanges_(v107, v48, v130);
      v51 = objc_msgSend_deletionChangesTable(self, v49, v50);
      v52 = v51;
      if (v51)
      {
        TSWPAttributeArray::begin(v51, &rangeCopy, &v122);
        TSWPAttributeArray::end(v52, &rangeCopy, v53, &v132);
        for (j = v123; j != v133; j = ++v123)
        {
          v55 = TSWPAttributeArray::iterator::object(&v122);

          if (v55)
          {
            v56 = TSWPAttributeArray::rangeForAttributeIndex(v122, v123);
            objc_msgSend_removeRange_(v107, v57, v56, v57);
          }
        }
      }

      length = rangeCopy.length;
    }

    else
    {
      length = 0;
    }

    v122 = 0;
    v123 = &v122;
    v124 = 0x4012000000;
    v125 = sub_276E13444;
    v126 = nullsub_9;
    v127 = &unk_276FDE562;
    v128 = length + rangeCopy.location;
    v129 = 0;
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = sub_276E141B0;
    v117[3] = &unk_27A6F4F10;
    v121 = rangeCopy;
    v66 = stringCopy;
    v118 = v66;
    v120 = &v122;
    v67 = v16;
    v119 = v67;
    objc_msgSend_enumerateRanges_(v19, v68, v117);
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_276E142B4;
    v114[3] = &unk_27A6F38E0;
    v69 = sessionCopy;
    v115 = v69;
    v70 = v67;
    v116 = v70;
    objc_msgSend_enumerateRanges_(v107, v71, v114);
    if (objc_msgSend_length(v66, v72, v73))
    {
      v102 = v19;
      v105 = dataCopy;
      v106 = stringCopy;
      v103 = v16;
      v104 = sessionCopy;
      v108 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%C", 65532);
      v77 = objc_msgSend_length(v66, v75, v76);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_276E14340;
      aBlock[3] = &unk_27A6F4F38;
      v113 = &v122;
      v78 = v66;
      v110 = v78;
      v111 = v69;
      v112 = v70;
      v79 = _Block_copy(aBlock);
      v81 = *MEMORY[0x277D81510];
      v80 = *(MEMORY[0x277D81510] + 8);
      v84 = objc_msgSend_attachments(dataCopy, v82, v83);
      v85 = 0;
      for (k = objc_msgSend_rangeOfString_options_range_(v78, v86, v108, 0, 0, v77); ; k = objc_msgSend_rangeOfString_options_range_(v78, v98, v108, 0, v100, v99 - v100))
      {
        v90 = v88;
        if (!v88)
        {
          break;
        }

        v91 = k;
        if (v85 >= objc_msgSend_count(v84, v88, v89))
        {
          v94 = 0;
          v97 = objc_msgSend_elementKind(0, v92, v93);
        }

        else
        {
          v94 = objc_msgSend_objectAtIndexedSubscript_(v84, v92, v85);
          ++v85;
          v97 = objc_msgSend_elementKind(v94, v95, v96);
        }

        if ((v97 & 0x1E0) == 0)
        {
          if (v91 > &v80[v81])
          {
            (v79)[2](v79, &v80[v81], v91 - &v80[v81], 1);
          }

          v79[2](v79, v91, v90, 0);
          v81 = v91;
          v80 = v90;
        }

        if (&v90[v91] <= v77)
        {
          v99 = v77;
        }

        else
        {
          v99 = &v90[v91];
        }

        if (&v90[v91] >= v77)
        {
          v100 = v77;
        }

        else
        {
          v100 = &v90[v91];
        }
      }

      if (v77 > &v80[v81])
      {
        (v79)[2](v79, &v80[v81], v77 - &v80[v81], 1);
      }

      dataCopy = v105;
      stringCopy = v106;
      v16 = v103;
      sessionCopy = v104;
      v19 = v102;
    }

    _Block_object_dispose(&v122, 8);
  }

  else
  {
    v59 = [TSWPTextReplacement alloc];
    v61 = objc_msgSend_selectionWithRange_(TSWPSelection, v60, rangeCopy.location, rangeCopy.length);
    v63 = objc_msgSend_initWithSelection_string_(v59, v62, v61, stringCopy);

    objc_msgSend_addObject_(v16, v64, v63);
  }

  objc_msgSend_sortUsingComparator_(v16, v65, &unk_2885FFCB0);

  return v16;
}

- (void)p_updateChangeTimestampForDeletedRange:(_NSRange)range actionBuilder:(TSWPStorageActionBuilder *)builder
{
  rangeCopy = range;
  if (range.length)
  {
    v6 = objc_msgSend_attributeArrayForKind_(self, a2, 15);
    if (v6)
    {
      v7 = v6;
      TSWPAttributeArray::begin(v6, &rangeCopy, &v19);
      TSWPAttributeArray::end(v7, &rangeCopy, v8, &v17);
      for (; v20 != v18; ++v20)
      {
        v9 = TSWPAttributeArray::iterator::object(&v19);

        if (v9)
        {
          v22.location = TSWPAttributeArray::rangeForAttributeIndex(v19, v20);
          location = v22.location;
          length = v22.length;
          v13 = NSIntersectionRange(v22, rangeCopy);
          if (v13.length)
          {
            v14 = v13.length >= length;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = objc_msgSend_date(MEMORY[0x277CBEAA8], v13.length, v12);
            objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v16, v15, location, length, 15, builder);
          }
        }
      }
    }
  }
}

- (void)p_handleChangeSplittingForInsertedRange:(_NSRange)range changeSession:(id)session actionBuilder:(TSWPStorageActionBuilder *)builder
{
  length = range.length;
  rangeCopy = range;
  sessionCopy = session;
  if (length)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = qword_276F9A1E0[v10];
      v14 = objc_msgSend_attributeArrayForKind_(self, v8, v13);
      v15 = v14;
      if (v14)
      {
        TSWPAttributeArray::begin(v14, &rangeCopy, &v43);
        TSWPAttributeArray::end(v15, &rangeCopy, v16, v42);
        for (i = v44; i != v42[1]; i = ++v44)
        {
          v19 = TSWPAttributeArray::iterator::object(&v43);
          if (v19)
          {
            if (objc_msgSend_p_shouldInsertionSplitChange_changeSession_(self, v18, v19, sessionCopy))
            {
              v20 = TSWPAttributeArray::rangeForAttributeIndex(v43, v44);
              v23 = v20;
              if (v20 < rangeCopy.location)
              {
                v24 = &v21[v20];
                if (&v21[v20] > rangeCopy.length + rangeCopy.location)
                {
                  v25 = objc_msgSend_context(self, v21, v22);
                  v27 = objc_msgSend_copyWithContext_(v19, v26, v25);

                  objc_msgSend_resetTextAttributeUUIDString(v27, v28, v29);
                  if (rangeCopy.length + rangeCopy.location <= v24)
                  {
                    v31 = v24;
                  }

                  else
                  {
                    v31 = rangeCopy.length + rangeCopy.location;
                  }

                  if (rangeCopy.length + rangeCopy.location >= v24)
                  {
                    objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v30, v27, v24, v31 - v24, v13, builder);
                  }

                  else
                  {
                    objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v30, v27, rangeCopy.length + rangeCopy.location, v31 - (rangeCopy.length + rangeCopy.location), v13, builder);
                  }

                  objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v32, 0, rangeCopy.location, rangeCopy.length, v13, builder);
                  v35 = objc_msgSend_context(self, v33, v34);
                  v37 = objc_msgSend_copyWithContext_(v19, v36, v35);

                  objc_msgSend_resetTextAttributeUUIDString(v37, v38, v39);
                  if (v23 <= rangeCopy.location)
                  {
                    location = rangeCopy.location;
                  }

                  else
                  {
                    location = v23;
                  }

                  if (v23 >= rangeCopy.location)
                  {
                    objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v40, v37, rangeCopy.location, location - rangeCopy.location, v13, builder);
                  }

                  else
                  {
                    objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v40, v37, v23, location - v23, v13, builder);
                  }
                }
              }
            }
          }
        }
      }

      v11 = 0;
      v10 = 1;
    }

    while ((v12 & 1) != 0);
  }
}

- (id)pencilAnnotationsInContainedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    hasDeletionInRange = objc_msgSend_hasDeletionInRange_(self, v6, location, length);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276E148FC;
    v14[3] = &unk_27A6F4F60;
    v16 = location;
    v17 = length;
    v18 = hasDeletionInRange;
    v14[4] = self;
    v9 = v7;
    v15 = v9;
    objc_msgSend_enumeratePencilAnnotationsInRange_usingBlock_(self, v10, location, length, v14);
    v11 = v15;
    v12 = v9;
  }

  return v7;
}

- (_NSRange)rangeForPencilAnnotation:(id)annotation
{
  v3 = MEMORY[0x2821F9670](self, sel_p_rangeForOverlappingField_attributeKind_, annotation);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)removePencilAnnotationsInRange:(_NSRange)range undoTransaction:(void *)transaction
{
  v4 = MEMORY[0x2821F9670](self, sel_p_removeOverlappingFieldsInRange_attributeKind_undoTransaction_, range.location);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)p_removeOverlappingFieldsInRange:(_NSRange)range attributeKind:(unint64_t)kind undoTransaction:(void *)transaction
{
  length = range.length;
  location = range.location;
  v39 = 0;
  v40 = &v39;
  v41 = 0x4012000000;
  v42 = sub_276E13444;
  v43 = nullsub_9;
  v44 = &unk_276FDE562;
  v45 = *MEMORY[0x277D81490];
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, range.location);
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_276E14C78;
  v35[3] = &unk_27A6F4F88;
  v34 = v10;
  v14 = v10;
  v36 = v14;
  v15 = v13;
  v37 = v15;
  v38 = &v39;
  objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(self, v16, kind, location, length, v35, v34);
  for (i = 0; i < objc_msgSend_count(v14, v17, v18); ++i)
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v14, v20, i);
    v23 = objc_msgSend_objectAtIndexedSubscript_(v15, v22, i);
    v26 = objc_msgSend_rangeValue(v23, v24, v25);
    v28 = v27;

    objc_msgSend_removeOverlappingField_fromRange_attributeKind_undoTransaction_(self, v29, v21, v26, v28, kind, transaction);
  }

  v30 = v40[6];
  v31 = v40[7];

  _Block_object_dispose(&v39, 8);
  v32 = v30;
  v33 = v31;
  result.length = v33;
  result.location = v32;
  return result;
}

- (_NSRange)p_rangeForOverlappingField:(id)field attributeKind:(unint64_t)kind
{
  v6 = MEMORY[0x277D81490];
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  v9 = objc_msgSend_attributeRangeForOverlappingField_attributeKind_(self, a2, field);
  if (v9 != *v6 || v10 != v6[1])
  {
    v7 = objc_msgSend_charRangeForAttributeRange_attributeKind_(self, v10, v9, v10, kind);
    v8 = v12;
  }

  v13 = v7;
  v14 = v8;
  result.length = v14;
  result.location = v13;
  return result;
}

- (BOOL)p_shouldInsertionSplitChange:(id)change changeSession:(id)session
{
  changeCopy = change;
  sessionCopy = session;
  if (sessionCopy)
  {
    v8 = objc_msgSend_canMergeWithKind_session_(changeCopy, v6, 1, sessionCopy) ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

+ (TSWPAttributeArray)createAttributeArrayForKind:(unint64_t)kind actionState:(void *)state
{
  EmptyAttributeArrayForKind = objc_msgSend_createEmptyAttributeArrayForKind_(TSWPStorage, a2, kind);
  v8 = EmptyAttributeArrayForKind;
  if (kind > 0x16)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSWPStorage(ActionBuilderAndActionState) createAttributeArrayForKind:actionState:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_action.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 68, 0, "createAttributeArrayForKind: bad kind.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  else if (((1 << kind) & 0x3BF0C8) != 0)
  {
    (*(*EmptyAttributeArrayForKind + 56))(EmptyAttributeArrayForKind, 0, 0, 0, 0, state);
  }

  return v8;
}

- (TSWPAttributeArray)attributeArrayForKind:(unint64_t)kind withCreate:(BOOL)create fromUndo:(BOOL)undo actionState:(void *)state
{
  if (kind == -1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorage(ActionBuilderAndActionState) attributeArrayForKind:withCreate:fromUndo:actionState:]", create, undo, state);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_action.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 78, 0, "Illegal attribute kind.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  else
  {
    if (self->_attributesTable[kind])
    {
      v8 = 1;
    }

    else
    {
      v8 = !create;
    }

    if (!v8)
    {
      undoCopy = undo;
      v11 = objc_opt_class();
      if (undoCopy)
      {
        EmptyAttributeArrayForKind = objc_msgSend_createEmptyAttributeArrayForKind_(v11, v12, kind);
      }

      else
      {
        EmptyAttributeArrayForKind = objc_msgSend_createAttributeArrayForKind_actionState_(v11, v12, kind, state);
      }

      self->_attributesTable[kind] = EmptyAttributeArrayForKind;
      if (EmptyAttributeArrayForKind)
      {
        TSWPAttributeArray::setStorage(EmptyAttributeArrayForKind, self);
      }
    }
  }

  return self->_attributesTable[kind];
}

- (void)compressAttributeArrayKind:(unint64_t)kind actionState:(void *)state
{
  attributesTable = self->_attributesTable;
  v5 = self->_attributesTable[kind];
  if (v5)
  {
    (*(v5->var0 + 6))(self->_attributesTable[kind], state);
    if ((*(v5->var0 + 12))(v5))
    {
      (*(v5->var0 + 1))(v5);
      attributesTable[kind] = 0;
    }

    else
    {

      TSWPAttributeArray::shrinkAllocationIfNecessary(v5);
    }
  }
}

- (void)compress:(void *)compress
{
  for (i = 0; i != 23; ++i)
  {
    objc_msgSend_compressAttributeArrayKind_actionState_(self, a2, i, compress);
  }
}

- (void)setLanguage:(id)language forCharRange:(_NSRange)range actionBuilder:(void *)builder
{
  length = range.length;
  location = range.location;
  languageCopy = language;
  v10 = objc_msgSend_attributeArrayForKind_(self, v9, 13);
  v12 = v10;
  if (!v10)
  {
    v14 = languageCopy != 0;
    if (!builder)
    {
LABEL_19:
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(ActionBuilderAndActionState) setLanguage:forCharRange:actionBuilder:]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_action.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 133, 0, "No action builder supplied.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
      goto LABEL_20;
    }

LABEL_6:
    if (!v14)
    {
      goto LABEL_20;
    }

    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location);
  if (v13 != *(v12 + 6))
  {
    v34 = TSWPAttributeArray::objectForAttributeIndex(v12, v13);
    v35 = TSWPAttributeArray::rangeForAttributeIndex(v12, v13);
    if (v35 <= location && &v36[v35] >= location + length)
    {
      if (v34 == languageCopy || (v14 = 1, languageCopy) && v34 && objc_msgSend_isEqualToString_(v34, v36, languageCopy))
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    if (!builder)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  if (!builder)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v15 && !sub_276EFA484(v15))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(ActionBuilderAndActionState) setLanguage:forCharRange:actionBuilder:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_action.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 138, 0, "Language array needs repair prior to mutation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

LABEL_11:
  objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v11, languageCopy, location, length, 13, builder);
  v24 = objc_msgSend_attributeArrayForKind_(self, v23, 13);
  if (v24)
  {
    if (v25)
    {
      if (!sub_276EFA484(v25))
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPStorage(ActionBuilderAndActionState) setLanguage:forCharRange:actionBuilder:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_action.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 143, 0, "Language array needs repair after mutation");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      }
    }
  }

LABEL_20:
}

- (void)setDictationAndAutocorrection:(id)autocorrection forCharRange:(_NSRange)range actionBuilder:(void *)builder
{
  length = range.length;
  location = range.location;
  autocorrectionCopy = autocorrection;
  v10 = objc_msgSend_attributeArrayForKind_(self, v9, 14);
  v12 = v10;
  if (v10)
  {
    v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location);
    if (v13 == *(v12 + 6))
    {
      if (!builder)
      {
        goto LABEL_12;
      }

LABEL_7:
      objc_msgSend_applyObject_toCharRange_forKind_actionBuilder_(self, v11, autocorrectionCopy, location, length, 14, builder);
      goto LABEL_13;
    }

    v15 = TSWPAttributeArray::objectForAttributeIndex(v12, v13);
    v16 = TSWPAttributeArray::rangeForAttributeIndex(v12, v13);
    if (v16 <= location && &v17[v16] >= location + length)
    {
      if (v15 == autocorrectionCopy || (v14 = 1, autocorrectionCopy) && v15 && objc_msgSend_isEqualToString_(v15, v17, autocorrectionCopy))
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }

    if (!builder)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v14 = autocorrectionCopy != 0;
  if (builder)
  {
    goto LABEL_6;
  }

LABEL_12:
  v18 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPStorage(ActionBuilderAndActionState) setDictationAndAutocorrection:forCharRange:actionBuilder:]");
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorage_action.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 165, 0, "No action builder supplied.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
LABEL_13:
}

@end