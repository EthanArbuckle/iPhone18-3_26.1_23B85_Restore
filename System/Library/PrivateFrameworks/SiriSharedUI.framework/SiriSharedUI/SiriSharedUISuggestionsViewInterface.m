@interface SiriSharedUISuggestionsViewInterface
- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDown:(id)a3 startersPressUp:(id)a4 continuersPressDown:(id)a5 continuersPressUp:(id)a6;
- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDownHandler:(id)a3 startersPressUpHandler:(id)a4 continuersPressDownHandler:(id)a5 continuersPressUpHandler:(id)a6;
@end

@implementation SiriSharedUISuggestionsViewInterface

- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDownHandler:(id)a3 startersPressUpHandler:(id)a4 continuersPressDownHandler:(id)a5 continuersPressUpHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = SiriSharedUISuggestionsViewInterface;
  v14 = [(SiriSharedUISuggestionsViewInterface *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider alloc] initWithStartersPressDownHandler:v10 startersPressUpHandler:v11 continuersPressDownHandler:v12 continuersPressUpHandler:v13];
    suggestionsViewProvider = v14->suggestionsViewProvider;
    v14->suggestionsViewProvider = v15;
  }

  return v14;
}

- (SiriSharedUISuggestionsViewInterface)initWithStartersPressDown:(id)a3 startersPressUp:(id)a4 continuersPressDown:(id)a5 continuersPressUp:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = SiriSharedUISuggestionsViewInterface;
  v14 = [(SiriSharedUISuggestionsViewInterface *)&v18 init];
  if (v14)
  {
    v15 = [[_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider alloc] initWithStartersPressDown:v10 startersPressUp:v11 continuersPressDown:v12 continuersPressUp:v13];
    suggestionsViewProvider = v14->suggestionsViewProvider;
    v14->suggestionsViewProvider = v15;
  }

  return v14;
}

@end