@interface AlertTemplateView.AlertActionCell
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AlertTemplateView.AlertActionCell

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  sub_1E3A9B908();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D30);
  v3 = sub_1E42062A4();

  return v3;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1E3A9B998();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E3A9BA48();
}

@end