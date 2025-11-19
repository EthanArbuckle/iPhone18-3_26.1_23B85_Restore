@interface WFIconView
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFIconView

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFIconView;
  v4 = a3;
  [(WFIconView *)&v7 traitCollectionDidChange:v4];
  v5 = [(WFIconView *)self traitCollection:v7.receiver];
  v6 = WFShouldRedrawIconForTraitCollectionChange(v5, v4);

  if (v6)
  {
    [(WFIconView *)self redrawIcon];
  }
}

@end