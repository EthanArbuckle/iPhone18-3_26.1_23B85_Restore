@interface PlaybackSpeed
- (PlaybackSpeed)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation PlaybackSpeed

- (PlaybackSpeed)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
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

  return PlaybackSpeed.init(identifier:display:pronunciationHint:)();
}

@end