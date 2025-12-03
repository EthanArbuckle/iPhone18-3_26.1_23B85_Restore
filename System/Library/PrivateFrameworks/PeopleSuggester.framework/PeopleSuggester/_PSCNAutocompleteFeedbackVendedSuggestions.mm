@interface _PSCNAutocompleteFeedbackVendedSuggestions
- (_PSCNAutocompleteFeedbackVendedSuggestions)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedbackVendedSuggestions)initWithSuggestions:(id)suggestions;
@end

@implementation _PSCNAutocompleteFeedbackVendedSuggestions

- (_PSCNAutocompleteFeedbackVendedSuggestions)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v9.receiver = self;
  v9.super_class = _PSCNAutocompleteFeedbackVendedSuggestions;
  v6 = [(_PSCNAutocompleteFeedbackVendedSuggestions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, suggestions);
  }

  return v7;
}

- (_PSCNAutocompleteFeedbackVendedSuggestions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _PSCNAutocompleteFeedbackVendedSuggestions;
  v5 = [(_PSCNAutocompleteFeedbackVendedSuggestions *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v9;

    v11 = v5;
  }

  return v5;
}

@end