@interface SFSuggestionEngagementFeedback
- (SFSuggestionEngagementFeedback)initWithCoder:(id)coder;
- (SFSuggestionEngagementFeedback)initWithSuggestion:(id)suggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSuggestionEngagementFeedback

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFSuggestionEngagementFeedback;
  v4 = [(SFFeedback *)&v8 copyWithZone:zone];
  suggestion = [(SFSuggestionEngagementFeedback *)self suggestion];
  v6 = [suggestion copy];
  [v4 setSuggestion:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSuggestionEngagementFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_suggestion forKey:{@"_suggestion", v5.receiver, v5.super_class}];
}

- (SFSuggestionEngagementFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFSuggestionEngagementFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_suggestion"];
    suggestion = v5->_suggestion;
    v5->_suggestion = v6;
  }

  return v5;
}

- (SFSuggestionEngagementFeedback)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v9.receiver = self;
  v9.super_class = SFSuggestionEngagementFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, suggestion);
  }

  return v7;
}

@end