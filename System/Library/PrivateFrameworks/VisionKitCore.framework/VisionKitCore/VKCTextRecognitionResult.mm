@interface VKCTextRecognitionResult
- (BOOL)containsRichPasteboardElementsForRange:(id)range;
- (CGRect)firstRectForRange:(id)range documentView:(id)view contentRect:(CGRect)rect;
- (CGSize)imageSize;
- (NSArray)allLineQuads;
- (NSArray)formRegions;
- (NSArray)layoutComponents;
- (NSArray)normalizedTextLineBoundingBoxes;
- (NSDictionary)localeMap;
- (VKCTextRecognitionResult)initWithCoder:(id)coder;
- (VKCTextRecognitionResult)initWithDocumentObservation:(id)observation mrcDataDetectors:(id)detectors imageSize:(CGSize)size;
- (VKCTextRecognitionResultTextDelegate)textDelegate;
- (VKTextRange)vk_documentRange;
- (id)_adjustTextRangeToSelectableRange:(id)range;
- (id)_normalizedSelectionQuadsForRange:(id)range;
- (id)_selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect addTranscript:(BOOL)transcript;
- (id)adjustTextRangeToSelectableRange:(id)range;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)closestBlockOfType:(unint64_t)type toPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range maxDistance:(int64_t)distance;
- (id)createLocaleMap;
- (id)documentElements;
- (id)elementMatchingOutputRegion:(id)region;
- (id)filterTextRectanglesFromRectangleObservations:(id)observations;
- (id)formRegionsExcluding:(id)excluding updateExcludedFields:(BOOL)fields;
- (id)markerFormatForListItem:(id)item;
- (id)normalizedSelectionQuadsForRange:(id)range;
- (id)proposedFormRegionForPoint:(CGPoint)point existingFields:(id)fields formSize:(CGSize)size;
- (id)proposedFormRegionForPoint:(CGPoint)point existingFormFields:(id)fields;
- (id)rangeOfLineForPosition:(id)position;
- (id)rangeOfWordForPosition:(id)position;
- (id)selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect addTranscript:(BOOL)transcript;
- (id)smallestSelectableRangeForPosition:(id)position;
- (id)zeroWidthStringOfLength:(unint64_t)length;
- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)types;
- (unint64_t)recognitionConfidence;
- (void)encodeWithCoder:(id)coder;
- (void)processListItemsItem:(id)item regionRange:(_NSRange)range indexSet:(id)set attributedString:(id)string textListClass:(Class)class;
- (void)processTableItem:(id)item regionRange:(_NSRange)range indexSet:(id)set attributedString:(id)string;
- (void)setRectangleObservations:(id)observations;
- (void)updateAttributedText;
- (void)updateMRCDataDetectors:(id)detectors;
- (void)updateTextDataDetectors;
- (void)updateVNDocumentObservation:(id)observation;
@end

@implementation VKCTextRecognitionResult

- (VKCTextRecognitionResult)initWithDocumentObservation:(id)observation mrcDataDetectors:(id)detectors imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  observationCopy = observation;
  detectorsCopy = detectors;
  v42.receiver = self;
  v42.super_class = VKCTextRecognitionResult;
  v12 = [(VKCTextRecognitionResult *)&v42 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DF00] now];
    creationDate = v12->_creationDate;
    v12->_creationDate = v13;

    getTranscript = [observationCopy getTranscript];
    text = v12->_text;
    v12->_text = getTranscript;

    getTitle = [observationCopy getTitle];
    getTranscript2 = [getTitle getTranscript];
    title = v12->_title;
    v12->_title = getTranscript2;

    getTitle2 = [observationCopy getTitle];
    titleObservation = v12->_titleObservation;
    v12->_titleObservation = getTitle2;

    getCRDocumentOutputRegion = [observationCopy getCRDocumentOutputRegion];
    v23 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:getCRDocumentOutputRegion shouldFilter:1];

    filteredTextDataDetectors = v12->_filteredTextDataDetectors;
    v12->_filteredTextDataDetectors = v23;
    v25 = v23;

    v26 = [(NSArray *)v25 vk_arrayByAddingObjectsFromNonNilArray:detectorsCopy];
    dataDetectors = v12->_dataDetectors;
    v12->_dataDetectors = v26;

    getCRDocumentOutputRegion2 = [observationCopy getCRDocumentOutputRegion];
    v29 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:getCRDocumentOutputRegion2 shouldFilter:0];
    unfilteredDataDetectors = v12->_unfilteredDataDetectors;
    v12->_unfilteredDataDetectors = v29;

    objc_storeStrong(&v12->_sourceVNDocument, observation);
    getCRDocumentOutputRegion3 = [observationCopy getCRDocumentOutputRegion];
    sourceDocument = v12->_sourceDocument;
    v12->_sourceDocument = getCRDocumentOutputRegion3;

    v12->_imageSize.width = width;
    v12->_imageSize.height = height;
    getCRDocumentOutputRegion4 = [observationCopy getCRDocumentOutputRegion];
    v34 = [VKCTextElementProcessor textElementsFromCRDocumentOutputRegion:getCRDocumentOutputRegion4];

    textElements = v12->_textElements;
    v12->_textElements = v34;
    v36 = v34;

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    operatingSystemVersionString = [processInfo operatingSystemVersionString];
    buildString = v12->_buildString;
    v12->_buildString = operatingSystemVersionString;

    normalizedTextLineBoundingBoxes = [(VKCTextRecognitionResult *)v12 normalizedTextLineBoundingBoxes];
    [(VKCTextRecognitionResult *)v12 updateInspectableElements];
    [(VKCTextRecognitionResult *)v12 updateAttributedText];
  }

  return v12;
}

- (void)updateVNDocumentObservation:(id)observation
{
  v24[1] = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  buildString = [(VKCTextRecognitionResult *)self buildString];

  if (!buildString)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    operatingSystemVersionString = [processInfo operatingSystemVersionString];
    [(VKCTextRecognitionResult *)self setBuildString:operatingSystemVersionString];
  }

  [(VKCTextRecognitionResult *)self setSourceVNDocument:observationCopy];
  getCRDocumentOutputRegion = [observationCopy getCRDocumentOutputRegion];
  [(VKCTextRecognitionResult *)self setSourceDocument:getCRDocumentOutputRegion];

  getTranscript = [observationCopy getTranscript];
  [(VKCTextRecognitionResult *)self setText:getTranscript];

  getTitle = [observationCopy getTitle];
  getTranscript2 = [getTitle getTranscript];
  [(VKCTextRecognitionResult *)self setTitle:getTranscript2];

  getTitle2 = [observationCopy getTitle];

  [(VKCTextRecognitionResult *)self setTitleObservation:getTitle2];
  sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
  v14 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:sourceDocument shouldFilter:1];
  [(VKCTextRecognitionResult *)self setFilteredTextDataDetectors:v14];

  sourceDocument2 = [(VKCTextRecognitionResult *)self sourceDocument];
  v16 = [VKCTextElementProcessor dataDetectorsFromCRDocumentOutputRegion:sourceDocument2 shouldFilter:0];
  [(VKCTextRecognitionResult *)self setUnfilteredTextDataDetectors:v16];

  sourceDocument3 = [(VKCTextRecognitionResult *)self sourceDocument];
  v18 = [VKCTextElementProcessor textElementsFromCRDocumentOutputRegion:sourceDocument3];

  textElements = self->_textElements;
  self->_textElements = v18;
  v20 = v18;

  [(VKCTextRecognitionResult *)self updateTextDataDetectors];
  [(VKCTextRecognitionResult *)self updateInspectableElements];
  [(VKCTextRecognitionResult *)self updateAttributedText];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v23 = @"updatedTypes";
  v24[0] = &unk_1F2C38E90;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  [defaultCenter postNotificationName:@"VKAnalysisDidUpdateNotification" object:self userInfo:v22];
}

- (void)updateMRCDataDetectors:(id)detectors
{
  v7[1] = *MEMORY[0x1E69E9840];
  [(VKCTextRecognitionResult *)self setMrcDataDetectors:detectors];
  [(VKCTextRecognitionResult *)self updateTextDataDetectors];
  [(VKCTextRecognitionResult *)self updateInspectableElements];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"updatedTypes";
  v7[0] = &unk_1F2C38EA8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [defaultCenter postNotificationName:@"VKAnalysisDidUpdateNotification" object:self userInfo:v5];
}

- (void)updateTextDataDetectors
{
  filteredTextDataDetectors = [(VKCTextRecognitionResult *)self filteredTextDataDetectors];
  v4 = filteredTextDataDetectors;
  v5 = MEMORY[0x1E695E0F0];
  if (filteredTextDataDetectors)
  {
    v5 = filteredTextDataDetectors;
  }

  v6 = v5;

  mrcDataDetectors = [(VKCTextRecognitionResult *)self mrcDataDetectors];
  v7 = [v6 vk_arrayByAddingObjectsFromNonNilArray:mrcDataDetectors];

  [(VKCTextRecognitionResult *)self setDataDetectors:v7];
}

- (NSArray)normalizedTextLineBoundingBoxes
{
  normalizedTextLineBoundingBoxes = self->_normalizedTextLineBoundingBoxes;
  if (!normalizedTextLineBoundingBoxes)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
    sourceVNDocument2 = [(VKCTextRecognitionResult *)self sourceVNDocument];
    getTranscript = [sourceVNDocument2 getTranscript];
    vk_range = [getTranscript vk_range];
    v10 = [sourceVNDocument textBlockWithCharacterRange:{vk_range, v9}];

    getLines = [v10 getLines];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__VKCTextRecognitionResult_normalizedTextLineBoundingBoxes__block_invoke;
    v16[3] = &unk_1E7BE5A08;
    v17 = v4;
    v12 = v4;
    [getLines enumerateObjectsUsingBlock:v16];

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
  sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
  layoutComponents = [sourceDocument layoutComponents];
  v4 = layoutComponents;
  if (layoutComponents)
  {
    v5 = layoutComponents;
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
  sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
  layoutComponents = [sourceDocument layoutComponents];
  text = [sourceDocument text];
  if (text)
  {
    v18 = text;
    v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text];
    v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = layoutComponents;
    v7 = layoutComponents;
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
          v13 = [sourceDocument rangeOfContentRegion:v12];
          v15 = v14;
          type = [v12 type];
          if (type == 256)
          {
            [(VKCTextRecognitionResult *)self processListItemsItem:v12 regionRange:v13 indexSet:v15 attributedString:v6 textListClass:v20, [(VKCTextRecognitionResult *)self textListClass]];
          }

          else if (type == 64)
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
    text = v18;
    layoutComponents = v19;
  }
}

- (void)processTableItem:(id)item regionRange:(_NSRange)range indexSet:(id)set attributedString:(id)string
{
  location = range.location;
  v65 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  stringCopy = string;
  v10 = objc_opt_class();
  v52 = itemCopy;
  v11 = VKCheckedDynamicCast(v10, itemCopy);
  cells = [v11 cells];
  v13 = objc_alloc_init(MEMORY[0x1E69DB860]);
  v48 = v11;
  colQuads = [v11 colQuads];
  v51 = v13;
  [v13 setNumberOfColumns:{objc_msgSend(colQuads, "count")}];

  v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [cells count];
    request = [(VKCTextRecognitionResult *)self request];
    *buf = 134218240;
    v62 = v16;
    v63 = 1024;
    requestID = [request requestID];
    _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Beginning tableProcessing with cellCount: %lu, id: %d", buf, 0x12u);
  }

  selfCopy = self;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v18 = cells;
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
        colRange = [v24 colRange];
        v27 = v26;
        rowRange = [v24 rowRange];
        v30 = [objc_alloc(MEMORY[0x1E69DB868]) initWithTable:v51 startingRow:rowRange rowSpan:v29 startingColumn:colRange columnSpan:v27];
        defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
        v32 = [defaultParagraphStyle mutableCopy];

        v59 = v30;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [v32 setTextBlocks:v33];

        v34 = [v52 rangeOfContentRegion:v24];
        v36 = v35;
        vk_range = [stringCopy vk_range];
        v39 = VKMClampRange(v34 + location, v36 + 1, vk_range, v38);
        v41 = v40;
        v57 = v22;
        v58 = v32;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        [stringCopy setAttributes:v42 range:{v39, v41}];
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
    request2 = [(VKCTextRecognitionResult *)selfCopy request];
    requestID2 = [request2 requestID];
    *buf = 134218240;
    v62 = v44;
    v63 = 1024;
    requestID = requestID2;
    _os_log_impl(&dword_1B4335000, v43, OS_LOG_TYPE_DEFAULT, "Table processing complete with cellCount: %lu, id: %d", buf, 0x12u);

    v18 = obj;
  }
}

- (void)processListItemsItem:(id)item regionRange:(_NSRange)range indexSet:(id)set attributedString:(id)string textListClass:(Class)class
{
  location = range.location;
  v70 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  setCopy = set;
  stringCopy = string;
  v11 = objc_opt_class();
  v52 = itemCopy;
  v12 = VKCheckedDynamicCast(v11, itemCopy);
  items = [v12 items];

  v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [items count];
    request = [(VKCTextRecognitionResult *)self request];
    *buf = 134218240;
    v67 = v15;
    v68 = 1024;
    requestID = [request requestID];
    _os_log_impl(&dword_1B4335000, v14, OS_LOG_TYPE_DEFAULT, "Beginning list with itemCount: %lu, id: %d", buf, 0x12u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = items;
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
        markerFormat = [v18 markerFormat];
        v23 = [markerFormat isEqualToString:v21];

        if (v23)
        {
          v57 = v18;
        }

        else
        {
          v24 = [[class alloc] initWithMarkerFormat:v21 options:0];

          v57 = v24;
        }

        v25 = [v52 rangeOfContentRegion:v20];
        v27 = v26;
        vk_range = [stringCopy vk_range];
        v30 = VKMClampRange(v25 + location, v27 + 1, vk_range, v29);
        v32 = v31;
        markerRange = [v20 markerRange];
        v34 = v33;
        v35 = stringCopy;
        v36 = [stringCopy attributesAtIndex:v30 longestEffectiveRange:0 inRange:{v30, v32}];
        v37 = [v36 objectForKeyedSubscript:v55];
        v38 = [v37 mutableCopy];

        if (!v38)
        {
          defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
          v38 = [defaultParagraphStyle mutableCopy];
        }

        v64 = v57;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        [v38 setTextLists:v40];

        stringCopy = v35;
        if (!-[VKCTextRecognitionResult shouldShowTextMarkerForMarkerType:](self, "shouldShowTextMarkerForMarkerType:", [v20 markerType]))
        {
          v41 = [(VKCTextRecognitionResult *)self zeroWidthStringOfLength:v34];
          [v35 replaceCharactersInRange:markerRange + v30 withString:{v34, v41}];
        }

        v62 = v55;
        v63 = v38;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        [v35 addAttributes:v42 range:{v30, v32}];

        [setCopy addIndexesInRange:{v30, v32}];
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
    request2 = [(VKCTextRecognitionResult *)self request];
    requestID2 = [request2 requestID];
    *buf = 134218240;
    v67 = v44;
    v68 = 1024;
    requestID = requestID2;
    _os_log_impl(&dword_1B4335000, v43, OS_LOG_TYPE_DEFAULT, "List processing complete with itemCount: %lu, id: %D", buf, 0x12u);
  }
}

- (BOOL)containsRichPasteboardElementsForRange:(id)range
{
  rangeCopy = range;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  richPasteBoardIndexes = [(VKCTextRecognitionResult *)self richPasteBoardIndexes];
  rangeArray = [rangeCopy rangeArray];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__VKCTextRecognitionResult_containsRichPasteboardElementsForRange___block_invoke;
  v9[3] = &unk_1E7BE5A30;
  v11 = &v12;
  v7 = richPasteBoardIndexes;
  v10 = v7;
  [rangeArray enumerateObjectsUsingBlock:v9];

  LOBYTE(rangeArray) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return rangeArray;
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

- (id)zeroWidthStringOfLength:(unint64_t)length
{
  lengthCopy = length;
  if (length >= 6)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    do
    {
      [(__CFString *)v4 appendString:@"🎛"];
      --lengthCopy;
    }

    while (lengthCopy);
  }

  else
  {
    v4 = off_1E7BE5BE8[length];
  }

  return v4;
}

- (id)markerFormatForListItem:(id)item
{
  markerType = [item markerType];
  if ((markerType - 2) > 4)
  {
    v4 = MEMORY[0x1E69DB710];
  }

  else
  {
    v4 = qword_1E7BE5C18[markerType - 2];
  }

  v5 = *v4;

  return v5;
}

- (id)documentElements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  buildString = [(VKCTextRecognitionResult *)self buildString];
  v6 = [v4 stringWithFormat:@"Build: %@", buildString];
  v7 = [VKCElementInfo infoWithText:v6 parent:0];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  creationDate = [(VKCTextRecognitionResult *)self creationDate];
  vk_localDateWithSeconds = [creationDate vk_localDateWithSeconds];
  v11 = [v8 stringWithFormat:@"Date: %@", vk_localDateWithSeconds];
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

  requestLocales = [(VKCTextRecognitionResult *)self requestLocales];
  v25 = [requestLocales vk_compactMap:&__block_literal_global_16];

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

  requestBarcodeSymbologies = [(VKCTextRecognitionResult *)self requestBarcodeSymbologies];
  v28 = [requestBarcodeSymbologies vk_compactMap:&__block_literal_global_268];

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
    createLocaleMap = [(VKCTextRecognitionResult *)self createLocaleMap];
    v5 = self->_localeMap;
    self->_localeMap = createLocaleMap;

    localeMap = self->_localeMap;
  }

  return localeMap;
}

- (id)createLocaleMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
  sourceDocument2 = [(VKCTextRecognitionResult *)self sourceDocument];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__VKCTextRecognitionResult_createLocaleMap__block_invoke;
  v11[3] = &unk_1E7BE5A78;
  v6 = v3;
  v12 = v6;
  v13 = sourceDocument;
  v7 = sourceDocument;
  [sourceDocument2 enumerateContentsWithTypes:8 usingBlock:v11];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataDetectors = [(VKCTextRecognitionResult *)self dataDetectors];
  v14 = [dataDetectors vk_objectsPassingTest:&__block_literal_global_279];

  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  [coderCopy encodeObject:sourceVNDocument forKey:@"sourceDocument"];

  [coderCopy encodeObject:v14 forKey:@"MRCDD"];
  [(VKCTextRecognitionResult *)self imageSize];
  *&v7 = v7;
  [coderCopy encodeFloat:@"imageWidth" forKey:v7];
  [(VKCTextRecognitionResult *)self imageSize];
  *&v9 = v8;
  [coderCopy encodeFloat:@"imageHeight" forKey:v9];
  buildString = [(VKCTextRecognitionResult *)self buildString];
  [coderCopy encodeObject:buildString forKey:@"build"];

  creationDate = [(VKCTextRecognitionResult *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"date"];

  requestBarcodeSymbologies = [(VKCTextRecognitionResult *)self requestBarcodeSymbologies];
  [coderCopy encodeObject:requestBarcodeSymbologies forKey:@"barcodeSymbologies"];

  requestLocales = [(VKCTextRecognitionResult *)self requestLocales];
  [coderCopy encodeObject:requestLocales forKey:@"locales"];
}

- (VKCTextRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceDocument"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MRCDD"];
  [coderCopy decodeFloatForKey:@"imageWidth"];
  v7 = v6;
  [coderCopy decodeFloatForKey:@"imageHeight"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v12 = [(VKCTextRecognitionResult *)self initWithDocumentObservation:v22 mrcDataDetectors:v5 imageSize:v7, v9];
  [(VKCTextRecognitionResult *)v12 setCreationDate:v10];
  [(VKCTextRecognitionResult *)v12 setBuildString:v11];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"locales"];
  [(VKCTextRecognitionResult *)v12 setRequestLocales:v16];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"barcodeSymbologies"];

  [(VKCTextRecognitionResult *)v12 setRequestBarcodeSymbologies:v20];
  [(VKCTextRecognitionResult *)v12 updateInspectableElements];

  return v12;
}

- (id)elementMatchingOutputRegion:(id)region
{
  v18 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  inspectableElements = [(VKCTextRecognitionResult *)self inspectableElements];
  v6 = [inspectableElements countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(inspectableElements);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) recursiveSearchForCROutputRegion:regionCopy];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [inspectableElements countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)types
{
  dataDetectors = [(VKCTextRecognitionResult *)self dataDetectors];
  v5 = dataDetectors;
  if (types == -1)
  {
    v6 = [dataDetectors count];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__VKCTextRecognitionResult_countOfDataDetectorsWithTypes___block_invoke;
    v9[3] = &__block_descriptor_40_e43_B32__0__VKCBaseDataDetectorElement_8Q16_B24l;
    v9[4] = types;
    v6 = [dataDetectors vk_countOfObjectsPassingTest:v9];
  }

  v7 = v6;

  return v7;
}

- (NSArray)allLineQuads
{
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v3 = [sourceVNDocument blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];

  v4 = [v3 vk_compactMap:&__block_literal_global_285];

  return v4;
}

- (void)setRectangleObservations:(id)observations
{
  objc_storeStrong(&self->_rectangleObservations, observations);
  observationsCopy = observations;
  v6 = [(VKCTextRecognitionResult *)self filterTextRectanglesFromRectangleObservations:self->_rectangleObservations];

  [(VKCTextRecognitionResult *)self setFilteredNormalizedRectangleQuads:v6];
}

- (id)filterTextRectanglesFromRectangleObservations:(id)observations
{
  if (observations)
  {
    observationsCopy = observations;
    sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
    boundingQuad = [sourceDocument boundingQuad];
    [boundingQuad normalizationSize];
    v8 = v7;
    v10 = v9;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__VKCTextRecognitionResult_filterTextRectanglesFromRectangleObservations___block_invoke;
    v14[3] = &unk_1E7BE5B08;
    v16 = v8;
    v17 = v10;
    v15 = sourceDocument;
    v11 = sourceDocument;
    v12 = [observationsCopy vk_compactMap:v14];
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
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  getTranscript = [sourceVNDocument getTranscript];
  vk_range = [getTranscript vk_range];
  v8 = [(VKTextRange *)v3 initWithRange:vk_range, v7];

  return v8;
}

- (id)adjustTextRangeToSelectableRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy containsMultipleRanges])
  {
    rangeArray = [rangeCopy rangeArray];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__VKCTextRecognitionResult_adjustTextRangeToSelectableRange___block_invoke;
    v9[3] = &unk_1E7BE5B30;
    v9[4] = self;
    rangeCopy = [rangeArray vk_compactMap:v9];

    v6 = [VKTextRange rangeWithVKRanges:rangeCopy];
  }

  else
  {
    v6 = [(VKCTextRecognitionResult *)self _adjustTextRangeToSelectableRange:rangeCopy];
  }

  v7 = v6;

  return v7;
}

- (id)_adjustTextRangeToSelectableRange:(id)range
{
  v35 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  start = [(VKTextRange *)rangeCopy start];
  v7 = [(VKTextRange *)rangeCopy end];
  text = [(VKCTextRecognitionResult *)self text];
  if (![text length])
  {
    v15 = rangeCopy;
    goto LABEL_19;
  }

  vk_range = [text vk_range];
  v11 = v10;
  offset = [start offset];
  if (VKMRangeContainsIndex(vk_range, v11, offset))
  {
    if (([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(text, "characterAtIndex:", offset)}] & 1) == 0)
    {
      v13 = [(VKCTextRecognitionResult *)self smallestSelectableRangeForPosition:start];
      start2 = [v13 start];

      start = start2;
    }
  }

  else
  {
    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      offset2 = [start offset];
      v37.location = vk_range;
      v37.length = v11;
      v22 = NSStringFromRange(v37);
      request = [(VKCTextRecognitionResult *)self request];
      *buf = 134218498;
      v30 = offset2;
      v31 = 2112;
      v32 = v22;
      v33 = 1024;
      requestID = [request requestID];
      _os_log_error_impl(&dword_1B4335000, v16, OS_LOG_TYPE_ERROR, "AdjustTextRange, but the start offset is outside of the text's total range. StartOffset:%lu range %@, id: %d", buf, 0x1Cu);
    }
  }

  offset3 = [v7 offset];
  v18 = [text length];
  if (offset3 >= v18 - 1)
  {
    offset3 = v18 - 1;
  }

  if (!VKMRangeContainsIndex(vk_range, v11, offset3))
  {
    v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      offset4 = [v7 offset];
      v38.location = vk_range;
      v38.length = v11;
      v24 = NSStringFromRange(v38);
      request2 = [(VKCTextRecognitionResult *)self request];
      requestID2 = [request2 requestID];
      *buf = 134218498;
      v30 = offset4;
      v31 = 2112;
      v32 = v24;
      v33 = 1024;
      requestID = requestID2;
      _os_log_error_impl(&dword_1B4335000, v20, OS_LOG_TYPE_ERROR, "AdjustTextRange, but the end offset is outside of the text's total range. endOffset:%lu range %@, id: %d", buf, 0x1Cu);
    }

    v19 = v20;
    goto LABEL_17;
  }

  if (([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(text, "characterAtIndex:", offset3)}] & 1) == 0)
  {
    v19 = [(VKCTextRecognitionResult *)self smallestSelectableRangeForPosition:v7];
    [v19 end];
    v7 = v20 = v7;
LABEL_17:
  }

  v15 = [[VKTextRange alloc] initWithStart:start end:v7];

LABEL_19:

  return v15;
}

- (id)smallestSelectableRangeForPosition:(id)position
{
  positionCopy = position;
  sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
  offset = [positionCopy offset];

  text = [(VKCTextRecognitionResult *)self text];
  v8 = [text length] - 1;

  if (offset >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = offset;
  }

  v10 = [sourceDocument contentRegionOfType:48 containingTextAtIndex:v9];
  if (v10)
  {
    v11 = [sourceDocument rangeOfContentRegion:v10];
    v13 = [[VKTextRange alloc] initWithRange:v11, v12];
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"((region) != nil)" functionName:"[VKCTextRecognitionResult smallestSelectableRangeForPosition:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "region"];
    v13 = 0;
  }

  return v13;
}

- (id)rangeOfWordForPosition:(id)position
{
  positionCopy = position;
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  offset = [positionCopy offset];

  text = [(VKCTextRecognitionResult *)self text];
  v8 = [text length] - 1;

  if (offset >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = offset;
  }

  v10 = [sourceVNDocument textBlockOfTypes:16 containingTextAtIndex:v9];
  v11 = [sourceVNDocument rangeOfTextBlock:v10];
  v13 = [VKTextRange rangeWithNSRange:v11, v12];

  return v13;
}

- (id)rangeOfLineForPosition:(id)position
{
  positionCopy = position;
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  offset = [positionCopy offset];

  text = [(VKCTextRecognitionResult *)self text];
  v8 = [text length] - 1;

  if (offset >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = offset;
  }

  v10 = [sourceVNDocument textBlockOfTypes:8 containingTextAtIndex:v9 & ~(v9 >> 63)];
  v11 = [sourceVNDocument rangeOfTextBlock:v10];
  v13 = [VKTextRange rangeWithNSRange:v11, v12];

  return v13;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  vk_documentRange = [(VKCTextRecognitionResult *)self vk_documentRange];
  v7 = [(VKCTextRecognitionResult *)self closestPositionToPoint:vk_documentRange withinRange:0 maxDistance:x, y];

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

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range maxDistance:(int64_t)distance
{
  rangeCopy = range;
  VKMFlipPoint();
  v9 = v8;
  v11 = v10;
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v13 = [sourceVNDocument closestTextBlockOfTypes:48 toPoint:distance maximumPixelDistance:{v9, v11}];
  vk_textBlock = [v13 vk_textBlock];

  if (vk_textBlock && (v15 = [rangeCopy nsRange], v17 = v16, v18 = objc_msgSend(sourceVNDocument, "rangeOfTextBlock:", vk_textBlock), v20 = VKMClampRange(v18, v19, v15, v17), v20 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v23 = v20;
    v24 = v21;
    textDelegate = [(VKCTextRecognitionResult *)self textDelegate];

    if (textDelegate)
    {
      textDelegate2 = [(VKCTextRecognitionResult *)self textDelegate];
      v27 = [textDelegate2 selectedRangeForTextRecognitionResult:self];
      nsRange = [v27 nsRange];
      v29 = v28;

      textDelegate3 = [(VKCTextRecognitionResult *)self textDelegate];
      v31 = [textDelegate3 preSelectionChangeSelectedRangeForTextRecognitionResult:self];

      textDelegate4 = [(VKCTextRecognitionResult *)self textDelegate];
      v33 = [textDelegate4 draggedRectEdgeForTextRecognitionResult:self];

      v34 = v23 + v24;
      if (nsRange == v23 && v29 == v24 || v34 < 1 || nsRange + v29 > v34 || !v29)
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

- (id)closestBlockOfType:(unint64_t)type toPoint:(CGPoint)point
{
  VKMFlipPoint();
  v7 = v6;
  v9 = v8;
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  v11 = [sourceVNDocument closestTextBlockOfTypes:type toPoint:0x7FFFFFFFFFFFFFFFLL maximumPixelDistance:{v7, v9}];

  return v11;
}

- (CGRect)firstRectForRange:(id)range documentView:(id)view contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  rangeCopy = range;
  sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
  nsRange = [rangeCopy nsRange];
  v16 = v15;

  v17 = [sourceVNDocument textBlockWithCharacterRange:{nsRange, v16}];

  vkQuad = [v17 vkQuad];
  v19 = [vkQuad quadByConvertingFromNormalizedRectToView:viewCopy contentsRect:{x, y, width, height}];

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

- (id)selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect addTranscript:(BOOL)transcript
{
  transcriptCopy = transcript;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  rangeCopy = range;
  if ([rangeCopy containsMultipleRanges])
  {
    rangeArray = [rangeCopy rangeArray];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__VKCTextRecognitionResult_selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke;
    v18[3] = &unk_1E7BE5B58;
    v18[4] = self;
    v19 = viewCopy;
    v20 = x;
    v21 = y;
    v22 = width;
    v23 = height;
    v24 = transcriptCopy;
    height = [rangeArray vk_flatMap:v18];
  }

  else
  {
    height = [(VKCTextRecognitionResult *)self _selectionRectsForRange:rangeCopy documentView:viewCopy contentRect:transcriptCopy addTranscript:x, y, width, height];
  }

  return height;
}

- (id)_selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect addTranscript:(BOOL)transcript
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  viewCopy = view;
  if ([rangeCopy isEmpty])
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
    nsRange = [rangeCopy nsRange];
    v19 = [sourceVNDocument textBlockWithCharacterRange:{nsRange, v18}];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    getLines = [v19 getLines];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __91__VKCTextRecognitionResult__selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke;
    v26[3] = &unk_1E7BE5B80;
    v29 = x;
    v30 = y;
    v31 = width;
    v32 = height;
    transcriptCopy = transcript;
    v27 = viewCopy;
    v28 = v20;
    v22 = v20;
    [getLines enumerateObjectsUsingBlock:v26];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __91__VKCTextRecognitionResult__selectionRectsForRange_documentView_contentRect_addTranscript___block_invoke_2;
    v24[3] = &__block_descriptor_33_e14__32__0_8q16q24l;
    transcriptCopy2 = transcript;
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

- (id)normalizedSelectionQuadsForRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy containsMultipleRanges])
  {
    rangeArray = [rangeCopy rangeArray];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__VKCTextRecognitionResult_normalizedSelectionQuadsForRange___block_invoke;
    v8[3] = &unk_1E7BE5BC8;
    v8[4] = self;
    v6 = [rangeArray vk_flatMap:v8];
  }

  else
  {
    v6 = [(VKCTextRecognitionResult *)self _normalizedSelectionQuadsForRange:rangeCopy];
  }

  return v6;
}

- (id)_normalizedSelectionQuadsForRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy containsMultipleRanges])
  {
    request = [(VKCTextRecognitionResult *)self request];
    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "!range.containsMultipleRanges", "-[VKCTextRecognitionResult _normalizedSelectionQuadsForRange:]", 0, 0, @"_normalizedSelectionQuadsForRange being sent a range with multiple ranges id: %d", [request requestID]);
  }

  if ([rangeCopy isEmpty])
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    sourceVNDocument = [(VKCTextRecognitionResult *)self sourceVNDocument];
    nsRange = [rangeCopy nsRange];
    v10 = [sourceVNDocument textBlockWithCharacterRange:{nsRange, v9}];
    getLines = [v10 getLines];
    v6 = [getLines vk_compactMap:&__block_literal_global_308];
  }

  return v6;
}

- (id)formRegionsExcluding:(id)excluding updateExcludedFields:(BOOL)fields
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(CRDocumentOutputRegion *)self->_sourceDocument detectedFieldRegionsExcludingFields:excluding updateExcludedFields:fields];
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
        uTF8String = [v12 UTF8String];
        request = [(VKCTextRecognitionResult *)self request];
        requestID = [request requestID];
        *buf = v16;
        v20 = uTF8String;
        v21 = 1024;
        v22 = requestID;
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

- (id)proposedFormRegionForPoint:(CGPoint)point existingFields:(id)fields formSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = point.y;
  x = point.x;
  v26 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = fieldsCopy;
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

- (id)proposedFormRegionForPoint:(CGPoint)point existingFormFields:(id)fields
{
  v4 = [(CRDocumentOutputRegion *)self->_sourceDocument proposedFieldForPoint:fields existingFields:point.x, point.y];
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
        uTF8String = [v10 UTF8String];
        request = [(VKCTextRecognitionResult *)self request];
        requestID = [request requestID];
        *buf = v14;
        v18 = uTF8String;
        v19 = 1024;
        v20 = requestID;
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