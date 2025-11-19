@interface VUWClusterResult
- (BOOL)isKeyFace;
- (NSNumber)clusterIdentifier;
- (NSNumber)observationIdentifier;
- (VUWClusterResult)init;
- (VUWClusterResult)initWithObservationIdentifier:(id)a3 clusterIdentifier:(id)a4 isKeyFace:(BOOL)a5;
- (void)setClusterIdentifier:(id)a3;
- (void)setIsKeyFace:(BOOL)a3;
- (void)setObservationIdentifier:(id)a3;
@end

@implementation VUWClusterResult

- (NSNumber)observationIdentifier
{
  v3 = OBJC_IVAR___VUWClusterResult_observationIdentifier;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservationIdentifier:(id)a3
{
  v5 = OBJC_IVAR___VUWClusterResult_observationIdentifier;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSNumber)clusterIdentifier
{
  v3 = OBJC_IVAR___VUWClusterResult_clusterIdentifier;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClusterIdentifier:(id)a3
{
  v5 = OBJC_IVAR___VUWClusterResult_clusterIdentifier;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)isKeyFace
{
  v3 = OBJC_IVAR___VUWClusterResult_isKeyFace;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyFace:(BOOL)a3
{
  v5 = OBJC_IVAR___VUWClusterResult_isKeyFace;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (VUWClusterResult)initWithObservationIdentifier:(id)a3 clusterIdentifier:(id)a4 isKeyFace:(BOOL)a5
{
  *(&self->super.isa + OBJC_IVAR___VUWClusterResult_observationIdentifier) = a3;
  *(&self->super.isa + OBJC_IVAR___VUWClusterResult_clusterIdentifier) = a4;
  *(&self->super.isa + OBJC_IVAR___VUWClusterResult_isKeyFace) = a5;
  v9.receiver = self;
  v9.super_class = VUWClusterResult;
  v6 = a3;
  v7 = a4;
  return [(VUWClusterResult *)&v9 init];
}

- (VUWClusterResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end