@interface RDVAFSTSpotterDelegate
- (RDVAFSTSpotterDelegate)initWithDelegate:(RDKeywordSpotterDelegate *)delegate;
- (void)keywordSpotted:(id)spotted cost:(double)cost start:(int)start end:(int)end;
@end

@implementation RDVAFSTSpotterDelegate

- (RDVAFSTSpotterDelegate)initWithDelegate:(RDKeywordSpotterDelegate *)delegate
{
  v6.receiver = self;
  v6.super_class = RDVAFSTSpotterDelegate;
  result = [(RDVAFSTSpotterDelegate *)&v6 init];
  if (result)
  {
    v5 = *&delegate->ctx;
    result->_keywordSpotterDelegate.KeywordSpotterDidStop = delegate->KeywordSpotterDidStop;
    *&result->_keywordSpotterDelegate.ctx = v5;
  }

  return result;
}

- (void)keywordSpotted:(id)spotted cost:(double)cost start:(int)start end:(int)end
{
  spottedCopy = spotted;
  if (end - start <= [(RDVAFSTSpotterDelegate *)self maxFrameSizeForKeywords])
  {
    (self->_keywordSpotterDelegate.KeywordSpotted)(self->_keywordSpotterDelegate.ctx, spottedCopy, cost);
  }
}

@end