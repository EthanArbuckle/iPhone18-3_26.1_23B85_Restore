@interface RTIDocumentState
+ (RTIDocumentState)documentStateWithRequest:(id)a3;
+ (void)_enumerateDocumentRects:(id)a3 options:(unint64_t)a4 block:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CGRect)caretRectInWindow;
- (CGRect)clientFrameInEntitySpace;
- (CGRect)clientFrameInWindow;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3 actualRange:(_NSRange *)a4;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4 isVerticalOut:(BOOL *)a5;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4 isVerticalOut:(BOOL *)a5 actualRange:(_NSRange *)a6;
- (CGRect)firstSelectionRectInEntitySpace;
- (CGRect)firstSelectionRectInWindow;
- (CGSize)displayZoom;
- (RTIDocumentState)init;
- (RTIDocumentState)initWithCoder:(id)a3;
- (RTIRange)deltaRangeForSelection:(_NSRange)a3;
- (_NSRange)deltaForSelectionRange:(_NSRange)a3;
- (_NSRange)documentStateRangeForSelectionRange:(_NSRange)a3;
- (_NSRange)markedTextRange;
- (_NSRange)selectedTextRange;
- (_NSRange)selectionRangeForDocumentStateRange:(_NSRange)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)documentStateByMergingInDocumentState:(id)a3 mergeResultOut:(unint64_t *)a4;
- (id)rectsForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4;
- (unint64_t)characterIndexForPoint:(CGPoint)a3;
- (unint64_t)mergeInDocumentState:(id)a3;
- (void)_enumerateDocumentRectsWithOptions:(unint64_t)a3 block:(id)a4;
- (void)addTextRect:(CGRect)a3 forCharacterRange:(_NSRange)a4 granularity:(int64_t)a5 isVertical:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateRectsWithOptions:(unint64_t)a3 range:(_NSRange)a4 granularity:(int64_t)a5 block:(id)a6;
- (void)setAttributedDocumentState:(id)a3;
- (void)setDocumentState:(id)a3;
- (void)setSelectedTextRange:(_NSRange)a3;
@end

@implementation RTIDocumentState

- (RTIDocumentState)init
{
  v17.receiver = self;
  v17.super_class = RTIDocumentState;
  v2 = [(RTIDocumentState *)&v17 init];
  v3 = v2;
  if (v2)
  {
    request = v2->_request;
    v2->_request = 0;

    documentState = v3->_documentState;
    v3->_documentState = 0;

    attributedDocumentState = v3->_attributedDocumentState;
    v3->_attributedDocumentState = 0;

    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 16);
    v3->_caretRectInWindow.size = v8;
    v3->_firstSelectionRectInWindow.origin = v7;
    v3->_firstSelectionRectInWindow.size = v8;
    v3->_clientFrameInWindow.origin = v7;
    v3->_clientFrameInWindow.size = v8;
    v3->_firstSelectionRectInEntitySpace.origin = v7;
    v3->_firstSelectionRectInEntitySpace.size = v8;
    v3->_clientFrameInEntitySpace.origin = v7;
    v3->_clientFrameInEntitySpace.size = v8;
    __asm { FMOV            V1.2D, #1.0 }

    v3->_displayZoom = _Q1;
    v3->_caretRectInWindow.origin = v7;
    documentRects = v3->__documentRects;
    v3->__documentRects = 0;

    textCheckingAnnotatedString = v3->_textCheckingAnnotatedString;
    v3->_textCheckingAnnotatedString = 0;

    v3->_originatedFromSource = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(RTIDocumentState);
  if (v5)
  {
    request = self->_request;
    if (request)
    {
      v7 = [(RTIDocumentRequest *)request copy];
      v8 = v5->_request;
      v5->_request = v7;
    }

    documentState = self->_documentState;
    if (documentState)
    {
      v10 = [(TIDocumentState *)documentState copyWithZone:a3];
      v11 = v5->_documentState;
      v5->_documentState = v10;
    }

    attributedDocumentState = self->_attributedDocumentState;
    if (attributedDocumentState)
    {
      v13 = [(TIAttributedDocumentState *)attributedDocumentState copyWithZone:a3];
      v14 = v5->_attributedDocumentState;
      v5->_attributedDocumentState = v13;
    }

    if (self->_hasText)
    {
      v5->_hasText = 1;
    }

    documentRects = self->__documentRects;
    if (documentRects)
    {
      v16 = [(NSMutableData *)documentRects copy];
      v17 = v5->__documentRects;
      v5->__documentRects = v16;
    }

    textCheckingAnnotatedString = self->_textCheckingAnnotatedString;
    if (textCheckingAnnotatedString)
    {
      v19 = [(NSAttributedString *)textCheckingAnnotatedString copy];
      v20 = v5->_textCheckingAnnotatedString;
      v5->_textCheckingAnnotatedString = v19;
    }

    autocorrectBubbleStyling = self->_autocorrectBubbleStyling;
    if (autocorrectBubbleStyling)
    {
      v22 = [(RTITextStyling *)autocorrectBubbleStyling copy];
      v23 = v5->_autocorrectBubbleStyling;
      v5->_autocorrectBubbleStyling = v22;
    }

    autocorrectTextColor = self->_autocorrectTextColor;
    if (autocorrectTextColor)
    {
      v25 = [(RTIColor *)autocorrectTextColor copy];
      v26 = v5->_autocorrectTextColor;
      v5->_autocorrectTextColor = v25;
    }

    autocorrectTextBackgroundColor = self->_autocorrectTextBackgroundColor;
    if (autocorrectTextBackgroundColor)
    {
      v28 = [(RTIColor *)autocorrectTextBackgroundColor copy];
      v29 = v5->_autocorrectTextBackgroundColor;
      v5->_autocorrectTextBackgroundColor = v28;
    }

    insertionPointColor = self->_insertionPointColor;
    if (insertionPointColor)
    {
      v31 = [(RTIColor *)insertionPointColor copy];
      v32 = v5->_insertionPointColor;
      v5->_insertionPointColor = v31;
    }

    v5->_updateMask.integerValue = self->_updateMask.integerValue;
    size = self->_caretRectInWindow.size;
    v5->_caretRectInWindow.origin = self->_caretRectInWindow.origin;
    v5->_caretRectInWindow.size = size;
    v34 = self->_firstSelectionRectInWindow.size;
    v5->_firstSelectionRectInWindow.origin = self->_firstSelectionRectInWindow.origin;
    v5->_firstSelectionRectInWindow.size = v34;
    v35 = self->_clientFrameInWindow.size;
    v5->_clientFrameInWindow.origin = self->_clientFrameInWindow.origin;
    v5->_clientFrameInWindow.size = v35;
    v36 = self->_firstSelectionRectInEntitySpace.size;
    v5->_firstSelectionRectInEntitySpace.origin = self->_firstSelectionRectInEntitySpace.origin;
    v5->_firstSelectionRectInEntitySpace.size = v36;
    v37 = self->_clientFrameInEntitySpace.size;
    v5->_clientFrameInEntitySpace.origin = self->_clientFrameInEntitySpace.origin;
    v5->_clientFrameInEntitySpace.size = v37;
    v5->_displayZoom = self->_displayZoom;
    v5->_scrolling = self->_scrolling;
    v5->_originatedFromSource = self->_originatedFromSource;
    v5->_canSuggestSupplementalItemsForCurrentSelection = self->_canSuggestSupplementalItemsForCurrentSelection;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = a3;
  if (([v23 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [v23 encodeInt32:self->_updateMask.integerValue forKey:@"updateMask"];
  request = self->_request;
  if (request)
  {
    [v23 encodeObject:request forKey:@"docReq"];
  }

  documentState = self->_documentState;
  if (documentState)
  {
    [v23 encodeObject:documentState forKey:@"docSt"];
  }

  attributedDocumentState = self->_attributedDocumentState;
  if (attributedDocumentState)
  {
    v7 = [(TIAttributedDocumentState *)attributedDocumentState documentStateWithAttributeIterator:&__block_literal_global_0];
    [v23 encodeObject:v7 forKey:@"attrDocSt"];
  }

  if (self->_hasText)
  {
    [v23 encodeBool:1 forKey:@"docHasText"];
  }

  if (!CGRectIsNull(self->_caretRectInWindow))
  {
    v8 = [MEMORY[0x1E696B098] valueWithRect:{self->_caretRectInWindow.origin.x, self->_caretRectInWindow.origin.y, self->_caretRectInWindow.size.width, self->_caretRectInWindow.size.height}];
    [v23 encodeObject:v8 forKey:@"caretRect"];
  }

  if (!CGRectIsNull(self->_firstSelectionRectInWindow))
  {
    v9 = [MEMORY[0x1E696B098] valueWithRect:{self->_firstSelectionRectInWindow.origin.x, self->_firstSelectionRectInWindow.origin.y, self->_firstSelectionRectInWindow.size.width, self->_firstSelectionRectInWindow.size.height}];
    [v23 encodeObject:v9 forKey:@"firstRect"];
  }

  if (!CGRectIsNull(self->_clientFrameInWindow))
  {
    v10 = [MEMORY[0x1E696B098] valueWithRect:{self->_clientFrameInWindow.origin.x, self->_clientFrameInWindow.origin.y, self->_clientFrameInWindow.size.width, self->_clientFrameInWindow.size.height}];
    [v23 encodeObject:v10 forKey:@"clientFrame"];
  }

  if (!CGRectIsNull(self->_firstSelectionRectInEntitySpace))
  {
    v11 = [MEMORY[0x1E696B098] valueWithRect:{self->_firstSelectionRectInEntitySpace.origin.x, self->_firstSelectionRectInEntitySpace.origin.y, self->_firstSelectionRectInEntitySpace.size.width, self->_firstSelectionRectInEntitySpace.size.height}];
    [v23 encodeObject:v11 forKey:@"firstRectEntitySpace"];
  }

  if (!CGRectIsNull(self->_clientFrameInEntitySpace))
  {
    v12 = [MEMORY[0x1E696B098] valueWithRect:{self->_clientFrameInEntitySpace.origin.x, self->_clientFrameInEntitySpace.origin.y, self->_clientFrameInEntitySpace.size.width, self->_clientFrameInEntitySpace.size.height}];
    [v23 encodeObject:v12 forKey:@"clientFrameEntitySpace"];
  }

  if (self->_displayZoom.width != 1.0 || self->_displayZoom.height != 1.0)
  {
    v13 = [MEMORY[0x1E696B098] valueWithSize:?];
    [v23 encodeObject:v13 forKey:@"displayZoom"];
  }

  if (self->_scrolling)
  {
    [v23 encodeBool:1 forKey:@"scrolling"];
  }

  documentRects = self->__documentRects;
  if (documentRects)
  {
    [v23 encodeObject:documentRects forKey:@"docRects"];
  }

  textCheckingAnnotatedString = self->_textCheckingAnnotatedString;
  if (textCheckingAnnotatedString)
  {
    v16 = +[RTIUtilities _textAnnotationAttributes];
    v17 = [(NSAttributedString *)textCheckingAnnotatedString _ti_attributedStringByKeepingAttributes:v16];

    [v23 encodeObject:v17 forKey:@"textCheckingAnnotatedString"];
  }

  autocorrectBubbleStyling = self->_autocorrectBubbleStyling;
  if (autocorrectBubbleStyling)
  {
    [v23 encodeObject:autocorrectBubbleStyling forKey:@"acBubbleStyling"];
  }

  autocorrectTextColor = self->_autocorrectTextColor;
  v20 = v23;
  if (autocorrectTextColor)
  {
    [v23 encodeObject:autocorrectTextColor forKey:@"acTextColor"];
    v20 = v23;
  }

  autocorrectTextBackgroundColor = self->_autocorrectTextBackgroundColor;
  if (autocorrectTextBackgroundColor)
  {
    [v23 encodeObject:autocorrectTextBackgroundColor forKey:@"acTextBGColor"];
    v20 = v23;
  }

  insertionPointColor = self->_insertionPointColor;
  if (insertionPointColor)
  {
    [v23 encodeObject:insertionPointColor forKey:@"insertionPointColor"];
    v20 = v23;
  }

  [v20 encodeBool:self->_originatedFromSource forKey:@"originatedFromSource"];
  if (self->_canSuggestSupplementalItemsForCurrentSelection)
  {
    [v23 encodeBool:1 forKey:@"supplementalLexiconForSelection"];
  }
}

id __36__RTIDocumentState_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v3 = [RTIUtilities _attributeToReplaceForCoding:v2];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__RTIDocumentState_encodeWithCoder___block_invoke_2;
  v7[3] = &unk_1E7514598;
  v7[4] = &v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  if (*(v9 + 24))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __36__RTIDocumentState_encodeWithCoder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (![v6 conformsToProtocol:&unk_1F0DA4E30] || (objc_msgSend(objc_opt_class(), "supportsSecureCoding") & 1) == 0)
  {
    v7 = RTILogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __36__RTIDocumentState_encodeWithCoder___block_invoke_2_cold_1(v6, v7);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (RTIDocumentState)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v69.receiver = self;
  v69.super_class = RTIDocumentState;
  v5 = [(RTIDocumentState *)&v69 init];
  if (v5)
  {
    v5->_updateMask.integerValue = [v4 decodeInt32ForKey:@"updateMask"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"docReq"];
    request = v5->_request;
    v5->_request = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"docSt"];
    documentState = v5->_documentState;
    v5->_documentState = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attrDocSt"];
    attributedDocumentState = v5->_attributedDocumentState;
    v5->_attributedDocumentState = v10;

    v12 = v5->_attributedDocumentState;
    if (v12)
    {
      v13 = [(TIAttributedDocumentState *)v12 documentStateWithAttributeIterator:&__block_literal_global_82];
      v14 = v5->_attributedDocumentState;
      v5->_attributedDocumentState = v13;
    }

    v5->_hasText = [v4 decodeBoolForKey:@"docHasText"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caretRect"];
    v16 = v15;
    if (v15)
    {
      [v15 rectValue];
      v5->_caretRectInWindow.origin.x = v17;
      v5->_caretRectInWindow.origin.y = v18;
      v5->_caretRectInWindow.size.width = v19;
      v5->_caretRectInWindow.size.height = v20;
    }

    else
    {
      v21 = *(MEMORY[0x1E695F050] + 16);
      v5->_caretRectInWindow.origin = *MEMORY[0x1E695F050];
      v5->_caretRectInWindow.size = v21;
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstRect"];
    v23 = v22;
    if (v22)
    {
      [v22 rectValue];
      v5->_firstSelectionRectInWindow.origin.x = v24;
      v5->_firstSelectionRectInWindow.origin.y = v25;
      v5->_firstSelectionRectInWindow.size.width = v26;
      v5->_firstSelectionRectInWindow.size.height = v27;
    }

    else
    {
      v28 = *(MEMORY[0x1E695F050] + 16);
      v5->_firstSelectionRectInWindow.origin = *MEMORY[0x1E695F050];
      v5->_firstSelectionRectInWindow.size = v28;
    }

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientFrame"];
    v30 = v29;
    if (v29)
    {
      [v29 rectValue];
      v5->_clientFrameInWindow.origin.x = v31;
      v5->_clientFrameInWindow.origin.y = v32;
      v5->_clientFrameInWindow.size.width = v33;
      v5->_clientFrameInWindow.size.height = v34;
    }

    else
    {
      v35 = *(MEMORY[0x1E695F050] + 16);
      v5->_clientFrameInWindow.origin = *MEMORY[0x1E695F050];
      v5->_clientFrameInWindow.size = v35;
    }

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstRectEntitySpace"];
    v37 = v36;
    if (v36)
    {
      [v36 rectValue];
      v5->_firstSelectionRectInEntitySpace.origin.x = v38;
      v5->_firstSelectionRectInEntitySpace.origin.y = v39;
      v5->_firstSelectionRectInEntitySpace.size.width = v40;
      v5->_firstSelectionRectInEntitySpace.size.height = v41;
    }

    else
    {
      v42 = *(MEMORY[0x1E695F050] + 16);
      v5->_firstSelectionRectInEntitySpace.origin = *MEMORY[0x1E695F050];
      v5->_firstSelectionRectInEntitySpace.size = v42;
    }

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientFrameEntitySpace"];
    v44 = v43;
    if (v43)
    {
      [v43 rectValue];
      v5->_clientFrameInEntitySpace.origin.x = v45;
      v5->_clientFrameInEntitySpace.origin.y = v46;
      v5->_clientFrameInEntitySpace.size.width = v47;
      v5->_clientFrameInEntitySpace.size.height = v48;
    }

    else
    {
      v49 = *(MEMORY[0x1E695F050] + 16);
      v5->_clientFrameInEntitySpace.origin = *MEMORY[0x1E695F050];
      v5->_clientFrameInEntitySpace.size = v49;
    }

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayZoom"];
    v51 = v50;
    if (v50)
    {
      [v50 sizeValue];
    }

    else
    {
      v52 = 1.0;
      v53 = 1.0;
    }

    v5->_displayZoom.width = v52;
    v5->_displayZoom.height = v53;
    v5->_scrolling = [v4 decodeBoolForKey:@"scrolling"];
    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"docRects"];
    v55 = [v54 mutableCopy];
    documentRects = v5->__documentRects;
    v5->__documentRects = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotatedString"];
    textCheckingAnnotatedString = v5->_textCheckingAnnotatedString;
    v5->_textCheckingAnnotatedString = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acBubbleStyling"];
    autocorrectBubbleStyling = v5->_autocorrectBubbleStyling;
    v5->_autocorrectBubbleStyling = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acTextColor"];
    autocorrectTextColor = v5->_autocorrectTextColor;
    v5->_autocorrectTextColor = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acTextBGColor"];
    autocorrectTextBackgroundColor = v5->_autocorrectTextBackgroundColor;
    v5->_autocorrectTextBackgroundColor = v63;

    v5->_originatedFromSource = [v4 decodeBoolForKey:@"originatedFromSource"];
    v65 = [v4 decodeBoolForKey:@"supplementalLexiconForSelection"];
    v5->_canSuggestSupplementalItemsForCurrentSelection = v65;
    v5->_clearCanSuggestOnNextDocumentState = v65;
    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insertionPointColor"];
    insertionPointColor = v5->_insertionPointColor;
    v5->_insertionPointColor = v66;
  }

  return v5;
}

void *__34__RTIDocumentState_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [RTIUtilities _attributeToReplaceForDecoding:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

+ (RTIDocumentState)documentStateWithRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[3];
  v5[3] = v4;

  return v5;
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = RTIDocumentState;
  v3 = [(RTIDocumentState *)&v15 description];
  v4 = [v3 mutableCopy];

  if (self->_request)
  {
    [v4 appendFormat:@"; request = %@", self->_request];
  }

  if (self->_documentState)
  {
    [v4 appendFormat:@"; documentState = %@", self->_documentState];
  }

  if (self->_attributedDocumentState)
  {
    [v4 appendFormat:@"; attributedDocumentState = %@", self->_attributedDocumentState];
  }

  if (self->_hasText)
  {
    [v4 appendFormat:@"; hasText = YES"];
  }

  if (!CGRectIsNull(self->_caretRectInWindow))
  {
    v5 = _RTI_NSStringFromCGRect(self->_caretRectInWindow.origin.x, self->_caretRectInWindow.origin.y, self->_caretRectInWindow.size.width, self->_caretRectInWindow.size.height);
    [v4 appendFormat:@"; caretRectInWindow = %@", v5];
  }

  if (!CGRectIsNull(self->_firstSelectionRectInWindow))
  {
    v6 = _RTI_NSStringFromCGRect(self->_firstSelectionRectInWindow.origin.x, self->_firstSelectionRectInWindow.origin.y, self->_firstSelectionRectInWindow.size.width, self->_firstSelectionRectInWindow.size.height);
    [v4 appendFormat:@"; firstSelectionRectInWindow = %@", v6];
  }

  if (!CGRectIsNull(self->_clientFrameInWindow))
  {
    v7 = _RTI_NSStringFromCGRect(self->_clientFrameInWindow.origin.x, self->_clientFrameInWindow.origin.y, self->_clientFrameInWindow.size.width, self->_clientFrameInWindow.size.height);
    [v4 appendFormat:@"; clientFrameInWindow = %@", v7];
  }

  if (!CGRectIsNull(self->_firstSelectionRectInEntitySpace))
  {
    v8 = _RTI_NSStringFromCGRect(self->_firstSelectionRectInEntitySpace.origin.x, self->_firstSelectionRectInEntitySpace.origin.y, self->_firstSelectionRectInEntitySpace.size.width, self->_firstSelectionRectInEntitySpace.size.height);
    [v4 appendFormat:@"; firstSelectionRectInEntitySpace = %@", v8];
  }

  if (!CGRectIsNull(self->_clientFrameInEntitySpace))
  {
    v9 = _RTI_NSStringFromCGRect(self->_clientFrameInEntitySpace.origin.x, self->_clientFrameInEntitySpace.origin.y, self->_clientFrameInEntitySpace.size.width, self->_clientFrameInEntitySpace.size.height);
    [v4 appendFormat:@"; clientFrameInEntitySpace = %@", v9];
  }

  width = self->_displayZoom.width;
  height = self->_displayZoom.height;
  if (width != 1.0 || height != 1.0)
  {
    v12 = _RTI_NSStringFromCGSize(width, height);
    [v4 appendFormat:@"; displayZoom = %@", v12];
  }

  if (self->_scrolling)
  {
    [v4 appendFormat:@"; scrolling"];
  }

  documentRects = self->__documentRects;
  if (documentRects)
  {
    [v4 appendFormat:@"; documentRects = %lu rects", -[NSMutableData length](documentRects, "length") >> 5];
  }

  if (self->_textCheckingAnnotatedString)
  {
    [v4 appendFormat:@"; textCheckingAnnotatedString = %p", self->_textCheckingAnnotatedString];
  }

  if (self->_autocorrectBubbleStyling)
  {
    [v4 appendFormat:@"; autocorrectBubbleStyling = %@", self->_autocorrectBubbleStyling];
  }

  if (self->_autocorrectTextColor)
  {
    [v4 appendFormat:@"; autocorrectTextColor = %@", self->_autocorrectTextColor];
  }

  if (self->_autocorrectTextBackgroundColor)
  {
    [v4 appendFormat:@"; autocorrectTextBackgroundColor = %@", self->_autocorrectTextBackgroundColor];
  }

  if (self->_originatedFromSource)
  {
    [v4 appendString:@"; originatedFromSource = YES"];
  }

  if (self->_canSuggestSupplementalItemsForCurrentSelection)
  {
    [v4 appendString:@"; canSuggestSupplementalItemsForCurrentSelection = YES"];
  }

  if (self->_insertionPointColor)
  {
    [v4 appendFormat:@"; insertionPointColor = %@", self->_insertionPointColor];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIDocumentState *)self request];
      v7 = [(RTIDocumentState *)v5 request];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(RTIDocumentState *)self request];
        v10 = [(RTIDocumentState *)v5 request];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v13 = [(RTIDocumentState *)self documentState];
      v14 = [(RTIDocumentState *)v5 documentState];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(RTIDocumentState *)self documentState];
        v17 = [(RTIDocumentState *)v5 documentState];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_47;
        }
      }

      v19 = [(RTIDocumentState *)self attributedDocumentState];
      v20 = [(RTIDocumentState *)v5 attributedDocumentState];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(RTIDocumentState *)self attributedDocumentState];
        v23 = [(RTIDocumentState *)v5 attributedDocumentState];
        v24 = [v22 isEqual:v23];

        if (!v24)
        {
          goto LABEL_47;
        }
      }

      v25 = [(RTIDocumentState *)self hasText];
      if (v25 == [(RTIDocumentState *)v5 hasText])
      {
        [(RTIDocumentState *)self caretRectInWindow];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        [(RTIDocumentState *)v5 caretRectInWindow];
        v122.origin.x = v34;
        v122.origin.y = v35;
        v122.size.width = v36;
        v122.size.height = v37;
        v118.origin.x = v27;
        v118.origin.y = v29;
        v118.size.width = v31;
        v118.size.height = v33;
        if (CGRectEqualToRect(v118, v122))
        {
          [(RTIDocumentState *)self firstSelectionRectInWindow];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          [(RTIDocumentState *)v5 firstSelectionRectInWindow];
          v123.origin.x = v46;
          v123.origin.y = v47;
          v123.size.width = v48;
          v123.size.height = v49;
          v119.origin.x = v39;
          v119.origin.y = v41;
          v119.size.width = v43;
          v119.size.height = v45;
          if (CGRectEqualToRect(v119, v123))
          {
            [(RTIDocumentState *)self clientFrameInWindow];
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v57 = v56;
            [(RTIDocumentState *)v5 clientFrameInWindow];
            v124.origin.x = v58;
            v124.origin.y = v59;
            v124.size.width = v60;
            v124.size.height = v61;
            v120.origin.x = v51;
            v120.origin.y = v53;
            v120.size.width = v55;
            v120.size.height = v57;
            if (CGRectEqualToRect(v120, v124))
            {
              [(RTIDocumentState *)self clientFrameInEntitySpace];
              v63 = v62;
              v65 = v64;
              v67 = v66;
              v69 = v68;
              [(RTIDocumentState *)v5 clientFrameInEntitySpace];
              v125.origin.x = v70;
              v125.origin.y = v71;
              v125.size.width = v72;
              v125.size.height = v73;
              v121.origin.x = v63;
              v121.origin.y = v65;
              v121.size.width = v67;
              v121.size.height = v69;
              if (CGRectEqualToRect(v121, v125))
              {
                [(RTIDocumentState *)self displayZoom];
                v75 = v74;
                v77 = v76;
                [(RTIDocumentState *)v5 displayZoom];
                v12 = 0;
                if (v75 != v79 || v77 != v78)
                {
                  goto LABEL_48;
                }

                v80 = [(RTIDocumentState *)self scrolling];
                if (v80 == [(RTIDocumentState *)v5 scrolling])
                {
                  v81 = [(RTIDocumentState *)self _documentRects];
                  v82 = [(RTIDocumentState *)v5 _documentRects];
                  v83 = v82;
                  if (v81 == v82)
                  {
                  }

                  else
                  {
                    v84 = [(RTIDocumentState *)self _documentRects];
                    v85 = [(RTIDocumentState *)v5 _documentRects];
                    v86 = [v84 isEqual:v85];

                    if (!v86)
                    {
                      goto LABEL_47;
                    }
                  }

                  v87 = [(RTIDocumentState *)self textCheckingAnnotatedString];
                  v88 = [(RTIDocumentState *)v5 textCheckingAnnotatedString];
                  v89 = v88;
                  if (v87 == v88)
                  {
                  }

                  else
                  {
                    v90 = [(RTIDocumentState *)self textCheckingAnnotatedString];
                    v91 = [(RTIDocumentState *)v5 textCheckingAnnotatedString];
                    v92 = [v90 isEqual:v91];

                    if (!v92)
                    {
                      goto LABEL_47;
                    }
                  }

                  v93 = [(RTIDocumentState *)self autocorrectBubbleStyling];
                  v94 = [(RTIDocumentState *)v5 autocorrectBubbleStyling];
                  v95 = v94;
                  if (v93 == v94)
                  {
                  }

                  else
                  {
                    v96 = [(RTIDocumentState *)self autocorrectBubbleStyling];
                    v97 = [(RTIDocumentState *)v5 autocorrectBubbleStyling];
                    v98 = [v96 isEqual:v97];

                    if (!v98)
                    {
                      goto LABEL_47;
                    }
                  }

                  v99 = [(RTIDocumentState *)self autocorrectTextColor];
                  v100 = [(RTIDocumentState *)v5 autocorrectTextColor];
                  v101 = v100;
                  if (v99 == v100)
                  {
                  }

                  else
                  {
                    v102 = [(RTIDocumentState *)self autocorrectTextColor];
                    v103 = [(RTIDocumentState *)v5 autocorrectTextColor];
                    v104 = [v102 isEqual:v103];

                    if (!v104)
                    {
                      goto LABEL_47;
                    }
                  }

                  v105 = [(RTIDocumentState *)self autocorrectTextBackgroundColor];
                  v106 = [(RTIDocumentState *)v5 autocorrectTextBackgroundColor];
                  v107 = v106;
                  if (v105 == v106)
                  {
                  }

                  else
                  {
                    v108 = [(RTIDocumentState *)self autocorrectTextBackgroundColor];
                    v109 = [(RTIDocumentState *)v5 autocorrectTextBackgroundColor];
                    v110 = [v108 isEqual:v109];

                    if (!v110)
                    {
                      goto LABEL_47;
                    }
                  }

                  v111 = [(RTIDocumentState *)self originatedFromSource];
                  if (v111 == [(RTIDocumentState *)v5 originatedFromSource])
                  {
                    v112 = [(RTIDocumentState *)self canSuggestSupplementalItemsForCurrentSelection];
                    if (v112 == [(RTIDocumentState *)v5 canSuggestSupplementalItemsForCurrentSelection])
                    {
                      v114 = [(RTIDocumentState *)self insertionPointColor];
                      v115 = [(RTIDocumentState *)v5 insertionPointColor];
                      if (v114 == v115)
                      {
                        v12 = 1;
                      }

                      else
                      {
                        v116 = [(RTIDocumentState *)self insertionPointColor];
                        v117 = [(RTIDocumentState *)v5 insertionPointColor];
                        v12 = [v116 isEqual:v117];
                      }

                      goto LABEL_48;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_47:
      v12 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v12 = 0;
  }

LABEL_49:

  return v12;
}

- (void)setDocumentState:(id)a3
{
  objc_storeStrong(&self->_documentState, a3);
  if (self->_clearCanSuggestOnNextDocumentState)
  {
    self->_canSuggestSupplementalItemsForCurrentSelection = 0;
    self->_clearCanSuggestOnNextDocumentState = 0;
  }
}

- (void)setAttributedDocumentState:(id)a3
{
  objc_storeStrong(&self->_attributedDocumentState, a3);
  if (self->_clearCanSuggestOnNextDocumentState)
  {
    self->_canSuggestSupplementalItemsForCurrentSelection = 0;
    self->_clearCanSuggestOnNextDocumentState = 0;
  }
}

- (_NSRange)selectionRangeForDocumentStateRange:(_NSRange)a3
{
  length = a3.length;
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    location = a3.location;
    documentState = self->_documentState;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TIDocumentState *)self->_documentState truncatedRangeInSelectedText];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v7;
        v10 = v8;
        v11 = [(TIDocumentState *)self->_documentState contextBeforeInput];
        v12 = [v11 length] + v9;

        if (v12 < location || v12 - location >= length)
        {
          if (v12 < location)
          {
            v14 = v10;
          }

          else
          {
            v14 = 0;
          }

          location += v14;
        }

        else
        {
          length += v10;
        }
      }
    }
  }

  v15 = location;
  v16 = length;
  result.length = v16;
  result.location = v15;
  return result;
}

- (_NSRange)documentStateRangeForSelectionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    documentState = self->_documentState;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(TIDocumentState *)self->_documentState truncatedRangeInSelectedText];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v7 + v8 >= length)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        length -= v9;
      }
    }
  }

  v10 = location;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)selectedTextRange
{
  v3 = [(TIDocumentState *)self->_documentState contextBeforeInput];
  v4 = [v3 length];

  v5 = [(TIDocumentState *)self->_documentState selectedText];
  v6 = [v5 length];

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)setSelectedTextRange:(_NSRange)a3
{
  documentState = self->_documentState;
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(TIDocumentState *)documentState documentStateAfterCollapsingSelection:0x7FFFFFFFFFFFFFFFLL];
    v6 = self->_documentState;
    self->_documentState = v5;
  }

  else
  {
    length = a3.length;
    location = a3.location;
    v9 = [(TIDocumentState *)documentState contextBeforeInput];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F0D9AA78;
    }

    v26 = v11;

    v12 = [(TIDocumentState *)self->_documentState selectedText];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1F0D9AA78;
    }

    v15 = v14;

    v16 = [(TIDocumentState *)self->_documentState contextAfterInput];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_1F0D9AA78;
    }

    v19 = v18;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v26, v15, v19];

    if (location >= [v20 length])
    {
      v21 = v20;
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v21 = [v20 substringToIndex:location];
      v22 = location + length;
      if (location + length <= [v20 length])
      {
        if (length)
        {
          v23 = [v20 substringWithRange:{location, length}];
        }

        else
        {
          v23 = 0;
        }

        v24 = [v20 substringFromIndex:v22];
      }

      else
      {
        v23 = [v20 substringFromIndex:location];
        v24 = 0;
      }
    }

    v25 = [objc_alloc(MEMORY[0x1E69D9590]) initWithContextBefore:v21 markedText:0 selectedText:v23 contextAfter:v24 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    [(RTIDocumentState *)self setDocumentState:v25];
  }

  MEMORY[0x1EEE66BB8]();
}

- (_NSRange)markedTextRange
{
  v3 = [(TIDocumentState *)self->_documentState markedText];

  if (v3)
  {
    v4 = [(TIDocumentState *)self->_documentState contextBeforeInput];
    v5 = [v4 length];

    v6 = [(TIDocumentState *)self->_documentState markedText];
    v7 = [v6 length];
  }

  else
  {
    v7 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (unint64_t)mergeInDocumentState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v18 = 0;
    goto LABEL_61;
  }

  [v4 caretRectInWindow];
  if (CGRectIsNull(v131))
  {
    goto LABEL_4;
  }

  [(RTIDocumentState *)self caretRectInWindow];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 caretRectInWindow];
  v141.origin.x = v14;
  v141.origin.y = v15;
  v141.size.width = v16;
  v141.size.height = v17;
  v132.origin.x = v7;
  v132.origin.y = v9;
  v132.size.width = v11;
  v132.size.height = v13;
  if (CGRectEqualToRect(v132, v141))
  {
LABEL_4:
    v18 = 0;
  }

  else
  {
    [v5 caretRectInWindow];
    [(RTIDocumentState *)self setCaretRectInWindow:?];
    v18 = 8;
  }

  [v5 firstSelectionRectInWindow];
  if (!CGRectIsNull(v133))
  {
    [(RTIDocumentState *)self firstSelectionRectInWindow];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v5 firstSelectionRectInWindow];
    v142.origin.x = v27;
    v142.origin.y = v28;
    v142.size.width = v29;
    v142.size.height = v30;
    v134.origin.x = v20;
    v134.origin.y = v22;
    v134.size.width = v24;
    v134.size.height = v26;
    if (!CGRectEqualToRect(v134, v142))
    {
      [v5 firstSelectionRectInWindow];
      [(RTIDocumentState *)self setFirstSelectionRectInWindow:?];
      v18 = 8;
    }
  }

  [v5 clientFrameInWindow];
  if (!CGRectIsNull(v135))
  {
    [(RTIDocumentState *)self clientFrameInWindow];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v5 clientFrameInWindow];
    v143.origin.x = v39;
    v143.origin.y = v40;
    v143.size.width = v41;
    v143.size.height = v42;
    v136.origin.x = v32;
    v136.origin.y = v34;
    v136.size.width = v36;
    v136.size.height = v38;
    if (!CGRectEqualToRect(v136, v143))
    {
      [v5 clientFrameInWindow];
      [(RTIDocumentState *)self setClientFrameInWindow:?];
      v18 = 8;
    }
  }

  [v5 firstSelectionRectInEntitySpace];
  if (!CGRectIsNull(v137))
  {
    [(RTIDocumentState *)self firstSelectionRectInEntitySpace];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [v5 firstSelectionRectInEntitySpace];
    v144.origin.x = v51;
    v144.origin.y = v52;
    v144.size.width = v53;
    v144.size.height = v54;
    v138.origin.x = v44;
    v138.origin.y = v46;
    v138.size.width = v48;
    v138.size.height = v50;
    if (!CGRectEqualToRect(v138, v144))
    {
      [v5 firstSelectionRectInEntitySpace];
      [(RTIDocumentState *)self setFirstSelectionRectInEntitySpace:?];
      v18 = 8;
    }
  }

  [v5 clientFrameInEntitySpace];
  if (!CGRectIsNull(v139))
  {
    [(RTIDocumentState *)self clientFrameInEntitySpace];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [v5 clientFrameInEntitySpace];
    v145.origin.x = v63;
    v145.origin.y = v64;
    v145.size.width = v65;
    v145.size.height = v66;
    v140.origin.x = v56;
    v140.origin.y = v58;
    v140.size.width = v60;
    v140.size.height = v62;
    if (!CGRectEqualToRect(v140, v145))
    {
      [v5 clientFrameInEntitySpace];
      [(RTIDocumentState *)self setClientFrameInEntitySpace:?];
      v18 |= 8uLL;
    }
  }

  [v5 displayZoom];
  if (v68 != 1.0 || v67 != 1.0)
  {
    [(RTIDocumentState *)self displayZoom];
    v70 = v69;
    v72 = v71;
    [v5 displayZoom];
    if (v70 != v74 || v72 != v73)
    {
      [v5 displayZoom];
      [(RTIDocumentState *)self setDisplayZoom:?];
      v18 |= 8uLL;
    }
  }

  v75 = v5[12];
  if (v75)
  {
    -[RTIDocumentState setHasText:](self, "setHasText:", [v5 hasText]);
    v18 |= 1uLL;
    v75 = v5[12];
    if ((v75 & 2) == 0)
    {
LABEL_26:
      if ((v75 & 4) == 0)
      {
        goto LABEL_27;
      }

LABEL_53:
      -[RTIDocumentState setOriginatedFromSource:](self, "setOriginatedFromSource:", [v5 originatedFromSource]);
      v18 |= 0x20uLL;
      if ((v5[12] & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v5[12] & 2) == 0)
  {
    goto LABEL_26;
  }

  -[RTIDocumentState setScrolling:](self, "setScrolling:", [v5 scrolling]);
  v18 |= 0x20uLL;
  v75 = v5[12];
  if ((v75 & 4) != 0)
  {
    goto LABEL_53;
  }

LABEL_27:
  if ((v75 & 8) != 0)
  {
LABEL_28:
    -[RTIDocumentState setCanSuggestSupplementalItemsForCurrentSelection:](self, "setCanSuggestSupplementalItemsForCurrentSelection:", [v5 canSuggestSupplementalItemsForCurrentSelection]);
    v18 |= 0x20uLL;
  }

LABEL_29:
  v76 = [v5 autocorrectBubbleStyling];
  if (v76)
  {
    v77 = v76;
    v78 = [(RTIDocumentState *)self autocorrectBubbleStyling];
    v79 = [v5 autocorrectBubbleStyling];
    v80 = [v78 isEqual:v79];

    if ((v80 & 1) == 0)
    {
      v81 = [v5 autocorrectBubbleStyling];
      [(RTIDocumentState *)self setAutocorrectBubbleStyling:v81];

      v18 |= 0x10uLL;
    }
  }

  v82 = [v5 autocorrectTextColor];
  if (v82)
  {
    v83 = v82;
    v84 = [(RTIDocumentState *)self autocorrectTextColor];
    v85 = [v5 autocorrectTextColor];
    v86 = [v84 isEqual:v85];

    if ((v86 & 1) == 0)
    {
      v87 = [v5 autocorrectTextColor];
      [(RTIDocumentState *)self setAutocorrectTextColor:v87];

      v18 |= 0x10uLL;
    }
  }

  v88 = [v5 autocorrectTextBackgroundColor];
  if (v88)
  {
    v89 = v88;
    v90 = [(RTIDocumentState *)self autocorrectTextBackgroundColor];
    v91 = [v5 autocorrectTextBackgroundColor];
    v92 = [v90 isEqual:v91];

    if ((v92 & 1) == 0)
    {
      v93 = [v5 autocorrectTextBackgroundColor];
      [(RTIDocumentState *)self setAutocorrectTextBackgroundColor:v93];

      v18 |= 0x10uLL;
    }
  }

  v94 = [v5 insertionPointColor];
  if (v94)
  {
    v95 = v94;
    v96 = [(RTIDocumentState *)self insertionPointColor];
    v97 = [v5 insertionPointColor];
    v98 = [v96 isEqual:v97];

    if ((v98 & 1) == 0)
    {
      v99 = [v5 insertionPointColor];
      [(RTIDocumentState *)self setInsertionPointColor:v99];

      v18 |= 0x10uLL;
    }
  }

  v100 = [v5 textCheckingAnnotatedString];
  if (v100)
  {
    v101 = v100;
    v102 = [(RTIDocumentState *)self textCheckingAnnotatedString];
    v103 = [v5 textCheckingAnnotatedString];
    v104 = [v102 isEqualToAttributedString:v103];

    if ((v104 & 1) == 0)
    {
      v105 = [v5 textCheckingAnnotatedString];
      v106 = [v105 copy];
      [(RTIDocumentState *)self setTextCheckingAnnotatedString:v106];

      v18 |= 1uLL;
    }
  }

  v107 = [v5 documentState];
  if (v107)
  {
    v108 = v107;
    v109 = [(RTIDocumentState *)self documentState];
    v110 = [v5 documentState];
    v111 = [v109 isEqual:v110];

    if ((v111 & 1) == 0)
    {
      v112 = [v5 documentState];
      v113 = [v112 copy];
      [(RTIDocumentState *)self setDocumentState:v113];

      v18 |= 1uLL;
    }
  }

  v114 = [v5 attributedDocumentState];
  if (!v114)
  {
    goto LABEL_57;
  }

  v115 = v114;
  if (v18)
  {

    goto LABEL_56;
  }

  v116 = [(RTIDocumentState *)self attributedDocumentState];
  v117 = [v5 attributedDocumentState];
  v118 = [v116 isEqual:v117];

  if ((v118 & 1) == 0)
  {
LABEL_56:
    v119 = [v5 attributedDocumentState];
    v120 = [v119 copy];
    [(RTIDocumentState *)self setAttributedDocumentState:v120];

    v18 |= 2uLL;
  }

LABEL_57:
  v121 = [v5 _documentRects];

  if (v121)
  {
    v122 = [(RTIDocumentState *)self _documentRects];
    v123 = [v5 _documentRects];
    v124 = [v123 mutableCopy];
    [(RTIDocumentState *)self set_documentRects:v124];

    if ((v18 & 1) == 0)
    {
      v129[0] = 0;
      v129[1] = v129;
      v129[2] = 0x3010000000;
      v129[3] = &unk_19A2D075D;
      v130 = xmmword_19A2CBC70;
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __41__RTIDocumentState_mergeInDocumentState___block_invoke;
      v128[3] = &unk_1E75145C0;
      v128[4] = v129;
      [(RTIDocumentState *)self _enumerateDocumentRectsWithOptions:0 block:v128];
      v125 = objc_opt_class();
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __41__RTIDocumentState_mergeInDocumentState___block_invoke_2;
      v127[3] = &unk_1E75145E8;
      v127[4] = self;
      v127[5] = v129;
      [v125 _enumerateDocumentRects:v122 options:0 block:v127];
      _Block_object_dispose(v129, 8);
    }

    v18 |= 4uLL;
  }

LABEL_61:

  return v18;
}

void __41__RTIDocumentState_mergeInDocumentState___block_invoke_2(uint64_t a1, unsigned int *a2)
{
  v6.location = *a2;
  v6.length = a2[1];
  if (!NSIntersectionRange(v6, *(*(*(a1 + 40) + 8) + 32)).length)
  {
    v4 = [*(a1 + 32) _documentRects];
    [v4 appendBytes:a2 length:32];
  }
}

- (id)documentStateByMergingInDocumentState:(id)a3 mergeResultOut:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(RTIDocumentState *)self copy];
  v8 = [v7 mergeInDocumentState:v6];

  if (a4)
  {
    *a4 = v8;
  }

  return v7;
}

- (_NSRange)deltaForSelectionRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    length = a3.length;
    v4 = a3.location - [(RTIDocumentState *)self selectedTextRange];
    v3 = length - v6;
  }

  result.length = v3;
  result.location = v4;
  return result;
}

- (RTIRange)deltaRangeForSelection:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    length = a3.length;
    v4 = a3.location - [(RTIDocumentState *)self selectedTextRange];
    v3 = length - v6;
  }

  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- (void)addTextRect:(CGRect)a3 forCharacterRange:(_NSRange)a4 granularity:(int64_t)a5 isVertical:(BOOL)a6
{
  v7 = a5;
  length = a4.length;
  location = a4.location;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = [(RTIDocumentState *)self _documentRects];

  if (!v15)
  {
    v16 = [MEMORY[0x1E695DF88] dataWithCapacity:640];
    [(RTIDocumentState *)self set_documentRects:v16];
  }

  *&v17 = x;
  *&v18 = y;
  v23 = __PAIR64__(v18, v17);
  *&v19 = width;
  *&v20 = height;
  LODWORD(v24) = v7;
  HIDWORD(v24) = a6;
  v21 = [(RTIDocumentState *)self _documentRects:__PAIR64__(length];
  [v21 appendBytes:&v22 length:32];
}

+ (void)_enumerateDocumentRects:(id)a3 options:(unint64_t)a4 block:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = ([v7 length] >> 5);
    v10 = [v7 bytes];
    v11 = v10;
    v24 = 0;
    if ((v6 & 2) != 0)
    {
      v16 = v9 - 1;
      if ((v9 - 1) >= 0)
      {
        v17 = (v10 + 32 * v9 - 32);
        do
        {
          v18 = v17[1];
          v22 = *v17;
          v23 = v18;
          v19 = v8[2];
          v20 = v22;
          v21 = v18;
          v19(v8, &v20, &v24);
          if (!v16)
          {
            break;
          }

          --v16;
          v17 -= 2;
        }

        while ((v24 & 1) == 0);
      }
    }

    else if (v9)
    {
      v12 = 1;
      do
      {
        v13 = v11[1];
        v22 = *v11;
        v23 = v13;
        v14 = v8[2];
        v20 = v22;
        v21 = v13;
        v14(v8, &v20, &v24);
        if (v24)
        {
          break;
        }

        v11 += 2;
      }

      while (v12++ < v9);
    }
  }
}

- (void)_enumerateDocumentRectsWithOptions:(unint64_t)a3 block:(id)a4
{
  v9 = a4;
  if (v9)
  {
    v6 = [(RTIDocumentState *)self _documentRects];

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [(RTIDocumentState *)self _documentRects];
      [v7 _enumerateDocumentRects:v8 options:a3 block:v9];
    }
  }
}

- (CGRect)firstRectForCharacterRange:(_NSRange)a3
{
  [(RTIDocumentState *)self firstRectForCharacterRange:a3.location withGranularity:a3.length isVerticalOut:-1, 0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)a3 actualRange:(_NSRange *)a4
{
  [(RTIDocumentState *)self firstRectForCharacterRange:a3.location withGranularity:a3.length isVerticalOut:-1 actualRange:0, a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4
{
  [(RTIDocumentState *)self firstRectForCharacterRange:a3.location withGranularity:a3.length isVerticalOut:a4, 0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4 isVerticalOut:(BOOL *)a5
{
  [(RTIDocumentState *)self firstRectForCharacterRange:a3.location withGranularity:a3.length isVerticalOut:a4 actualRange:a5, 0];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4 isVerticalOut:(BOOL *)a5 actualRange:(_NSRange *)a6
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = &unk_19A2D075D;
  v39 = 0u;
  v40 = 0u;
  v8 = *(MEMORY[0x1E695F050] + 16);
  *(&v39 + 1) = vcvt_f32_f64(*MEMORY[0x1E695F050]);
  *&v40 = vcvt_f32_f64(v8);
  BYTE12(v40) = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4010000000;
  v31 = &unk_19A2D075D;
  v32 = 0;
  v34 = 0;
  v33 = vcvt_hight_f32_f64(*(&v39 + 8), v8);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__RTIDocumentState_firstRectForCharacterRange_withGranularity_isVerticalOut_actualRange___block_invoke;
  v26[3] = &unk_1E7514610;
  v26[6] = a4;
  v27 = a3;
  v26[4] = &v35;
  v26[5] = &v28;
  [(RTIDocumentState *)self _enumerateDocumentRectsWithOptions:0 block:v26];
  v9 = v29[10];
  v10 = v29[11];
  v11 = v29[12];
  v12 = v29[13];
  v41.origin.x = v9;
  v41.origin.y = v10;
  v41.size.width = v11;
  v41.size.height = v12;
  if (CGRectIsInfinite(v41) || (v42.origin.x = v9, v42.origin.y = v10, v42.size.width = v11, v42.size.height = v12, CGRectIsEmpty(v42)))
  {
    v13 = RTILogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [RTIDocumentState firstRectForCharacterRange:v13 withGranularity:? isVerticalOut:? actualRange:?];
    }

    v14 = v29;
    v15 = *(v36 + 3);
    *(v29 + 2) = *(v36 + 2);
    *(v14 + 3) = v15;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = v29;
    if (a5)
    {
LABEL_6:
      *a5 = *(v14 + 60);
    }
  }

  if (a6)
  {
    v16 = *(v14 + 4);
    v17.location = v16;
    v17.length = HIDWORD(v16);
    *a6 = v17;
  }

  v18 = v14[10];
  v19 = v14[11];
  v20 = v14[12];
  v21 = v14[13];
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v35, 8);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

__n128 __89__RTIDocumentState_firstRectForCharacterRange_withGranularity_isVerticalOut_actualRange___block_invoke(void *a1, unsigned int *a2, _BYTE *a3)
{
  v6 = *(a1[4] + 8);
  v15.origin.x = v6[10];
  v15.origin.y = v6[11];
  v15.size.width = v6[12];
  v15.size.height = v6[13];
  if (CGRectIsNull(v15))
  {
    v8 = *(a1[4] + 8);
    result = *a2;
    v9 = *(a2 + 1);
    *(v8 + 32) = *a2;
    *(v8 + 48) = v9;
  }

  v10 = a1[6];
  if (v10 == -1 || v10 == a2[6])
  {
    v11.location = *a2;
    v12.location = a1[7];
    if (v12.location == v11.location || (v11.length = a2[1], v12.length = a1[8], NSIntersectionRange(v12, v11).length))
    {
      v13 = *(a1[5] + 8);
      result = *a2;
      v14 = *(a2 + 1);
      *(v13 + 32) = *a2;
      *(v13 + 48) = v14;
      *a3 = 1;
    }
  }

  return result;
}

- (id)rectsForCharacterRange:(_NSRange)a3 withGranularity:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__RTIDocumentState_rectsForCharacterRange_withGranularity___block_invoke;
  v10[3] = &unk_1E7514638;
  v10[6] = location;
  v10[7] = length;
  v10[4] = &v11;
  v10[5] = a4;
  [(RTIDocumentState *)self _enumerateDocumentRectsWithOptions:0 block:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __59__RTIDocumentState_rectsForCharacterRange_withGranularity___block_invoke(NSRange a1)
{
  length = a1.length;
  location = a1.location;
  v3 = *(a1.location + 40);
  if (v3 == -1 || v3 == *(a1.length + 24))
  {
    v4.location = *a1.length;
    a1.location = *(a1.location + 48);
    if (a1.location == v4.location || (v4.length = *(a1.length + 4), a1.length = *(location + 56), NSIntersectionRange(a1, v4).length))
    {
      v5 = [MEMORY[0x1E696B098] valueWithRect:{length[2], length[3], length[4], length[5]}];
      [*(*(*(location + 32) + 8) + 40) addObject:v5];
    }
  }
}

- (void)enumerateRectsWithOptions:(unint64_t)a3 range:(_NSRange)a4 granularity:(int64_t)a5 block:(id)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__RTIDocumentState_enumerateRectsWithOptions_range_granularity_block___block_invoke;
    v13[3] = &unk_1E7514660;
    v15 = a5;
    v16 = location;
    v17 = length;
    v14 = v11;
    [(RTIDocumentState *)self _enumerateDocumentRectsWithOptions:a3 block:v13];
  }
}

NSUInteger __70__RTIDocumentState_enumerateRectsWithOptions_range_granularity_block___block_invoke(NSUInteger result, float *a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 == -1 || v4 == *(a2 + 6))
  {
    v6 = *a2;
    v5 = *(a2 + 1);
    v16.location = *(result + 48);
    v16.length = *(v3 + 56);
    v17.location = *a2;
    v17.length = *(a2 + 1);
    v11 = NSIntersectionRange(v16, v17);
    result = v11.location;
    if (v11.location == v6 && v11.length == v5)
    {
      v7.n128_f64[0] = a2[2];
      v8.n128_f64[0] = a2[3];
      v9.n128_f64[0] = a2[4];
      v10.n128_f64[0] = a2[5];
      v13 = *(a2 + 28);
      v14 = *(*(v3 + 32) + 16);

      return v14(v7, v8, v9, v10);
    }
  }

  return result;
}

- (unint64_t)characterIndexForPoint:(CGPoint)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_19A2D075D;
  v11 = xmmword_19A2CBC70;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__RTIDocumentState_characterIndexForPoint___block_invoke;
  v5[3] = &unk_1E7514688;
  v6 = a3;
  v5[4] = &v7;
  [(RTIDocumentState *)self _enumerateDocumentRectsWithOptions:0 block:v5];
  v3 = v8[4];
  _Block_object_dispose(&v7, 8);
  return v3;
}

BOOL __43__RTIDocumentState_characterIndexForPoint___block_invoke(uint64_t a1, float *a2, _BYTE *a3)
{
  v8.origin.x = a2[2];
  v8.origin.y = a2[3];
  v8.size.width = a2[4];
  v8.size.height = a2[5];
  result = CGRectContainsPoint(v8, *(a1 + 40));
  if (result)
  {
    v7 = *(a2 + 1);
    *(*(*(a1 + 32) + 8) + 32) = *a2;
    *(*(*(a1 + 32) + 8) + 40) = v7;
    *a3 = 1;
  }

  return result;
}

- (CGRect)caretRectInWindow
{
  x = self->_caretRectInWindow.origin.x;
  y = self->_caretRectInWindow.origin.y;
  width = self->_caretRectInWindow.size.width;
  height = self->_caretRectInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)firstSelectionRectInWindow
{
  x = self->_firstSelectionRectInWindow.origin.x;
  y = self->_firstSelectionRectInWindow.origin.y;
  width = self->_firstSelectionRectInWindow.size.width;
  height = self->_firstSelectionRectInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)clientFrameInWindow
{
  x = self->_clientFrameInWindow.origin.x;
  y = self->_clientFrameInWindow.origin.y;
  width = self->_clientFrameInWindow.size.width;
  height = self->_clientFrameInWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)firstSelectionRectInEntitySpace
{
  x = self->_firstSelectionRectInEntitySpace.origin.x;
  y = self->_firstSelectionRectInEntitySpace.origin.y;
  width = self->_firstSelectionRectInEntitySpace.size.width;
  height = self->_firstSelectionRectInEntitySpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)clientFrameInEntitySpace
{
  x = self->_clientFrameInEntitySpace.origin.x;
  y = self->_clientFrameInEntitySpace.origin.y;
  width = self->_clientFrameInEntitySpace.size.width;
  height = self->_clientFrameInEntitySpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)displayZoom
{
  width = self->_displayZoom.width;
  height = self->_displayZoom.height;
  result.height = height;
  result.width = width;
  return result;
}

void __36__RTIDocumentState_encodeWithCoder___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[RTIDocumentState encodeWithCoder:]_block_invoke_2";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_19A2A6000, a2, OS_LOG_TYPE_ERROR, "%s  RTIDocumentState with TIAttributedDocumentState: non-serializable attribute encountered: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)firstRectForCharacterRange:(os_log_t)log withGranularity:isVerticalOut:actualRange:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[RTIDocumentState firstRectForCharacterRange:withGranularity:isVerticalOut:actualRange:]";
  _os_log_error_impl(&dword_19A2A6000, log, OS_LOG_TYPE_ERROR, "%s  ERROR: We are falling back to the first value. The client is not setting the range correctly.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end