@interface SiriSharedUISuggestionViewWrapper
- (SiriSharedUISuggestionViewWrapper)initWithSuggestionText:(id)text view:(id)view;
@end

@implementation SiriSharedUISuggestionViewWrapper

- (SiriSharedUISuggestionViewWrapper)initWithSuggestionText:(id)text view:(id)view
{
  textCopy = text;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = SiriSharedUISuggestionViewWrapper;
  v9 = [(SiriSharedUISuggestionViewWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestionText, text);
    objc_storeStrong(&v10->_view, view);
  }

  return v10;
}

@end