@interface VUWClusterResult
- (BOOL)isKeyFace;
- (NSNumber)clusterIdentifier;
- (NSNumber)observationIdentifier;
- (VUWClusterResult)init;
- (VUWClusterResult)initWithObservationIdentifier:(id)identifier clusterIdentifier:(id)clusterIdentifier isKeyFace:(BOOL)face;
- (void)setClusterIdentifier:(id)identifier;
- (void)setIsKeyFace:(BOOL)face;
- (void)setObservationIdentifier:(id)identifier;
@end

@implementation VUWClusterResult

- (NSNumber)observationIdentifier
{
  v3 = OBJC_IVAR___VUWClusterResult_observationIdentifier;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservationIdentifier:(id)identifier
{
  v5 = OBJC_IVAR___VUWClusterResult_observationIdentifier;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = identifier;
  identifierCopy = identifier;
}

- (NSNumber)clusterIdentifier
{
  v3 = OBJC_IVAR___VUWClusterResult_clusterIdentifier;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClusterIdentifier:(id)identifier
{
  v5 = OBJC_IVAR___VUWClusterResult_clusterIdentifier;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = identifier;
  identifierCopy = identifier;
}

- (BOOL)isKeyFace
{
  v3 = OBJC_IVAR___VUWClusterResult_isKeyFace;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyFace:(BOOL)face
{
  v5 = OBJC_IVAR___VUWClusterResult_isKeyFace;
  swift_beginAccess();
  *(&self->super.isa + v5) = face;
}

- (VUWClusterResult)initWithObservationIdentifier:(id)identifier clusterIdentifier:(id)clusterIdentifier isKeyFace:(BOOL)face
{
  *(&self->super.isa + OBJC_IVAR___VUWClusterResult_observationIdentifier) = identifier;
  *(&self->super.isa + OBJC_IVAR___VUWClusterResult_clusterIdentifier) = clusterIdentifier;
  *(&self->super.isa + OBJC_IVAR___VUWClusterResult_isKeyFace) = face;
  v9.receiver = self;
  v9.super_class = VUWClusterResult;
  identifierCopy = identifier;
  clusterIdentifierCopy = clusterIdentifier;
  return [(VUWClusterResult *)&v9 init];
}

- (VUWClusterResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end