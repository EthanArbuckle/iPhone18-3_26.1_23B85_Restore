@interface GetSuggestionsIntent
- (GetSuggestionsIntent)init;
- (GetSuggestionsIntent)initWithCoder:(id)a3;
@end

@implementation GetSuggestionsIntent

- (GetSuggestionsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetSuggestionsIntent();
  return [(GetSuggestionsIntent *)&v3 init];
}

- (GetSuggestionsIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetSuggestionsIntent();
  v4 = a3;
  v5 = [(GetSuggestionsIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end