@interface SelectedBackgroundView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SelectedBackgroundView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  SelectedBackgroundView.traitCollectionDidChange(_:)(v9);
}

- (void)layoutSubviews
{
  selfCopy = self;
  SelectedBackgroundView.layoutSubviews()();
}

@end