@interface PSSGGraph
- (NSArray)inputs;
- (NSSet)sharedOutputs;
- (PSSGGraph)init;
- (PSSGGraph)initWithType:(unint64_t)a3;
- (PSSGGraph)initWithType:(unint64_t)a3 inputs:(id)a4 outputs:(id)a5;
- (void)setInputs:(id)a3;
@end

@implementation PSSGGraph

- (NSArray)inputs
{
  v2 = *(self + OBJC_IVAR___PSSGGraph_inputs);
  type metadata accessor for PSSGGraphInput(self);

  v3 = sub_25EB6E3C8();

  return v3;
}

- (void)setInputs:(id)a3
{
  type metadata accessor for PSSGGraphInput(self);
  v4 = sub_25EB6E3D8();
  v5 = *(self + OBJC_IVAR___PSSGGraph_inputs);
  *(self + OBJC_IVAR___PSSGGraph_inputs) = v4;
}

- (NSSet)sharedOutputs
{
  v2 = self;
  sub_25EB12868();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v3 = sub_25EB6E428();

  return v3;
}

- (PSSGGraph)initWithType:(unint64_t)a3
{
  *(self + OBJC_IVAR___PSSGGraph_inputs) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___PSSGGraph_outputs) = MEMORY[0x277D84FA0];
  *(self + OBJC_IVAR___PSSGGraph_type) = a3;
  v4.receiver = self;
  v4.super_class = PSSGGraph;
  return [(PSSGGraph *)&v4 init];
}

- (PSSGGraph)initWithType:(unint64_t)a3 inputs:(id)a4 outputs:(id)a5
{
  v6 = a4;
  if (a4)
  {
    type metadata accessor for PSSGGraphInput(self);
    v6 = sub_25EB6E3D8();
  }

  if (a5)
  {
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
    v8 = sub_25EB6E438();
  }

  else
  {
    v8 = 0;
  }

  return PSSGGraph.init(type:inputs:outputs:)(a3, v6, v8);
}

- (PSSGGraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end