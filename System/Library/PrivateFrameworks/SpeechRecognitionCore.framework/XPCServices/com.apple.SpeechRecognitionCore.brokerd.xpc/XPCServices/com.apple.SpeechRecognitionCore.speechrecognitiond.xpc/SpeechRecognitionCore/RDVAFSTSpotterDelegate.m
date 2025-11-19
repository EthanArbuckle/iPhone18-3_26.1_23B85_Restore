@interface RDVAFSTSpotterDelegate
- (RDVAFSTSpotterDelegate)initWithDelegate:(RDKeywordSpotterDelegate *)a3;
- (void)keywordSpotted:(id)a3 cost:(double)a4 start:(int)a5 end:(int)a6;
@end

@implementation RDVAFSTSpotterDelegate

- (RDVAFSTSpotterDelegate)initWithDelegate:(RDKeywordSpotterDelegate *)a3
{
  v6.receiver = self;
  v6.super_class = RDVAFSTSpotterDelegate;
  result = [(RDVAFSTSpotterDelegate *)&v6 init];
  if (result)
  {
    v5 = *&a3->ctx;
    result->_keywordSpotterDelegate.KeywordSpotterDidStop = a3->KeywordSpotterDidStop;
    *&result->_keywordSpotterDelegate.ctx = v5;
  }

  return result;
}

- (void)keywordSpotted:(id)a3 cost:(double)a4 start:(int)a5 end:(int)a6
{
  v10 = a3;
  if (a6 - a5 <= [(RDVAFSTSpotterDelegate *)self maxFrameSizeForKeywords])
  {
    (self->_keywordSpotterDelegate.KeywordSpotted)(self->_keywordSpotterDelegate.ctx, v10, a4);
  }
}

@end