@interface Suggestion
- (Suggestion)initWithCoder:(id)coder;
- (Suggestion)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation Suggestion

- (Suggestion)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_266EC1E78();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_266EC1E78();
  v11 = v10;
  if (hint)
  {
    v12 = sub_266EC1E78();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return Suggestion.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (Suggestion)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Suggestion();
  coderCopy = coder;
  v5 = [(Suggestion *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end