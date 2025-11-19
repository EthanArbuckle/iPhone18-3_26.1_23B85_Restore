@interface RDVAVisionKWSSpotterDelegateImpl
- (RDVAVisionKWSSpotterDelegateImpl)initWithDelegate:(RDKeywordSpotterDelegate *)a3;
- (void)didDetectKeywordWithKeyword:(id)a3 score:(float)a4 silenceAfter:(BOOL)a5 silenceBefore:(BOOL)a6 speechDuring:(BOOL)a7;
@end

@implementation RDVAVisionKWSSpotterDelegateImpl

- (RDVAVisionKWSSpotterDelegateImpl)initWithDelegate:(RDKeywordSpotterDelegate *)a3
{
  v6.receiver = self;
  v6.super_class = RDVAVisionKWSSpotterDelegateImpl;
  result = [(RDVAVisionKWSSpotterDelegateImpl *)&v6 init];
  if (result)
  {
    v5 = *&a3->ctx;
    result->_keywordSpotterDelegate.KeywordSpotterDidStop = a3->KeywordSpotterDidStop;
    *&result->_keywordSpotterDelegate.ctx = v5;
  }

  return result;
}

- (void)didDetectKeywordWithKeyword:(id)a3 score:(float)a4 silenceAfter:(BOOL)a5 silenceBefore:(BOOL)a6 speechDuring:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  if (v8 && v7)
  {
    v12 = v11;
    (self->_keywordSpotterDelegate.KeywordSpotted)(self->_keywordSpotterDelegate.ctx, v11, a4);
    v11 = v12;
  }
}

@end