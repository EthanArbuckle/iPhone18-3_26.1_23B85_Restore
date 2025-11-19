@interface SFSuggestionEngagementFeedback
- (SFSuggestionEngagementFeedback)initWithCoder:(id)a3;
- (SFSuggestionEngagementFeedback)initWithSuggestion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSuggestionEngagementFeedback

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFSuggestionEngagementFeedback;
  v4 = [(SFFeedback *)&v8 copyWithZone:a3];
  v5 = [(SFSuggestionEngagementFeedback *)self suggestion];
  v6 = [v5 copy];
  [v4 setSuggestion:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSuggestionEngagementFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_suggestion forKey:{@"_suggestion", v5.receiver, v5.super_class}];
}

- (SFSuggestionEngagementFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFSuggestionEngagementFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_suggestion"];
    suggestion = v5->_suggestion;
    v5->_suggestion = v6;
  }

  return v5;
}

- (SFSuggestionEngagementFeedback)initWithSuggestion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFSuggestionEngagementFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestion, a3);
  }

  return v7;
}

@end