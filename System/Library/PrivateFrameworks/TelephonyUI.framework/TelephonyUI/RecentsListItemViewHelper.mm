@interface RecentsListItemViewHelper
- (void)didTapCallButtonWithSender:(id)a3;
- (void)didTapDetailAccessoryButtonWithSender:(id)a3;
- (void)updateForReducedTransparancy;
@end

@implementation RecentsListItemViewHelper

- (void)updateForReducedTransparancy
{

  sub_1B48E2B60();
}

- (void)didTapDetailAccessoryButtonWithSender:(id)a3
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

- (void)didTapCallButtonWithSender:(id)a3
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