@interface SWPresentationStateScript
- (NSString)executableScript;
- (SWPresentationStateScript)initWithPresentationState:(unint64_t)a3;
@end

@implementation SWPresentationStateScript

- (SWPresentationStateScript)initWithPresentationState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SWPresentationStateScript;
  result = [(SWPresentationStateScript *)&v5 init];
  if (result)
  {
    result->_presentationState = a3;
  }

  return result;
}

- (NSString)executableScript
{
  v2 = [(SWPresentationStateScript *)self presentationState];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"presented";
  }

  if (v2 == 2)
  {
    v3 = @"notpresented";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"var oldPresentationState = applenews.presentationState; applenews.presentationState = '%@'; var event = new CustomEvent('ANPresentationStateChanged', {detail: {newPresentationState:applenews.presentationState, oldPresentationState: oldPresentationState}}); document.dispatchEvent(event);", v3];
}

@end