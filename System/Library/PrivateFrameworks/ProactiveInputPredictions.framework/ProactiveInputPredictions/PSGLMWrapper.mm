@interface PSGLMWrapper
- (PSGLMWrapper)initWithLangModel:(void *)model lexicon:(void *)lexicon;
- (void)dealloc;
@end

@implementation PSGLMWrapper

- (void)dealloc
{
  if (self->_langModel)
  {
    LMLanguageModelRelease();
  }

  if (self->_lexicon)
  {
    LMLexiconRelease();
  }

  v3.receiver = self;
  v3.super_class = PSGLMWrapper;
  [(PSGLMWrapper *)&v3 dealloc];
}

- (PSGLMWrapper)initWithLangModel:(void *)model lexicon:(void *)lexicon
{
  v7.receiver = self;
  v7.super_class = PSGLMWrapper;
  result = [(PSGLMWrapper *)&v7 init];
  if (result)
  {
    result->_langModel = model;
    result->_lexicon = lexicon;
  }

  return result;
}

@end