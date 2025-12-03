@interface PGGraphRebuilderCompatibility
+ (void)fullRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler;
+ (void)incrementalRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler;
- (PGGraphRebuilderCompatibility)init;
@end

@implementation PGGraphRebuilderCompatibility

+ (void)fullRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = library;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22F741320();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F786A58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22F786A60;
  v15[5] = v14;
  libraryCopy = library;
  sub_22F33C54C(0, 0, v10, &unk_22F786A68, v15);
}

+ (void)incrementalRebuildWithPhotoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = library;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22F741320();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F786A10;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22F783A70;
  v15[5] = v14;
  libraryCopy = library;
  sub_22F33C54C(0, 0, v10, &unk_22F784250, v15);
}

- (PGGraphRebuilderCompatibility)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGGraphRebuilderCompatibility *)&v3 init];
}

@end