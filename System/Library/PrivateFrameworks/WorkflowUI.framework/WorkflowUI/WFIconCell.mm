@interface WFIconCell
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFIconCell

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = WFIconCell;
  changeCopy = change;
  [(WFIconCell *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(WFIconCell *)self traitCollection:v7.receiver];
  v6 = WFShouldRedrawIconForTraitCollectionChange(v5, changeCopy);

  if (v6)
  {
    [(WFIconCell *)self redrawIcon];
  }
}

@end