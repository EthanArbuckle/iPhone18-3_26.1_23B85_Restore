@interface SFVisibleSuggestionsFeedback
- (SFVisibleSuggestionsFeedback)initWithCoder:(id)coder;
- (SFVisibleSuggestionsFeedback)initWithSuggestions:(id)suggestions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFVisibleSuggestionsFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFVisibleSuggestionsFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_suggestions forKey:{@"_suggestions", v5.receiver, v5.super_class}];
}

- (SFVisibleSuggestionsFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SFVisibleSuggestionsFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v9;
  }

  return v5;
}

- (SFVisibleSuggestionsFeedback)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v9.receiver = self;
  v9.super_class = SFVisibleSuggestionsFeedback;
  v5 = [(SFFeedback *)&v9 init];
  if (v5)
  {
    v6 = [suggestionsCopy copy];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

@end