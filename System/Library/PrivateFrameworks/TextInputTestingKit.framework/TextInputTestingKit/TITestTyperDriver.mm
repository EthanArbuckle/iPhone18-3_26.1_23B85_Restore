@interface TITestTyperDriver
- (BOOL)consumeTestFile:(id)file;
- (BOOL)consumeTextString:(id)string;
- (BOOL)handleBoolConfig:(id)config withValue:(BOOL)value lineNumber:(int)number;
- (BOOL)handleIntConfig:(id)config withValue:(int)value lineNumber:(int)number;
- (BOOL)handleStringConfig:(id)config withValue:(id)value lineNumber:(int)number;
- (TITestTyperDriver)initWithTestTyper:(id)typer;
- (void)handleCommand:(id)command withValue:(id)value lineNumber:(int)number;
- (void)handleCorrectionMatch:(id)match lineNumber:(int)number;
- (void)handleDocumentMatch:(id)match lineNumber:(int)number;
- (void)handleNewLine;
- (void)handlePredictionMatch:(id)match lineNumber:(int)number;
- (void)printDebugInfo:(id)info lineNumber:(int)number;
- (void)reportFailedTest:(id)test lineNumber:(int)number;
- (void)reportSyntaxErrors:(id)errors lineNumber:(int)number;
- (void)selectFromPredictionBar:(id)bar lineNumber:(int)number;
@end

@implementation TITestTyperDriver

- (void)selectFromPredictionBar:(id)bar lineNumber:(int)number
{
  v4 = *&number;
  v20 = *MEMORY[0x277D85DE8];
  barCopy = bar;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  predictions = [(TIKeyboardTyper *)self->_testTyper predictions];
  v8 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(predictions);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        candidate = [v12 candidate];
        v14 = [candidate isEqualToString:barCopy];

        if (v14)
        {
          [(TIKeyboardTyper *)self->_testTyper acceptPredictiveCandidate:v12];
          goto LABEL_11;
        }
      }

      v9 = [predictions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  predictions = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to select prediction '%@'", barCopy];
  [(TITestTyperDriver *)self reportFailedTest:predictions lineNumber:v4];
LABEL_11:
}

- (void)printDebugInfo:(id)info lineNumber:(int)number
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = infoCopy;
  if (!infoCopy || ([infoCopy isEqualToString:@"all"] & 1) != 0)
  {
    text = [(TIKeyboardTyper *)self->_testTyper text];
    printf("text: %s\n", [text UTF8String]);

    autocorrection = [(TIKeyboardTyper *)self->_testTyper autocorrection];
    candidate = [autocorrection candidate];
    printf("autocorrection: %s\n", [candidate UTF8String]);

LABEL_4:
    printf("predictions: ");
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    predictions = [(TIKeyboardTyper *)self->_testTyper predictions];
    v11 = [predictions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(predictions);
          }

          candidate2 = [*(*(&v19 + 1) + 8 * v14) candidate];
          printf("%s, ", [candidate2 UTF8String]);

          ++v14;
        }

        while (v12 != v14);
        v12 = [predictions countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    putchar(10);
    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"text"])
  {
    text2 = [(TIKeyboardTyper *)self->_testTyper text];
    printf("text: %s\n", [text2 UTF8String]);
  }

  if ([v6 isEqualToString:@"correction"])
  {
    autocorrection2 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
    candidate3 = [autocorrection2 candidate];
    printf("autocorrection: %s\n", [candidate3 UTF8String]);
  }

  if ([v6 isEqualToString:@"predictions"])
  {
    goto LABEL_4;
  }

LABEL_12:
}

- (BOOL)handleStringConfig:(id)config withValue:(id)value lineNumber:(int)number
{
  config = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@ is not recognized string configuration", value, *&number, config];
  [(NSMutableArray *)self->_syntaxErrors addObject:config];

  return 0;
}

- (BOOL)handleIntConfig:(id)config withValue:(int)value lineNumber:(int)number
{
  config = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@ is not recognized integer configuration", *&value, *&number, config];
  [(NSMutableArray *)self->_syntaxErrors addObject:config];

  return 0;
}

- (BOOL)handleBoolConfig:(id)config withValue:(BOOL)value lineNumber:(int)number
{
  v5 = *&number;
  valueCopy = value;
  configCopy = config;
  if ([configCopy isEqualToString:@"wordLearningEnabled"])
  {
    [(TIKeyboardTyper *)self->_testTyper setWordLearningEnabled:valueCopy];
LABEL_6:
    [(TIKeyboardTyper *)self->_testTyper reset];
    goto LABEL_7;
  }

  if (([configCopy isEqualToString:@"usesPrediction"] & 1) != 0 || objc_msgSend(configCopy, "isEqualToString:", @"generateMultipleCandidates"))
  {
    [(TIKeyboardTyper *)self->_testTyper setUsesPrediction:valueCopy];
    goto LABEL_6;
  }

  if ([configCopy isEqualToString:@"usesAutocapitalization"])
  {
    [(TIKeyboardTyper *)self->_testTyper setUsesAutocapitalization:valueCopy];
    goto LABEL_6;
  }

  if ([configCopy isEqualToString:@"hardwareKeyboardMode"])
  {
    [(TIKeyboardTyper *)self->_testTyper setHardwareKeyboardMode:valueCopy];
    goto LABEL_6;
  }

  if ([configCopy isEqualToString:@"usesAutocorrection"])
  {
    [(TIKeyboardTyper *)self->_testTyper setUsesAutocorrection:valueCopy];
    goto LABEL_6;
  }

  if ([configCopy isEqualToString:@"shouldSkipCandidateSelection"])
  {
    [(TIKeyboardTyper *)self->_testTyper setShouldSkipCandidateSelection:valueCopy];
  }

  else
  {
    if (![configCopy isEqualToString:@"bisonDebug"])
    {
      configCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@ is not recognized BOOLean configuration", v5, configCopy];
      [(NSMutableArray *)self->_syntaxErrors addObject:configCopy];

      v9 = 0;
      goto LABEL_8;
    }

    actDsldebug = valueCopy;
  }

LABEL_7:
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)handleCommand:(id)command withValue:(id)value lineNumber:(int)number
{
  v5 = *&number;
  commandCopy = command;
  valueCopy = value;
  if ([commandCopy isEqualToString:@"shift"])
  {
    [(TIKeyboardTyper *)self->_testTyper attemptToShift];
  }

  else if ([commandCopy isEqualToString:@"delete"])
  {
    [(TIKeyboardTyper *)self->_testTyper attemptToDelete];
  }

  else if ([commandCopy isEqualToString:@"reset"])
  {
    [(TIKeyboardTyper *)self->_testTyper reset];
  }

  else if ([commandCopy isEqualToString:@"reject"])
  {
    [(TIKeyboardTyper *)self->_testTyper rejectAutocorrection];
  }

  else if ([commandCopy isEqualToString:@"accept"])
  {
    [(TIKeyboardTyper *)self->_testTyper acceptAutocorrection];
  }

  else if ([commandCopy isEqualToString:@"sync"])
  {
    [(TIKeyboardTyper *)self->_testTyper syncToEmptyDocument];
  }

  else if ([commandCopy isEqualToString:@"print"])
  {
    [(TITestTyperDriver *)self printDebugInfo:valueCopy lineNumber:v5];
  }

  else if ([commandCopy isEqualToString:@"select"])
  {
    [(TITestTyperDriver *)self selectFromPredictionBar:valueCopy lineNumber:v5];
  }

  else
  {
    commandCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown command %@", commandCopy];
    [(TITestTyperDriver *)self reportSyntaxErrors:commandCopy lineNumber:v5];
  }
}

- (void)handleCorrectionMatch:(id)match lineNumber:(int)number
{
  v4 = *&number;
  matchCopy = match;
  autocorrection = [(TIKeyboardTyper *)self->_testTyper autocorrection];
  candidate = [autocorrection candidate];
  v8 = [candidate isEqualToString:matchCopy];

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CCACA8];
    autocorrection2 = [(TIKeyboardTyper *)self->_testTyper autocorrection];
    candidate2 = [autocorrection2 candidate];
    v12 = [v9 stringWithFormat:@"expected autocorrection '%@' got '%@'", matchCopy, candidate2];
    [(TITestTyperDriver *)self reportFailedTest:v12 lineNumber:v4];
  }
}

- (void)handlePredictionMatch:(id)match lineNumber:(int)number
{
  v4 = *&number;
  matchCopy = match;
  if (![(TIKeyboardTyper *)self->_testTyper hasPrediction:?])
  {
    matchCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"expected prediction '%@'", matchCopy];
    [(TITestTyperDriver *)self reportFailedTest:matchCopy lineNumber:v4];
  }
}

- (void)handleDocumentMatch:(id)match lineNumber:(int)number
{
  v4 = *&number;
  matchCopy = match;
  text = [(TIKeyboardTyper *)self->_testTyper text];
  if (([text hasSuffix:matchCopy] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected text '%@' got '%@'", matchCopy, text];
    [(TITestTyperDriver *)self reportFailedTest:v7 lineNumber:v4];
  }
}

- (void)handleNewLine
{
  text = [(TIKeyboardTyper *)self->_testTyper text];
  v7 = text;
  if (self->_debug)
  {
    if ([text length])
    {
      v4 = v7;
      printf("text: %s\n", [v7 UTF8String]);
      if (([v7 hasSuffix:@" "] & 1) == 0)
      {
        autocorrection = [(TIKeyboardTyper *)self->_testTyper autocorrection];
        candidate = [autocorrection candidate];
        printf("corr: %s\n", [candidate UTF8String]);
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

- (void)reportSyntaxErrors:(id)errors lineNumber:(int)number
{
  v4 = *&number;
  errorsCopy = errors;
  errorsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@", v4, errorsCopy];
  if (self->_debug)
  {
    NSLog(&cfstr_Error.isa, errorsCopy);
  }

  else
  {
    [(NSMutableArray *)self->_syntaxErrors addObject:errorsCopy];
  }
}

- (void)reportFailedTest:(id)test lineNumber:(int)number
{
  v4 = *&number;
  testCopy = test;
  testCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"line:%d, %@", v4, testCopy];
  if (self->_debug)
  {
    NSLog(&cfstr_FailedTest.isa, testCopy);
  }

  else
  {
    [(NSMutableArray *)self->_failedTests addObject:testCopy];
  }
}

- (BOOL)consumeTextString:(id)string
{
  testTyper = self->_testTyper;
  stringCopy = string;
  [(TIKeyboardTyper *)testTyper reset];
  yy_start = 1;
  stringLen = 0;
  uTF8String = [stringCopy UTF8String];

  v7 = strlen(uTF8String);
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
      v12 = *uTF8String++;
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

- (BOOL)consumeTestFile:(id)file
{
  fileCopy = file;
  v5 = fileCopy;
  if (fileCopy)
  {
    actDslin = fopen([fileCopy UTF8String], "r");
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

- (TITestTyperDriver)initWithTestTyper:(id)typer
{
  typerCopy = typer;
  v13.receiver = self;
  v13.super_class = TITestTyperDriver;
  v6 = [(TITestTyperDriver *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testTyper, typer);
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