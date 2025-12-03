@interface GetSuggestionsIntent
- (GetSuggestionsIntent)init;
- (GetSuggestionsIntent)initWithCoder:(id)coder;
@end

@implementation GetSuggestionsIntent

- (GetSuggestionsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetSuggestionsIntent();
  return [(GetSuggestionsIntent *)&v3 init];
}

- (GetSuggestionsIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetSuggestionsIntent();
  coderCopy = coder;
  v5 = [(GetSuggestionsIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end