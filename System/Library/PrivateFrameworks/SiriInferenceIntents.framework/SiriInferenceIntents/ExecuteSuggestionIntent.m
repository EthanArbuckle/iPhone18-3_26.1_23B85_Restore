@interface ExecuteSuggestionIntent
- (ExecuteSuggestionIntent)init;
- (ExecuteSuggestionIntent)initWithCoder:(id)a3;
@end

@implementation ExecuteSuggestionIntent

- (ExecuteSuggestionIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExecuteSuggestionIntent();
  return [(ExecuteSuggestionIntent *)&v3 init];
}

- (ExecuteSuggestionIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExecuteSuggestionIntent();
  v4 = a3;
  v5 = [(ExecuteSuggestionIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end