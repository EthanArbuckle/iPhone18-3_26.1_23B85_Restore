@interface InAppSearchCriteria
- (InAppSearchCriteria)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation InAppSearchCriteria

- (InAppSearchCriteria)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
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

  return InAppSearchCriteria.init(identifier:display:pronunciationHint:)();
}

@end