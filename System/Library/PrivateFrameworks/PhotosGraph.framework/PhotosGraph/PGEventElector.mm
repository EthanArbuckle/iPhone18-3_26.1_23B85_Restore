@interface PGEventElector
+ (id)memoryUniqueIdentifiersToElectWithGraph:(id)a3 electionMode:(id)a4 error:(id *)a5;
- (PGEventElector)init;
@end

@implementation PGEventElector

+ (id)memoryUniqueIdentifiersToElectWithGraph:(id)a3 electionMode:(id)a4 error:(id *)a5
{
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = a3;
  LOBYTE(v8) = sub_22F171514(v6, v8);
  v10 = sub_22F17173C(v9, v8);
  v11 = sub_22F171DF4(v9, v8);
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