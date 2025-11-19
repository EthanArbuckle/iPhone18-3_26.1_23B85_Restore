@interface PGSharedLibrarySimulation
+ (BOOL)runSharedLibrarySimulationUsingCameraMetadataDirectoryPath:(id)a3 withProgressReporter:(id)a4 error:(id *)a5;
- (PGSharedLibrarySimulation)init;
@end

@implementation PGSharedLibrarySimulation

+ (BOOL)runSharedLibrarySimulationUsingCameraMetadataDirectoryPath:(id)a3 withProgressReporter:(id)a4 error:(id *)a5
{
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = a4;
  sub_22F390C5C(v6, v8);

  return 1;
}

- (PGSharedLibrarySimulation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PGSharedLibrarySimulation();
  return [(PGSharedLibrarySimulation *)&v3 init];
}

@end