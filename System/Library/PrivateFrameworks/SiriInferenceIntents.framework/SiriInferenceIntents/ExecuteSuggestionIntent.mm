@interface ExecuteSuggestionIntent
- (ExecuteSuggestionIntent)init;
- (ExecuteSuggestionIntent)initWithCoder:(id)coder;
@end

@implementation ExecuteSuggestionIntent

- (ExecuteSuggestionIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExecuteSuggestionIntent();
  return [(ExecuteSuggestionIntent *)&v3 init];
}

- (ExecuteSuggestionIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExecuteSuggestionIntent();
  coderCopy = coder;
  v5 = [(ExecuteSuggestionIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end