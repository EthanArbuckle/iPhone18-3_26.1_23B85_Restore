@interface SWPresentationStateScript
- (NSString)executableScript;
- (SWPresentationStateScript)initWithPresentationState:(unint64_t)state;
@end

@implementation SWPresentationStateScript

- (SWPresentationStateScript)initWithPresentationState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = SWPresentationStateScript;
  result = [(SWPresentationStateScript *)&v5 init];
  if (result)
  {
    result->_presentationState = state;
  }

  return result;
}

- (NSString)executableScript
{
  presentationState = [(SWPresentationStateScript *)self presentationState];
  v3 = @"unknown";
  if (presentationState == 1)
  {
    v3 = @"presented";
  }

  if (presentationState == 2)
  {
    v3 = @"notpresented";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"var oldPresentationState = applenews.presentationState; applenews.presentationState = '%@'; var event = new CustomEvent('ANPresentationStateChanged', {detail: {newPresentationState:applenews.presentationState, oldPresentationState: oldPresentationState}}); document.dispatchEvent(event);", v3];
}

@end