@interface WFIconButton
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFIconButton

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFIconButton;
  v4 = a3;
  [(WFIconButton *)&v7 traitCollectionDidChange:v4];
  v5 = [(WFIconButton *)self traitCollection:v7.receiver];
  v6 = WFShouldRedrawIconForTraitCollectionChange(v5, v4);

  if (v6)
  {
    [(WFIconButton *)self redrawIcon];
  }
}

@end