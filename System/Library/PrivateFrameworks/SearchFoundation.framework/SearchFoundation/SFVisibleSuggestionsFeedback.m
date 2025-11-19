@interface SFVisibleSuggestionsFeedback
- (SFVisibleSuggestionsFeedback)initWithCoder:(id)a3;
- (SFVisibleSuggestionsFeedback)initWithSuggestions:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFVisibleSuggestionsFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFVisibleSuggestionsFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_suggestions forKey:{@"_suggestions", v5.receiver, v5.super_class}];
}

- (SFVisibleSuggestionsFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFVisibleSuggestionsFeedback;
  v5 = [(SFFeedback *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v9;
  }

  return v5;
}

- (SFVisibleSuggestionsFeedback)initWithSuggestions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFVisibleSuggestionsFeedback;
  v5 = [(SFFeedback *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

@end