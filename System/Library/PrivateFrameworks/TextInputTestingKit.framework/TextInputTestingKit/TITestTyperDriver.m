@interface TITestTyperDriver
- (BOOL)consumeTestFile:(id)a3;
- (BOOL)consumeTextString:(id)a3;
- (BOOL)handleBoolConfig:(id)a3 withValue:(BOOL)a4 lineNumber:(int)a5;
- (BOOL)handleIntConfig:(id)a3 withValue:(int)a4 lineNumber:(int)a5;
- (BOOL)handleStringConfig:(id)a3 withValue:(id)a4 lineNumber:(int)a5;
- (TITestTyperDriver)initWithTestTyper:(id)a3;
- (void)handleCommand:(id)a3 withValue:(id)a4 lineNumber:(int)a5;
- (void)handleCorrectionMatch:(id)a3 lineNumber:(int)a4;
- (void)handleDocumentMatch:(id)a3 lineNumber:(int)a4;
- (void)handleNewLine;
- (void)handlePredictionMatch:(id)a3 lineNumber:(int)a4;
- (void)printDebugInfo:(id)a3 lineNumber:(int)a4;
- (void)reportFailedTest:(id)a3 lineNumber:(int)a4;
- (void)reportSyntaxErrors:(id)a3 lineNumber:(int)a4;
- (void)selectFromPredictionBar:(id)a3 lineNumber:(int)a4;
@end

@implementation TITestTyperDriver

- (void)selectFromPredictionBar:(id)a3 lineNumber:(int)a4
{
  v4 = *&a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(TIKeyboardTyper *)self->_testTyper predictions];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 candidate];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          [(TIKeyboardTyper *)self->_testTyper acceptPredictiveCandidate:v12];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to select prediction '%@'", v6];
  [(TITestTyperDriver *)self reportFailedTest:v7 lineNumber:v4];
LABEL_11:
}

- (void)printDebugInfo:(id)a3 lineNumber:(int)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5 || ([v5 isEqualToString:@"all"] & 1) != 0)
  {
    v7 = [(TIKeyboardTyper *)self->_testTyper text];
    printf("text: %s\n", [v7 UTF8String]);

    v8 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
    v9 = [v8 candidate];
    printf("autocorrection: %s\n", [v9 UTF8String]);

LABEL_4:
    printf("predictions: ");
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(TIKeyboardTyper *)self->_testTyper predictions];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * v14) candidate];
          printf("%s, ", [v15 UTF8String]);

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    putchar(10);
    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"text"])
  {
    v16 = [(TIKeyboardTyper *)self->_testTyper text];
    printf("text: %s\n", [v16 UTF8String]);
  }

  if ([v6 isEqualToString:@"correction"])
  {
    v17 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
    v18 = [v17 candidate];
    printf("autocorrection: %s\n", [v18 UTF8String]);
  }

  if ([v6 isEqualToString:@"predictions"])
  {
    goto LABEL_4;
  }

LABEL_12:
}

- (BOOL)handleStringConfig:(id)a3 withValue:(id)a4 lineNumber:(int)a5
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@ is not recognized string configuration", a4, *&a5, a3];
  [(NSMutableArray *)self->_syntaxErrors addObject:v6];

  return 0;
}

- (BOOL)handleIntConfig:(id)a3 withValue:(int)a4 lineNumber:(int)a5
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@ is not recognized integer configuration", *&a4, *&a5, a3];
  [(NSMutableArray *)self->_syntaxErrors addObject:v6];

  return 0;
}

- (BOOL)handleBoolConfig:(id)a3 withValue:(BOOL)a4 lineNumber:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v8 = a3;
  if ([v8 isEqualToString:@"wordLearningEnabled"])
  {
    [(TIKeyboardTyper *)self->_testTyper setWordLearningEnabled:v6];
LABEL_6:
    [(TIKeyboardTyper *)self->_testTyper reset];
    goto LABEL_7;
  }

  if (([v8 isEqualToString:@"usesPrediction"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"generateMultipleCandidates"))
  {
    [(TIKeyboardTyper *)self->_testTyper setUsesPrediction:v6];
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"usesAutocapitalization"])
  {
    [(TIKeyboardTyper *)self->_testTyper setUsesAutocapitalization:v6];
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"hardwareKeyboardMode"])
  {
    [(TIKeyboardTyper *)self->_testTyper setHardwareKeyboardMode:v6];
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"usesAutocorrection"])
  {
    [(TIKeyboardTyper *)self->_testTyper setUsesAutocorrection:v6];
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"shouldSkipCandidateSelection"])
  {
    [(TIKeyboardTyper *)self->_testTyper setShouldSkipCandidateSelection:v6];
  }

  else
  {
    if (![v8 isEqualToString:@"bisonDebug"])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@ is not recognized BOOLean configuration", v5, v8];
      [(NSMutableArray *)self->_syntaxErrors addObject:v11];

      v9 = 0;
      goto LABEL_8;
    }

    actDsldebug = v6;
  }

LABEL_7:
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)handleCommand:(id)a3 withValue:(id)a4 lineNumber:(int)a5
{
  v5 = *&a5;
  v10 = a3;
  v8 = a4;
  if ([v10 isEqualToString:@"shift"])
  {
    [(TIKeyboardTyper *)self->_testTyper attemptToShift];
  }

  else if ([v10 isEqualToString:@"delete"])
  {
    [(TIKeyboardTyper *)self->_testTyper attemptToDelete];
  }

  else if ([v10 isEqualToString:@"reset"])
  {
    [(TIKeyboardTyper *)self->_testTyper reset];
  }

  else if ([v10 isEqualToString:@"reject"])
  {
    [(TIKeyboardTyper *)self->_testTyper rejectAutocorrection];
  }

  else if ([v10 isEqualToString:@"accept"])
  {
    [(TIKeyboardTyper *)self->_testTyper acceptAutocorrection];
  }

  else if ([v10 isEqualToString:@"sync"])
  {
    [(TIKeyboardTyper *)self->_testTyper syncToEmptyDocument];
  }

  else if ([v10 isEqualToString:@"print"])
  {
    [(TITestTyperDriver *)self printDebugInfo:v8 lineNumber:v5];
  }

  else if ([v10 isEqualToString:@"select"])
  {
    [(TITestTyperDriver *)self selectFromPredictionBar:v8 lineNumber:v5];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown command %@", v10];
    [(TITestTyperDriver *)self reportSyntaxErrors:v9 lineNumber:v5];
  }
}

- (void)handleCorrectionMatch:(id)a3 lineNumber:(int)a4
{
  v4 = *&a4;
  v13 = a3;
  v6 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
  v7 = [v6 candidate];
  v8 = [v7 isEqualToString:v13];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
    v11 = [v10 candidate];
    v12 = [v9 stringWithFormat:@"expected autocorrection '%@' got '%@'", v13, v11];
    [(TITestTyperDriver *)self reportFailedTest:v12 lineNumber:v4];
  }
}

- (void)handlePredictionMatch:(id)a3 lineNumber:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  if (![(TIKeyboardTyper *)self->_testTyper hasPrediction:?])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected prediction '%@'", v7];
    [(TITestTyperDriver *)self reportFailedTest:v6 lineNumber:v4];
  }
}

- (void)handleDocumentMatch:(id)a3 lineNumber:(int)a4
{
  v4 = *&a4;
  v8 = a3;
  v6 = [(TIKeyboardTyper *)self->_testTyper text];
  if (([v6 hasSuffix:v8] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected text '%@' got '%@'", v8, v6];
    [(TITestTyperDriver *)self reportFailedTest:v7 lineNumber:v4];
  }
}

- (void)handleNewLine
{
  v3 = [(TIKeyboardTyper *)self->_testTyper text];
  v7 = v3;
  if (self->_debug)
  {
    if ([v3 length])
    {
      v4 = v7;
      printf("text: %s\n", [v7 UTF8String]);
      if (([v7 hasSuffix:@" "] & 1) == 0)
      {
        v5 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
        v6 = [v5 candidate];
        printf("corr: %s\n", [v6 UTF8String]);
      }
    }

    [(TIKeyboardTyper *)self->_testTyper reset];
    printf("==> ");
  }

  else
  {
    [(TITestTyperDriver *)self handleTyping:@"\n"];
  }
}

- (void)reportSyntaxErrors:(id)a3 lineNumber:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@", v4, v7];
  if (self->_debug)
  {
    NSLog(&cfstr_Error.isa, v7);
  }

  else
  {
    [(NSMutableArray *)self->_syntaxErrors addObject:v6];
  }
}

- (void)reportFailedTest:(id)a3 lineNumber:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@", v4, v7];
  if (self->_debug)
  {
    NSLog(&cfstr_FailedTest.isa, v7);
  }

  else
  {
    [(NSMutableArray *)self->_failedTests addObject:v6];
  }
}

- (BOOL)consumeTextString:(id)a3
{
  testTyper = self->_testTyper;
  v5 = a3;
  [(TIKeyboardTyper *)testTyper reset];
  yy_start = 1;
  stringLen = 0;
  v6 = [v5 UTF8String];

  v7 = strlen(v6);
  v8 = malloc_type_malloc(v7 + 2, 0x9D2437DFuLL);
  if (!v8)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_bytes()");
  }

  v9 = v8;
  if (v7 << 32)
  {
    v10 = v8;
    v11 = v7;
    do
    {
      v12 = *v6++;
      *v10++ = v12;
      --v11;
    }

    while (v11);
    *&v8[v7] = 0;
    if (v7 > 0xFFFFFFFFFFFFFFFDLL)
    {
      yy_fatal_error("bad buffer in yy_scan_bytes()");
    }
  }

  else
  {
    *&v8[v7] = 0;
  }

  v13 = malloc_type_malloc(0x48uLL, 0x9D2437DFuLL);
  if (!v13)
  {
    yy_fatal_error("out of dynamic memory in yy_scan_buffer()");
  }

  v14 = v13;
  *(v13 + 6) = v7;
  *(v13 + 1) = v9;
  *(v13 + 2) = v9;
  *v13 = 0;
  *(v13 + 4) = v7;
  *(v13 + 5) = 0;
  *(v13 + 12) = 1;
  *(v13 + 60) = 0;
  actDslensure_buffer_stack();
  v15 = yy_buffer_stack;
  if (yy_buffer_stack)
  {
    if (*yy_buffer_stack == v14)
    {
      goto LABEL_14;
    }

    if (*yy_buffer_stack)
    {
      v16 = yy_c_buf_p;
      *yy_c_buf_p = yy_hold_char;
      *(*v15 + 16) = v16;
      *(*v15 + 32) = yy_n_chars;
    }
  }

  *v15 = v14;
  yy_n_chars = *(v14 + 4);
  yy_c_buf_p = *(v14 + 2);
  actDsltext = yy_c_buf_p;
  actDslin = *v14;
  yy_hold_char = *yy_c_buf_p;
LABEL_14:
  *(v14 + 10) = 1;
  actDslparse(self);
  if (yy_buffer_stack)
  {
    v17 = *yy_buffer_stack;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == v14)
  {
    *yy_buffer_stack = 0;
  }

  if (*(v14 + 10))
  {
    free(*(v14 + 1));
  }

  free(v14);
  return ![(NSMutableArray *)self->_failedTests count]&& [(NSMutableArray *)self->_syntaxErrors count]== 0;
}

- (BOOL)consumeTestFile:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    actDslin = fopen([v4 UTF8String], "r");
    yy_start = 1;
    stringLen = 0;
    actDslparse(self);
    fclose(actDslin);
  }

  else
  {
    actDslin = *MEMORY[0x277D85E00];
    self->_debug = 1;
    printf("\n\n****** UNIT TEST CONSOLE *****\n\n==>");
    fflush(*MEMORY[0x277D85E08]);
    yy_start = 1;
    stringLen = 0;
    actDslparse(self);
  }

  actDslin = 0;

  return 1;
}

- (TITestTyperDriver)initWithTestTyper:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TITestTyperDriver;
  v6 = [(TITestTyperDriver *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testTyper, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    failedTests = v7->_failedTests;
    v7->_failedTests = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    syntaxErrors = v7->_syntaxErrors;
    v7->_syntaxErrors = v10;
  }

  return v7;
}

@end