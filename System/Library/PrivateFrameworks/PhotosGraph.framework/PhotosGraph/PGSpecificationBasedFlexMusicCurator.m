@interface PGSpecificationBasedFlexMusicCurator
- (PGSpecificationBasedFlexMusicCurator)init;
- (PGSpecificationBasedFlexMusicCurator)initWithOptions:(id)a3;
- (id)musicCurationAndReturnError:(id *)a3;
@end

@implementation PGSpecificationBasedFlexMusicCurator

- (PGSpecificationBasedFlexMusicCurator)initWithOptions:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  sub_22F3EAA78(v6, &v12);
  v7 = (self + OBJC_IVAR___PGSpecificationBasedFlexMusicCurator_curationSpecification);
  v8 = v13[0];
  *v7 = v12;
  v7[1] = v8;
  *(v7 + 26) = *(v13 + 10);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PGSpecificationBasedFlexMusicCurator *)&v11 init];

  return v9;
}

- (id)musicCurationAndReturnError:(id *)a3
{
  sub_22F17682C();
  v4 = swift_allocError();
  swift_willThrow();
  if (a3)
  {
    v5 = sub_22F73F360();

    v6 = v5;
    *a3 = v5;
  }

  else
  {
  }

  return 0;
}

- (PGSpecificationBasedFlexMusicCurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end