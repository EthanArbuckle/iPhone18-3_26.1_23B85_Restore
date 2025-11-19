@interface WFToastManager
- (BOOL)toastSessionWithIdentifier:(id)a3 forDuration:(double)a4;
- (WFSessionKitAssertion)toastedSession;
- (WFToastManagerDelegate)delegate;
- (void)eatTheToastWithReason:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation WFToastManager

- (WFToastManagerDelegate)delegate
{
  v2 = sub_2310461A8();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_231046250();
}

- (WFSessionKitAssertion)toastedSession
{
  v2 = self;
  v3 = sub_231046484();

  return v3;
}

- (BOOL)toastSessionWithIdentifier:(id)a3 forDuration:(double)a4
{
  sub_231158E58();
  v5 = self;
  v6 = sub_2310466F4();

  return v6 & 1;
}

- (void)eatTheToastWithReason:(id)a3
{
  v4 = sub_231158E58();
  v6 = v5;
  v7 = self;
  sub_231047700(v4, v6);
}

@end