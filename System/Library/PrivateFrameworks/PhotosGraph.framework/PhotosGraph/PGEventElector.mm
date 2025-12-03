@interface PGEventElector
+ (id)memoryUniqueIdentifiersToElectWithGraph:(id)graph electionMode:(id)mode error:(id *)error;
- (PGEventElector)init;
@end

@implementation PGEventElector

+ (id)memoryUniqueIdentifiersToElectWithGraph:(id)graph electionMode:(id)mode error:(id *)error
{
  v6 = sub_22F740E20();
  v8 = v7;
  graphCopy = graph;
  LOBYTE(v8) = sub_22F171514(v6, v8);
  v10 = sub_22F17173C(graphCopy, v8);
  v11 = sub_22F171DF4(graphCopy, v8);
  sub_22F144608(v11, v10);

  v12 = sub_22F741410();

  return v12;
}

- (PGEventElector)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EventElector();
  return [(PGEventElector *)&v3 init];
}

@end