@interface WFIconCell
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFIconCell

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFIconCell;
  v4 = a3;
  [(WFIconCell *)&v7 traitCollectionDidChange:v4];
  v5 = [(WFIconCell *)self traitCollection:v7.receiver];
  v6 = WFShouldRedrawIconForTraitCollectionChange(v5, v4);

  if (v6)
  {
    [(WFIconCell *)self redrawIcon];
  }
}

@end