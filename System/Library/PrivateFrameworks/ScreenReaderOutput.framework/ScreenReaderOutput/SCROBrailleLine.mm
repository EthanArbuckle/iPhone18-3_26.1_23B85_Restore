@interface SCROBrailleLine
+ (void)initialize;
- (BOOL)_blink:(BOOL)a3;
- (BOOL)_deleteAtCursorSilently:(BOOL)a3;
- (BOOL)_forwardDeleteAtCursorSilently:(BOOL)a3;
- (BOOL)_insertBrailleStringAtCursor:(id)a3 modifiers:(id)a4 silently:(BOOL)a5;
- (BOOL)_selectBrailleRange:(_NSRange)a3 selectionBegin:(int64_t *)a4 selectionEnd:(int64_t *)a5;
- (BOOL)_setMainCells:(const char *)a3 length:(int64_t)a4 forZoomOut:(BOOL)a5;
- (BOOL)canPanRight;
- (BOOL)display;
- (BOOL)getStatusRouterIndex:(int64_t *)a3 forRawIndex:(int64_t)a4;
- (BOOL)hasEdits;
- (BOOL)insertBrailleStringAtCursor:(id)a3 modifiers:(id)a4;
- (BOOL)moveCursorLeft;
- (BOOL)moveCursorRight;
- (BOOL)moveCursorToRouterIndex:(unint64_t)a3 forwardToScreenReader:(BOOL *)a4 updateRouterLocation:(int64_t *)a5;
- (BOOL)panBeginning;
- (BOOL)panEnd;
- (BOOL)panLeft;
- (BOOL)panRight;
- (BOOL)selectContiguousBrailleRange:(unint64_t)a3 selectionBegin:(int64_t *)a4 selectionEnd:(int64_t *)a5;
- (BOOL)selectEntireLine:(int64_t *)a3 selectionEnd:(int64_t *)a4;
- (BOOL)selectUpToRouterIndex:(unint64_t)a3 selectionBegin:(int64_t *)a4 selectionEnd:(int64_t *)a5;
- (BOOL)wantsEdits;
- (BRLTBrailleStateManagerDelegate)translationDelegate;
- (NSAttributedString)editingString;
- (NSData)imageData;
- (NSString)description;
- (SCROBrailleLine)initWithDriver:(id)a3 mainSize:(int64_t)a4 statusSize:(int64_t)a5;
- (_NSRange)textRangeForBrailleRange:(_NSRange)a3;
- (id)_applySuggestionCellsToPrintBraille:(id)a3;
- (id)imageCanvas;
- (id)newLineDescriptor;
- (id)newLineDescriptorWithoutPadding;
- (id)printBrailleForText:(id)a3 language:(id)a4 mode:(unint64_t)a5 textPositionsRange:(_NSRange)a6 locations:(id *)a7 textFormattingRanges:(id)a8;
- (id)textForPrintBraille:(id)a3 language:(id)a4 mode:(unint64_t)a5 locations:(id *)a6;
- (id)translatedBrailleForTableIdentifier:(id)a3;
- (int64_t)_indexOfWhitespaceAfterIBeam:(int64_t)a3 inLine:(id)a4;
- (int64_t)_indexOfWhitespaceBeforeIBeam:(int64_t)a3 inLine:(id)a4;
- (int64_t)_selectionForOffsetIndex:(int64_t)a3;
- (int64_t)tokenForRouterIndex:(int64_t *)a3 location:(int64_t *)a4 appToken:(id *)a5;
- (unint64_t)numberOfTextLinesInPlanarBraille;
- (void)_flush;
- (void)_flushRealStatus;
- (void)_updateOffsets;
- (void)addAttributedPaddingToLineBuffer:(id)a3;
- (void)addAttributedStringToLineBuffer:(id)a3 brailleOffset:(unint64_t)a4;
- (void)blinker;
- (void)brailleDisplayDeletedCharacter:(id)a3;
- (void)brailleDisplayInsertedCharacter:(id)a3 modifiers:(id)a4;
- (void)brailleDisplayStringDidChange:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5 modifiers:(id)a6;
- (void)dealloc;
- (void)didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5;
- (void)didInsertScriptString:(id)a3;
- (void)enumerateWordsBetweenCharacters:(id)a3 text:(id)a4 inRange:(_NSRange)a5 usingBlock:(id)a6;
- (void)planarPanLeft;
- (void)planarPanRight;
- (void)replaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(unint64_t)a5;
- (void)scriptSelectionDidChange:(_NSRange)a3;
- (void)setAnyUnread:(BOOL)a3;
- (void)setCurrentUnread:(BOOL)a3;
- (void)setDisplayEnabled:(BOOL)a3;
- (void)setDisplayMode:(int)a3;
- (void)setFormatter:(id)a3;
- (void)setImageData:(id)a3;
- (void)setLineFocus:(int)a3;
- (void)setMainSize:(int64_t)a3;
- (void)setMasterStatusCellIndex:(int64_t)a3;
- (void)setPlanarData:(id)a3;
- (void)setRealStatus:(id)a3;
- (void)setShowDotsSevenAndEight:(BOOL)a3;
- (void)setStatusSize:(int64_t)a3;
- (void)setVirtualStatus:(id)a3 alignment:(int)a4;
- (void)translate;
@end

@implementation SCROBrailleLine

+ (void)initialize
{
  v11 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v10[0] = kSCROBrailleUnicodeCharacterSpace;
    v10[1] = kSCROBrailleUnicodeCharacterDot7;
    v10[2] = kSCROBrailleUnicodeCharacterDot8;
    v10[3] = kSCROBrailleUnicodeCharacterDot78;
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v10 length:4];
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v2];
    v4 = _WhitespaceSet;
    _WhitespaceSet = v3;

    v5 = 0;
    v6 = &kSCROBrailleUnicodeCharacterBase;
    v7 = vld1q_dup_s16(v6);
    do
    {
      *&v9[v5] = v7;
      v5 += 8;
    }

    while (v5 != 256);
    _SpaceString = CFStringCreateWithCharacters(0, v9, 256);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (SCROBrailleLine)initWithDriver:(id)a3 mainSize:(int64_t)a4 statusSize:(int64_t)a5
{
  v9 = a3;
  v32.receiver = self;
  v32.super_class = SCROBrailleLine;
  v10 = [(SCROBrailleLine *)&v32 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_brailleDriver, a3);
    v12 = objc_alloc_init(MEMORY[0x277CCAB48]);
    lineBuffer = v11->_lineBuffer;
    v11->_lineBuffer = v12;

    v11->_lineOffset = 0;
    v11->_displayMode = 0;
    v11->_focusRange = xmmword_26498C6C0;
    v11->_selectionRange = xmmword_26498C6C0;
    v11->_suggestionRange = xmmword_26498C6C0;
    v11->_masterStatusCellIndex = 0;
    v11->_iBeamLocation = -1;
    v11->_showDotsSevenAndEight = 1;
    v11->_displayEnabled = 1;
    *&v11->_wordWrapEnabled = 257;
    v11->_isUIString = 0;
    v14 = [MEMORY[0x277CBEB18] array];
    pendingBrailleStringDictionaries = v11->_pendingBrailleStringDictionaries;
    v11->_pendingBrailleStringDictionaries = v14;

    v16 = objc_alloc_init(SCROBrailleLineVirtualStatus);
    virtualStatus = v11->_virtualStatus;
    v11->_virtualStatus = v16;

    [(SCROBrailleLineVirtualStatus *)v11->_virtualStatus setAlignment:0];
    [(SCROBrailleLineVirtualStatus *)v11->_virtualStatus setLength:0];
    [(SCROBrailleLineVirtualStatus *)v11->_virtualStatus setCells:0];
    brailleDriver = v11->_brailleDriver;
    v19 = objc_opt_respondsToSelector();
    v11->_supportsCanvas = v19 & 1;
    if (v19)
    {
      v20 = [[SCRO2DBraillePlane alloc] initWithDriver:v11->_brailleDriver];
      braillePlane = v11->_braillePlane;
      v11->_braillePlane = v20;

      v22 = [(SCROBrailleDriverProtocol *)v11->_brailleDriver canvas];
      v23 = [v22 descriptor];
      v24 = [v23 height];

      if (v24)
      {
        v11->_hasNonemptyCanvas = 1;
      }
    }

    v25 = v11->_brailleDriver;
    if (objc_opt_respondsToSelector() & 1) != 0 && [(SCROBrailleDriverProtocol *)v25 shouldUseMultiRow]&& (objc_opt_respondsToSelector())
    {
      v26 = objc_opt_respondsToSelector();

      v11->_shouldUseMultiRow = v26 & 1;
      if (v26)
      {
        v27 = [[SCRO2DBraillePlane alloc] initWithDriver:v11->_brailleDriver];
        v28 = v11->_braillePlane;
        v11->_braillePlane = v27;
      }
    }

    else
    {

      v11->_shouldUseMultiRow = 0;
    }

    v29 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    flushLock = v11->_flushLock;
    v11->_flushLock = v29;

    [(SCROBrailleLine *)v11 setMainSize:a4];
    [(SCROBrailleLine *)v11 setStatusSize:a5];
    v11->_inputMode = 1;
  }

  return v11;
}

- (id)imageCanvas
{
  if (self->_supportsCanvas)
  {
    v4 = [(SCROBrailleDriverProtocol *)self->_brailleDriver canvas];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setImageData:(id)a3
{
  if (self->_supportsCanvas)
  {
    v5 = a3;
    v6 = [(SCROBrailleLine *)self imageCanvas];
    [v6 setImageData:v5];

    brailleDriver = self->_brailleDriver;

    [(SCROBrailleDriverProtocol *)brailleDriver displayCanvas];
  }
}

- (NSData)imageData
{
  v2 = [(SCROBrailleLine *)self imageCanvas];
  v3 = [v2 imageData];

  return v3;
}

- (void)setPlanarData:(id)a3
{
  v4 = a3;
  v27 = v4;
  if (self->_hasNonemptyCanvas || self->_shouldUseMultiRow)
  {
    [(SCRO2DBraillePlane *)self->_braillePlane setBrailleData:v4];
  }

  else
  {
    v5 = [(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize];
    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    v7 = +[SCROBrailleUISettingsManager sharedInstance];
    v8 = [v7 zoomOutNumCellsPerElement];

    v9 = [v27 focusedIndex];
    v10 = [v27 strings];
    v11 = [v10 count];

    v25 = v5;
    if (v9 >= v11)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v26 = v5 / (v8 + 1);
      v14 = v27;
      do
      {
        v15 = [v14 strings];
        v16 = [v15 objectAtIndex:v9];

        v17 = +[SCROBrailleTranslationManager sharedManager];
        v18 = [v16 localizedLowercaseString];
        v19 = [v17 printBrailleForText:v18 language:0 mode:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:{0, 0}];

        v20 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"⠀"];
        v21 = [v19 stringByTrimmingCharactersInSet:v20];

        v6[v13++] = 0;
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            if (i < [v21 length])
            {
              v6[v13] = [v21 characterAtIndex:i];
            }

            ++v13;
          }
        }

        ++v12;

        if (v12 >= v26)
        {
          break;
        }

        ++v9;
        v23 = [v27 strings];
        v24 = [v23 count];

        v14 = v27;
      }

      while (v9 < v24);
    }

    if (v25 > v13)
    {
      bzero(&v6[v13], v25 - v13);
    }

    [(SCROBrailleLine *)self _setMainCells:v6 length:v25 forZoomOut:1];
    free(v6);
  }
}

- (unint64_t)numberOfTextLinesInPlanarBraille
{
  if (self->_supportsCanvas)
  {
    v3 = [(SCROBrailleLine *)self imageCanvas];
    v4 = [v3 descriptor];
    v5 = [v4 numberOfTextLinesAvailable];

    return v5;
  }

  else if (self->_shouldUseMultiRow)
  {
    brailleDriver = self->_brailleDriver;

    return [(SCROBrailleDriverProtocol *)brailleDriver rowCount];
  }

  else
  {
    v8 = +[SCROBrailleUISettingsManager sharedInstance];
    v9 = [v8 zoomOutNumCellsPerElement] + 1;

    return [(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize]/ v9;
  }
}

- (void)dealloc
{
  displayBuffer = self->_displayBuffer;
  if (displayBuffer)
  {
    free(displayBuffer);
  }

  mainCellsBuffer = self->_mainCellsBuffer;
  if (mainCellsBuffer)
  {
    free(mainCellsBuffer);
  }

  displayFilter = self->_displayFilter;
  if (displayFilter)
  {
    free(displayFilter);
  }

  blinkerBuffer = self->_blinkerBuffer;
  if (blinkerBuffer)
  {
    free(blinkerBuffer);
  }

  statusFilter = self->_statusFilter;
  if (statusFilter)
  {
    free(statusFilter);
  }

  v8.receiver = self;
  v8.super_class = SCROBrailleLine;
  [(SCROBrailleLine *)&v8 dealloc];
}

- (void)setMainSize:(int64_t)a3
{
  if (self->_size != a3)
  {
    self->_size = a3;
    v5 = malloc_type_realloc(self->_displayBuffer, a3, 0x100004077774924uLL);
    self->_displayBuffer = v5;
    bzero(v5, self->_size);
    v6 = malloc_type_realloc(self->_mainCellsBuffer, a3, 0x100004077774924uLL);
    self->_mainCellsBuffer = v6;
    bzero(v6, self->_size);
    v7 = malloc_type_realloc(self->_displayFilter, a3, 0x100004077774924uLL);
    self->_displayFilter = v7;
    bzero(v7, self->_size);
    v8 = malloc_type_realloc(self->_blinkerBuffer, a3, 0x100004077774924uLL);
    self->_blinkerBuffer = v8;
    bzero(v8, self->_size);
    [(SCROBrailleLine *)self _updateOffsets];
    self->_needsDisplayFlush = 1;
    self->_brailleChunksAreDirty = 1;
    self->_needsFocusFlush = 1;
  }
}

- (void)setStatusSize:(int64_t)a3
{
  if (self->_statusSize != a3)
  {
    self->_statusSize = a3;
    v4 = malloc_type_realloc(self->_statusFilter, a3, 0x100004077774924uLL);
    self->_statusFilter = v4;
    bzero(v4, self->_statusSize);
    self->_needsStatusFlush = 1;
  }
}

- (void)setMasterStatusCellIndex:(int64_t)a3
{
  if (self->_masterStatusCellIndex != a3)
  {
    self->_masterStatusCellIndex = a3;
    v5 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus data];
    [(SCROBrailleLine *)self setVirtualStatus:v5 alignment:[(SCROBrailleLineVirtualStatus *)self->_virtualStatus alignment]];

    statusData = self->_statusData;

    [(SCROBrailleLine *)self setRealStatus:statusData];
  }
}

- (void)setRealStatus:(id)a3
{
  v5 = a3;
  if (self->_statusSize >= 1)
  {
    v8 = v5;
    v5 = [(NSData *)self->_statusData isEqualToData:v5];
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_statusData, a3);
      v6 = [v8 length];
      bzero(self->_statusFilter, self->_statusSize);
      if (v6 >= self->_statusSize)
      {
        statusSize = self->_statusSize;
      }

      else
      {
        statusSize = v6;
      }

      v5 = [v8 getBytes:self->_statusFilter length:statusSize];
      self->_needsStatusFlush = 1;
    }
  }

  MEMORY[0x2821F96F8](v5);
}

- (void)setVirtualStatus:(id)a3 alignment:(int)a4
{
  v17 = a3;
  v6 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus data];
  v7 = [v6 isEqualToData:v17];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length];
    [(SCROBrailleLineVirtualStatus *)self->_virtualStatus setData:v17];
    v10 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus data];

    virtualStatus = self->_virtualStatus;
    if (v10)
    {
      v12 = [(SCROBrailleLineVirtualStatus *)virtualStatus data];
      -[SCROBrailleLineVirtualStatus setLength:](self->_virtualStatus, "setLength:", [v12 length]);

      [(SCROBrailleLineVirtualStatus *)self->_virtualStatus setCells:malloc_type_realloc([(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells], [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length], 0x100004077774924uLL)];
      v13 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus data];
      [v13 getBytes:-[SCROBrailleLineVirtualStatus cells](self->_virtualStatus length:{"cells"), -[SCROBrailleLineVirtualStatus length](self->_virtualStatus, "length")}];
    }

    else
    {
      [(SCROBrailleLineVirtualStatus *)virtualStatus setLength:0];
      if ([(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells])
      {
        free([(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells]);
        [(SCROBrailleLineVirtualStatus *)self->_virtualStatus setCells:0];
      }
    }

    v8 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]!= v9;
    self->_needsDisplayFlush = 1;
    self->_brailleChunksAreDirty = 1;
  }

  v14 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus alignment];
  v15 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus data];
  if (v15)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  [(SCROBrailleLineVirtualStatus *)self->_virtualStatus setAlignment:v16];

  if ([(SCROBrailleLineVirtualStatus *)self->_virtualStatus alignment]!= v14)
  {
    self->_needsDisplayFlush = 1;
    self->_brailleChunksAreDirty = 1;
    goto LABEL_15;
  }

  if (v8)
  {
LABEL_15:
    [(SCROBrailleLine *)self _updateOffsets];
    self->_needsFocusFlush = 1;
  }
}

- (void)_updateOffsets
{
  self->_leftInset = 0;
  self->_rightInset = 0;
  self->_insetSize = self->_size;
  if ([(SCROBrailleLine *)self _allowInset])
  {
    displayMode = self->_displayMode;
    if (!displayMode || displayMode == 5)
    {
      v5 = 1;
    }

    else
    {
      v5 = 0;
      *&self->_leftInset = vaddq_s64(*&self->_leftInset, vdupq_n_s64(1uLL));
      self->_insetSize -= 2;
    }

    if ([(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]>= 1)
    {
      v6 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus alignment];
      v7 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length];
      v8 = 64;
      if (!v6)
      {
        v8 = 56;
      }

      *(&self->super.isa + v8) = (*(&self->super.isa + v8) + v7 + v5);
      self->_insetSize = self->_insetSize - v5 - [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length];
    }
  }
}

- (BOOL)panLeft
{
  if (self->_shouldUseMultiRow)
  {
    [(SCROBrailleLine *)self planarPanLeft];
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(SCROBrailleLine *)self canPanLeft];
    if (v3)
    {
      self->_lineOffset = (self->_lineOffset - self->_insetSize) & ~((self->_lineOffset - self->_insetSize) >> 63);
      LOBYTE(v3) = 1;
      self->_needsDisplayFlush = 1;
      self->_isPanning = 1;
    }
  }

  return v3;
}

- (BOOL)canPanRight
{
  if ([(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize]< 2)
  {
    return 0;
  }

  lineOffset = self->_lineOffset;
  insetSize = self->_insetSize;
  return insetSize + lineOffset < [(NSMutableAttributedString *)self->_lineBuffer length];
}

- (BOOL)panRight
{
  if (self->_shouldUseMultiRow)
  {
    [(SCROBrailleLine *)self planarPanRight];
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(SCROBrailleLine *)self canPanRight];
    if (v3)
    {
      self->_lineOffset += self->_insetSize;
      LOBYTE(v3) = 1;
      self->_needsDisplayFlush = 1;
      self->_isPanning = 1;
    }
  }

  return v3;
}

- (BOOL)panBeginning
{
  shouldUseMultiRow = self->_shouldUseMultiRow;
  if (!shouldUseMultiRow)
  {
    self->_lineOffset = 0;
    self->_needsDisplayFlush = 1;
    self->_isPanning = 1;
  }

  return !shouldUseMultiRow;
}

- (BOOL)panEnd
{
  if (self->_shouldUseMultiRow)
  {
    return 0;
  }

  if ([(NSMutableAttributedString *)self->_lineBuffer length]<= self->_insetSize)
  {
    return 0;
  }

  self->_lineOffset = [(NSMutableAttributedString *)self->_lineBuffer length]- self->_insetSize;
  result = 1;
  self->_needsDisplayFlush = 1;
  self->_isPanning = 1;
  return result;
}

- (void)planarPanLeft
{
  if ([(SCROBrailleLine *)self _canPlanarPanLeft])
  {
    [(SCRO2DBraillePlane *)self->_braillePlane panLeft];
    braillePlane = self->_braillePlane;

    [(SCRO2DBraillePlane *)braillePlane refresh];
  }

  else
  {

    [(SCROBrailleLine *)self handlePlanarPanFailedIsLeft:1];
  }
}

- (void)planarPanRight
{
  if ([(SCROBrailleLine *)self _canPlanarPanRight])
  {
    [(SCRO2DBraillePlane *)self->_braillePlane panRight];
    braillePlane = self->_braillePlane;

    [(SCRO2DBraillePlane *)braillePlane refresh];
  }

  else
  {

    [(SCROBrailleLine *)self handlePlanarPanFailedIsLeft:0];
  }
}

- (void)setCurrentUnread:(BOOL)a3
{
  if (self->_currentUnread != a3)
  {
    self->_currentUnread = a3;
    if ((self->_masterStatusCellIndex & 0x8000000000000000) == 0)
    {
      self->_needsStatusFlush = 1;
    }
  }
}

- (void)setAnyUnread:(BOOL)a3
{
  if (self->_anyUnread != a3)
  {
    self->_anyUnread = a3;
    if ((self->_masterStatusCellIndex & 0x8000000000000000) == 0)
    {
      self->_needsStatusFlush = 1;
    }
  }
}

- (void)setFormatter:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CF3318] sharedModel];
  v7 = [v6 editable];

  if (self->_isUIString)
  {
    self->_previousUILineOffset = self->_lineOffset;
  }

  v8 = [v5 displayMode];
  self->_isUIString = v8 == 0;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9 == 1)
  {
    if (v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    self->_editableFieldInterruptedByAlert = v10;
  }

  self->_lineOffset = [v5 lineOffset];
  self->_iBeamLocation = -1;
  -[SCROBrailleLine setShowDotsSevenAndEight:](self, "setShowDotsSevenAndEight:", [v5 showDotsSevenAndEight]);
  -[SCROBrailleLine setCurrentUnread:](self, "setCurrentUnread:", [v5 currentUnread]);
  -[SCROBrailleLine setAnyUnread:](self, "setAnyUnread:", [v5 anyUnread]);
  -[SCROBrailleLine setDisplayMode:](self, "setDisplayMode:", [v5 displayMode]);
  v11 = [v5 appToken];
  [(SCROBrailleLine *)self setAppToken:v11];

  -[SCROBrailleLine setLineFocus:](self, "setLineFocus:", [v5 lineFocus]);
  -[SCROBrailleLine setLineOffset:](self, "setLineOffset:", [v5 lineOffset]);
  -[SCROBrailleLine setGenerationID:](self, "setGenerationID:", [v5 generationID]);
  if (self->_isUIString)
  {
    objc_storeStrong(&self->_previousUIString, self->_currentUIString);
    v12 = [v5 editString];
    v13 = [v12 string];
    currentUIString = self->_currentUIString;
    self->_currentUIString = v13;
  }

  self->_firstToken = [v5 firstToken];
  self->_lastToken = [v5 lastToken];
  self->_needsDisplayFlush = 1;
  self->_brailleChunksAreDirty = 1;
  self->_needsFocusFlush = 1;
  v15 = [v5 stateManager];
  stateManager = self->_stateManager;
  self->_stateManager = v15;

  objc_storeStrong(&self->_brailleFormatter, a3);
  v17 = [v5 inputTableIdentifier];
  if (v17)
  {
    v18 = v17;
    inputTableIdentifier = self->_inputTableIdentifier;
    v20 = [v5 inputTableIdentifier];
    LOBYTE(inputTableIdentifier) = [(NSString *)inputTableIdentifier isEqualToString:v20];

    if ((inputTableIdentifier & 1) == 0)
    {
      v21 = [v5 inputTableIdentifier];
      v22 = self->_inputTableIdentifier;
      self->_inputTableIdentifier = v21;

      v23 = objc_alloc(MEMORY[0x277CF3340]);
      v24 = [v5 inputTableIdentifier];
      v25 = [v23 initWithIdentifier:v24];

      if ([v25 supportsTranslationMode8Dot])
      {
        v26 = 2;
      }

      else if ([v25 supportsTranslationModeContracted])
      {
        v26 = 3;
      }

      else
      {
        v26 = 1;
      }

      self->_inputMode = v26;
    }
  }

  [v5 addOutputDelegate:self];
  v27 = [(SCROBrailleLine *)self pendingBrailleStringDictionaries];
  if ([v27 count])
  {
    editableFieldInterruptedByAlert = self->_editableFieldInterruptedByAlert;

    if (!editableFieldInterruptedByAlert)
    {
      v29 = [MEMORY[0x277CF3318] sharedModel];
      v30 = [v29 editable];

      if (v30)
      {
        v43 = v5;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = [(SCROBrailleLine *)self pendingBrailleStringDictionaries];
        v32 = [v31 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v44 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = v36;
                v38 = [v37 pendingBraille];
                v39 = [v37 modifiers];
                [(SCROBrailleLine *)self _insertBrailleStringAtCursor:v38 modifiers:v39 silently:1];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v36 isForwardDelete])
                  {
                    [(SCROBrailleLine *)self _forwardDeleteAtCursorSilently:1];
                  }

                  else
                  {
                    [(SCROBrailleLine *)self _deleteAtCursorSilently:1];
                  }
                }
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v33);
        }

        v40 = [(SCROBrailleLine *)self pendingBrailleStringDictionaries];
        [v40 removeAllObjects];

        v5 = v43;
      }

      else
      {
        v41 = [(SCROBrailleLine *)self pendingBrailleStringDictionaries];
        [v41 removeAllObjects];
      }
    }
  }

  else
  {
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (BOOL)getStatusRouterIndex:(int64_t *)a3 forRawIndex:(int64_t)a4
{
  if (![(SCROBrailleLineVirtualStatus *)self->_virtualStatus alignment])
  {
    if (self->_leftInset > a4)
    {
      goto LABEL_5;
    }

LABEL_6:
    result = 0;
    a4 = -1;
    goto LABEL_7;
  }

  size = self->_size;
  rightInset = self->_rightInset;
  if (size - rightInset > a4)
  {
    goto LABEL_6;
  }

  a4 += ~size + rightInset;
LABEL_5:
  result = 1;
LABEL_7:
  *a3 = a4;
  return result;
}

- (int64_t)tokenForRouterIndex:(int64_t *)a3 location:(int64_t *)a4 appToken:(id *)a5
{
  v5 = *a3 - self->_leftInset + self->_lineOffset;
  if (v5 < 0 || v5 >= [(NSMutableAttributedString *)self->_lineBuffer length])
  {
    return 0;
  }

  lineBuffer = self->_lineBuffer;
  v11 = [(NSMutableAttributedString *)lineBuffer length];
  if (v5 + 1 < v11)
  {
    v12 = v5 + 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(NSMutableAttributedString *)lineBuffer attributedSubstringFromRange:0, v12];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v14 = [v13 length];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__SCROBrailleLine_tokenForRouterIndex_location_appToken___block_invoke;
  v23[3] = &unk_279B74590;
  v23[4] = &v28;
  v23[5] = &v24;
  [v13 enumerateAttribute:@"padd" inRange:0 options:v14 usingBlock:{0, v23}];
  v15 = [v13 length];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__SCROBrailleLine_tokenForRouterIndex_location_appToken___block_invoke_2;
  v22[3] = &unk_279B74038;
  v22[4] = &v28;
  [v13 enumerateAttribute:@"sugg" inRange:0 options:v15 usingBlock:{0, v22}];
  if (!*a3)
  {
    v25[3] = 0;
  }

  v16 = [MEMORY[0x277CF3318] sharedModel];
  v17 = [v16 scriptLocationForBrailleLocation:v5 - v29[3]];

  if (!v25[3])
  {
    v20 = [MEMORY[0x277CF3318] sharedModel];
    v21 = [v20 displayedScript];
    v18 = [v21 tokenForLocation:v17];

    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = 0;
  if (a4)
  {
LABEL_10:
    *a4 = v17;
  }

LABEL_11:
  if (a5)
  {
    *a5 = self->_appToken;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v18;
}

uint64_t __57__SCROBrailleLine_tokenForRouterIndex_location_appToken___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 integerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) += a4;
  }

  else
  {
    a4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = a4;
  return result;
}

uint64_t __57__SCROBrailleLine_tokenForRouterIndex_location_appToken___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 integerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) += a4;
  }

  return result;
}

- (void)enumerateWordsBetweenCharacters:(id)a3 text:(id)a4 inRange:(_NSRange)a5 usingBlock:(id)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = location + length;
  if (location + length <= [v11 length] && location < v13)
  {
    v14 = 0;
    v15 = location;
    do
    {
      v21 = 0;
      v16 = [v11 characterAtIndex:location];
      if ([v10 characterIsMember:v16])
      {
        if ([v10 characterIsMember:v16])
        {
          if (v14)
          {
            v17 = [v11 substringWithRange:{v15, location - v15}];
            v12[2](v12, v17, v15, location - v15, &v21);

            if (v21)
            {
              goto LABEL_16;
            }
          }

          v18 = [v11 substringWithRange:{location, 1}];
          v12[2](v12, v18, location, 1, &v21);

          if (v21 == 1)
          {
            goto LABEL_16;
          }

          v14 = 0;
          v15 = location;
        }
      }

      else
      {
        if ((v14 & 1) == 0)
        {
          v15 = location;
        }

        v14 = 1;
      }

      ++location;
      --length;
    }

    while (length);
    if (v14)
    {
      v20 = 0;
      v19 = [v11 substringWithRange:{v15, v13 - v15}];
      v12[2](v12, v19, v15, v13 - v15, &v20);
    }
  }

LABEL_16:
}

- (id)newLineDescriptor
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableAttributedString *)self->_lineBuffer mutableCopy];
  v5 = [v4 copy];
  v6 = [MEMORY[0x277CF3318] sharedModel];
  v7 = [v6 technicalMode];

  if (v7)
  {
    v8 = [v5 string];
    v9 = [SCROBrailleTranslationUtility translatedTextInIsolationForBraille:v8 translationMode:4];
  }

  else
  {
    v8 = [MEMORY[0x277CF3318] sharedModel];
    v10 = [v8 displayedScript];
    v9 = [v10 string];
  }

  v61 = 683681792;
  v11 = MEMORY[0x277CCA900];
  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v61 length:2];
  v13 = [v11 characterSetWithCharactersInString:v12];

  v52 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__SCROBrailleLine_newLineDescriptor__block_invoke;
  aBlock[3] = &unk_279B745E0;
  v59 = a2;
  v50 = v5;
  v54 = v50;
  v55 = self;
  v14 = v4;
  v56 = v14;
  v58 = v60;
  v51 = v13;
  v57 = v51;
  v15 = _Block_copy(aBlock);
  -[SCROBrailleLine enumerateWordsBetweenCharacters:text:inRange:usingBlock:](self, "enumerateWordsBetweenCharacters:text:inRange:usingBlock:", v52, v9, 0, [v9 length], v15);
  v16 = [v14 length];
  if (v16)
  {
    v49 = v16;
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:6];
    v18 = [(BRLTBrailleStateManager *)self->_stateManager outputScriptString];
    v19 = [v18 textFormattingRanges];

    v20 = [v19 boldRanges];
    if (v20)
    {
      [v17 setObject:v20 forKey:kSCROBrailleDisplayBoldRangesAttribute[0]];
    }

    v48 = v20;
    v21 = [v19 underlineRanges];
    if (v21)
    {
      [v17 setObject:v21 forKey:kSCROBrailleDisplayUnderlineRangesAttribute[0]];
    }

    v47 = v21;
    v22 = [v19 italicRanges];
    if (v22)
    {
      [v17 setObject:v22 forKey:kSCROBrailleDisplayItalicRangesAttribute[0]];
    }

    v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_displayMode];
    [v17 setObject:v23 forKey:kSCROBrailleDisplayModeAttribute[0]];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_insetSize];
    [v17 setObject:v24 forKey:kSCROBrailleSizeAttribute[0]];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lineOffset];
    [v17 setObject:v25 forKey:kSCROBrailleOffsetAttribute[0]];

    if ((self->_iBeamLocation & 0x8000000000000000) == 0)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      [v17 setObject:v26 forKey:kSCROBrailleIBeamLocationAttribute[0]];
    }

    v46 = v15;
    statusSize = self->_statusSize;
    v28 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]+ statusSize;
    if (v28 < 1)
    {
      v37 = 0;
    }

    else
    {
      v29 = self->_statusSize;
      [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length];
      v44 = &v44;
      MEMORY[0x28223BE20]();
      v31 = &v44 - v30;
      v32 = self->_statusSize;
      v45 = v9;
      if (v32 <= 0)
      {
        v32 = 0;
      }

      else
      {
        statusFilter = self->_statusFilter;
        v34 = v31;
        v35 = v32;
        do
        {
          v36 = *statusFilter++;
          *v34 = v36;
          v34 += 2;
          --v35;
        }

        while (v35);
      }

      v38 = 0;
      v39 = &v31[2 * v32];
      while (v38 < [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length])
      {
        *&v39[2 * v38] = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells][v38];
        ++v38;
      }

      v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:v31 length:v28];
      [v17 setObject:v37 forKey:kSCROBrailleStatusAttribute[0]];
      v40 = [MEMORY[0x277CCABB0] numberWithInt:{-[SCROBrailleLineVirtualStatus alignment](self->_virtualStatus, "alignment")}];
      [v17 setObject:v40 forKey:kSCROBrailleStatusAlignmentAttribute[0]];

      v9 = v45;
    }

    [v14 addAttributes:v17 range:{0, v49}];

    v15 = v46;
  }

  v41 = v14;

  _Block_object_dispose(v60, 8);
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

void __36__SCROBrailleLine_newLineDescriptor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __36__SCROBrailleLine_newLineDescriptor__block_invoke_2;
  v15 = &unk_279B745B8;
  v4 = *(a1 + 32);
  v21 = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v3;
  v20 = *(a1 + 64);
  v7 = v3;
  v8 = _Block_copy(&v12);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) string];
  [v10 enumerateWordsBetweenCharacters:v9 text:v11 inRange:*(*(*(a1 + 64) + 8) + 24) usingBlock:{objc_msgSend(*(a1 + 32), "length") - *(*(*(a1 + 64) + 8) + 24), v8}];
}

void __36__SCROBrailleLine_newLineDescriptor__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a3 + a4;
  if (a3 + a4 > [*(a1 + 32) length])
  {
    __36__SCROBrailleLine_newLineDescriptor__block_invoke_2_cold_1(a1);
  }

  if (v9 > [*(a1 + 48) length])
  {
    __36__SCROBrailleLine_newLineDescriptor__block_invoke_2_cold_2(a1);
  }

  v10 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
  v13 = [v10 attribute:@"padd" atIndex:0 effectiveRange:0];

  v11 = [v13 BOOLValue];
  v12 = *(a1 + 48);
  if (v11)
  {
    [v12 addAttribute:kSCROBrailleOriginalStringAttribute[0] value:@" " range:{a3, a4}];
  }

  else
  {
    [v12 addAttribute:kSCROBrailleOriginalStringAttribute[0] value:*(a1 + 56) range:{a3, a4}];
    *a5 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v9;
}

- (id)newLineDescriptorWithoutPadding
{
  v2 = [(SCROBrailleLine *)self newLineDescriptor];
  v5 = xmmword_26498C6C0;
  if (![v2 getRange:&v5 ofAttribute:kSCROEditableTextPaddingAttribute[0]])
  {
    return v2;
  }

  do
  {
    v3 = [v2 attributedSubstringFromRange:{0, v5}];

    v2 = v3;
  }

  while (([v3 getRange:&v5 ofAttribute:kSCROEditableTextPaddingAttribute[0]] & 1) != 0);
  return v3;
}

- (void)setShowDotsSevenAndEight:(BOOL)a3
{
  if (self->_showDotsSevenAndEight != a3)
  {
    self->_needsDisplayFlush = 1;
    self->_showDotsSevenAndEight = a3;
  }
}

- (void)setLineFocus:(int)a3
{
  if (self->_lineFocus != a3)
  {
    self->_needsDisplayFlush = 1;
    self->_needsFocusFlush = 1;
    self->_lineFocus = a3;
  }
}

- (void)setDisplayMode:(int)a3
{
  if (self->_displayMode != a3)
  {
    self->_displayMode = a3;
    self->_needsDisplayFlush = 1;
    self->_brailleChunksAreDirty = 1;
    self->_needsFocusFlush = 1;
    [(SCROBrailleLine *)self _updateOffsets];
  }
}

- (int64_t)_indexOfWhitespaceBeforeIBeam:(int64_t)a3 inLine:(id)a4
{
  v5 = a4;
  v6 = [v5 length];
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 rangeOfCharacterFromSet:_WhitespaceSet options:4 range:{0, v7}];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

- (int64_t)_indexOfWhitespaceAfterIBeam:(int64_t)a3 inLine:(id)a4
{
  v5 = a4;
  v6 = [v5 length];
  if ([v5 length] > a3 && v6 != a3)
  {
    v7 = [v5 rangeOfCharacterFromSet:_WhitespaceSet options:0 range:{a3, v6 - a3}];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v7;
    }
  }

  return v6;
}

- (_NSRange)textRangeForBrailleRange:(_NSRange)a3
{
  length = a3.length;
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    location = a3.location;
    v6 = [MEMORY[0x277CF3318] sharedModel];
    v4 = [v6 scriptLocationForBrailleLocation:location];

    v7 = [MEMORY[0x277CF3318] sharedModel];
    v8 = [v7 scriptLocationForBrailleLocation:location + length];

    length = v8 - v4;
  }

  v9 = v4;
  v10 = length;
  result.length = v10;
  result.location = v9;
  return result;
}

- (void)blinker
{
  if (self->_needsDisplayFlush)
  {
    [(SCROBrailleLine *)self _flush];
    self->_needsDisplayFlush = 0;
    self->_needsFocusFlush = 0;
  }

  if ((self->_iBeamLocation & 0x8000000000000000) == 0)
  {
    v3 = !self->_blinkEnabled || self->_blink;
    [(SCROBrailleLine *)self _blink:v3];
    self->_blink ^= 1u;
  }
}

- (BOOL)_blink:(BOOL)a3
{
  if (!self->_displayEnabled)
  {
    return 1;
  }

  v3 = 192;
  if (a3)
  {
    v3 = 168;
  }

  return [(SCROBrailleLine *)self _setMainCells:*(&self->super.isa + v3) length:self->_size];
}

- (BOOL)_setMainCells:(const char *)a3 length:(int64_t)a4 forZoomOut:(BOOL)a5
{
  v26 = *MEMORY[0x277D85DE8];
  mainCellsBuffer = self->_mainCellsBuffer;
  if (!memcmp(mainCellsBuffer, a3, a4))
  {
    v17 = 1;
  }

  else
  {
    memcpy(mainCellsBuffer, a3, a4);
    v10 = VOTLogBraille();
    v11 = os_signpost_id_generate(v10);

    v12 = _SCROD_LOG();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      v14 = [(SCROBrailleDriverProtocol *)self->_brailleDriver modelIdentifier];
      v22 = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Signpost id %@ generated for Driver %@", &v22, 0x16u);
    }

    v15 = VOTLogBraille();
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_26490B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Set Main Cells", "", &v22, 2u);
    }

    v17 = [(SCROBrailleDriverProtocol *)self->_brailleDriver setMainCells:a3 length:a4];
    v18 = VOTLogBraille();
    v19 = v18;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_26490B000, v19, OS_SIGNPOST_INTERVAL_END, v11, "Set Main Cells", "", &v22, 2u);
    }
  }

  self->_isZoomOutActive = a5;
  [(SCROBrailleLine *)self _updateOffsets];
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)setDisplayEnabled:(BOOL)a3
{
  if (self->_displayEnabled != a3)
  {
    self->_displayEnabled = a3;
    if (a3)
    {
      *&self->_needsDisplayFlush = 257;
      self->_brailleChunksAreDirty = 1;
    }
  }
}

- (BOOL)display
{
  if (self->_needsDisplayFlush)
  {
    [(SCROBrailleLine *)self _flush];
    self->_needsDisplayFlush = 0;
    *&self->_needsFocusFlush = 256;
    v3 = !self->_displayEnabled || [(SCROBrailleLine *)self _setMainCells:self->_displayBuffer length:self->_size];
  }

  else
  {
    v3 = 0;
  }

  if (self->_needsStatusFlush)
  {
    [(SCROBrailleLine *)self _flushRealStatus];
    self->_needsStatusFlush = 0;
    if (self->_displayEnabled)
    {
      return v3 | [(SCROBrailleDriverProtocol *)self->_brailleDriver setStatusCells:self->_statusFilter length:self->_statusSize];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_flushRealStatus
{
  if (self->_statusSize >= 1)
  {
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v21 = v8;
    v22 = v9;
    v11 = 0;
    do
    {
      if (v11 == self->_masterStatusCellIndex)
      {
        self->_statusFilter[v11] = self->_statusFilter[v11] & 0xFE | self->_anyUnread;
        if (self->_currentUnread)
        {
          v12 = 2;
        }

        else
        {
          v12 = 0;
        }

        self->_statusFilter[v11] = self->_statusFilter[v11] & 0xFD | v12;
        if ([(SCROBrailleLine *)self canPanLeft:v15])
        {
          v13 = 64;
        }

        else
        {
          v13 = 0;
        }

        self->_statusFilter[v11] = self->_statusFilter[v11] & 0xBF | v13;
        if ([(SCROBrailleLine *)self canPanRight])
        {
          v14 = 0x80;
        }

        else
        {
          v14 = 0;
        }

        self->_statusFilter[v11] = v14 & 0x80 | self->_statusFilter[v11] & 0x7F;
      }

      ++v11;
    }

    while (v11 < self->_statusSize);
  }
}

- (void)_flush
{
  v200[63] = *MEMORY[0x277D85DE8];
  if (self->_size >= 1)
  {
    [(NSLock *)self->_flushLock lock];
    if (!self->_brailleChunksAreDirty)
    {
      goto LABEL_129;
    }

    p_lineBuffer = &self->_lineBuffer;
    [(NSMutableAttributedString *)self->_lineBuffer deleteCharactersInRange:0, [(NSMutableAttributedString *)self->_lineBuffer length]];
    self->_iBeamLocation = -1;
    v4 = [MEMORY[0x277CF3318] sharedModel];
    v5 = [v4 displayedBraille];

    v6 = [(SCROBrailleFormatter *)self->_brailleFormatter statusText];

    if (v6)
    {
      v7 = [(SCROBrailleFormatter *)self->_brailleFormatter editString];
      v8 = [v7 string];
      v9 = [SCROBrailleTranslationUtility brailleForText:v8];

      v10 = [objc_alloc(MEMORY[0x277CF3330]) initWithString:v9 selection:0x7FFFFFFFFFFFFFFFLL focus:0 token:0x7FFFFFFFFFFFFFFFLL suggestion:0 textFormattingRanges:{0, 0x7FFFFFFFFFFFFFFFLL, 0, 0}];
      v5 = v10;
    }

    self->_focusRange.location = [v5 focus];
    p_focusRange = &self->_focusRange;
    self->_focusRange.length = v11;
    p_length = &self->_focusRange.length;
    v12 = [v5 selection];
    self->_selectionRange.length = v13;
    self->_selectionRange.location = v12;
    p_selectionRange = &self->_selectionRange;
    self->_suggestionRange.location = [v5 suggestion];
    self->_suggestionRange.length = v14;
    v15 = [v5 string];
    v16 = v15;
    v186 = &self->_selectionRange.length;
    if (self->_shouldTruncateAtPanBoundary && [v15 length] > self->_insetSize)
    {
      v17 = [v16 substringToIndex:?];

      v16 = v17;
    }

    self->_shouldTruncateAtPanBoundary = 0;
    v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v16];
    v19 = v18;
    location = self->_suggestionRange.location;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = self->_suggestionRange.length + location;
      if (v21 <= [v18 length])
      {
        v22 = [(SCROBrailleLine *)self _applySuggestionCellsToPrintBraille:v19];

        v19 = v22;
      }
    }

    v23 = [(NSMutableAttributedString *)*p_lineBuffer length];
    v24 = [MEMORY[0x277CF3318] sharedModel];
    v188 = [v24 editable];

    if (p_selectionRange->location != 0x7FFFFFFFFFFFFFFFLL && !*v186)
    {
      self->_iBeamLocation = p_selectionRange->location + v23;
    }

    v25 = [v19 length];
    v191 = v19;
    if ([(SCROBrailleLine *)self wordWrapEnabled])
    {
      v182 = v16;
      v183 = v5;
      insetSize = self->_insetSize;
      v27 = v23 / insetSize * insetSize;
      v28 = [v19 length] + v23;
      v29 = self->_insetSize;
      v194 = v27;
      v30 = 0;
      v31 = (v28 / v29 * insetSize) > v27 && v25 > v29;
      if (v31)
      {
        v189 = 0;
        p_inst_props = &OBJC_PROTOCOL___SCROIOBTLESerialElementProtocol.inst_props;
        v184 = vdupq_n_s64(8uLL);
        do
        {
          v34 = [v19 string];
          v35 = [v34 substringWithRange:{v30, v25}];

          v36 = [v35 characterAtIndex:v29 - 1];
          v37 = [v35 characterAtIndex:v29];
          LOBYTE(v36) = [(__objc2_prop_list *)p_inst_props[503] characterIsMember:v36];
          v38 = [(__objc2_prop_list *)p_inst_props[503] characterIsMember:v37];
          v39 = v29;
          if ((v36 & 1) == 0)
          {
            v39 = v29;
            if ((v38 & 1) == 0)
            {
              v40 = v29 - 2;
              if (v29 >= 2)
              {
                while ((-[__objc2_prop_list characterIsMember:](p_inst_props[503], "characterIsMember:", [v35 characterAtIndex:v40]) & 1) == 0)
                {
                  v31 = v40-- <= 0;
                  if (v31)
                  {
                    v40 = -1;
                    break;
                  }
                }
              }

              v39 = v40 + 1;
            }
          }

          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = v29;
          }

          v193 = [v35 length];
          if (v41 >= 1 && v19)
          {
            v42 = objc_autoreleasePoolPush();
            v43 = [v19 attributedSubstringFromRange:{v30, v41}];
            [(SCROBrailleLine *)self addAttributedStringToLineBuffer:v43 brailleOffset:v189];
            v189 += v41;

            v19 = v191;
            objc_autoreleasePoolPop(v42);
          }

          v44 = v29 - v41;
          v45 = objc_autoreleasePoolPush();
          v46 = v44 - 1;
          if (v44 >= 1)
          {
            v190 = v45;
            if (v188)
            {
              v47 = [(NSMutableAttributedString *)*p_lineBuffer attributesAtIndex:[(NSMutableAttributedString *)*p_lineBuffer length]- 1 effectiveRange:0];
              if (v44 < 0x101)
              {
                v201.location = 0;
                v201.length = v44;
                v57 = CFStringCreateWithSubstring(0, _SpaceString, v201);
              }

              else
              {
                v48 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
                v49 = v200;
                v50 = vdupq_n_s64(v46);
                v51 = xmmword_26498C700;
                v52 = xmmword_26498C6F0;
                v53 = xmmword_26498C6E0;
                v54 = xmmword_26498C6D0;
                do
                {
                  v55 = vmovn_s64(vcgeq_u64(v50, v51));
                  if (vuzp1_s8(vuzp1_s16(v55, *v50.i8), *v50.i8).u8[0])
                  {
                    *(v49 - 4) = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(vuzp1_s16(v55, *&v50), *&v50).i8[1])
                  {
                    *(v49 - 3) = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v50, *&v52))), *&v50).i8[2])
                  {
                    *(v49 - 2) = kSCROBrailleUnicodeCharacterBase;
                    *(v49 - 1) = kSCROBrailleUnicodeCharacterBase;
                  }

                  v56 = vmovn_s64(vcgeq_u64(v50, v53));
                  if (vuzp1_s8(*&v50, vuzp1_s16(v56, *&v50)).i32[1])
                  {
                    *v49 = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(*&v50, vuzp1_s16(v56, *&v50)).i8[5])
                  {
                    v49[1] = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(*&v50, vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v50, *&v54)))).i8[6])
                  {
                    v49[2] = kSCROBrailleUnicodeCharacterBase;
                    v49[3] = kSCROBrailleUnicodeCharacterBase;
                  }

                  v53 = vaddq_s64(v53, v184);
                  v52 = vaddq_s64(v52, v184);
                  v51 = vaddq_s64(v51, v184);
                  v49 += 8;
                  v54 = vaddq_s64(v54, v184);
                  v48 -= 8;
                }

                while (v48);
                v57 = CFStringCreateWithCharacters(0, &chars, v44);
              }

              v69 = v57;
              v70 = [(__CFString *)v47 mutableCopy];

              [v70 setObject:@" " forKey:kSCROBrailleOriginalStringAttribute[0]];
              [v70 setObject:MEMORY[0x277CBEC38] forKey:kSCROEditableTextPaddingAttribute[0]];
              v71 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v69 attributes:v70];

              p_lineBuffer = &self->_lineBuffer;
            }

            else
            {
              if (v44 < 0x101)
              {
                v202.location = 0;
                v202.length = v44;
                v68 = CFStringCreateWithSubstring(0, _SpaceString, v202);
              }

              else
              {
                v58 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
                v59 = v200;
                v60 = vdupq_n_s64(v46);
                v61 = xmmword_26498C700;
                v62 = xmmword_26498C6F0;
                v63 = xmmword_26498C6E0;
                v64 = xmmword_26498C6D0;
                do
                {
                  v65 = vmovn_s64(vcgeq_u64(v60, v61));
                  if (vuzp1_s8(vuzp1_s16(v65, *v60.i8), *v60.i8).u8[0])
                  {
                    *(v59 - 4) = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(vuzp1_s16(v65, *&v60), *&v60).i8[1])
                  {
                    *(v59 - 3) = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v60, vmovn_s64(vcgeq_u64(v60, *&v62))), *&v60).i8[2])
                  {
                    *(v59 - 2) = kSCROBrailleUnicodeCharacterBase;
                    *(v59 - 1) = kSCROBrailleUnicodeCharacterBase;
                  }

                  v66 = vmovn_s64(vcgeq_u64(v60, v63));
                  if (vuzp1_s8(*&v60, vuzp1_s16(v66, *&v60)).i32[1])
                  {
                    *v59 = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(*&v60, vuzp1_s16(v66, *&v60)).i8[5])
                  {
                    v59[1] = kSCROBrailleUnicodeCharacterBase;
                  }

                  if (vuzp1_s8(*&v60, vuzp1_s16(*&v60, vmovn_s64(vcgeq_u64(v60, *&v64)))).i8[6])
                  {
                    v59[2] = kSCROBrailleUnicodeCharacterBase;
                    v59[3] = kSCROBrailleUnicodeCharacterBase;
                  }

                  v67 = vdupq_n_s64(8uLL);
                  v63 = vaddq_s64(v63, v67);
                  v62 = vaddq_s64(v62, v67);
                  v61 = vaddq_s64(v61, v67);
                  v64 = vaddq_s64(v64, v67);
                  v59 += 8;
                  v58 -= 8;
                }

                while (v58);
                v68 = CFStringCreateWithCharacters(0, &chars, v44);
              }

              v47 = v68;
              v71 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v68];
            }

            [(SCROBrailleLine *)self addAttributedPaddingToLineBuffer:v71];
            v72 = v41 + v194;
            iBeamLocation = self->_iBeamLocation;
            if (v41 + v194 <= iBeamLocation)
            {
              self->_iBeamLocation = iBeamLocation + v44;
            }

            if (self->_showDotsSevenAndEight)
            {
              v74 = p_focusRange->location;
              if (p_focusRange->location != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (*p_length)
                {
                  v75 = &self->_focusRange;
                  if (v72 <= v74 || (v76 = *p_length + v74, v74 = *p_length, v75 = &self->_focusRange.length, v72 < v76))
                  {
                    v75->location = v74 + v44;
                  }
                }
              }
            }

            v77 = p_selectionRange->location;
            if (p_selectionRange->location != 0x7FFFFFFFFFFFFFFFLL && (v78 = &self->_selectionRange, v72 <= v77) || v72 > v77 && (v79 = *v186 + v77, v77 = *v186, v78 = &self->_selectionRange.length, v72 <= v79))
            {
              v78->location = v77 + v44;
            }

            v45 = v190;
            v19 = v191;
          }

          v30 += v41;
          v25 = v193 - v41;
          objc_autoreleasePoolPop(v45);
          v29 = self->_insetSize;
          v194 += v29;

          p_inst_props = (&OBJC_PROTOCOL___SCROIOBTLESerialElementProtocol + 56);
        }

        while (v25 > v29);
      }

      else
      {
        v189 = 0;
      }

      v80 = objc_autoreleasePoolPush();
      v81 = [v19 attributedSubstringFromRange:{v30, v25}];
      [(SCROBrailleLine *)self addAttributedStringToLineBuffer:v81 brailleOffset:v189];

      objc_autoreleasePoolPop(v80);
      if (v25 >= self->_insetSize)
      {
        v32 = 0;
      }

      else
      {
        v32 = v25;
      }

      v16 = v182;
      v5 = v183;
    }

    else
    {
      [(NSMutableAttributedString *)*p_lineBuffer appendAttributedString:v19];
      v32 = 0;
    }

    if (v32)
    {
      v82 = 0;
    }

    else
    {
      v82 = v188;
    }

    if (v82 == 1)
    {
      v83 = +[SCROBrailleUISettingsManager sharedInstance];
      v84 = [v83 usesUnderlineCursor];

      if (!v84)
      {
LABEL_121:
        v102 = *p_lineBuffer;
        v103 = v102;
        if (p_selectionRange->location != 0x7FFFFFFFFFFFFFFFLL && *v186)
        {
          v104 = [(NSMutableAttributedString *)v102 string];
          v105 = _applyDots7And8FocusFilterToPrintBraille(v104, p_selectionRange->location, *v186);

          v106 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v105];
          v107 = [(NSMutableAttributedString *)v103 length];
          v197[0] = MEMORY[0x277D85DD0];
          v197[1] = 3221225472;
          v197[2] = __25__SCROBrailleLine__flush__block_invoke;
          v197[3] = &unk_279B74608;
          v108 = v106;
          v198 = v108;
          v109 = v107;
          v19 = v191;
          [(NSMutableAttributedString *)v103 enumerateAttributesInRange:0 options:v109 usingBlock:0, v197];
          v110 = v108;

          v103 = v110;
        }

        if (self->_showDotsSevenAndEight && p_focusRange->location != 0x7FFFFFFFFFFFFFFFLL && *p_length)
        {
          v111 = [(NSMutableAttributedString *)v103 string];
          v112 = _applyDots7And8FocusFilterToPrintBraille(v111, p_focusRange->location, *p_length);

          v113 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v112];
          v114 = [(NSMutableAttributedString *)v103 length];
          v195[0] = MEMORY[0x277D85DD0];
          v195[1] = 3221225472;
          v195[2] = __25__SCROBrailleLine__flush__block_invoke_2;
          v195[3] = &unk_279B74608;
          v115 = v113;
          v196 = v115;
          v116 = v114;
          v19 = v191;
          [(NSMutableAttributedString *)v103 enumerateAttributesInRange:0 options:v116 usingBlock:0, v195];
          v117 = v115;

          v103 = v117;
        }

        objc_storeStrong(p_lineBuffer, v103);
        self->_brailleChunksAreDirty = 0;

LABEL_129:
        if (self->_isPanning)
        {
          goto LABEL_155;
        }

        lineFocus = self->_lineFocus;
        switch(lineFocus)
        {
          case 3:
            if (!self->_needsFocusFlush)
            {
              break;
            }

            if (!self->_isUIString || ![(NSString *)self->_currentUIString isEqualToString:self->_previousUIString])
            {
              goto LABEL_148;
            }

            self->_lineOffset = self->_previousUILineOffset;
            v122 = [(NSMutableAttributedString *)self->_lineBuffer length];
            v123 = self->_insetSize;
            v124 = v122 % v123 - v123;
            if (!(v122 % v123))
            {
              v124 = 0;
            }

            lineOffset = self->_lineOffset;
            v126 = v123 - v122 + lineOffset + v124;
            if (v126 >= 1)
            {
              v121 = (lineOffset - v126) & ~((lineOffset - v126) >> 63);
LABEL_154:
              self->_lineOffset = v121;
            }

            break;
          case 2:
            if (!self->_needsFocusFlush)
            {
              break;
            }

            v119 = [(NSMutableAttributedString *)self->_lineBuffer length];
            v120 = self->_insetSize;
            v31 = v119 > v120;
            v121 = v119 / v120 * v120;
            if (!v31)
            {
              v121 = 0;
            }

            goto LABEL_154;
          case 1:
            if (!self->_needsFocusFlush)
            {
              break;
            }

LABEL_148:
            self->_lineOffset = 0;
            break;
          default:
            v127 = self->_iBeamLocation;
            if ((v127 & 0x8000000000000000) == 0)
            {
              v128 = self->_insetSize;
              v129 = v127 / v128;
LABEL_153:
              v121 = v129 * v128;
              goto LABEL_154;
            }

            if (self->_selectionRange.length && (v130 = self->_selectionRange.location, v130 != 0x7FFFFFFFFFFFFFFFLL) || (v130 = self->_focusRange.location, v130 != 0x7FFFFFFFFFFFFFFFLL))
            {
              v128 = self->_insetSize;
              v129 = v130 / v128;
              goto LABEL_153;
            }

            break;
        }

LABEL_155:
        self->_isPanning = 0;
        v131 = self->_lineOffset;
        v132 = self->_insetSize;
        if (v131 % v132)
        {
          v131 -= v131 % v132;
          self->_lineOffset = v131;
        }

        v133 = [(NSMutableAttributedString *)self->_lineBuffer length];
        v134 = [MEMORY[0x277CF3318] sharedModel];
        [v134 editable];

        if (v131)
        {
          do
          {
            if (v131 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v133 > v131)
            {
              break;
            }

            v135 = self->_insetSize;
            v136 = self->_lineOffset;
            v31 = v136 < v135;
            v137 = v136 - v135;
            if (v31)
            {
              break;
            }

            self->_lineOffset = v137;
            v131 = v137;
            v132 = v135;
          }

          while (v137);
        }

        if (v132 + v131 <= v133)
        {
          v138 = v132;
        }

        else
        {
          v138 = v133 - v131;
        }

        bzero(self->_displayFilter, self->_size);
        displayMode = self->_displayMode;
        v140 = displayMode == 5 || displayMode == 0;
        if (v140 && [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]< 1 || ![(SCROBrailleLine *)self _allowInset])
        {
LABEL_202:
          memcpy(self->_displayBuffer, self->_displayFilter, self->_size);
          v163 = [(NSMutableAttributedString *)self->_lineBuffer string];
          if (v163)
          {
            v204.location = v131;
            v204.length = v138;
            v164 = CFStringCreateWithSubstring(0, v163, v204);
          }

          else
          {
            v164 = 0;
          }

          TranslatePrintBrailleToBrailleCode = SCROBrailleCreateTranslatePrintBrailleToBrailleCode(v164);
          memcpy(&self->_displayBuffer[self->_leftInset], [TranslatePrintBrailleToBrailleCode bytes], v138);
          memcpy(self->_blinkerBuffer, self->_displayBuffer, self->_size);
          v166 = self->_iBeamLocation;
          if (v166 >= 0)
          {
            v167 = v131;
          }

          else
          {
            v167 = 0;
          }

          v168 = v166 - v167;
          v169 = +[SCROBrailleUISettingsManager sharedInstance];
          v170 = [v169 usesUnderlineCursor];

          if (v170)
          {
            if (v168 < 0 || v168 >= self->_insetSize)
            {
              goto LABEL_230;
            }

            v171 = &self->_displayBuffer[self->_leftInset];
            v171[v168] |= 0xC0u;
            blinkerBuffer = &self->_blinkerBuffer[self->_leftInset + v168];
            v173 = 63;
LABEL_229:
            *blinkerBuffer &= v173;
LABEL_230:
            [(NSLock *)self->_flushLock unlock];

            goto LABEL_231;
          }

          if (v166 == v167 && !self->_leftInset)
          {
            *self->_displayBuffer |= 0x40u;
            blinkerBuffer = self->_blinkerBuffer;
LABEL_228:
            v173 = -65;
            goto LABEL_229;
          }

          v174 = self->_insetSize;
          if (v168 == v174 && !self->_rightInset)
          {
            v178 = &self->_displayBuffer[self->_size];
            *(v178 - 1) |= 0x80u;
            v177 = &self->_blinkerBuffer[self->_size];
            goto LABEL_223;
          }

          if (v168 < 0 || v168 >= v174)
          {
            goto LABEL_230;
          }

          v175 = &self->_displayBuffer[self->_leftInset + v168];
          v176 = *(v175 - 1);
          if (v176 < 0)
          {
            if ((*v175 & 0x40) == 0)
            {
              *v175 |= 0x40u;
LABEL_227:
              blinkerBuffer = &self->_blinkerBuffer[self->_leftInset + v168];
              goto LABEL_228;
            }
          }

          else if ((*v175 & 0x40) != 0)
          {
            *(v175 - 1) = v176 | 0x80;
            v177 = &self->_blinkerBuffer[self->_leftInset + v168];
LABEL_223:
            blinkerBuffer = v177 - 1;
            v173 = 127;
            goto LABEL_229;
          }

          *(v175 - 1) = v176 | 0x80;
          v179 = &self->_displayBuffer[self->_leftInset];
          v179[v168] |= 0x40u;
          v180 = &self->_blinkerBuffer[self->_leftInset + v168];
          *(v180 - 1) &= ~0x80u;
          goto LABEL_227;
        }

        if ([(SCROBrailleLineVirtualStatus *)self->_virtualStatus alignment])
        {
          v141 = 0;
          v142 = self->_size - self->_rightInset;
          v143 = v142 + 1;
          if (!displayMode)
          {
LABEL_187:
            masterStatusCellIndex = self->_masterStatusCellIndex;
            statusSize = self->_statusSize;
            if (masterStatusCellIndex >= statusSize && masterStatusCellIndex < [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]+ statusSize)
            {
              v150 = self->_masterStatusCellIndex - self->_statusSize;
              anyUnread = self->_anyUnread;
              v152 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells];
              v152[v150] = v152[v150] & 0xFE | anyUnread;
              currentUnread = self->_currentUnread;
              v154 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells];
              if (currentUnread)
              {
                v155 = 2;
              }

              else
              {
                v155 = 0;
              }

              v154[v150] = v154[v150] & 0xFD | v155;
              v156 = [(SCROBrailleLine *)self canPanLeft];
              v157 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells];
              if (v156)
              {
                v158 = 64;
              }

              else
              {
                v158 = 0;
              }

              v157[v150] = v157[v150] & 0xBF | v158;
              v159 = [(SCROBrailleLine *)self canPanRight];
              v160 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells];
              if (v159)
              {
                v161 = 0x80;
              }

              else
              {
                v161 = 0;
              }

              v160[v150] = v161 & 0x80 | v160[v150] & 0x7F;
            }

            if ([(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]>= 1)
            {
              v162 = 0;
              do
              {
                self->_displayFilter[v143++] = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus cells][v162++];
              }

              while (v162 < [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length]);
            }

            goto LABEL_202;
          }
        }

        else
        {
          v141 = [(SCROBrailleLineVirtualStatus *)self->_virtualStatus length];
          v143 = 0;
          v142 = self->_size - 1;
          if (!displayMode)
          {
            goto LABEL_187;
          }
        }

        if (displayMode != 5)
        {
          v144 = self->_displayMode;
          if (v144 == 4)
          {
            if ([(SCROBrailleLine *)self canPanLeft])
            {
              v145 = 127;
            }

            else
            {
              v145 = 63;
            }

            v146 = [(SCROBrailleLine *)self canPanRight];
            v147 = v145 | 0x80;
            if (!v146)
            {
              v147 = v145;
            }
          }

          else if (v144 == 6)
          {
            v147 = 0;
          }

          else
          {
            v147 = -1;
          }

          self->_displayFilter[v141] = v147;
          self->_displayFilter[v142] = v147;
        }

        goto LABEL_187;
      }

      [(NSMutableAttributedString *)*p_lineBuffer appendString:@"⠀"];
      v32 = 1;
    }

    if (v32 > 0)
    {
      v85 = v188;
    }

    else
    {
      v85 = 0;
    }

    if (v85 == 1)
    {
      v86 = self->_insetSize - v32;
      v87 = [(NSMutableAttributedString *)self->_lineBuffer attributesAtIndex:[(NSMutableAttributedString *)self->_lineBuffer length]- 1 effectiveRange:0];
      if (v86 < 0x101)
      {
        v203.location = 0;
        v203.length = v86;
        v98 = CFStringCreateWithSubstring(0, _SpaceString, v203);
      }

      else
      {
        v88 = (v86 + 7) & 0xFFFFFFFFFFFFFFF8;
        v89 = vdupq_n_s64(v86 - 1);
        v90 = xmmword_26498C6D0;
        v91 = xmmword_26498C6E0;
        v92 = xmmword_26498C6F0;
        v93 = xmmword_26498C700;
        v94 = v200;
        v95 = vdupq_n_s64(8uLL);
        do
        {
          v96 = vmovn_s64(vcgeq_u64(v89, v93));
          if (vuzp1_s8(vuzp1_s16(v96, *v89.i8), *v89.i8).u8[0])
          {
            *(v94 - 4) = kSCROBrailleUnicodeCharacterBase;
          }

          if (vuzp1_s8(vuzp1_s16(v96, *&v89), *&v89).i8[1])
          {
            *(v94 - 3) = kSCROBrailleUnicodeCharacterBase;
          }

          if (vuzp1_s8(vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, *&v92))), *&v89).i8[2])
          {
            *(v94 - 2) = kSCROBrailleUnicodeCharacterBase;
            *(v94 - 1) = kSCROBrailleUnicodeCharacterBase;
          }

          v97 = vmovn_s64(vcgeq_u64(v89, v91));
          if (vuzp1_s8(*&v89, vuzp1_s16(v97, *&v89)).i32[1])
          {
            *v94 = kSCROBrailleUnicodeCharacterBase;
          }

          if (vuzp1_s8(*&v89, vuzp1_s16(v97, *&v89)).i8[5])
          {
            v94[1] = kSCROBrailleUnicodeCharacterBase;
          }

          if (vuzp1_s8(*&v89, vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, *&v90)))).i8[6])
          {
            v94[2] = kSCROBrailleUnicodeCharacterBase;
            v94[3] = kSCROBrailleUnicodeCharacterBase;
          }

          v91 = vaddq_s64(v91, v95);
          v92 = vaddq_s64(v92, v95);
          v93 = vaddq_s64(v93, v95);
          v94 += 8;
          v90 = vaddq_s64(v90, v95);
          v88 -= 8;
        }

        while (v88);
        v98 = CFStringCreateWithCharacters(0, &chars, v86);
      }

      v99 = v98;
      v100 = [v87 mutableCopy];

      [v100 setObject:@" " forKey:kSCROBrailleOriginalStringAttribute[0]];
      [v100 setObject:MEMORY[0x277CBEC38] forKey:kSCROEditableTextPaddingAttribute[0]];
      v101 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v99 attributes:v100];

      [(NSMutableAttributedString *)*p_lineBuffer appendAttributedString:v101];
      v19 = v191;
    }

    goto LABEL_121;
  }

LABEL_231:
  v181 = *MEMORY[0x277D85DE8];
}

- (id)_applySuggestionCellsToPrintBraille:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] && (v5 = self->_suggestionRange.length + self->_suggestionRange.location, v5 <= objc_msgSend(v4, "length")))
  {
    if (self->_showDotsSevenAndEight)
    {
      v7 = 255;
    }

    else
    {
      v7 = 63;
    }

    v6 = [v4 mutableCopy];
    v17 = kSCROBrailleUnicodeCharacterBase + v7;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v17 length:1];
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v18 = @"sugg";
    v19[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v9 initWithString:v8 attributes:v10];

    [v6 insertAttributedString:v11 atIndex:self->_suggestionRange.location];
    [v6 insertAttributedString:v11 atIndex:self->_suggestionRange.location + self->_suggestionRange.length + 1];
    location = self->_focusRange.location;
    v13 = self->_suggestionRange.location;
    if (location > v13)
    {
      self->_focusRange.location = location + 2;
    }

    v14 = self->_selectionRange.location;
    if (v14 > v13)
    {
      self->_selectionRange.location = v14 + 2;
    }
  }

  else
  {
    v6 = v4;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addAttributedStringToLineBuffer:(id)a3 brailleOffset:(unint64_t)a4
{
  v5 = a3;
  if ([v5 length])
  {
    [(NSMutableAttributedString *)self->_lineBuffer appendAttributedString:v5];
  }
}

- (void)addAttributedPaddingToLineBuffer:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    [(NSMutableAttributedString *)self->_lineBuffer appendAttributedString:v4];
    v5 = [(NSMutableAttributedString *)self->_lineBuffer length];
    v6 = v5 - [v4 length];
    v7 = [v4 length];
    v10 = @"padd";
    v11[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(NSMutableAttributedString *)self->_lineBuffer addAttributes:v8 range:v6, v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = SCROBrailleLine;
  v3 = [(SCROBrailleLine *)&v8 description];
  v4 = MEMORY[0x277CCAB68];
  v5 = [(NSMutableAttributedString *)self->_lineBuffer string];
  v6 = [v4 stringWithFormat:@"<%@ %@", v3, v5];

  return v6;
}

- (NSAttributedString)editingString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA898]);

  return v2;
}

- (BOOL)hasEdits
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  v3 = [v2 brailleStringDirty];

  return v3;
}

- (BOOL)wantsEdits
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  v3 = [v2 editable];

  return v3;
}

- (void)translate
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  [v2 forceTranslate];
}

- (BOOL)_deleteAtCursorSilently:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CF3318] sharedModel];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 handleDeleteSilently];
  }

  else
  {
    v6 = [v4 handleDelete];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_forwardDeleteAtCursorSilently:(BOOL)a3
{
  if (self->_editableFieldInterruptedByAlert)
  {
    v4 = objc_alloc_init(SCROPendingBrailleDelete);
    v5 = 1;
    [(SCROPendingBrailleDelete *)v4 setIsForwardDelete:1];
    v6 = [(SCROBrailleLine *)self pendingBrailleStringDictionaries];
    [v6 addObject:v4];

    return v5;
  }

  v7 = a3;
  v8 = +[SCROBrailleTranslationManager sharedManager];
  if (![v8 primaryTableSupportsRoundTripping])
  {

    return 0;
  }

  length = self->_selectionRange.length;

  if (length)
  {
    return 0;
  }

  stateManager = self->_stateManager;
  if (v7)
  {

    return [(BRLTBrailleStateManager *)stateManager forwardDeleteBrailleCharSilently];
  }

  else
  {

    return [(BRLTBrailleStateManager *)stateManager forwardDeleteBrailleChar];
  }
}

- (BOOL)moveCursorLeft
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  v3 = [v2 handleMoveCursorLeft];

  return v3;
}

- (BOOL)moveCursorRight
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  v3 = [v2 handleMoveCursorRight];

  return v3;
}

- (BOOL)moveCursorToRouterIndex:(unint64_t)a3 forwardToScreenReader:(BOOL *)a4 updateRouterLocation:(int64_t *)a5
{
  v8 = a3 - self->_leftInset + self->_lineOffset;
  if (v8 >= 0 && v8 < -[NSMutableAttributedString length](self->_lineBuffer, "length") || ([MEMORY[0x277CF3318] sharedModel], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "editable"), v9, (v10 & 1) != 0))
  {
    v11 = [(SCROBrailleLine *)self _selectionForOffsetIndex:v8];
    v12 = [MEMORY[0x277CF3318] sharedModel];
    v13 = [v12 handleBrailleSelection:{v11, 0}];

    if (a4)
    {
      *a4 = v13;
    }

    v14 = [MEMORY[0x277CF3318] sharedModel];
    v15 = [v14 displayedScript];
    v16 = [v15 selection];

    if (a4 && *a4)
    {
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [MEMORY[0x277CF3318] sharedModel];
        v16 = [v17 scriptLocationForBrailleLocation:v11];
      }

      if (*a5 != v16)
      {
        *a5 = v16;
      }
    }

    v18 = 1;
    self->_brailleChunksAreDirty = 1;
    [(SCROBrailleLine *)self _flush];
  }

  else
  {
    v18 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v18;
}

- (BOOL)selectUpToRouterIndex:(unint64_t)a3 selectionBegin:(int64_t *)a4 selectionEnd:(int64_t *)a5
{
  v5 = a3 - self->_leftInset + self->_lineOffset;
  if (v5 < 0 || v5 >= [(NSMutableAttributedString *)self->_lineBuffer length])
  {
    return 0;
  }

  v7 = [(SCROBrailleLine *)self _selectionForOffsetIndex:v5];
  v8 = [MEMORY[0x277CF3318] sharedModel];
  [v8 handleBrailleSelectionUpTo:v7];

  return 1;
}

- (BOOL)selectContiguousBrailleRange:(unint64_t)a3 selectionBegin:(int64_t *)a4 selectionEnd:(int64_t *)a5
{
  v8 = [MEMORY[0x277CF3318] sharedModel];
  v9 = [v8 displayedBraille];
  v10 = [v9 contiguousBrailleRange];
  v12 = v11;

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(SCROBrailleLine *)self _selectBrailleRange:v10 selectionBegin:v12 selectionEnd:a4, a5];
}

- (BOOL)selectEntireLine:(int64_t *)a3 selectionEnd:(int64_t *)a4
{
  v7 = [MEMORY[0x277CF3318] sharedModel];
  v8 = [v7 displayedBraille];
  v9 = [v8 string];
  v10 = [v9 length];

  return [(SCROBrailleLine *)self _selectBrailleRange:0 selectionBegin:v10 selectionEnd:a3, a4];
}

- (BOOL)_selectBrailleRange:(_NSRange)a3 selectionBegin:(int64_t *)a4 selectionEnd:(int64_t *)a5
{
  length = a3.length;
  location = a3.location;
  v9 = [MEMORY[0x277CF3318] sharedModel];
  v10 = [v9 handleBrailleSelection:{location, length}];

  if (a4)
  {
    v11 = [MEMORY[0x277CF3318] sharedModel];
    *a4 = [v11 scriptLocationForBrailleLocation:location];
  }

  if (a5)
  {
    v12 = [MEMORY[0x277CF3318] sharedModel];
    *a5 = [v12 scriptLocationForBrailleLocation:location + length];
  }

  return v10;
}

- (int64_t)_selectionForOffsetIndex:(int64_t)a3
{
  lineBuffer = self->_lineBuffer;
  v5 = a3 + 1;
  v6 = [(NSMutableAttributedString *)lineBuffer length];
  if (v5 < v6)
  {
    v7 = a3 + 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(NSMutableAttributedString *)lineBuffer attributedSubstringFromRange:0, v7];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = [v8 length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SCROBrailleLine__selectionForOffsetIndex___block_invoke;
  v12[3] = &unk_279B74038;
  v12[4] = &v13;
  [v8 enumerateAttribute:@"padd" inRange:0 options:v9 usingBlock:{0, v12}];
  v10 = a3 - v14[3];
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __44__SCROBrailleLine__selectionForOffsetIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 integerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) += a4;
  }

  return result;
}

- (BOOL)insertBrailleStringAtCursor:(id)a3 modifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SCROBrailleFormatter *)self->_brailleFormatter hasPlaceholderText])
  {
    [(SCROBrailleFormatter *)self->_brailleFormatter clearPlaceholderForEditing];
  }

  v8 = [(SCROBrailleLine *)self _insertBrailleStringAtCursor:v6 modifiers:v7 silently:0];

  return v8;
}

- (BOOL)_insertBrailleStringAtCursor:(id)a3 modifiers:(id)a4 silently:(BOOL)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = v6;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = [objc_alloc(MEMORY[0x277CF3328]) initWithUnicode:v6];
  obj = [v21 brailleChars];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v11 = *MEMORY[0x277CF33A8];
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        v15 = [v7 containsObject:v14];

        if (v15)
        {
          if (self->_inputMode == 2)
          {
            [v13 setDot7:1];
          }

          else
          {
            v16 = [objc_alloc(MEMORY[0x277CF3310]) initWithUnicode:@"⠠"];
            v17 = [MEMORY[0x277CF3318] sharedModel];
            [v17 handleBrailleDotPress:v16];
          }
        }

        v18 = [MEMORY[0x277CF3318] sharedModel];
        [v18 handleBrailleDotPress:v13];

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)translatedBrailleForTableIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CF3318] sharedModel];
  v4 = [v3 displayedBraille];
  v5 = [v4 string];

  v6 = +[SCROBrailleTranslationManager sharedManager];
  v7 = [v6 textForPrintBraille:v5 language:0 mode:3 locations:0];

  return v7;
}

- (id)printBrailleForText:(id)a3 language:(id)a4 mode:(unint64_t)a5 textPositionsRange:(_NSRange)a6 locations:(id *)a7 textFormattingRanges:(id)a8
{
  length = a6.length;
  location = a6.location;
  v14 = a8;
  v15 = a4;
  v16 = a3;
  v17 = +[SCROBrailleTranslationManager sharedManager];
  v18 = [v17 printBrailleForText:v16 language:v15 mode:a5 textPositionsRange:location locations:length textFormattingRanges:{a7, v14}];

  return v18;
}

- (id)textForPrintBraille:(id)a3 language:(id)a4 mode:(unint64_t)a5 locations:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = +[SCROBrailleTranslationManager sharedManager];
  v12 = [v11 textForPrintBraille:v10 language:v9 mode:a5 locations:a6];

  return v12;
}

- (void)brailleDisplayStringDidChange:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5 modifiers:(id)a6
{
  length = a4.length;
  location = a4.location;
  v15 = a3;
  v11 = a5;
  v12 = a6;
  self->_brailleChunksAreDirty = 1;
  self->_needsDisplayFlush = 1;
  if (v11)
  {
    self->_needsFocusFlush = 1;
    self->_lineFocus = [v11 lineFocus];
    if ([v11 showAsAlertReady])
    {
      v13 = 6;
    }

    else
    {
      if (![v11 showAsAlert])
      {
        self->_displayMode = 0;
        goto LABEL_8;
      }

      v13 = 1;
    }

    self->_displayMode = v13;
LABEL_8:
    [(SCROBrailleLine *)self _updateOffsets];
    self->_shouldTruncateAtPanBoundary = [v11 truncateAtPanBoundary];
  }

  [(SCROBrailleLine *)self display];
  v14 = [(SCROBrailleLine *)self translationDelegate];
  [v14 brailleDisplayStringDidChange:v15 brailleSelection:location brailleUIOptions:length modifiers:{v11, v12}];
}

- (void)replaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = [(SCROBrailleLine *)self translationDelegate];
  [v10 replaceScriptStringRange:location withScriptString:length cursorLocation:{v9, a5}];
}

- (void)scriptSelectionDidChange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(SCROBrailleLine *)self translationDelegate];
  [v5 scriptSelectionDidChange:{location, length}];
}

- (void)didInsertScriptString:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleLine *)self translationDelegate];
  [v5 didInsertScriptString:v4];
}

- (void)brailleDisplayInsertedCharacter:(id)a3 modifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCROBrailleLine *)self translationDelegate];
  [v8 brailleDisplayInsertedCharacter:v7 modifiers:v6];
}

- (void)brailleDisplayDeletedCharacter:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleLine *)self translationDelegate];
  [v5 brailleDisplayDeletedCharacter:v4];
}

- (void)didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = MEMORY[0x277CF3328];
  v10 = a5;
  v11 = a3;
  v12 = [[v9 alloc] initWithUnicode:v11];

  [(SCROBrailleLine *)self brailleDisplayStringDidChange:v12 brailleSelection:location brailleUIOptions:length modifiers:v10, 0];
}

- (BRLTBrailleStateManagerDelegate)translationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_translationDelegate);

  return WeakRetained;
}

void __36__SCROBrailleLine_newLineDescriptor__block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"SCROBrailleLine.m" lineNumber:1008 description:@"Error: newLineDescriptor range out of bounds"];
}

void __36__SCROBrailleLine_newLineDescriptor__block_invoke_2_cold_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"SCROBrailleLine.m" lineNumber:1009 description:@"Error: newLineDescriptor range out of bounds"];
}

@end