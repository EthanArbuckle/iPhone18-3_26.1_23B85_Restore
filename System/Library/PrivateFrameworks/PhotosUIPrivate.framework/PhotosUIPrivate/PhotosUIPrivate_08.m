char *sub_1B37C0630()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  [v1 enableDeviceImport];

  result = [objc_opt_self() px_deprecated_appPhotoLibrary];
  if (result)
  {
    v3 = result;
    sub_1B3710718(0, &unk_1EB8546D0);
    v4 = sub_1B37C0780(0, v3, 0xE11u, 1);
    type metadata accessor for ImportBrowsingSession();
    v5 = v4;
    v6 = sub_1B37C07F4(v5);
    v7 = OBJC_IVAR___PUImportBrowsingSession_importController;
    swift_beginAccess();
    v8 = *&v6[v7];
    *&v6[v7] = v5;
    v9 = v5;

    v10 = [v0 sharedInstance];
    [v10 addImportControllerObserver_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B37C0780(void *a1, void *a2, unsigned __int16 a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImportSource:a1 photoLibrary:a2 imageFormat:a3 dateOrder:a4];

  return v6;
}

char *sub_1B37C07F4(void *a1)
{
  result = [a1 dataSourceManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  [result setDataSourcesStartAtEnd_];
  [v4 setDispatchesDataSourceUpdatesOnMainQueue_];
  v5 = [objc_allocWithZone(PUPXAssetsDataSourceManager) initWithUnderlyingDataSourceManager_];
  v6 = [a1 importMediaProvider];
  v7 = [objc_allocWithZone(PUPXMediaProvider) initWithUnderlyingMediaProvider_];

  result = [objc_allocWithZone(v1) initWithDataSourceManager:v5 actionManager:0 mediaProvider:v7 photosDetailsContext:0 lowMemoryMode:0 importStatusManager:0 privacyController:0];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  result = [a1 dataSourceManager];
  if (result)
  {
    v9 = result;
    v10 = [a1 importMediaProvider];
    v11 = objc_allocWithZone(type metadata accessor for ImageWellThumbnailProvider());
    v12 = sub_1B371DD34(v9, v10);

    v13 = *&v8[OBJC_IVAR___PUImportBrowsingSession_thumbnailProvider];
    *&v8[OBJC_IVAR___PUImportBrowsingSession_thumbnailProvider] = v12;

    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B37C0A14()
{
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  v2 = sub_1B3C9C5E8();
  return v2;
}

void *sub_1B37C0B04()
{
  v1 = OBJC_IVAR___PUImportBrowsingSession_importController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B37C0BAC(uint64_t a1)
{
  v3 = OBJC_IVAR___PUImportBrowsingSession_importController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B37C0C04(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B37C0BAC(v1);
}

void *sub_1B37C0CCC()
{
  v1 = *(v0 + OBJC_IVAR___PUImportBrowsingSession_thumbnailProvider);
  v2 = v1;
  return v1;
}

void sub_1B37C0D00(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___PUImportBrowsingSession_importController;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    [v5 adoptImportSource_];
    v6 = *(v2 + v4);
    if (v6)
    {
      v7 = [v6 photoLibrary];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id ImportBrowsingSession.__allocating_init(dataSourceManager:actionManager:mediaProvider:photosDetailsContext:lowMemoryMode:importStatusManager:privacyController:)(void *a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, void *a7)
{
  v13 = [objc_allocWithZone(v7) initWithDataSourceManager:a1 actionManager:a2 mediaProvider:a3 photosDetailsContext:a4 lowMemoryMode:a5 & 1 importStatusManager:a6 privacyController:a7];

  swift_unknownObjectRelease();
  return v13;
}

id ImportBrowsingSession.init(dataSourceManager:actionManager:mediaProvider:photosDetailsContext:lowMemoryMode:importStatusManager:privacyController:)(void *a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, void *a7)
{
  *&v7[OBJC_IVAR___PUImportBrowsingSession_importController] = 0;
  *&v7[OBJC_IVAR___PUImportBrowsingSession_thumbnailProvider] = 0;
  v17.receiver = v7;
  v17.super_class = type metadata accessor for ImportBrowsingSession();
  v15 = objc_msgSendSuper2(&v17, sel_initWithDataSourceManager_actionManager_mediaProvider_photosDetailsContext_lowMemoryMode_importStatusManager_privacyController_, a1, a2, a3, a4, a5 & 1, a6, a7);

  swift_unknownObjectRelease();
  if (v15)
  {
  }

  return v15;
}

id ImportBrowsingSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportBrowsingSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B37C1290(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [a2 spriteReferenceForSpriteIndex_];
  v9 = a2;
  v10 = sub_1B3C9C5A8();
  type metadata accessor for StoryColorGradeEditorItemHitTestResult.ColorGradeKindReference();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = [v7 initWithSpriteReference:v8 layout:v9 identifier:v10 userData:v11];

  return v12;
}

uint64_t sub_1B37C1374()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();
  v5 = v4;

  if (v3 == 0xD000000000000026 && 0x80000001B3D02EE0 == v5)
  {
  }

  else
  {
    v7 = sub_1B3C9D6A8();

    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  result = [v0 userData];
  if (result)
  {
    type metadata accessor for StoryColorGradeEditorItemHitTestResult.ColorGradeKindReference();
    v8 = *(swift_dynamicCastClassUnconditional() + 16);

    return v8;
  }

  __break(1u);
  return result;
}

id sub_1B37C1488(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1B37C16C8;
    v14[3] = &block_descriptor_27;
    v10 = _Block_copy(v14);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for StoryColorGradeEditorItemHitTestResult();
  v15.receiver = v5;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithSpriteReference_layout_identifier_userDataProvider_, a1, a2, a3, v10);
  sub_1B36F9DA0(a4);

  _Block_release(v10);
  return v12;
}

id sub_1B37C1648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryColorGradeEditorItemHitTestResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B37C16C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = v5(a2, v7);

  return v8;
}

uint64_t sub_1B37C17AC()
{
  v1 = OBJC_IVAR____TtCC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel17PresentationState__isReadyForDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854900);
  OUTLINED_FUNCTION_0_1();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel17PresentationState__shouldShowFallbackView, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1B37C187C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854900);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtCC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel17PresentationState__isReadyForDisplay;
  v11[15] = 0;
  sub_1B3C9A678();
  v8 = *(v3 + 32);
  v8(v0 + v7, v6, v1);
  v9 = OBJC_IVAR____TtCC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel17PresentationState__shouldShowFallbackView;
  v11[14] = 0;
  sub_1B3C9A678();
  v8(v0 + v9, v6, v1);
  return v0;
}

uint64_t sub_1B37C19A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel.PresentationState(0);
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

void sub_1B37C19E0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v84 = v3;
  v85 = v2;
  v86 = v4;
  v87 = v5;
  v88 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854968);
  OUTLINED_FUNCTION_0();
  v82 = v8;
  v83 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v75 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854960);
  OUTLINED_FUNCTION_0();
  v79 = v12;
  v80 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v75 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854900);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854958);
  OUTLINED_FUNCTION_0();
  v21 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854950);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v29;
  v31 = &v0[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_finishHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v0[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_cancelHandler];
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_presentationState;
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel.PresentationState(0);
  v34 = swift_allocObject();
  sub_1B37C187C();
  *&v1[v33] = v34;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___assetPreviewViewModel] = 1;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___smartAlbumDataSource] = 0;
  v35 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel__selectedSmartAlbumsType;
  sub_1B3710718(0, &unk_1EB854930);
  v90 = [swift_getObjCClassFromMetadata() supportedTypes];
  type metadata accessor for PFPosterShuffleSmartAlbums(0);
  sub_1B3C9A678();
  (*(v27 + 32))(&v1[v35], v30, v25);
  v36 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel__availableSmartAlbums;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8547A8);
  sub_1B3C9A678();
  (*(v21 + 32))(&v1[v36], v24, v76);
  v37 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel__isFinishingWithFeaturedPhotos;
  LOBYTE(v90) = 0;
  sub_1B3C9A678();
  v38 = *(v16 + 32);
  v39 = v77;
  v38(&v1[v37], v19, v77);
  v40 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_peoplePickerHandler];
  *v40 = 0;
  v40[1] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___peoplePickerDataSource] = 0;
  v41 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_albumPickerHandler];
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel__isUserAlbumSelected;
  LOBYTE(v90) = 0;
  sub_1B3C9A678();
  v38(&v1[v42], v19, v39);
  v43 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel__userAlbumAssetCollection;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8547C0);
  v44 = v78;
  sub_1B3C9A678();
  (*(v79 + 32))(&v1[v43], v44, v80);
  v45 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_availableShuffleFrequencies;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854970);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B3CFC4D0;
  if (qword_1EB850020 != -1)
  {
    swift_once();
  }

  *(v46 + 32) = OUTLINED_FUNCTION_24_7(&qword_1EB878D50);
  *(v46 + 48) = v47;
  *(v46 + 56) = v48;
  *(v46 + 64) = v44;
  v49 = qword_1EB850018;

  if (v49 != -1)
  {
    swift_once();
  }

  *(v46 + 72) = OUTLINED_FUNCTION_24_7(&qword_1EB878D20);
  *(v46 + 88) = v50;
  *(v46 + 96) = v51;
  *(v46 + 104) = v44;
  v52 = qword_1EB850028;

  v54 = v87;
  v53 = v88;
  if (v52 != -1)
  {
    swift_once();
  }

  *(v46 + 112) = OUTLINED_FUNCTION_24_7(&qword_1EB878D80);
  *(v46 + 128) = v55;
  *(v46 + 136) = v56;
  *(v46 + 144) = v44;
  v57 = qword_1EB850030;

  if (v57 != -1)
  {
    swift_once();
  }

  v59 = qword_1EB878DC0;
  v58 = *byte_1EB878DC8;
  v60 = qword_1EB878DD0;
  *(v46 + 152) = xmmword_1EB878DB0;
  *(v46 + 168) = v59;
  *(v46 + 176) = v58;
  *(v46 + 184) = v60;
  *&v1[v45] = v46;
  v61 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel__selectedShuffleFrequencyType;
  v90 = *MEMORY[0x1E69C0C58];
  type metadata accessor for PFPosterShuffleFrequency(0);

  v62 = v81;
  sub_1B3C9A678();
  (*(v82 + 32))(&v1[v61], v62, v83);
  v63 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manualSelectionPhotoPickerHandler];
  *v63 = 0;
  v63[1] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manuallySelectedAssetIdentifiers] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary] = v54;
  if (v53)
  {
    v64 = v54;
    v65 = v53;
    [v65 copy];
    sub_1B3C9D1E8();

    swift_unknownObjectRelease();
    sub_1B3710718(0, &qword_1EB854978);
    swift_dynamicCast();
    *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_posterConfiguration] = v89;
  }

  else
  {
    *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_posterConfiguration] = 0;
    v66 = v54;
  }

  v67 = v86;
  v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_showAssetPreviews] = v86 & 1;
  v68 = v84;
  v69 = v85;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_centerMedia] = v85;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_contentMode] = v68;
  v70 = type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  v91.receiver = v1;
  v91.super_class = v70;
  v71 = v69;
  v72 = objc_msgSendSuper2(&v91, sel_init);
  sub_1B37C4008();
  v73 = sub_1B37C29C4();
  [v73 setSelectedTypes_];

  v74 = sub_1B37C3568();
  [v74 addChangeObserver_];

  [*&v72[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___peoplePickerDataSource] startBackgroundFetch];
  if ((v67 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (sub_1B37C291C())
  {
    sub_1B37C59E0();

LABEL_15:

    OUTLINED_FUNCTION_27();
    return;
  }

  __break(1u);
}

uint64_t sub_1B37C2218()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - v1;
  result = sub_1B37C175C();
  if ((result & 1) == 0)
  {
    result = sub_1B37C2DC0();
    if (result)
    {
      v4 = result;
      v5 = sub_1B3C9C8B8();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
      OUTLINED_FUNCTION_7_1();
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = v4;

      sub_1B3850B9C();

      v7 = *(v4 + 16);

      if (v7 && sub_1B37C291C())
      {
        v8 = sub_1B37C5C84();

        if (!v8)
        {
          return result;
        }
      }

      sub_1B37C1770();
      return sub_1B37C1798();
    }
  }

  return result;
}

uint64_t sub_1B37C23A0()
{
  OUTLINED_FUNCTION_0_0();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B37C243C;

  return sub_1B37C252C();
}

uint64_t sub_1B37C243C()
{
  OUTLINED_FUNCTION_0_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B37C252C()
{
  OUTLINED_FUNCTION_0_0();
  *(v0 + 56) = v1;
  v2 = sub_1B3C98118();
  *(v0 + 32) = v2;
  *(v0 + 40) = *(v2 - 8);
  *(v0 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B37C2614, 0, 0);
}

uint64_t sub_1B37C2614()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  sub_1B3710718(0, &qword_1EB852330);
  v5 = sub_1B3C9CF88();
  v6 = objc_opt_self();
  v7 = sub_1B3C9C9B8();
  sub_1B3C980F8();
  v8 = sub_1B3C980C8();
  (*(v2 + 8))(v1, v3);
  if (v4 == 1)
  {
    *(v0 + 24) = 0;
    v9 = (v0 + 24);
    v10 = [v6 reportFeatureCheckpoint:10 forFeature:v7 atDate:v8 error:v0 + 24];
  }

  else
  {
    *(v0 + 16) = 0;
    v9 = (v0 + 16);
    v10 = [v6 reportFeatureCheckpoint:60 forFeature:v7 atDate:v8 error:v0 + 16];
  }

  v11 = v10;

  v12 = *v9;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v14 = v12;
    v15 = sub_1B3C97F28();

    swift_willThrow();
    if (qword_1EB850038 != -1)
    {
      swift_once();
    }

    v16 = sub_1B3C9A558();
    __swift_project_value_buffer(v16, qword_1EB8546E0);
    v17 = v5;
    v18 = v15;
    v19 = sub_1B3C9A538();
    v20 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2112;
      v23 = v17;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      v22[1] = v25;
      _os_log_impl(&dword_1B36F3000, v19, v20, "Error: Unable to report background system task checkpoint %@: %@", v21, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567E0);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1B37C291C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___assetPreviewViewModel;
  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___assetPreviewViewModel);
  v4 = v3;
  if (v3 == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_showAssetPreviews) == 1)
    {
      type metadata accessor for PUWallpaperShuffleConfigurationAssetPreviewViewModel(0);
      v4 = swift_allocObject();
      sub_1B37C5570();
      v5 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
      v5 = 1;
    }

    *(v1 + v2) = v4;

    sub_1B37C8FE4(v5);
  }

  sub_1B37C8FF4(v3);
  return v4;
}

id sub_1B37C29C4()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___smartAlbumDataSource;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___smartAlbumDataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___smartAlbumDataSource];
  }

  else
  {
    v4 = sub_1B37C2A28(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B37C2A28(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_contentMode];
  if (v2 == 1)
  {
    type metadata accessor for AmbientPhotoFrameDataSource();
    v3 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary];
    v4 = a1;
    return sub_1B3809C54(v3, a1);
  }

  else if (v2)
  {
    result = sub_1B3C9D6E8();
    __break(1u);
  }

  else
  {
    sub_1B3710718(0, &unk_1EB854930);
    v6 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary];
    v7 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_centerMedia];
    v8 = v7;
    v9 = a1;
    return sub_1B37C2B0C(v6, a1, v7);
  }

  return result;
}

id sub_1B37C2B0C(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 changeObserver:a2 centerMedia:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1B37C2B78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_7();

  return v1;
}

void sub_1B37C2BD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  OUTLINED_FUNCTION_30_4();
  sub_1B3C9A6A8();
  v2 = sub_1B37C29C4();
  [v2 setSelectedTypes_];
}

unint64_t sub_1B37C2C60()
{
  v0 = sub_1B37C29C4();
  v1 = [v0 availableTypes];

  v2 = sub_1B37C2B78();
  v3 = v2 & v1;
  if ((v2 & v1 & 1) != 0 && !sub_1B37C34CC())
  {
    v3 &= ~1uLL;
  }

  return v3;
}

void sub_1B37C2CC0(uint64_t a1)
{
  v2 = sub_1B37C2C60();
  v3 = -1;
  if ((v2 & a1) != 0)
  {
    v3 = ~a1;
  }

  if ((v3 & v2) != 0)
  {
    sub_1B37C2B78();

    sub_1B37C2BD8();
  }
}

void sub_1B37C2D34(uint64_t a1)
{
  if (a1 == 1 && !sub_1B37C34CC())
  {
    sub_1B37C3850();
  }

  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_contentMode) == 1)
  {
    if (a1 == 16)
    {
      goto LABEL_8;
    }

    sub_1B37C2B78();
    sub_1B37C2BD8();
  }

  sub_1B37C2B78();
LABEL_8:
  sub_1B37C2BD8();

  sub_1B37C39E4();
}

uint64_t sub_1B37C2DD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_38_5();
}

uint64_t sub_1B37C2E30()
{
  v1 = sub_1B37C29C4();
  v2 = [v1 availableTypes];

  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if ((v2 & 0x10) != 0)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B37EAD50(0, 1, 1);
    v4 = v51;
    OUTLINED_FUNCTION_14_13();
    if (v7)
    {
      v35 = OUTLINED_FUNCTION_5_17(v6);
      sub_1B37EAD50(v35, v36, v37);
      v4 = v51;
    }

    OUTLINED_FUNCTION_36_5();
    *(v8 + 32) = 16;
    if ((v2 & 1) == 0)
    {
LABEL_3:
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_14();
  }

  OUTLINED_FUNCTION_14_13();
  if (v7)
  {
    v38 = OUTLINED_FUNCTION_5_17(v9);
    sub_1B37EAD50(v38, v39, v40);
  }

  OUTLINED_FUNCTION_36_5();
  *(v10 + 32) = 1;
  if ((v2 & 2) == 0)
  {
LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_14();
    }

    OUTLINED_FUNCTION_14_13();
    if (v7)
    {
      v44 = OUTLINED_FUNCTION_5_17(v13);
      sub_1B37EAD50(v44, v45, v46);
    }

    OUTLINED_FUNCTION_36_5();
    *(v14 + 32) = 4;
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_14();
    }

    v48 = v0;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    v5 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v47 = OUTLINED_FUNCTION_20_0(v15);
      sub_1B37EAD50(v47, v16 + 1, 1);
    }

    *(v4 + 16) = v5;
    *(v4 + 8 * v16 + 32) = 8;
    goto LABEL_31;
  }

LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_14();
  }

  OUTLINED_FUNCTION_14_13();
  if (v7)
  {
    v41 = OUTLINED_FUNCTION_5_17(v11);
    sub_1B37EAD50(v41, v42, v43);
  }

  OUTLINED_FUNCTION_36_5();
  *(v12 + 32) = 2;
  if ((v2 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_35;
  }

  v48 = v0;
LABEL_31:
  sub_1B37EAD30(0, v5, 0);
  sub_1B3710718(0, &unk_1EB854930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = v4;
  v17 = 32;
  v18 = v3;
  do
  {
    v19 = *(v4 + v17);
    v20 = [ObjCClassFromMetadata localizedTitleForSingleSmartAlbumType_];
    v21 = sub_1B3C9C5E8();
    v23 = v22;

    v24 = [ObjCClassFromMetadata systemImageNameForSingleSmartAlbumType_];
    v25 = sub_1B3C9C5E8();
    v27 = v26;

    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      v31 = OUTLINED_FUNCTION_5_17(v28);
      sub_1B37EAD30(v31, v32, v33);
    }

    *(v18 + 16) = v29 + 1;
    v30 = (v18 + 40 * v29);
    v30[4] = v19;
    v30[5] = v21;
    v30[6] = v23;
    v30[7] = v25;
    v30[8] = v27;
    v17 += 8;
    --v5;
    v4 = v50;
  }

  while (v5);
LABEL_35:

  sub_1B37C2DD4();

  return sub_1B37C2218();
}

uint64_t sub_1B37C3168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1B3C9A6A8();
}

void sub_1B37C31D4()
{
  sub_1B37C3168();
  sub_1B37C3968();
  sub_1B37C434C();
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_finishHandler);
  if (v2)
  {
    v3 = v1;

    v2(v3);
    sub_1B36F9DA0(v2);
    v1 = v3;
  }
}

uint64_t sub_1B37C3264()
{
  sub_1B37C3168();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manuallySelectedAssetIdentifiers) = 0;
}

void sub_1B37C32A0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((!a1 || !*(a1 + 16)) && (sub_1B37C3508() || sub_1B37C3528()))
  {
    v4 = sub_1B37C35EC();
    if (*(v4 + 2))
    {

      if (!*(v4 + 2))
      {
        __break(1u);
        return;
      }

      v6 = *(v4 + 4);
      v5 = *(v4 + 5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1B3CF6CE0;
      *(v3 + 32) = v6;
      *(v3 + 40) = v5;
    }

    else
    {
    }
  }

  v7 = sub_1B37C29C4();
  v8 = sub_1B37C8AEC(v7);
  if (v3)
  {
    if (v8)
    {
      v9 = sub_1B3761898(v3, v8);

      if (v9)
      {

        return;
      }
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }
  }

  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  sub_1B37C8C48(qword_1EB851490, type metadata accessor for PUWallpaperShuffleConfigurationViewModel);
  OUTLINED_FUNCTION_13();
  sub_1B3C9A658();
  sub_1B3C9A668();

  v10 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___smartAlbumDataSource);
  if (v3)
  {
    v11 = sub_1B3C9C778();
  }

  else
  {
    v11 = 0;
  }

  [v10 setPeopleLocalIdentifiers_];
}

uint64_t sub_1B37C34CC()
{
  v0 = sub_1B37C29C4();
  v1 = sub_1B37C8AEC(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

BOOL sub_1B37C3528()
{
  v0 = sub_1B37C29C4();
  v1 = [v0 availableTypes];

  return v1 < 2;
}

id sub_1B37C3568()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___peoplePickerDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___peoplePickerDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___peoplePickerDataSource);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69C3C98]) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1B37C35EC()
{
  v1 = v0;
  v38 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B37C3568();
  v3 = sub_1B37FA628(v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B3711890(v3);
    if (v5)
    {
      v6 = v5;
      result = OUTLINED_FUNCTION_28_7(v5);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v36 = v0;
      v8 = 0;
      v9 = v37;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8C6A930](v8, v4);
        }

        else
        {
          v10 = *(v4 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = [v10 localIdentifier];
        v13 = sub_1B3C9C5E8();
        v15 = v14;

        v37 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          v19 = OUTLINED_FUNCTION_20_0(v16);
          sub_1B37EABC0(v19, v17 + 1, 1);
        }

        ++v8;
        *(v9 + 16) = v17 + 1;
        v18 = v9 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v6 != v8);

      v1 = v36;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    sub_1B37E74AC(v9);
  }

  v20 = sub_1B37FA634(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___peoplePickerDataSource));
  if (!v20)
  {
    return v38;
  }

  v21 = v20;
  v22 = sub_1B3711890(v20);
  if (!v22)
  {

    v25 = MEMORY[0x1E69E7CC0];
LABEL_26:
    sub_1B37E74AC(v25);
    return v38;
  }

  v23 = v22;
  result = OUTLINED_FUNCTION_28_7(v22);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v37;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1B8C6A930](v24, v21);
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 localIdentifier];
      v29 = sub_1B3C9C5E8();
      v31 = v30;

      v33 = *(v37 + 16);
      v32 = *(v37 + 24);
      if (v33 >= v32 >> 1)
      {
        v35 = OUTLINED_FUNCTION_20_0(v32);
        sub_1B37EABC0(v35, v33 + 1, 1);
      }

      ++v24;
      *(v37 + 16) = v33 + 1;
      v34 = v37 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
    }

    while (v23 != v24);

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1B37C385C(char a1)
{
  if (sub_1B37C3968() & 1) != (a1 & 1) && (sub_1B37C3968())
  {
    sub_1B37C2BD8();
    v2 = sub_1B37C3B54();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary) librarySpecificFetchOptions];
      [v3 setWantsIncrementalChangeDetails_];
      v4 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v3];
      v5 = [v4 firstObject];

      if (!v5)
      {
        __break(1u);
        return;
      }

      sub_1B37C3BD0(v5);
    }

    sub_1B37C3C9C();
  }
}

uint64_t sub_1B37C397C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_7();
  sub_1B3C9A698();

  return v1;
}

void sub_1B37C39E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1B3C9A6A8();
  sub_1B37C385C(v2);
}

void sub_1B37C3AAC(void *a1)
{
  v2 = sub_1B37C3B54();
  if (v2)
  {
    v3 = v2;
    if (a1)
    {
      sub_1B3710718(0, &qword_1EB84F1A0);
      v4 = a1;
      v5 = sub_1B3C9CFA8();

      if (v5)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  sub_1B37C3C9C();
}

uint64_t sub_1B37C3B68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_26_7();
  sub_1B3C9A698();

  return v1;
}

void sub_1B37C3BD0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  v4 = v1;
  OUTLINED_FUNCTION_30_4();
  sub_1B3C9A6A8();
  sub_1B37C3AAC(v5);
}

void sub_1B37C3C9C()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1B3C98118();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  if ((sub_1B37C3968() & 1) == 0 || (v8 = sub_1B37C3B54()) == 0)
  {
LABEL_7:
    OUTLINED_FUNCTION_27();
    return;
  }

  v17 = v8;
  if (sub_1B37C291C())
  {
    v9 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary);
    v10 = objc_allocWithZone(sub_1B3C99F08());
    v11 = v17;
    v12 = v9;
    v13 = sub_1B3C99EE8();
    sub_1B3C980F8();
    v14 = sub_1B3C99ED8();
    (*(v3 + 8))(v7, v1);

    if (v14 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E0);
      OUTLINED_FUNCTION_13();
      sub_1B3C9D4D8();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_1B3C9D6B8();
    }

    sub_1B3710718(0, &qword_1EB852330);
    sub_1B3C9C4D8();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B37C6C08();

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37C3F4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_7();

  return v1;
}

uint64_t sub_1B37C3FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_38_5();
}

void sub_1B37C4008()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_posterConfiguration);
  if (!v1)
  {
    OUTLINED_FUNCTION_37_1();
    return;
  }

  v2 = v0;
  v31 = v1;
  v3 = [v31 shuffleConfiguration];
  if (!v3)
  {
    goto LABEL_30;
  }

  v32 = v3;
  [v3 shuffleFrequency];
  sub_1B37C3FAC();
  v4 = [v32 shuffleType];
  if (v4 == 2)
  {
    v20 = sub_1B37C8D18(v32, &selRef_albumCloudIdentifiers);
    if (v20)
    {
      sub_1B387CA84(v20);
      v22 = v21;

      if (v22)
      {
        v23 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary) librarySpecificFetchOptions];
        [v23 setWantsIncrementalChangeDetails_];
        sub_1B3C99F08();
        OUTLINED_FUNCTION_26_7();
        v24 = sub_1B3C99EB8();

        sub_1B37C3BD0(v24);
      }
    }

    sub_1B37C39E4();
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v4)
    {
LABEL_38:
      OUTLINED_FUNCTION_25_5();
      __break(1u);
      return;
    }

    v25 = sub_1B37C8D18(v32, &selRef_personLocalIdentifiers);
    if (v25)
    {
      v26 = sub_1B370B940(v25);
      sub_1B37C32A0(v26);
    }

    [v32 shuffleSmartAlbums];
    sub_1B37C2BD8();
    goto LABEL_29;
  }

  v5 = sub_1B37C8CA8(v31);
  if (!v5)
  {
LABEL_29:

LABEL_30:
    OUTLINED_FUNCTION_37_1();

    return;
  }

  v6 = v5;
  v7 = sub_1B3711890(v5);
  v8 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C6A930](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v12 = sub_1B37C8D74(v9);
    v14 = v13;

    ++v8;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B370EE80();
        v30 = v18;
      }

      v16 = *(v30 + 16);
      v15 = *(v30 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_20_0(v15);
        sub_1B370EE80();
        v30 = v19;
      }

      *(v30 + 16) = v16 + 1;
      v17 = v30 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v8 = v11;
    }
  }

  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manuallySelectedAssetIdentifiers) = v30;
  OUTLINED_FUNCTION_37_1();
}

void sub_1B37C434C()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = sub_1B3C98118();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_12();
  v9 = [objc_allocWithZone(MEMORY[0x1E69C0830]) initWithShuffleType_];
  v92 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_posterConfiguration);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_posterConfiguration);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
  }

  if (v4 != 2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (v4 == 1)
    {
      v13 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_manuallySelectedAssetIdentifiers);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v96 = MEMORY[0x1E69E7CC0];
          v15 = v10;
          swift_bridgeObjectRetain_n();
          sub_1B3C9D428();
          v16 = v13 + 40;
          do
          {
            objc_allocWithZone(MEMORY[0x1E69C0808]);

            v17 = OUTLINED_FUNCTION_26_7();
            sub_1B37C8A2C(v17, v18);
            sub_1B3C9D408();
            sub_1B3C9D438();
            sub_1B3C9D448();
            sub_1B3C9D418();
            v16 += 16;
            --v14;
          }

          while (v14);

LABEL_53:
          v26 = v96;
LABEL_58:
          LODWORD(v10) = 1;
          goto LABEL_59;
        }

        v80 = v10;

        goto LABEL_57;
      }

      goto LABEL_71;
    }

    if (v4)
    {
LABEL_73:
      OUTLINED_FUNCTION_25_5();
      __break(1u);
      return;
    }

    v35 = v10;
    v36 = sub_1B37C29C4();
    [v9 setShuffleSmartAlbums_];
    v89 = v36;
    v37 = [v36 previewAssets];
    sub_1B3710718(0, &qword_1EB84F770);
    OUTLINED_FUNCTION_13();
    v32 = sub_1B3C9C788();

    v38 = sub_1B3711890(v32);
    v87 = v12;
    v88 = v9;
    v90 = v11;
    if (v38)
    {
      v39 = v38;
      sub_1B37EABC0(0, v38 & ~(v38 >> 63), 0);
      if ((v39 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        v93 = v32 & 0xC000000000000001;
        v91 = v32 & 0xFFFFFFFFFFFFFF8;
        v40 = v32;
        while (1)
        {
          v11 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (v93)
          {
            v41 = OUTLINED_FUNCTION_107();
            v42 = MEMORY[0x1B8C6A930](v41);
          }

          else
          {
            if (v10 >= *(v91 + 16))
            {
              goto LABEL_67;
            }

            v42 = *(v32 + 8 * v10 + 32);
          }

          v43 = v42;
          v44 = sub_1B37FDBDC(v42);
          if (!v45)
          {
            break;
          }

          v2 = v44;
          v46 = v45;

          v48 = *(v12 + 16);
          v47 = *(v12 + 24);
          v9 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v50 = OUTLINED_FUNCTION_20_0(v47);
            sub_1B37EABC0(v50, v48 + 1, 1);
          }

          *(v12 + 16) = v9;
          v49 = v12 + 16 * v48;
          *(v49 + 32) = v2;
          *(v49 + 40) = v46;
          ++v10;
          v32 = v40;
          if (v11 == v39)
          {

            v9 = v88;
            v11 = v90;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      sub_1B3710718(0, &unk_1EB854908);

      v26 = sub_1B3C9D4D8();

      swift_bridgeObjectRelease_n();
      LODWORD(v10) = 0;
      goto LABEL_59;
    }

LABEL_31:
    v51 = sub_1B37C8AEC(*(v92 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel____lazy_storage___smartAlbumDataSource));
    if (v51)
    {
      v52 = sub_1B370B65C(v51);
      sub_1B37C8B50(v52, v9, &selRef_setPersonLocalIdentifiers_);
    }

    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (!v53)
    {
      v81 = *(v12 + 16);
      if (v81)
      {
        v96 = MEMORY[0x1E69E7CC0];
        sub_1B3C9D428();
        v82 = v12 + 40;
        do
        {
          objc_allocWithZone(MEMORY[0x1E69C0808]);

          v83 = OUTLINED_FUNCTION_26_7();
          sub_1B37C8A2C(v83, v84);
          sub_1B3C9D408();
          sub_1B3C9D438();
          sub_1B3C9D448();
          sub_1B3C9D418();
          v82 += 16;
          --v81;
        }

        while (v81);

        goto LABEL_53;
      }

LABEL_57:
      v26 = MEMORY[0x1E69E7CC0];
      goto LABEL_58;
    }

    v32 = [v53 shuffleSuggestionByKeyAssetUUID];
    sub_1B3710718(0, &unk_1EB850C80);
    v54 = sub_1B3C9C4C8();

    v9 = 0;
    v97 = MEMORY[0x1E69E7CC0];
    v55 = *(v12 + 16);
    v56 = v12 + 40;
    v86 = v12 + 40;
LABEL_35:
    v11 = (v56 + 16 * v9);
    while (v55 != v9)
    {
      if (v9 >= *(v12 + 16))
      {
        goto LABEL_66;
      }

      v10 = *(v11 - 1);
      v32 = *v11;
      v57 = *(v54 + 16);

      if (v57)
      {
        v58 = OUTLINED_FUNCTION_107();
        v60 = sub_1B371EF40(v58, v59);
        if (v61)
        {
          v70 = v55;
          v71 = *(*(v54 + 56) + 8 * v60);

          v72 = v71;
          v73 = [v72 uuid];
          v74 = sub_1B3C9C5E8();
          v2 = v75;

          LOWORD(v73) = [v72 subtype];
          v76 = objc_allocWithZone(MEMORY[0x1E69C0818]);
          v77 = OUTLINED_FUNCTION_107();
          v10 = sub_1B37C899C(v77, v78, v74, v2, v73);

          MEMORY[0x1B8C69CE0]();
          v32 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v79 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v32 >= v79 >> 1)
          {
            OUTLINED_FUNCTION_20_0(v79);
            sub_1B3C9C7E8();
          }

          ++v9;
          sub_1B3C9C808();
          v87 = v97;
          v55 = v70;
          v56 = v86;
          goto LABEL_35;
        }
      }

      v2 = sub_1B3C9CAC8();
      sub_1B3710718(0, &qword_1EB854928);
      v62 = sub_1B3C9D168();
      if (os_log_type_enabled(v62, v2))
      {
        v94 = v9;
        v63 = v12;
        v64 = v54;
        v65 = v55;
        v66 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v66 = 136315138;
        v67 = OUTLINED_FUNCTION_107();
        *(v66 + 4) = sub_1B3749364(v67, v68, v69);
        _os_log_impl(&dword_1B36F3000, v62, v2, "Could not find shuffle suggestion for asset '%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v95);
        OUTLINED_FUNCTION_3_5();
        v55 = v65;
        v54 = v64;
        v12 = v63;
        v9 = v94;
        OUTLINED_FUNCTION_3_5();
      }

      v11 += 2;
      ++v9;
    }

    LODWORD(v10) = 1;
    v26 = v87;
    v9 = v88;
    goto LABEL_55;
  }

  v90 = v11;
  v19 = v10;
  v20 = sub_1B37C3B54();
  if (!v20)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21 = v20;
  v22 = sub_1B3C99F08();
  v23 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_photoLibrary);
  v24 = sub_1B3C99EC8();
  v26 = v25;
  if (!v25)
  {

    LODWORD(v10) = 0;
LABEL_55:
    v11 = v90;
    goto LABEL_59;
  }

  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CF6CE0;
  *(inited + 32) = v27;
  *(inited + 40) = v26;
  v29 = sub_1B370B65C(inited);
  sub_1B37C8B50(v29, v9, &selRef_setAlbumCloudIdentifiers_);
  v30 = objc_allocWithZone(v22);
  v31 = v23;
  v32 = v21;
  v2 = sub_1B3C99EE8();
  sub_1B3C980F8();
  v10 = sub_1B3C99EF8();
  (*(v7 + 8))(v1, v5);
  if (!v10)
  {

    v26 = 0;
    goto LABEL_55;
  }

  v33 = [objc_opt_self() mediaFromSuggestions:v10 assetBySuggestionUUID:0];
  sub_1B3710718(0, &unk_1EB854918);
  OUTLINED_FUNCTION_13();
  v34 = sub_1B3C9C788();

  v11 = v90;
  if (v34 >> 62)
  {
    goto LABEL_69;
  }

  sub_1B3C9D6B8();
  sub_1B3710718(0, &unk_1EB854908);

  LODWORD(v10) = 0;
  v26 = v34;
LABEL_59:
  [v9 setShuffleFrequency_];
  [v11 setShuffleConfiguration_];
  if (v26)
  {
    sub_1B3710718(0, &unk_1EB854908);
    v85 = sub_1B3C9C778();
  }

  else
  {
    v85 = 0;
  }

  [v11 setMedia_];

  if (v10)
  {
  }

  OUTLINED_FUNCTION_27();
}

void *sub_1B37C4D30(void *result)
{
  v2 = *(v1 + *result);
  if (v2)
  {

    v2(v3);

    return sub_1B36F9DA0(v2);
  }

  return result;
}

void sub_1B37C4D94()
{
  sub_1B37C434C();
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUWallpaperShuffleConfigurationViewModel_finishHandler);
  if (v2)
  {
    v3 = v1;

    v2(v3);
    sub_1B36F9DA0(v2);
    v1 = v3;
  }
}

id sub_1B37C4E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B37C512C()
{
  sub_1B37C5428(319, &qword_1EB854798, type metadata accessor for PFPosterShuffleSmartAlbums);
  if (v0 <= 0x3F)
  {
    sub_1B37C53D8(319, &qword_1EB8547A0, &qword_1EB8547A8);
    if (v1 <= 0x3F)
    {
      sub_1B37C5388();
      if (v2 <= 0x3F)
      {
        sub_1B37C53D8(319, &qword_1EB8547B8, &qword_1EB8547C0);
        if (v3 <= 0x3F)
        {
          sub_1B37C5428(319, &qword_1EB8547C8, type metadata accessor for PFPosterShuffleFrequency);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B37C5388()
{
  if (!qword_1EB8547B0)
  {
    v0 = sub_1B3C9A6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8547B0);
    }
  }
}

void sub_1B37C53D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_13();
    v4 = sub_1B3C9A6B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B37C5428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_13();
    v4 = sub_1B3C9A6B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B37C54A0()
{
  sub_1B37C5388();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B37C5530@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

void sub_1B37C5570()
{
  OUTLINED_FUNCTION_39();
  sub_1B3C9CC48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v3 = sub_1B3C9CC78();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_21_8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_10_12();
  *(v0 + 16) = 7;
  *(v0 + 24) = &unk_1F2AB2AC8;
  *(v0 + 32) = &unk_1F2AB2B20;
  *(v0 + 40) = &unk_1F2AB2B58;
  sub_1B3710718(0, &qword_1EB84FE60);
  sub_1B3C9C148();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8098], v3);
  sub_1B37C8C48(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  *(v0 + 48) = sub_1B3C9CCA8();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  sub_1B3C98308();
  OUTLINED_FUNCTION_27();
}

void sub_1B37C57D4(double a1, double a2)
{
  if (*(v2 + 56) == a1 && *(v2 + 64) == a2)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37C77BC();
  }
}

BOOL sub_1B37C588C()
{
  v0 = [objc_opt_self() px_mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  return v4 < v2;
}

double sub_1B37C5938()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1B37C8C48(v1, v2);
  OUTLINED_FUNCTION_17_10();

  return *(v0 + 56);
}

uint64_t sub_1B37C59E0()
{
  sub_1B37C58F4();
  v2 = v1;
  sub_1B37C58F4();
  v5 = *&v3;
  v6 = *&v4;
  if (v3 == 0.0 || v4 == 0.0 || (v3 == *MEMORY[0x1E69BDDB0] ? (v7 = v4 == *(MEMORY[0x1E69BDDB0] + 8)) : (v7 = 0), v7))
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v14, v5, v6, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v14, 0x20u);
    }

    v8 = 1.0;
  }

  else
  {
    v8 = fabs(v3 / v4);
  }

  sub_1B37C57D4(v2 * 0.2638, v2 * 0.2638 / v8);
  sub_1B37C6188();
  result = sub_1B37C5C84();
  if (result)
  {
    v12 = result;
    v13 = *(v0 + 112);
    if (v13)
    {

      if (sub_1B37C588C() != *(v0 + 104))
      {
        sub_1B37C68D0(v12, v13, v0);
      }
    }
  }

  return result;
}

id sub_1B37C5B44()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
    v3 = [objc_allocWithZone(MEMORY[0x1E69C3858]) initWithImageManager_];

    *(v0 + 72) = v3;
    v1 = v3;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

id sub_1B37C5BDC()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C4518]) init];
    [v3 setNetworkAccessAllowed_];
    [v3 setAllowSecondaryDegradedImage_];
    [v3 setDeliveryMode_];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1B37C5C84()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1B37C8C48(v0, v1);
  OUTLINED_FUNCTION_17_10();
}

uint64_t sub_1B37C5D34()
{
  swift_getKeyPath();
  sub_1B37C77BC();
}

uint64_t sub_1B37C5DA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = a2;
}

uint64_t sub_1B37C5DE4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1B37C8C48(v0, v1);
  OUTLINED_FUNCTION_17_10();
}

uint64_t sub_1B37C5E94(uint64_t a1)
{

  v4 = sub_1B37C7864(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_34_4();
    sub_1B37C77BC();
  }

  else
  {
    *(v1 + 96) = a1;
  }
}

uint64_t sub_1B37C5F7C(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = a2;
}

void *sub_1B37C5FB8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1B37C8C48(v1, v2);
  OUTLINED_FUNCTION_17_10();

  v3 = *(v0 + 120);
  v4 = v3;
  return v3;
}

void sub_1B37C6040(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B37C6070(v1);
}

void sub_1B37C6070(void *a1)
{
  v3 = *(v1 + 120);
  v4 = v3;
  LOBYTE(v3) = sub_1B37C78A0(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_34_4();
    sub_1B37C77BC();
  }

  else
  {
    v6 = *(v1 + 120);
    *(v1 + 120) = a1;
  }
}

void sub_1B37C6154(uint64_t a1, void *a2)
{
  v2 = *(a1 + 120);
  *(a1 + 120) = a2;
  v3 = a2;
}

void sub_1B37C6188()
{
  sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v25 = v4;
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_12();
  v5 = sub_1B3C9C128();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = sub_1B37C588C();
  v13 = sub_1B37C5FB8();
  if (!v13 || (v13, v12 != *(v0 + 128)))
  {
    v14 = sub_1B37C5938();
    sub_1B3710718(0, &qword_1EB84FE60);
    (*(v7 + 104))(v11, *MEMORY[0x1E69E7F88], v5);
    v24 = sub_1B3C9CCB8();
    (*(v7 + 8))(v11, v5);
    OUTLINED_FUNCTION_20();
    v15 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_7_1();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v12;
    *(v16 + 32) = v15;
    aBlock[4] = sub_1B37C8C10;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    aBlock[2] = v17;
    aBlock[3] = &block_descriptor_149;
    v18 = _Block_copy(aBlock);

    sub_1B3C9C138();
    OUTLINED_FUNCTION_2_23();
    sub_1B37C8C48(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
    sub_1B3C9D278();
    v21 = OUTLINED_FUNCTION_23_4();
    MEMORY[0x1B8C6A210](v21);
    _Block_release(v18);

    v22 = OUTLINED_FUNCTION_107();
    v23(v22);
    (*(v25 + 8))(v1, v26);
  }
}

uint64_t sub_1B37C6510(char a1, uint64_t a2)
{
  v4 = sub_1B3C9C118();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C9C168();
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = PXGetWallpaperOverlayForLockScreen();
  sub_1B3710718(0, &qword_1EB84FE60);
  v11 = sub_1B3C9CC88();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v10;
  *(v12 + 32) = a1;
  aBlock[4] = sub_1B37C8C20;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_155;
  v13 = _Block_copy(aBlock);

  v14 = v10;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37C8C48(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v9, v6, v13);
  _Block_release(v13);

  (*(v19 + 8))(v6, v4);
  return (*(v17 + 8))(v9, v18);
}

uint64_t sub_1B37C6830(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = a2;
    sub_1B37C6070(a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 128) = a3 & 1;
  }

  return result;
}

uint64_t sub_1B37C68D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B3C9C118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3C9C168();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = *(a3 + 48);
    v20 = v12;
    v21 = v11;
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = CGSizeMake;
    v16[6] = 0;
    aBlock[4] = sub_1B37C91F8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B370C014;
    aBlock[3] = &block_descriptor_171;
    v17 = _Block_copy(aBlock);

    sub_1B3C9C138();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B37C8C48(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
    sub_1B3C9D278();
    MEMORY[0x1B8C6A210](0, v14, v9, v17);
    _Block_release(v17);
    (*(v7 + 8))(v9, v6);
    (*(v20 + 8))(v14, v21);
  }

  else
  {
    sub_1B37C5E94(0);
    return sub_1B37C5D34();
  }
}

void sub_1B37C6C08()
{
  OUTLINED_FUNCTION_39();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_12();
  sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  if (v10)
  {
    v29 = v17;
    v30 = v16;
    OUTLINED_FUNCTION_20();
    v28 = v13;
    v21 = v11;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v10;
    v23[4] = v8;
    v23[5] = v4;
    v23[6] = v6;
    v33[4] = v31;
    v33[5] = v23;
    OUTLINED_FUNCTION_4_5();
    v33[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v33[2] = v24;
    v33[3] = v32;
    v25 = _Block_copy(v33);
    swift_retain_n();

    sub_1B3C9C138();
    OUTLINED_FUNCTION_2_23();
    sub_1B37C8C48(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
    sub_1B3C9D278();
    MEMORY[0x1B8C6A210](0, v20, v0, v25);
    _Block_release(v25);
    (*(v28 + 8))(v0, v21);
    (*(v29 + 8))(v20, v30);
  }

  else
  {

    sub_1B37C5E94(0);
    sub_1B37C5D34();
    sub_1B37C8090();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37C6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a3;
  v8 = sub_1B3C9C118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B3C9C168();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v83 = result;
  if (result)
  {
    v70 = a4;
    v71 = a5;
    v72 = v15;
    v73 = v13;
    v74 = v11;
    v75 = v12;
    v76 = v9;
    v77 = v8;
    v17 = MEMORY[0x1E69E7CC0];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v18 = sub_1B3711890(a2);
    v19 = 0;
    v84 = v17;
    while (1)
    {
      v20 = *(v83 + 24);
      if (v19 >= *(v20 + 16))
      {
        break;
      }

      v21 = *(v20 + 8 * v19 + 32);
      if (v21 < v18)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1B8C6A930]();
        }

        else
        {
          if (v21 < 0)
          {
            goto LABEL_43;
          }

          if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = swift_unknownObjectRetain();
        }

        MEMORY[0x1B8C69CE0](v22);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B3C9C7E8();
        }

        sub_1B3C9C808();
        v84 = aBlock[0];
      }

      if (++v19 == 7)
      {
        v80 = sub_1B37C588C();
        v23 = v84;
        v81 = sub_1B3711890(v84);
        v24 = 0;
        v78 = v23 & 0xFFFFFFFFFFFFFF8;
        v79 = v23 & 0xC000000000000001;
        v25 = MEMORY[0x1E69E7CC8];
        for (i = v82; ; i = v82)
        {
          if (v81 == v24)
          {
            sub_1B3710718(0, &qword_1EB84FE60);
            v61 = sub_1B3C9CC88();
            v62 = swift_allocObject();
            v63 = v84;
            *(v62 + 16) = v83;
            *(v62 + 24) = v63;
            *(v62 + 32) = v25;
            *(v62 + 40) = i;
            *(v62 + 48) = v80;
            v64 = v71;
            *(v62 + 56) = v70;
            *(v62 + 64) = v64;
            aBlock[4] = sub_1B37C8BD8;
            aBlock[5] = v62;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1B370C014;
            aBlock[3] = &block_descriptor_136;
            v65 = _Block_copy(aBlock);

            v66 = v72;
            sub_1B3C9C138();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1B37C8C48(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
            sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
            v67 = v74;
            v68 = v77;
            sub_1B3C9D278();
            MEMORY[0x1B8C6A210](0, v66, v67, v65);
            _Block_release(v65);

            (*(v76 + 8))(v67, v68);
            return (*(v73 + 8))(v66, v75);
          }

          if (v79)
          {
            v27 = MEMORY[0x1B8C6A930](v24, v84);
          }

          else
          {
            if (v24 >= *(v78 + 16))
            {
              goto LABEL_41;
            }

            v27 = *(v84 + 8 * v24 + 32);
            swift_unknownObjectRetain();
          }

          if (__OFADD__(v24, 1))
          {
            goto LABEL_40;
          }

          v28 = [v27 uuid];
          if (!v28)
          {
            goto LABEL_46;
          }

          v29 = v28;
          v30 = sub_1B3C9C5E8();
          v32 = v31;

          if (*(i + 16))
          {
            v33 = sub_1B371EF40(v30, v32);
            v35 = v34;

            if (v35)
            {
              v36 = [*(*(i + 56) + 8 * v33) unsignedIntegerValue];
              goto LABEL_26;
            }
          }

          else
          {
          }

          v36 = 0;
LABEL_26:
          v37 = [v27 uuid];
          if (!v37)
          {
            goto LABEL_47;
          }

          v38 = v37;
          v39 = sub_1B3C9C5E8();
          v41 = v40;

          v42 = sub_1B37C76D0(v27, v36, v80);
          v44 = v43;
          v46 = v45;
          v48 = v47;
          swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v25;
          v49 = sub_1B371EF40(v39, v41);
          if (__OFADD__(v25[2], (v50 & 1) == 0))
          {
            goto LABEL_42;
          }

          v51 = v49;
          v52 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E8);
          if (sub_1B3C9D468())
          {
            v53 = sub_1B371EF40(v39, v41);
            if ((v52 & 1) != (v54 & 1))
            {
              goto LABEL_48;
            }

            v51 = v53;
          }

          v25 = aBlock[0];
          if (v52)
          {
            v55 = (*(aBlock[0] + 56) + 32 * v51);
            *v55 = v42;
            *(v55 + 1) = v44;
            *(v55 + 2) = v46;
            *(v55 + 3) = v48;
            swift_unknownObjectRelease();
          }

          else
          {
            *(aBlock[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
            v56 = (v25[6] + 16 * v51);
            *v56 = v39;
            v56[1] = v41;
            v57 = (v25[7] + 32 * v51);
            *v57 = v42;
            *(v57 + 1) = v44;
            *(v57 + 2) = v46;
            *(v57 + 3) = v48;
            v58 = v25[2];
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (v59)
            {
              goto LABEL_45;
            }

            v25[2] = v60;
            swift_unknownObjectRelease();
          }

          ++v24;
        }
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    result = sub_1B3C9D718();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37C763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t))
{

  sub_1B37C5D34();

  sub_1B37C5E94(v10);
  *(a1 + 112) = a4;

  *(a1 + 104) = a5;
  return a6(v11);
}

double sub_1B37C76D0(uint64_t a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [objc_opt_self() deviceConfigurationForOrientation_];
  [objc_opt_self() bestWallpaperCropForAsset:v5 classification:a2 outputCropScore:0 outputLayoutAcceptable:0 layoutConfiguration:v7];
  v9 = v8;

  return v9;
}

uint64_t sub_1B37C77BC()
{
  OUTLINED_FUNCTION_0_22();
  sub_1B37C8C48(v0, v1);
  return sub_1B3C982C8();
}

BOOL sub_1B37C7864(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v3 = sub_1B37C8DD8(a1, a2);
  }

  return (v3 & 1) == 0;
}

BOOL sub_1B37C78A0(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1B3710718(0, &unk_1EB84FE20);
    v5 = a1;
    v6 = a2;
    v2 = sub_1B3C9CFA8();
  }

  return (v2 & 1) == 0;
}

id *sub_1B37C792C()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15PhotosUIPrivate52PUWallpaperShuffleConfigurationAssetPreviewViewModel___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1B37C79D4()
{
  sub_1B37C792C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B37C7A54()
{
  result = sub_1B3C98318();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1B37C7BBC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v19 = OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_12();
  sub_1B3710718(0, &qword_1EB84FE60);
  v8 = sub_1B3C9CC88();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v0;
  v20[4] = sub_1B37C8BCC;
  v20[5] = v9;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_10(COERCE_DOUBLE(1107296256));
  v20[2] = v10;
  v20[3] = &block_descriptor_118_0;
  v11 = _Block_copy(v20);
  v12 = v3;
  v13 = v0;

  sub_1B3C9C138();
  v20[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_23();
  sub_1B37C8C48(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  OUTLINED_FUNCTION_20_9();
  v16 = OUTLINED_FUNCTION_23_4();
  MEMORY[0x1B8C6A210](v16);
  _Block_release(v11);

  v17 = OUTLINED_FUNCTION_107();
  v18(v17);
  (*(v6 + 8))(v1, v19);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37C7DF8(void *a1)
{
  v2 = [a1 previewAssets];
  sub_1B3710718(0, &qword_1EB84F770);
  v3 = sub_1B3C9C788();

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 classificationByPreviewAssetUUID];
    sub_1B3710718(0, &qword_1EB852330);
    sub_1B3C9C4C8();
  }

  else
  {
    sub_1B3710718(0, &qword_1EB852330);
    sub_1B3C9C4D8();
  }

  if (sub_1B37C2B78() && sub_1B37C291C())
  {

    if (v3 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E0);
      sub_1B3C9D4D8();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_1B3C9D6B8();
    }

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B37C6C08();
  }

  else
  {
  }
}

void sub_1B37C8090()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B37C2218();
  }
}

void sub_1B37C814C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v20 = OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_12();
  sub_1B3710718(0, &qword_1EB84FE60);
  v10 = sub_1B3C9CC88();
  OUTLINED_FUNCTION_20();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v21[4] = v5;
  v21[5] = v11;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_3_10(COERCE_DOUBLE(1107296256));
  v21[2] = v12;
  v21[3] = v3;
  v13 = _Block_copy(v21);
  v14 = v0;

  sub_1B3C9C138();
  v21[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_23();
  sub_1B37C8C48(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  OUTLINED_FUNCTION_20_9();
  v17 = OUTLINED_FUNCTION_23_4();
  MEMORY[0x1B8C6A210](v17);
  _Block_release(v13);

  v18 = OUTLINED_FUNCTION_107();
  v19(v18);
  (*(v8 + 8))(v1, v20);
  OUTLINED_FUNCTION_27();
}

void sub_1B37C836C()
{
  v0 = sub_1B37C29C4();
  if (!sub_1B37C8AEC(v0))
  {
    v1 = sub_1B37C3568();
    v2 = sub_1B37FA628(v1);
    v3 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v4 = v2;
      v5 = sub_1B3711890(v2);
      if (v5)
      {
        v6 = v5;
        sub_1B37EABC0(0, v5 & ~(v5 >> 63), 0);
        if (v6 < 0)
        {
          __break(1u);
          return;
        }

        v7 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1B8C6A930](v7, v4);
          }

          else
          {
            v8 = *(v4 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = [v9 localIdentifier];
          v11 = sub_1B3C9C5E8();
          v13 = v12;

          v15 = *(v3 + 16);
          v14 = *(v3 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1B37EABC0((v14 > 1), v15 + 1, 1);
          }

          ++v7;
          *(v3 + 16) = v15 + 1;
          v16 = v3 + 16 * v15;
          *(v16 + 32) = v11;
          *(v16 + 40) = v13;
        }

        while (v6 != v7);
      }
    }

    sub_1B37C32A0(v3);
    return;
  }
}

uint64_t sub_1B37C85A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B37C85E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B37C8650()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878D20 = 2;
  *algn_1EB878D28 = v2;
  qword_1EB878D30 = v4;
  unk_1EB878D38 = 0x656E6F687069;
  qword_1EB878D40 = 0xE600000000000000;
}

void sub_1B37C86E4()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878D50 = 1;
  *algn_1EB878D58 = v2;
  qword_1EB878D60 = v4;
  strcpy(byte_1EB878D68, "hand.tap.fill");
  HIWORD(qword_1EB878D70) = -4864;
}

void sub_1B37C8788()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878D80 = 3;
  *algn_1EB878D88 = v2;
  qword_1EB878D90 = v4;
  unk_1EB878D98 = 0x72656D6974;
  qword_1EB878DA0 = 0xE500000000000000;
}

void sub_1B37C881C()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  *&xmmword_1EB878DB0 = 4;
  *(&xmmword_1EB878DB0 + 1) = v2;
  qword_1EB878DC0 = v4;
  strcpy(byte_1EB878DC8, "sunrise.fill");
  BYTE5(qword_1EB878DD0) = 0;
  HIWORD(qword_1EB878DD0) = -5120;
}

uint64_t sub_1B37C88CC()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB8546E0);
  __swift_project_value_buffer(v0, qword_1EB8546E0);
  return sub_1B3C9A548();
}

uint64_t sub_1B37C894C()
{
  OUTLINED_FUNCTION_2_0();
  result = sub_1B37C3F4C();
  *v0 = result;
  return result;
}

id sub_1B37C899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v7 = sub_1B3C9C5A8();

  v8 = sub_1B3C9C5A8();

  v9 = [v5 initWithAssetUUID:v7 suggestionUUID:v8 suggestionSubtype:a5];

  return v9;
}

id sub_1B37C8A2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1B3C9C5A8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithAssetUUID_];

  return v4;
}

void sub_1B37C8ABC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B37C3BD0(v1);
}

uint64_t sub_1B37C8AEC(void *a1)
{
  v2 = [a1 peopleLocalIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B3C9C788();

  return v3;
}

void sub_1B37C8B50(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1B3C9C968();

  [a2 *a3];
}

uint64_t sub_1B37C8C48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B37C8CA8(void *a1)
{
  v1 = [a1 media];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B3710718(0, &unk_1EB854908);
  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t sub_1B37C8D18(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B3C9C988();

  return v4;
}

uint64_t sub_1B37C8D74(void *a1)
{
  v1 = [a1 assetUUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t sub_1B37C8DD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v3 + 56) + 32 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);

    v21 = sub_1B371EF40(v14, v15);
    v23 = v22;

    if (v23)
    {
      v24.origin.x = v17;
      v24.origin.y = v18;
      v24.size.width = v19;
      v24.size.height = v20;
      result = CGRectEqualToRect(*(*(a2 + 56) + 32 * v21), v24);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1B37C8F58()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t objectdestroy_126Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B37C8FE4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B37C8FF4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B37C9004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B37C90B8;

  return sub_1B37C2380(a1, v4, v5, v6);
}

uint64_t sub_1B37C90B8()
{
  OUTLINED_FUNCTION_0_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218496;
  *a1 = 134218496;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

void OUTLINED_FUNCTION_8_14()
{
  v2 = *(v0 + 16) + 1;

  sub_1B37EAD50(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return sub_1B3C9D278();
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return sub_1B3C9C168();
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_1B3C9D4C8();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return sub_1B3C9A698();
}

char *OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return sub_1B37EABC0(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_29_7@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_1B36F9DA0(v3);
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return sub_1B3C9A6A8();
}

uint64_t sub_1B37C93DC(void *a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_useLargeLayout] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemCornerRadius] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionBackgroundRadius] = 0x4010000000000000;
  v5 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_thumbnailPadding];
  v6 = *(MEMORY[0x1E69C48A0] + 8);
  v7 = *(MEMORY[0x1E69C48A0] + 16);
  v8 = *(MEMORY[0x1E69C48A0] + 24);
  *v5 = *MEMORY[0x1E69C48A0];
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  OUTLINED_FUNCTION_0_23(OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionPadding);
  OUTLINED_FUNCTION_0_23(OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionContentPadding);
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionAttributes;
  type metadata accessor for Key(0);
  sub_1B37A4B80();
  *&v2[v9] = sub_1B3C9C4D8();
  v10 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_selectionBadgeSize];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_selectionBadgePadding];
  *v11 = 0;
  v11[1] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight] = 0;
  v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_centerContentVerticallyWhenNotScrollable] = 1;
  v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemSelectionStyle] = 0;
  v12 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_sheetSize];
  *v12 = 0;
  v12[1] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_minimumButtonWidth] = 0;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_defaultSpacingBetweenElements] = 0;
  OUTLINED_FUNCTION_0_23(OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_buttonPadding);
  OUTLINED_FUNCTION_0_23(OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_sheetHeaderPadding);
  v13 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_fixedItemSize];
  *v13 = 0;
  v13[8] = v14;
  v56.receiver = v2;
  v56.super_class = type metadata accessor for StoryColorGradeEditorConcreteLayoutSpec();
  v15 = objc_msgSendSuper2(&v56, sel_initWithExtendedTraitCollection_options_, a1, a2);
  if (!v15)
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = v15;
  if ([v16 userInterfaceIdiom] == 4)
  {
    goto LABEL_3;
  }

  if (OUTLINED_FUNCTION_1_24() == 2)
  {
    if ([v16 sizeClass] == 2)
    {
LABEL_3:
      v17 = 1;
      goto LABEL_8;
    }

    v17 = [v16 sizeSubclass] == 3;
  }

  else
  {
    v17 = 0;
  }

LABEL_8:
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_useLargeLayout;
  v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_useLargeLayout] = v17;
  v55 = a1;
  v19 = OUTLINED_FUNCTION_1_24() == 4 || OUTLINED_FUNCTION_1_24() == 5;
  v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemSelectionStyle] = v19;
  if (OUTLINED_FUNCTION_1_24() == 5)
  {
    v20 = 16.0;
  }

  else
  {
    v20 = 4.0;
  }

  v21 = OUTLINED_FUNCTION_1_24();
  v22 = 6.0;
  if (v21 != 4)
  {
    v22 = v20;
  }

  v23 = &v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionPadding];
  *v23 = v22;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = 0;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v24 setLineBreakMode_];
  [v24 setAlignment_];
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_1_24();
  v25 = PXFontWithTextStyleAndWeight();
  [v25 lineHeight];
  *&v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  v28 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v29 = sub_1B3710718(0, &unk_1EB8553D0);
  *(inited + 40) = v25;
  v30 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v29;
  *(inited + 72) = v30;
  *(inited + 104) = sub_1B3710718(0, &qword_1EB854A18);
  *(inited + 80) = v24;
  v31 = v28;
  v32 = v25;
  v33 = v30;
  v34 = v24;
  *&v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionAttributes] = sub_1B3C9C4D8();

  v35 = [v16 layoutOrientation];

  if (!v35)
  {
    v36 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow;
    v37 = 1;
    goto LABEL_20;
  }

  if (v35 != 1)
  {
    if (v35 == 2)
    {
      v41 = v16[v18];
      v42 = OUTLINED_FUNCTION_1_24();
      if (v41 == 1)
      {
        v38 = v55;
        v39 = &unk_1EB854000;
        v40 = &unk_1EB854000;
        if (v42 != 4)
        {
          v43 = 3;
LABEL_28:
          *&v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow] = v43;
          goto LABEL_29;
        }
      }

      else
      {
        v38 = v55;
        v39 = &unk_1EB854000;
        v40 = &unk_1EB854000;
        if (v42 != 5)
        {
          v43 = 6;
          goto LABEL_28;
        }
      }

      v43 = 4;
      goto LABEL_28;
    }

LABEL_36:
    type metadata accessor for PXUserInterfaceOrientation(0);
    result = sub_1B3C9D6E8();
    __break(1u);
    return result;
  }

  v36 = OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow;
  v37 = 3;
LABEL_20:
  *&v16[v36] = v37;
  v38 = v55;
  v39 = &unk_1EB854000;
  v40 = &unk_1EB854000;
LABEL_29:
  __asm { FMOV            V0.2D, #28.0 }

  *&v16[v39[312]] = _Q0;
  __asm { FMOV            V0.2D, #5.0 }

  *&v16[v40[313]] = _Q0;
  if (v16[v18] == 1)
  {
    v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_centerContentVerticallyWhenNotScrollable] = 0;
  }

  if (OUTLINED_FUNCTION_1_24() == 4)
  {
    *&v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_sheetSize] = xmmword_1B3D035D0;
    *&v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_minimumButtonWidth] = 0x4046800000000000;
    v50 = &v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_buttonPadding];
    *v50 = xmmword_1B3D035E0;
    *(v50 + 1) = xmmword_1B3D035F0;
    *&v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_defaultSpacingBetweenElements] = 0x4024000000000000;
    v51 = &v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_sheetHeaderPadding];
    *v51 = xmmword_1B3D03600;
    *(v51 + 1) = xmmword_1B3D03610;
    v52 = &v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_fixedItemSize];
    *v52 = 0x4064800000000000;
    v52[8] = 0;

    v53 = &v16[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionContentPadding];
    *v53 = xmmword_1B3D03620;
    *(v53 + 1) = xmmword_1B3D03620;
  }

  else
  {
  }

  return v16;
}

id sub_1B37C9A2C(double a1)
{
  result = [v1 userInterfaceIdiom];
  if (result != 4)
  {
    result = [v1 userInterfaceIdiom];
    if (result != 5)
    {
      return sub_1B378838C(a1);
    }
  }

  return result;
}

void sub_1B37C9B14(uint64_t a1)
{
  sub_1B37C9AD8(*&v1[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight]);
  if (v1[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_useLargeLayout] != 1)
  {
    [v1 userInterfaceIdiom];
    [v1 sizeSubclass];
    [v1 userInterfaceIdiom];
    if (!__OFSUB__(*&v1[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow], 1))
    {
      return;
    }

    goto LABEL_9;
  }

  sub_1B37C9D04();
  v3 = sub_1B37C9F48(a1);
  sub_1B37C9D88(v3);
  if (__OFSUB__(*&v1[OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow], 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if ([v1 userInterfaceIdiom] != 4 && __OFSUB__(v3, 1))
  {
    goto LABEL_10;
  }
}

void sub_1B37C9D04()
{
  if ((*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_fixedItemSize + 8) & 1) != 0 && __OFSUB__(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow), 1))
  {
    __break(1u);
  }
}

void sub_1B37C9D88(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_fixedItemSize + 8))
  {
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1B37C9AD8(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight));
    }
  }
}

uint64_t sub_1B37C9E3C(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_2_24(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_3_22();

  return PXEdgeInsetsInsetRect();
}

uint64_t sub_1B37C9E8C(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_2_24(a1, a2, a3, a4, a5);
  v11.origin.x = v8;
  v11.origin.y = v7;
  v11.size.width = v6;
  v11.size.height = v5;
  CGRectGetMaxY(v11);
  OUTLINED_FUNCTION_3_22();
  PXEdgeInsetsInsetRect();
  PXEdgeInsetsInvert();

  return PXEdgeInsetsInsetRect();
}

uint64_t sub_1B37C9F48(uint64_t result)
{
  v2 = ceil(result / *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1B37C9FAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryColorGradeEditorConcreteLayoutSpec();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double OUTLINED_FUNCTION_2_24(double a1, double a2, double a3, double a4, double a5)
{

  return sub_1B37C9AD8(a5);
}

void sub_1B37CA04C()
{
  OUTLINED_FUNCTION_39();
  v2 = v0;
  v4 = v3;
  v5 = sub_1B3C9AE88();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  sub_1B37D0A34(v2, v1, &qword_1EB851700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B37CAE40(v1, v4, &qword_1EB852490);
  }

  else
  {
    sub_1B3C9CAD8();
    v13 = sub_1B3C9B4A8();
    OUTLINED_FUNCTION_20_10();

    sub_1B3C9AE78();
    swift_getAtKeyPath();

    (*(v7 + 8))(v11, v5);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B37CA238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = v20;
  v29 = v28;
  v30 = sub_1B3C9AE88();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(v26);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  sub_1B37D0A34(v27, &a9 - v38, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24(0);
    OUTLINED_FUNCTION_1_25();
    (*(v40 + 32))(v29, v39);
  }

  else
  {
    sub_1B3C9CAD8();
    v41 = sub_1B3C9B4A8();
    OUTLINED_FUNCTION_20_10();

    sub_1B3C9AE78();
    swift_getAtKeyPath();

    (*(v32 + 8))(v36, v30);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37CA3EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B3C9AE88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for StoryMusicEditorSheetView(0);
  sub_1B37D0A34(v1 + *(v10 + 20), v9, &qword_1EB851700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B37CAE40(v9, a1, &qword_1EB852490);
  }

  sub_1B3C9CAD8();
  v12 = sub_1B3C9B4A8();
  sub_1B3C9A438();

  sub_1B3C9AE78();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void StoryMusicEditorSheetView.body.getter()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854A20);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854A28) - 8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854A30) - 8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v14 = sub_1B37CA824();
  v16 = v15;
  *v7 = sub_1B3C9AFF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854A38);
  sub_1B37CA918(v0, v14, v16 & 1, &v7[*(v17 + 44)]);
  sub_1B3C9C008();
  sub_1B3C9AB98();
  sub_1B37CAE40(v7, v11, &qword_1EB854A20);
  memcpy(&v11[*(v8 + 44)], v20, 0x70uLL);
  v18 = sub_1B3C9AB28();
  LOBYTE(v8) = sub_1B3C9B508();
  sub_1B37CAE40(v11, v1, &qword_1EB854A28);
  v19 = v1 + *(v12 + 44);
  *v19 = v18;
  *(v19 + 8) = v8;
  LOBYTE(v18) = sub_1B3C9B508();
  sub_1B37CAE40(v1, v3, &qword_1EB854A30);
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854A40) + 36)) = v18;
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37CA824()
{
  type metadata accessor for StoryMusicEditorSheetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BC98();
  if ((v2 & 1) == 0)
  {
    return sub_1B378838C(v1);
  }

  sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    swift_once();
  }

  sub_1B3C9A438();
  return 0;
}

uint64_t sub_1B37CA918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v41 = a4;
  v7 = sub_1B3C9B378();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BA8);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BB0);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v35 - v15;
  v42 = a1;
  v43 = a2;
  v44 = a3 & 1;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BB8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854BC0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854BC8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854BD0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854BD8);
  v21 = type metadata accessor for StoryMusicEditorContentView(255);
  v22 = sub_1B37CFBC8(&unk_1EB854BE0, type metadata accessor for StoryMusicEditorContentView);
  v48 = v21;
  v49 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1B371B158();
  v48 = v20;
  v49 = MEMORY[0x1E69E6158];
  v50 = OpaqueTypeConformance2;
  v51 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1B370ED54(&qword_1EB854BF0, &qword_1EB854BD0);
  v48 = v18;
  v49 = v19;
  v50 = v25;
  v51 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v48 = v17;
  v49 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1B3C9AA48();
  sub_1B3C9B368();
  v28 = sub_1B370ED54(&qword_1EB854BF8, &qword_1EB854BA8);
  v29 = sub_1B37CFBC8(&qword_1EB8521C0, MEMORY[0x1E697C938]);
  sub_1B3C9B7F8();
  (*(v38 + 8))(v9, v7);
  (*(v37 + 8))(v12, v10);
  v30 = (v36 + *(type metadata accessor for StoryMusicEditorSheetView(0) + 24));
  v31 = *(v30 + 16);
  v32 = *(v30 + 3);
  v45 = *v30;
  LOBYTE(v46) = v31;
  v47 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BCB8();
  *&v45 = v10;
  *(&v45 + 1) = v7;
  v46 = v28;
  v47 = v29;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1B3C9B7D8();
  *&v45 = v48;
  sub_1B371CB0C(&v45);

  return (*(v40 + 8))(v16, v33);
}

uint64_t sub_1B37CAE40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_2(a1, a2, a3);
  OUTLINED_FUNCTION_1_25();
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  return v3;
}

uint64_t sub_1B37CAEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v46 = a2;
  v43 = a4;
  v45 = sub_1B3C9AED8();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoryMusicEditorContentView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BD8);
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BC8);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v35 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BC0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v35 - v16;
  v42 = a1;
  v17 = *(a1 + 8);
  type metadata accessor for StoryMusicEditorViewModel();
  sub_1B37CFBC8(&qword_1EB854A60, type metadata accessor for StoryMusicEditorViewModel);
  v18 = v17;
  *v10 = sub_1B3C9AA58();
  *(v10 + 1) = v19;
  *(v10 + 2) = v46;
  v44 &= 1u;
  v10[24] = v44;
  v20 = *(v8 + 24);
  *&v10[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  swift_storeEnumTagMultiPayload();
  v21 = v45;
  (*(v5 + 104))(v7, *MEMORY[0x1E697C428], v45);
  v22 = sub_1B37CFBC8(&unk_1EB854BE0, type metadata accessor for StoryMusicEditorContentView);
  sub_1B3C9BA28();
  (*(v5 + 8))(v7, v21);
  result = sub_1B37CFFD8(v10, type metadata accessor for StoryMusicEditorContentView);
  v24 = *&v18[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration + 16];
  if (v24)
  {
    v47 = *&v18[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration + 8];
    v48 = v24;
    v51 = v8;
    v52 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_1B371B158();
    v27 = MEMORY[0x1E69E6158];
    sub_1B3C9B948();
    v28 = (*(v36 + 8))(v13, v11);
    MEMORY[0x1EEE9AC00](v28);
    *(&v35 - 2) = v42;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854BD0);
    v47 = v11;
    v48 = v27;
    v49 = OpaqueTypeConformance2;
    v50 = v26;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = sub_1B370ED54(&qword_1EB854BF0, &qword_1EB854BD0);
    v32 = v37;
    v33 = v40;
    sub_1B3C9BA98();
    (*(v38 + 8))(v15, v33);
    v47 = v33;
    v48 = v29;
    v49 = v30;
    v50 = v31;
    swift_getOpaqueTypeConformance2();
    v34 = v41;
    sub_1B3C9B7E8();
    return (*(v39 + 8))(v32, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37CB4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C00);
  MEMORY[0x1EEE9AC00](v77);
  v78 = v62 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C08);
  v85 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v84 = v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C10);
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v81 = v62 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C18);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C20);
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v74 = v62 - v9;
  v10 = sub_1B3C9A878();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B3C9A9B8();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C28);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854C30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v88 = v62 - v20;
  v21 = sub_1B3C9B238();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8516F0);
  v76 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v23 = v62 - v22;
  sub_1B3C9B1F8();
  v89 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854C40);
  sub_1B370ED54(&qword_1EB8516F8, &unk_1EB854C40);
  v86 = v23;
  sub_1B3C9A7F8();
  if (sub_1B37CC13C())
  {
    v24 = sub_1B3C9B1E8();
    v64 = v62;
    MEMORY[0x1EEE9AC00](v24);
    v62[1] = &v62[-4];
    v62[-2] = a1;
    v62[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C80);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854C88);
    v65 = a1;
    v26 = v14;
    v63 = v14;
    v66 = v13;
    v27 = v25;
    v28 = v8;
    v29 = sub_1B3C9AB68();
    v30 = sub_1B370ED54(&qword_1EB854C90, &qword_1EB854C88);
    v31 = sub_1B37CFBC8(&unk_1EB854060, MEMORY[0x1E697C248]);
    v90 = v27;
    v91 = v29;
    v92 = v30;
    v93 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v68;
    sub_1B3C9A7F8();
    sub_1B3C9B1E8();
    sub_1B3C9A868();
    v33 = v69;
    sub_1B3C9A9C8();
    v34 = *(v73 + 48);
    v35 = *(v26 + 16);
    v36 = v71;
    v35(v71, v32, v66);
    v37 = v70;
    v38 = v72;
    (*(v70 + 16))(&v36[v34], v33, v72);
    v39 = v74;
    sub_1B3C9B058();
    v40 = v75;
    (*(v75 + 16))(v18, v39, v28);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v28);
    v41 = sub_1B370ED54(&qword_1EB854C50, &qword_1EB854C20);
    MEMORY[0x1B8C68860](v18, v28, v41);
    sub_1B370489C(v18);
    (*(v40 + 8))(v39, v28);
    v42 = v38;
    v43 = v65;
    (*(v37 + 8))(v33, v42);
    (*(v63 + 8))(v32, v66);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v8);
    v44 = sub_1B370ED54(&qword_1EB854C50, &qword_1EB854C20);
    MEMORY[0x1B8C68860](v18, v8, v44);
    sub_1B370489C(v18);
    v43 = a1;
  }

  v45 = sub_1B3C9B208();
  MEMORY[0x1EEE9AC00](v45);
  v62[-2] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C58);
  sub_1B37D0048();
  v46 = v81;
  sub_1B3C9A7F8();
  v47 = sub_1B3C9B228();
  MEMORY[0x1EEE9AC00](v47);
  v62[-2] = v43;
  sub_1B37D0134();
  v48 = v84;
  sub_1B3C9A7F8();
  v49 = v76;
  v50 = v77[12];
  v51 = v77[16];
  v52 = v77[20];
  v53 = v78;
  (*(v76 + 16))(v78, v86, v87);
  v54 = v88;
  sub_1B37048FC(v88, &v53[v50]);
  v55 = v82;
  v56 = &v53[v51];
  v57 = v83;
  (*(v82 + 16))(v56, v46, v83);
  v58 = v85;
  v59 = &v53[v52];
  v60 = v79;
  (*(v85 + 16))(v59, v48, v79);
  sub_1B3C9B058();
  (*(v58 + 8))(v48, v60);
  (*(v55 + 8))(v46, v57);
  sub_1B370489C(v54);
  return (*(v49 + 8))(v86, v87);
}

uint64_t sub_1B37CBF9C(uint64_t a1)
{
  v2 = type metadata accessor for StoryMusicEditorSheetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1B3C9A6F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C9A6D8();
  sub_1B37CFF74(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StoryMusicEditorSheetView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1B37D0190(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StoryMusicEditorSheetView);
  return MEMORY[0x1B8C69270](v7, sub_1B37D06D0, v9);
}

BOOL sub_1B37CC13C()
{
  v1 = sub_1B3C9B348();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853810);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v24 = v0;
  sub_1B37CA3EC(&v23 - v15);
  (*(v2 + 104))(v13, *MEMORY[0x1E697FF38], v1);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1B37D0A34(v16, v7, &qword_1EB852490);
  sub_1B37D0A34(v13, &v7[v17], &qword_1EB852490);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    sub_1B37D0A34(v7, v10, &qword_1EB852490);
    if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) != 1)
    {
      v19 = &v7[v17];
      v20 = v23;
      (*(v2 + 32))(v23, v19, v1);
      sub_1B37CFBC8(&qword_1EB84F8F0, MEMORY[0x1E697FF50]);
      v21 = sub_1B3C9C528();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_1B371B36C(v13, &qword_1EB852490);
      sub_1B371B36C(v16, &qword_1EB852490);
      v22(v10, v1);
      sub_1B371B36C(v7, &qword_1EB852490);
      if (v21)
      {
        return *(*(v24 + 8) + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 1;
      }

      return 0;
    }

    sub_1B371B36C(v13, &qword_1EB852490);
    sub_1B371B36C(v16, &qword_1EB852490);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_1B371B36C(v7, &unk_1EB853810);
    return 0;
  }

  sub_1B371B36C(v13, &qword_1EB852490);
  sub_1B371B36C(v16, &qword_1EB852490);
  if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_1B371B36C(v7, &qword_1EB852490);
  return *(*(v24 + 8) + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 1;
}

uint64_t sub_1B37CC574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_1B3C9AB68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoryMusicEditorSheetView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  sub_1B37CFF74(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StoryMusicEditorSheetView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1B37D0190(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for StoryMusicEditorSheetView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C98);
  sub_1B37D028C();
  sub_1B3C9BCE8();
  sub_1B3C9AB58();
  sub_1B370ED54(&qword_1EB854C90, &qword_1EB854C88);
  sub_1B37CFBC8(&unk_1EB854060, MEMORY[0x1E697C248]);
  sub_1B3C9B858();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B37CC8CC@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v27);
  v2 = v27[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B371B0F4(v27);
  v10 = sub_1B3C9B6A8();
  *&v24 = v3;
  *(&v24 + 1) = v5;
  LOBYTE(v25) = v7 & 1;
  *(&v25 + 1) = v9;
  LOWORD(v26) = 257;
  *(&v26 + 1) = swift_getKeyPath();
  sub_1B3C9B648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854CB8);
  sub_1B37D040C();
  sub_1B3C9B848();
  v28[0] = v24;
  v28[1] = v25;
  v28[2] = v26;
  v29 = v10;
  sub_1B371B36C(v28, &qword_1EB854CB8);
  v11 = sub_1B3C9BB28();
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854CB0) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  LOBYTE(v11) = sub_1B3C9B4F8();
  sub_1B3C9A738();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C98);
  v23 = a1 + *(result + 36);
  *v23 = v11;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_1B37CCAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StoryMusicEditorSheetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B3C9A6F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854C40);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  sub_1B3C9A6E8();
  sub_1B37CFF74(a1, v7, type metadata accessor for StoryMusicEditorSheetView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1B37D0190(v7, v16 + v15, type metadata accessor for StoryMusicEditorSheetView);
  MEMORY[0x1B8C69270](v10, sub_1B37D0694, v16);
  if (*(*(a1 + 8) + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration + 32) == 1)
  {
    if (!sub_1B3899B84())
    {
      v17 = 1;
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v17 = 0;
LABEL_5:
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v12 + 32))(a2, v14, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854C58);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_1B37D06C0;
  v21[2] = v19;
  return result;
}

uint64_t sub_1B37CCDC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for StoryMusicEditorViewModel();
  sub_1B37CFBC8(&qword_1EB854A60, type metadata accessor for StoryMusicEditorViewModel);
  v4 = v3;
  result = sub_1B3C9AA58();
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1B37CCE94()
{
  sub_1B37CCF88();
  if (v0 <= 0x3F)
  {
    sub_1B37CD01C(319, &qword_1EB851668, &qword_1EB852490, &unk_1B3D00260, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B37CD01C(319, &qword_1EB851660, &qword_1EB853510, &unk_1B3CF9FC0, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B37CCF88()
{
  if (!qword_1EB854A58)
  {
    type metadata accessor for StoryMusicEditorViewModel();
    sub_1B37CFBC8(&qword_1EB854A60, type metadata accessor for StoryMusicEditorViewModel);
    v0 = sub_1B3C9AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB854A58);
    }
  }
}

void sub_1B37CD01C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B37CD080()
{
  result = qword_1EB854A68;
  if (!qword_1EB854A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854A40);
    sub_1B37CD138();
    sub_1B370ED54(&qword_1EB851728, &unk_1EB854A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854A68);
  }

  return result;
}

unint64_t sub_1B37CD138()
{
  result = qword_1EB854A70;
  if (!qword_1EB854A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854A30);
    sub_1B37CD1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854A70);
  }

  return result;
}

unint64_t sub_1B37CD1C4()
{
  result = qword_1EB854A78;
  if (!qword_1EB854A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854A28);
    sub_1B370ED54(&unk_1EB854A80, &qword_1EB854A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854A78);
  }

  return result;
}

uint64_t sub_1B37CD27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B37CD2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B37CD350()
{
  sub_1B37CCF88();
  if (v0 <= 0x3F)
  {
    sub_1B37CD418();
    if (v1 <= 0x3F)
    {
      sub_1B37CD01C(319, &qword_1EB851668, &qword_1EB852490, &unk_1B3D00260, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B37CD418()
{
  if (!qword_1EB853610)
  {
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB853610);
    }
  }
}

void sub_1B37CD484()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v34 = v3;
  v5 = v4;
  v6 = sub_1B3C9AB68();
  OUTLINED_FUNCTION_0();
  v35 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521A0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853830);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  if (*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 1)
  {
    v21 = swift_allocObject();
    v33 = v5;
    *(v21 + 16) = v34;
    *(v21 + 24) = v2;
    v22 = v2;
    sub_1B3C9BCE8();
    sub_1B3C9AB58();
    sub_1B370ED54(&qword_1EB8521B0, &qword_1EB8521A0);
    sub_1B37CFBC8(&unk_1EB854060, MEMORY[0x1E697C248]);
    sub_1B3C9B858();
    (*(v35 + 8))(v0, v6);
    (*(v11 + 8))(v14, v9);
    (*(v17 + 32))(v33, v20, v15);
    OUTLINED_FUNCTION_18_12();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_27();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

uint64_t sub_1B37CD7B0@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v26);
  v2 = v26[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  sub_1B371B0F4(v26);
  sub_1B3C9B6A8();
  v8 = sub_1B3C9B778();
  v10 = v9;
  v12 = v11;

  sub_1B371B148(v3, v5, v7 & 1);

  sub_1B3C9B648();
  v13 = sub_1B3C9B738();
  v15 = v14;
  v17 = v16;
  sub_1B371B148(v8, v10, v12 & 1);

  sub_1B3C9BB28();
  v18 = sub_1B3C9B758();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1B371B148(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_1B37CD984@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StoryMusicEditorContentView(0);
  v4 = OUTLINED_FUNCTION_4_13(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v19 = v1;
  sub_1B3C9B4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854AB8);
  sub_1B37CFC18();
  sub_1B3C9A7A8();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854AD8) + 36);
  sub_1B37CF85C();
  v10 = sub_1B3C9C008();
  v12 = v11;
  v13 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854AE0) + 36));
  *v13 = v10;
  v13[1] = v12;
  sub_1B37CFF74(v1, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for StoryMusicEditorContentView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1B37D0190(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for StoryMusicEditorContentView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854AF0);
  v17 = (a1 + *(result + 36));
  *v17 = sub_1B37CFCC8;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_1B37CDB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3C9B2C8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854AD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = sub_1B3899554();
  v10 = sub_1B3711890(v9);

  if (v10)
  {
    sub_1B37CDE34();
    v12 = v11;
    v13 = sub_1B3C9B008();
    v15 = &v15;
    MEMORY[0x1EEE9AC00](v13);
    *(&v15 - 2) = a1;
    *(&v15 - 8) = v12 & 1;
    v16 = 0;
    sub_1B37CFBC8(&qword_1EB853FE0, MEMORY[0x1E697FCB0]);
    sub_1B3C9D858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B20);
    sub_1B370ED54(&qword_1EB854B28, &qword_1EB854B20);
    sub_1B3C9A788();
    (*(v6 + 32))(a2, v8, v5);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }
}

void sub_1B37CDE34()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1B3C9B348();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v26 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853810) - 8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  type metadata accessor for StoryMusicEditorContentView(0);
  sub_1B37CA04C();
  (*(v2 + 104))(v16, *MEMORY[0x1E697FF38], v0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v0);
  v20 = *(v6 + 56);
  sub_1B37D0A34(v19, v9, &qword_1EB852490);
  sub_1B37D0A34(v16, &v9[v20], &qword_1EB852490);
  OUTLINED_FUNCTION_21_9(v9);
  if (!v21)
  {
    sub_1B37D0A34(v9, v13, &qword_1EB852490);
    OUTLINED_FUNCTION_21_9(&v9[v20]);
    if (!v21)
    {
      v22 = &v9[v20];
      v23 = v26;
      (*(v2 + 32))(v26, v22, v0);
      sub_1B37CFBC8(&qword_1EB84F8F0, MEMORY[0x1E697FF50]);
      sub_1B3C9C528();
      v24 = *(v2 + 8);
      v24(v23, v0);
      sub_1B371B36C(v16, &qword_1EB852490);
      sub_1B371B36C(v19, &qword_1EB852490);
      v24(v13, v0);
      sub_1B371B36C(v9, &qword_1EB852490);
      goto LABEL_10;
    }

    sub_1B371B36C(v16, &qword_1EB852490);
    sub_1B371B36C(v19, &qword_1EB852490);
    (*(v2 + 8))(v13, v0);
LABEL_9:
    sub_1B371B36C(v9, &unk_1EB853810);
    goto LABEL_10;
  }

  sub_1B371B36C(v16, &qword_1EB852490);
  sub_1B371B36C(v19, &qword_1EB852490);
  OUTLINED_FUNCTION_21_9(&v9[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1B371B36C(v9, &qword_1EB852490);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B37CE208@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v74 = a3;
  v5 = type metadata accessor for StoryMusicEditorContentView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854B30);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v62 - v11;
  v12 = *(a1 + 8);
  v13 = 0;
  if (*(v12 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 2 && [objc_opt_self() isAppleMusicSharingEnabled])
  {
    v62[1] = v12;
    v63 = v7;
    v64 = v6;
    v65 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    LODWORD(v66) = a2;
    sub_1B37F3AB8(v79);
    v14 = v79[6];

    v15 = sub_1B3C9B798();
    v17 = v16;
    v19 = v18;
    sub_1B371B0F4(v79);
    sub_1B3C9B588();
    v20 = a1;
    v21 = sub_1B3C9B778();
    v23 = v22;
    v25 = v24;

    sub_1B371B148(v15, v17, v19 & 1);

    LODWORD(v77[0]) = sub_1B3C9B338();
    v26 = sub_1B3C9B768();
    v28 = v27;
    LOBYTE(v17) = v29;
    sub_1B371B148(v21, v23, v25 & 1);

    sub_1B3C9B658();
    v30 = sub_1B3C9B738();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = v26;
    a1 = v20;
    sub_1B371B148(v37, v28, v17 & 1);

    v38 = sub_1B3C9B4F8();
    v39 = *(v20 + 24);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    if ((v39 & 1) == 0)
    {
      sub_1B3C9A738();
      v13 = v43;
      v40 = v44;
      v41 = v45;
      v42 = v46;
    }

    LOBYTE(v77[0]) = v34 & 1;
    LOBYTE(__src[0]) = v39;
    v69 = v34 & 1;
    v68 = v38;
    LOBYTE(a2) = v66;
    v8 = v65;
    v6 = v64;
    v7 = v63;
    v67 = v39;
    v47 = v32;
    v75 = v36;
  }

  else
  {
    v30 = 0;
    v47 = 0;
    v75 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v65 = v47;
  v66 = v30;
  v77[0] = sub_1B3899554();
  sub_1B37CFF74(a1, v8, type metadata accessor for StoryMusicEditorContentView);
  v48 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v49 = swift_allocObject();
  sub_1B37D0190(v8, v49 + v48, type metadata accessor for StoryMusicEditorContentView);
  *(v49 + v48 + v7) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855540);
  sub_1B3C98158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B40);
  sub_1B370ED54(&qword_1EB854B48, &qword_1EB855540);
  sub_1B370ED54(&qword_1EB854B50, &qword_1EB854B40);
  sub_1B37CFBC8(&qword_1EB854B58, type metadata accessor for StoryMusicEditorSongCollectionViewModel);
  v50 = v70;
  sub_1B3C9BE98();
  v51 = v72;
  v52 = *(v72 + 16);
  v53 = v71;
  v54 = v73;
  v52(v71, v50, v73);
  __src[0] = v30;
  __src[1] = v47;
  v55 = v69;
  __src[2] = v69;
  __src[3] = v75;
  v56 = v68;
  __src[4] = v68;
  __src[5] = v13;
  __src[6] = v40;
  __src[7] = v41;
  __src[8] = v42;
  v57 = v67;
  LOBYTE(__src[9]) = v67;
  v58 = v74;
  memcpy(v74, __src, 0x49uLL);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B60);
  v52(&v58[*(v59 + 48)], v53, v54);
  sub_1B37D0A34(__src, v77, &qword_1EB854B68);
  v60 = *(v51 + 8);
  v60(v50, v54);
  v60(v53, v54);
  v77[0] = v66;
  v77[1] = v65;
  v77[2] = v55;
  v77[3] = v75;
  v77[4] = v56;
  v77[5] = v13;
  v77[6] = v40;
  v77[7] = v41;
  v77[8] = v42;
  v78 = v57;
  return sub_1B371B36C(v77, &qword_1EB854B68);
}

uint64_t sub_1B37CE984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v119 = a4;
  v115 = sub_1B3C98248();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v96 - v8;
  v9 = type metadata accessor for StoryMusicEditorContentView(0);
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v110 = v10;
  v111 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for StoryMusicEditorSongsCollectionRowView();
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v96 - v13;
  v104 = sub_1B3C9BE78();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  *&v106 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B70);
  MEMORY[0x1EEE9AC00](v108);
  v102 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B78);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v116 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v96 - v22;
  v23 = sub_1B3C98158();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B80);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854B88);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v100 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v96 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v96 - v36;
  v38 = *a1;
  v98 = v24;
  v39 = *(v24 + 16);
  v107 = v38;
  v39(&v96 - v36, v38 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id, v23, v35);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v23);
  v105 = *(a2 + 8);
  v40 = sub_1B3899554();
  if (sub_1B3711890(v40))
  {
    v97 = a2;
    sub_1B37ED0BC(0, (v40 & 0xC000000000000001) == 0, v40);
    if ((v40 & 0xC000000000000001) != 0)
    {
      v95 = MEMORY[0x1B8C6A930](0, v40);

      (v39)(v33, v95 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = *(v40 + 32);

      (v39)(v33, v41 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_id, v23);
    }

    v42 = 0;
    a2 = v97;
  }

  else
  {

    v42 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v42, 1, v23);
  v43 = *(v26 + 48);
  sub_1B37D0A34(v37, v28, &unk_1EB854B88);
  sub_1B37D0A34(v33, &v28[v43], &unk_1EB854B88);
  if (__swift_getEnumTagSinglePayload(v28, 1, v23) != 1)
  {
    v45 = v100;
    sub_1B37D0A34(v28, v100, &unk_1EB854B88);
    if (__swift_getEnumTagSinglePayload(&v28[v43], 1, v23) != 1)
    {
      v59 = v98;
      v60 = v96;
      (*(v98 + 32))(v96, &v28[v43], v23);
      sub_1B37CFBC8(&qword_1EB854BA0, MEMORY[0x1E69695A8]);
      LODWORD(v97) = sub_1B3C9C528();
      v61 = *(v59 + 8);
      v61(v60, v23);
      sub_1B371B36C(v33, &unk_1EB854B88);
      sub_1B371B36C(v37, &unk_1EB854B88);
      v61(v100, v23);
      sub_1B371B36C(v28, &unk_1EB854B88);
      v44 = v97 ^ 1;
      goto LABEL_16;
    }

    sub_1B371B36C(v33, &unk_1EB854B88);
    sub_1B371B36C(v37, &unk_1EB854B88);
    (*(v98 + 8))(v45, v23);
LABEL_11:
    sub_1B371B36C(v28, &qword_1EB854B80);
    v46 = v120;
    v47 = v108;
    v48 = v106;
    goto LABEL_12;
  }

  sub_1B371B36C(v33, &unk_1EB854B88);
  sub_1B371B36C(v37, &unk_1EB854B88);
  if (__swift_getEnumTagSinglePayload(&v28[v43], 1, v23) != 1)
  {
    goto LABEL_11;
  }

  sub_1B371B36C(v28, &unk_1EB854B88);
  v44 = 0;
LABEL_16:
  v47 = v108;
  v48 = v106;
  v46 = v120;
  if ((v99 & 1) == 0 && (v44 & 1) == 0)
  {
    v58 = 1;
    goto LABEL_19;
  }

LABEL_12:
  sub_1B3C9BE68();
  v49 = sub_1B3C9B4F8();
  v50 = *(a2 + 24);
  v51 = 0uLL;
  v52 = 0uLL;
  if ((v50 & 1) == 0)
  {
    sub_1B3C9A738();
    *(&v52 + 1) = v53;
    *(&v51 + 1) = v54;
  }

  v106 = v52;
  v108 = v51;
  v55 = v102;
  (*(v103 + 32))(v102, v48, v104);
  v56 = v55 + *(v47 + 36);
  *v56 = v49;
  *(v56 + 24) = v106;
  *(v56 + 8) = v108;
  *(v56 + 40) = v50;
  v57 = v101;
  sub_1B37CAE40(v55, v101, &qword_1EB854B70);
  sub_1B37CAE40(v57, v46, &qword_1EB854B70);
  v58 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v46, v58, 1, v47);
  type metadata accessor for StoryMusicEditorViewModel();
  sub_1B37CFBC8(&qword_1EB854A60, type metadata accessor for StoryMusicEditorViewModel);
  v62 = v107;

  v63 = sub_1B3C9AA68();
  swift_getKeyPath();
  sub_1B3C9AA78();

  v106 = v128;
  v64 = v129;
  *&v108 = *(a2 + 16);
  v65 = *(a2 + 24);
  v66 = v111;
  sub_1B37CFF74(a2, v111, type metadata accessor for StoryMusicEditorContentView);
  v67 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v68 = (v110 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1B37D0190(v66, v69 + v67, type metadata accessor for StoryMusicEditorContentView);
  *(v69 + v68) = v62;
  type metadata accessor for StoryMusicEditorSongCollectionViewModel();
  sub_1B37CFBC8(&qword_1EB8535E0, type metadata accessor for StoryMusicEditorSongCollectionViewModel);

  *v14 = sub_1B3C9AA58();
  *(v14 + 1) = v70;
  v14[16] = 0;
  LOBYTE(v121) = 0;
  sub_1B3C9BC88();
  v71 = *(&v124 + 1);
  v14[24] = v124;
  *(v14 + 4) = v71;
  v72 = v117;
  v73 = v112;
  sub_1B3C98238();
  v74 = v114;
  v75 = v115;
  (*(v114 + 16))(v113, v73, v115);
  sub_1B3C9BC88();
  (*(v74 + 8))(v73, v75);
  v76 = &v14[v72[8]];
  *v76 = v106;
  *(v76 + 2) = v64;
  v77 = v72[9];
  *&v121 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853600);
  sub_1B3C9BC88();
  *&v14[v77] = v124;
  v78 = &v14[v72[10]];
  *v78 = v108;
  v78[8] = v65;
  v79 = &v14[v72[11]];
  *v79 = sub_1B37CFEE0;
  v79[1] = v69;
  v80 = &v14[v72[12]];
  v121 = 0uLL;
  LOBYTE(v122) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853510);
  sub_1B3C9BC88();
  v81 = v125;
  v82 = *(&v125 + 1);
  *v80 = v124;
  v80[16] = v81;
  *(v80 + 3) = v82;
  v83 = &v14[v72[13]];
  v121 = 0u;
  v122 = 0u;
  v123 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853630);
  sub_1B3C9BC88();
  v84 = v126;
  v85 = v127;
  v86 = v125;
  *v83 = v124;
  *(v83 + 1) = v86;
  v83[32] = v84;
  *(v83 + 5) = v85;
  v87 = v72[14];
  *&v14[v87] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  swift_storeEnumTagMultiPayload();
  v88 = v72[15];
  *&v14[v88] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v89 = v120;
  v90 = v116;
  sub_1B37D0A34(v120, v116, &qword_1EB854B78);
  v91 = v118;
  sub_1B37CFF74(v14, v118, type metadata accessor for StoryMusicEditorSongsCollectionRowView);
  v92 = v119;
  sub_1B37D0A34(v90, v119, &qword_1EB854B78);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B98);
  sub_1B37CFF74(v91, v92 + *(v93 + 48), type metadata accessor for StoryMusicEditorSongsCollectionRowView);
  sub_1B37CFFD8(v14, type metadata accessor for StoryMusicEditorSongsCollectionRowView);
  sub_1B371B36C(v89, &qword_1EB854B78);
  sub_1B37CFFD8(v91, type metadata accessor for StoryMusicEditorSongsCollectionRowView);
  return sub_1B371B36C(v90, &qword_1EB854B78);
}

uint64_t sub_1B37CF7DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3899B84();
  *a1 = result;
  return result;
}

void sub_1B37CF85C()
{
  OUTLINED_FUNCTION_39();
  v29 = v1;
  v2 = sub_1B3C9B3A8();
  OUTLINED_FUNCTION_0();
  v28 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854AF8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B00);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = sub_1B3899554();
  v18 = sub_1B3711890(v17);

  if (v18)
  {
    OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_27();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  else
  {
    sub_1B3C9A828();
    sub_1B3C9B398();
    sub_1B370ED54(&qword_1EB854B08, &qword_1EB854AF8);
    sub_1B37CFBC8(&unk_1EB854B10, MEMORY[0x1E697C9C8]);
    sub_1B3C9B828();
    (*(v28 + 8))(v0, v2);
    (*(v7 + 8))(v10, v5);
    (*(v13 + 32))(v29, v16, v11);
    OUTLINED_FUNCTION_18_12();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_27();
  }
}

uint64_t sub_1B37CFBC8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B37CFC18()
{
  result = qword_1EB854AC0;
  if (!qword_1EB854AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854AB8);
    sub_1B370ED54(&qword_1EB854AC8, &qword_1EB854AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854AC0);
  }

  return result;
}

uint64_t sub_1B37CFD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852490);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1B37D0A34(a1, &v12 - v9, &qword_1EB852490);
  return a5(v10);
}

uint64_t sub_1B37CFDE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StoryMusicEditorContentView(0);
  OUTLINED_FUNCTION_4_13(v5);
  v8 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_1B37CE984(a1, v8, v9, a2);
}

uint64_t sub_1B37CFE7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3C9AE18();
  *a1 = result & 1;
  return result;
}

void sub_1B37CFEE0(uint64_t a1)
{
  v3 = type metadata accessor for StoryMusicEditorContentView(0);
  OUTLINED_FUNCTION_4_13(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B37CF834(a1, v1 + v8, v9);
}

uint64_t sub_1B37CFF74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_25();
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  return a2;
}

uint64_t sub_1B37CFFD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B37D0048()
{
  result = qword_1EB854C60;
  if (!qword_1EB854C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854C58);
    sub_1B370ED54(&qword_1EB8516F8, &unk_1EB854C40);
    sub_1B370ED54(&qword_1EB854C68, &qword_1EB854C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854C60);
  }

  return result;
}

unint64_t sub_1B37D0134()
{
  result = qword_1EB854C78;
  if (!qword_1EB854C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854C78);
  }

  return result;
}

uint64_t sub_1B37D0190(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_25();
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  return a2;
}

uint64_t sub_1B37D0214(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_8_0(v3);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(v5);
}

unint64_t sub_1B37D028C()
{
  result = qword_1EB854CA0;
  if (!qword_1EB854CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854C98);
    sub_1B37D0318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CA0);
  }

  return result;
}

unint64_t sub_1B37D0318()
{
  result = qword_1EB854CA8;
  if (!qword_1EB854CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854CB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854CB8);
    sub_1B37D040C();
    swift_getOpaqueTypeConformance2();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CA8);
  }

  return result;
}

unint64_t sub_1B37D040C()
{
  result = qword_1EB854CC0;
  if (!qword_1EB854CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854CB8);
    sub_1B37D04C4();
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CC0);
  }

  return result;
}

unint64_t sub_1B37D04C4()
{
  result = qword_1EB854CC8;
  if (!qword_1EB854CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CC8);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for StoryMusicEditorSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B3C9B348();
    if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_18_3();
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1B37D06FC()
{
  result = qword_1EB854CD8;
  if (!qword_1EB854CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8521A0);
    sub_1B3C9AB68();
    sub_1B370ED54(&qword_1EB8521B0, &qword_1EB8521A0);
    sub_1B37CFBC8(&unk_1EB854060, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CD8);
  }

  return result;
}

unint64_t sub_1B37D0840()
{
  result = qword_1EB854CE8;
  if (!qword_1EB854CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854AF0);
    sub_1B37D08CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CE8);
  }

  return result;
}

unint64_t sub_1B37D08CC()
{
  result = qword_1EB854CF0;
  if (!qword_1EB854CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854CF8);
    sub_1B37D0950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854CF0);
  }

  return result;
}

unint64_t sub_1B37D0950()
{
  result = qword_1EB854D00;
  if (!qword_1EB854D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854AD8);
    sub_1B370ED54(&qword_1EB854D08, &qword_1EB854D10);
    sub_1B370ED54(&qword_1EB854D18, &unk_1EB854AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854D00);
  }

  return result;
}

uint64_t sub_1B37D0A34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_2(a1, a2, a3);
  OUTLINED_FUNCTION_1_25();
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_1B3C9A438();
}

char *sub_1B37D0B2C(void *a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportPreviewViewController] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_presentingFailureAlert] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController____lazy_storage___linkMetadata] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportActivityItemProvider] = a1;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_fullSizePlayerAspect] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852360);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B3CF6CE0;
  *(v6 + 56) = type metadata accessor for StoryExportActivityItemProvider();
  *(v6 + 32) = a1;
  v7 = a3;
  v8 = a1;
  v9 = sub_1B3C9C778();

  v21.receiver = v3;
  v21.super_class = type metadata accessor for StoryExportActivityViewController();
  v10 = objc_msgSendSuper2(&v21, sel_initWithActivityItems_applicationActivities_, v9, 0);

  v11 = objc_allocWithZone(type metadata accessor for StoryExportActivityPreviewViewController());
  v12 = v10;
  v13 = v8;
  v14 = v12;
  v15 = sub_1B38A1238(v13);
  [v14 setPhotosCarouselViewController_];
  v16 = *&v14[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportPreviewViewController];
  *&v14[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportPreviewViewController] = v15;
  v17 = v15;

  [v14 setObjectManipulationDelegate_];
  v18 = v14;
  [v18 setAirDropDelegate_];
  *&v13[OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_delegate + 8] = &off_1F2ABA1B8;
  swift_unknownObjectWeakAssign();

  v19 = sub_1B37D1108();
  [v18 setPhotosHeaderMetadata_];

  swift_unknownObjectRelease();
  return v18;
}

void sub_1B37D0D64()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportPreviewViewController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_presentingFailureAlert) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController____lazy_storage___linkMetadata) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B37D0E74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExportActivityViewController();
  return objc_msgSendSuper2(&v2, sel_modalPresentationStyle);
}

id sub_1B37D0EFC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1 || (v6 = [v3 currentDevice], v7 = objc_msgSend(v6, sel_userInterfaceIdiom), v6, v7 == 6))
  {
    [v1 setAllowsCustomPresentationStyle_];
    a1 = 2;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for StoryExportActivityViewController();
  return objc_msgSendSuper2(&v9, sel_setModalPresentationStyle_, a1);
}

void sub_1B37D1004(void *a1)
{
  v2 = v1;
  v3 = sub_1B37D0FE4();
  sub_1B3710718(0, &unk_1EB856840);
  v4 = sub_1B3C9CFA8();

  v5 = a1;
  if ((v4 & 1) == 0)
  {
    v6 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportActivityItemProvider);
    v7 = *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio);
    *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio) = a1;
    v8 = a1;

    v9 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportPreviewViewController);
    if (v9)
    {
      v10 = v9;
      sub_1B38A1C0C();
    }

    v11 = objc_opt_self();
    v12 = sub_1B37D0FE4();
    [v11 setDefaultAspectRatio_];

    v5 = a1;
  }
}

id sub_1B37D1108()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController____lazy_storage___linkMetadata;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController____lazy_storage___linkMetadata);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController____lazy_storage___linkMetadata);
  }

  else
  {
    v4 = sub_1B37D116C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B37D116C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v3 = sub_1B37D1494();
  [v2 setImage_];

  v4 = [*(*(a1 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportActivityItemProvider) + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_storyConfiguration) assetCollection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 localizedTitle];
    if (v6)
    {
      v7 = v6;
      sub_1B3C9C5E8();
    }

    v13 = [objc_opt_self() defaultHelper];
    v14 = sub_1B3C9C5A8();

    v15 = [v13 displayableTextForTitle:v14 intent:1];

    v16 = sub_1B3C9C5E8();
    v18 = v17;

    sub_1B373ED44(v16, v18, v2);
    v19 = [v5 localizedSubtitle];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(MEMORY[0x1E696EC28]) init];
      v22 = [v13 displayableTextForTitle:v20 intent:1];

      sub_1B3C9C5E8();
      sub_1B3710718(0, &qword_1EB84F190);
      v23 = sub_1B37D1420();
      [v21 setStatus_];

      v24 = v21;
      [v2 setSpecialization_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_1B3C9C5A8();
    v9 = PULocalizedString(v8);

    v10 = sub_1B3C9C5E8();
    v12 = v11;

    sub_1B373ED44(v10, v12, v2);
  }

  return v2;
}

id sub_1B37D1420()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B3C9C5A8();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_1B37D1494()
{
  if (!*(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportActivityItemProvider) + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_iconAsset))
  {
    return 0;
  }

  v1 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  swift_unknownObjectRetain();
  v2 = [v1 init];
  sub_1B3710718(0, &unk_1EB84FE20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1B37D34DC;
  v8[5] = v4;
  OUTLINED_FUNCTION_1_0();
  v8[1] = 1107296256;
  v8[2] = sub_1B37D1B6C;
  v8[3] = &block_descriptor_31_0;
  v5 = _Block_copy(v8);

  [v2 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v5];
  _Block_release(v5);
  sub_1B3710718(0, &qword_1EB854E50);
  v6 = sub_1B37D1C7C(v2, 0, 0);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B37D160C(void (*a1)(void, void), uint64_t a2)
{
  v4 = sub_1B3C9C128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [objc_opt_self() defaultManager];
    v11 = [v10 imageProviderForAsset_];

    v12 = [objc_allocWithZone(MEMORY[0x1E69C4518]) init];
    [v12 setDeliveryMode_];
    [v12 setResizeMode_];
    [v12 setNetworkAccessAllowed_];
    sub_1B3710718(0, &qword_1EB84FE60);
    (*(v5 + 104))(v7, *MEMORY[0x1E69E7F88], v4);
    v13 = sub_1B3C9CCB8();
    (*(v5 + 8))(v7, v4);
    [v12 setResultHandlerQueue_];

    PLPhysicalScreenScale();
    PXSizeScale();
    v15 = v14;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    aBlock[4] = sub_1B37D34EC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B389FA74;
    aBlock[3] = &block_descriptor_40;
    v19 = _Block_copy(aBlock);
    v20 = v12;

    [v11 requestImageForAsset:v9 targetSize:1 contentMode:v20 options:v19 resultHandler:{v15, v17}];
    _Block_release(v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    a1(0, 0);
  }

  return 0;
}

void sub_1B37D1930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *))
{
  if (a1)
  {
    a3(a1, 0);
    return;
  }

  if (a2)
  {
    *&v16 = sub_1B3C9C5E8();
    *(&v16 + 1) = v5;
    sub_1B3C9D318();
    sub_1B3898D7C(a2, &v16);
    sub_1B3720D10(v15);
    if (*(&v17 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
      if (swift_dynamicCast())
      {
        v6 = v15[0];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_1B36FA490(&v16);
  v6 = 0;
LABEL_10:
  v7 = sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB878C60;
  if (os_log_type_enabled(qword_1EB878C60, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136446210;
    *&v16 = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
    v12 = sub_1B3C9C608();
    v14 = sub_1B3749364(v12, v13, v15);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1B36F3000, v8, v7, "Error fetching icon image for share sheet: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1B8C6EC70](v10, -1, -1);
    MEMORY[0x1B8C6EC70](v9, -1, -1);
  }

  a3(0, v6);
}

id sub_1B37D1B6C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1B37D34E4, v4);

  return v5;
}

void sub_1B37D1C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B3C97F18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_1B37D1C7C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithItemProvider:a1 properties:a2 placeholderImage:a3];

  return v6;
}

uint64_t (*sub_1B37D1DA0())()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for StoryExportActivityViewController();
  result = objc_msgSendSuper2(&v3, sel_completionWithItemsHandler);
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_20();
    *(swift_allocObject() + 16) = v2;
    return sub_1B37D35C0;
  }

  return result;
}

uint64_t sub_1B37D1EC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  aBlock[4] = sub_1B37D3510;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B37D2298;
  aBlock[3] = &block_descriptor_50;
  v8 = _Block_copy(aBlock);
  v9 = OUTLINED_FUNCTION_2_3();
  sub_1B370A6FC(v9);
  v10 = OUTLINED_FUNCTION_2_3();
  sub_1B370A6FC(v10);

  v14.receiver = v3;
  v14.super_class = type metadata accessor for StoryExportActivityViewController();
  objc_msgSendSuper2(&v14, sel_setCompletionWithItemsHandler_, v8);
  _Block_release(v8);
  v11 = OUTLINED_FUNCTION_2_3();
  sub_1B36F9DA0(v11);
  v12 = OUTLINED_FUNCTION_2_3();
  return sub_1B36F9DA0(v12);
}

void sub_1B37D1FF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = sub_1B3C9C778();
    if (a4)
    {
LABEL_3:
      v10 = sub_1B3C97F18();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a5 + 16))(a5, a1, a2 & 1, v9);
}

void sub_1B37D20B0(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void *, void, uint64_t, void *), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_presentingFailureAlert) & 1) == 0)
    {
      v15 = Strong;
      v16 = [v15 presentingViewController];
      v14 = v15;
      if (v16)
      {
        v17 = v16;
        v18 = [v15 isBeingDismissed];

        if ((v18 & 1) == 0)
        {
          v19 = swift_allocObject();
          *(v19 + 16) = a6;
          *(v19 + 24) = a7;
          *(v19 + 32) = a1;
          *(v19 + 40) = a2 & 1;
          *(v19 + 48) = a3;
          *(v19 + 56) = a4;
          aBlock[4] = sub_1B37D351C;
          aBlock[5] = v19;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B370C014;
          aBlock[3] = &block_descriptor_56;
          v20 = _Block_copy(aBlock);
          sub_1B370A6FC(a6);
          v21 = a1;

          v22 = a4;

          [v17 dismissViewControllerAnimated:1 completion:v20];
          _Block_release(v20);

          return;
        }

        v14 = v17;
      }
    }
  }

  if (a6)
  {
    a6(a1, a2 & 1, a3, a4);
  }
}

uint64_t sub_1B37D2298(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1B3C9C788();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

id sub_1B37D2354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExportActivityViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37D2428()
{
  v4 = MEMORY[0x1E69E7CC0];
  sub_1B37D253C();
  MEMORY[0x1B8C69CE0]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B3C9C7E8();
  }

  sub_1B3C9C808();
  v0 = v4;
  v1 = sub_1B37D0FE4();
  v2 = [v1 type];

  if (v2 != 4)
  {
    sub_1B37D2974();
    MEMORY[0x1B8C69CE0]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B3C9C7E8();
    }

    sub_1B3C9C808();
    return v4;
  }

  return v0;
}

void sub_1B37D253C()
{
  v0 = [objc_opt_self() pickableOrientations];
  sub_1B3710718(0, &unk_1EB854E40);
  v1 = sub_1B3C9C788();

  v2 = sub_1B37D0FE4();
  v3 = [v2 orientation];

  sub_1B382C64C();
  if (v5)
  {
    goto LABEL_15;
  }

  v6 = v4;
  v7 = sub_1B3C9C5A8();
  v8 = sub_1B3711890(v1);
  v36 = v3;
  v34 = v6;
  v35 = v7;
  if (v8)
  {
    v9 = v8;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B37EABC0(0, v8 & ~(v8 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = aBlock[0];
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1B8C6A930](v10, v1);
        }

        else
        {
          v12 = *(v1 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = [v12 localizedTitle];
        v15 = sub_1B3C9C5E8();
        v17 = v16;

        aBlock[0] = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B37EABC0((v18 > 1), v19 + 1, 1);
          v11 = aBlock[0];
        }

        ++v10;
        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v9 != v10);
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  v21 = objc_opt_self();
  v22 = sub_1B3C9C778();

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v1;
  aBlock[4] = sub_1B37D34D4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B37D2F2C;
  aBlock[3] = &block_descriptor_25_1;
  v25 = _Block_copy(aBlock);

  v26 = [v21 pickerCustomizationWithIdentifier:v35 options:v22 selectedOptionIndex:v34 footerText:0 valueChangedHandler:v25];
  _Block_release(v25);

  v27 = sub_1B3C9C5A8();
  v28 = PULocalizedString(v27);

  if (!v28)
  {
    sub_1B3C9C5E8();
    v28 = sub_1B3C9C5A8();
  }

  v29 = objc_opt_self();
  v30 = sub_1B3C9C5A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B3CF9810;
  *(v31 + 32) = v26;
  sub_1B3710718(0, &qword_1EB854E38);
  v32 = v26;
  v33 = sub_1B3C9C778();

  [v29 createWithGroupName:v28 identifier:v30 customizations:v33];
}

char *sub_1B37D2974()
{
  v1 = sub_1B37D0FE4();
  v2 = objc_opt_self();
  v3 = [v1 orientation];
  v4 = [v2 pickableAspectRatiosForOrientation:v3 fullSizePlayerAspect:*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_fullSizePlayerAspect)];

  sub_1B3710718(0, &unk_1EB856840);
  v5 = sub_1B3C9C788();

  sub_1B382C674();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_1B3C9C5A8();
  v10 = sub_1B3711890(v5);
  v40 = v1;
  if (v10)
  {
    v11 = v10;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    result = sub_1B37EABC0(0, v10 & ~(v10 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v38 = v8;
    v39 = v9;
    v13 = 0;
    v14 = aBlock[0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B8C6A930](v13, v5);
      }

      else
      {
        v15 = *(v5 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 localizedTitle];
      v18 = sub_1B3C9C5E8();
      v20 = v19;

      aBlock[0] = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B37EABC0((v21 > 1), v22 + 1, 1);
        v14 = aBlock[0];
      }

      ++v13;
      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }

    while (v11 != v13);
    v8 = v38;
    v9 = v39;
  }

  v24 = objc_opt_self();
  v25 = sub_1B3C9C778();

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v5;
  aBlock[4] = sub_1B37D3484;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B37D2F2C;
  aBlock[3] = &block_descriptor_29;
  v28 = _Block_copy(aBlock);

  v29 = [v24 pickerCustomizationWithIdentifier:v9 options:v25 selectedOptionIndex:v8 footerText:0 valueChangedHandler:v28];
  _Block_release(v28);

  v30 = sub_1B3C9C5A8();
  v31 = PULocalizedString(v30);

  if (!v31)
  {
    sub_1B3C9C5E8();
    v31 = sub_1B3C9C5A8();
  }

  v32 = objc_opt_self();
  v33 = sub_1B3C9C5A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B3CF9810;
  *(v34 + 32) = v29;
  sub_1B3710718(0, &qword_1EB854E38);
  v35 = v29;
  v36 = sub_1B3C9C778();

  v37 = [v32 createWithGroupName:v31 identifier:v33 customizations:v36];

  return v37;
}

void sub_1B37D2E50(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 selectedOptionIndex];
    sub_1B37ED0BC(v7, (a3 & 0xC000000000000001) == 0, a3);
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C6A930](v7, a3);
    }

    else
    {
      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = sub_1B37D0FE4();
    v11 = [v10 adjustedForOrientation_];

    sub_1B37D1004(v11);
  }
}

void sub_1B37D2F2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B37D2F94(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 selectedOptionIndex];
    sub_1B37ED0BC(v7, (a3 & 0xC000000000000001) == 0, a3);
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C6A930](v7, a3);
    }

    else
    {
      v8 = *(a3 + 8 * v7 + 32);
    }

    sub_1B37D1004(v8);
  }
}

void sub_1B37D303C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_exportPreviewViewController);
  if (v1)
  {
    v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_isExporting] = 1;
    v2 = v1;
    sub_1B38A1B08();
  }
}

uint64_t sub_1B37D30B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1B3C97F18();
    v4 = sub_1B3C9C5A8();
    [v2 setError:v3 forComponent:v4];

    swift_unknownObjectRelease();
  }

  v0[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_presentingFailureAlert] = 1;
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B37D3554;
  *(v7 + 24) = v6;
  v12[4] = sub_1B37D355C;
  v12[5] = v7;
  OUTLINED_FUNCTION_1_0();
  v12[1] = 1107296256;
  v12[2] = sub_1B37E137C;
  v12[3] = &block_descriptor_71;
  v8 = _Block_copy(v12);
  v9 = v0;

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1B37D327C(void *a1, void *a2)
{
  v4 = sub_1B3C9C5A8();
  v5 = PXLocalizedString();

  v6 = sub_1B3C9C5E8();
  v8 = v7;

  sub_1B3813F04(v6, v8, a1);
  v9 = sub_1B3C9C5A8();
  v10 = PXLocalizedString();

  v11 = sub_1B3C9C5E8();
  v13 = v12;

  sub_1B3813F10(v11, v13, a1);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v17[4] = sub_1B37D3564;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B370C014;
  v17[3] = &block_descriptor_77;
  v15 = _Block_copy(v17);
  v16 = a2;

  [a1 setCompletionHandler_];
  _Block_release(v15);
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B37D351C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  }

  return result;
}

id sub_1B37D3564()
{
  v1 = *(v0 + 16);
  v1[OBJC_IVAR____TtC15PhotosUIPrivate33StoryExportActivityViewController_presentingFailureAlert] = 0;
  return [v1 _cancel];
}

id static PickerSuggestionResultFetcher.fetchResult(for:in:)(uint64_t a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  v4 = [objc_opt_self() predicateForAlbumKind_];
  [v3 setInternalPredicate_];

  v5 = [objc_opt_self() fetchAssetsWithOptions_];
  return v5;
}

uint64_t sub_1B37D369C()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB854ED0);
  __swift_project_value_buffer(v0, qword_1EB854ED0);
  return sub_1B3C9A548();
}

void *PickerSuggestionResultFetcher.Result.fetchResult.getter()
{
  v1 = *(v0 + OBJC_IVAR___PUPickerSuggestionResultFetcherResult_fetchResult);
  v2 = v1;
  return v1;
}

BOOL PickerSuggestionResultFetcher.Result.selectedFilterableSuggestion.getter()
{
  OUTLINED_FUNCTION_10_14();
  sub_1B3C9C238();
  return OUTLINED_FUNCTION_6_18() == 0;
}

uint64_t PickerSuggestionResultFetcher.Result.analyticsName.getter()
{
  OUTLINED_FUNCTION_11_11();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    return (*(v2 + 24))(ObjectType, v2);
  }

  else
  {
    OUTLINED_FUNCTION_13_0();
    return 0xD000000000000011;
  }
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t PickerSuggestionResultFetcher.Result.posterClassification.getter()
{
  OUTLINED_FUNCTION_11_11();
  result = dynamic_cast_existential_1_conditional(v0);
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    return (*(v3 + 40))(ObjectType, v3);
  }

  return result;
}

uint64_t PickerSuggestionResultFetcher.Result.numberOfItemsToPlayInline.getter()
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_14();
  sub_1B3C9C3B8();
  if (OUTLINED_FUNCTION_6_18())
  {
    OUTLINED_FUNCTION_42();
    swift_unknownObjectRetain();
    sub_1B3C9C3A8();
    OUTLINED_FUNCTION_42();
    swift_unknownObjectRelease();
    return v0 == 0;
  }

  else
  {
    sub_1B3C9C488();
    if (OUTLINED_FUNCTION_6_18())
    {
      return 3;
    }

    else
    {
      sub_1B3C9C478();
      if (OUTLINED_FUNCTION_6_18())
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

void *PickerSuggestionResultFetcher.Result.allowedColumnsOverride.getter()
{
  OUTLINED_FUNCTION_10_14();
  sub_1B3C9C488();
  v0 = &unk_1F2AB37D8;
  if (!OUTLINED_FUNCTION_6_18())
  {
    sub_1B3C9C478();
    if (!OUTLINED_FUNCTION_6_18())
    {
      return 0;
    }
  }

  return v0;
}

uint64_t PickerSuggestionResultFetcher.Result.isFilteredBackdropSuggestions.getter()
{
  OUTLINED_FUNCTION_10_14();
  sub_1B3C9C3B8();
  result = OUTLINED_FUNCTION_6_18();
  if (result)
  {
    OUTLINED_FUNCTION_42();
    swift_unknownObjectRetain();
    sub_1B3C9C3A8();
    OUTLINED_FUNCTION_42();
    swift_unknownObjectRelease();
    return (v0 - 14) < 4;
  }

  return result;
}

id sub_1B37D3DD8(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = ObjectType;
  v14 = &v6[OBJC_IVAR___PUPickerSuggestionResultFetcherResult_context];
  *v14 = a1 & 1;
  v14[1] = BYTE1(a1) & 1;
  v14[2] = BYTE2(a1) & 1;
  *&v6[OBJC_IVAR___PUPickerSuggestionResultFetcherResult_suggestion] = a2;
  *&v6[OBJC_IVAR___PUPickerSuggestionResultFetcherResult_fetchResult] = a3;
  if (a4)
  {
    v41 = ObjectType;
    v42 = a5;
    v43 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854FC0);
    v15 = sub_1B3C9D508();
    v16 = v15;
    v17 = a4 + 64;
    v18 = 1 << *(a4 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a4 + 64);
    v21 = (v18 + 63) >> 6;
    v44 = v15 + 64;
    swift_unknownObjectRetain();
    result = a3;
    v40 = result;
    v23 = 0;
    v45 = v16;
    if (v20)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_11:
        v27 = v24 | (v23 << 6);
        v28 = a4;
        v29 = (*(a4 + 48) + 16 * v27);
        v30 = *v29;
        v31 = v29[1];
        v32 = *(*(a4 + 56) + 2 * v27);
        v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);

        result = [v33 initWithUnsignedShort_];
        v16 = v45;
        *(v44 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v34 = (v45[6] + 16 * v27);
        *v34 = v30;
        v34[1] = v31;
        *(v45[7] + 8 * v27) = result;
        v35 = v45[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          break;
        }

        v45[2] = v37;
        a4 = v28;
        if (!v20)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v25 = v23;
      while (1)
      {
        v23 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v23 >= v21)
        {

          v6 = v43;
          v13 = v41;
          a5 = v42;
          v38 = v40;
          goto LABEL_16;
        }

        v26 = *(v17 + 8 * v23);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v20 = (v26 - 1) & v26;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v38 = a3;
    swift_unknownObjectRetain();
    v16 = 0;
LABEL_16:
    *&v6[OBJC_IVAR___PUPickerSuggestionResultFetcherResult_suggestionSubtypeByAssetUUID] = v16;
    *&v6[OBJC_IVAR___PUPickerSuggestionResultFetcherResult_inlinePlaybackDisallowedAssetUUIDs] = a5;
    v46.receiver = v6;
    v46.super_class = v13;
    v39 = objc_msgSendSuper2(&v46, sel_init);
    swift_unknownObjectRelease();

    return v39;
  }

  return result;
}

uint64_t PickerSuggestionResultFetcher.Result.identifier.getter()
{
  OUTLINED_FUNCTION_11_11();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    return (*(v2 + 32))(ObjectType, v2);
  }

  else
  {
    OUTLINED_FUNCTION_13_0();
    return 0xD000000000000011;
  }
}

id PickerSuggestionResultFetcher.Result.isImplicitSearchScope.getter()
{
  sub_1B3710718(0, &qword_1EB84F840);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 implicitSearchScopeForPickerSuggestionScopeSearch];

  return v1;
}

uint64_t PickerSuggestionResultFetcher.Result.localizedTitleForSearchScope.getter()
{
  OUTLINED_FUNCTION_11_11();
  if (dynamic_cast_existential_1_conditional(v0))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcherResult_context + 2) ? 0x10000 : 0;
    v6 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcherResult_context + 1) ? 256 : 0;
    v7 = (*(v3 + 8))(v6 | *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcherResult_context) | v5, ObjectType, v3);
    if (v8)
    {
      return v7;
    }
  }

  OUTLINED_FUNCTION_13_0();
  v10 = sub_1B3C9C5A8();
  v11 = PXLocalizedString();

  v9 = sub_1B3C9C5E8();

  return v9;
}

uint64_t PickerSuggestionResultFetcher.Result.localizedPlaceholderForSearchScope.getter()
{
  OUTLINED_FUNCTION_13_0();
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  v2 = sub_1B3C9C5E8();
  return v2;
}

id PickerSuggestionResultFetcher.Result.fetchAssetsForSearchScope(options:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcherResult_fetchResult);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcherResult_fetchResult);
  }

  else
  {
    v3 = [objc_opt_self() fetchAssetsWithOptions_];
    v2 = 0;
  }

  v4 = v2;
  return v3;
}

id PickerSuggestionResultFetcher.Result.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PickerSuggestionResultFetcher.Result.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37D4524()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue];
  OUTLINED_FUNCTION_14_1();
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_14_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B37D4988;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B3753CE8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B37D35C4;
  aBlock[3] = &block_descriptor_30;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_1B37D46E0(uint64_t a1)
{
  v3 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_14_1();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = a1;
  OUTLINED_FUNCTION_1_26(v17);
  OUTLINED_FUNCTION_3_10(COERCE_DOUBLE(1107296256));
  v23 = v18;
  v24 = &block_descriptor_9;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v20 = v1;
  sub_1B3C9C138();
  sub_1B37D49E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v16, v9, v19);
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v9, v3);
  (*(v12 + 8))(v16, v10);
}

uint64_t sub_1B37D493C(void *a1, uint64_t a2)
{
  *a1 = *(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_currentSuggestion);
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_1B37D4998(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_currentSuggestion) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1B37D4DF0();
}

unint64_t sub_1B37D49E4()
{
  result = qword_1EB84FEE0;
  if (!qword_1EB84FEE0)
  {
    sub_1B3C9C118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FEE0);
  }

  return result;
}

uint64_t (*sub_1B37D4A3C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B37D4524();
  return sub_1B37D4A84;
}

uint64_t sub_1B37D4A84(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1B37D46E0(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_1B37D46E0(v2);

  return swift_unknownObjectRelease();
}

id PickerSuggestionResultFetcher.__allocating_init(photoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:)()
{
  OUTLINED_FUNCTION_5_18();
  v1 = objc_allocWithZone(v0);
  return PickerSuggestionResultFetcher.init(photoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:)();
}

id PickerSuggestionResultFetcher.init(photoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:)()
{
  OUTLINED_FUNCTION_5_18();
  v7 = OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue;
  *&v1[v7] = px_dispatch_queue_create_serial();
  *&v1[OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_currentSuggestion] = 0;
  *&v1[OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_result] = 0;
  *&v1[OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_wallpaperSuggestionCache] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary] = v6;
  v8 = &v1[OBJC_IVAR___PUPickerSuggestionResultFetcher_context];
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v3;
  v9 = &v1[OBJC_IVAR___PUPickerSuggestionResultFetcher_updateHandler];
  *v9 = v2;
  *(v9 + 1) = v0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for PickerSuggestionResultFetcher();
  v10 = v6;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 registerChangeObserver_];

  return v11;
}

void sub_1B37D4D24()
{
  v1 = *(v0 + OBJC_IVAR___PUPickerSuggestionResultFetcher_updateHandler);
  v2 = *(v0 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_result);
  v3 = v2;
  v1(v2);
}

void sub_1B37D4D98(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_result);
  *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_result) = a1;
  v3 = a1;

  sub_1B37D4D24();
}

void sub_1B37D4DF0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_currentSuggestion);
  if (v2)
  {
    v3 = swift_unknownObjectRetain();
    v4 = sub_1B37D4F28(v3, v0);
    v6 = v5;
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_context);
    v10 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_context + 1);
    v11 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_context + 2);
    objc_allocWithZone(type metadata accessor for PickerSuggestionResultFetcher.Result());
    if (v11)
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | v9;
    swift_unknownObjectRetain();
    v16 = v4;
    v15 = sub_1B37D3DD8(v14 | v12, v2, v4, v6, v8);
    sub_1B37D4D98(v15);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1B37D4D98(0);
  }
}

id sub_1B37D4F28(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1B3C98118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C9C238();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  sub_1B3C9C3B8();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v79 = sub_1B37D5D14();
    v9 = v8;

    v10 = sub_1B370B9C0(v9);
    v11 = sub_1B370BA54(v10);

    v12 = *(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary);
    v13 = sub_1B3C9C5E8();
    v15 = v14;
    objc_allocWithZone(MEMORY[0x1E69788E0]);
    v16 = v12;
    sub_1B37EA7D0(v11, v16, v13, v15, 0, 0, 0, 0);
    v18 = v17;
    if ([v17 firstObject])
    {
      v80 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B3C9C3A8();
      v24 = sub_1B3C9C398();
      if (v24 == sub_1B3C9C398())
      {
        v80 = objc_opt_self();
        v25 = [v80 coldStartDeviceOwnerWallpaperInPhotoLibrary_];
        v78[1] = sub_1B3710718(0, &qword_1EB84F770);
        v26 = sub_1B3C9C788();

        if (qword_1EB850040 != -1)
        {
          swift_once();
        }

        v27 = sub_1B3C9A558();
        __swift_project_value_buffer(v27, qword_1EB854ED0);
        v28 = sub_1B3C9A538();
        v29 = sub_1B3C9CAE8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1B36F3000, v28, v29, "Device owner suggestion: fallback to cold start device owner wallpaper assets", v30, 2u);
          MEMORY[0x1B8C6EC70](v30, -1, -1);
        }

        if (sub_1B3711890(v26))
        {
          v31 = 0x1E6978000;
        }

        else
        {

          v41 = sub_1B3C9A538();
          v42 = sub_1B3C9CAE8();
          v31 = 0x1E6978000uLL;
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_1B36F3000, v41, v42, "Device owner suggestion: fallback to cold start Portrait wallpaper assets", v43, 2u);
            MEMORY[0x1B8C6EC70](v43, -1, -1);
          }

          v44 = [v80 coldStartPortraitWallpaperInPhotoLibrary_];
          v26 = sub_1B3C9C788();
        }

        v45 = sub_1B370BA54(v26);

        v46 = sub_1B3C9C5E8();
        v48 = v47;
        objc_allocWithZone(*(v31 + 2272));
        sub_1B37EA7D0(v45, v16, v46, v48, 0, 0, 0, 0);
        v50 = v49;

        v80 = v50;
      }

      else
      {
        v80 = v18;
      }
    }

    v51 = swift_allocObject();
    *(v51 + 16) = MEMORY[0x1E69E7CC8];
    v52 = swift_allocObject();
    v53 = MEMORY[0x1E69E7CD0];
    *(v52 + 16) = MEMORY[0x1E69E7CD0];
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    v55 = swift_allocObject();
    v55[2] = v9;
    v55[3] = v51;
    v55[4] = v54;
    v55[5] = v52;
    aBlock[4] = sub_1B37D6568;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B37D5B9C;
    aBlock[3] = &block_descriptor_44;
    v56 = _Block_copy(aBlock);

    v57 = v79;
    [v79 enumerateObjectsUsingBlock_];
    _Block_release(v56);
    swift_beginAccess();
    v58 = *(v54 + 16);
    swift_beginAccess();

    sub_1B37F6978(v59, v58);

    swift_unknownObjectRelease();

    swift_beginAccess();

    return v80;
  }

  sub_1B3C9C3D8();
  if (swift_dynamicCastClass())
  {
    v19 = objc_opt_self();
    swift_unknownObjectRetain();
    v20 = sub_1B379BDE4();
    v22 = v21;
    v23 = [*(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary) librarySpecificFetchOptions];
    v7 = sub_1B37D64FC(v20, v22, v23, v19);

LABEL_17:
    swift_unknownObjectRelease();
    return v7;
  }

  sub_1B3C9C428();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    swift_unknownObjectRetain();
    v7 = sub_1B37D5C20(v33, a2);
    goto LABEL_17;
  }

  sub_1B3C9C488();
  if (!swift_dynamicCastClass())
  {
    sub_1B3C9C388();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for PickerSuggestionResultFetcher();
      v61 = *(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary);
      v62 = 1608;
    }

    else
    {
      sub_1B3C9C358();
      if (!swift_dynamicCastClass())
      {
        sub_1B3C9C468();
        if (swift_dynamicCastClass())
        {
          return sub_1B3C99E08();
        }

        sub_1B3C9C3F8();
        if (swift_dynamicCastClass())
        {
          return sub_1B379DCD4(*(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary));
        }

        sub_1B3C9C478();
        if (!swift_dynamicCastClass())
        {
          return 0;
        }

        return sub_1B379D390(*(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary));
      }

      type metadata accessor for PickerSuggestionResultFetcher();
      v61 = *(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary);
      v62 = 1639;
    }

    return static PickerSuggestionResultFetcher.fetchResult(for:in:)(v62, v61);
  }

  v34 = [*(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary) librarySpecificFetchOptions];
  [v34 setFetchLimit_];
  v7 = [objc_opt_self() fetchLivePhotoTabAssetsWithOptions_];
  sub_1B3710718(0, &qword_1EB852330);
  v35 = sub_1B3C9CF88();
  v36 = [v7 count];
  v37 = objc_opt_self();
  v38 = sub_1B3C9C9B8();
  sub_1B3C980F8();
  v39 = sub_1B3C980C8();
  (*(v4 + 8))(v6, v3);
  aBlock[0] = 0;
  if (v36)
  {
    v40 = [v37 reportFeatureCheckpoint:60 forFeature:v38 atDate:v39 error:aBlock];
  }

  else
  {
    v40 = [v37 reportFeatureCheckpoint:10 forFeature:v38 atDate:v39 error:aBlock];
  }

  v63 = v40;

  if (v63)
  {
    v64 = aBlock[0];
  }

  else
  {
    v65 = aBlock[0];
    v66 = sub_1B3C97F28();

    swift_willThrow();
    if (qword_1EB850040 != -1)
    {
      swift_once();
    }

    v67 = sub_1B3C9A558();
    __swift_project_value_buffer(v67, qword_1EB854ED0);
    v68 = v35;
    v69 = v66;
    v70 = sub_1B3C9A538();
    v71 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412546;
      *(v72 + 4) = v68;
      *v73 = v68;
      *(v72 + 12) = 2112;
      v74 = v68;
      v75 = v66;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 14) = v76;
      v73[1] = v76;
      _os_log_impl(&dword_1B36F3000, v70, v71, "Error: Unable to report background system task checkpoint %@: %@", v72, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8567E0);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v73, -1, -1);
      MEMORY[0x1B8C6EC70](v72, -1, -1);
    }

    else
    {
    }
  }

  return v7;
}

uint64_t sub_1B37D59FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 uuid];
  v9 = sub_1B3C9C5E8();
  v11 = v10;

  v12 = sub_1B3898F18(v9, v11, a4);

  if (v12)
  {
    result = sub_1B37D6574(v12);
    if (v14)
    {
      v15 = result;
      v16 = v14;
      [a1 subtype];
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(a5 + 16);
      sub_1B371FE38();
      *(a5 + 16) = v17;
      swift_endAccess();
      swift_beginAccess();

      sub_1B3734AC0(&v17, v15, v16);
      swift_endAccess();

      if ([a1 availableFeatures])
      {
        swift_beginAccess();
        sub_1B3734AC0(&v17, v15, v16);
        swift_endAccess();
      }
    }
  }

  return result;
}

void sub_1B37D5B9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1B37D5C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary);
  v3 = sub_1B379BEC8(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v2 librarySpecificFetchOptions];
  v6 = sub_1B3C9C418();
  v7 = objc_opt_self();
  v8 = v7;
  if (v6)
  {
    v9 = [v7 fetchExtendedCuratedAssetsInAssetCollection:v4 options:v5];
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v9 = [v8 fetchAssetsInAssetCollection:v4 options:v11];

    v4 = v11;
    v5 = v10;
  }

  return v9;
}

id sub_1B37D5D14()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_wallpaperSuggestionCache);
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  sub_1B371F084();
  if ((v4 & 1) == 0)
  {

LABEL_5:
    v6 = *(v1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary);
    v5 = sub_1B379B640(v6);
    sub_1B3C9C3B8();
    v7 = OUTLINED_FUNCTION_42();
    sub_1B379BD14(v7, v6);
    return v5;
  }

  v5 = *(*(v2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1B37D5DD4(void *a1)
{
  v3 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_14_1();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = a1;
  OUTLINED_FUNCTION_1_26(v17);
  OUTLINED_FUNCTION_3_10(COERCE_DOUBLE(1107296256));
  v24 = v18;
  v25 = &block_descriptor_15;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  v21 = a1;
  sub_1B3C9C138();
  sub_1B37D49E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v16, v9, v19);
  _Block_release(v19);
  (*(v5 + 8))(v9, v3);
  (*(v12 + 8))(v16, v10);
}

void sub_1B37D5FF4(uint64_t a1)
{
  v15 = OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_wallpaperSuggestionCache;
  v1 = *(a1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_wallpaperSuggestionCache);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v16 = OBJC_IVAR___PUPickerSuggestionResultFetcher_photoLibrary;
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v8 = *(*(v1 + 56) + ((v6 << 10) | (16 * __clz(__rbit64(v4)))));
        sub_1B3710718(0, &unk_1EB850C80);
        v9 = v8;

        v10 = sub_1B3C9CFC8();
        if (v10)
        {
          v11 = v10;
          v12 = [v10 fetchResultAfterChanges];
          sub_1B3C9C3B8();
          sub_1B379BD14(v12, *(a1 + v16));

          v9 = v11;
        }

        else
        {
        }

        v4 &= v4 - 1;
      }

      while (v4);
    }
  }

  if (*(a1 + OBJC_IVAR___PUPickerSuggestionResultFetcher_workQueue_currentSuggestion))
  {
    sub_1B3C9C3B8();
    if (swift_dynamicCastClass())
    {
      if (*(*(a1 + v15) + 16))
      {
        swift_unknownObjectRetain();

        sub_1B371F084();
        v14 = v13;

        if (v14)
        {
          sub_1B37D4DF0();
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

id PickerSuggestionResultFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerSuggestionResultFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B37D64FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B3C9C5A8();

  v7 = [a4 fetchAssetsForSearchLookupIdentifier:v6 options:a3];

  return v7;
}

uint64_t sub_1B37D6574(void *a1)
{
  v2 = [a1 uuid];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return swift_getObjectType();
}

Swift::Void __swiftcall PUOneUpTitlePalettePlaygroundViewController.viewDidLoad()()
{
  v2.super_class = PUOneUpTitlePalettePlaygroundViewController;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  sub_1B373ED44(0xD000000000000018, 0x80000001B3D17640, v1);

  [v0 setupView];
  [v0 updateExuberatedHeightStatusLabel];
  [v0 updateConfigurationData];
}

void sub_1B37D6734()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [v0 exuberatedHeightStatusLabel];
  [v5 addSubview_];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v0 segmentedControl];
  [v8 addSubview_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v0 tableView];
  [v11 addSubview_];

  v13 = [v0 tableView];
  [v13 setDataSource_];

  v14 = [v0 tableView];
  _s26TitleSubtitleTableViewCellCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = sub_1B3C9C5A8();
  [v14 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v16];

  v17 = [v0 tableView];
  [v17 setRowHeight_];

  v18 = [v0 segmentedControl];
  [v18 addTarget:v0 action:sel_segmentedControlChanged forControlEvents:4096];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B3D03C40;
  v20 = [v0 exuberatedHeightStatusLabel];
  v21 = [v20 topAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 topAnchor];
  v26 = [v21 constraintEqualToAnchor:v25 constant:8.0];

  *(v19 + 32) = v26;
  v27 = [v0 exuberatedHeightStatusLabel];
  v28 = [v27 leadingAnchor];

  v29 = [v0 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v28 constraintEqualToAnchor:v32 constant:8.0];

  *(v19 + 40) = v33;
  v34 = [v0 exuberatedHeightStatusLabel];
  v35 = [v34 trailingAnchor];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 trailingAnchor];
  v40 = [v35 constraintEqualToAnchor:v39 constant:-8.0];

  *(v19 + 48) = v40;
  v41 = [v0 segmentedControl];
  v42 = [v41 topAnchor];

  v43 = [v0 exuberatedHeightStatusLabel];
  v44 = [v43 bottomAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:8.0];
  *(v19 + 56) = v45;
  v46 = [v0 segmentedControl];
  v47 = [v46 leadingAnchor];

  v48 = [v0 view];
  if (!v48)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v49 = v48;
  v50 = [v48 safeAreaLayoutGuide];

  v51 = [v50 leadingAnchor];
  v52 = [v47 constraintEqualToAnchor:v51 constant:8.0];

  *(v19 + 64) = v52;
  v53 = [v0 segmentedControl];
  v54 = [v53 trailingAnchor];

  v55 = [v0 view];
  if (!v55)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v56 = v55;
  v57 = [v55 safeAreaLayoutGuide];

  v58 = [v57 trailingAnchor];
  v59 = [v54 constraintEqualToAnchor:v58 constant:-8.0];

  *(v19 + 72) = v59;
  v60 = [v0 tableView];
  v61 = [v60 topAnchor];

  v62 = [v0 segmentedControl];
  v63 = [v62 bottomAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:8.0];
  *(v19 + 80) = v64;
  v65 = [v0 tableView];
  v66 = [v65 leadingAnchor];

  v67 = [v0 view];
  if (!v67)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v68 = v67;
  v69 = [v67 safeAreaLayoutGuide];

  v70 = [v69 leadingAnchor];
  v71 = [v66 constraintEqualToAnchor_];

  *(v19 + 88) = v71;
  v72 = [v0 tableView];
  v73 = [v72 trailingAnchor];

  v74 = [v0 view];
  if (!v74)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v75 = v74;
  v76 = [v74 safeAreaLayoutGuide];

  v77 = [v76 trailingAnchor];
  v78 = [v73 constraintEqualToAnchor_];

  *(v19 + 96) = v78;
  v79 = [v0 tableView];
  v80 = [v79 bottomAnchor];

  v81 = [v0 view];
  if (!v81)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v82 = v81;
  v83 = objc_opt_self();
  v84 = [v82 bottomAnchor];

  v85 = [v80 constraintEqualToAnchor_];
  *(v19 + 104) = v85;
  sub_1B3710718(0, &qword_1EB84FE50);
  v86 = sub_1B3C9C778();

  [v83 activateConstraints_];
}

void sub_1B37D7184()
{
  v5 = [v0 exuberatedHeightStatusLabel];
  sub_1B3C9D378();

  v1 = [v0 hasExuberatedHeight];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 5457241;
  }

  else
  {
    v3 = 20302;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x1B8C69C10](v3, v4);

  sub_1B383C9E4(0xD00000000000001FLL, 0x80000001B3D17E50, v5);
}

uint64_t sub_1B37D72E0()
{
  v0 = sub_1B3C99128();
  HasExuberatedLineHeight = CTFontHasExuberatedLineHeight();

  return HasExuberatedLineHeight;
}

void sub_1B37D7314()
{
  [v0 updateConfigurationData];
  v1 = [v0 tableView];
  [v1 reloadData];
}

void sub_1B37D73C4()
{
  v1 = v0;
  v2 = [v0 segmentedControl];
  v3 = [v2 selectedSegmentIndex];

  v4 = 0xED00006C6C69662ELL;
  v5 = 0x322E6E6F73726570;
  if (v3 != 2)
  {
    v5 = 0;
    v4 = 0;
  }

  if (v3 == 1)
  {
    v6 = 0x662E6E6F73726570;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 1)
  {
    v7 = 0xEB000000006C6C69;
  }

  else
  {
    v7 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B3D001A0;
  v9 = _s26TitleSubtitleConfigurationCMa();
  v10 = objc_allocWithZone(v9);

  *(v8 + 32) = sub_1B37D7E5C(0xD00000000000001ELL, 0x80000001B3D17930, 0x202030312079614DLL, 0xEF4D502036353A36, v6, v7);
  v11 = objc_allocWithZone(v9);

  *(v8 + 40) = sub_1B37D7E5C(0x6C432061746E6153, 0xEB00000000617261, 0xD000000000000011, 0x80000001B3D17950, v6, v7);
  v12 = objc_allocWithZone(v9);

  *(v8 + 48) = sub_1B37D7E5C(0xD00000000000002CLL, 0x80000001B3D17970, 0xD000000000000019, 0x80000001B3D179A0, v6, v7);
  v13 = objc_allocWithZone(v9);

  *(v8 + 56) = sub_1B37D7E5C(0x7961646F54, 0xE500000000000000, 0x4D502036353A3231, 0xE800000000000000, v6, v7);
  if ([v1 hasExuberatedHeight])
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B3D03C50;
    v15 = objc_allocWithZone(v9);

    *(v14 + 32) = sub_1B37D7E5C(0x1000000000000019, 0x80000001B3D179C0, 0x1000000000000022, 0x80000001B3D179E0, v6, v7);
    v16 = objc_allocWithZone(v9);

    *(v14 + 40) = sub_1B37D7E5C(0x1000000000000030, 0x80000001B3D17A10, 0x100000000000002ELL, 0x80000001B3D17A50, v6, v7);
    v17 = objc_allocWithZone(v9);

    *(v14 + 48) = sub_1B37D7E5C(0x9CA4E086A4E0, 0xA600000000000000, 0x1000000000000014, 0x80000001B3D17A80, v6, v7);
    v18 = objc_allocWithZone(v9);

    *(v14 + 56) = sub_1B37D7E5C(0x88D981DBA7D884D9, 0xAA0000000000B1D8, 0x100000000000001CLL, 0x80000001B3D17AA0, v6, v7);
    v19 = objc_allocWithZone(v9);

    *(v14 + 64) = sub_1B37D7E5C(0x100000000000002FLL, 0x80000001B3D17AC0, 0x1000000000000020, 0x80000001B3D17AF0, v6, v7);
    v20 = objc_allocWithZone(v9);

    *(v14 + 72) = sub_1B37D7E5C(2899878616, 0xA400000000000000, 0x81DBBED988D9AFD8, 0xAF30333A3120B1D8, v6, v7);
    v21 = objc_allocWithZone(v9);

    *(v14 + 80) = sub_1B37D7E5C(0x1000000000000018, 0x80000001B3D17B20, 0x100000000000002BLL, 0x80000001B3D17B40, v6, v7);
    v22 = objc_allocWithZone(v9);

    *(v14 + 88) = sub_1B37D7E5C(0x1000000000000065, 0x80000001B3D17B70, 0x100000000000002ELL, 0x80000001B3D17BE0, v6, v7);
    v23 = objc_allocWithZone(v9);

    *(v14 + 96) = sub_1B37D7E5C(0x1000000000000012, 0x80000001B3D17C10, 0x1000000000000018, 0x80000001B3D17C30, v6, v7);
    v24 = objc_allocWithZone(v9);

    *(v14 + 104) = sub_1B37D7E5C(0x1000000000000054, 0x80000001B3D17C50, 0x10000000000000AFLL, 0x80000001B3D17CB0, v6, v7);
    v25 = objc_allocWithZone(v9);
    *(v14 + 112) = sub_1B37D7E5C(0x1000000000000030, 0x80000001B3D17D60, 0x10000000000000A8, 0x80000001B3D17DA0, v6, v7);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1B37E76DC(v14);
  v26 = sub_1B3C9C778();

  [v1 setConfigurations_];
}

id sub_1B37D7A4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTextAlignment_];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1B37D7B30()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B37EABC0(0, 3, 0);
  v0 = 0;
  v1 = v16;
  v2 = &unk_1F2AB37B0;
  do
  {
    v3 = v2[v0 + 32];
    if (v3 == 1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x4C20646572616853;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001B3D17EF0;
    }

    else
    {
      v5 = 0xEE00797261726269;
    }

    if (v2[v0 + 32])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x6567646142206F4ELL;
    }

    if (v2[v0 + 32])
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    v17 = v1;
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    if (v9 >= v8 >> 1)
    {
      v11 = v2;
      sub_1B37EABC0((v8 > 1), v9 + 1, 1);
      v2 = v11;
      v1 = v17;
    }

    ++v0;
    *(v1 + 16) = v9 + 1;
    v10 = v1 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
  }

  while (v0 != 3);
  v12 = sub_1B370BBD8(v1);

  v13 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v14 = sub_1B37D8CC8(v12);
  [v14 setSelectedSegmentIndex_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  return v14;
}

id sub_1B37D7E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_title];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_subtitle];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_symbol];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = _s26TitleSubtitleConfigurationCMa();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1B37D7F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleTableViewCell_titleSubtitleView;
  type metadata accessor for OneUpNavigationTitleSubtitleView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v7 = sub_1B3C9C5A8();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = _s26TitleSubtitleTableViewCellCMa();
  v8 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = v8;
  sub_1B37D8160();

  return v9;
}

void sub_1B37D80B0()
{
  v1 = OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleTableViewCell_titleSubtitleView;
  type metadata accessor for OneUpNavigationTitleSubtitleView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B37D8160()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleTableViewCell_titleSubtitleView];
  [v1 addSubview_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B3D00630;
  v5 = [v2 centerXAnchor];
  v6 = [v0 contentView];
  v7 = [v6 centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v2 centerYAnchor];
  v10 = [v0 contentView];
  v11 = [v10 centerYAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintGreaterThanOrEqualToAnchor_];
  *(v4 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintLessThanOrEqualToAnchor_];
  *(v4 + 56) = v20;
  v21 = [v2 leadingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintGreaterThanOrEqualToAnchor_];
  *(v4 + 64) = v24;
  v25 = [v2 trailingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintLessThanOrEqualToAnchor_];
  *(v4 + 72) = v28;
  sub_1B3710718(0, &qword_1EB84FE50);
  v29 = sub_1B3C9C778();

  [v3 activateConstraints_];

  return [v0 setSelectionStyle_];
}

id sub_1B37D85D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id PUOneUpTitlePalettePlaygroundViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1B3C9C5A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{
  v6 = OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_exuberatedHeightStatusLabel;
  *&v3[v6] = sub_1B37D7A4C();
  v7 = OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_segmentedControl;
  *&v3[v7] = sub_1B37D7B30();
  v8 = OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_tableView;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD020]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v8] = v9;
  *&v3[OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_configurations] = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v10 = sub_1B3C9C5A8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = PUOneUpTitlePalettePlaygroundViewController;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id PUOneUpTitlePalettePlaygroundViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_exuberatedHeightStatusLabel;
  *&v1[v3] = sub_1B37D7A4C();
  v4 = OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_segmentedControl;
  *&v1[v4] = sub_1B37D7B30();
  v5 = OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_tableView;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD020]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR___PUOneUpTitlePalettePlaygroundViewController_configurations] = MEMORY[0x1E69E7CC0];
  v9.receiver = v1;
  v9.super_class = PUOneUpTitlePalettePlaygroundViewController;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

Swift::Int __swiftcall PUOneUpTitlePalettePlaygroundViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = [v2 configurations];
  _s26TitleSubtitleConfigurationCMa();
  v4 = sub_1B3C9C788();

  v5 = sub_1B3711890(v4);

  return v5;
}

uint64_t PUOneUpTitlePalettePlaygroundViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  v4 = sub_1B3C9C5A8();
  v5 = sub_1B3C98258();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  _s26TitleSubtitleTableViewCellCMa();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = sub_1B3C98278();
  v9 = [v2 configurations];
  _s26TitleSubtitleConfigurationCMa();
  v10 = sub_1B3C9C788();

  sub_1B37ED0BC(v8, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8C6A930](v8, v10);
  }

  else
  {
    v11 = *(v10 + 8 * v8 + 32);
  }

  v12 = v11;

  sub_1B37D855C(v12);

  return v7;
}

id sub_1B37D8CC8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1B3C9C778();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithItems_];

  return v3;
}

BOOL sub_1B37D8D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 8;
    v6 = sub_1B3C9C398();
  }

  while (v6 != sub_1B3C9C398());
  return v4 != 0;
}

BOOL sub_1B37D8DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

id OneUpVideoPlayerController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpVideoPlayerController.init()()
{
  *&v0[OBJC_IVAR___PUOneUpVideoPlayerController_player] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___PUOneUpVideoPlayerController_oneUpState;
  if (qword_1EB84FF38 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v2 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB84FF40);
  OUTLINED_FUNCTION_4_21();
  sub_1B37D96B4(v3, &v0[v1]);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OneUpVideoPlayerController(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_1B37D8F70()
{
  v1 = OBJC_IVAR___PUOneUpVideoPlayerController_player;
  OUTLINED_FUNCTION_3_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B37D900C(void *a1)
{
  v3 = OBJC_IVAR___PUOneUpVideoPlayerController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1B37D90A8(v4);
}

void sub_1B37D9078(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B37D900C(v1);
}

void *sub_1B37D90A8(uint64_t a1)
{
  v3 = OBJC_IVAR___PUOneUpVideoPlayerController_player;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (v5 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result oneUpVideoPlayerControllerPlayerDidChange_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B37D9220()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B37D92AC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___PUOneUpVideoPlayerController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_17_4();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B37D9328;
}

void sub_1B37D9328(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t OneUpVideoPlayerController.OneUpState.currentAsset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855098);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  sub_1B37D9738(v0 + *(v5 + 32), v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8550A0);
  OUTLINED_FUNCTION_21_9(v4);
  if (v7)
  {
    sub_1B371B36C(v4, &qword_1EB855098);
    return 0;
  }

  else
  {
    v8 = MEMORY[0x1B8C675A0](v6);
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  return v8;
}

id OneUpVideoPlayerController.OneUpState.mediaProvider.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t OneUpVideoPlayerController.OneUpState.init(mediaProvider:currentAsset:assetIsFullyInFocus:isVideoAllowed:canLoadNewVideo:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X8>)
{
  *a5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8550A0);
  type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  OUTLINED_FUNCTION_1_27(&qword_1EB84FF08);
  result = sub_1B3C99FE8();
  *(a5 + 8) = a2;
  *(a5 + 9) = a3;
  *(a5 + 10) = a4;
  return result;
}

uint64_t sub_1B37D9594()
{
  v0 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  __swift_allocate_value_buffer(v0, qword_1EB84FF40);
  v1 = __swift_project_value_buffer(v0, qword_1EB84FF40);
  *v1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8550A0);
  sub_1B37D9DBC(&qword_1EB84FF08);
  result = sub_1B3C99FE8();
  *(v1 + 8) = 0;
  *(v1 + 10) = 0;
  return result;
}

uint64_t sub_1B37D9640()
{
  if (qword_1EB84FF38 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);

  return __swift_project_value_buffer(v0, qword_1EB84FF40);
}

uint64_t sub_1B37D96B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37D9738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static OneUpVideoPlayerController.OneUpState.null.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FF38 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v2 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB84FF40);
  OUTLINED_FUNCTION_3_0();
  return sub_1B37D96B4(v3, a1);
}

uint64_t static OneUpVideoPlayerController.OneUpState.null.setter(uint64_t a1)
{
  if (qword_1EB84FF38 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v2 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB84FF40);
  OUTLINED_FUNCTION_17_4();
  sub_1B37D989C(a1, v3);
  swift_endAccess();
  return sub_1B37D9900(a1);
}

uint64_t sub_1B37D989C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37D9900(uint64_t a1)
{
  v2 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static OneUpVideoPlayerController.OneUpState.null.modify())()
{
  if (qword_1EB84FF38 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v0 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  __swift_project_value_buffer(v0, qword_1EB84FF40);
  OUTLINED_FUNCTION_17_4();
  return j__swift_endAccess;
}

uint64_t sub_1B37D99D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B37D9640();
  swift_beginAccess();
  return sub_1B37D96B4(v2, a1);
}

uint64_t sub_1B37D9A24(uint64_t a1)
{
  v2 = sub_1B37D9640();
  swift_beginAccess();
  sub_1B37D989C(a1, v2);
  return swift_endAccess();
}

BOOL static OneUpVideoPlayerController.OneUpState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8550A0);
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855098);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8550B0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*a1)
  {
    if (!v18)
    {
      return 0;
    }

    v30 = v5;
    sub_1B3710718(0, &unk_1EB84FED0);
    v19 = v18;
    v20 = v17;
    v21 = sub_1B3C9CFA8();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v30 = v5;
    if (v18)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  v22 = *(type metadata accessor for OneUpVideoPlayerController.OneUpState(0) + 32);
  v23 = *(v13 + 48);
  sub_1B37D9738(a1 + v22, v16);
  sub_1B37D9738(a2 + v22, &v16[v23]);
  OUTLINED_FUNCTION_21_9(v16);
  if (v24)
  {
    OUTLINED_FUNCTION_21_9(&v16[v23]);
    if (v24)
    {
      sub_1B371B36C(v16, &qword_1EB855098);
      return 1;
    }

    goto LABEL_17;
  }

  sub_1B37D9738(v16, v12);
  OUTLINED_FUNCTION_21_9(&v16[v23]);
  if (v24)
  {
    (*(v30 + 8))(v12, v4);
LABEL_17:
    sub_1B371B36C(v16, &qword_1EB8550B0);
    return 0;
  }

  v26 = v30;
  (*(v30 + 32))(v8, &v16[v23], v4);
  sub_1B37D9DBC(&unk_1EB84FEF8);
  v27 = sub_1B3C9C528();
  v28 = *(v26 + 8);
  v28(v8, v4);
  v28(v12, v4);
  sub_1B371B36C(v16, &qword_1EB855098);
  return (v27 & 1) != 0;
}

uint64_t sub_1B37D9DBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8550A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B37D9E10(uint64_t a1)
{
  v2 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B37D96B4(a1, v4);
  return sub_1B37D9FA4(v4);
}

void sub_1B37D9E9C(uint64_t a1)
{
  v3 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___PUOneUpVideoPlayerController_oneUpState;
  swift_beginAccess();
  sub_1B37D96B4(v1 + v6, v5);
  LOBYTE(a1) = static OneUpVideoPlayerController.OneUpState.== infix(_:_:)(v5, a1);
  sub_1B37D9900(v5);
  if ((a1 & 1) == 0)
  {
    sub_1B37DA1A0();
  }
}

uint64_t sub_1B37D9F58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PUOneUpVideoPlayerController_oneUpState;
  OUTLINED_FUNCTION_3_0();
  return sub_1B37D96B4(v1 + v3, a1);
}

uint64_t sub_1B37D9FA4(uint64_t a1)
{
  v3 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR___PUOneUpVideoPlayerController_oneUpState;
  OUTLINED_FUNCTION_4_21();
  sub_1B37D96B4(v1 + v8, v7);
  OUTLINED_FUNCTION_17_4();
  sub_1B37D989C(a1, v1 + v8);
  swift_endAccess();
  sub_1B37D9E9C(v7);
  sub_1B37D9900(a1);
  return sub_1B37D9900(v7);
}

void (*sub_1B37DA064(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  OUTLINED_FUNCTION_8_0(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR___PUOneUpVideoPlayerController_oneUpState;
  OUTLINED_FUNCTION_4_21();
  sub_1B37D96B4(v1 + v8, v7);
  return sub_1B37DA124;
}

void sub_1B37DA124(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1B37D96B4(v4, v3);
    sub_1B37D9FA4(v3);
    sub_1B37D9900(v4);
  }

  else
  {
    sub_1B37D9FA4(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1B37DA1A0()
{
  v1 = v0;
  v2 = type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = v1 + OBJC_IVAR___PUOneUpVideoPlayerController_oneUpState;
  OUTLINED_FUNCTION_4_21();
  sub_1B37D96B4(v7, v6);
  v8 = OneUpVideoPlayerController.OneUpState.currentAsset.getter();
  sub_1B37D9900(v6);
  if (v8 && sub_1B37D8DFC([v8 playbackStyle], &unk_1F2AB3800))
  {
    v9 = *(v7 + 8) ^ 1;
  }

  else
  {
    v9 = 1;
  }

  if (*(v7 + 9) == 1)
  {
    v10 = (v8 == 0) | *(v7 + 8);
  }

  else
  {
    v10 = 1;
  }

  v11 = *v7;
  if (*v7 && !((v8 == 0) | v9 & 1) && *(v7 + 9))
  {
    v12 = OBJC_IVAR___PUOneUpVideoPlayerController_player;
    OUTLINED_FUNCTION_4_21();
    v13 = *(v1 + v12);
    v14 = v11;
    if (v13)
    {
      v15 = [v13 asset];
      ObjectType = swift_getObjectType();
      aBlock[0] = v15;
      v13 = sub_1B3C9D688();
      __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    }

    v16 = [v8 isEqual_];
    swift_unknownObjectRelease();
    if ((v16 & 1) != 0 || (*(v7 + 10) & 1) == 0)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B3710718(0, &unk_1EB84FE40);
      v17 = v11;
      v18 = swift_unknownObjectRetain();
      v19 = sub_1B37DA480(v18, v17);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v26 = sub_1B37DABF4;
      v27 = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B370C014;
      ObjectType = &block_descriptor_31;
      v21 = _Block_copy(aBlock);
      v22 = v19;

      [v22 performChanges_];
      _Block_release(v21);
      v23 = v22;
      sub_1B37D900C(v22);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v10)
    {
      sub_1B37D900C(0);
    }

    swift_unknownObjectRelease();
  }
}

id sub_1B37DA480(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 mediaProvider:a2];
  swift_unknownObjectRelease();

  return v3;
}

id sub_1B37DA4E0(void *a1)
{
  if ([objc_opt_self() isOneUpRefreshEnabled])
  {
    IsVideoLoopingEnabled = PXPreferencesIsVideoLoopingEnabled();
  }

  else
  {
    IsVideoLoopingEnabled = 0;
  }

  [a1 setLoopingEnabledForAllVideos_];
  sub_1B3710718(0, &qword_1EB84FE30);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v3 minimumDurationForVideoLooping];
  v5 = v4;

  return [a1 setMinimumDurationForLooping_];
}

id OneUpVideoPlayerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpVideoPlayerController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37DA648()
{
  result = type metadata accessor for OneUpVideoPlayerController.OneUpState(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B37DA898()
{
  sub_1B37DA928();
  if (v0 <= 0x3F)
  {
    sub_1B37DA990();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B37DA928()
{
  if (!qword_1EB84FE78)
  {
    sub_1B3710718(255, &unk_1EB84FED0);
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84FE78);
    }
  }
}

void sub_1B37DA990()
{
  if (!qword_1EB84FEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8550A0);
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84FEF0);
    }
  }
}

uint64_t sub_1B37DA9F4(void *a1)
{
  type metadata accessor for OneUpVideoPlayerController.OneUpState(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = [a1 mediaProvider];
  v7 = [a1 currentAssetReference];
  v8 = [v7 asset];

  v9 = [a1 assetViewModelForCurrentAssetReference];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isFullyInFocus];
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 isVideoContentAllowed];
  v13 = [a1 isScrubbing] ^ 1;
  *v5 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8550A0);
  OUTLINED_FUNCTION_1_27(&qword_1EB84FF08);
  sub_1B3C99FE8();
  *(v5 + 8) = v11;
  *(v5 + 9) = v12;
  *(v5 + 10) = v13;
  return sub_1B37D9FA4(v5);
}

void sub_1B37DAC04()
{
  OUTLINED_FUNCTION_20_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v38 = v17;
  sub_1B3C9A558();
  OUTLINED_FUNCTION_0();
  v35 = v19;
  v36 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v34 = v21 - v20;
  v37 = sub_1B3C9CC78();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = v26 - v25;
  v28 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v29 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_8();
  sub_1B3710718(0, &qword_1EB84FE60);
  sub_1B3C9C158();
  sub_1B37DC644(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
  sub_1B3C9D278();
  (*(v23 + 104))(v27, *MEMORY[0x1E69E8090], v37);
  *(v0 + 16) = sub_1B3C9CCA8();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 112) = 1065353216;
  *(v0 + 120) = 0;
  *(v0 + 40) = v38;
  *(v0 + 48) = v16;
  *(v0 + 56) = v14;
  *(v0 + 64) = v12;
  *(v0 + 72) = v10;
  *(v0 + 80) = v8;
  *(v0 + 88) = v6;
  *(v0 + 96) = v4;
  *(v0 + 104) = v2;
  v30 = v38;
  v39.origin.x = v8;
  v39.origin.y = v6;
  v39.size.width = v4;
  v39.size.height = v2;
  v40.origin.x = v16;
  v40.origin.y = v14;
  v40.size.width = v12;
  v40.size.height = v10;
  if (CGRectContainsRect(v39, v40))
  {
  }

  else
  {
    sub_1B3C9A3C8();
    v31 = sub_1B3C9A538();
    v32 = sub_1B3C9CAC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_12_13();
      *v33 = 0;
      _os_log_impl(&dword_1B36F3000, v31, v32, "Style frame mismatch!", v33, 2u);
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    (*(v35 + 8))(v34, v36);
  }

  OUTLINED_FUNCTION_19_11();
}

void sub_1B37DAFB0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B3C9A558();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v49 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_13();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1B3C9A3C8();
  v16 = sub_1B3C9A538();
  v17 = sub_1B3C9CAA8();
  if (OUTLINED_FUNCTION_22_5(v17))
  {
    v18 = OUTLINED_FUNCTION_12_13();
    *v18 = 0;
    _os_log_impl(&dword_1B36F3000, v16, v17, "Starting style engine preparation asynchronously...", v18, 2u);
    OUTLINED_FUNCTION_3_5();
  }

  v19 = *(v8 + 8);
  v19(v15, v6);
  sub_1B3710718(0, &unk_1EB855130);
  swift_unknownObjectRetain();
  v20 = swift_unknownObjectRetain();
  v21 = sub_1B37DB370(v20, a2);
  v22 = *(v4 + 40);
  v50[0] = 0;
  v23 = [v21 prepareForApplyingStyle:v22 error:v50];
  v24 = v50[0];
  if (v23)
  {
    v25 = *(v4 + 24);
    *(v4 + 24) = v21;
    v26 = v24;
    v27 = v21;
  }

  else
  {
    v48 = v19;
    v28 = v50[0];
    v29 = sub_1B3C97F28();

    swift_willThrow();
    v30 = v49;
    sub_1B3C9A3C8();
    v31 = v29;
    v32 = sub_1B3C9A538();
    v33 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = v6;
      v35 = v34;
      v46 = swift_slowAlloc();
      v50[0] = v46;
      *v35 = 136446210;
      swift_getErrorValue();
      v36 = sub_1B3C9D748();
      v38 = v4;
      v39 = sub_1B3749364(v36, v37, v50);

      *(v35 + 4) = v39;
      v4 = v38;
      _os_log_impl(&dword_1B36F3000, v32, v33, "Failed to prepare style engine: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      OUTLINED_FUNCTION_3_5();
      v6 = v47;
      OUTLINED_FUNCTION_3_5();

      v40 = v49;
    }

    else
    {

      v40 = v30;
    }

    v19 = v48;
    v48(v40, v6);
  }

  sub_1B3C9A3C8();
  v41 = sub_1B3C9A538();
  v42 = sub_1B3C9CAA8();
  if (OUTLINED_FUNCTION_22_5(v42))
  {
    *OUTLINED_FUNCTION_12_13() = 0;
    OUTLINED_FUNCTION_21_10(&dword_1B36F3000, v43, v44, "Finished style engine preparation");
    OUTLINED_FUNCTION_3_5();
  }

  v19(v3, v6);
  *(v4 + 32) = 1;
}

id sub_1B37DB370(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMetalDevice:a1 commandQueue:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B37DB3D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v21 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v20 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  *(v2 + 120) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_1B37DC610;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1B3C9C138();
  sub_1B37DC644(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v16, v10, v18);
  _Block_release(v18);
  (*(v21 + 8))(v10, v5);
  (*(v12 + 8))(v16, v20);
}