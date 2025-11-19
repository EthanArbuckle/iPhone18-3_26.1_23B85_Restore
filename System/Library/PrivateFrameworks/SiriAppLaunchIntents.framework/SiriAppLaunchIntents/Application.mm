@interface Application
- (Application)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
@end

@implementation Application

- (NSString)description
{
  v2 = self;
  Application.description.getter();

  v3 = sub_26618C8A0();

  return v3;
}

- (Application)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_26618C8B0();
  }

  sub_26618C8B0();
  if (a5)
  {
    sub_26618C8B0();
  }

  return Application.init(identifier:display:pronunciationHint:)();
}

@end