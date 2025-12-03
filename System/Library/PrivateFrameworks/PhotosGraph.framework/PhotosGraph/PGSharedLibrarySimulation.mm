@interface PGSharedLibrarySimulation
+ (BOOL)runSharedLibrarySimulationUsingCameraMetadataDirectoryPath:(id)path withProgressReporter:(id)reporter error:(id *)error;
- (PGSharedLibrarySimulation)init;
@end

@implementation PGSharedLibrarySimulation

+ (BOOL)runSharedLibrarySimulationUsingCameraMetadataDirectoryPath:(id)path withProgressReporter:(id)reporter error:(id *)error
{
  v6 = sub_22F740E20();
  v8 = v7;
  reporterCopy = reporter;
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