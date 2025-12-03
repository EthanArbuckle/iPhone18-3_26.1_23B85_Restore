@interface SiriSharedUISuggestionsViewInterface
- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDown:(id)down startersPressUp:(id)up continuersPressDown:(id)pressDown continuersPressUp:(id)pressUp;
- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDownHandler:(id)handler startersPressUpHandler:(id)upHandler continuersPressDownHandler:(id)downHandler continuersPressUpHandler:(id)pressUpHandler;
@end

@implementation SiriSharedUISuggestionsViewInterface

- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDownHandler:(id)handler startersPressUpHandler:(id)upHandler continuersPressDownHandler:(id)downHandler continuersPressUpHandler:(id)pressUpHandler
{
  handlerCopy = handler;
  upHandlerCopy = upHandler;
  downHandlerCopy = downHandler;
  pressUpHandlerCopy = pressUpHandler;
  v18.receiver = self;
  v18.super_class = SiriSharedUISuggestionsViewInterface;
  v14 = [(SiriSharedUISuggestionsViewInterface *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider alloc] initWithStartersPressDownHandler:handlerCopy startersPressUpHandler:upHandlerCopy continuersPressDownHandler:downHandlerCopy continuersPressUpHandler:pressUpHandlerCopy];
    suggestionsViewProvider = v14->suggestionsViewProvider;
    v14->suggestionsViewProvider = v15;
  }

  return v14;
}

- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDown:(id)down startersPressUp:(id)up continuersPressDown:(id)pressDown continuersPressUp:(id)pressUp
{
  downCopy = down;
  upCopy = up;
  pressDownCopy = pressDown;
  pressUpCopy = pressUp;
  v18.receiver = self;
  v18.super_class = SiriSharedUISuggestionsViewInterface;
  v14 = [(SiriSharedUISuggestionsViewInterface *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider alloc] initWithStartersPressDown:downCopy startersPressUp:upCopy continuersPressDown:pressDownCopy continuersPressUp:pressUpCopy];
    suggestionsViewProvider = v14->suggestionsViewProvider;
    v14->suggestionsViewProvider = v15;
  }

  return v14;
}

@end