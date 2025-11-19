@interface PGUpNextDebugInfoBuilder
- (BOOL)rootMemoryIsAggregation;
- (BOOL)wantsVerboseDebugInfo;
- (NSArray)featureWeightVectors;
- (NSArray)momentUUIDs;
- (NSString)debugInfo;
- (NSString)inputDebugInfo;
- (NSString)rootMemoryNodeUniqueIdentifier;
- (void)addSuggestionFilteringLog:(id)a3;
- (void)setFeatureWeightVectors:(id)a3;
- (void)setInputDebugInfo:(id)a3;
- (void)setMomentUUIDs:(id)a3;
- (void)setRootMemoryIsAggregation:(BOOL)a3;
- (void)setRootMemoryNodeUniqueIdentifier:(id)a3;
- (void)setWantsVerboseDebugInfo:(BOOL)a3;
@end

@implementation PGUpNextDebugInfoBuilder

- (BOOL)wantsVerboseDebugInfo
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsVerboseDebugInfo:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)inputDebugInfo
{
  v2 = (self + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_22F740DF0();

  return v5;
}

- (void)setInputDebugInfo:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)rootMemoryIsAggregation
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRootMemoryIsAggregation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)rootMemoryNodeUniqueIdentifier
{
  v2 = (self + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_22F740DF0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRootMemoryNodeUniqueIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_22F740E20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)momentUUIDs
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_momentUUIDs;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_22F741160();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMomentUUIDs:(id)a3
{
  if (a3)
  {
    v4 = sub_22F741180();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_momentUUIDs;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSArray)featureWeightVectors
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_featureWeightVectors;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_22F1DC8C0();

    v4 = sub_22F741160();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFeatureWeightVectors:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_22F1DC8C0();
    v3 = sub_22F741180();
  }

  v5 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_featureWeightVectors;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (void)addSuggestionFilteringLog:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
  swift_beginAccess();
  v8 = *(self + v7);
  v9 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(self + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_22F13E1A8(0, *(v8 + 2) + 1, 1, v8);
    *(self + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_22F13E1A8((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(self + v7) = v8;
  swift_endAccess();
}

- (NSString)debugInfo
{
  v2 = self;
  PGUpNextDebugInfoBuilder.debugInfo.getter();

  v3 = sub_22F740DF0();

  return v3;
}

@end