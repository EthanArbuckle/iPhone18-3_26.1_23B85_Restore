@interface PUPickerOnboardingHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUPickerOnboardingHeaderView)initWithClientDisplayName:(id)name isLimitedLibraryPicker:(BOOL)picker closeAction:(id)action;
- (PUPickerOnboardingHeaderViewDelegate)delegate;
- (void)didMoveToWindow;
- (void)hovering:(id)hovering;
- (void)setDelegate:(id)delegate;
@end

@implementation PUPickerOnboardingHeaderView

- (PUPickerOnboardingHeaderViewDelegate)delegate
{
  v2 = sub_1B3750348();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37503B8();
}

- (PUPickerOnboardingHeaderView)initWithClientDisplayName:(id)name isLimitedLibraryPicker:(BOOL)picker closeAction:(id)action
{
  pickerCopy = picker;
  if (name)
  {
    v7 = sub_1B3C9C5E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return sub_1B3750400(v7, v9, pickerCopy, action);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1B3752C88();
}

- (void)hovering:(id)hovering
{
  hoveringCopy = hovering;
  selfCopy = self;
  sub_1B3753010(hoveringCopy);
}

@end