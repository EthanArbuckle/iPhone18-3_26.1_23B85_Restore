@interface SiriSharedUISuggestionViewWrapper
- (SiriSharedUISuggestionViewWrapper)initWithSuggestionText:(id)a3 view:(id)a4;
@end

@implementation SiriSharedUISuggestionViewWrapper

- (SiriSharedUISuggestionViewWrapper)initWithSuggestionText:(id)a3 view:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SiriSharedUISuggestionViewWrapper;
  v9 = [(SiriSharedUISuggestionViewWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestionText, a3);
    objc_storeStrong(&v10->_view, a4);
  }

  return v10;
}

@end