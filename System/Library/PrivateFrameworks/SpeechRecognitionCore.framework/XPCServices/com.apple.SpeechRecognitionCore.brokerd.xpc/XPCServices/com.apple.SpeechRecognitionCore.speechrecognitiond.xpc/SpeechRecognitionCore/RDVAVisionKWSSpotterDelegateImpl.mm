@interface RDVAVisionKWSSpotterDelegateImpl
- (RDVAVisionKWSSpotterDelegateImpl)initWithDelegate:(RDKeywordSpotterDelegate *)delegate;
- (void)didDetectKeywordWithKeyword:(id)keyword score:(float)score silenceAfter:(BOOL)after silenceBefore:(BOOL)before speechDuring:(BOOL)during;
@end

@implementation RDVAVisionKWSSpotterDelegateImpl

- (RDVAVisionKWSSpotterDelegateImpl)initWithDelegate:(RDKeywordSpotterDelegate *)delegate
{
  v6.receiver = self;
  v6.super_class = RDVAVisionKWSSpotterDelegateImpl;
  result = [(RDVAVisionKWSSpotterDelegateImpl *)&v6 init];
  if (result)
  {
    v5 = *&delegate->ctx;
    result->_keywordSpotterDelegate.KeywordSpotterDidStop = delegate->KeywordSpotterDidStop;
    *&result->_keywordSpotterDelegate.ctx = v5;
  }

  return result;
}

- (void)didDetectKeywordWithKeyword:(id)keyword score:(float)score silenceAfter:(BOOL)after silenceBefore:(BOOL)before speechDuring:(BOOL)during
{
  duringCopy = during;
  beforeCopy = before;
  keywordCopy = keyword;
  if (beforeCopy && duringCopy)
  {
    v12 = keywordCopy;
    (self->_keywordSpotterDelegate.KeywordSpotted)(self->_keywordSpotterDelegate.ctx, keywordCopy, score);
    keywordCopy = v12;
  }
}

@end