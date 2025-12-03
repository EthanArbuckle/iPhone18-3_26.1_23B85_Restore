@interface _PSCNAutocompleteFeedbackTappedSuggestion
- (_PSCNAutocompleteFeedbackTappedSuggestion)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedbackTappedSuggestion)initWithSuggestion:(id)suggestion;
@end

@implementation _PSCNAutocompleteFeedbackTappedSuggestion

- (_PSCNAutocompleteFeedbackTappedSuggestion)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = _PSCNAutocompleteFeedbackTappedSuggestion;
  v6 = [(_PSCNAutocompleteFeedbackTappedSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, suggestion);
  }

  return v7;
}

- (_PSCNAutocompleteFeedbackTappedSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _PSCNAutocompleteFeedbackTappedSuggestion;
  v5 = [(_PSCNAutocompleteFeedbackTappedSuggestion *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestion"];
    suggestion = v5->_suggestion;
    v5->_suggestion = v6;

    v8 = v5;
  }

  return v5;
}

@end