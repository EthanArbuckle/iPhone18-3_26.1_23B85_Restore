@interface PSSGBuilder
+ (id)errorDictGraphIDKey;
+ (id)errorDictResourceIDKey;
+ (id)errorDomain;
- (BOOL)addGraphWithID:(id)d type:(unint64_t)type inputs:(id)inputs outputs:(id)outputs error:(id *)error;
- (BOOL)isWaitInput:(id)input forGraph:(id)graph;
- (BOOL)removeGraphWithID:(id)d error:(id *)error;
- (BOOL)removeGraphsWithIDs:(id)ds error:(id *)error;
- (id)allDependentGraphsForResourceSet:(id)set;
- (id)allNodes;
- (id)allStrideDependentGraphs;
- (id)deepCopy;
- (id)dumpStateSync;
- (id)externalSharedInputsForGraph:(id)graph;
- (id)getOrphanedGraphsWithSourceGraphToAffectedGraphs:(id)graphs;
- (id)graphsForExecSession:(id)session;
- (id)graphsInTopologicalWaitOrder;
- (id)nodesForGraphID:(id)d graphCond:(id)cond graphInputCond:(id)inputCond resourceCond:(id)resourceCond;
- (id)nodesForResourceID:(id)d graphCond:(id)cond graphInputCond:(id)inputCond resourceCond:(id)resourceCond;
- (id)producerGraphForResource:(id)resource;
- (id)resourcesForGraph:(id)graph;
- (id)strideDependentGraphsForGraphID:(id)d;
- (id)waitResourcesForGraph:(id)graph isSessionLocal:(BOOL)local;
- (int64_t)getStrideDependentGraphsCountWithStrideDependentGraphs:(id)graphs;
- (void)_removeGraphUnsafeWith:(id)with;
- (void)dumpStateAsync:(id)async;
@end

@implementation PSSGBuilder

+ (id)errorDomain
{
  v2 = sub_25EB6E258();

  return v2;
}

+ (id)errorDictGraphIDKey
{
  v2 = sub_25EB6E258();

  return v2;
}

+ (id)errorDictResourceIDKey
{
  v2 = sub_25EB6E258();

  return v2;
}

- (BOOL)addGraphWithID:(id)d type:(unint64_t)type inputs:(id)inputs outputs:(id)outputs error:(id *)error
{
  if (inputs)
  {
    type metadata accessor for PSSGGraphInput(self);
    sub_25EB6E3D8();
  }

  if (outputs)
  {
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
    sub_25EB6E438();
  }

  dCopy = d;
  selfCopy = self;
  PSSGBuilder.addGraph(with:type:inputs:outputs:)(dCopy, type);

  return 1;
}

- (void)_removeGraphUnsafeWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_25EB174C8(withCopy);
}

- (BOOL)removeGraphWithID:(id)d error:(id *)error
{
  dCopy = d;
  selfCopy = self;
  PSSGBuilder.removeGraph(with:)(dCopy);

  return 1;
}

- (BOOL)removeGraphsWithIDs:(id)ds error:(id *)error
{
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v5 = sub_25EB6E438();
  selfCopy = self;
  PSSGBuilder.removeGraphs(with:)(v5);

  return 1;
}

- (id)allNodes
{
  selfCopy = self;
  PSSGBuilder.allNodes()(v3);
  v5 = v4;

  return v5;
}

- (id)nodesForGraphID:(id)d graphCond:(id)cond graphInputCond:(id)inputCond resourceCond:(id)resourceCond
{
  v10 = _Block_copy(cond);
  v11 = _Block_copy(inputCond);
  v12 = _Block_copy(resourceCond);
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_25EB32184;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v11 = sub_25EB32180;
  if (v12)
  {
LABEL_4:
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    v12 = sub_25EB32184;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  selfCopy = self;
  dCopy = d;
  sub_25EB2FB1C(v10);
  sub_25EB2FB1C(v11);
  sub_25EB2FB1C(v12);
  sub_25EB30638(selfCopy, v10, v13, v11, v14, v12, v15);
  v18 = sub_25EB1958C(dCopy);

  sub_25EB318AC(v12);
  sub_25EB318AC(v11);
  sub_25EB318AC(v10);

  return v18;
}

- (id)nodesForResourceID:(id)d graphCond:(id)cond graphInputCond:(id)inputCond resourceCond:(id)resourceCond
{
  v10 = _Block_copy(cond);
  v11 = _Block_copy(inputCond);
  v12 = _Block_copy(resourceCond);
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_25EB32184;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v11 = sub_25EB318EC;
  if (v12)
  {
LABEL_4:
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    v12 = sub_25EB318BC;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  selfCopy = self;
  dCopy = d;
  sub_25EB2FB1C(v10);
  sub_25EB2FB1C(v11);
  sub_25EB2FB1C(v12);
  sub_25EB30638(selfCopy, v10, v13, v11, v14, v12, v15);
  v18 = sub_25EB197BC(dCopy);

  sub_25EB318AC(v12);
  sub_25EB318AC(v11);
  sub_25EB318AC(v10);

  return v18;
}

- (id)dumpStateSync
{
  selfCopy = self;
  object = PSSGBuilder.dumpStateSync()().value._object;

  if (object)
  {
    v4 = sub_25EB6E258();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dumpStateAsync:(id)async
{
  v4 = _Block_copy(async);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  PSSGBuilder.dumpStateAsync(_:)(sub_25EB318A4, v5);
}

- (id)deepCopy
{
  selfCopy = self;
  PSSGBuilder.deepCopy()(v3);
  v5 = v4;

  return v5;
}

- (id)strideDependentGraphsForGraphID:(id)d
{
  dCopy = d;
  selfCopy = self;
  PSSGBuilder.strideDependentGraphs(for:)(dCopy);

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v6 = sub_25EB6E428();

  return v6;
}

- (int64_t)getStrideDependentGraphsCountWithStrideDependentGraphs:(id)graphs
{
  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v4 = sub_25EB6E208();
  selfCopy = self;
  v6 = sub_25EB30C5C(v4);

  return v6;
}

- (id)getOrphanedGraphsWithSourceGraphToAffectedGraphs:(id)graphs
{
  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v4 = sub_25EB6E208();
  selfCopy = self;
  sub_25EB1EC4C(v4);

  v6 = sub_25EB6E428();

  return v6;
}

- (id)allStrideDependentGraphs
{
  selfCopy = self;
  PSSGBuilder.allStrideDependentGraphs()();

  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v3 = sub_25EB6E1F8();

  return v3;
}

- (id)allDependentGraphsForResourceSet:(id)set
{
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v4 = sub_25EB6E438();
  selfCopy = self;
  PSSGBuilder.allDependentGraphs(forResourceSet:)(v4);

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v6 = sub_25EB6E428();

  return v6;
}

- (id)externalSharedInputsForGraph:(id)graph
{
  graphCopy = graph;
  selfCopy = self;
  sub_25EB20C90(graphCopy);

  type metadata accessor for PSSGGraphInput(v6);
  v7 = sub_25EB6E3C8();

  return v7;
}

- (id)resourcesForGraph:(id)graph
{
  graphCopy = graph;
  selfCopy = self;
  PSSGBuilder.resources(forGraph:)(graphCopy);

  v6 = sub_25EB6E428();

  return v6;
}

- (id)waitResourcesForGraph:(id)graph isSessionLocal:(BOOL)local
{
  graphCopy = graph;
  selfCopy = self;
  PSSGBuilder.waitResources(forGraph:isSessionLocal:)(graphCopy, local);

  v8 = sub_25EB6E428();

  return v8;
}

- (id)graphsForExecSession:(id)session
{
  v4 = sub_25EB6E268();
  v6 = v5;
  selfCopy = self;
  PSSGBuilder.graphs(forExecSession:)(v4, v6);
  v9 = v8;

  if (v9)
  {
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
    v10 = sub_25EB6E428();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isWaitInput:(id)input forGraph:(id)graph
{
  v6 = sub_25EB6E268();
  v8 = v7;
  graphCopy = graph;
  selfCopy = self;
  LOBYTE(v6) = PSSGBuilder.isWaitInput(_:forGraph:)(v6, v8, graphCopy);

  return v6 & 1;
}

- (id)producerGraphForResource:(id)resource
{
  v5 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  resourceCopy = resource;
  selfCopy = self;
  v9 = sub_25EB0EE68(resourceCopy, v6, sub_25EAFD114, type metadata accessor for PSSGResource);
  if (v9)
  {
    v10 = v9;
    swift_endAccess();
    producer = [v10 producer];
  }

  else
  {
    swift_endAccess();
    producer = 0;
  }

  return producer;
}

- (id)graphsInTopologicalWaitOrder
{
  selfCopy = self;
  v3 = PSSGBuilder.graphsInTopologicalWaitOrder()();

  if (v3)
  {
    type metadata accessor for PSSGGraphID(0);
    v4 = sub_25EB6E3C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end