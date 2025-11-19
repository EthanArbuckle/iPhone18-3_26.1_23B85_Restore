@interface RecognizeDrawingOperation
+ (id)drawingWithStrokes:(id)a3;
+ (id)recognitionResultsForDrawing:(id)a3 withRecognizer:(id)a4 history:(id)a5 shouldCancel:(id)a6;
+ (id)textRecognitionResultsForDrawing:(id)a3 withRecognizer:(id)a4 keyboardState:(id)a5 history:(id)a6 shouldCancel:(id)a7;
+ (int)autoCorrectionModeForKeyboardAutoCorrectionType:(unint64_t)a3;
+ (int)capitalizationModeForKeyboardAutoCapitalizationType:(unint64_t)a3;
+ (int)recognitionContentTypeForKeyboardState:(id)a3;
- (RecognizeDrawingOperation)initWithInputManager:(id)a3 strokes:(id)a4 history:(id)a5;
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
    v6 = [(RecognizeDrawingOperation *)self manager];
    v7 = [v6 keyboardState];
    v8 = [RecognizeDrawingOperation textRecognitionResultsForDrawing:v4 withRecognizer:recognizer keyboardState:v7 history:self->_history shouldCancel:0];

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
    v10 = [(RecognizeDrawingOperation *)self candidates];
    v11 = [v10 firstObject];

    if (v11)
    {
      v12 = [(RecognizeDrawingOperation *)self manager];
      v13 = [v12 stickerCandidateGenerator];

      v14 = [v11 string];
      v15 = [v13 generateStickerQueriesForText:v14 tokenize:0];

      if ([v15 count])
      {
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        objc_initWeak(&location, self);
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __33__RecognizeDrawingOperation_main__block_invoke;
        v22 = &unk_279D9D670;
        v23 = v13;
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
      v18 = [(RecognizeDrawingOperation *)self manager];
      [v18 performSelectorOnMainThread:sel_mainThreadUpdateCandidates_ withObject:self waitUntilDone:0];
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

- (RecognizeDrawingOperation)initWithInputManager:(id)a3 strokes:(id)a4 history:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = RecognizeDrawingOperation;
  v11 = [(RecognizeDrawingOperation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(RecognizeDrawingOperation *)v11 setManager:v8];
    objc_storeStrong(&v12->_strokes, a4);
    v13 = [v8 recognitionLanguage];
    recognitionLanguage = v12->_recognitionLanguage;
    v12->_recognitionLanguage = v13;

    objc_storeStrong(&v12->_history, a5);
    v15 = [v8 recognizer];
    recognizer = v12->_recognizer;
    v12->_recognizer = v15;
  }

  return v12;
}

+ (id)drawingWithStrokes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CFEE38]);
  if ([v3 numberOfStrokes])
  {
    v5 = 0;
    do
    {
      if ([v3 numberOfPointsInStrokeAtIndex:v5])
      {
        v6 = 0;
        do
        {
          [v3 pointAtIndex:v6 inStrokeAtIndex:v5];
          [v4 addPoint:?];
          ++v6;
        }

        while ([v3 numberOfPointsInStrokeAtIndex:v5] > v6);
      }

      [v4 endStroke];
      ++v5;
    }

    while ([v3 numberOfStrokes] > v5);
  }

  return v4;
}

+ (id)recognitionResultsForDrawing:(id)a3 withRecognizer:(id)a4 history:(id)a5 shouldCancel:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (TIGetHandwritingMultipleCharacterRecognitionEnabledValue(void)::onceToken != -1)
  {
    dispatch_once(&TIGetHandwritingMultipleCharacterRecognitionEnabledValue(void)::onceToken, &__block_literal_global_417);
  }

  v13 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v14 = [v13 valueForPreferenceKey:@"HandwritingMultipleCharacterRecognitionEnabled"];

  LODWORD(v13) = [v14 BOOLValue];
  if (v13)
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  [v10 setRecognitionMode:v15];
  if (v11)
  {
    v20 = *MEMORY[0x277CFEE28];
    v21[0] = v11;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 recognitionResultsForDrawing:v9 options:v16 shouldCancel:v12];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)textRecognitionResultsForDrawing:(id)a3 withRecognizer:(id)a4 keyboardState:(id)a5 history:(id)a6 shouldCancel:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v15)
  {
    [v17 setObject:v15 forKey:*MEMORY[0x277CFEE28]];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v16;
    v19 = v13;
    [v18 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFEE20]];
    [v12 bounds];
    v21 = v20;
    [v12 bounds];
    v23 = v21 + v22;
    [v12 bounds];
    if (v23 >= 333.3)
    {
      v25 = v24 <= 666.7;
      v24 = 0.0;
      if (!v25)
      {
        [v12 bounds];
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
    if (v14)
    {
      [v19 setContentType:{objc_msgSend(a1, "recognitionContentTypeForKeyboardState:", v14)}];
      [v14 textInputTraits];
      v38 = v27;
      v30 = v29 = a1;
      v31 = [v29 capitalizationModeForKeyboardAutoCapitalizationType:{objc_msgSend(v30, "autocapitalizationType")}];

      [v19 setAutoCapitalizationMode:v31];
      v32 = [v14 textInputTraits];
      v33 = [v32 autocorrectionType];
      v34 = v29;
      v27 = v38;
      v35 = [v34 autoCorrectionModeForKeyboardAutoCorrectionType:v33];

      [v19 setAutoCorrectionMode:v35];
    }

    v40 = 0;
    v36 = [v19 textRecognitionResultForDrawing:v12 options:v18 error:&v40];

    v16 = v39;
  }

  else
  {
    v36 = [v13 textRecognitionResultForDrawing:v12 options:v18 shouldCancel:v16];
  }

  return v36;
}

+ (int)autoCorrectionModeForKeyboardAutoCorrectionType:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

+ (int)capitalizationModeForKeyboardAutoCapitalizationType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 1;
  }

  else
  {
    return dword_26D480960[a3];
  }
}

+ (int)recognitionContentTypeForKeyboardState:(id)a3
{
  v3 = a3;
  v4 = [v3 textInputTraits];
  v5 = [v4 textContentType];

  if (v5)
  {
    if ([v5 isEqualToString:*MEMORY[0x277D6FCE8]])
    {
      v6 = 3;
      goto LABEL_15;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D6FCB8]])
    {
      v6 = 6;
      goto LABEL_15;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D6FC58]])
    {
      v6 = 4;
      goto LABEL_15;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D6FCE0]])
    {
      v6 = 5;
      goto LABEL_15;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D6FCD8]])
    {
      v6 = 2;
      goto LABEL_15;
    }
  }

  v7 = [v3 keyboardType];
  if ((v7 - 3) > 0xF)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_26D480978[v7 - 3];
  }

LABEL_15:

  return v6;
}

@end