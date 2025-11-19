@interface LanguageOption
- (LanguageOption)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
@end

@implementation LanguageOption

- (NSString)description
{
  v2 = self;
  LanguageOption.description.getter();

  v3 = sub_268B37BC4();

  return v3;
}

- (LanguageOption)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_268B37BF4();
  }

  sub_268B37BF4();
  if (a5)
  {
    sub_268B37BF4();
  }

  return LanguageOption.init(identifier:display:pronunciationHint:)();
}

@end