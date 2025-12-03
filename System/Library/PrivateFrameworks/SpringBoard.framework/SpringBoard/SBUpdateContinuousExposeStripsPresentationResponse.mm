@interface SBUpdateContinuousExposeStripsPresentationResponse
- (SBUpdateContinuousExposeStripsPresentationResponse)initWithPresentationOptions:(unint64_t)options dismissalOptions:(unint64_t)dismissalOptions touchType:(int64_t)type;
@end

@implementation SBUpdateContinuousExposeStripsPresentationResponse

- (SBUpdateContinuousExposeStripsPresentationResponse)initWithPresentationOptions:(unint64_t)options dismissalOptions:(unint64_t)dismissalOptions touchType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = SBUpdateContinuousExposeStripsPresentationResponse;
  result = [(SBChainableModifierEventResponse *)&v9 init];
  if (result)
  {
    result->_presentationOptions = options;
    result->_dismissalOptions = dismissalOptions;
    result->_touchType = type;
  }

  return result;
}

@end