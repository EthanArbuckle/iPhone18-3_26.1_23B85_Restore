@interface PSSGBuilder
+ (id)errorDictGraphIDKey;
+ (id)errorDictResourceIDKey;
+ (id)errorDomain;
- (BOOL)addGraphWithID:(id)a3 type:(unint64_t)a4 inputs:(id)a5 outputs:(id)a6 error:(id *)a7;
- (BOOL)isWaitInput:(id)a3 forGraph:(id)a4;
- (BOOL)removeGraphWithID:(id)a3 error:(id *)a4;
- (BOOL)removeGraphsWithIDs:(id)a3 error:(id *)a4;
- (id)allDependentGraphsForResourceSet:(id)a3;
- (id)allNodes;
- (id)allStrideDependentGraphs;
- (id)deepCopy;
- (id)dumpStateSync;
- (id)externalSharedInputsForGraph:(id)a3;
- (id)getOrphanedGraphsWithSourceGraphToAffectedGraphs:(id)a3;
- (id)graphsForExecSession:(id)a3;
- (id)graphsInTopologicalWaitOrder;
- (id)nodesForGraphID:(id)a3 graphCond:(id)a4 graphInputCond:(id)a5 resourceCond:(id)a6;
- (id)nodesForResourceID:(id)a3 graphCond:(id)a4 graphInputCond:(id)a5 resourceCond:(id)a6;
- (id)producerGraphForResource:(id)a3;
- (id)resourcesForGraph:(id)a3;
- (id)strideDependentGraphsForGraphID:(id)a3;
- (id)waitResourcesForGraph:(id)a3 isSessionLocal:(BOOL)a4;
- (int64_t)getStrideDependentGraphsCountWithStrideDependentGraphs:(id)a3;
- (void)_removeGraphUnsafeWith:(id)a3;
- (void)dumpStateAsync:(id)a3;
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

- (BOOL)addGraphWithID:(id)a3 type:(unint64_t)a4 inputs:(id)a5 outputs:(id)a6 error:(id *)a7
{
  if (a5)
  {
    type metadata accessor for PSSGGraphInput(self);
    sub_25EB6E3D8();
  }

  if (a6)
  {
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
    sub_25EB6E438();
  }

  v11 = a3;
  v12 = self;
  PSSGBuilder.addGraph(with:type:inputs:outputs:)(v11, a4);

  return 1;
}

- (void)_removeGraphUnsafeWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25EB174C8(v4);
}

- (BOOL)removeGraphWithID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  PSSGBuilder.removeGraph(with:)(v5);

  return 1;
}

- (BOOL)removeGraphsWithIDs:(id)a3 error:(id *)a4
{
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v5 = sub_25EB6E438();
  v6 = self;
  PSSGBuilder.removeGraphs(with:)(v5);

  return 1;
}

- (id)allNodes
{
  v2 = self;
  PSSGBuilder.allNodes()(v3);
  v5 = v4;

  return v5;
}

- (id)nodesForGraphID:(id)a3 graphCond:(id)a4 graphInputCond:(id)a5 resourceCond:(id)a6
{
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
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
  v16 = self;
  v17 = a3;
  sub_25EB2FB1C(v10);
  sub_25EB2FB1C(v11);
  sub_25EB2FB1C(v12);
  sub_25EB30638(v16, v10, v13, v11, v14, v12, v15);
  v18 = sub_25EB1958C(v17);

  sub_25EB318AC(v12);
  sub_25EB318AC(v11);
  sub_25EB318AC(v10);

  return v18;
}

- (id)nodesForResourceID:(id)a3 graphCond:(id)a4 graphInputCond:(id)a5 resourceCond:(id)a6
{
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
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
  v16 = self;
  v17 = a3;
  sub_25EB2FB1C(v10);
  sub_25EB2FB1C(v11);
  sub_25EB2FB1C(v12);
  sub_25EB30638(v16, v10, v13, v11, v14, v12, v15);
  v18 = sub_25EB197BC(v17);

  sub_25EB318AC(v12);
  sub_25EB318AC(v11);
  sub_25EB318AC(v10);

  return v18;
}

- (id)dumpStateSync
{
  v2 = self;
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

- (void)dumpStateAsync:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  PSSGBuilder.dumpStateAsync(_:)(sub_25EB318A4, v5);
}

- (id)deepCopy
{
  v2 = self;
  PSSGBuilder.deepCopy()(v3);
  v5 = v4;

  return v5;
}

- (id)strideDependentGraphsForGraphID:(id)a3
{
  v4 = a3;
  v5 = self;
  PSSGBuilder.strideDependentGraphs(for:)(v4);

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v6 = sub_25EB6E428();

  return v6;
}

- (int64_t)getStrideDependentGraphsCountWithStrideDependentGraphs:(id)a3
{
  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v4 = sub_25EB6E208();
  v5 = self;
  v6 = sub_25EB30C5C(v4);

  return v6;
}

- (id)getOrphanedGraphsWithSourceGraphToAffectedGraphs:(id)a3
{
  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v4 = sub_25EB6E208();
  v5 = self;
  sub_25EB1EC4C(v4);

  v6 = sub_25EB6E428();

  return v6;
}

- (id)allStrideDependentGraphs
{
  v2 = self;
  PSSGBuilder.allStrideDependentGraphs()();

  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v3 = sub_25EB6E1F8();

  return v3;
}

- (id)allDependentGraphsForResourceSet:(id)a3
{
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID);
  v4 = sub_25EB6E438();
  v5 = self;
  PSSGBuilder.allDependentGraphs(forResourceSet:)(v4);

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v6 = sub_25EB6E428();

  return v6;
}

- (id)externalSharedInputsForGraph:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25EB20C90(v4);

  type metadata accessor for PSSGGraphInput(v6);
  v7 = sub_25EB6E3C8();

  return v7;
}

- (id)resourcesForGraph:(id)a3
{
  v4 = a3;
  v5 = self;
  PSSGBuilder.resources(forGraph:)(v4);

  v6 = sub_25EB6E428();

  return v6;
}

- (id)waitResourcesForGraph:(id)a3 isSessionLocal:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  PSSGBuilder.waitResources(forGraph:isSessionLocal:)(v6, a4);

  v8 = sub_25EB6E428();

  return v8;
}

- (id)graphsForExecSession:(id)a3
{
  v4 = sub_25EB6E268();
  v6 = v5;
  v7 = self;
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

- (BOOL)isWaitInput:(id)a3 forGraph:(id)a4
{
  v6 = sub_25EB6E268();
  v8 = v7;
  v9 = a4;
  v10 = self;
  LOBYTE(v6) = PSSGBuilder.isWaitInput(_:forGraph:)(v6, v8, v9);

  return v6 & 1;
}

- (id)producerGraphForResource:(id)a3
{
  v5 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = a3;
  v8 = self;
  v9 = sub_25EB0EE68(v7, v6, sub_25EAFD114, type metadata accessor for PSSGResource);
  if (v9)
  {
    v10 = v9;
    swift_endAccess();
    v11 = [v10 producer];
  }

  else
  {
    swift_endAccess();
    v11 = 0;
  }

  return v11;
}

- (id)graphsInTopologicalWaitOrder
{
  v2 = self;
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