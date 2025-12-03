@interface MTGenericDataSourceSection
- (MTGenericDataSourceSection)init;
- (MTGenericDataSourceSection)initWithTitle:(id)title;
- (id)shouldIncludeSeeAllBlock;
- (void)setShouldIncludeSeeAllBlock:(id)block;
@end

@implementation MTGenericDataSourceSection

- (id)shouldIncludeSeeAllBlock
{
  v2 = (self + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9046F58;
  aBlock[3] = &block_descriptor_63;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)setShouldIncludeSeeAllBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_1D90474F8;
  v6[1] = v5;
}

- (MTGenericDataSourceSection)initWithTitle:(id)title
{
  v4 = sub_1D917820C();
  v5 = (self + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  *v5 = sub_1D8E3B050;
  v5[1] = 0;
  v6 = (self + OBJC_IVAR___MTGenericDataSourceSection_storedTitle);
  *v6 = v4;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GenericDataSourceSection();
  return [(MTGenericDataSourceSection *)&v9 init];
}

- (MTGenericDataSourceSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end