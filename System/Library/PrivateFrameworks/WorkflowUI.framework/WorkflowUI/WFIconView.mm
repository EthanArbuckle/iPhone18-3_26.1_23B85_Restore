@interface WFIconView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFIconView

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = WFIconView;
  changeCopy = change;
  [(WFIconView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(WFIconView *)self traitCollection:v7.receiver];
  v6 = WFShouldRedrawIconForTraitCollectionChange(v5, changeCopy);

  if (v6)
  {
    [(WFIconView *)self redrawIcon];
  }
}

@end