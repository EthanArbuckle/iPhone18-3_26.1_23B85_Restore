uint64_t sub_2752C2888@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t Track.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD98, &qword_2752DEDF8);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = sub_2752DE048();
  v10 = OUTLINED_FUNCTION_0(v9);
  v50 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v49 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFDA0, &qword_2752DEE00);
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = sub_2752DDDA8();
  v23 = OUTLINED_FUNCTION_0(v22);
  v48 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v29 = (v28 - v27);
  v30 = sub_2752DE098();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  if ([a1 hasVideo] && (objc_msgSend(a1, sel_isArtistUploadedContent) & 1) == 0)
  {
    v47 = a1;
    sub_2752C2DC8(v47, &unk_2809BFDA0, &qword_2752DEE00, MEMORY[0x277CD7E58], sub_2752D5378, v21);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {

      v44 = *(v48 + 32);
      v44(v29, v21, v22);
      v44(v38, v29, v22);
      v43 = MEMORY[0x277CD8350];
      goto LABEL_12;
    }

    sub_2752C3990(v21, &unk_2809BFDA0, &qword_2752DEE00);
  }

  if (([a1 hasVideo] & 1) == 0)
  {
    sub_2752C2DC8(a1, &qword_2809BFD98, &qword_2752DEDF8, MEMORY[0x277CD8238], sub_2752D5638, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_2752C3990(v8, &qword_2809BFD98, &qword_2752DEDF8);
      goto LABEL_9;
    }

    v41 = v49;
    v42 = *(v50 + 32);
    v42(v49, v8, v9);
    v42(v38, v41, v9);
    v43 = MEMORY[0x277CD8368];
LABEL_12:
    (*(v33 + 104))(v38, *v43, v30);
    v40 = v51;
    (*(v33 + 32))(v51, v38, v30);
    v39 = 0;
    return __swift_storeEnumTagSinglePayload(v40, v39, 1, v30);
  }

LABEL_9:
  v39 = 1;
  v40 = v51;
  return __swift_storeEnumTagSinglePayload(v40, v39, 1, v30);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2752C2DC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, void)@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v16 = &v20 - v15;
  v17 = a4(0);
  a5(a1, MEMORY[0x277D84F90]);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17))
  {
    sub_2752C3990(v16, a2, a3);
    v18 = 1;
  }

  else
  {
    (*(*(v17 - 8) + 32))(a6, v16, v17);
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v18, 1, v17);
}

uint64_t sub_2752C2FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  a4(a1, MEMORY[0x277D84F90]);
  v18 = a5(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    sub_2752C3990(v17, a2, a3);
    v19 = 1;
  }

  else
  {
    (*(*(v18 - 8) + 32))(a6, v17, v18);
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v19, 1, v18);
}

uint64_t sub_2752C3990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t MPModelLibraryDownloadedItemsSnapshot.downloadedSongCatalogIDs.getter()
{
  v1 = OBJC_IVAR___MPModelLibraryDownloadedItemsSnapshot_downloadedSongCatalogIDs;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MPModelLibraryDownloadedItemsSnapshot.downloadedSongCatalogIDs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MPModelLibraryDownloadedItemsSnapshot_downloadedSongCatalogIDs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2752C3BC4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 downloadedSongCatalogIDs];
  sub_2752C3CD8(0, &qword_2809BFFF0, 0x277CCABB0);
  v4 = sub_2752DE2C8();

  *a2 = v4;
}

void sub_2752C3C38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2752C3CD8(0, &qword_2809BFFF0, 0x277CCABB0);
  v4 = sub_2752DE2B8();
  [v3 setDownloadedSongCatalogIDs_];
}

uint64_t sub_2752C3CD8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.EndCollaborationRequest.init(playlist:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_2752DE148();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = a1;
  sub_2752C2F40(v16, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_2752C3F00(v7);
    v17 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_2752DD748();

    (*(v9 + 8))(v15, v8);
    v17 = 0;
  }

  v18 = sub_2752DD768();
  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v18);
}

uint64_t sub_2752C3F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCollaborativePlaylist.EndCollaborationRequest.perform()()
{
  v1 = *(MEMORY[0x277D2A628] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2752C3FF8;

  return MEMORY[0x2821896C8]();
}

uint64_t sub_2752C3FF8(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752C412C, 0, 0);
  }
}

uint64_t sub_2752C412C()
{
  v1 = v0[6];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v4;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    v5 = v0[2];
    v6 = v0[3];
    return sub_2752DE468();
  }
}

uint64_t Artwork.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v8 - v4;
  v8[4] = &type metadata for SoftLinking_ArtworkCatalog;
  v8[5] = sub_2752C4358();
  v8[1] = a1;
  v6 = sub_2752DE0C8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  return sub_2752DE0D8();
}

unint64_t sub_2752C4358()
{
  result = qword_2811ACD98;
  if (!qword_2811ACD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ACD98);
  }

  return result;
}

id static MusicVideo.canBeConverted(from:)(void *a1)
{
  result = [a1 hasVideo];
  if (result)
  {
    return ([a1 isArtistUploadedContent] ^ 1);
  }

  return result;
}

id static MPModelDownloadedSongCatalogStore.shared.getter()
{
  if (qword_2809BFD80 != -1)
  {
    swift_once();
  }

  v1 = qword_2809C0000;

  return v1;
}

id sub_2752C4478()
{
  result = [objc_allocWithZone(MPModelDownloadedSongCatalogStore) init];
  qword_2809C0000 = result;
  return result;
}

MPModelDownloadedSongCatalogStore __swiftcall MPModelDownloadedSongCatalogStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MPModelDownloadedSongCatalogStore()
{
  result = qword_2809C0008;
  if (!qword_2809C0008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0008);
  }

  return result;
}

uint64_t LegacyModelObjectConvertible<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_2752DE368();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  sub_2752DD9A8();
  v16 = sub_2752DE2D8();
  (*(a3 + 24))(a1, v16, a2, a3);
  if (__swift_getEnumTagSinglePayload(v15, 1, a2))
  {
    (*(v11 + 8))(v15, v8);
    v17 = 1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a4, v15, a2);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v17, 1, a2);
}

uint64_t LegacyModelObjectConvertible<>.init(_:requestedRelationshipProperties:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a6;
  v10 = sub_2752DDD38();
  v11 = OUTLINED_FUNCTION_0(v10);
  v47 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_2752DDCB8();
  v19 = OUTLINED_FUNCTION_0(v18);
  v48 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v44 - v26;
  if ((*(a5 + 32))(a1, a3, a5))
  {
    v46 = a2;
    if (dynamic_cast_existential_1_conditional(a3))
    {
      v45 = a1;
      v28 = [a1 identifiers];
      v29 = v50;
      v30 = v28;
      sub_2752DDD68();
      sub_2752C4D60(v17, v27);

      (*(v47 + 8))(v17, v10);
      v31 = v48;
      (*(v48 + 16))(v25, v27, v18);
      v52 = 0;
      memset(v51, 0, sizeof(v51));
      sub_2752DD9A8();
      sub_2752DD998();
      v32 = v45;
      sub_2752DE448();

      sub_2752DE028();

      (*(v31 + 8))(v27, v18);
      return __swift_storeEnumTagSinglePayload(v29, 0, 1, a3);
    }

    if (qword_2811ACD90 != -1)
    {
      swift_once();
    }

    v34 = sub_2752DD988();
    __swift_project_value_buffer(v34, qword_2811ACEF0);
    v35 = sub_2752DD968();
    v36 = sub_2752DE348();
    v37 = a1;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v51[0] = v39;
      *v38 = 136446210;
      v40 = sub_2752DE558();
      v42 = sub_2752C50C8(v40, v41, v51);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2752C1000, v35, v36, "Cannot create a MusicIdentifierSet for item type %{public}s, that does not conform to MusicItemTypeValueProviding.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x277C74BF0](v39, -1, -1);
      MEMORY[0x277C74BF0](v38, -1, -1);
    }
  }

  else
  {
  }

  v43 = v50;

  return __swift_storeEnumTagSinglePayload(v43, 1, 1, a3);
}

uint64_t LegacyModelObjectConvertible<>.convertToLegacyModelObject(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2752CCBC0(a1, a2, a3);
  v4 = [v3 _underlyingModelObject];
  swift_getAssociatedTypeWitness();
  v5 = swift_dynamicCastUnknownClass();
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {

    sub_2752DE3D8();
    MEMORY[0x277C74460](0xD000000000000027, 0x80000002752DF7B0);
    v8 = [v3 _underlyingModelObject];
    v9 = [v8 description];
    v10 = sub_2752DE1B8();
    v12 = v11;

    MEMORY[0x277C74460](v10, v12);

    MEMORY[0x277C74460](0x20726F6620, 0xE500000000000000);
    swift_getDynamicType();
    v13 = sub_2752DE558();
    MEMORY[0x277C74460](v13);

    MEMORY[0x277C74460](544432416, 0xE400000000000000);
    v14 = sub_2752DE558();
    MEMORY[0x277C74460](v14);

    MEMORY[0x277C74460](46, 0xE100000000000000);
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

uint64_t sub_2752C4D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0010, &qword_2752DEF58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_2752DDD88();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_2752DDD38();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0018, &qword_2752DEF60);
  v21 = sub_2752DDD58();
  OUTLINED_FUNCTION_0(v21);
  v23 = v22;
  v25 = *(v24 + 72);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2752DEEF0;
  (*(v23 + 104))(v27 + v26, *MEMORY[0x277CD7CC8], v21);
  sub_2752DDD78();
  v28 = sub_2752DDD48();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
  v29 = swift_unknownObjectRetain();
  return sub_2752CED14(v29, v19, v12, v7, a2);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2752C50C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2752C518C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2752C5650(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2752C518C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2752C528C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2752DE3F8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2752C528C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2752C52D8(a1, a2);
  sub_2752C53F0(&unk_2884050B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2752C52D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2752DE208())
  {
    result = sub_2752C8ED4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2752DE3C8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2752DE3F8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2752C53F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2752C54D4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2752C54D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0020, &qword_2752DEF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2752C5650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2752C56C0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2752DE178();

  return v4;
}

uint64_t sub_2752C572C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2752DE1B8();

  return v4;
}

id sub_2752C578C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_2752DE0C8();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  result = [a1 musicKit_existingColorAnalysis];
  if (result)
  {
    v10 = result;
    v11 = [result musicKit_backgroundColor];
    v12 = [v10 musicKit_primaryTextColor];
    v13 = [v10 musicKit_secondaryTextColor];
    v14 = [v10 musicKit_tertiaryTextColor];
    sub_2752DE0B8();
    swift_unknownObjectRelease();
    sub_2752C6614(a2);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    return sub_2752C667C(v7, a2);
  }

  return result;
}

uint64_t sub_2752C5938()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2752C5A38;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0038, &qword_2752DF080);
  OUTLINED_FUNCTION_0_0(v3);
  v0[11] = 1107296256;
  v0[12] = sub_2752C5BCC;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestImageDataWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2752C5A38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2752C5B64;
  }

  else
  {
    v3 = sub_2752C5B48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2752C5B64()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_2752C5BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_2752C5C68(v5, a3);
  }

  v7 = a2;
  v8 = sub_2752DD648();
  v10 = v9;

  return sub_2752C5CD4(v5, v8, v10);
}

uint64_t sub_2752C5C68(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0040, &qword_2752DF088);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2752C5CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_2752C5CF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_2752C5D0C()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2752C5E0C;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0030, &qword_2752DF070);
  OUTLINED_FUNCTION_0_0(v3);
  v0[11] = 1107296256;
  v0[12] = sub_2752C6014;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestColorAnalysisWithCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2752C5E0C()
{
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2752C5EE4, 0, 0);
}

uint64_t sub_2752C5EE4()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) musicKit_backgroundColor];
    v3 = [v1 musicKit_primaryTextColor];
    v4 = [v1 musicKit_secondaryTextColor];
    v5 = [v1 musicKit_tertiaryTextColor];
  }

  v6 = *(v0 + 152);
  sub_2752DE0B8();
  swift_unknownObjectRelease();
  v7 = sub_2752DE0C8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2752C6014(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  swift_unknownObjectRetain();

  return sub_2752C6064(v3, a2);
}

id sub_2752C6084(void *a1)
{
  v1 = [a1 musicKit_artworkCatalogWithFittingSize_];

  return v1;
}

uint64_t sub_2752C60B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = swift_getObjectType();
  *a2 = a1;

  return swift_unknownObjectRetain();
}

id (*sub_2752C61F4(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[2] = *v1;
  [v3 musicKit_fittingSize];
  *a1 = v4;
  a1[1] = v5;
  return sub_2752C6248;
}

id sub_2752C6260@<X0>(void *a1@<X8>)
{
  result = sub_2752C6084(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2752C628C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752C6320;

  return sub_2752C5924(v2);
}

uint64_t sub_2752C6320()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v5 = v4;
  v6 = *(*v1 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v0)
  {
    v9 = v5;
    v10 = v3;
  }

  return v11(v9, v10);
}

uint64_t sub_2752C6424(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752C64C4;

  return sub_2752C5CF8(a1, v4);
}

uint64_t sub_2752C64C4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2752C6614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752C667C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void sub_2752C677C()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9(0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v36 - v16;
  v18 = sub_2752DE008();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22, v8);
  (*(v13 + 16))(v17, v0, v10);
  v26 = v6(v17, v24);
  v27 = [v26 _underlyingModelObject];
  v28 = *v4;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    OUTLINED_FUNCTION_22();
  }

  else
  {

    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000027);
    v29 = [v26 _underlyingModelObject];
    v30 = [v29 description];
    v31 = sub_2752DE1B8();
    v33 = v32;

    MEMORY[0x277C74460](v31, v33);

    MEMORY[0x277C74460](0x20726F6620, 0xE500000000000000);
    v34 = sub_2752DE558();
    MEMORY[0x277C74460](v34);

    MEMORY[0x277C74460](544432416, 0xE400000000000000);
    sub_2752C3CD8(0, v2, v4);
    v35 = sub_2752DE558();
    MEMORY[0x277C74460](v35);

    MEMORY[0x277C74460](46, 0xE100000000000000);
    OUTLINED_FUNCTION_5();
    v36 = 33;
    sub_2752DE468();
    __break(1u);
  }
}

void MusicLibraryPlaylistEditViewModel.init(_:authorProfile:mediaLibrary:)()
{
  OUTLINED_FUNCTION_23();
  v40 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE78, &unk_2752DF0B0);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  v39 = v21 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v39 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - v27;
  sub_2752DE148();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  if (v6)
  {
    sub_2752C2F40(v6, v26);
    sub_2752C7FD8(v28, &qword_2809BFEC0, &qword_2752DEE60);
    sub_2752C6D44(v26, v28, &qword_2809BFEC0, &qword_2752DEE60);
  }

  sub_2752DD8F8();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  if (v4)
  {
    sub_2752C3158(v4, v13);
    sub_2752C7FD8(v16, &qword_2809BFE78, &unk_2752DF0B0);
    sub_2752C6D44(v13, v16, &qword_2809BFE78, &unk_2752DF0B0);
  }

  sub_2752DDE28();
  v37 = v2;
  sub_2752C9B58(v37);
  sub_2752C6CF4(v28, v39, &qword_2809BFEC0, &qword_2752DEE60);
  sub_2752C6CF4(v16, v13, &qword_2809BFE78, &unk_2752DF0B0);
  v38 = v6;
  sub_2752DD8A8();

  sub_2752C7FD8(v16, &qword_2809BFE78, &unk_2752DF0B0);
  sub_2752C7FD8(v28, &qword_2809BFEC0, &qword_2752DEE60);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2752C6CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_21(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2752C6D44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_21(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void MusicLibraryPlaylistEditViewModel.init(_:initialTracklist:authorProfile:mediaLibrary:)()
{
  OUTLINED_FUNCTION_23();
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE78, &unk_2752DF0B0);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v47 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v27 = sub_2752DE148();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v45 = v7;
  sub_2752C2F40(v45, v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_2752C7FD8(v26, &qword_2809BFEC0, &qword_2752DEE60);
    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    MEMORY[0x277C74460](0xD000000000000027, 0x80000002752DF8A0);
    [v45 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v43 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v43);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000011);
    OUTLINED_FUNCTION_5();
    v44 = 43;
    OUTLINED_FUNCTION_11();
    __break(1u);
  }

  else
  {
    v48 = v5;
    v49 = v0;
    (*(v30 + 32))(v35, v26, v27);
    sub_2752DD8F8();
    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v40 = v47;
    if (v3)
    {
      sub_2752C3158(v3, v47);
      sub_2752C7FD8(v16, &qword_2809BFE78, &unk_2752DF0B0);
      sub_2752C6D44(v40, v16, &qword_2809BFE78, &unk_2752DF0B0);
    }

    sub_2752DDE28();
    v41 = v46;
    sub_2752C9B58(v41);
    (*(v30 + 16))(v23, v35, v27);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
    sub_2752C6CF4(v16, v40, &qword_2809BFE78, &unk_2752DF0B0);
    v42 = v45;
    sub_2752DD8A8();

    sub_2752C7FD8(v16, &qword_2809BFE78, &unk_2752DF0B0);
    (*(v30 + 8))(v35, v27);
    OUTLINED_FUNCTION_22();
  }
}

uint64_t MusicLibraryPlaylistEditViewModel.tracklist.getter()
{
  result = sub_2752DD878();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      result = sub_2752DE468();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2752C71F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.setter();
}

uint64_t (*MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s16MusicKitInternal0A28LibraryPlaylistEditViewModelC01_abC12_MediaPlayerE21rawCoverArtworkRecipeSSSgvg_0();
  a1[1] = v3;
  return sub_2752C727C;
}

uint64_t sub_2752C727C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    _s16MusicKitInternal0A28LibraryPlaylistEditViewModelC01_abC12_MediaPlayerE21rawCoverArtworkRecipeSSSgvs_0();
  }

  else
  {
    v7 = *a1;
    return _s16MusicKitInternal0A28LibraryPlaylistEditViewModelC01_abC12_MediaPlayerE21rawCoverArtworkRecipeSSSgvs_0();
  }
}

uint64_t sub_2752C72F0()
{
  sub_2752DD848();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

uint64_t MusicLibraryPlaylistEditViewModel.append(_:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_2752C73A0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_2752C72F0();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_2752C74CC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0048, &qword_2752DF0C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2752C7690;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v3 appendItem:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2752C74CC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_2752C7628;
  }

  else
  {
    v5 = sub_2752C75CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2752C75CC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_2752C7628()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_10();
  v4 = *(v0 + 168);

  return v3();
}

uint64_t sub_2752C7690(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_2752C5C64(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t MusicLibraryPlaylistEditViewModel.insert(_:after:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_2752C7730()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[26];
  if (v3)
  {
    v6 = v1 + 10;
    v7 = v3;
    v8 = sub_2752C72F0();
    v1[29] = v8;
    v1[10] = v1;
    v1[11] = sub_2752C78F0;
    v9 = swift_continuation_init();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0048, &qword_2752DF0C8);
    OUTLINED_FUNCTION_2_1(v10);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_3_1();
    v1[21] = v11;
    v1[22] = v9;
    [v8 insertItem:v5 afterEntry:v7 completion:v2];
  }

  else
  {
    v6 = v1 + 2;
    v12 = sub_2752C72F0();
    v1[31] = v12;
    v1[2] = v1;
    v1[3] = sub_2752C7A54;
    v13 = swift_continuation_init();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0048, &qword_2752DF0C8);
    OUTLINED_FUNCTION_2_1(v14);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_3_1();
    v1[21] = v15;
    v1[22] = v13;
    [v12 insertItemAtStart:v5 completion:v2];
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_2752C78F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_2752C7BB0;
  }

  else
  {
    v5 = sub_2752C79F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2752C79F0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_10();

  return v2();
}

uint64_t sub_2752C7A54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_2752C7C20;
  }

  else
  {
    v5 = sub_2752C7B54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2752C7B54()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_2752C7BB0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  swift_willThrow();

  v4 = v0[30];
  OUTLINED_FUNCTION_10();

  return v5();
}

uint64_t sub_2752C7C20()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  swift_willThrow();

  v3 = *(v0 + 256);
  OUTLINED_FUNCTION_10();

  return v4();
}

void MusicLibraryPlaylistEditViewModel.move(_:after:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v4 = sub_2752DE138();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE98, &qword_2752DEE38);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v35 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v35 - v24;
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v4);
  v29 = v3;
  sub_2752C3194(v29, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v4) == 1)
  {
    sub_2752C7FD8(v23, &qword_2809BFE98, &qword_2752DEE38);
    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_16();
    [v29 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v32 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v32);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000013);
    OUTLINED_FUNCTION_5();
    v33 = 103;
  }

  else
  {
    v30 = *(v7 + 32);
    v30(v12, v23, v4);
    if (!v1)
    {
LABEL_5:
      OUTLINED_FUNCTION_14();
      sub_2752DD888();
      (*(v7 + 8))(v12, v4);
      sub_2752C7FD8(v25, &qword_2809BFE98, &qword_2752DEE38);
      OUTLINED_FUNCTION_22();
      return;
    }

    v31 = v1;
    sub_2752C3194(v31, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v4) != 1)
    {
      sub_2752C7FD8(v25, &qword_2809BFE98, &qword_2752DEE38);

      v30(v25, v19, v4);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v4);
      goto LABEL_5;
    }

    sub_2752C7FD8(v19, &qword_2809BFE98, &qword_2752DEE38);
    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_16();
    [v31 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v34 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v34);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000013);
    OUTLINED_FUNCTION_5();
    v33 = 107;
  }

  v35[0] = v33;
  OUTLINED_FUNCTION_11();
  __break(1u);
}

uint64_t sub_2752C7FD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t MusicLibraryPlaylistEditViewModel.remove(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE98, &qword_2752DEE38);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = sub_2752DE138();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = a1;
  sub_2752C3194(v17, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2752C7FD8(v7, &qword_2809BFE98, &qword_2752DEE38);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_2752DE3D8();
    MEMORY[0x277C74460](0xD000000000000027, 0x80000002752DF9D0);
    v19 = [v17 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v20 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v20);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000015);
    result = OUTLINED_FUNCTION_11();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    sub_2752DD898();
    return (*(v11 + 8))(v16, v8);
  }

  return result;
}

uint64_t MusicLibraryPlaylistEditViewModel.commit()()
{
  OUTLINED_FUNCTION_3_0();
  v1 = sub_2752DE008();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_2752DE148();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = *(MEMORY[0x277D2A6F8] + 4);
  v11 = (*MEMORY[0x277D2A6F8] + MEMORY[0x277D2A6F8]);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_2752C83B8;

  return v11(v7);
}

uint64_t sub_2752C83B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 64);
  v8 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {
    v6 = sub_2752C85EC;
  }

  else
  {
    v6 = sub_2752C84BC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2752C84BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*(v6 + 104))(v4, *MEMORY[0x277CD8188], v5);
  sub_2752C677C();
  v8 = v7;
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2752C85EC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[7];
  v2 = v0[4];

  OUTLINED_FUNCTION_10();
  v4 = v0[9];

  return v3();
}

uint64_t MusicLibraryPlaylistEditViewModel.Error.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2752DE498();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2752C86DC@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MusicLibraryPlaylistEditViewModel.Error.init(rawValue:)(a1);
}

unint64_t sub_2752C8724()
{
  result = qword_2809C0050;
  if (!qword_2809C0050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809C0058, &qword_2752DF160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0050);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2752C87E4()
{
  result = qword_2809C0060;
  if (!qword_2809C0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0060);
  }

  return result;
}

uint64_t sub_2752C883C()
{
  sub_2752DE528();
  sub_2752DE1E8();
  return sub_2752DE548();
}

uint64_t _s5ErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s5ErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2752C89D8()
{
  sub_2752DE528();
  sub_2752DE1E8();
  return sub_2752DE548();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_2752DE468();
}

void OUTLINED_FUNCTION_16()
{

  JUMPOUT(0x277C74460);
}

void OUTLINED_FUNCTION_19()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_24()
{
}

uint64_t sub_2752C8BC8()
{
  result = sub_2752DDA58();
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    goto LABEL_71;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = sub_2752C8F44(result, v2, 10);
    v23 = v24;
LABEL_70:

    if ((v23 & 1) == 0)
    {
LABEL_72:
      sub_2752C94CC();
      sub_2752DDA28();
      return sub_2752C8E58(v7);
    }

LABEL_71:
    v7 = 0;
    goto LABEL_72;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2752DE3F8();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_1();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_2();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_68;
            }

            v7 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v7 = 0;
      v12 = 1;
      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v9)
            {
              goto LABEL_68;
            }

            v7 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_2();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v12 = 0;
LABEL_69:
        v23 = v12;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_2();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_2();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_0_1();
        if (!v9)
        {
          break;
        }

        v7 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_79:
  __break(1u);
  return result;
}

id sub_2752C8E58(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2752DE1A8();

  v4 = [v2 initWithValue:a1 databaseID:v3];

  return v4;
}

void *sub_2752C8ED4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0020, &qword_2752DEF68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_2752C8F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2752DE258();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2752C9510(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2752DE3F8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2752C94CC()
{
  result = qword_2809C0078;
  if (!qword_2809C0078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0078);
  }

  return result;
}

uint64_t sub_2752C9510(uint64_t a1, unint64_t a2)
{
  v2 = sub_2752C957C(sub_2752C9578, 0, a1, a2);
  v6 = sub_2752C95B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2752C957C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2752C95B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2752DE1D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2752DE378();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2752C8ED4(v9, 0);
  v12 = sub_2752C9710(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2752DE1D8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2752DE3F8();
LABEL_4:

  return sub_2752DE1D8();
}

unint64_t sub_2752C9710(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2752C9920(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2752DE238();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2752DE3F8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2752C9920(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2752DE218();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2752C9920(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2752DE248();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C74490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id MPStoreLyricsRequest.init(song:)(uint64_t a1)
{
  v2 = sub_2752DE008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v3 + 104))(v6, *MEMORY[0x277CD8158], v2);
  v8 = v7;
  sub_2752C6740();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  [v8 setSong_];

  v11 = sub_2752DE048();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v8;
}

uint64_t sub_2752C9B58(void *a1)
{
  v5[3] = sub_2752C9FBC();
  v5[0] = a1;
  objc_allocWithZone(MEMORY[0x277CD86A0]);
  v2 = a1;
  sub_2752C9EE0(v5);
  v3 = sub_2752DDDE8();

  return v3;
}

uint64_t MusicLibrary.mediaLibrary.getter()
{
  if (sub_2752DDE08())
  {
    goto LABEL_8;
  }

  if (qword_2811ACD68 != -1)
  {
    swift_once();
  }

  if (byte_2811ACD70 != 1)
  {
LABEL_8:
    v3 = sub_2752DDE18();
    sub_2752C9E88();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277CD7F20], v3);
    return swift_willThrow();
  }

  else
  {
    if (sub_2752DDDF8())
    {
      objc_opt_self();
      v0 = swift_dynamicCastObjCClass();
      if (v0)
      {
        v1 = [v0 _underlyingMediaLibrary];
        swift_unknownObjectRelease();
        return v1;
      }

      swift_unknownObjectRelease();
    }

    sub_2752DE3D8();

    sub_2752DDDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0088, &qword_2752DF258);
    v5 = sub_2752DE1C8();
    MEMORY[0x277C74460](v5);

    MEMORY[0x277C74460](46, 0xE100000000000000);
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

uint64_t sub_2752C9DE0()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_2752C9F4C(v0);
  if (v2)
  {
    if (result == 0x6C7070612E6D6F63 && v2 == 0xEF636973754D2E65)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2752DE4B8();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_2811ACD70 = v4 & 1;
  return result;
}

unint64_t sub_2752C9E88()
{
  result = qword_2809C0080;
  if (!qword_2809C0080)
  {
    sub_2752DDE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0080);
  }

  return result;
}

id sub_2752C9EE0(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithUnderlyingMediaLibrary_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2752C9F4C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2752DE1B8();

  return v3;
}

unint64_t sub_2752C9FBC()
{
  result = qword_2809C0090;
  if (!qword_2809C0090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0090);
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_2752DE118();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = sub_2752DE148();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v33 - v26;
  v28 = a1;
  sub_2752C2F40(v28, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(v8 + 8))(a2, v5);

    sub_2752C3F00(v16);
    v29 = 1;
    v30 = v34;
  }

  else
  {
    (*(v20 + 32))(v27, v16, v17);
    (*(v20 + 16))(v25, v27, v17);
    (*(v8 + 16))(v12, a2, v5);
    v30 = v34;
    sub_2752DD7A8();

    (*(v8 + 8))(a2, v5);
    (*(v20 + 8))(v27, v17);
    v29 = 0;
  }

  v31 = sub_2752DD7C8();
  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v31);
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.perform()()
{
  v1 = *(MEMORY[0x277D2A638] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2752CA344;

  return MEMORY[0x2821896F8]();
}

uint64_t sub_2752CA344(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752CA478, 0, 0);
  }
}

uint64_t sub_2752CA478()
{
  v1 = v0[6];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v4;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    v5 = v0[2];
    v6 = v0[3];
    return sub_2752DE468();
  }
}

id static UploadedAudio.canBeConverted(from:)(void *a1)
{
  if ([a1 hasVideo])
  {
    return 0;
  }

  else
  {
    return [a1 isArtistUploadedContent];
  }
}

uint64_t sub_2752CA650()
{
  v0 = sub_2752DD988();
  __swift_allocate_value_buffer(v0, qword_2811ACEF0);
  __swift_project_value_buffer(v0, qword_2811ACEF0);
  return sub_2752DD978();
}

uint64_t sub_2752CA6C4()
{
  v0 = sub_2752DD988();
  __swift_allocate_value_buffer(v0, qword_2809C06C0);
  __swift_project_value_buffer(v0, qword_2809C06C0);
  return sub_2752DD978();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t MusicSiriRepresentation.init(for:title:authorName:artwork:contentRating:url:isLibraryAdded:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v161 = a7;
  v162 = a6;
  v150 = a2;
  v151 = a4;
  v163 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0098, &qword_2752DF2B0);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6();
  v149 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00A0, &qword_2752DF2B8);
  OUTLINED_FUNCTION_3(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v148 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00A8, &qword_2752DF2C0);
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  v147 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00B0, &qword_2752DF2C8);
  OUTLINED_FUNCTION_3(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6();
  v146 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0010, &qword_2752DEF58);
  OUTLINED_FUNCTION_3(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6();
  v145 = v38;
  OUTLINED_FUNCTION_8_0();
  v39 = sub_2752DDD88();
  v40 = OUTLINED_FUNCTION_3(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_0();
  v144 = v43;
  OUTLINED_FUNCTION_8_0();
  v44 = sub_2752DDD38();
  v45 = OUTLINED_FUNCTION_3(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_0();
  v49 = v48;
  OUTLINED_FUNCTION_8_0();
  v50 = sub_2752DDCB8();
  v51 = OUTLINED_FUNCTION_0(v50);
  v155 = v52;
  v156 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_1();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  v154 = &v137[-v59];
  OUTLINED_FUNCTION_8_0();
  v60 = sub_2752DD6D8();
  v61 = OUTLINED_FUNCTION_0(v60);
  v159 = v62;
  v160 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_1();
  v152 = v65 - v66;
  MEMORY[0x28223BE20](v67);
  v158 = &v137[-v68];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00B8, &qword_2752DF2D0);
  OUTLINED_FUNCTION_3(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v72);
  v74 = &v137[-v73];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00C0, &qword_2752DF2D8);
  v76 = OUTLINED_FUNCTION_13(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_1_1();
  v153 = (v79 - v80);
  v82 = MEMORY[0x28223BE20](v81);
  v84 = &v137[-v83];
  MEMORY[0x28223BE20](v82);
  v157 = &v137[-v85];
  v86 = a1;
  v87 = [a1 modelKind];
  if (!v87)
  {
    v89 = a8;

    if (qword_2811ACD90 != -1)
    {
      OUTLINED_FUNCTION_2_3();
    }

    v100 = sub_2752DD988();
    __swift_project_value_buffer(v100, qword_2811ACEF0);
    v91 = a1;
    v92 = sub_2752DD968();
    v101 = sub_2752DE338();

    v102 = os_log_type_enabled(v92, v101);
    v95 = v162;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138412290;
      *(v103 + 4) = v91;
      *v104 = v91;
      v91 = v91;
      OUTLINED_FUNCTION_11_0(&dword_2752C1000, v105, v106, "Failed to create a Siri representation from legacy identifier set: %@");
      sub_2752C7FD8(v104, &qword_2809C00C8, &unk_2752DF2E0);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    goto LABEL_12;
  }

  v88 = v87;
  sub_2752CB294(v87, v74);
  if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
  {
    v89 = a8;

    sub_2752C7FD8(v74, &qword_2809C00B8, &qword_2752DF2D0);
    if (qword_2811ACD90 != -1)
    {
      OUTLINED_FUNCTION_2_3();
    }

    v90 = sub_2752DD988();
    __swift_project_value_buffer(v90, qword_2811ACEF0);
    v91 = v88;
    v92 = sub_2752DD968();
    v93 = sub_2752DE338();

    v94 = os_log_type_enabled(v92, v93);
    v95 = v162;
    if (v94)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138543362;
      *(v96 + 4) = v91;
      *v97 = v88;
      v91 = v91;
      OUTLINED_FUNCTION_11_0(&dword_2752C1000, v98, v99, "Failed to derive a Siri representation kind from legacy model kind: %{public}@.");
      sub_2752C7FD8(v97, &qword_2809C00C8, &unk_2752DF2E0);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

LABEL_12:
    sub_2752C7FD8(v89, &qword_2809C0098, &qword_2752DF2B0);
    sub_2752C7FD8(v161, &qword_2809C00A0, &qword_2752DF2B8);
    sub_2752C7FD8(v95, &qword_2809C00A8, &qword_2752DF2C0);
    v107 = 1;
    goto LABEL_19;
  }

  v139 = v88;
  v140 = a3;
  v141 = a5;
  v138 = a10;
  v108 = v74;
  v109 = v157;
  sub_2752C6D44(v108, v157, &qword_2809C00C0, &qword_2752DF2D8);
  sub_2752C6CF4(v109, v84, &qword_2809C00C0, &qword_2752DF2D8);
  v110 = *(v75 + 48);
  v111 = *(v159 + 32);
  v143 = v57;
  v111();
  v112 = sub_2752DDFE8();
  v113 = *(v112 - 8);
  (*(v113 + 8))(&v84[v110], v112);
  v142 = v86;
  v114 = v49;
  v115 = a8;
  sub_2752DD6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0018, &qword_2752DEF60);
  v116 = sub_2752DDD58();
  OUTLINED_FUNCTION_0(v116);
  v118 = v117;
  v120 = *(v119 + 72);
  v121 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_2752DEEF0;
  v123 = v162;
  (*(v118 + 104))(v122 + v121, *MEMORY[0x277CD7CC8], v116);
  v124 = v115;
  v125 = v144;
  sub_2752DDD78();
  v126 = sub_2752DDD48();
  v127 = v145;
  __swift_storeEnumTagSinglePayload(v145, 1, 1, v126);
  v128 = v154;
  sub_2752CED14(v142, v114, v125, v127, v154);
  (*(v155 + 16))(v143, v128, v156);
  (*(v159 + 16))(v152, v158, v160);
  v129 = v153;
  sub_2752C6CF4(v157, v153, &qword_2809C00C0, &qword_2752DF2D8);
  v130 = v146;
  (*(v113 + 32))(v146, v129 + *(v75 + 48), v112);
  __swift_storeEnumTagSinglePayload(v130, 0, 1, v112);
  sub_2752C6CF4(v123, v147, &qword_2809C00A8, &qword_2752DF2C0);
  v131 = v161;
  sub_2752C6CF4(v161, v148, &qword_2809C00A0, &qword_2752DF2B8);
  sub_2752C6CF4(v124, v149, &qword_2809C0098, &qword_2752DF2B0);
  if (v138 == 2)
  {
    v132 = v142;
    if ([v142 library])
    {
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v132 = v142;
  }

  sub_2752DD6B8();

  sub_2752C7FD8(v124, &qword_2809C0098, &qword_2752DF2B0);
  sub_2752C7FD8(v131, &qword_2809C00A0, &qword_2752DF2B8);
  sub_2752C7FD8(v123, &qword_2809C00A8, &qword_2752DF2C0);
  (*(v155 + 8))(v154, v156);
  v133 = *(v159 + 8);
  v134 = v160;
  v133(v158, v160);
  sub_2752C7FD8(v157, &qword_2809C00C0, &qword_2752DF2D8);
  v133(v153, v134);
  v107 = 0;
LABEL_19:
  v135 = sub_2752DD6E8();
  return __swift_storeEnumTagSinglePayload(v163, v107, 1, v135);
}

uint64_t sub_2752CB294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v190 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00C0, &qword_2752DF2D8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v186 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v185 = &v182 - v7;
  v8 = sub_2752DDFE8();
  v188 = *(v8 - 1);
  v189 = v8;
  v9 = v188[8];
  MEMORY[0x28223BE20](v8);
  v187 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00B8, &qword_2752DF2D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v182 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v182 - v19;
  __swift_storeEnumTagSinglePayload(&v182 - v19, 1, 1, v3);
  v21 = [a1 identityKind];
  sub_2752C3CD8(0, &qword_2811ACD50, 0x277CD5E48);
  v22 = [swift_getObjCClassFromMetadata() identityKind];
  v23 = [v21 isEqual_];

  if (v23)
  {
    v24 = *(v3 + 48);
    v25 = *MEMORY[0x277D2A590];
    v26 = sub_2752DD6D8();
    (*(*(v26 - 8) + 104))(v18, v25, v26);
    sub_2752DDF38();

    sub_2752C7FD8(v20, &qword_2809C00B8, &qword_2752DF2D0);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
    sub_2752C6D44(v18, v20, &qword_2809C00B8, &qword_2752DF2D0);
    v27 = v190;
    v28 = v20;
    return sub_2752C6D44(v28, v27, &qword_2809C00B8, &qword_2752DF2D0);
  }

  v184 = v20;
  sub_2752C3CD8(0, &qword_2811ACD38, 0x277CD5E58);
  v29 = [swift_getObjCClassFromMetadata() identityKind];
  v30 = [v21 isEqual_];

  v31 = v21;
  if (v30)
  {
    v32 = *(v3 + 48);
    v33 = *MEMORY[0x277D2A5A0];
    v34 = sub_2752DD6D8();
    (*(*(v34 - 8) + 104))(v18, v33, v34);
    sub_2752DDF58();
LABEL_7:

    v28 = v184;
    sub_2752C7FD8(v184, &qword_2809C00B8, &qword_2752DF2D0);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
    sub_2752C6D44(v18, v28, &qword_2809C00B8, &qword_2752DF2D0);
    v27 = v190;
    return sub_2752C6D44(v28, v27, &qword_2809C00B8, &qword_2752DF2D0);
  }

  sub_2752C3CD8(0, &qword_2811ACD30, 0x277CD5E60);
  v35 = [swift_getObjCClassFromMetadata() identityKind];
  v36 = [v21 isEqual_];

  if (v36)
  {
    v37 = *(v3 + 48);
    v38 = *MEMORY[0x277D2A5C0];
    v39 = sub_2752DD6D8();
    (*(*(v39 - 8) + 104))(v18, v38, v39);
    sub_2752DDF98();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD18, 0x277CD5E78);
  v41 = [swift_getObjCClassFromMetadata() identityKind];
  v42 = [v21 isEqual_];

  if (v42)
  {
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    v27 = v190;
    v28 = v184;
    v44 = v3;
    if (!v43)
    {
LABEL_16:
      v47 = *(v3 + 48);
      v48 = *MEMORY[0x277D2A5B0];
      v49 = sub_2752DD6D8();
      (*(*(v49 - 8) + 104))(v18, v48, v49);
      sub_2752DDF78();

LABEL_40:
      sub_2752C7FD8(v28, &qword_2809C00B8, &qword_2752DF2D0);
      v93 = v18;
      v94 = v44;
LABEL_41:
      __swift_storeEnumTagSinglePayload(v93, 0, 1, v94);
      sub_2752C6D44(v18, v28, &qword_2809C00B8, &qword_2752DF2D0);
      return sub_2752C6D44(v28, v27, &qword_2809C00B8, &qword_2752DF2D0);
    }

    v45 = a1;
    v46 = [v43 variants];
    if (v46)
    {
      v61 = *(v3 + 48);
      v62 = MEMORY[0x277D2A5B0];
    }

    else if ((v46 & 4) != 0)
    {
      v68 = *(v3 + 48);
      v62 = MEMORY[0x277D2A5D8];
    }

    else
    {
      if ((v46 & 2) == 0)
      {
        if ((v46 & 8) != 0)
        {
          v100 = *(v3 + 48);
          v101 = *MEMORY[0x277D2A5B0];
          v102 = sub_2752DD6D8();
          (*(*(v102 - 8) + 104))(v18, v101, v102);
          sub_2752DDF78();
        }

        else
        {
          if ((v46 & 0x20) == 0)
          {
            goto LABEL_16;
          }

          v126 = *(v3 + 48);
          v127 = *MEMORY[0x277D2A568];
          v128 = sub_2752DD6D8();
          (*(*(v128 - 8) + 104))(v18, v127, v128);
          sub_2752DDEE8();
        }

LABEL_39:

        goto LABEL_40;
      }

      v90 = *(v3 + 48);
      v62 = MEMORY[0x277D2A598];
    }

    v91 = *v62;
    v92 = sub_2752DD6D8();
    (*(*(v92 - 8) + 104))(v18, v91, v92);
    sub_2752DDED8();
    goto LABEL_39;
  }

  sub_2752C3CD8(0, &qword_2811ACD48, 0x277CD5E98);
  v50 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
  v51 = [v21 isEqual_];

  if (v51)
  {
    v52 = *(v3 + 48);
    v53 = *MEMORY[0x277D2A598];
    v54 = sub_2752DD6D8();
    (*(*(v54 - 8) + 104))(v18, v53, v54);
    sub_2752DDF48();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD40, 0x277CD5EE8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = [ObjCClassFromMetadata &selRef_initWithUnderlyingModelObject_ + 7];
  v57 = [v21 &off_27A6492F8];

  if (v57)
  {
    v58 = *(v3 + 48);
    v59 = *MEMORY[0x277D2A550];
    v60 = sub_2752DD6D8();
    (*(*(v60 - 8) + 104))(v18, v59, v60);
    sub_2752DDEA8();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD28, 0x277CD5F08);
  v63 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
  v64 = [v21 &off_27A6492F8];

  if (v64)
  {
    v65 = *(v3 + 48);
    v66 = *MEMORY[0x277D2A5C8];
    v67 = sub_2752DD6D8();
    (*(*(v67 - 8) + 104))(v18, v66, v67);
    sub_2752DDFA8();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD10, 0x277CD5F00);
  v69 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
  v70 = [v21 &off_27A6492F8];

  if (!v70)
  {
    sub_2752C3CD8(0, &qword_2811ACD20, 0x277CD5F30);
    v95 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
    v96 = [v21 &off_27A6492F8];

    v27 = v190;
    if (v96)
    {
      v97 = *(v3 + 48);
      v98 = *MEMORY[0x277D2A560];
      v99 = sub_2752DD6D8();
      (*(*(v99 - 8) + 104))(v18, v98, v99);
      sub_2752DDEC8();

      v28 = v184;
LABEL_79:
      sub_2752C7FD8(v28, &qword_2809C00B8, &qword_2752DF2D0);
      v93 = v18;
      v94 = v3;
      goto LABEL_41;
    }

    sub_2752C3CD8(0, &unk_2811ACD58, 0x277CD5F68);
    v103 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
    v104 = [v21 &off_27A6492F8];

    v28 = v184;
    if (!v104)
    {
      v129 = v3;
      sub_2752C3CD8(0, &qword_2809C00D0, 0x277CD5F20);
      v130 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
      v131 = [v21 &off_27A6492F8];

      if (v131)
      {
        v132 = *(v129 + 48);
        v133 = *MEMORY[0x277D2A5B8];
        v134 = sub_2752DD6D8();
        (*(*(v134 - 8) + 104))(v18, v133, v134);
        sub_2752DDF88();
      }

      else
      {
        sub_2752C3CD8(0, &qword_2809C00D8, 0x277CD5F90);
        v152 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
        v153 = [v21 &off_27A6492F8];

        if (v153)
        {
          v154 = *(v129 + 48);
          v155 = *MEMORY[0x277D2A5E0];
          v156 = sub_2752DD6D8();
          (*(*(v156 - 8) + 104))(v18, v155, v156);
          sub_2752DDFD8();
        }

        else
        {
          sub_2752C3CD8(0, &qword_2809C00E0, 0x277CD5FA0);
          v160 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
          v161 = [v21 &off_27A6492F8];

          if (v161)
          {
            v162 = *(v129 + 48);
            v163 = *MEMORY[0x277D2A5D0];
            v164 = sub_2752DD6D8();
            (*(*(v164 - 8) + 104))(v18, v163, v164);
            sub_2752DDFC8();
          }

          else
          {
            sub_2752C3CD8(0, &qword_2809C00E8, 0x277CD5FB0);
            v177 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
            v178 = [v21 &off_27A6492F8];

            if (!v178)
            {

              return sub_2752C6D44(v28, v27, &qword_2809C00B8, &qword_2752DF2D0);
            }

            v179 = *(v129 + 48);
            v180 = *MEMORY[0x277D2A5A8];
            v181 = sub_2752DD6D8();
            (*(*(v181 - 8) + 104))(v18, v180, v181);
            sub_2752DDF68();
          }
        }
      }

      sub_2752C7FD8(v28, &qword_2809C00B8, &qword_2752DF2D0);
      v93 = v18;
      v94 = v129;
      goto LABEL_41;
    }

    v105 = v21;
    objc_opt_self();
    v106 = swift_dynamicCastObjCClass();
    if (v106)
    {
      v107 = a1;
      v108 = [v106 variants];
      v109 = v108;
      if ((v108 & 4) != 0)
      {
        v157 = *(v3 + 48);
        v158 = sub_2752DD6D8();
        v159 = *(*(v158 - 8) + 104);
        if ((v109 & 2) != 0)
        {
          v159(v18, *MEMORY[0x277D2A580], v158);
          sub_2752DDF18();
        }

        else
        {
          v159(v18, *MEMORY[0x277D2A578], v158);
          sub_2752DDF08();
        }

LABEL_78:
        goto LABEL_79;
      }

      if ((v108 & 2) != 0)
      {
        v44 = v3;
        v174 = *(v3 + 48);
        v175 = *MEMORY[0x277D2A558];
        v176 = sub_2752DD6D8();
        (*(*(v176 - 8) + 104))(v18, v175, v176);
        sub_2752DDEB8();

        goto LABEL_40;
      }
    }

    v44 = v3;
    v110 = *(v3 + 48);
    v111 = *MEMORY[0x277D2A588];
    v112 = sub_2752DD6D8();
    (*(*(v112 - 8) + 104))(v18, v111, v112);
    sub_2752DDF28();

    goto LABEL_40;
  }

  objc_opt_self();
  v71 = swift_dynamicCastObjCClass();
  if (v71)
  {
    v72 = v71;
    v183 = ObjCClassFromMetadata;
    v73 = a1;
    v74 = [v72 kinds];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00F0, &qword_2752DF2F0);
    a1 = sub_2752DE2C8();

    if (sub_2752CC934(a1))
    {
      v182 = v73;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x277C74650](0, a1);
        goto LABEL_31;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v75 = *(a1 + 32);
LABEL_31:
        v76 = v75;

        v77 = [v76 &selRef_initWithUnderlyingModelObject_ + 7];
        sub_2752C3CD8(0, &unk_2811ACD58, 0x277CD5F68);
        v78 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
        v79 = [v77 &off_27A6492F8];

        if (v79)
        {
          objc_opt_self();
          v80 = swift_dynamicCastObjCClass();
          if (v80)
          {
            v81 = v80;
            v82 = v76;
            sub_2752CB294(v81);

            v83 = v3;
            if (__swift_getEnumTagSinglePayload(v15, 1, v3) != 1)
            {
              v165 = v184;
              sub_2752C7FD8(v184, &qword_2809C00B8, &qword_2752DF2D0);

              v166 = v15;
              v167 = v185;
              sub_2752C6D44(v166, v185, &qword_2809C00C0, &qword_2752DF2D8);
              v168 = v167;
              v169 = v186;
              v28 = v165;
              sub_2752C6D44(v168, v186, &qword_2809C00C0, &qword_2752DF2D8);
              v87 = v187;
              v89 = v188;
              v88 = v189;
              (v188[4])(v187, v169 + *(v83 + 48), v189);
              v170 = sub_2752DD6D8();
              (*(*(v170 - 8) + 8))(v169, v170);
              v27 = v190;
LABEL_74:
              v171 = *(v83 + 48);
              v172 = *MEMORY[0x277D2A570];
              v173 = sub_2752DD6D8();
              (*(*(v173 - 8) + 104))(v28, v172, v173);
              (v89[2])(v28 + v171, v87, v88);
              __swift_storeEnumTagSinglePayload(v28, 0, 1, v83);
              (v89[1])(v87, v88);
              return sub_2752C6D44(v28, v27, &qword_2809C00B8, &qword_2752DF2D0);
            }

            sub_2752C7FD8(v15, &qword_2809C00B8, &qword_2752DF2D0);
            v31 = v21;
          }
        }

        v84 = v76;
        sub_2752C3CD8(0, &qword_2809C00D8, 0x277CD5F90);
        v85 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
        v86 = [v77 &off_27A6492F8];

        if (v86)
        {
          v87 = v187;
          sub_2752DDFD8();

          v28 = v184;
          sub_2752C7FD8(v184, &qword_2809C00B8, &qword_2752DF2D0);
          v88 = v189;
          v27 = v190;
          v83 = v3;
          v89 = v188;
        }

        else
        {
          v149 = v31;
          v150 = [v183 &selRef_initWithUnderlyingModelObject_ + 7];
          v151 = [v77 &off_27A6492F8];

          v27 = v190;
          v83 = v3;
          v87 = v187;
          v89 = v188;
          if (v151)
          {
            sub_2752DDEA8();
          }

          else
          {
            sub_2752DDEF8();
          }

          v28 = v184;
          sub_2752C7FD8(v184, &qword_2809C00B8, &qword_2752DF2D0);
          v88 = v189;
        }

        goto LABEL_74;
      }

      __break(1u);
      goto LABEL_86;
    }

    v189 = v21;

    if (qword_2809BFD88 != -1)
    {
      swift_once();
    }

    v135 = sub_2752DD988();
    __swift_project_value_buffer(v135, qword_2809C06C0);
    v105 = v73;
    v136 = sub_2752DD968();
    v137 = sub_2752DE358();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v191 = v188;
      *v138 = 136446210;
      v139 = v105;
      v140 = [v139 description];
      v141 = sub_2752DE1B8();
      v143 = v142;

      v144 = sub_2752C50C8(v141, v143, &v191);

      *(v138 + 4) = v144;
      _os_log_impl(&dword_2752C1000, v136, v137, "Could not accurately extract underlying catalog resource type from modelKind %{public}s. Defaulting to playlist entry.", v138, 0xCu);
      v145 = v188;
      __swift_destroy_boxed_opaque_existential_0(v188);
      MEMORY[0x277C74BF0](v145, -1, -1);
      MEMORY[0x277C74BF0](v138, -1, -1);
    }

    v27 = v190;
    v28 = v184;
    v146 = *(v3 + 48);
    v147 = *MEMORY[0x277D2A570];
    v148 = sub_2752DD6D8();
    (*(*(v148 - 8) + 104))(v18, v147, v148);
    sub_2752DDEF8();

    goto LABEL_78;
  }

  if (qword_2809BFD88 != -1)
  {
LABEL_86:
    swift_once();
  }

  v113 = sub_2752DD988();
  __swift_project_value_buffer(v113, qword_2809C06C0);
  v114 = a1;
  v115 = sub_2752DD968();
  v116 = sub_2752DE348();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = v31;
    v119 = swift_slowAlloc();
    v191 = v119;
    *v117 = 136446210;
    v120 = v114;
    v121 = [v120 description];
    v122 = sub_2752DE1B8();
    v124 = v123;

    v125 = sub_2752C50C8(v122, v124, &v191);

    *(v117 + 4) = v125;
    _os_log_impl(&dword_2752C1000, v115, v116, "modelKind %{public}s could not be cast as an MPModelPlaylistEntryKind.", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x277C74BF0](v119, -1, -1);
    MEMORY[0x277C74BF0](v117, -1, -1);
  }

  else
  {
  }

  sub_2752C7FD8(v184, &qword_2809C00B8, &qword_2752DF2D0);
  return __swift_storeEnumTagSinglePayload(v190, 1, 1, v3);
}

uint64_t sub_2752CC934(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x277C74BF0);
}

id static MPModelLibraryDownloadedItemsCenter.shared.getter()
{
  if (qword_2809BFD90 != -1)
  {
    swift_once();
  }

  v1 = qword_2809C00F8;

  return v1;
}

id sub_2752CCAA0()
{
  result = [objc_allocWithZone(MPModelLibraryDownloadedItemsCenter) init];
  qword_2809C00F8 = result;
  return result;
}

MPModelLibraryDownloadedItemsCenter __swiftcall MPModelLibraryDownloadedItemsCenter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MPModelLibraryDownloadedItemsCenter()
{
  result = qword_2809C0100;
  if (!qword_2809C0100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0100);
  }

  return result;
}

id sub_2752CCBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_2752DE008();
  OUTLINED_FUNCTION_0_2();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_2752CD544();
  (*(v18 + 16))(v24, a1, v16);
  (*(v9 + 16))(v15, v4, a2);
  return sub_2752CD588(v15, v24, v25, a2, a3);
}

uint64_t sub_2752CCD30()
{
  v1 = sub_2752DDFF8();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  (*(v3 + 16))(v8 - v7, v0, v1);
  v10 = (*(v3 + 88))(v9, v1);
  v11 = 0;
  if (v10 == *MEMORY[0x277CD80D8])
  {
    return v11;
  }

  if (v10 == *MEMORY[0x277CD8050])
  {
    return 1;
  }

  if (v10 == *MEMORY[0x277CD80F0])
  {
    return 2;
  }

  if (v10 == *MEMORY[0x277CD8120])
  {
    return 3;
  }

  if (v10 == *MEMORY[0x277CD8058])
  {
    return 4;
  }

  if (v10 == *MEMORY[0x277CD8108])
  {
    return 5;
  }

  if (v10 == *MEMORY[0x277CD8060])
  {
    return 6;
  }

  if (v10 == *MEMORY[0x277CD8068])
  {
    return 7;
  }

  if (v10 == *MEMORY[0x277CD80E0])
  {
    return 9;
  }

  if (v10 == *MEMORY[0x277CD80C0])
  {
    return 11;
  }

  if (v10 == *MEMORY[0x277CD80F8])
  {
    return 12;
  }

  if (v10 == *MEMORY[0x277CD8038])
  {
    return 13;
  }

  if (v10 == *MEMORY[0x277CD8040])
  {
    return 14;
  }

  if (v10 == *MEMORY[0x277CD80C8])
  {
    return 15;
  }

  if (v10 == *MEMORY[0x277CD8110])
  {
    return 16;
  }

  if (v10 == *MEMORY[0x277CD8128])
  {
    return 17;
  }

  if (v10 == *MEMORY[0x277CD80A0])
  {
    return 18;
  }

  if (v10 == *MEMORY[0x277CD8070])
  {
    return 19;
  }

  if (v10 == *MEMORY[0x277CD80B8])
  {
    return 20;
  }

  if (v10 == *MEMORY[0x277CD80A8])
  {
    return 21;
  }

  if (v10 == *MEMORY[0x277CD80B0])
  {
    return 22;
  }

  if (v10 == *MEMORY[0x277CD8138])
  {
    return 24;
  }

  if (v10 == *MEMORY[0x277CD8078])
  {
    return 25;
  }

  if (v10 == *MEMORY[0x277CD8048])
  {
    return 26;
  }

  if (v10 == *MEMORY[0x277CD8080])
  {
    return 27;
  }

  if (v10 == *MEMORY[0x277CD80D0])
  {
    return 28;
  }

  if (v10 == *MEMORY[0x277CD8118])
  {
    return 29;
  }

  if (v10 == *MEMORY[0x277CD8088])
  {
    return 31;
  }

  if (v10 == *MEMORY[0x277CD80E8])
  {
    return 32;
  }

  if (v10 == *MEMORY[0x277CD8140])
  {
    return 33;
  }

  if (v10 == *MEMORY[0x277CD8130])
  {
    return 34;
  }

  if (v10 == *MEMORY[0x277CD8100])
  {
    return 35;
  }

  if (v10 == *MEMORY[0x277CD8090])
  {
    return 36;
  }

  if (v10 == *MEMORY[0x277CD8098])
  {
    return 37;
  }

  result = sub_2752DE468();
  __break(1u);
  return result;
}

uint64_t sub_2752CD200()
{
  v1 = v0;
  v2 = sub_2752DE008();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  (*(v4 + 16))(v9 - v8, v1, v2);
  v11 = (*(v4 + 88))(v10, v2);
  v12 = 0;
  if (v11 == *MEMORY[0x277CD81C0])
  {
    return v12;
  }

  if (v11 == *MEMORY[0x277CD8170])
  {
    return 1;
  }

  if (v11 == *MEMORY[0x277CD8150])
  {
    return 2;
  }

  if (v11 == *MEMORY[0x277CD8188])
  {
    return 3;
  }

  if (v11 == *MEMORY[0x277CD8178])
  {
    return 4;
  }

  if (v11 == *MEMORY[0x277CD8160])
  {
    return 5;
  }

  if (v11 == *MEMORY[0x277CD8180])
  {
    return 6;
  }

  if (v11 == *MEMORY[0x277CD8158])
  {
    return 7;
  }

  if (v11 == *MEMORY[0x277CD8168])
  {
    return 8;
  }

  if (v11 == *MEMORY[0x277CD81B0])
  {
    return 9;
  }

  if (v11 == *MEMORY[0x277CD81A8])
  {
    return 10;
  }

  if (v11 == *MEMORY[0x277CD81A0])
  {
    return 11;
  }

  if (v11 == *MEMORY[0x277CD8148])
  {
    return 12;
  }

  if (v11 == *MEMORY[0x277CD8190])
  {
    return 13;
  }

  if (v11 == *MEMORY[0x277CD81B8])
  {
    return 14;
  }

  if (v11 == *MEMORY[0x277CD8198])
  {
    return 15;
  }

  sub_2752DE3D8();
  MEMORY[0x277C74460](0xD000000000000010, 0x80000002752DFC80);
  sub_2752DE458();
  MEMORY[0x277C74460](0xD000000000000042, 0x80000002752DFCA0);
  result = sub_2752DE468();
  __break(1u);
  return result;
}

unint64_t sub_2752CD544()
{
  result = qword_2809C0108;
  if (!qword_2809C0108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0108);
  }

  return result;
}

id sub_2752CD588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v9 = sub_2752DDCB8();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2752DDFF8();
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v31);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a4 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 32))(v20, a1, a4);
  sub_2752DE038();
  sub_2752DE018();
  v22 = sub_2752CCD30();
  (*(v13 + 8))(v17, v31);
  v23 = *(a5 + 8);
  sub_2752DDD98();
  v24 = sub_2752D0E30(v22, a2);
  (*(v32 + 8))(v12, v33);
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = sub_2752DE168();

  v27 = [v25 initWithIdentifierSet:v24 modelObjectType:v22 storageDictionary:v26];
  swift_unknownObjectRelease();

  v28 = sub_2752DE008();
  (*(*(v28 - 8) + 8))(a2, v28);
  (*(v34 + 8))(v20, a4);
  return v27;
}

uint64_t sub_2752CD8C0()
{
  v1 = sub_2752DD6A8();
  v2 = OUTLINED_FUNCTION_0(v1);
  v173 = v3;
  v174 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v177 = v7 - v6;
  v8 = sub_2752DE008();
  v9 = OUTLINED_FUNCTION_0(v8);
  v170 = v10;
  v171 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v169 = v14 - v13;
  v161 = sub_2752DDFE8();
  v15 = OUTLINED_FUNCTION_0(v161);
  v160 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_1();
  v157 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v159 = &v155 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0110, &qword_2752DF340);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v164 = &v155 - v26;
  v163 = sub_2752DD668();
  v27 = OUTLINED_FUNCTION_0(v163);
  v184 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  v158 = (v31 - v32);
  v34 = MEMORY[0x28223BE20](v33);
  v182 = &v155 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v155 - v36;
  v38 = sub_2752DDCB8();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  v47 = sub_2752DDD38();
  v48 = OUTLINED_FUNCTION_0(v47);
  v183 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_1();
  v54 = (v52 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = &v155 - v56;
  v58 = sub_2752DDFF8();
  v59 = OUTLINED_FUNCTION_0(v58);
  v178 = v60;
  v179 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1();
  v181 = v64 - v63;
  sub_2752DD688();
  sub_2752DDCA8();
  v65 = *(v41 + 8);
  v166 = v46;
  v66 = v46;
  v67 = v164;
  v167 = v41 + 8;
  v168 = v38;
  v165 = v65;
  v65(v66, v38);
  v68 = v163;
  v69 = v183;
  v172 = v0;
  sub_2752DD698();
  v70 = *(v24 + 56);
  v71 = *(v69 + 16);
  v175 = v57;
  v71(v67, v57, v47);
  v72 = v184;
  (*(v184 + 32))(v67 + v70, v37, v68);
  v73 = *(v72 + 88);
  v180 = v70;
  v162 = v73;
  v74 = v73(v67 + v70, v68);
  v75 = *MEMORY[0x277D2A540];
  v176 = v47;
  if (v74 == v75)
  {
    v76 = v184;
    v77 = v182;
    (*(v184 + 16))(v182, v67 + v180, v68);
    (*(v76 + 96))(v77, v68);
    v78 = *(v77 + 1);

    v79 = *(v77 + 3);
    v156 = *(v77 + 2);
    sub_2752DDD28();
    sub_2752CE618();
    OUTLINED_FUNCTION_3_3();
    LOBYTE(v77) = sub_2752DE198();
    v182 = *(v69 + 8);
    (v182)(v54, v47);
    if (v77)
    {
      v80 = v159;
      sub_2752DDED8();
      v81 = sub_2752DDFB8();
      v83 = v82;
      (*(v160 + 8))(v80, v161);
      v84 = v81 == v156 && v83 == v79;
      if (v84)
      {

        v47 = v176;
LABEL_22:
        v109 = *MEMORY[0x277CD8050];
        OUTLINED_FUNCTION_6_0();
        v110(v181);
        v111 = OUTLINED_FUNCTION_1_3();
        v112(v111);
        v113 = OUTLINED_FUNCTION_5_0();
        (v182)(v113);
        goto LABEL_23;
      }

      v85 = sub_2752DE4B8();

      v47 = v176;
      v69 = v183;
      if (v85)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v47 = v176;
      v69 = v183;
    }
  }

  sub_2752DDD28();
  sub_2752CE618();
  OUTLINED_FUNCTION_3_3();
  v86 = sub_2752DE198();
  v87 = *(v69 + 8);
  v87(v54, v47);
  v182 = v87;
  if (v86)
  {
    v88 = *MEMORY[0x277CD8108];
    OUTLINED_FUNCTION_6_0();
    v89(v181);
    v90 = OUTLINED_FUNCTION_1_3();
    v91(v90);
    v92 = OUTLINED_FUNCTION_5_0();
    (v87)(v92);
LABEL_23:
    v93 = v177;
    v94 = v172;
    goto LABEL_30;
  }

  v159 = v54;
  v84 = v162(v67 + v180, v68) == v75;
  v93 = v177;
  v94 = v172;
  v95 = v181;
  if (!v84)
  {
    goto LABEL_25;
  }

  v96 = v184;
  v97 = v158;
  (*(v184 + 16))(v158, v67 + v180, v68);
  (*(v96 + 96))(v97, v68);
  v98 = v97[1];

  v99 = v97[2];
  v100 = v97[3];
  v162 = v99;
  v101 = v47;
  v102 = v159;
  sub_2752DDD18();
  LOBYTE(v96) = sub_2752DE198();
  (v182)(v102, v101);
  if (v96)
  {
    v103 = v157;
    sub_2752DDED8();
    v104 = sub_2752DDFB8();
    v106 = v105;
    (*(v160 + 8))(v103, v161);
    v161 = v106;
    if (v104 == v162 && v106 == v100)
    {

      v47 = v176;
      v93 = v177;
LABEL_29:
      v122 = *MEMORY[0x277CD8060];
      OUTLINED_FUNCTION_6_0();
      v123(v95);
      v124 = OUTLINED_FUNCTION_1_3();
      v125(v124);
      v126 = OUTLINED_FUNCTION_5_0();
      (v182)(v126);
      goto LABEL_30;
    }

    v108 = sub_2752DE4B8();

    v47 = v176;
    v93 = v177;
    if (v108)
    {
      goto LABEL_29;
    }
  }

  else
  {

    v47 = v176;
    v93 = v177;
  }

LABEL_25:
  v114 = v159;
  sub_2752DDD18();
  OUTLINED_FUNCTION_3_3();
  v115 = sub_2752DE198();
  v116 = v182;
  (v182)(v114, v47);
  if (v115)
  {
    v117 = *MEMORY[0x277CD80E0];
    OUTLINED_FUNCTION_6_0();
    v118(v95);
    v119 = OUTLINED_FUNCTION_1_3();
    v120(v119);
    v121 = OUTLINED_FUNCTION_5_0();
    (v116)(v121);
  }

  else
  {
    sub_2752DDCC8();
    sub_2752C3990(v67, &qword_2809C0110, &qword_2752DF340);
  }

LABEL_30:
  v127 = v166;
  sub_2752DD688();
  v128 = sub_2752CCD30();
  v130 = v169;
  v129 = v170;
  v131 = v171;
  (*(v170 + 104))(v169, *MEMORY[0x277CD8190], v171);
  v132 = sub_2752D0E30(v128, v130);
  (*(v129 + 8))(v130, v131);
  v165(v127, v168);
  objc_opt_self();
  v133 = swift_dynamicCastObjCClass();
  v134 = v173;
  if (v133)
  {
    v135 = v133;
    if (qword_2809BFD88 != -1)
    {
      swift_once();
    }

    v136 = sub_2752DD988();
    __swift_project_value_buffer(v136, qword_2809C06C0);
    v137 = v94;
    v138 = v174;
    (*(v134 + 16))(v93, v137, v174);
    swift_unknownObjectRetain();
    v139 = sub_2752DD968();
    v140 = sub_2752DE358();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v184 = v135;
      v142 = v138;
      v143 = v141;
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v186[0] = v145;
      *v143 = 136446466;
      v146 = sub_2752DD678();
      v147 = v93;
      v149 = v148;
      v150 = v142;
      v135 = v184;
      (*(v134 + 8))(v147, v150);
      v151 = sub_2752C50C8(v146, v149, v186);

      *(v143 + 4) = v151;
      *(v143 + 12) = 2112;
      *(v143 + 14) = v135;
      *v144 = v135;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_2752C1000, v139, v140, "Converted Siri representation ID %{public}s to identifier set %@.", v143, 0x16u);
      sub_2752C3990(v144, &qword_2809C00C8, &unk_2752DF2E0);
      MEMORY[0x277C74BF0](v144, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v145);
      MEMORY[0x277C74BF0](v145, -1, -1);
      MEMORY[0x277C74BF0](v143, -1, -1);

      v152 = v175;
      v153 = v176;
    }

    else
    {

      (*(v134 + 8))(v93, v138);
      v152 = v175;
      v153 = v47;
    }

    (v182)(v152, v153);
    (*(v178 + 8))(v181, v179);
    return v135;
  }

  else
  {
    v186[0] = 0;
    v186[1] = 0xE000000000000000;
    sub_2752DE3D8();
    MEMORY[0x277C74460](0xD00000000000002FLL, 0x80000002752DFDC0);
    v185 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0180, &qword_2752DF348);
    sub_2752DE458();
    MEMORY[0x277C74460](46, 0xE100000000000000);
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

unint64_t sub_2752CE618()
{
  result = qword_2809C0118;
  if (!qword_2809C0118)
  {
    sub_2752DDD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0118);
  }

  return result;
}

uint64_t Genre.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_2752DDD38();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2752DDCB8();
  v11 = OUTLINED_FUNCTION_0(v41);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = sub_2752DE088();
  v20 = OUTLINED_FUNCTION_0(v19);
  v40 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 identifiers];
  sub_2752DDD18();
  sub_2752C4D60(v10, v18);

  (*(v6 + 8))(v10, v3);
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    if ([v28 curatorSubKind] == 2)
    {
      v30 = OUTLINED_FUNCTION_1_4();
      v31 = v41;
      v32(v30);
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_2752DE068();

      (*(v13 + 8))(v18, v31);
      goto LABEL_7;
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    (*(v13 + 8))(v18, v41);
    v37 = 1;
    v36 = v42;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v19);
  }

  v33 = OUTLINED_FUNCTION_1_4();
  v34 = v41;
  v35(v33);
  sub_2752DE078();
  (*(v13 + 8))(v18, v34);
LABEL_7:
  v36 = v42;
  (*(v40 + 32))(v42, v25, v19);
  v37 = 0;
  return __swift_storeEnumTagSinglePayload(v36, v37, 1, v19);
}

uint64_t sub_2752CEA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_2752D1B9C(0, v1, 0);
  v2 = v31;
  result = sub_2752D2B94(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_2752D1B9C((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2752D2BD4(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_2752D2BD4(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2752CEC50(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2752D2D20();
  result = MEMORY[0x277C74560](v2, MEMORY[0x277CD7E90], v3);
  v5 = 0;
  v11 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;

    sub_2752D1DCC(&v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2752CED14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v356 = a2;
  v351 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0010, &qword_2752DEF58);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v306 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01B0, &qword_2752DF3A0);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v312 = v306 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0190, &qword_2752DF380);
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19_0();
  v334 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v30);
  v347 = sub_2752DDA68();
  v31 = OUTLINED_FUNCTION_0(v347);
  v307 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v36);
  v37 = sub_2752DDD88();
  v38 = OUTLINED_FUNCTION_0(v37);
  v341 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v42);
  v343 = sub_2752DDD38();
  v43 = OUTLINED_FUNCTION_0(v343);
  v345 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v48);
  v339 = sub_2752DDE88();
  v49 = OUTLINED_FUNCTION_0(v339);
  v313 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v55);
  v366 = sub_2752DDE48();
  v56 = OUTLINED_FUNCTION_0(v366);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_4();
  v365 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_19_0();
  v362 = v63;
  v368 = sub_2752DDD48();
  v64 = OUTLINED_FUNCTION_0(v368);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_9_0();
  v377 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01B8, qword_2752DF3A8);
  v71 = OUTLINED_FUNCTION_3(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_25();
  v370 = v75;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_25();
  v367 = v77;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_19_0();
  v379 = v80;
  v81 = sub_2752DDD58();
  v82 = OUTLINED_FUNCTION_0(v81);
  v84 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v89);
  v91 = v306 - v90;
  v92 = *(v84 + 104);
  v310 = *MEMORY[0x277CD7CC8];
  v342 = v93;
  v330 = v84 + 104;
  v329 = v92;
  v92(v306 - v90);
  v94 = sub_2752D2F60(&qword_2811ACDB0, MEMORY[0x277CD7DB0]);
  v352 = a3;
  v348 = v37;
  v328 = v94;
  sub_2752DE298();
  OUTLINED_FUNCTION_33();
  v335 = v13;
  if (v220)
  {
    MEMORY[0x28223BE20](v95);
    OUTLINED_FUNCTION_16_0();
    *(v96 - 16) = v91;
    v97 = OUTLINED_FUNCTION_17_0();
    v99 = sub_2752D275C(v97, v98);
  }

  else
  {
    v99 = v95;
  }

  v326 = 0;
  v100 = *(v84 + 8);
  v331 = v84 + 8;
  v327 = v100;
  v100(v91, v342);
  if (!v99)
  {
    OUTLINED_FUNCTION_15_0();
    v305 = 36;
LABEL_148:
    v306[0] = v305;
LABEL_149:
    result = sub_2752DE468();
    __break(1u);
    return result;
  }

  v373 = [a1 musicKit_catalogID];
  v101 = [a1 musicKit_libraryID];
  v102 = v368;
  if (v101)
  {
    v103 = v101;
    v346 = sub_2752DE1B8();
    v105 = v104;
  }

  else
  {
    v346 = 0;
    v105 = 0;
  }

  v106 = [a1 musicKit_cloudAlbumLibraryID];
  if (v106)
  {
    v107 = v106;
    v314 = sub_2752DE1B8();
    v344 = v108;
  }

  else
  {
    v314 = 0;
    v344 = 0;
  }

  v371 = [a1 musicKit_deviceLocalID];
  v109 = [a1 musicKit_occurrenceID];
  if (v109)
  {
    v110 = v109;
    v337 = sub_2752DE1B8();
    v355 = v111;
  }

  else
  {
    v337 = 0;
    v355 = 0;
  }

  v350 = v105;
  v336 = a4;
  v112 = sub_2752DDA88();
  v113 = type metadata accessor for MusicPreferredID();
  __swift_storeEnumTagSinglePayload(v379, 1, 1, v113);
  v114 = 0;
  v378 = *(v112 + 16);
  v376 = v66 + 16;
  v375 = v66 + 88;
  v374 = *MEMORY[0x277CD7C60];
  v369 = *MEMORY[0x277CD7C58];
  v354 = *MEMORY[0x277CD7C68];
  v340 = *MEMORY[0x277CD7C50];
  v323 = *MEMORY[0x277CD7F30];
  v364 = (v58 + 104);
  v322 = *MEMORY[0x277CD7F50];
  v321 = *MEMORY[0x277CD7F38];
  v320 = *MEMORY[0x277CD7F48];
  v319 = *MEMORY[0x277CD7F58];
  v359 = (v58 + 16);
  v358 = (v58 + 8);
  v318 = *MEMORY[0x277CD7F40];
  v115 = &unk_2809C01B8;
  v317 = *MEMORY[0x277CD7F70];
  v116 = qword_2752DF3A8;
  v363 = *MEMORY[0x277CD7F60];
  v349 = a1;
  v117 = v370;
  v372 = v112;
  v360 = v66;
  v357 = v113;
  while (1)
  {
    if (v378 == v114)
    {

      goto LABEL_45;
    }

    if (v114 >= *(v112 + 16))
    {
      __break(1u);
      goto LABEL_144;
    }

    v118 = v116;
    v119 = v377;
    (*(v66 + 16))(v377, v112 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v114, v102);
    v120 = (*(v66 + 88))(v119, v102);
    if (v120 == v374)
    {
      v116 = v118;
      if (!v373)
      {
        goto LABEL_41;
      }

      v121 = v373;
      v122 = [v121 value];
      sub_2752DE1B8();

      sub_2752DDDB8();
      v123 = [v121 kind];
      v124 = a1;
      v125 = v363;
      switch(v123)
      {
        case 0uLL:
          goto LABEL_39;
        case 1uLL:
          v126 = &v350 + 4;
          goto LABEL_38;
        case 2uLL:
          v126 = &v351;
          goto LABEL_38;
        case 3uLL:
          v126 = &v351 + 4;
          goto LABEL_38;
        case 4uLL:
          v126 = &v352;
          goto LABEL_38;
        case 5uLL:
          v126 = &v352 + 4;
          goto LABEL_38;
        case 6uLL:
          v126 = v353;
          goto LABEL_38;
        case 7uLL:
          v126 = v353 + 4;
LABEL_38:
          v125 = *(v126 - 64);
LABEL_39:
          v139 = v362;
          v140 = v366;
          (*v364)(v362, v125, v366);
          (*v359)(v365, v139, v140);
          v133 = v361;
          sub_2752DDE68();

          (*v358)(v139, v140);
          v115 = &unk_2809C01B8;
          v116 = v118;
          sub_2752D2EA8(v379, &unk_2809C01B8, v118);
          v113 = v357;
          swift_storeEnumTagMultiPayload();
          a1 = v124;
          v102 = v368;
          v117 = v370;
          v66 = v360;
          break;
        case 8uLL:
          OUTLINED_FUNCTION_15_0();
          v306[0] = 49;
          goto LABEL_149;
        default:
          goto LABEL_149;
      }

      goto LABEL_40;
    }

    v116 = v118;
    if (v120 == v369)
    {
      if (!v371)
      {
        goto LABEL_41;
      }

      v127 = v371;
      [v127 value];
      v353[1] = sub_2752DDDD8();
      v353[0] = v128;
      v129 = [v127 databaseID];
      sub_2752DE1B8();

      v115 = &unk_2809C01B8;
      v117 = v370;
      v130 = v102;
      v131 = v349;
      sub_2752DDDB8();
      v132 = v367;
      sub_2752DDA48();

      OUTLINED_FUNCTION_28();
      swift_storeEnumTagMultiPayload();
      v133 = v132;
      a1 = v131;
      v102 = v130;
      v116 = v118;
      goto LABEL_40;
    }

    if (v120 == v354)
    {
      if (v350)
      {

        v134 = sub_2752DDDB8();
        v135 = v102;
        v136 = a1;
        v138 = v137;
        sub_2752D2EA8(v379, &unk_2809C01B8, v118);
        v133 = v367;
        *v367 = v134;
        *(v133 + 8) = v138;
        v116 = v118;
        a1 = v136;
        v102 = v135;
        v115 = &unk_2809C01B8;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v116 = v118;
        if (!v344)
        {
          goto LABEL_41;
        }

LABEL_31:

        v116 = sub_2752DDDB8();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_18();
        swift_storeEnumTagMultiPayload();
        v133 = a1;
        a1 = v102;
        v102 = &unk_2809C01B8;
        v115 = &unk_2809C01B8;
      }

LABEL_40:
      __swift_storeEnumTagSinglePayload(v133, 0, 1, v113);
      sub_2752D2CB0(v133, v379);
      v112 = v372;
      goto LABEL_41;
    }

    if (v120 != v340)
    {
      OUTLINED_FUNCTION_15_0();
      v305 = 70;
      goto LABEL_148;
    }

    if (v355)
    {
      goto LABEL_31;
    }

LABEL_41:
    sub_2752D2C4C(v379, v117, &unk_2809C01B8, v116);
    if (__swift_getEnumTagSinglePayload(v117, 1, v113) != 1)
    {
      break;
    }

    sub_2752D2EA8(v117, &unk_2809C01B8, v116);
    ++v114;
  }

  sub_2752D2EA8(v117, &unk_2809C01B8, qword_2752DF3A8);
LABEL_45:
  v141 = v332;
  sub_2752D2C4C(v379, v332, &unk_2809C01B8, qword_2752DF3A8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v141, 1, v113);
  v143 = v350;
  if (EnumTagSinglePayload == 1)
  {
    v144 = *MEMORY[0x277CD7CD8];
    v145 = v315;
    OUTLINED_FUNCTION_11_1();
    v146();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_33();
    if (v220)
    {
      MEMORY[0x28223BE20](v147);
      OUTLINED_FUNCTION_16_0();
      *(v148 - 16) = v145;
      v149 = OUTLINED_FUNCTION_17_0();
      v150 = v326;
      v159 = sub_2752D275C(v149, v151);
      v326 = v150;
    }

    else
    {
      v159 = v147;
    }

    v160 = v324;
    OUTLINED_FUNCTION_10_0();
    v161();
    if (v159)
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_11_1();
    v168();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_33();
    if (v220)
    {
      MEMORY[0x28223BE20](v169);
      OUTLINED_FUNCTION_16_0();
      *(v170 - 16) = v325;
      v171 = OUTLINED_FUNCTION_17_0();
      v172 = v326;
      v174 = sub_2752D275C(v171, v173);
      v326 = v172;
      v160 = v324;
    }

    else
    {
      v174 = v169;
    }

    OUTLINED_FUNCTION_10_0();
    v175();
    if (v174)
    {
      v176 = *MEMORY[0x277CD7CD0];
      OUTLINED_FUNCTION_11_1();
      v177();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_33();
      if (v220)
      {
        MEMORY[0x28223BE20](v178);
        OUTLINED_FUNCTION_16_0();
        *(v179 - 16) = v160;
        v180 = OUTLINED_FUNCTION_17_0();
        v211 = sub_2752D275C(v180, v181);
      }

      else
      {
        v211 = v178;
      }

      OUTLINED_FUNCTION_10_0();
      v212();
      if (!v211)
      {
LABEL_152:
        v162 = [a1 musicKit_playbackID];
        if (v162)
        {
          v163 = v162;
          sub_2752DE1B8();
          OUTLINED_FUNCTION_22_0();

          OUTLINED_FUNCTION_23_0();
          sub_2752DDDB8();
          v164 = OUTLINED_FUNCTION_1_5();
          v165(v164);
          v166 = OUTLINED_FUNCTION_0_3();
          v167(v166);
          OUTLINED_FUNCTION_7_1();
          sub_2752DDA98();
          goto LABEL_100;
        }
      }
    }

    v213 = [a1 musicKit_playbackID];
    v112 = v343;
    if (v213)
    {
      v214 = v213;
      sub_2752DE1B8();

      v215 = [a1 musicKit_identifierSetSources];
      if (v215)
      {
        v216 = v215;
        v217 = sub_2752DE2C8();

        if (v217[2])
        {
          a1 = 0xD000000000000010;
          v219 = v217[4];
          v218 = v217[5];

          v220 = v219 == 0xD000000000000010 && 0x80000002752DFF20 == v218;
          if (v220)
          {

            OUTLINED_FUNCTION_26();
          }

          else
          {
            v221 = sub_2752DE4B8();

            OUTLINED_FUNCTION_26();
            if ((v221 & 1) == 0)
            {

              v112 = v343;
              goto LABEL_78;
            }
          }

          sub_2752DDDB8();
          v246 = OUTLINED_FUNCTION_1_5();
          v247(v246);
          v248 = OUTLINED_FUNCTION_0_3();
          v249(v248);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_7_1();
          sub_2752DDA98();
LABEL_99:
          v143 = v350;
          goto LABEL_100;
        }
      }
    }

LABEL_78:
    v222 = v338;
    sub_2752DDCD8();
    v223 = sub_2752DDCF8();
    v115 = *(v345 + 8);
    v115(v222, v112);
    if (v223)
    {
      v224 = [a1 musicKit_containedDeviceLocalID];
      if (v224)
      {
        v225 = v224;
        [v225 value];
        sub_2752DDDD8();
        OUTLINED_FUNCTION_22_0();
        v226 = [v225 databaseID];
        sub_2752DE1B8();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_29();
        sub_2752DDDB8();
        OUTLINED_FUNCTION_23_0();
        sub_2752DDA48();

        OUTLINED_FUNCTION_5_1();
        v227 = OUTLINED_FUNCTION_31();
        v228(v227);
        OUTLINED_FUNCTION_3_4();
        v230 = *(v229 - 256);
        OUTLINED_FUNCTION_2_4();
        v231();
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_32();
        sub_2752DDBB8();

        goto LABEL_99;
      }
    }

    sub_2752DDDB8();
    (*v364)(v365, v363, v366);
    sub_2752DDE68();
    v232 = *(v313 + 16);
    v233 = OUTLINED_FUNCTION_32();
    v234(v233);
    v235 = a1;
    a1 = *(v345 + 16);
    (a1)(v338, v356, v112);
    OUTLINED_FUNCTION_3_4();
    v237 = *(v236 - 256);
    OUTLINED_FUNCTION_2_4();
    v238();
    OUTLINED_FUNCTION_32();
    sub_2752DDC28();
    if (([v235 musicKit_hasValidIdentifier] & 1) == 0)
    {
      v239 = [v349 musicKit_identifierSetSources];
      if (v239)
      {
        v240 = v239;
        v241 = sub_2752DE2C8();

        if (v241[2])
        {
          v243 = v241[4];
          v242 = v241[5];

          if (v243 == 0x6D6552616964654DLL && v242 == 0xEB0000000065746FLL)
          {

            goto LABEL_142;
          }

          v245 = sub_2752DE4B8();

          v112 = v343;
          if (v245)
          {
LABEL_142:
            v303 = OUTLINED_FUNCTION_24_0();
            v304(v303);
            OUTLINED_FUNCTION_26();
LABEL_98:
            OUTLINED_FUNCTION_21_0();
            goto LABEL_99;
          }
        }

        else
        {
        }
      }
    }

    if (qword_2811ACD90 == -1)
    {
LABEL_94:
      v250 = sub_2752DD988();
      __swift_project_value_buffer(v250, qword_2811ACEF0);
      v251 = v308;
      (a1)(v308, v356, v112);
      OUTLINED_FUNCTION_26();
      swift_unknownObjectRetain();
      v252 = sub_2752DD968();
      v253 = sub_2752DE338();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v380 = a1;
        v381 = v255;
        *v254 = 136315394;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0180, &qword_2752DF348);
        v256 = sub_2752DE1C8();
        v258 = sub_2752C50C8(v256, v257, &v381);

        *(v254 + 4) = v258;
        *(v254 + 12) = 2080;
        v259 = sub_2752DDCE8();
        v261 = v260;
        v115(v251, v343);
        v262 = sub_2752C50C8(v259, v261, &v381);

        *(v254 + 14) = v262;
        _os_log_impl(&dword_2752C1000, v252, v253, "No catalogID, libraryID, or deviceLocalID was found from underlying identifier set %s. A MusicIdentifierSet with empty string, for type %s, is being used.", v254, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C74BF0](v255, -1, -1);
        MEMORY[0x277C74BF0](v254, -1, -1);
      }

      else
      {

        v115(v251, v112);
      }

      v263 = OUTLINED_FUNCTION_24_0();
      v264(v263);
      goto LABEL_98;
    }

LABEL_144:
    swift_once();
    goto LABEL_94;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v205 = *v141;
      v206 = v141[1];
      v207 = OUTLINED_FUNCTION_1_5();
      v208(v207);
      v209 = OUTLINED_FUNCTION_0_3();
      v210(v209);
      OUTLINED_FUNCTION_7_1();
      sub_2752DDC78();
      break;
    case 2u:
      v188 = *v141;
      v189 = v141[1];
      v190 = OUTLINED_FUNCTION_1_5();
      v191(v190);
      v192 = OUTLINED_FUNCTION_0_3();
      v193(v192);
      OUTLINED_FUNCTION_7_1();
      sub_2752DDB88();
      break;
    case 3u:
      v194 = v307;
      v195 = *(v307 + 32);
      v196 = v309;
      v197 = OUTLINED_FUNCTION_32();
      v198 = v347;
      v199(v197);
      (*(v194 + 16))(v306[1], v196, v198);
      OUTLINED_FUNCTION_5_1();
      v200 = OUTLINED_FUNCTION_31();
      v201(v200);
      OUTLINED_FUNCTION_3_4();
      v203 = *(v202 - 256);
      OUTLINED_FUNCTION_2_4();
      v204();
      sub_2752DDB08();
      (*(v194 + 8))(v196, v198);
      break;
    case 4u:
      v182 = *v141;
      v183 = v141[1];
      v184 = OUTLINED_FUNCTION_1_5();
      v185(v184);
      v186 = OUTLINED_FUNCTION_0_3();
      v187(v186);
      OUTLINED_FUNCTION_7_1();
      sub_2752DDAE8();
      break;
    default:
      v152 = v313;
      v153 = v311;
      v154 = v339;
      (*(v313 + 32))(v311, v141, v339);
      (*(v152 + 16))(v306[0], v153, v154);
      v155 = OUTLINED_FUNCTION_1_5();
      v156(v155);
      v157 = OUTLINED_FUNCTION_0_3();
      v158(v157);
      sub_2752DDC28();
      (*(v152 + 8))(v153, v154);
      break;
  }

LABEL_100:
  sub_2752DDC88();
  if (v265)
  {
  }

  else if (v143)
  {
    sub_2752DDDB8();
    sub_2752DDC98();
  }

  v266 = v333;
  sub_2752DDC38();
  v267 = v339;
  v268 = __swift_getEnumTagSinglePayload(v266, 1, v339);
  sub_2752D2EA8(v266, &qword_2809C0198, &qword_2752DF388);
  if (v268 == 1 && v373)
  {
    v269 = v373;
    v270 = v316;
    sub_2752DD04C(v269);
    __swift_storeEnumTagSinglePayload(v270, 0, 1, v267);
    sub_2752DDC48();
  }

  v271 = v334;
  sub_2752DDB18();
  v272 = __swift_getEnumTagSinglePayload(v271, 1, v347);
  sub_2752D2EA8(v271, &qword_2809C0190, &qword_2752DF380);
  if (v272 == 1 && v371)
  {
    v273 = v371;
    [v273 value];
    sub_2752DDDD8();
    OUTLINED_FUNCTION_22_0();
    v274 = [v273 databaseID];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_21_0();
    sub_2752DDDB8();
    OUTLINED_FUNCTION_9_1();

    OUTLINED_FUNCTION_14_0();
    sub_2752DDB28();
  }

  if ([a1 musicKit_cloudID])
  {
    sub_2752DDDD8();
    sub_2752DDC18();
  }

  v275 = [a1 musicKit_cloudAlbumLibraryID];
  if (v275)
  {
    v276 = v275;
    sub_2752DE1B8();
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_23_0();
    sub_2752DDDB8();
    sub_2752DDBA8();
  }

  if ([a1 musicKit_reportingAdamID])
  {
    sub_2752DDDD8();
    sub_2752DDB78();
  }

  if ([a1 musicKit_purchasedAdamID])
  {
    sub_2752DDDD8();
    sub_2752DDB58();
  }

  if ([a1 musicKit_assetAdamID])
  {
    sub_2752DDDD8();
    sub_2752DDAD8();
  }

  v277 = [a1 musicKit_deviceLocalID];
  if (v277)
  {
    v278 = v277;
    [v278 value];
    sub_2752DDDD8();
    OUTLINED_FUNCTION_22_0();
    v279 = [v278 databaseID];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_21_0();
    sub_2752DDDB8();
    OUTLINED_FUNCTION_9_1();

    OUTLINED_FUNCTION_14_0();
    sub_2752DDB28();
  }

  v280 = [a1 musicKit_formerIDs];
  if (v280)
  {
    v281 = v280;
    v282 = sub_2752DE2C8();

    v283 = *(v282 + 16);
    if (v283)
    {
      v381 = MEMORY[0x277D84F90];
      sub_2752D1B7C(0, v283, 0);
      v284 = v381;
      a1 = (v282 + 40);
      do
      {
        v285 = *(a1 - 1);
        v286 = *a1;

        v287 = sub_2752DDDB8();
        v289 = v288;
        v381 = v284;
        v291 = *(v284 + 16);
        v290 = *(v284 + 24);
        if (v291 >= v290 >> 1)
        {
          sub_2752D1B7C((v290 > 1), v291 + 1, 1);
          v284 = v381;
        }

        *(v284 + 16) = v291 + 1;
        v292 = v284 + 16 * v291;
        *(v292 + 32) = v287;
        *(v292 + 40) = v289;
        a1 += 2;
        --v283;
      }

      while (v283);

      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {

      v284 = MEMORY[0x277D84F90];
    }

    sub_2752CEC50(v284);
    sub_2752DDC68();
  }

  v293 = [a1 musicKit_containedDeviceLocalID];
  if (v293)
  {
    v294 = v293;
    [v294 value];
    sub_2752DDDD8();
    OUTLINED_FUNCTION_22_0();
    v295 = [v294 databaseID];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_21_0();
    sub_2752DDDB8();
    OUTLINED_FUNCTION_9_1();

    OUTLINED_FUNCTION_14_0();
    sub_2752DDBD8();
  }

  v296 = [a1 musicKit_playbackID];
  if (v296)
  {
    v297 = v296;
    sub_2752DE1B8();
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_23_0();
    sub_2752DDDB8();
    sub_2752DDAB8();
  }

  if ([a1 musicKit_syncID])
  {
    sub_2752DDDD8();
    sub_2752DDBF8();
  }

  v298 = sub_2752DDD08();
  if (dynamic_cast_existential_1_conditional(v298))
  {
    v299 = [a1 musicKit_modelKind];
    if (v299)
    {
      v300 = v299;
      sub_2752DDA18();

      sub_2752DDB38();
    }
  }

  v301 = v336;
  sub_2752D2C4C(v336, v335, &qword_2809C0010, &qword_2752DEF58);
  sub_2752DDA78();
  swift_unknownObjectRelease();

  sub_2752D2EA8(v301, &qword_2809C0010, &qword_2752DEF58);
  (*(v341 + 8))(v352, v348);
  (*(v345 + 8))(v356, v343);
  return sub_2752D2EA8(v379, &unk_2809C01B8, qword_2752DF3A8);
}

id sub_2752D0E30(id a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0190, &qword_2752DF380);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  sub_2752DDC38();
  v17 = sub_2752DDE88();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_2752D2EA8(v16, &qword_2809C0198, &qword_2752DF388);
    v61 = 0;
  }

  else
  {
    v61 = sub_2752DD2E8();
    OUTLINED_FUNCTION_27(v17);
    (*(v18 + 8))(v16, v17);
  }

  sub_2752DDC88();
  if (v19)
  {
    v60 = sub_2752DE1A8();
  }

  else
  {
    v60 = 0;
  }

  sub_2752DDB98();
  if (v20)
  {
    v57 = sub_2752DE1A8();
  }

  else
  {
    v57 = 0;
  }

  sub_2752DDC08();
  if (v21)
  {
    v56 = sub_2752DE1A8();
  }

  else
  {
    v56 = 0;
  }

  sub_2752DDB68();
  if (v22)
  {
    v55 = sub_2752DE1A8();
  }

  else
  {
    v55 = 0;
  }

  sub_2752DDB48();
  if (v23)
  {
    v54 = sub_2752DE1A8();
  }

  else
  {
    v54 = 0;
  }

  sub_2752DDAC8();
  if (v24)
  {
    v53 = sub_2752DE1A8();
  }

  else
  {
    v53 = 0;
  }

  sub_2752DDB18();
  v25 = sub_2752DDA68();
  if (__swift_getEnumTagSinglePayload(v10, 1, v25) == 1)
  {
    sub_2752D2EA8(v10, &qword_2809C0190, &qword_2752DF380);
    v52 = 0;
  }

  else
  {
    v52 = sub_2752C8BC8();
    OUTLINED_FUNCTION_27(v25);
    (*(v26 + 8))(v10, v25);
  }

  sub_2752DDAF8();
  if (v27)
  {
    v28 = sub_2752DE1A8();
  }

  else
  {
    v28 = 0;
  }

  sub_2752DDBC8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v25) == 1)
  {
    sub_2752D2EA8(v8, &qword_2809C0190, &qword_2752DF380);
    v29 = 0;
  }

  else
  {
    v29 = sub_2752C8BC8();
    OUTLINED_FUNCTION_27(v25);
    (*(v30 + 8))(v8, v25);
  }

  sub_2752DDBE8();
  if (v31)
  {
    v32 = sub_2752DE1A8();
  }

  else
  {
    v32 = 0;
  }

  sub_2752DDAA8();
  if (v33)
  {
    v34 = sub_2752DE1A8();
  }

  else
  {
    v34 = 0;
  }

  v35 = objc_opt_self();
  v36 = sub_2752DDC58();
  v37 = sub_2752CEA18(v36);

  v38 = sub_2752CD200();
  v50 = v35;
  v49 = v37;
  *&v48 = v28;
  *(&v48 + 1) = v29;
  v39 = v28;
  v41 = v56;
  v40 = v57;
  v42 = v55;
  v43 = v29;
  v45 = v53;
  v44 = v54;
  v46 = v52;
  v59 = sub_2752D2AB8(v61, v60, v57, v56, v55, v54, v53, v52, v48, v32, v34, v49, v59, v38, v50);

  return v59;
}

uint64_t sub_2752D12EC(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_2752DDA68();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2752DDE88();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPreferredID();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v48 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v48 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01F0, &qword_2752DF460);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v48 - v29;
  v31 = (&v48 + *(v28 + 56) - v29);
  sub_2752D2E44(a1, &v48 - v29);
  sub_2752D2E44(v53, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2752D2E44(v30, v23);
      v33 = *v23;
      v32 = v23[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2u:
      sub_2752D2E44(v30, v20);
      v35 = *v20;
      v34 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      if (v35 != *v31 || v34 != v31[1])
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 3u:
      sub_2752D2E44(v30, v17);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v38 = v51;
        v37 = v52;
        v39 = v48;
        (*(v51 + 32))(v48, v31, v52);
        v40 = sub_2752DDA38();
        v41 = *(v38 + 8);
        v41(v39, v37);
        v41(v17, v37);
        goto LABEL_28;
      }

      (*(v51 + 8))(v17, v52);
      goto LABEL_25;
    case 4u:
      sub_2752D2E44(v30, v14);
      v33 = *v14;
      v32 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_21:

        goto LABEL_25;
      }

LABEL_15:
      if (v33 == *v31 && v32 == v31[1])
      {
LABEL_22:
      }

      else
      {
LABEL_19:
        v43 = sub_2752DE4B8();

        if ((v43 & 1) == 0)
        {
          sub_2752D2F04(v30);
          goto LABEL_26;
        }
      }

      sub_2752D2F04(v30);
      v40 = 1;
      break;
    default:
      sub_2752D2E44(v30, v25);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v49 + 8))(v25, v50);
LABEL_25:
        sub_2752D2EA8(v30, &qword_2809C01F0, &qword_2752DF460);
LABEL_26:
        v40 = 0;
      }

      else
      {
        v45 = v49;
        v44 = v50;
        (*(v49 + 32))(v9, v31, v50);
        v40 = sub_2752DDE38();
        v46 = *(v45 + 8);
        v46(v9, v44);
        v46(v25, v44);
LABEL_28:
        sub_2752D2F04(v30);
      }

      break;
  }

  return v40 & 1;
}

uint64_t sub_2752D17E0()
{
  v1 = sub_2752DDA68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2752DDE88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicPreferredID();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2752D2E44(v0, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = *v14;
      v22 = v14[1];
      v18 = 1;
      goto LABEL_7;
    case 2u:
      v19 = *v14;
      v20 = v14[1];
      v18 = 2;
      goto LABEL_7;
    case 3u:
      (*(v2 + 32))(v5, v14, v1);
      MEMORY[0x277C747A0](3);
      sub_2752D2F60(&qword_2809C01F8, MEMORY[0x277CD7C28]);
      sub_2752DE188();
      return (*(v2 + 8))(v5, v1);
    case 4u:
      v16 = *v14;
      v17 = v14[1];
      v18 = 4;
LABEL_7:
      MEMORY[0x277C747A0](v18);
      sub_2752DE1E8();

      break;
    default:
      (*(v7 + 32))(v10, v14, v6);
      MEMORY[0x277C747A0](0);
      sub_2752D2F60(&unk_2809C0200, MEMORY[0x277CD7F78]);
      sub_2752DE188();
      result = (*(v7 + 8))(v10, v6);
      break;
  }

  return result;
}

uint64_t sub_2752D1AF4()
{
  sub_2752DE528();
  sub_2752D17E0();
  return sub_2752DE548();
}

uint64_t sub_2752D1B40()
{
  sub_2752DE528();
  sub_2752D17E0();
  return sub_2752DE548();
}

char *sub_2752D1B7C(char *a1, int64_t a2, char a3)
{
  result = sub_2752D1BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2752D1B9C(char *a1, int64_t a2, char a3)
{
  result = sub_2752D1CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2752D1BBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01D0, &qword_2752DF3C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2752D1CC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01A0, &unk_2752DF390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_2752D1DCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2752DE528();
  sub_2752DE1E8();
  v9 = sub_2752DE548();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2752DE4B8() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2752D2174(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2752D1F18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01C8, &qword_2752DF3C0);
  result = sub_2752DE3B8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2752D22DC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2752DE528();
    sub_2752DE1E8();
    result = sub_2752DE548();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2752D2174(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2752D1F18(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2752D2498(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2752DE528();
      sub_2752DE1E8();
      result = sub_2752DE548();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2752DE4B8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2752D2340();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2752DE4D8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2752D22DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2752DF370;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2752D2340()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01C8, &qword_2752DF3C0);
  v2 = *v0;
  v3 = sub_2752DE3A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2752D2498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01C8, &qword_2752DF3C0);
  result = sub_2752DE3B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2752DE528();

        sub_2752DE1E8();
        result = sub_2752DE548();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2752D26CC()
{
  sub_2752DDD58();
  sub_2752D2F60(qword_2811ACDB8, MEMORY[0x277CD7CE0]);
  return sub_2752DE198() & 1;
}

BOOL sub_2752D275C(uint64_t (*a1)(char *), uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_2752DDD58();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2752DDD88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01D8, &unk_2752DF3D0) - 8);
  v12 = (*(*v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v26 - v13;
  (*(v7 + 16))(v10, v2, v6);
  v15 = MEMORY[0x277CD7DB0];
  sub_2752D2F60(&qword_2811ACDB0, MEMORY[0x277CD7DB0]);
  sub_2752DE278();
  v16 = v11[11];
  sub_2752D2F60(&unk_2811ACDA0, v15);
  v27 = (v3 + 16);
  v28 = (v3 + 8);
  do
  {
    sub_2752DE308();
    v17 = v34[0];
    v33 = *&v14[v16];
    if (v33 == v34[0])
    {
      break;
    }

    v18 = sub_2752DE328();
    v19 = v6;
    v20 = v29;
    v21 = v30;
    (*v27)(v29);
    v18(v34, 0);
    sub_2752DE318();
    v22 = v35;
    v23 = v31(v20);
    v35 = v22;
    if (v22)
    {
      (*v28)(v20, v21);
      break;
    }

    v24 = v23;
    (*v28)(v20, v21);
    v6 = v19;
  }

  while ((v24 & 1) == 0);
  sub_2752D2EA8(v14, &unk_2809C01D8, &unk_2752DF3D0);
  return v33 != v17;
}

id sub_2752D2AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_2752DE2B8();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

uint64_t sub_2752D2B94(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2752DE398();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2752D2BD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for MusicPreferredID()
{
  result = qword_2811ACE30;
  if (!qword_2811ACE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2752D2C4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_27(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2752D2CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01B8, qword_2752DF3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2752D2D20()
{
  result = qword_2811ACD80;
  if (!qword_2811ACD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ACD80);
  }

  return result;
}

uint64_t sub_2752D2D7C()
{
  result = sub_2752DDE88();
  if (v1 <= 0x3F)
  {
    result = sub_2752DDA68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2752D2E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPreferredID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752D2EA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2752D2F04(uint64_t a1)
{
  v2 = type metadata accessor for MusicPreferredID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752D2F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_3()
{
  v1 = *(*(v0 - 432) + 16);
  result = *(v0 - 480);
  v3 = *(v0 - 344);
  v4 = *(v0 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  v1 = *(*(v0 - 400) + 16);
  result = *(v0 - 464);
  v3 = *(v0 - 304);
  v4 = *(v0 - 416);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  v2 = *(v0 - 448);

  return sub_2752DDA48();
}

uint64_t OUTLINED_FUNCTION_13_0()
{
  v2 = *(v0 - 344);
  v3 = *(v0 - 376);
  v4 = *(v0 - 552);

  return sub_2752DE298();
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  result = v0;
  v3 = *(v1 - 344);
  return result;
}

void *OUTLINED_FUNCTION_18()
{
  v3 = *(v2 - 216);
  *v3 = v0;
  v3[1] = v1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  v1 = *(*(v0 - 648) + 8);
  result = *(v0 - 664);
  v3 = *(v0 - 456);
  return result;
}

uint64_t OUTLINED_FUNCTION_28()
{
  v4 = *(v2 - 120);

  return sub_2752D2EA8(v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_31()
{
  result = *(v0 - 256);
  v3 = *(v1 - 304);
  return result;
}

void OUTLINED_FUNCTION_34()
{
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(playlist:updatedInvitationMode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DE118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifiers];
  v12 = [v11 library];

  if (v12)
  {
    [v12 persistentID];
    swift_unknownObjectRelease();
    sub_2752DDDD8();
    (*(v7 + 16))(v10, a2, v6);
    sub_2752DD7F8();

    (*(v7 + 8))(a2, v6);
    v13 = sub_2752DD808();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
  }

  else
  {
    (*(v7 + 8))(a2, v6);

    v15 = sub_2752DD808();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v15);
  }
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.init(playlist:entry:reaction:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a2;
  v49 = a4;
  v47 = a3;
  v50 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE98, &qword_2752DEE38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - v8;
  v10 = sub_2752DE138();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v45 - v22;
  v24 = sub_2752DE148();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v45 - v33;
  v35 = a1;
  sub_2752C2F40(v35, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {

    v36 = &qword_2809BFEC0;
    v37 = &qword_2752DEE60;
    v38 = v23;
  }

  else
  {
    (*(v27 + 32))(v34, v23, v24);
    v39 = v48;
    sub_2752C3194(v39, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      v42 = *(v13 + 32);
      v48 = v39;
      v42(v19, v9, v10);
      (*(v27 + 16))(v32, v34, v24);
      (*(v13 + 16))(v46, v19, v10);
      v41 = v50;
      sub_2752DD728();

      (*(v13 + 8))(v19, v10);
      (*(v27 + 8))(v34, v24);
      v40 = 0;
      goto LABEL_7;
    }

    (*(v27 + 8))(v34, v24);

    v36 = &qword_2809BFE98;
    v37 = &qword_2752DEE38;
    v38 = v9;
  }

  sub_2752C3990(v38, v36, v37);
  v40 = 1;
  v41 = v50;
LABEL_7:
  v43 = sub_2752DD738();
  return __swift_storeEnumTagSinglePayload(v41, v40, 1, v43);
}

id sub_2752D3854()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2752D38B0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2752D390C()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD658();
  OUTLINED_FUNCTION_45();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_45();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D3B14()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD8B8();
  OUTLINED_FUNCTION_51();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_51();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D3D1C()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD8C8();
  OUTLINED_FUNCTION_50();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_50();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D3F24()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD8D8();
  OUTLINED_FUNCTION_48();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_48();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D412C()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_64();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_0(v9);
  v40 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  if ([v1 curatorKind] == 4)
  {
    v39 = v0;
    v17 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v18 = sub_2752DD8E8();
    v38 = v3;
    v19 = v18;
    OUTLINED_FUNCTION_47();
    sub_2752D9540(v20, v21);
    OUTLINED_FUNCTION_87();
    sub_2752C4D60(v2, v16);

    (*(v6 + 8))(v2, v38);
    v22 = OUTLINED_FUNCTION_70();
    v23(v22);
    OUTLINED_FUNCTION_5_2();
    if (v24)
    {
      OUTLINED_FUNCTION_19_1();
      v36 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v25 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_47();
    sub_2752D9540(v26, v27);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35();

    (*(v19 + 8))(v16, v9);
    v28 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v2);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DD8E8();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }
}

void sub_2752D43C8()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD8F8();
  OUTLINED_FUNCTION_46();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_46();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D45D0()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_88();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_2752DDCB8();
  v13 = OUTLINED_FUNCTION_0(v12);
  v38 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_1();
  if (([v0 hasVideo] & 1) != 0 || (objc_msgSend(v0, sel_isArtistUploadedContent) & 1) == 0)
  {

    sub_2752DD908();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    v18 = [v0 identifiers];
    OUTLINED_FUNCTION_37();
    v19 = sub_2752DD908();
    OUTLINED_FUNCTION_44();
    sub_2752D9540(v20, v21);
    OUTLINED_FUNCTION_80();
    sub_2752C4D60(v11, v2);

    (*(v6 + 8))(v11, v3);
    v22 = OUTLINED_FUNCTION_25_0(v38);
    v23(v22);
    OUTLINED_FUNCTION_5_2();
    if (v24)
    {
      OUTLINED_FUNCTION_89();
      v36 = v0;

      sub_2752DE478();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v25 = v0;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_44();
    sub_2752D9540(v26, v27);
    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    (*(v38 + 8))(v2, v19);
    v28 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v37);
    OUTLINED_FUNCTION_22();
  }
}

void sub_2752D4894()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_88();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_2752DDCB8();
  v13 = OUTLINED_FUNCTION_0(v12);
  v38 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_1();
  if ([v0 hasVideo] && (objc_msgSend(v0, sel_isArtistUploadedContent) & 1) != 0)
  {
    v18 = [v0 identifiers];
    OUTLINED_FUNCTION_37();
    v19 = sub_2752DD918();
    OUTLINED_FUNCTION_42();
    sub_2752D9540(v20, v21);
    OUTLINED_FUNCTION_80();
    sub_2752C4D60(v11, v2);

    (*(v6 + 8))(v11, v3);
    v22 = OUTLINED_FUNCTION_25_0(v38);
    v23(v22);
    OUTLINED_FUNCTION_5_2();
    if (v24)
    {
      OUTLINED_FUNCTION_89();
      v36 = v0;

      sub_2752DE478();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v25 = v0;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_42();
    sub_2752D9540(v26, v27);
    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    (*(v38 + 8))(v2, v19);
    v28 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v37);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DD918();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }
}

void sub_2752D4B58()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD928();
  OUTLINED_FUNCTION_41();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_41();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D4D60()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD938();
  OUTLINED_FUNCTION_40();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_40();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D4F68()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD948();
  OUTLINED_FUNCTION_39();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_39();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D5170()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DD958();
  OUTLINED_FUNCTION_38();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_38();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D5378()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v6 = sub_2752DDD38();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_62();
  v13 = OUTLINED_FUNCTION_0(v12);
  v36 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_1();
  if ([v5 hasVideo] && !objc_msgSend(v5, sel_isArtistUploadedContent))
  {
    v23 = [v5 identifiers];
    v24 = sub_2752DDDA8();
    OUTLINED_FUNCTION_90(v24);
    sub_2752C4D60(v0, v1);

    v25 = *(v9 + 8);
    v26 = OUTLINED_FUNCTION_71();
    v27(v26);
    v28 = OUTLINED_FUNCTION_25_0(v36);
    v29(v28);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      sub_2752DD998();
      v34 = v5;

      sub_2752DE478();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v30 = v5;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    (*(v36 + 8))(v1, v12);
    v31 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v35);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DDDA8();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

void sub_2752D5638()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_64();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_1();
  if ([v1 hasVideo])
  {

    sub_2752DE048();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  else
  {
    v20 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v21 = sub_2752DE048();
    OUTLINED_FUNCTION_90(v21);
    OUTLINED_FUNCTION_79();

    v22 = *(v7 + 8);
    v23 = OUTLINED_FUNCTION_71();
    v24(v23);
    v25 = OUTLINED_FUNCTION_24_1();
    v26(v25);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      OUTLINED_FUNCTION_68();
      v33 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v27 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    v28 = OUTLINED_FUNCTION_75();
    v29(v28);
    v30 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v34);
    OUTLINED_FUNCTION_22();
  }
}

void sub_2752D590C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_64();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_1();
  if ([v1 curatorSubKind] == 1)
  {
    v15 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v16 = sub_2752DE0E8();
    OUTLINED_FUNCTION_90(v16);
    OUTLINED_FUNCTION_79();

    v17 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_71();
    v19(v18);
    v20 = OUTLINED_FUNCTION_24_1();
    v21(v20);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      OUTLINED_FUNCTION_68();
      v33 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v22 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    v23 = OUTLINED_FUNCTION_75();
    v24(v23);
    v25 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v34);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DE0E8();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

void sub_2752D5B94()
{
  OUTLINED_FUNCTION_23();
  v28 = OUTLINED_FUNCTION_15_1(v1);
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  v5 = sub_2752DDCB8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_1();
  v11 = OUTLINED_FUNCTION_73(v10, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v12 = sub_2752DE108();
  OUTLINED_FUNCTION_52();
  sub_2752D9540(v13, v14);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_33_0();

  v15 = OUTLINED_FUNCTION_18_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_4_0();
  v18(v17);
  OUTLINED_FUNCTION_5_2();
  if (v19)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v29;
    v20 = v29;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_52();
  sub_2752D9540(v21, v22);
  OUTLINED_FUNCTION_2_5();

  v23 = OUTLINED_FUNCTION_17_1();
  v24(v23);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v12);
  OUTLINED_FUNCTION_22();
}

void sub_2752D5D9C()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_64();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_0(v9);
  v40 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  if ([v1 type] == 3)
  {
    v39 = v0;
    v17 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v18 = sub_2752DE128();
    v38 = v3;
    v19 = v18;
    OUTLINED_FUNCTION_49();
    sub_2752D9540(v20, v21);
    OUTLINED_FUNCTION_87();
    sub_2752C4D60(v2, v16);

    (*(v6 + 8))(v2, v38);
    v22 = OUTLINED_FUNCTION_70();
    v23(v22);
    OUTLINED_FUNCTION_5_2();
    if (v24)
    {
      OUTLINED_FUNCTION_19_1();
      v36 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v25 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_49();
    sub_2752D9540(v26, v27);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35();

    (*(v19 + 8))(v16, v9);
    v28 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v2);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DE128();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }
}

void sub_2752D6060()
{
  OUTLINED_FUNCTION_23();
  v38 = v1;
  v39 = v2;
  v35 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_66();
  v36 = sub_2752DDD38();
  v6 = OUTLINED_FUNCTION_0(v36);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_2752DDCB8();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v37 = v0;
  v23 = [v0 identifiers];
  v24 = OUTLINED_FUNCTION_66();
  v25 = v5(v24);
  sub_2752DDD68();
  sub_2752C4D60(v13, v22);

  (*(v8 + 8))(v13, v36);
  v26 = OUTLINED_FUNCTION_60();
  v27(v26);
  OUTLINED_FUNCTION_5_2();
  if (v28)
  {
    OUTLINED_FUNCTION_19_1();
    v29 = v37;
    v34 = v37;

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v29 = v37;
    v30 = v37;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  sub_2752DE028();

  (*(v17 + 8))(v22, v14);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v25);
  OUTLINED_FUNCTION_22();
}

void sub_2752D62A8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_64();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_1();
  if ([v1 curatorSubKind] == 3)
  {
    v15 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v16 = sub_2752DE158();
    OUTLINED_FUNCTION_90(v16);
    OUTLINED_FUNCTION_79();

    v17 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_71();
    v19(v18);
    v20 = OUTLINED_FUNCTION_24_1();
    v21(v20);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      OUTLINED_FUNCTION_68();
      v33 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v22 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    v23 = OUTLINED_FUNCTION_75();
    v24(v23);
    v25 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v34);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DE158();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

uint64_t sub_2752D64E0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DDD38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2752DDCB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  if ([a1 hasVideo] && (objc_msgSend(a1, sel_isArtistUploadedContent) & 1) != 0)
  {
    v36 = a3;
    v19 = sub_2752DD918();
    v34 = v16;
    v20 = v19;
    v21 = [a1 identifiers];
    sub_2752D9540(&qword_2809C0268, MEMORY[0x277D2ABF0]);
    v33 = a2;
    v35 = v20;
    v22 = v34;
    sub_2752DDD68();
    sub_2752C4D60(v10, v18);

    (*(v7 + 8))(v10, v6);
    v23 = v12;
    v24 = *(v12 + 16);
    v25 = v11;
    v26 = v33;
    v24(v22, v18, v11);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    if (v26 >> 62)
    {
      sub_2752DD998();
      v32 = a1;

      sub_2752DE478();
    }

    else
    {
      v27 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    sub_2752D9540(&qword_2809C0270, MEMORY[0x277D2ABF0]);
    v28 = v36;
    v29 = v35;
    sub_2752DE028();

    (*(v23 + 8))(v18, v25);
    return __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  }

  else
  {

    v31 = sub_2752DD918();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v31);
  }
}

uint64_t sub_2752D68A8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DDD38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2752DDCB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if ([a1 hasVideo] && !objc_msgSend(a1, sel_isArtistUploadedContent))
  {
    v33 = a3;
    v21 = sub_2752DDDA8();
    v31 = a2;
    v22 = v7;
    v23 = v21;
    v24 = [a1 identifiers];
    v32 = v23;
    sub_2752DDD68();
    sub_2752C4D60(v10, v18);

    (*(v22 + 8))(v10, v6);
    v25 = v31;
    (*(v12 + 16))(v16, v18, v11);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    if (v25 >> 62)
    {
      sub_2752DD998();
      v29 = a1;

      sub_2752DE478();
    }

    else
    {
      v26 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    v27 = v33;
    v28 = v32;
    sub_2752DE028();

    (*(v12 + 8))(v18, v11);
    return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  }

  else
  {

    v19 = sub_2752DDDA8();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v19);
  }
}

uint64_t sub_2752D6C04@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DDD38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2752DDCB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  if (([a1 hasVideo] & 1) != 0 || (objc_msgSend(a1, sel_isArtistUploadedContent) & 1) == 0)
  {

    v31 = sub_2752DD908();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v31);
  }

  else
  {
    v36 = a3;
    v19 = sub_2752DD908();
    v34 = v16;
    v20 = v19;
    v21 = [a1 identifiers];
    sub_2752D9540(&qword_2809C02E8, MEMORY[0x277D2AB98]);
    v33 = a2;
    v35 = v20;
    v22 = v34;
    sub_2752DDD68();
    sub_2752C4D60(v10, v18);

    (*(v7 + 8))(v10, v6);
    v23 = v12;
    v24 = *(v12 + 16);
    v25 = v11;
    v26 = v33;
    v24(v22, v18, v11);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    if (v26 >> 62)
    {
      sub_2752DD998();
      v32 = a1;

      sub_2752DE478();
    }

    else
    {
      v27 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    sub_2752D9540(&qword_2809C02F0, MEMORY[0x277D2AB98]);
    v28 = v36;
    v29 = v35;
    sub_2752DE028();

    (*(v23 + 8))(v18, v25);
    return __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  }
}

uint64_t sub_2752D6FCC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_2752DDD38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2752DDCB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if ([a1 hasVideo])
  {

    v18 = sub_2752DE048();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v18);
  }

  else
  {
    v28 = a3;
    v20 = sub_2752DE048();
    v21 = [a1 identifiers];
    v27 = v20;
    sub_2752DDD68();
    sub_2752C4D60(v9, v17);

    (*(v6 + 8))(v9, v5);
    (*(v11 + 16))(v15, v17, v10);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    if (v29 >> 62)
    {
      sub_2752DD998();
      v25 = a1;

      sub_2752DE478();
    }

    else
    {
      v22 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    v23 = v28;
    v24 = v27;
    sub_2752DE028();

    (*(v11 + 8))(v17, v10);
    return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  }
}

void GenericMusicItem.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v527 = v23;
  v528 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEF8, &qword_2752DEE98);
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v29);
  v463 = sub_2752DD928();
  v30 = OUTLINED_FUNCTION_0(v463);
  v461 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEE0, &qword_2752DEE80);
  OUTLINED_FUNCTION_3(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v39);
  v469 = sub_2752DD948();
  v40 = OUTLINED_FUNCTION_0(v469);
  v462 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEB8, &qword_2752DEE58);
  OUTLINED_FUNCTION_3(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v49);
  v475 = sub_2752DD958();
  v50 = OUTLINED_FUNCTION_0(v475);
  v467 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD98, &qword_2752DEDF8);
  OUTLINED_FUNCTION_3(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v59);
  v476 = sub_2752DE048();
  v60 = OUTLINED_FUNCTION_0(v476);
  v468 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFED8, &qword_2752DEE78);
  OUTLINED_FUNCTION_3(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v69);
  v471 = sub_2752DD908();
  v70 = OUTLINED_FUNCTION_0(v471);
  v465 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFDA0, &qword_2752DEE00);
  OUTLINED_FUNCTION_3(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v79);
  v474 = sub_2752DDDA8();
  v80 = OUTLINED_FUNCTION_0(v474);
  v466 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE80, &qword_2752DEE20);
  OUTLINED_FUNCTION_3(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v89);
  v470 = sub_2752DD918();
  v90 = OUTLINED_FUNCTION_0(v470);
  v464 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFF10, &qword_2752DEEB0);
  OUTLINED_FUNCTION_3(v95);
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v99);
  v479 = sub_2752DE0F8();
  v100 = OUTLINED_FUNCTION_0(v479);
  v477 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE78, &unk_2752DF0B0);
  OUTLINED_FUNCTION_3(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v109);
  v483 = sub_2752DD8F8();
  v110 = OUTLINED_FUNCTION_0(v483);
  v478[1] = v111;
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEF0, &qword_2752DEE90);
  OUTLINED_FUNCTION_3(v115);
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v119);
  v485 = sub_2752DDE98();
  v120 = OUTLINED_FUNCTION_0(v485);
  v482 = v121;
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  OUTLINED_FUNCTION_3(v125);
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v129);
  v493 = sub_2752DE148();
  v130 = OUTLINED_FUNCTION_0(v493);
  v488 = v131;
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEB0, &qword_2752DEE50);
  OUTLINED_FUNCTION_3(v135);
  v137 = *(v136 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v139);
  v504 = sub_2752DD8C8();
  v140 = OUTLINED_FUNCTION_0(v504);
  v500 = v141;
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v144);
  v515 = sub_2752DDD38();
  v145 = OUTLINED_FUNCTION_0(v515);
  v514 = v146;
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v149);
  v150 = sub_2752DDCB8();
  v151 = OUTLINED_FUNCTION_0(v150);
  v518 = v152;
  v519 = v151;
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_1_1();
  v516 = v155 - v156;
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_19_0();
  v517 = v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFED0, &qword_2752DEE70);
  OUTLINED_FUNCTION_3(v159);
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v163);
  v507 = sub_2752DD8E8();
  v164 = OUTLINED_FUNCTION_0(v507);
  v503 = v165;
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0210, &qword_2752DF500);
  OUTLINED_FUNCTION_3(v169);
  v171 = *(v170 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v173);
  v174 = sub_2752DE088();
  v175 = OUTLINED_FUNCTION_0(v174);
  v520 = v176;
  v521 = v175;
  v178 = *(v177 + 64);
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23_1(v182);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEE8, &qword_2752DEE88);
  OUTLINED_FUNCTION_3(v183);
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v187);
  v497 = sub_2752DE158();
  v188 = OUTLINED_FUNCTION_0(v497);
  v491 = v189;
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE90, &qword_2752DEE30);
  v194 = OUTLINED_FUNCTION_3(v193);
  v196 = *(v195 + 64);
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v198);
  v509 = sub_2752DE0E8();
  v199 = OUTLINED_FUNCTION_0(v509);
  v522 = v200;
  v202 = *(v201 + 64);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23_1(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFF00, &qword_2752DEEA0);
  OUTLINED_FUNCTION_3(v205);
  v207 = *(v206 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_6();
  v526 = v209;
  v525 = sub_2752DD8D8();
  v210 = OUTLINED_FUNCTION_0(v525);
  v523 = v211;
  v213 = *(v212 + 64);
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_1();
  v216 = (v215 - v214);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC8, &qword_2752DEE68);
  OUTLINED_FUNCTION_3(v217);
  v219 = *(v218 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v220);
  v222 = v459 - v221;
  v223 = sub_2752DE0A8();
  v224 = OUTLINED_FUNCTION_0(v223);
  v524 = v225;
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_3_5();
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFF08, &qword_2752DEEA8);
  OUTLINED_FUNCTION_3(v228);
  v230 = *(v229 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v231);
  v233 = v459 - v232;
  v234 = sub_2752DE058();
  v235 = OUTLINED_FUNCTION_0(v234);
  v237 = v236;
  v239 = *(v238 + 64);
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_1();
  v242 = (v241 - v240);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0218, &qword_2752DF508);
  v244 = OUTLINED_FUNCTION_3(v243);
  v246 = *(v245 + 64);
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_1_1();
  v529 = v247 - v248;
  v250 = MEMORY[0x28223BE20](v249);
  v252 = v459 - v251;
  MEMORY[0x28223BE20](v250);
  v254 = v459 - v253;
  v530 = sub_2752DD658();
  v531 = v254;
  v255 = v254;
  v256 = v527;
  __swift_storeEnumTagSinglePayload(v255, 1, 1, v530);
  objc_opt_self();
  v257 = OUTLINED_FUNCTION_82();
  if (v257)
  {
    v258 = [v257 innerObject];
    if (v258)
    {
      GenericMusicItem.init(_:)(v258);

      OUTLINED_FUNCTION_69(v259, &qword_2809C0218, &qword_2752DF508);
      v260 = OUTLINED_FUNCTION_71();
      sub_2752D94CC(v260, v261);
LABEL_4:
      v262 = v528;
      v263 = v530;
LABEL_5:
      v264 = v529;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v460 = v237;
  v459[1] = v20;
  v237 = v525;
  v265 = v526;
  objc_opt_self();
  v266 = OUTLINED_FUNCTION_82();
  if (v266)
  {
    v267 = [v266 flattenedGenericObject];
    v237 = v531;
    if (!v267)
    {

      goto LABEL_4;
    }

    v268 = v267;
    v269 = v256;
    v270 = [v267 anyObject];

    v264 = v529;
    if (v270)
    {
      GenericMusicItem.init(_:)(v270);

      sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
      v271 = OUTLINED_FUNCTION_71();
      sub_2752D94CC(v271, v272);
    }

    else
    {
    }

    goto LABEL_17;
  }

  objc_opt_self();
  v273 = OUTLINED_FUNCTION_82();
  if (v273)
  {
    sub_2752C34DC(v273, v233);
    v274 = OUTLINED_FUNCTION_54(v233, 1, v234);
    if (!v275)
    {
      OUTLINED_FUNCTION_69(v274, &qword_2809C0218, &qword_2752DF508);
      v281 = *(v460 + 32);
      v281(v242, v233, v234);
      v281(v237, v242, v234);
      v282 = MEMORY[0x277D2A400];
LABEL_67:
      v351 = *v282;
      v263 = v530;
      OUTLINED_FUNCTION_77();
      (*(v352 + 104))(v237);
      OUTLINED_FUNCTION_27_0();
      __swift_storeEnumTagSinglePayload(v353, v354, v355, v263);
      v262 = v528;
      goto LABEL_5;
    }

    v276 = &qword_2809BFF08;
    v277 = &qword_2752DEEA8;
    v278 = v233;
    goto LABEL_26;
  }

  objc_opt_self();
  v279 = OUTLINED_FUNCTION_82();
  if (v279)
  {
    sub_2752C3518(v279, v222);
    v280 = OUTLINED_FUNCTION_54(v222, 1, v223);
    if (!v275)
    {
      OUTLINED_FUNCTION_69(v280, &qword_2809C0218, &qword_2752DF508);
      v290 = *(v524 + 32);
      v291 = OUTLINED_FUNCTION_55(v478);
      v290(v291, v222, v223);
      v290(v237, v252, v223);
      v282 = MEMORY[0x277D2A418];
      goto LABEL_67;
    }

    v276 = &qword_2809BFEC8;
    v277 = &qword_2752DEE68;
    v278 = v222;
LABEL_26:
    sub_2752C3990(v278, v276, v277);
LABEL_27:
    v262 = v528;
    v264 = v529;
    v263 = v530;
    v237 = v531;
    goto LABEL_28;
  }

  objc_opt_self();
  v283 = OUTLINED_FUNCTION_82();
  if (v283)
  {
    v284 = v265;
    sub_2752C3554(v283, v265);
    v285 = OUTLINED_FUNCTION_43();
    v287 = OUTLINED_FUNCTION_54(v285, v286, v237);
    if (!v275)
    {
      OUTLINED_FUNCTION_69(v287, &qword_2809C0218, &qword_2752DF508);
      v305 = *(v523 + 32);
      v305(v216, v284, v237);
      v305(v237, v216, v237);
      v282 = MEMORY[0x277D2A3C8];
      goto LABEL_67;
    }

    v276 = &qword_2809BFF00;
    v277 = &qword_2752DEEA0;
    v278 = v265;
    goto LABEL_26;
  }

  v292 = v256;
  objc_opt_self();
  v293 = OUTLINED_FUNCTION_83();
  if (v293)
  {
    v294 = v293;
    v295 = v256;
    v296 = [v294 curatorKind];
    v237 = v531;
    if (v296 == 4)
    {
      OUTLINED_FUNCTION_65(&a11);
      sub_2752C3608(v294, v325);

      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_36(&a10);
      OUTLINED_FUNCTION_54(v326, v327, v328);
      v264 = v529;
      if (!v275)
      {
        sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
        v339 = *(v503 + 32);
        v340 = OUTLINED_FUNCTION_59(&v533);
        v339(v340);
        v341 = OUTLINED_FUNCTION_34_0();
        v339(v341);
        v342 = MEMORY[0x277D2A388];
LABEL_63:
        v343 = *v342;
        v263 = v530;
LABEL_88:
        OUTLINED_FUNCTION_77();
        (*(v394 + 104))(v237);
        OUTLINED_FUNCTION_27_0();
        __swift_storeEnumTagSinglePayload(v395, v396, v397, v263);
        goto LABEL_89;
      }

      v303 = &qword_2809BFED0;
      v304 = &qword_2752DEE70;
    }

    else
    {
      v264 = v529;
      if (v296 == 2)
      {
        v319 = v506;
        sub_2752C3590(v294, v506);

        OUTLINED_FUNCTION_36(&a12);
        OUTLINED_FUNCTION_54(v320, v321, v322);
        v323 = v522;
        if (!v275)
        {
          sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
          v336 = *(v323 + 32);
          v337 = OUTLINED_FUNCTION_84(&v532);
          v336(v337);
          v338 = OUTLINED_FUNCTION_34_0();
          v336(v338);
          goto LABEL_62;
        }

        v303 = &qword_2809BFE90;
        v304 = &qword_2752DEE30;
        goto LABEL_52;
      }

      v252 = v292;
      v297 = v522;
      if (v296 != 1)
      {
LABEL_47:

LABEL_48:
        v262 = v528;
        v263 = v530;
        goto LABEL_31;
      }

      v298 = [v294 curatorSubKind];
      if (v298 != 3)
      {
        if (v298 != 2)
        {
          if (v298 == 1)
          {
            OUTLINED_FUNCTION_65(&v528);
            sub_2752C3590(v294, v299);

            OUTLINED_FUNCTION_63();
            OUTLINED_FUNCTION_36(&a12);
            OUTLINED_FUNCTION_54(v300, v301, v302);
            if (!v275)
            {
              sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
              v378 = *(v297 + 32);
              v379 = OUTLINED_FUNCTION_59(&v521);
              v378(v379);
              v380 = OUTLINED_FUNCTION_34_0();
              v378(v380);
LABEL_62:
              v342 = MEMORY[0x277D2A428];
              goto LABEL_63;
            }

            v303 = &qword_2809BFE90;
            v304 = &qword_2752DEE30;
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        v319 = v498;
        Genre.init(_:)(v294, v498);

        OUTLINED_FUNCTION_54(v319, 1, v521);
        if (!v275)
        {
          sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
          v372 = *(v520 + 32);
          v373 = OUTLINED_FUNCTION_84(&v524);
          v372(v373);
          v374 = OUTLINED_FUNCTION_34_0();
          v372(v374);
          v342 = MEMORY[0x277D2A408];
          goto LABEL_63;
        }

        v303 = &qword_2809C0210;
        v304 = &qword_2752DF500;
LABEL_52:
        v324 = v319;
LABEL_57:
        sub_2752C3990(v324, v303, v304);
LABEL_17:
        v262 = v528;
        v263 = v530;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_65(&v527);
      sub_2752C35CC(v294, v364);

      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_36(&v529);
      OUTLINED_FUNCTION_54(v365, v366, v367);
      if (!v275)
      {
        sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
        v375 = *(v491 + 32);
        v376 = OUTLINED_FUNCTION_59(&v522);
        v375(v376);
        v377 = OUTLINED_FUNCTION_34_0();
        v375(v377);
        v342 = MEMORY[0x277D2A450];
        goto LABEL_63;
      }

      v303 = &qword_2809BFEE8;
      v304 = &qword_2752DEE88;
    }

LABEL_56:
    v324 = v252;
    goto LABEL_57;
  }

  objc_opt_self();
  v306 = OUTLINED_FUNCTION_83();
  v237 = v531;
  if (v306)
  {
    v307 = v306;
    v308 = [v306 identifiers];
    OUTLINED_FUNCTION_65(&a16);
    sub_2752DDD18();
    v309 = v517;
    sub_2752C4D60(v252, v517);

    (*(v514 + 8))(v252, v515);
    objc_opt_self();
    v310 = swift_dynamicCastObjCClass();
    v312 = v519;
    v311 = v520;
    v313 = v518;
    if (v310)
    {
      v314 = v310;
      v315 = v307;
      if ([v314 curatorSubKind] == 2)
      {
        v316 = OUTLINED_FUNCTION_60();
        v317(v316);
        OUTLINED_FUNCTION_12_1();
        v318 = v510;
        sub_2752DE068();

LABEL_66:
        (*(v313 + 8))(v309, v312);
        v346 = *(v311 + 32);
        v347 = v512;
        v348 = v318;
        v349 = v521;
        v346(v512, v348, v521);
        sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
        v350 = v511;
        v346(v511, v347, v349);
        v346(v237, v350, v349);
        v282 = MEMORY[0x277D2A408];
        goto LABEL_67;
      }
    }

    v344 = OUTLINED_FUNCTION_60();
    v345(v344);
    v318 = v510;
    sub_2752DE078();
    goto LABEL_66;
  }

  objc_opt_self();
  v329 = OUTLINED_FUNCTION_83();
  v264 = v529;
  v263 = v530;
  if (v329)
  {
    OUTLINED_FUNCTION_65(&v534);
    sub_2752C3644(v330, v331);
    v332 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_54(v332, v333, v504);
    if (!v275)
    {
      sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
      v360 = *(v500 + 32);
      v361 = OUTLINED_FUNCTION_57(&v531);
      v360(v361);
      v362 = OUTLINED_FUNCTION_76();
      v360(v362);
      v363 = MEMORY[0x277D2A3B0];
LABEL_87:
      v393 = *v363;
      goto LABEL_88;
    }

    v334 = &qword_2809BFEB0;
    v335 = &qword_2752DEE50;
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_83())
    {
      OUTLINED_FUNCTION_65(&v526);
      sub_2752C2F40(v356, v357);
      v358 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_54(v358, v359, v493);
      if (!v275)
      {
        sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
        v381 = *(v488 + 32);
        v382 = OUTLINED_FUNCTION_57(&v519);
        v381(v382);
        v383 = OUTLINED_FUNCTION_76();
        v381(v383);
        v363 = MEMORY[0x277D2A440];
        goto LABEL_87;
      }

      v334 = &qword_2809BFEC0;
      v335 = &qword_2752DEE60;
    }

    else
    {
      objc_opt_self();
      if (!OUTLINED_FUNCTION_83())
      {
        objc_opt_self();
        v252 = v292;
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_78(&v516);
          sub_2752C3158(v384, v385);
          v386 = OUTLINED_FUNCTION_43();
          v388 = OUTLINED_FUNCTION_30(v386, v387, &v515);
          if (!v275)
          {
            OUTLINED_FUNCTION_69(v388, &qword_2809C0218, &qword_2752DF508);
            OUTLINED_FUNCTION_58(&v510);
            OUTLINED_FUNCTION_55(&v509);
            OUTLINED_FUNCTION_36(&v515);
            v265();
            v403 = OUTLINED_FUNCTION_20_0();
            (v265)(v403);
            v282 = MEMORY[0x277D2A3D0];
            goto LABEL_67;
          }

          v276 = &qword_2809BFE78;
          v277 = &unk_2752DF0B0;
          v389 = &v516;
        }

        else
        {
          objc_opt_self();
          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_78(&v512);
            sub_2752C36BC(v398, v399);
            v400 = OUTLINED_FUNCTION_43();
            v402 = OUTLINED_FUNCTION_30(v400, v401, &v511);
            if (!v275)
            {
              OUTLINED_FUNCTION_69(v402, &qword_2809C0218, &qword_2752DF508);
              OUTLINED_FUNCTION_58(&v508);
              OUTLINED_FUNCTION_55(&v507);
              OUTLINED_FUNCTION_36(&v511);
              v265();
              v421 = OUTLINED_FUNCTION_20_0();
              (v265)(v421);
              v282 = MEMORY[0x277D2A430];
              goto LABEL_67;
            }

            v276 = &qword_2809BFF10;
            v277 = &qword_2752DEEB0;
            v389 = &v512;
          }

          else
          {
            objc_opt_self();
            v404 = OUTLINED_FUNCTION_81();
            if (v404)
            {
              v405 = v404;
              v406 = v292;
              v407 = [v405 hasVideo];
              v408 = [v405 isArtistUploadedContent];
              if (v407)
              {
                if (v408)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                  v409 = swift_allocObject();
                  *(v409 + 16) = xmmword_2752DF4E0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0240, &qword_2752DF530);
                  v410 = v406;
                  *(v409 + 32) = sub_2752DD9C8();
                  v411 = OUTLINED_FUNCTION_61(&v499);
                  sub_2752D64E0(v411, v409, v412);
                  v413 = OUTLINED_FUNCTION_85();
                  OUTLINED_FUNCTION_30(v413, v414, &v497);
                  if (!v275)
                  {

                    OUTLINED_FUNCTION_69(v447, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58(&v486);
                    OUTLINED_FUNCTION_55(&v485);
                    OUTLINED_FUNCTION_36(&v497);
                    (v406)();
                    v448 = OUTLINED_FUNCTION_20_0();
                    (v406)(v448);
                    v282 = MEMORY[0x277D2A3E0];
                    goto LABEL_67;
                  }

                  sub_2752C3990(v472, &qword_2809BFE80, &qword_2752DEE20);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                v415 = swift_allocObject();
                *(v415 + 16) = xmmword_2752DF4F0;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0238, &qword_2752DF528);
                *(v415 + 32) = sub_2752DD9D8();
                *(v415 + 40) = sub_2752DD9E8();
                v416 = OUTLINED_FUNCTION_61(&v504);
                sub_2752D68A8(v416, v415, v417);

                v418 = OUTLINED_FUNCTION_85();
                v420 = OUTLINED_FUNCTION_30(v418, v419, &v501);
                if (!v275)
                {
                  OUTLINED_FUNCTION_69(v420, &qword_2809C0218, &qword_2752DF508);
                  OUTLINED_FUNCTION_58(&v491);
                  OUTLINED_FUNCTION_55(&v489);
                  OUTLINED_FUNCTION_36(&v501);
                  (v406)();
                  v444 = OUTLINED_FUNCTION_20_0();
                  (v406)(v444);
                  v282 = MEMORY[0x277D2A3B8];
                  goto LABEL_67;
                }

                v276 = &unk_2809BFDA0;
                v277 = &qword_2752DEE00;
                v389 = &v504;
              }

              else
              {
                if (v408)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                  v427 = swift_allocObject();
                  *(v427 + 16) = xmmword_2752DF4E0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0230, &qword_2752DF520);
                  v428 = v406;
                  *(v427 + 32) = sub_2752DD9B8();
                  v429 = OUTLINED_FUNCTION_61(&v500);
                  sub_2752D6C04(v429, v427, v430);
                  v431 = OUTLINED_FUNCTION_85();
                  OUTLINED_FUNCTION_30(v431, v432, &v498);
                  if (!v275)
                  {

                    OUTLINED_FUNCTION_69(v449, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58(&v488);
                    OUTLINED_FUNCTION_55(&v487);
                    OUTLINED_FUNCTION_36(&v498);
                    (v406)();
                    v450 = OUTLINED_FUNCTION_20_0();
                    (v406)(v450);
                    v282 = MEMORY[0x277D2A3D8];
                    goto LABEL_67;
                  }

                  sub_2752C3990(v473, &qword_2809BFED8, &qword_2752DEE78);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                v433 = swift_allocObject();
                *(v433 + 16) = xmmword_2752DF4F0;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0228, &qword_2752DF518);
                *(v433 + 32) = sub_2752DD9F8();
                *(v433 + 40) = sub_2752DDA08();
                v434 = OUTLINED_FUNCTION_61(&v506);
                sub_2752D6FCC(v434, v433, v435);

                v436 = OUTLINED_FUNCTION_85();
                v438 = OUTLINED_FUNCTION_30(v436, v437, &v503);
                if (!v275)
                {
                  OUTLINED_FUNCTION_69(v438, &qword_2809C0218, &qword_2752DF508);
                  OUTLINED_FUNCTION_58(&v494);
                  OUTLINED_FUNCTION_55(&v493);
                  OUTLINED_FUNCTION_36(&v503);
                  (v406)();
                  v446 = OUTLINED_FUNCTION_20_0();
                  (v406)(v446);
                  v282 = MEMORY[0x277D2A3F8];
                  goto LABEL_67;
                }

                v276 = &qword_2809BFD98;
                v277 = &qword_2752DEDF8;
                v389 = &v506;
              }
            }

            else
            {
              objc_opt_self();
              if (OUTLINED_FUNCTION_81())
              {
                OUTLINED_FUNCTION_78(&v505);
                sub_2752C36F8(v422, v423);
                v424 = OUTLINED_FUNCTION_43();
                v426 = OUTLINED_FUNCTION_30(v424, v425, &v502);
                if (!v275)
                {
                  OUTLINED_FUNCTION_69(v426, &qword_2809C0218, &qword_2752DF508);
                  OUTLINED_FUNCTION_58(&v492);
                  OUTLINED_FUNCTION_55(&v490);
                  OUTLINED_FUNCTION_36(&v502);
                  v265();
                  v445 = OUTLINED_FUNCTION_20_0();
                  (v265)(v445);
                  v282 = MEMORY[0x277D2A458];
                  goto LABEL_67;
                }

                v276 = &qword_2809BFEB8;
                v277 = &qword_2752DEE58;
                v389 = &v505;
              }

              else
              {
                objc_opt_self();
                if (OUTLINED_FUNCTION_81())
                {
                  OUTLINED_FUNCTION_78(&v496);
                  sub_2752C3734(v439, v440);
                  v441 = OUTLINED_FUNCTION_43();
                  v443 = OUTLINED_FUNCTION_30(v441, v442, &v495);
                  if (!v275)
                  {
                    OUTLINED_FUNCTION_69(v443, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58(&v482);
                    OUTLINED_FUNCTION_55(&v481);
                    OUTLINED_FUNCTION_36(&v495);
                    v265();
                    v457 = OUTLINED_FUNCTION_20_0();
                    (v265)(v457);
                    v282 = MEMORY[0x277D2A448];
                    goto LABEL_67;
                  }

                  v276 = &qword_2809BFEE0;
                  v277 = &qword_2752DEE80;
                  v389 = &v496;
                }

                else
                {
                  objc_opt_self();
                  v451 = OUTLINED_FUNCTION_81();
                  v237 = v531;
                  if (!v451)
                  {
                    goto LABEL_48;
                  }

                  OUTLINED_FUNCTION_78(&v484);
                  sub_2752C3770(v452, v453);
                  v454 = OUTLINED_FUNCTION_43();
                  v456 = OUTLINED_FUNCTION_30(v454, v455, &v483);
                  if (!v275)
                  {
                    OUTLINED_FUNCTION_69(v456, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58(&v480);
                    OUTLINED_FUNCTION_55(&v479);
                    OUTLINED_FUNCTION_36(&v483);
                    v265();
                    v458 = OUTLINED_FUNCTION_20_0();
                    (v265)(v458);
                    v282 = MEMORY[0x277D2A420];
                    goto LABEL_67;
                  }

                  v276 = &qword_2809BFEF8;
                  v277 = &qword_2752DEE98;
                  v389 = &v484;
                }
              }
            }
          }
        }

        v278 = *(v389 - 32);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_65(&v518);
      sub_2752C3680(v368, v369);
      v370 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_54(v370, v371, v485);
      if (!v275)
      {
        sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
        v390 = *(v482 + 32);
        v391 = OUTLINED_FUNCTION_57(&v513);
        v390(v391);
        v392 = OUTLINED_FUNCTION_76();
        v390(v392);
        v363 = MEMORY[0x277D2A3C0];
        goto LABEL_87;
      }

      v334 = &qword_2809BFEF0;
      v335 = &qword_2752DEE90;
    }
  }

  sub_2752C3990(v252, v334, v335);
LABEL_89:
  v262 = v528;
LABEL_28:
  sub_2752D94CC(v237, v264);
  OUTLINED_FUNCTION_54(v264, 1, v263);
  if (v275)
  {
    v237 = v264;
LABEL_31:
    sub_2752C3990(v237, &qword_2809C0218, &qword_2752DF508);
    v289 = 1;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_77();
  (*(v288 + 32))(v262, v264, v263);
  v289 = 0;
LABEL_32:
  __swift_storeEnumTagSinglePayload(v262, v289, 1, v263);
  OUTLINED_FUNCTION_22();
}