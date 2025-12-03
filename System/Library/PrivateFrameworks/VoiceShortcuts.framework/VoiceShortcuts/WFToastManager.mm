@interface WFToastManager
- (BOOL)toastSessionWithIdentifier:(id)identifier forDuration:(double)duration;
- (WFSessionKitAssertion)toastedSession;
- (WFToastManagerDelegate)delegate;
- (void)eatTheToastWithReason:(id)reason;
- (void)setDelegate:(id)delegate;
@end

@implementation WFToastManager

- (WFToastManagerDelegate)delegate
{
  v2 = sub_2310461A8();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_231046250();
}

- (WFSessionKitAssertion)toastedSession
{
  selfCopy = self;
  v3 = sub_231046484();

  return v3;
}

- (BOOL)toastSessionWithIdentifier:(id)identifier forDuration:(double)duration
{
  sub_231158E58();
  selfCopy = self;
  v6 = sub_2310466F4();

  return v6 & 1;
}

- (void)eatTheToastWithReason:(id)reason
{
  v4 = sub_231158E58();
  v6 = v5;
  selfCopy = self;
  sub_231047700(v4, v6);
}

@end