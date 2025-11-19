@interface PSSGBuilderNodeList
- (PSSGBuilderNodeList)init;
- (PSSGBuilderNodeList)initWithGraphs:(id)a3 resources:(id)a4;
@end

@implementation PSSGBuilderNodeList

- (PSSGBuilderNodeList)initWithGraphs:(id)a3 resources:(id)a4
{
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v5 = sub_25EB6E438();
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v6 = sub_25EB6E438();
  v7 = (&self->super.isa + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.isa + OBJC_IVAR___PSSGBuilderNodeList_graphSet) = v5;
  *(&self->super.isa + OBJC_IVAR___PSSGBuilderNodeList_resourceSet) = v6;
  v9.receiver = self;
  v9.super_class = PSSGBuilderNodeList;
  return [(PSSGBuilderNodeList *)&v9 init];
}

- (PSSGBuilderNodeList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end