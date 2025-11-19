@interface PGSearchEntityPersister
- (BOOL)persistSearchEntitiesFromSearchEntityProvider:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (PGSearchEntityPersister)init;
- (PGSearchEntityPersister)initWithPhotoLibrary:(id)a3;
@end

@implementation PGSearchEntityPersister

- (PGSearchEntityPersister)initWithPhotoLibrary:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___PGSearchEntityPersister_logger;
  v7 = qword_2810A9400;
  v8 = a3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  v10 = __swift_project_value_buffer(v9, qword_2810B4CE0);
  (*(*(v9 - 8) + 16))(self + v6, v10, v9);
  *(&self->super.isa + OBJC_IVAR___PGSearchEntityPersister_batchSize) = 100;
  *(&self->super.isa + OBJC_IVAR___PGSearchEntityPersister_photoLibrary) = v8;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(PGSearchEntityPersister *)&v12 init];
}

- (BOOL)persistSearchEntitiesFromSearchEntityProvider:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  SearchEntityPersister.persistSearchEntities(from:progressReporter:)(a3);

  swift_unknownObjectRelease();
  return 1;
}

- (PGSearchEntityPersister)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end