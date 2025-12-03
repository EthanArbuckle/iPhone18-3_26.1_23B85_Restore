@interface WFIconButton
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFIconButton

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = WFIconButton;
  changeCopy = change;
  [(WFIconButton *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(WFIconButton *)self traitCollection:v7.receiver];
  v6 = WFShouldRedrawIconForTraitCollectionChange(v5, changeCopy);

  if (v6)
  {
    [(WFIconButton *)self redrawIcon];
  }
}

@end