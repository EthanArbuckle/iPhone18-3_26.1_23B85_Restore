@interface RecentsListItemViewHelper
- (void)didTapCallButtonWithSender:(id)sender;
- (void)didTapDetailAccessoryButtonWithSender:(id)sender;
- (void)updateForReducedTransparancy;
@end

@implementation RecentsListItemViewHelper

- (void)updateForReducedTransparancy
{

  sub_1B48E2B60();
}

- (void)didTapDetailAccessoryButtonWithSender:(id)sender
{
  v3 = *(self->super.isa + 60);

  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v4();

    sub_1B48DBC94(v5);
  }

  else
  {
  }
}

- (void)didTapCallButtonWithSender:(id)sender
{
  v3 = *(self->super.isa + 63);

  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v4();

    sub_1B48DBC94(v5);
  }

  else
  {
  }
}

@end