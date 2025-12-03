@interface PGEventProcessor
+ (BOOL)processPGGraphForMomentNodes:(id)nodes graphBuilder:(id)builder progressReporter:(id)reporter error:(id *)error;
- (PGEventProcessor)init;
@end

@implementation PGEventProcessor

+ (BOOL)processPGGraphForMomentNodes:(id)nodes graphBuilder:(id)builder progressReporter:(id)reporter error:(id *)error
{
  nodesCopy = nodes;
  builderCopy = builder;
  reporterCopy = reporter;
  sub_22F26BE88(nodesCopy, builderCopy);

  return 1;
}

- (PGEventProcessor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGEventProcessor *)&v3 init];
}

@end