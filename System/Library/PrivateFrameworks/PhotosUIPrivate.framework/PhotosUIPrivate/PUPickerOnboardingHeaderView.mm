@interface PUPickerOnboardingHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUPickerOnboardingHeaderView)initWithClientDisplayName:(id)a3 isLimitedLibraryPicker:(BOOL)a4 closeAction:(id)a5;
- (PUPickerOnboardingHeaderViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)hovering:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation PUPickerOnboardingHeaderView

- (PUPickerOnboardingHeaderViewDelegate)delegate
{
  v2 = sub_1B3750348();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B37503B8();
}

- (PUPickerOnboardingHeaderView)initWithClientDisplayName:(id)a3 isLimitedLibraryPicker:(BOOL)a4 closeAction:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v7 = sub_1B3C9C5E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return sub_1B3750400(v7, v9, v6, a5);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1B3752C14(width, height, v6, v7);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1B3752C88();
}

- (void)hovering:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3753010(v4);
}

@end