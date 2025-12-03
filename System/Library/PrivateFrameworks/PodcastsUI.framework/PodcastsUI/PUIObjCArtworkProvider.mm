@interface PUIObjCArtworkProvider
- (BOOL)hasArtworkForShow:(id)show withDimensions:(CGRect)dimensions fromSource:(id)source;
- (PUIObjCArtworkProvider)init;
- (id)cachedArtworkForMTPodcast:(id)podcast withSize:(CGSize)size;
- (id)existingArtworkEffectResultForEffectType:(int64_t)type catalog:(id)catalog options:(id)options;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)legacyUICachedArtworkForPodcastUuid:(id)uuid withSize:(CGSize)size;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)artworkForMTPodcast:(MTPodcast *)podcast withSize:(CGSize)size completionHandler:(id)handler;
- (void)artworkForShow:(NSString *)show size:(CGSize)size completionHandler:(id)handler;
- (void)artworkForShow:(NSString *)show size:(CGSize)size source:(NSString *)source completionHandler:(id)handler;
- (void)artworkForURL:(NSString *)l withSize:(CGSize)size completionHandler:(id)handler;
- (void)artworkPathForShow:(NSString *)show size:(CGSize)size completionHandler:(id)handler;
- (void)artworkPathForShow:(NSString *)show size:(CGSize)size source:(NSString *)source completionHandler:(id)handler;
- (void)cacheArtwork:(id)artwork withDimension:(CGRect)dimension forShow:(id)show fromSource:(id)source;
- (void)keyedArtworkForShow:(NSString *)show size:(CGSize)size completionHandler:(id)handler;
- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler;
- (void)migrateLibraryArtworkFromImageStoreWithCompletionHandler:(id)handler;
- (void)placeholderWithSize:(CGSize)size completionHandler:(id)handler;
@end

@implementation PUIObjCArtworkProvider

- (void)cacheArtwork:(id)artwork withDimension:(CGRect)dimension forShow:(id)show fromSource:(id)source
{
  v8 = sub_21B4C9708();
  v10 = v9;
  v11 = sub_21B4C9708();
  artworkCopy = artwork;
  selfCopy = self;
  sub_21B3FFB54(artworkCopy, v8, v10, v11);
}

- (BOOL)hasArtworkForShow:(id)show withDimensions:(CGRect)dimensions fromSource:(id)source
{
  v6 = sub_21B4C9708();
  v8 = v7;
  v9 = sub_21B4C9708();
  v11 = v10;
  selfCopy = self;
  LOBYTE(v9) = sub_21B400000(v6, v8, v9, v11);

  return v9 & 1;
}

- (void)artworkForShow:(NSString *)show size:(CGSize)size source:(NSString *)source completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 2) = show;
  v16[3] = width;
  v16[4] = height;
  *(v16 + 5) = source;
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
  showCopy = show;
  sourceCopy = source;
  selfCopy = self;
  sub_21B47243C(0, 0, v14, &unk_21B4D3438, v19);
}

- (void)artworkForShow:(NSString *)show size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = show;
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
  showCopy = show;
  selfCopy = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D3418, v17);
}

- (void)keyedArtworkForShow:(NSString *)show size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = show;
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
  showCopy = show;
  selfCopy = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D33F8, v17);
}

- (void)artworkPathForShow:(NSString *)show size:(CGSize)size source:(NSString *)source completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 2) = show;
  v16[3] = width;
  v16[4] = height;
  *(v16 + 5) = source;
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
  showCopy = show;
  sourceCopy = source;
  selfCopy = self;
  sub_21B47243C(0, 0, v14, &unk_21B4D33D8, v19);
}

- (void)artworkPathForShow:(NSString *)show size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = show;
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
  showCopy = show;
  selfCopy = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D33B8, v17);
}

- (id)legacyUICachedArtworkForPodcastUuid:(id)uuid withSize:(CGSize)size
{
  v5 = sub_21B4C9708();
  v7 = v6;
  selfCopy = self;
  v9 = sub_21B403BB8(v5, v7);

  return v9;
}

- (id)cachedArtworkForMTPodcast:(id)podcast withSize:(CGSize)size
{
  podcastCopy = podcast;
  selfCopy = self;
  v7 = sub_21B403E18();

  return v7;
}

- (void)artworkForMTPodcast:(MTPodcast *)podcast withSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = podcast;
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
  podcastCopy = podcast;
  selfCopy = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D3398, v17);
}

- (void)artworkForURL:(NSString *)l withSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = l;
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
  lCopy = l;
  selfCopy = self;
  sub_21B47243C(0, 0, v12, &unk_21B4D3378, v17);
}

- (void)placeholderWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
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
  selfCopy = self;
  sub_21B47243C(0, 0, v10, &unk_21B4D3358, v15);
}

- (void)migrateLibraryArtworkFromImageStoreWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_21B47243C(0, 0, v7, &unk_21B4D3338, v12);
}

- (PUIObjCArtworkProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  v6 = ObjCArtworkProvider.existingRepresentation(for:)(catalogCopy);

  return v6;
}

- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = catalog;
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
  catalogCopy = catalog;
  selfCopy = self;
  sub_21B47243C(0, 0, v9, &unk_21B4D3338, v14);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  sub_21B40C0F8(catalogCopy);
  initWithArtworkIdentifier_ = v6;
  if (v6)
  {
    v8 = objc_allocWithZone(MEMORY[0x277D3DB70]);
    v9 = sub_21B4C96C8();

    initWithArtworkIdentifier_ = [v8 initWithArtworkIdentifier_];
  }

  return initWithArtworkIdentifier_;
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)type catalog:(id)catalog options:(id)options
{
  catalogCopy = catalog;
  selfCopy = self;
  if (type == 1 && (v9 = sub_21B40C2B0(catalogCopy)) != 0)
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