@interface Coordinator
- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5;
- (void)lockupViewEngagedForAppIdentifier:(id)a3;
- (void)lockupViewForAppIdentifier:(id)a3 didChangeState:(id)a4;
- (void)lockupViewForAppIdentifier:(id)a3 didFailRequestWithError:(id)a4;
@end

@implementation Coordinator

- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_2661C1E54(a3);
}

- (void)lockupViewForAppIdentifier:(id)a3 didFailRequestWithError:(id)a4
{
  if (a3)
  {
    sub_2661CA090();
  }

  v6 = a4;
  v7 = self;
  sub_2661C1F80();
}

- (void)lockupViewEngagedForAppIdentifier:(id)a3
{
  if (a3)
  {
    sub_2661CA090();
  }

  v4 = self;
  sub_2661C22A8();
}

- (void)lockupViewForAppIdentifier:(id)a3 didChangeState:(id)a4
{
  if (a3)
  {
    sub_2661CA090();
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a4)
  {
LABEL_3:
    sub_2661CA090();
  }

LABEL_5:
  v6 = self;
  sub_2661C258C();
}

@end