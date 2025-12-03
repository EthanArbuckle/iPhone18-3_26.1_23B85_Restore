@interface Coordinator
- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)lockupViewEngagedForAppIdentifier:(id)identifier;
- (void)lockupViewForAppIdentifier:(id)identifier didChangeState:(id)state;
- (void)lockupViewForAppIdentifier:(id)identifier didFailRequestWithError:(id)error;
@end

@implementation Coordinator

- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2661C1E54(controller);
}

- (void)lockupViewForAppIdentifier:(id)identifier didFailRequestWithError:(id)error
{
  if (identifier)
  {
    sub_2661CA090();
  }

  errorCopy = error;
  selfCopy = self;
  sub_2661C1F80();
}

- (void)lockupViewEngagedForAppIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_2661CA090();
  }

  selfCopy = self;
  sub_2661C22A8();
}

- (void)lockupViewForAppIdentifier:(id)identifier didChangeState:(id)state
{
  if (identifier)
  {
    sub_2661CA090();
    if (!state)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (state)
  {
LABEL_3:
    sub_2661CA090();
  }

LABEL_5:
  selfCopy = self;
  sub_2661C258C();
}

@end