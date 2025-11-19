@interface PGEventProcessor
+ (BOOL)processPGGraphForMomentNodes:(id)a3 graphBuilder:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (PGEventProcessor)init;
@end

@implementation PGEventProcessor

+ (BOOL)processPGGraphForMomentNodes:(id)a3 graphBuilder:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_22F26BE88(v8, v9);

  return 1;
}

- (PGEventProcessor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGEventProcessor *)&v3 init];
}

@end