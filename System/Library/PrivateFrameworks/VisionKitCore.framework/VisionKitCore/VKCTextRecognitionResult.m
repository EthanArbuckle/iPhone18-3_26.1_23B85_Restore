@interface VKCTextRecognitionResult
- (BOOL)containsRichPasteboardElementsForRange:(id)a3;
- (CGRect)firstRectForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5;
- (CGSize)imageSize;
- (NSArray)allLineQuads;
- (NSArray)formRegions;
- (NSArray)layoutComponents;
- (NSArray)normalizedTextLineBoundingBoxes;
- (NSDictionary)localeMap;
- (VKCTextRecognitionResult)initWithCoder:(id)a3;
- (VKCTextRecognitionResult)initWithDocumentObservation:(id)a3 mrcDataDetectors:(id)a4 imageSize:(CGSize)a5;
- (VKCTextRecognitionResultTextDelegate)textDelegate;
- (VKTextRange)vk_documentRange;
- (id)_adjustTextRangeToSelectableRange:(id)a3;
- (id)_normalizedSelectionQuadsForRange:(id)a3;
- (id)_selectionRectsForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5 addTranscript:(BOOL)a6;
- (id)adjustTextRangeToSelectableRange:(id)a3;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)closestBlockOfType:(unint64_t)a3 toPoint:(CGPoint)a4;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4 maxDistance:(int64_t)a5;
- (id)createLocaleMap;
- (id)documentElements;
- (id)elementMatchingOutputRegion:(id)a3;
- (id)filterTextRectanglesFromRectangleObservations:(id)a3;
- (id)formRegionsExcluding:(id)a3 updateExcludedFields:(BOOL)a4;
- (id)markerFormatForListItem:(id)a3;
- (id)normalizedSelectionQuadsForRange:(id)a3;
- (id)proposedFormRegionForPoint:(CGPoint)a3 existingFields:(id)a4 formSize:(CGSize)a5;
- (id)proposedFormRegionForPoint:(CGPoint)a3 existingFormFields:(id)a4;
- (id)rangeOfLineForPosition:(id)a3;
- (id)rangeOfWordForPosition:(id)a3;
- (id)selectionRectsForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5 addTranscript:(BOOL)a6;
- (id)smallestSelectableRangeForPosition:(id)a3;
- (id)zeroWidthStringOfLength:(unint64_t)a3;
- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)a3;
- (unint64_t)recognitionConfidence;
- (void)encodeWithCoder:(id)a3;
- (void)processListItemsItem:(id)a3 regionRange:(_NSRange)a4 indexSet:(id)a5 attributedString:(id)a6 textListClass:(Class)a7;
- (void)processTableItem:(id)a3 regionRange:(_NSRange)a4 indexSet:(id)a5 attributedString:(id)a6;
- (void)setRectangleObservations:(id)a3;
- (void)updateAttributedText;
- (void)updateMRCDataDetectors:(id)a3;
- (void)updateTextDataDetectors;
- (void)updateVNDocumentObservation:(id)a3;
@end

@implementation VKCTextRecognitionResult

- (VKCTextRecognitionResult)initWithDocumentObservation:(id)a3 mrcDataDetectors:(id)a4 imageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = a4;
  v42.receiver = self;
  v42.super_class = VKCTextRecognitionResult;
  v12 = [(VKCTextRecognitionResult *)&v42 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DF00] now];
    creationDate = v12->_creationDate;
    v12->_creationDate = v13;

    v15 = [v10 getTranscript];
    text = v12->_text;
    v12->_text = v15;

    v17 = [v10 getTitle];
    v18 = [v17 getTranscript];
    title = v12->_title;
    v12->_title = v18;

    v20 = [v10 getTitle];
    titleObservation = v12->_titleObservation;
    v12->_titleObservation = v20;

    v22 = [v10 getCRDocumentOutputRegion];
    v23 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:v22 shouldFilter:1];

    filteredTextDataDetectors = v12->_filteredTextDataDetectors;
    v12->_filteredTextDataDetectors = v23;
    v25 = v23;

    v26 = [(NSArray *)v25 vk_arrayByAddingObjectsFromNonNilArray:v11];
    dataDetectors = v12->_dataDetectors;
    v12->_dataDetectors = v26;

    v28 = [v10 getCRDocumentOutputRegion];
    v29 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:v28 shouldFilter:0];
    unfilteredDataDetectors = v12->_unfilteredDataDetectors;
    v12->_unfilteredDataDetectors = v29;

    objc_storeStrong(&v12->_sourceVNDocument, a3);
    v31 = [v10 getCRDocumentOutputRegion];
    sourceDocument = v12->_sourceDocument;
    v12->_sourceDocument = v31;

    v12->_imageSize.width = width;
    v12->_imageSize.height = height;
    v33 = [v10 getCRDocumentOutputRegion];
    v34 = [VKCTextElementProcessor textElementsFromCRDocumentOutputRegion:v33];

    textElements = v12->_textElements;
    v12->_textElements = v34;
    v36 = v34;

    v37 = [MEMORY[0x1E696AE30] processInfo];
    v38 = [v37 operatingSystemVersionString];
    buildString = v12->_buildString;
    v12->_buildString = v38;

    v40 = [(VKCTextRecognitionResult *)v12 normalizedTextLineBoundingBoxes];
    [(VKCTextRecognitionResult *)v12 updateInspectableElements];
    [(VKCTextRecognitionResult *)v12 updateAttributedText];
  }

  return v12;
}

- (void)updateVNDocumentObservation:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKCTextRecognitionResult *)self buildString];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 operatingSystemVersionString];
    [(VKCTextRecognitionResult *)self setBuildString:v7];
  }

  [(VKCTextRecognitionResult *)self setSourceVNDocument:v4];
  v8 = [v4 getCRDocumentOutputRegion];
  [(VKCTextRecognitionResult *)self setSourceDocument:v8];

  v9 = [v4 getTranscript];
  [(VKCTextRecognitionResult *)self setText:v9];

  v10 = [v4 getTitle];
  v11 = [v10 getTranscript];
  [(VKCTextRecognitionResult *)self setTitle:v11];

  v12 = [v4 getTitle];

  [(VKCTextRecognitionResult *)self setTitleObservation:v12];
  v13 = [(VKCTextRecognitionResult *)self sourceDocument];
  v14 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:v13 shouldFilter:1];
  [(VKCTextRecognitionResult *)self setFilteredTextDataDetectors:v14];

  v15 = [(VKCTextRecognitionResult *)self sourceDocument];
  v16 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:v15 shouldFilter:0];
  [(VKCTextRecognitionResult *)self setUnfilteredTextDataDetectors:v16];

  v17 = [(VKCTextRecognitionResult *)self sourceDocument];
  v18 = [VKCTextElementProcessor textElementsFromCRDocumentOutputRegion:v17];

  textElements = self->_textElements;
  self->_textElements = v18;
  v20 = v18;

  [(VKCTextRecognitionResult *)self updateTextDataDetectors];
  [(VKCTextRecognitionResult *)self updateInspectableElements];
  [(VKCTextRecognitionResult *)self updateAttributedText];
  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  v23 = @"updatedTypes";
  v24[0] = &unk_1F2C38E90;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  [v21 postNotificationName:@"VKAnalysisDidUpdateNotification" object:self userInfo:v22];
}

- (void)updateMRCDataDetectors:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  [(VKCTextRecognitionResult *)self setMrcDataDetectors:a3];
  [(VKCTextRecognitionResult *)self updateTextDataDetectors];
  [(VKCTextRecognitionResult *)self updateInspectableElements];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"updatedTypes";
  v7[0] = &unk_1F2C38EA8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v4 postNotificationName:@"VKAnalysisDidUpdateNotification" object:self userInfo:v5];
}

- (void)updateTextDataDetectors
{
  v3 = [(VKCTextRecognitionResult *)self filteredTextDataDetectors];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v8 = [(VKCTextRecognitionResult *)self mrcDataDetectors];
  v7 = [v6 vk_arrayByAddingObjectsFromNonNilArray:v8];

  [(VKCTextRecognitionResult *)self setDataDetectors:v7];
}

- (NSArray)normalizedTextLineBoundingBoxes
{
  normalizedTextLineBoundingBoxes = self->_normalizedTextLineBoundingBoxes;
  if (!normalizedTextLineBoundingBoxes)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(VKCTextRecognitionResult *)self sourceVNDocument];
    v6 = [(VKCTextRecognitionResult *)self sourceVNDocument];
    v7 = [v6 getTranscript];
    v8 = [v7 vk_range];
    v10 = [v5 textBlockWithCharacterRange:{v8, v9}];

    v11 = [v10 getLines];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__VKCTextRecognitionResult_normalizedTextLineBoundingBoxes__block_invoke;
    v16[3] = &unk_1E7BE5A08;
    v17 = v4;
    v12 = v4;
    [v11 enumerateObjectsUsingBlock:v16];

    v13 = [v12 copy];
    v14 = self->_normalizedTextLineBoundingBoxes;
    self->_normalizedTextLineBoundingBoxes = v13;

    normalizedTextLineBoundingBoxes = self->_normalizedTextLineBoundingBoxes;
  }

  return normalizedTextLineBoundingBoxes;
}

void __59__VKCTextRecognitionResult_normalizedTextLineBoundingBoxes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696B098];
  v5 = [a2 vkQuad];
  [v5 boundingBox];
  v4 = [v3 vk_valueWithRect:?];
  [v2 addObject:v4];
}

- (NSArray)layoutComponents
{
  v2 = [(VKCTextRecognitionResult *)self sourceDocument];
  v3 = [v2 layoutComponents];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)updateAttributedText
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(VKCTextRecognitionResult *)self sourceDocument];
  v4 = [v3 layoutComponents];
  v5 = [v3 text];
  if (v5)
  {
    v18 = v5;
    v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
    v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v3 rangeOfContentRegion:v12];
          v15 = v14;
          v16 = [v12 type];
          if (v16 == 256)
          {
            [(VKCTextRecognitionResult *)self processListItemsItem:v12 regionRange:v13 indexSet:v15 attributedString:v6 textListClass:v20, [(VKCTextRecognitionResult *)self textListClass]];
          }

          else if (v16 == 64)
          {
            if (v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [VKAssert handleFailedAssertWithCondition:"regionRange.location != NSNotFound" functionName:"[VKCTextRecognitionResult updateAttributedText]" simulateCrash:0 showAlert:0 format:@"found NSNotFound processing table region"];
            }

            else
            {
              [(VKCTextRecognitionResult *)self processTableItem:v12 regionRange:v13 indexSet:v15 attributedString:v6, v20];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v17 = [v6 copy];
    [(VKCTextRecognitionResult *)self setRichPasteBoardIndexes:v17];

    [(VKCTextRecognitionResult *)self setAttributedText:v20];
    v5 = v18;
    v4 = v19;
  }
}

- (void)processTableItem:(id)a3 regionRange:(_NSRange)a4 indexSet:(id)a5 attributedString:(id)a6
{
  location = a4.location;
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = objc_opt_class();
  v52 = v8;
  v11 = VKCheckedDynamicCast(v10, v8);
  v12 = [v11 cells];
  v13 = objc_alloc_init(MEMORY[0x1E69DB860]);
  v48 = v11;
  v14 = [v11 colQuads];
  v51 = v13;
  [v13 setNumberOfColumns:{objc_msgSend(v14, "count")}];

  v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 count];
    v17 = [(VKCTextRecognitionResult *)self request];
    *buf = 134218240;
    v62 = v16;
    v63 = 1024;
    v64 = [v17 requestID];
    _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Beginning tableProcessing with cellCount: %lu, id: %d", buf, 0x12u);
  }

  v47 = self;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v53 objects:v60 count:16];
  obj = v18;
  if (v19)
  {
    v20 = v19;
    v21 = *v54;
    v22 = *MEMORY[0x1E69DB688];
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v53 + 1) + 8 * i);
        v25 = [v24 colRange];
        v27 = v26;
        v28 = [v24 rowRange];
        v30 = [objc_alloc(MEMORY[0x1E69DB868]) initWithTable:v51 startingRow:v28 rowSpan:v29 startingColumn:v25 columnSpan:v27];
        v31 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
        v32 = [v31 mutableCopy];

        v59 = v30;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [v32 setTextBlocks:v33];

        v34 = [v52 rangeOfContentRegion:v24];
        v36 = v35;
        v37 = [v9 vk_range];
        v39 = VKMClampRange(v34 + location, v36 + 1, v37, v38);
        v41 = v40;
        v57 = v22;
        v58 = v32;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        [v9 setAttributes:v42 range:{v39, v41}];
      }

      v18 = obj;
      v20 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v20);
  }

  v43 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v18 count];
    v45 = [(VKCTextRecognitionResult *)v47 request];
    v46 = [v45 requestID];
    *buf = 134218240;
    v62 = v44;
    v63 = 1024;
    v64 = v46;
    _os_log_impl(&dword_1B4335000, v43, OS_LOG_TYPE_DEFAULT, "Table processing complete with cellCount: %lu, id: %d", buf, 0x12u);

    v18 = obj;
  }
}

- (void)processListItemsItem:(id)a3 regionRange:(_NSRange)a4 indexSet:(id)a5 attributedString:(id)a6 textListClass:(Class)a7
{
  location = a4.location;
  v70 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v51 = a5;
  v10 = a6;
  v11 = objc_opt_class();
  v52 = v9;
  v12 = VKCheckedDynamicCast(v11, v9);
  v13 = [v12 items];

  v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    v16 = [(VKCTextRecognitionResult *)self request];
    *buf = 134218240;
    v67 = v15;
    v68 = 1024;
    v69 = [v16 requestID];
    _os_log_impl(&dword_1B4335000, v14, OS_LOG_TYPE_DEFAULT, "Beginning list with itemCount: %lu, id: %d", buf, 0x12u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = v13;
  v53 = [v17 countByEnumeratingWithState:&v58 objects:v65 count:16];
  v18 = 0;
  if (v53)
  {
    v49 = *v59;
    v55 = *MEMORY[0x1E69DB688];
    obj = v17;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * i);
        v21 = [(VKCTextRecognitionResult *)self markerFormatForListItem:v20];
        v22 = [v18 markerFormat];
        v23 = [v22 isEqualToString:v21];

        if (v23)
        {
          v57 = v18;
        }

        else
        {
          v24 = [[a7 alloc] initWithMarkerFormat:v21 options:0];

          v57 = v24;
        }

        v25 = [v52 rangeOfContentRegion:v20];
        v27 = v26;
        v28 = [v10 vk_range];
        v30 = VKMClampRange(v25 + location, v27 + 1, v28, v29);
        v32 = v31;
        v54 = [v20 markerRange];
        v34 = v33;
        v35 = v10;
        v36 = [v10 attributesAtIndex:v30 longestEffectiveRange:0 inRange:{v30, v32}];
        v37 = [v36 objectForKeyedSubscript:v55];
        v38 = [v37 mutableCopy];

        if (!v38)
        {
          v39 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
          v38 = [v39 mutableCopy];
        }

        v64 = v57;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        [v38 setTextLists:v40];

        v10 = v35;
        if (!-[VKCTextRecognitionResult shouldShowTextMarkerForMarkerType:](self, "shouldShowTextMarkerForMarkerType:", [v20 markerType]))
        {
          v41 = [(VKCTextRecognitionResult *)self zeroWidthStringOfLength:v34];
          [v35 replaceCharactersInRange:v54 + v30 withString:{v34, v41}];
        }

        v62 = v55;
        v63 = v38;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        [v35 addAttributes:v42 range:{v30, v32}];

        [v51 addIndexesInRange:{v30, v32}];
        v18 = v57;
      }

      v17 = obj;
      v53 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v53);
  }

  v43 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v17 count];
    v45 = [(VKCTextRecognitionResult *)self request];
    v46 = [v45 requestID];
    *buf = 134218240;
    v67 = v44;
    v68 = 1024;
    v69 = v46;
    _os_log_impl(&dword_1B4335000, v43, OS_LOG_TYPE_DEFAULT, "List processing complete with itemCount: %lu, id: %D", buf, 0x12u);
  }
}

- (BOOL)containsRichPasteboardElementsForRange:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(VKCTextRecognitionResult *)self richPasteBoardIndexes];
  v6 = [v4 rangeArray];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__VKCTextRecognitionResult_containsRichPasteboardElementsForRange___block_invoke;
  v9[3] = &unk_1E7BE5A30;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  LOBYTE(v6) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v6;
}

uint64_t __67__VKCTextRecognitionResult_containsRichPasteboardElementsForRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 nsRange];
  result = [v6 containsIndexesInRange:{v7, v8}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (id)zeroWidthStringOfLength:(unint64_t)a3
{
  v3 = a3;
  if (a3 >= 6)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    do
    {
      [(__CFString *)v4 appendString:@"🎛"];
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = off_1E7BE5BE8[a3];
  }

  return v4;
}

- (id)markerFormatForListItem:(id)a3
{
  v3 = [a3 markerType];
  if ((v3 - 2) > 4)
  {
    v4 = MEMORY[0x1E69DB710];
  }

  else
  {
    v4 = qword_1E7BE5C18[v3 - 2];
  }

  v5 = *v4;

  return v5;
}

- (id)documentElements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(VKCTextRecognitionResult *)self buildString];
  v6 = [v4 stringWithFormat:@"Build: %@", v5];
  v7 = [VKCElementInfo infoWithText:v6 parent:0];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VKCTextRecognitionResult *)self creationDate];
  v10 = [v9 vk_localDateWithSeconds];
  v11 = [v8 stringWithFormat:@"Date: %@", v10];
  v12 = [VKCElementInfo infoWithText:v11 parent:0];
  [v3 addObject:v12];

  v13 = MEMORY[0x1E696AEC0];
  [(VKCTextRecognitionResult *)self imageSize];
  v16 = VKMUIStringForSize(v14, v15);
  v17 = [v13 stringWithFormat:@"ImageSize: %@", v16];
  v18 = [VKCElementInfo infoWithText:v17 parent:0];
  [v3 addObject:v18];

  v19 = MEMORY[0x1E696AEC0];
  [(VKCTextRecognitionResult *)self imageSize];
  v22 = [v19 stringWithFormat:@"ImageAspectRatio: %g", VKMAspectRatio(v20, v21)];
  v23 = [VKCElementInfo infoWithText:v22 parent:0];
  [v3 addObject:v23];

  v24 = [(VKCTextRecognitionResult *)self requestLocales];
  v25 = [v24 vk_compactMap:&__block_literal_global_16];

  if (v25)
  {
    [VKCElementCollection collectionWithTitle:@"Locales" children:v25 parent:0];
  }

  else
  {
    [VKCElementInfo infoWithText:@"Locales (None - Default)" parent:0];
  }
  v26 = ;
  [v3 addObject:v26];

  v27 = [(VKCTextRecognitionResult *)self requestBarcodeSymbologies];
  v28 = [v27 vk_compactMap:&__block_literal_global_268];

  if (v28)
  {
    [VKCElementCollection collectionWithTitle:@"Barcode Symbologies" children:v28 parent:0];
  }

  else
  {
    [VKCElementInfo infoWithText:@"Barcode Symbologies (None - Default)" parent:0];
  }
  v29 = ;
  [v3 addObject:v29];

  v30 = [v3 copy];

  return v30;
}

- (NSDictionary)localeMap
{
  localeMap = self->_localeMap;
  if (!localeMap)
  {
    v4 = [(VKCTextRecognitionResult *)self createLocaleMap];
    v5 = self->_localeMap;
    self->_localeMap = v4;

    localeMap = self->_localeMap;
  }

  return localeMap;
}

- (id)createLocaleMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(VKCTextRecognitionResult *)self sourceDocument];
  v5 = [(VKCTextRecognitionResult *)self sourceDocument];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__VKCTextRecognitionResult_createLocaleMap__block_invoke;
  v11[3] = &unk_1E7BE5A78;
  v6 = v3;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [v5 enumerateContentsWithTypes:8 usingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void __43__VKCTextRecognitionResult_createLocaleMap__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 recognizedLocale];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
    }

    v5 = [*(a1 + 40) rangeOfContentRegion:v7];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 addIndexesInRange:{v5, v6}];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VKCTextRecognitionResult *)self dataDetectors];
  v14 = [v5 vk_objectsPassingTest:&__block_literal_global_279];

  v6 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  [v4 encodeObject:v6 forKey:@"sourceDocument"];

  [v4 encodeObject:v14 forKey:@"MRCDD"];
  [(VKCTextRecognitionResult *)self imageSize];
  *&v7 = v7;
  [v4 encodeFloat:@"imageWidth" forKey:v7];
  [(VKCTextRecognitionResult *)self imageSize];
  *&v9 = v8;
  [v4 encodeFloat:@"imageHeight" forKey:v9];
  v10 = [(VKCTextRecognitionResult *)self buildString];
  [v4 encodeObject:v10 forKey:@"build"];

  v11 = [(VKCTextRecognitionResult *)self creationDate];
  [v4 encodeObject:v11 forKey:@"date"];

  v12 = [(VKCTextRecognitionResult *)self requestBarcodeSymbologies];
  [v4 encodeObject:v12 forKey:@"barcodeSymbologies"];

  v13 = [(VKCTextRecognitionResult *)self requestLocales];
  [v4 encodeObject:v13 forKey:@"locales"];
}

- (VKCTextRecognitionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceDocument"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MRCDD"];
  [v4 decodeFloatForKey:@"imageWidth"];
  v7 = v6;
  [v4 decodeFloatForKey:@"imageHeight"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v12 = [(VKCTextRecognitionResult *)self initWithDocumentObservation:v22 mrcDataDetectors:v5 imageSize:v7, v9];
  [(VKCTextRecognitionResult *)v12 setCreationDate:v10];
  [(VKCTextRecognitionResult *)v12 setBuildString:v11];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"locales"];
  [(VKCTextRecognitionResult *)v12 setRequestLocales:v16];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"barcodeSymbologies"];

  [(VKCTextRecognitionResult *)v12 setRequestBarcodeSymbologies:v20];
  [(VKCTextRecognitionResult *)v12 updateInspectableElements];

  return v12;
}

- (id)elementMatchingOutputRegion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VKCTextRecognitionResult *)self inspectableElements];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) recursiveSearchForCROutputRegion:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
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

- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)a3
{
  v4 = [(VKCTextRecognitionResult *)self dataDetectors];
  v5 = v4;
  if (a3 == -1)
  {
    v6 = [v4 count];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__VKCTextRecognitionResult_countOfDataDetectorsWithTypes___block_invoke;
    v9[3] = &__block_descriptor_40_e43_B32__0__VKCBaseDataDetectorElement_8Q16_B24l;
    v9[4] = a3;
    v6 = [v4 vk_countOfObjectsPassingTest:v9];
  }

  v7 = v6;

  return v7;
}

- (NSArray)allLineQuads
{
  v2 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v3 = [v2 blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];

  v4 = [v3 vk_compactMap:&__block_literal_global_285];

  return v4;
}

- (void)setRectangleObservations:(id)a3
{
  objc_storeStrong(&self->_rectangleObservations, a3);
  v5 = a3;
  v6 = [(VKCTextRecognitionResult *)self filterTextRectanglesFromRectangleObservations:self->_rectangleObservations];

  [(VKCTextRecognitionResult *)self setFilteredNormalizedRectangleQuads:v6];
}

- (id)filterTextRectanglesFromRectangleObservations:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VKCTextRecognitionResult *)self sourceDocument];
    v6 = [v5 boundingQuad];
    [v6 normalizationSize];
    v8 = v7;
    v10 = v9;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__VKCTextRecognitionResult_filterTextRectanglesFromRectangleObservations___block_invoke;
    v14[3] = &unk_1E7BE5B08;
    v16 = v8;
    v17 = v10;
    v15 = v5;
    v11 = v5;
    v12 = [v4 vk_compactMap:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __74__VKCTextRecognitionResult_filterTextRectanglesFromRectangleObservations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 vkQuad];
  v5 = objc_alloc(MEMORY[0x1E69D9DD8]);
  [v4 topLeft];
  v7 = v6;
  v9 = v8;
  [v4 topRight];
  v11 = v10;
  v13 = v12;
  [v4 bottomRight];
  v15 = v14;
  v17 = v16;
  [v4 bottomLeft];
  v20 = [v5 initWithNormalizedTopLeft:v7 topRight:v9 bottomRight:v11 bottomLeft:v13 size:{v15, v17, v18, v19, *(a1 + 40), *(a1 + 48)}];
  v21 = [*(a1 + 32) outputRegionWithContentsOfQuad:v20];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  [v4 area];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __74__VKCTextRecognitionResult_filterTextRectanglesFromRectangleObservations___block_invoke_2;
  v26[3] = &unk_1E7BE5AE0;
  v26[6] = v22;
  v26[7] = 0x3FD999999999999ALL;
  v26[4] = v27;
  v26[5] = &v28;
  [v21 enumerateContentsWithTypes:8 usingBlock:v26];
  if (*(v29 + 24))
  {
    v23 = 0;
  }

  else
  {
    v23 = v4;
  }

  v24 = v23;
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);

  return v24;
}

void __74__VKCTextRecognitionResult_filterTextRectanglesFromRectangleObservations___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 boundingQuad];
  v7 = [v5 vkQuad];

  [v7 area];
  *(*(*(a1 + 32) + 8) + 24) = v6 + *(*(*(a1 + 32) + 8) + 24);
  if (*(*(*(a1 + 32) + 8) + 24) / *(a1 + 48) > *(a1 + 56))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (VKTextRange)vk_documentRange
{
  v3 = [VKTextRange alloc];
  v4 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v5 = [v4 getTranscript];
  v6 = [v5 vk_range];
  v8 = [(VKTextRange *)v3 initWithRange:v6, v7];

  return v8;
}

- (id)adjustTextRangeToSelectableRange:(id)a3
{
  v4 = a3;
  if ([v4 containsMultipleRanges])
  {
    v5 = [v4 rangeArray];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__VKCTextRecognitionResult_adjustTextRangeToSelectableRange___block_invoke;
    v9[3] = &unk_1E7BE5B30;
    v9[4] = self;
    v4 = [v5 vk_compactMap:v9];

    v6 = [VKTextRange rangeWithVKRanges:v4];
  }

  else
  {
    v6 = [(VKCTextRecognitionResult *)self _adjustTextRangeToSelectableRange:v4];
  }

  v7 = v6;

  return v7;
}

- (id)_adjustTextRangeToSelectableRange:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [(VKTextRange *)v4 start];
  v7 = [(VKTextRange *)v4 end];
  v8 = [(VKCTextRecognitionResult *)self text];
  if (![v8 length])
  {
    v15 = v4;
    goto LABEL_19;
  }

  v9 = [v8 vk_range];
  v11 = v10;
  v12 = [v6 offset];
  if (VKMRangeContainsIndex(v9, v11, v12))
  {
    if (([v5 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", v12)}] & 1) == 0)
    {
      v13 = [(VKCTextRecognitionResult *)self smallestSelectableRangeForPosition:v6];
      v14 = [v13 start];

      v6 = v14;
    }
  }

  else
  {
    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = [v6 offset];
      v37.location = v9;
      v37.length = v11;
      v22 = NSStringFromRange(v37);
      v28 = [(VKCTextRecognitionResult *)self request];
      *buf = 134218498;
      v30 = v27;
      v31 = 2112;
      v32 = v22;
      v33 = 1024;
      v34 = [v28 requestID];
      _os_log_error_impl(&dword_1B4335000, v16, OS_LOG_TYPE_ERROR, "AdjustTextRange, but the start offset is outside of the text's total range. StartOffset:%lu range %@, id: %d", buf, 0x1Cu);
    }
  }

  v17 = [v7 offset];
  v18 = [v8 length];
  if (v17 >= v18 - 1)
  {
    v17 = v18 - 1;
  }

  if (!VKMRangeContainsIndex(v9, v11, v17))
  {
    v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = [v7 offset];
      v38.location = v9;
      v38.length = v11;
      v24 = NSStringFromRange(v38);
      v25 = [(VKCTextRecognitionResult *)self request];
      v26 = [v25 requestID];
      *buf = 134218498;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 1024;
      v34 = v26;
      _os_log_error_impl(&dword_1B4335000, v20, OS_LOG_TYPE_ERROR, "AdjustTextRange, but the end offset is outside of the text's total range. endOffset:%lu range %@, id: %d", buf, 0x1Cu);
    }

    v19 = v20;
    goto LABEL_17;
  }

  if (([v5 characterIsMember:{objc_msgSend(v8, "characterAtIndex:", v17)}] & 1) == 0)
  {
    v19 = [(VKCTextRecognitionResult *)self smallestSelectableRangeForPosition:v7];
    [v19 end];
    v7 = v20 = v7;
LABEL_17:
  }

  v15 = [[VKTextRange alloc] initWithStart:v6 end:v7];

LABEL_19:

  return v15;
}

- (id)smallestSelectableRangeForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCTextRecognitionResult *)self sourceDocument];
  v6 = [v4 offset];

  v7 = [(VKCTextRecognitionResult *)self text];
  v8 = [v7 length] - 1;

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [v5 contentRegionOfType:48 containingTextAtIndex:v9];
  if (v10)
  {
    v11 = [v5 rangeOfContentRegion:v10];
    v13 = [[VKTextRange alloc] initWithRange:v11, v12];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"((region) != nil)" functionName:"[VKCTextRecognitionResult smallestSelectableRangeForPosition:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "region"];
    v13 = 0;
  }

  return v13;
}

- (id)rangeOfWordForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v6 = [v4 offset];

  v7 = [(VKCTextRecognitionResult *)self text];
  v8 = [v7 length] - 1;

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [v5 textBlockOfTypes:16 containingTextAtIndex:v9];
  v11 = [v5 rangeOfTextBlock:v10];
  v13 = [VKTextRange rangeWithNSRange:v11, v12];

  return v13;
}

- (id)rangeOfLineForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v6 = [v4 offset];

  v7 = [(VKCTextRecognitionResult *)self text];
  v8 = [v7 length] - 1;

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [v5 textBlockOfTypes:8 containingTextAtIndex:v9 & ~(v9 >> 63)];
  v11 = [v5 rangeOfTextBlock:v10];
  v13 = [VKTextRange rangeWithNSRange:v11, v12];

  return v13;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKCTextRecognitionResult *)self vk_documentRange];
  v7 = [(VKCTextRecognitionResult *)self closestPositionToPoint:v6 withinRange:0 maxDistance:x, y];

  if (v7)
  {
    v8 = [(VKCTextRecognitionResult *)self smallestSelectableRangeForPosition:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4 maxDistance:(int64_t)a5
{
  v7 = a4;
  VKMFlipPoint();
  v9 = v8;
  v11 = v10;
  v12 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v13 = [v12 closestTextBlockOfTypes:48 toPoint:a5 maximumPixelDistance:{v9, v11}];
  v14 = [v13 vk_textBlock];

  if (v14 && (v15 = [v7 nsRange], v17 = v16, v18 = objc_msgSend(v12, "rangeOfTextBlock:", v14), v20 = VKMClampRange(v18, v19, v15, v17), v20 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v23 = v20;
    v24 = v21;
    v25 = [(VKCTextRecognitionResult *)self textDelegate];

    if (v25)
    {
      v26 = [(VKCTextRecognitionResult *)self textDelegate];
      v27 = [v26 selectedRangeForTextRecognitionResult:self];
      v36 = [v27 nsRange];
      v29 = v28;

      v30 = [(VKCTextRecognitionResult *)self textDelegate];
      v31 = [v30 preSelectionChangeSelectedRangeForTextRecognitionResult:self];

      v32 = [(VKCTextRecognitionResult *)self textDelegate];
      v33 = [v32 draggedRectEdgeForTextRecognitionResult:self];

      v34 = v23 + v24;
      if (v36 == v23 && v29 == v24 || v34 < 1 || v36 + v29 > v34 || !v29)
      {
        if (v33 == 2)
        {
          if (v23 <= [v31 endOffset])
          {
            v33 = 2;
          }

          else
          {
            v33 = 8;
          }
        }

        else if (v33 == 8)
        {
          if (v23 >= [v31 startOffset])
          {
            v33 = 8;
          }

          else
          {
            v33 = 2;
          }
        }

        if (v33 != 8)
        {
          v34 = v23;
        }
      }
    }

    else
    {
      v34 = v23;
    }

    v22 = [[VKTextPosition alloc] initWithOffset:v34];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)closestBlockOfType:(unint64_t)a3 toPoint:(CGPoint)a4
{
  VKMFlipPoint();
  v7 = v6;
  v9 = v8;
  v10 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v11 = [v10 closestTextBlockOfTypes:a3 toPoint:0x7FFFFFFFFFFFFFFFLL maximumPixelDistance:{v7, v9}];

  return v11;
}

- (CGRect)firstRectForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v14 = [v12 nsRange];
  v16 = v15;

  v17 = [v13 textBlockWithCharacterRange:{v14, v16}];

  v18 = [v17 vkQuad];
  v19 = [v18 quadByConvertingFromNormalizedRectToView:v11 contentsRect:{x, y, width, height}];

  [v19 boundingBox];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)selectionRectsForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5 addTranscript:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a4;
  v14 = a3;
  if ([v14 containsMultipleRanges])
  {
    v15 = [v14 rangeArray];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__VKCTextRecognitionResult_selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke;
    v18[3] = &unk_1E7BE5B58;
    v18[4] = self;
    v19 = v13;
    v20 = x;
    v21 = y;
    v22 = width;
    v23 = height;
    v24 = v6;
    v16 = [v15 vk_flatMap:v18];
  }

  else
  {
    v16 = [(VKCTextRecognitionResult *)self _selectionRectsForRange:v14 documentView:v13 contentRect:v6 addTranscript:x, y, width, height];
  }

  return v16;
}

- (id)_selectionRectsForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5 addTranscript:(BOOL)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  if ([v13 isEmpty])
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = [(VKCTextRecognitionResult *)self sourceVNDocument];
    v17 = [v13 nsRange];
    v19 = [v16 textBlockWithCharacterRange:{v17, v18}];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = [v19 getLines];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __91__VKCTextRecognitionResult__selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke;
    v26[3] = &unk_1E7BE5B80;
    v29 = x;
    v30 = y;
    v31 = width;
    v32 = height;
    v33 = a6;
    v27 = v14;
    v28 = v20;
    v22 = v20;
    [v21 enumerateObjectsUsingBlock:v26];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __91__VKCTextRecognitionResult__selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke_2;
    v24[3] = &__block_descriptor_33_e14__32__0_8q16q24l;
    v25 = a6;
    v15 = [v22 vk_compactMap:v24];
  }

  return v15;
}

void __91__VKCTextRecognitionResult__selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 vkQuad];
  v4 = [v3 quadByConvertingFromNormalizedRectToView:*(a1 + 32) contentsRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

  v5 = [v8 getCROutputRegion];
  [v4 setLayoutDirection:{objc_msgSend(v5, "layoutDirection")}];

  if (*(a1 + 80) == 1)
  {
    v6 = objc_alloc_init(VKCQuadTranscriptTuple);
    [(VKCQuadTranscriptTuple *)v6 setQuad:v4];
    v7 = [v8 getTranscript];
    [(VKCQuadTranscriptTuple *)v6 setTranscript:v7];

    [*(a1 + 40) addObject:v6];
  }

  else
  {
    [*(a1 + 40) addObject:v4];
  }
}

VKTextSelectionRect *__91__VKCTextRecognitionResult__selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (*(a1 + 32) == 1)
  {
    v9 = objc_opt_class();
    v10 = VKDynamicCast(v9, v8);
    v11 = [v10 quad];
    v12 = [v10 transcript];
  }

  else
  {
    v11 = v7;
    v12 = 0;
  }

  v13 = a3 == 0;
  v14 = a3 == a4;
  [v11 boundingBox];
  v15 = [v11 quadFromSubtractingPoint:?];
  v16 = [VKTextSelectionRect alloc];
  [v11 boundingBox];
  v21 = -[VKTextSelectionRect initWithRect:containsStart:containsEnd:layoutDirection:quad:](v16, "initWithRect:containsStart:containsEnd:layoutDirection:quad:", v13, v14, [v11 layoutDirection], v15, v17, v18, v19, v20);
  v22 = v21;
  if (*(a1 + 32) == 1)
  {
    [(VKTextSelectionRect *)v21 set_transcript:v12];
  }

  return v22;
}

- (id)normalizedSelectionQuadsForRange:(id)a3
{
  v4 = a3;
  if ([v4 containsMultipleRanges])
  {
    v5 = [v4 rangeArray];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__VKCTextRecognitionResult_normalizedSelectionQuadsForRange___block_invoke;
    v8[3] = &unk_1E7BE5BC8;
    v8[4] = self;
    v6 = [v5 vk_flatMap:v8];
  }

  else
  {
    v6 = [(VKCTextRecognitionResult *)self _normalizedSelectionQuadsForRange:v4];
  }

  return v6;
}

- (id)_normalizedSelectionQuadsForRange:(id)a3
{
  v4 = a3;
  if ([v4 containsMultipleRanges])
  {
    v5 = [(VKCTextRecognitionResult *)self request];
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "!range.containsMultipleRanges", "-[VKCTextRecognitionResult _normalizedSelectionQuadsForRange:]", 0, 0, @"_normalizedSelectionQuadsForRange being sent a range with multiple ranges id: %d", [v5 requestID]);
  }

  if ([v4 isEmpty])
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(VKCTextRecognitionResult *)self sourceVNDocument];
    v8 = [v4 nsRange];
    v10 = [v7 textBlockWithCharacterRange:{v8, v9}];
    v11 = [v10 getLines];
    v6 = [v11 vk_compactMap:&__block_literal_global_308];
  }

  return v6;
}

- (id)formRegionsExcluding:(id)a3 updateExcludedFields:(BOOL)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(CRDocumentOutputRegion *)self->_sourceDocument detectedFieldRegionsExcludingFields:a3 updateExcludedFields:a4];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  if ([v4 count])
  {
    v7 = 0;
    v8 = off_1E7BE3000;
    *&v6 = 136315394;
    v16 = v6;
    do
    {
      v9 = [v4 objectAtIndexedSubscript:{v7, v16}];
      v10 = [objc_alloc(v8[15]) initWithSourceRegion:v9];
      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v10 debugDescription];
        v18 = [v12 UTF8String];
        v13 = [(VKCTextRecognitionResult *)self request];
        v14 = [v13 requestID];
        *buf = v16;
        v20 = v18;
        v21 = 1024;
        v22 = v14;
        _os_log_debug_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEBUG, "Adding form region %s, id: %d", buf, 0x12u);

        v8 = off_1E7BE3000;
      }

      [v5 addObject:v10];
      ++v7;
    }

    while ([v4 count] > v7);
  }

  return v5;
}

- (id)proposedFormRegionForPoint:(CGPoint)a3 existingFields:(id)a4 formSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * i) crFormFieldWithSize:{width, height, v21}];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(CRDocumentOutputRegion *)self->_sourceDocument proposedFieldForPoint:v11 existingFields:x, y];
  if (v18)
  {
    v19 = [[VKCFormRegion alloc] initWithSourceRegion:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)proposedFormRegionForPoint:(CGPoint)a3 existingFormFields:(id)a4
{
  v4 = [(CRDocumentOutputRegion *)self->_sourceDocument proposedFieldForPoint:a4 existingFields:a3.x, a3.y];
  if (v4)
  {
    v5 = [[VKCFormRegion alloc] initWithSourceRegion:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)formRegions
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(CRDocumentOutputRegion *)self->_sourceDocument contentsWithTypes:0x2000];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  if ([v2 count])
  {
    v5 = 0;
    v6 = off_1E7BE3000;
    *&v4 = 136315394;
    v14 = v4;
    do
    {
      v7 = [v2 objectAtIndexedSubscript:{v5, v14}];
      v8 = [objc_alloc(v6[15]) initWithSourceRegion:v7];
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v8 debugDescription];
        v16 = [v10 UTF8String];
        v11 = [(VKCTextRecognitionResult *)self request];
        v12 = [v11 requestID];
        *buf = v14;
        v18 = v16;
        v19 = 1024;
        v20 = v12;
        _os_log_debug_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEBUG, "Adding form region %s, id: %d", buf, 0x12u);

        v6 = off_1E7BE3000;
      }

      [v3 addObject:v8];
      ++v5;
    }

    while ([v2 count] > v5);
  }

  return v3;
}

- (unint64_t)recognitionConfidence
{
  result = [(CRDocumentOutputRegion *)self->_sourceDocument formness];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (VKCTextRecognitionResultTextDelegate)textDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textDelegate);

  return WeakRetained;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end