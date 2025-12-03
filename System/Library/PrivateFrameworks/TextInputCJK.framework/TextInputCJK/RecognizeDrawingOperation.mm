@interface RecognizeDrawingOperation
+ (id)drawingWithStrokes:(id)strokes;
+ (id)recognitionResultsForDrawing:(id)drawing withRecognizer:(id)recognizer history:(id)history shouldCancel:(id)cancel;
+ (id)textRecognitionResultsForDrawing:(id)drawing withRecognizer:(id)recognizer keyboardState:(id)state history:(id)history shouldCancel:(id)cancel;
+ (int)autoCorrectionModeForKeyboardAutoCorrectionType:(unint64_t)type;
+ (int)capitalizationModeForKeyboardAutoCapitalizationType:(unint64_t)type;
+ (int)recognitionContentTypeForKeyboardState:(id)state;
- (RecognizeDrawingOperation)initWithInputManager:(id)manager strokes:(id)strokes history:(id)history;
- (void)dealloc;
- (void)main;
@end

@implementation RecognizeDrawingOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if (self->_strokes)
  {
    v4 = [RecognizeDrawingOperation drawingWithStrokes:?];
    recognizer = self->_recognizer;
    manager = [(RecognizeDrawingOperation *)self manager];
    keyboardState = [manager keyboardState];
    v8 = [RecognizeDrawingOperation textRecognitionResultsForDrawing:v4 withRecognizer:recognizer keyboardState:keyboardState history:self->_history shouldCancel:0];

    if (objc_opt_respondsToSelector())
    {
      [v8 performSelector:sel_textRecognitionResultArrayGivenHistory_ withObject:self->_history];
    }

    else
    {
      [v8 textRecognitionResultArray];
    }
    v9 = ;
    [(RecognizeDrawingOperation *)self setCandidates:v9];
    candidates = [(RecognizeDrawingOperation *)self candidates];
    firstObject = [candidates firstObject];

    if (firstObject)
    {
      manager2 = [(RecognizeDrawingOperation *)self manager];
      stickerCandidateGenerator = [manager2 stickerCandidateGenerator];

      string = [firstObject string];
      v15 = [stickerCandidateGenerator generateStickerQueriesForText:string tokenize:0];

      if ([v15 count])
      {
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        objc_initWeak(&location, self);
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __33__RecognizeDrawingOperation_main__block_invoke;
        v22 = &unk_279D9D670;
        v23 = stickerCandidateGenerator;
        v24 = v15;
        objc_copyWeak(&v26, &location);
        v25 = v16;
        v17 = v16;
        TIDispatchAsync();
        dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
      }
    }

    if (([(RecognizeDrawingOperation *)self isCancelled:v19]& 1) == 0)
    {
      manager3 = [(RecognizeDrawingOperation *)self manager];
      [manager3 performSelectorOnMainThread:sel_mainThreadUpdateCandidates_ withObject:self waitUntilDone:0];
    }
  }

  [(RecognizeDrawingOperation *)self setManager:0];
  objc_autoreleasePoolPop(v3);
}

void __33__RecognizeDrawingOperation_main__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) manager];
  v5 = [v4 keyboardState];
  v6 = [v5 secureCandidateRenderTraits];
  v7 = [*(a1 + 48) manager];
  v8 = [v7 inputMode];
  v9 = [v8 languageWithRegion];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__RecognizeDrawingOperation_main__block_invoke_2;
  v10[3] = &unk_279D9D648;
  objc_copyWeak(&v12, (a1 + 64));
  v11 = *(a1 + 56);
  [v2 generateStickerCandidatesForSearchableQueries:v3 withRenderTraits:v6 shouldAppend:1 language:v9 completionHandler:v10];

  objc_destroyWeak(&v12);
}

void __33__RecognizeDrawingOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setStickers:v3];

  dispatch_group_leave(*(a1 + 32));
}

- (void)dealloc
{
  [(RecognizeDrawingOperation *)self setCandidates:0];
  [(RecognizeDrawingOperation *)self setManager:0];
  v3.receiver = self;
  v3.super_class = RecognizeDrawingOperation;
  [(RecognizeDrawingOperation *)&v3 dealloc];
}

- (RecognizeDrawingOperation)initWithInputManager:(id)manager strokes:(id)strokes history:(id)history
{
  managerCopy = manager;
  strokesCopy = strokes;
  historyCopy = history;
  v18.receiver = self;
  v18.super_class = RecognizeDrawingOperation;
  v11 = [(RecognizeDrawingOperation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(RecognizeDrawingOperation *)v11 setManager:managerCopy];
    objc_storeStrong(&v12->_strokes, strokes);
    recognitionLanguage = [managerCopy recognitionLanguage];
    recognitionLanguage = v12->_recognitionLanguage;
    v12->_recognitionLanguage = recognitionLanguage;

    objc_storeStrong(&v12->_history, history);
    recognizer = [managerCopy recognizer];
    recognizer = v12->_recognizer;
    v12->_recognizer = recognizer;
  }

  return v12;
}

+ (id)drawingWithStrokes:(id)strokes
{
  strokesCopy = strokes;
  v4 = objc_alloc_init(MEMORY[0x277CFEE38]);
  if ([strokesCopy numberOfStrokes])
  {
    v5 = 0;
    do
    {
      if ([strokesCopy numberOfPointsInStrokeAtIndex:v5])
      {
        v6 = 0;
        do
        {
          [strokesCopy pointAtIndex:v6 inStrokeAtIndex:v5];
          [v4 addPoint:?];
          ++v6;
        }

        while ([strokesCopy numberOfPointsInStrokeAtIndex:v5] > v6);
      }

      [v4 endStroke];
      ++v5;
    }

    while ([strokesCopy numberOfStrokes] > v5);
  }

  return v4;
}

+ (id)recognitionResultsForDrawing:(id)drawing withRecognizer:(id)recognizer history:(id)history shouldCancel:(id)cancel
{
  v21[1] = *MEMORY[0x277D85DE8];
  drawingCopy = drawing;
  recognizerCopy = recognizer;
  historyCopy = history;
  cancelCopy = cancel;
  if (TIGetHandwritingMultipleCharacterRecognitionEnabledValue(void)::onceToken != -1)
  {
    dispatch_once(&TIGetHandwritingMultipleCharacterRecognitionEnabledValue(void)::onceToken, &__block_literal_global_417);
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v14 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"HandwritingMultipleCharacterRecognitionEnabled"];

  LODWORD(mEMORY[0x277D6F470]) = [v14 BOOLValue];
  if (mEMORY[0x277D6F470])
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  [recognizerCopy setRecognitionMode:v15];
  if (historyCopy)
  {
    v20 = *MEMORY[0x277CFEE28];
    v21[0] = historyCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [recognizerCopy recognitionResultsForDrawing:drawingCopy options:v16 shouldCancel:cancelCopy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)textRecognitionResultsForDrawing:(id)drawing withRecognizer:(id)recognizer keyboardState:(id)state history:(id)history shouldCancel:(id)cancel
{
  drawingCopy = drawing;
  recognizerCopy = recognizer;
  stateCopy = state;
  historyCopy = history;
  cancelCopy = cancel;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (historyCopy)
  {
    [v17 setObject:historyCopy forKey:*MEMORY[0x277CFEE28]];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = cancelCopy;
    v19 = recognizerCopy;
    [v18 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFEE20]];
    [drawingCopy bounds];
    v21 = v20;
    [drawingCopy bounds];
    v23 = v21 + v22;
    [drawingCopy bounds];
    if (v23 >= 333.3)
    {
      v25 = v24 <= 666.7;
      v24 = 0.0;
      if (!v25)
      {
        [drawingCopy bounds];
        v24 = -v26;
      }
    }

    v42[0] = 0;
    *&v42[1] = v24;
    v27 = [MEMORY[0x277CCAE60] value:v42 withObjCType:"{CGPoint=dd}"];
    [v18 setObject:v27 forKey:*MEMORY[0x277CFEE10]];
    v41 = 0x4074D55555555555;
    v28 = [MEMORY[0x277CCAE60] value:&v41 withObjCType:"d"];
    [v18 setObject:v28 forKey:*MEMORY[0x277CFEE18]];
    if (stateCopy)
    {
      [v19 setContentType:{objc_msgSend(self, "recognitionContentTypeForKeyboardState:", stateCopy)}];
      [stateCopy textInputTraits];
      v38 = v27;
      v30 = v29 = self;
      v31 = [v29 capitalizationModeForKeyboardAutoCapitalizationType:{objc_msgSend(v30, "autocapitalizationType")}];

      [v19 setAutoCapitalizationMode:v31];
      textInputTraits = [stateCopy textInputTraits];
      autocorrectionType = [textInputTraits autocorrectionType];
      v34 = v29;
      v27 = v38;
      v35 = [v34 autoCorrectionModeForKeyboardAutoCorrectionType:autocorrectionType];

      [v19 setAutoCorrectionMode:v35];
    }

    v40 = 0;
    v36 = [v19 textRecognitionResultForDrawing:drawingCopy options:v18 error:&v40];

    cancelCopy = v39;
  }

  else
  {
    v36 = [recognizerCopy textRecognitionResultForDrawing:drawingCopy options:v18 shouldCancel:cancelCopy];
  }

  return v36;
}

+ (int)autoCorrectionModeForKeyboardAutoCorrectionType:(unint64_t)type
{
  if (type == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 1);
  }
}

+ (int)capitalizationModeForKeyboardAutoCapitalizationType:(unint64_t)type
{
  if (type > 3)
  {
    return 1;
  }

  else
  {
    return dword_26D480960[type];
  }
}

+ (int)recognitionContentTypeForKeyboardState:(id)state
{
  stateCopy = state;
  textInputTraits = [stateCopy textInputTraits];
  textContentType = [textInputTraits textContentType];

  if (textContentType)
  {
    if ([textContentType isEqualToString:*MEMORY[0x277D6FCE8]])
    {
      v6 = 3;
      goto LABEL_15;
    }

    if ([textContentType isEqualToString:*MEMORY[0x277D6FCB8]])
    {
      v6 = 6;
      goto LABEL_15;
    }

    if ([textContentType isEqualToString:*MEMORY[0x277D6FC58]])
    {
      v6 = 4;
      goto LABEL_15;
    }

    if ([textContentType isEqualToString:*MEMORY[0x277D6FCE0]])
    {
      v6 = 5;
      goto LABEL_15;
    }

    if ([textContentType isEqualToString:*MEMORY[0x277D6FCD8]])
    {
      v6 = 2;
      goto LABEL_15;
    }
  }

  keyboardType = [stateCopy keyboardType];
  if ((keyboardType - 3) > 0xF)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_26D480978[keyboardType - 3];
  }

LABEL_15:

  return v6;
}

@end