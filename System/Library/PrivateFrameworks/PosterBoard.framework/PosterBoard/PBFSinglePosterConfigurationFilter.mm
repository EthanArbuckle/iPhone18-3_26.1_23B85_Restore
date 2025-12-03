@interface PBFSinglePosterConfigurationFilter
- (BOOL)shouldIncludePosterConfiguration:(id)configuration inSwitcherConfiguration:(id)switcherConfiguration;
- (PBFSinglePosterConfigurationFilter)init;
- (PBFSinglePosterConfigurationFilter)initWithConfiguration:(id)configuration;
@end

@implementation PBFSinglePosterConfigurationFilter

- (PBFSinglePosterConfigurationFilter)initWithConfiguration:(id)configuration
{
  *(&self->super.isa + OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration) = configuration;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SinglePosterConfigurationFilter();
  configurationCopy = configuration;
  return [(PBFSinglePosterConfigurationFilter *)&v6 init];
}

- (BOOL)shouldIncludePosterConfiguration:(id)configuration inSwitcherConfiguration:(id)switcherConfiguration
{
  configurationCopy = configuration;
  switcherConfigurationCopy = switcherConfiguration;
  selfCopy = self;
  v9 = _s11PosterBoard06SingleA19ConfigurationFilterC13shouldInclude06posterD02inSbSo08PRPosterD0C_So010PRSwitcherD0CtF_0(configurationCopy);

  return v9 & 1;
}

- (PBFSinglePosterConfigurationFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end