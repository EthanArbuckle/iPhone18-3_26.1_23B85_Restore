@interface PBFSinglePosterConfigurationFilter
- (BOOL)shouldIncludePosterConfiguration:(id)a3 inSwitcherConfiguration:(id)a4;
- (PBFSinglePosterConfigurationFilter)init;
- (PBFSinglePosterConfigurationFilter)initWithConfiguration:(id)a3;
@end

@implementation PBFSinglePosterConfigurationFilter

- (PBFSinglePosterConfigurationFilter)initWithConfiguration:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___PBFSinglePosterConfigurationFilter_configuration) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SinglePosterConfigurationFilter();
  v4 = a3;
  return [(PBFSinglePosterConfigurationFilter *)&v6 init];
}

- (BOOL)shouldIncludePosterConfiguration:(id)a3 inSwitcherConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s11PosterBoard06SingleA19ConfigurationFilterC13shouldInclude06posterD02inSbSo08PRPosterD0C_So010PRSwitcherD0CtF_0(v6);

  return v9 & 1;
}

- (PBFSinglePosterConfigurationFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end