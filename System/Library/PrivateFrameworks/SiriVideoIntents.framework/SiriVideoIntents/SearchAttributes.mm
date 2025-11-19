@interface SearchAttributes
- (SearchAttributes)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation SearchAttributes

- (SearchAttributes)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_269854A94();
  }

  sub_269854A94();
  if (a5)
  {
    sub_269854A94();
  }

  return SearchAttributes.init(identifier:display:pronunciationHint:)();
}

@end