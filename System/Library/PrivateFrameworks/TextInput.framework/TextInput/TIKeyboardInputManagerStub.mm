@interface TIKeyboardInputManagerStub
+ (id)serverInterface;
+ (void)setArrayClassesForSelectorsInInterface:(id)interface;
- (id)keyboardConfiguration;
- (void)addSupplementalLexicon:(id)lexicon completionHandler:(id)handler;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity keyboardState:(id)state completionHandler:(id)handler;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler;
- (void)generateAutocorrectionsWithKeyboardState:(id)state completionHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler;
- (void)generateRefinementsForCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler;
- (void)generateReplacementsForString:(id)string keyLayout:(id)layout continuation:(id)continuation;
- (void)handleAcceptedCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler;
- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler;
- (void)performHitTestForTouchEvent:(id)event keyboardState:(id)state continuation:(id)continuation;
- (void)performHitTestForTouchEvents:(id)events keyboardState:(id)state continuation:(id)continuation;
- (void)smartSelectionForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options completion:(id)completion;
- (void)stickerWithIdentifier:(id)identifier stickerRoles:(id)roles completionHandler:(id)handler;
- (void)syncToKeyboardState:(id)state completionHandler:(id)handler;
- (void)textAccepted:(id)accepted completionHandler:(id)handler;
- (void)writeTypologyLogWithCompletionHandler:(id)handler;
@end

@implementation TIKeyboardInputManagerStub

- (id)keyboardConfiguration
{
  v2 = objc_alloc_init(TIKeyboardConfiguration);
  v3 = objc_alloc_init(TIKeyboardInputManagerState);
  [(TIKeyboardConfiguration *)v2 setInputManagerState:v3];

  return v2;
}

uint64_t __45__TIKeyboardInputManagerStub_serverInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7E6730];
  v3 = serverInterface_result;
  serverInterface_result = v2;

  v4 = *(a1 + 32);
  v5 = serverInterface_result;

  return [v4 setArrayClassesForSelectorsInInterface:v5];
}

+ (id)serverInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__TIKeyboardInputManagerStub_serverInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (serverInterface_onceToken != -1)
  {
    dispatch_once(&serverInterface_onceToken, block);
  }

  v2 = serverInterface_result;

  return v2;
}

+ (void)setArrayClassesForSelectorsInInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v16 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v16 forSelector:sel_generateReplacementsForString_keyLayout_continuation_ argumentIndex:0 ofReply:1];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v8 forSelector:sel_skipHitTestForTouchEvents_keyboardState_ argumentIndex:0 ofReply:0];
  [interfaceCopy setClasses:v8 forSelector:sel_performHitTestForTouchEvents_keyboardState_continuation_ argumentIndex:0 ofReply:0];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v11 forSelector:sel_smartSelectionForTextInDocument_inRange_language_tokenizedRanges_options_completion_ argumentIndex:3 ofReply:0];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v15 forSelector:sel_stickerWithIdentifier_stickerRoles_completionHandler_ argumentIndex:0 ofReply:1];
}

- (void)stickerWithIdentifier:(id)identifier stickerRoles:(id)roles completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)addSupplementalLexicon:(id)lexicon completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)writeTypologyLogWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)textAccepted:(id)accepted completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    keyboardConfiguration = [(TIKeyboardInputManagerStub *)self keyboardConfiguration];
    (*(handler + 2))(handlerCopy, keyboardConfiguration);
  }
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity keyboardState:(id)state completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    keyboardConfiguration = [(TIKeyboardInputManagerStub *)self keyboardConfiguration];
    (*(handler + 2))(handlerCopy, keyboardConfiguration);
  }
}

- (void)smartSelectionForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))();
  }
}

- (void)performHitTestForTouchEvents:(id)events keyboardState:(id)state continuation:(id)continuation
{
  continuationCopy = continuation;
  stateCopy = state;
  lastObject = [events lastObject];
  [(TIKeyboardInputManagerStub *)self performHitTestForTouchEvent:lastObject keyboardState:stateCopy continuation:continuationCopy];
}

- (void)performHitTestForTouchEvent:(id)event keyboardState:(id)state continuation:(id)continuation
{
  eventCopy = event;
  stateCopy = state;
  continuationCopy = continuation;
  if (continuationCopy)
  {
    keyLayout = [stateCopy keyLayout];

    v10 = -1;
    if (eventCopy && keyLayout)
    {
      keyLayout2 = [stateCopy keyLayout];
      [eventCopy location];
      v10 = [keyLayout2 keyContainingPoint:?];
    }

    continuationCopy[2](continuationCopy, v10);
  }
}

- (void)generateRefinementsForCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)generateReplacementsForString:(id)string keyLayout:(id)layout continuation:(id)continuation
{
  if (continuation)
  {
    (*(continuation + 2))(continuation, 0);
  }
}

- (void)handleAcceptedCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    keyboardConfiguration = [(TIKeyboardInputManagerStub *)self keyboardConfiguration];
    (*(handler + 2))(handlerCopy, keyboardConfiguration, 0);
  }
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler
{
  inputCopy = input;
  if (handler)
  {
    v13 = inputCopy;
    handlerCopy = handler;
    v9 = objc_alloc_init(TIKeyboardOutput);
    string = [v13 string];

    if (string)
    {
      string2 = [v13 string];
      [(TIKeyboardOutput *)v9 setInsertionText:string2];
    }

    else if ([v13 isBackspace])
    {
      [(TIKeyboardOutput *)v9 setDeletionCount:1];
    }

    keyboardConfiguration = [(TIKeyboardInputManagerStub *)self keyboardConfiguration];
    handlerCopy[2](handlerCopy, v9, keyboardConfiguration);

    inputCopy = v13;
  }
}

- (void)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    keyboardConfiguration = [(TIKeyboardInputManagerStub *)self keyboardConfiguration];
    (*(handler + 2))(handlerCopy, keyboardConfiguration);
  }
}

@end