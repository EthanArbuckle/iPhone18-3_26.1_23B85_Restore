@interface AlarmSearch
- (AlarmSearch)initWithCoder:(id)coder;
- (AlarmSearch)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation AlarmSearch

- (AlarmSearch)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_2692C7830();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_2692C7830();
  v11 = v10;
  if (hint)
  {
    v12 = sub_2692C7830();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return AlarmSearch.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (AlarmSearch)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AlarmSearch();
  coderCopy = coder;
  v5 = [(AlarmSearch *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end