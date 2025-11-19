@interface PUIObjCArtworkProvider
- (BOOL)hasArtworkForShow:(id)a3 withDimensions:(CGRect)a4 fromSource:(id)a5;
- (PUIObjCArtworkProvider)init;
- (id)cachedArtworkForMTPodcast:(id)a3 withSize:(CGSize)a4;
- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)legacyUICachedArtworkForPodcastUuid:(id)a3 withSize:(CGSize)a4;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)artworkForMTPodcast:(MTPodcast *)a3 withSize:(CGSize)a4 completionHandler:(id)a5;
- (void)artworkForShow:(NSString *)a3 size:(CGSize)a4 completionHandler:(id)a5;
- (void)artworkForShow:(NSString *)a3 size:(CGSize)a4 source:(NSString *)a5 completionHandler:(id)a6;
- (void)artworkForURL:(NSString *)a3 withSize:(CGSize)a4 completionHandler:(id)a5;
- (void)artworkPathForShow:(NSString *)a3 size:(CGSize)a4 completionHandler:(id)a5;
- (void)artworkPathForShow:(NSString *)a3 size:(CGSize)a4 source:(NSString *)a5 completionHandler:(id)a6;
- (void)cacheArtwork:(id)a3 withDimension:(CGRect)a4 forShow:(id)a5 fromSource:(id)a6;
- (void)keyedArtworkForShow:(NSString *)a3 size:(CGSize)a4 completionHandler:(id)a5;
- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)a3 completionHandler:(id)a4;
- (void)migrateLibraryArtworkFromImageStoreWithCompletionHandler:(id)a3;
- (void)placeholderWithSize:(CGSize)a3 completionHandler:(id)a4;
@end

@implementation PUIObjCArtworkProvider

- (void)cacheArtwork:(id)a3 withDimension:(CGRect)a4 forShow:(id)a5 fromSource:(id)a6
{
  v8 = sub_21B4C9708();
  v10 = v9;
  v11 = sub_21B4C9708();
  v12 = a3;
  v13 = self;
  sub_21B3FFB54(v12, v8, v10, v11);
}

- (BOOL)hasArtworkForShow:(id)a3 withDimensions:(CGRect)a4 fromSource:(id)a5
{
  v6 = sub_21B4C9708();
  v8 = v7;
  v9 = sub_21B4C9708();
  v11 = v10;
  v12 = self;
  LOBYTE(v9) = sub_21B400000(v6, v8, v9, v11);

  return v9 & 1;
}

- (void)artworkForShow:(NSString *)a3 size:(CGSize)a4 source:(NSString *)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  v16[3] = width;
  v16[4] = height;
  *(v16 + 5) = a5;
  *(v16 + 6) = v15;
  *(v16 + 7) = self;
  v17 = sub_21B4C9A58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21B4D3428;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_21B4D3430;
  v19[5] = v18;
  v20 = a3;
  v21 = a5;
  v22 = self;
  sub_21B47243C(0, 0, v14, &unk_21B4D3438, v19);
}

- (void)artworkForShow:(NSString *)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_21B4C9A58();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21B4D3408;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21B4D3410;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D3418, v17);
}

- (void)keyedArtworkForShow:(NSString *)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_21B4C9A58();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21B4D33E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21B4D33F0;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D33F8, v17);
}

- (void)artworkPathForShow:(NSString *)a3 size:(CGSize)a4 source:(NSString *)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  v16[3] = width;
  v16[4] = height;
  *(v16 + 5) = a5;
  *(v16 + 6) = v15;
  *(v16 + 7) = self;
  v17 = sub_21B4C9A58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21B4D33C8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_21B4D33D0;
  v19[5] = v18;
  v20 = a3;
  v21 = a5;
  v22 = self;
  sub_21B47243C(0, 0, v14, &unk_21B4D33D8, v19);
}

- (void)artworkPathForShow:(NSString *)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_21B4C9A58();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21B4D33A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21B4D33B0;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D33B8, v17);
}

- (id)legacyUICachedArtworkForPodcastUuid:(id)a3 withSize:(CGSize)a4
{
  v5 = sub_21B4C9708();
  v7 = v6;
  v8 = self;
  v9 = sub_21B403BB8(v5, v7);

  return v9;
}

- (id)cachedArtworkForMTPodcast:(id)a3 withSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_21B403E18();

  return v7;
}

- (void)artworkForMTPodcast:(MTPodcast *)a3 withSize:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_21B4C9A58();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21B4D3388;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21B4D3390;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D3398, v17);
}

- (void)artworkForURL:(NSString *)a3 withSize:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_21B4C9A58();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21B4D3368;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21B4D3370;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D3378, v17);
}

- (void)placeholderWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = width;
  v12[3] = height;
  *(v12 + 4) = v11;
  *(v12 + 5) = self;
  v13 = sub_21B4C9A58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21B4D3348;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21B4D3350;
  v15[5] = v14;
  v16 = self;
  sub_21B47243C(0, 0, v10, &unk_21B4D3358, v15);
}

- (void)migrateLibraryArtworkFromImageStoreWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21B4C9A58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21B4D3328;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21B4D3330;
  v12[5] = v11;
  v13 = self;
  sub_21B47243C(0, 0, v7, &unk_21B4D3338, v12);
}

- (PUIObjCArtworkProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ObjCArtworkProvider.existingRepresentation(for:)(v4);

  return v6;
}

- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21B4C9A58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21B4D3478;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21B4D3330;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_21B47243C(0, 0, v9, &unk_21B4D3338, v14);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B40C0F8(v4);
  v7 = v6;
  if (v6)
  {
    v8 = objc_allocWithZone(MEMORY[0x277D3DB70]);
    v9 = sub_21B4C96C8();

    v7 = [v8 initWithArtworkIdentifier_];
  }

  return v7;
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = self;
  if (a3 == 1 && (v9 = sub_21B40C2B0(v7)) != 0)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CD5FC8]) init];
    [v11 setBackgroundColor_];
    v12 = sub_21B40C3D0();
    v17 = v12;

    v16[0] = v11;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E70);
    v17 = v12;
    v13 = swift_allocObject();
    v16[0] = v13;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
  }

  __swift_project_boxed_opaque_existential_1(v16, v12);
  v14 = sub_21B4CA5F8();
  __swift_destroy_boxed_opaque_existential_1(v16);

  return v14;
}

@end