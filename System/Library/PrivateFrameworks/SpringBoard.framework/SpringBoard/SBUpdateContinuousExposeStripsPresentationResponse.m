@interface SBUpdateContinuousExposeStripsPresentationResponse
- (SBUpdateContinuousExposeStripsPresentationResponse)initWithPresentationOptions:(unint64_t)a3 dismissalOptions:(unint64_t)a4 touchType:(int64_t)a5;
@end

@implementation SBUpdateContinuousExposeStripsPresentationResponse

- (SBUpdateContinuousExposeStripsPresentationResponse)initWithPresentationOptions:(unint64_t)a3 dismissalOptions:(unint64_t)a4 touchType:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SBUpdateContinuousExposeStripsPresentationResponse;
  result = [(SBChainableModifierEventResponse *)&v9 init];
  if (result)
  {
    result->_presentationOptions = a3;
    result->_dismissalOptions = a4;
    result->_touchType = a5;
  }

  return result;
}

@end