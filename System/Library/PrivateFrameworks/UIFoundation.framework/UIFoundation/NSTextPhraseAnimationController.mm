@interface NSTextPhraseAnimationController
- (NSTextPhraseAnimationController)initWithAttributedStringPhrases:(id)phrases animationType:(int64_t)type completionHandler:(id)handler;
- (NSTextPhraseAnimationController)initWithDefaultPhrase:(id)phrase animatedPhrases:(id)phrases animationType:(int64_t)type defaultAttributes:(id)attributes;
- (NSTextPhraseAnimationController)initWithStringPhrases:(id)phrases animationType:(int64_t)type defaultAttributes:(id)attributes completionHandler:(id)handler;
- (void)_drawCurrentFrame:(id)frame;
- (void)_initWithAttributedStringPhrases:(id)phrases animationType:(int64_t)type completionHandler:(id)handler;
- (void)invalidate;
- (void)start;
@end

@implementation NSTextPhraseAnimationController

- (NSTextPhraseAnimationController)initWithStringPhrases:(id)phrases animationType:(int64_t)type defaultAttributes:(id)attributes completionHandler:(id)handler
{
  phrasesCopy = phrases;
  attributesCopy = attributes;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = NSTextPhraseAnimationController;
  v13 = [(NSTextPhraseAnimationController *)&v25 init];
  if (v13)
  {
    v14 = [attributesCopy copy];
    array = [MEMORY[0x1E695DF70] array];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __107__NSTextPhraseAnimationController_initWithStringPhrases_animationType_defaultAttributes_completionHandler___block_invoke;
    v22 = &unk_1E7267040;
    v23 = array;
    v24 = v14;
    v16 = v14;
    v17 = array;
    [phrasesCopy enumerateObjectsUsingBlock:&v19];
    [(NSTextPhraseAnimationController *)v13 _initWithAttributedStringPhrases:v17 animationType:type completionHandler:handlerCopy, v19, v20, v21, v22];
  }

  return v13;
}

void __107__NSTextPhraseAnimationController_initWithStringPhrases_animationType_defaultAttributes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AAB0];
  v5 = a2;
  v6 = [[v4 alloc] initWithString:v5 attributes:*(a1 + 40)];

  [v3 addObject:v6];
}

- (NSTextPhraseAnimationController)initWithAttributedStringPhrases:(id)phrases animationType:(int64_t)type completionHandler:(id)handler
{
  phrasesCopy = phrases;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = NSTextPhraseAnimationController;
  v10 = [(NSTextPhraseAnimationController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NSTextPhraseAnimationController *)v10 _initWithAttributedStringPhrases:phrasesCopy animationType:type completionHandler:handlerCopy];
  }

  return v11;
}

- (void)_initWithAttributedStringPhrases:(id)phrases animationType:(int64_t)type completionHandler:(id)handler
{
  phrasesCopy = phrases;
  *&self->_animationState = 0u;
  *&self->_startTime = 0u;
  objc_storeStrong(&self->_animatingAttributedStringPhrases, phrases);
  handlerCopy = handler;
  v10 = MEMORY[0x193AD48B0]();

  completionHandler = self->_completionHandler;
  self->_completionHandler = v10;

  v12 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__drawCurrentFrame_];
  animationDisplayLink = self->_animationDisplayLink;
  self->_animationDisplayLink = v12;

  if (type > 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [[NSTextPhraseAttributesProvider_RippleFade alloc] initWithController:self];
  }

  attributesProvider = self->_attributesProvider;
  self->_attributesProvider = v14;
}

- (void)start
{
  self->_animationState = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  attributesProvider = self->_attributesProvider;

  [(NSTextPhraseAttributesProvider *)attributesProvider startAtTime:?];
}

- (void)_drawCurrentFrame:(id)frame
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current;
  animationState = self->_animationState;
  if (animationState != 1)
  {
    completionHandler = self->_completionHandler;
    firstObject = [(NSArray *)self->_animatingAttributedStringPhrases firstObject];
    completionHandler[2](completionHandler, animationState, firstObject, 0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));

LABEL_8:
    self->_lastFrameTime = v5;
    ++self->_frameRequestCount;
    return;
  }

  if (self->_lastFrameTime - Current <= 2.0)
  {
    attributesProvider = self->_attributesProvider;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__NSTextPhraseAnimationController__drawCurrentFrame___block_invoke;
    v10[3] = &unk_1E7267068;
    v10[4] = self;
    [(NSTextPhraseAttributesProvider *)attributesProvider renderFrameForTime:v10 usingHandler:Current];
    goto LABEL_8;
  }

  [(NSTextPhraseAnimationController *)self invalidate];
}

- (void)invalidate
{
  if (self->_animationState == 1)
  {
    self->_animationState = 3;
  }

  [(CADisplayLink *)self->_animationDisplayLink invalidate];
  self->_frameRequestCount = 0;
  self->_startTime = 0.0;
  self->_lastFrameTime = 0.0;
  attributesProvider = self->_attributesProvider;

  [(NSTextPhraseAttributesProvider *)attributesProvider invalidate];
}

- (NSTextPhraseAnimationController)initWithDefaultPhrase:(id)phrase animatedPhrases:(id)phrases animationType:(int64_t)type defaultAttributes:(id)attributes
{
  phraseCopy = phrase;
  phrasesCopy = phrases;
  attributesCopy = attributes;
  v31.receiver = self;
  v31.super_class = NSTextPhraseAnimationController;
  v13 = [(NSTextPhraseAnimationController *)&v31 init];
  if (v13)
  {
    v14 = [attributesCopy copy];
    v15 = MEMORY[0x1E695DF70];
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:phraseCopy attributes:v14];
    v17 = [v15 arrayWithObject:v16];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __105__NSTextPhraseAnimationController_initWithDefaultPhrase_animatedPhrases_animationType_defaultAttributes___block_invoke;
    v28 = &unk_1E7267040;
    v18 = v17;
    v29 = v18;
    v19 = v14;
    v30 = v19;
    [phrasesCopy enumerateObjectsUsingBlock:&v25];
    *&v13->_animationState = 0u;
    *&v13->_startTime = 0u;
    objc_storeStrong(&v13->_animatingAttributedStringPhrases, v17);
    v20 = [attributesCopy copy];
    defaultAttributes = v13->_defaultAttributes;
    v13->_defaultAttributes = v20;

    if (type > 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = [[NSTextPhraseAttributesProvider_RippleFade alloc] initWithController:v13];
    }

    attributesProvider = v13->_attributesProvider;
    v13->_attributesProvider = v22;
  }

  return v13;
}

void __105__NSTextPhraseAnimationController_initWithDefaultPhrase_animatedPhrases_animationType_defaultAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AAB0];
  v5 = a2;
  v6 = [[v4 alloc] initWithString:v5 attributes:*(a1 + 40)];

  [v3 addObject:v6];
}

@end