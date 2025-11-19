@interface ICQLiftUICache
+ (ICQLiftUICache)sharedCache;
- (void)cacheResponseFromURL:(id)a3;
- (void)discardCaches;
- (void)fetchResponseForURL:(NSURL *)a3 completion:(id)a4;
@end

@implementation ICQLiftUICache

+ (ICQLiftUICache)sharedCache
{
  if (qword_280C850D0 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)discardCaches
{
  sub_2755EC76C();

  sub_2755EC74C();
}

- (void)cacheResponseFromURL:(id)a3
{
  v4 = sub_2755EC58C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v9[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2755EC54C();
  sub_2755EC76C();
  v10 = self;
  v11 = v8;

  sub_2755EC74C();

  (*(v5 + 8))(v8, v4);
}

- (void)fetchResponseForURL:(NSURL *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2755ECA9C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2755F3C70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2755F3C80;
  v15[5] = v14;
  v16 = a3;

  sub_2755DC10C(0, 0, v10, &unk_2755F3C90, v15);
}

@end