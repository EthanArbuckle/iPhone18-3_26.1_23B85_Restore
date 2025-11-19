@interface _UITextLongPressLinkInteraction
- (_UITextLongPressLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)a3;
@end

@implementation _UITextLongPressLinkInteraction

- (_UITextLongPressLinkInteraction)initWithShouldProxyContextMenuDelegate:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _UITextLongPressLinkInteraction;
  v3 = [(_UITextSimpleLinkInteraction *)&v7 initWithShouldProxyContextMenuDelegate:a3];
  if (v3)
  {
    v4 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:sel_longDelayRecognizer_];
    [(UILongPressGestureRecognizer *)v4 setNumberOfTouchesRequired:1];
    [(UILongPressGestureRecognizer *)v4 setDelay:0.75];
    [(UILongPressGestureRecognizer *)v4 setAllowableMovement:10.0];
    [(UILongPressGestureRecognizer *)v4 set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
    v5 = [(UIGestureRecognizer *)v4 _pairedGestureIdentifiers];
    [v5 addObject:0x1EFBA7690];

    [(UITextInteraction *)v3 addGestureRecognizer:v4 withName:0x1EFBA7690];
  }

  return v3;
}

@end