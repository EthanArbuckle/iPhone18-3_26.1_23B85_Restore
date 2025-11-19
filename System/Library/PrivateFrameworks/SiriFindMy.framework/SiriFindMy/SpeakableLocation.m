@interface SpeakableLocation
- (SpeakableLocation)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation SpeakableLocation

- (SpeakableLocation)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    sub_266DAA70C();
  }

  sub_266DAA70C();
  if (a5)
  {
    sub_266DAA70C();
  }

  return SpeakableLocation.init(identifier:display:pronunciationHint:)();
}

@end