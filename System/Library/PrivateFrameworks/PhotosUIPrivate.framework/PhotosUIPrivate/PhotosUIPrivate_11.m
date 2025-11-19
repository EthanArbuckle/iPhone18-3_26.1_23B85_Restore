uint64_t sub_1B3809794@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850098 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878EB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B3809840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B3808CB0();
}

uint64_t sub_1B38098E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3809410();
  *a1 = result;
  return result;
}

uint64_t sub_1B3809908(uint64_t a1)
{
  v2 = sub_1B3809A30();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for SetPlaybackRateIntent.PlaybackRate(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B3809A30()
{
  result = qword_1EB855C90;
  if (!qword_1EB855C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855C90);
  }

  return result;
}

uint64_t sub_1B3809A84()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;

  return sub_1B3809008(v3, v0);
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_1B3C97C58();
}

id sub_1B3809B44()
{
  sub_1B3710718(0, &qword_1EB84F210);
  v0 = sub_1B3C9C778();

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v1;
}

id sub_1B3809C54(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithPhotoLibrary:a1 changeObserver:a2];

  swift_unknownObjectRelease();
  return v4;
}

id sub_1B3809CB0(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AmbientPhotoFrameDataSource());
  v5 = AmbientPhotoFrameDataSource.init(photoLibrary:changeObserver:maxAssets:restrictToSmartAlbumTypes:randomSeed:includePetsWithPeople:)(a1, a2, 0, 1, 0, 1, 0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id AmbientPhotoFrameDataSource.init(photoLibrary:changeObserver:maxAssets:restrictToSmartAlbumTypes:randomSeed:includePetsWithPeople:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *&v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_featuredAssets] = 0;
  v11 = 400;
  if ((a4 & 1) == 0)
  {
    v11 = a3;
  }

  *&v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxAssets] = v11;
  *&v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_randomSeed] = a7;
  v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_snapshotMode] = v11 == 1;
  if (v11 == 1)
  {
    v11 = 5;
  }

  *&v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxSuggestions] = v11;
  v12 = &v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_restrictToSmartAlbumTypes];
  *v12 = a5;
  v12[8] = a6 & 1;
  v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_includePetsWithPeople] = a8;
  v8[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_coldStartMode] = 0;
  v15.receiver = v8;
  v15.super_class = type metadata accessor for AmbientPhotoFrameDataSource();
  v13 = objc_msgSendSuper2(&v15, sel_initWithPhotoLibrary_changeObserver_, a1, a2);

  swift_unknownObjectRelease();
  return v13;
}

id sub_1B3809E9C()
{
  swift_getObjectType();
  v1 = sub_1B3C9A488();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  sub_1B3C9CD08();
  if (qword_1EB8500A0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  sub_1B3C9A478();
  OUTLINED_FUNCTION_14_19();
  v33 = *(v3 + 8);
  v33(v7, v1);
  v32 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_randomSeed];
  v8 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  result = [v0 photoLibrary];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  v11 = [swift_getObjCClassFromMetadata() baseSuggestionFetchOptionsForPhotoLibrary_];

  v12 = OUTLINED_FUNCTION_10_20(4);
  OUTLINED_FUNCTION_9_17(v12, sel_setLandscapeSuggestions_);

  v13 = OUTLINED_FUNCTION_10_20(8);
  OUTLINED_FUNCTION_9_17(v13, sel_setCityscapeSuggestions_);

  v14 = OUTLINED_FUNCTION_10_20(2);
  OUTLINED_FUNCTION_9_17(v14, sel_setPetSuggestions_);

  v15 = OUTLINED_FUNCTION_10_20(1);
  OUTLINED_FUNCTION_9_17(v15, sel_setPeopleSuggestions_);

  v16 = OUTLINED_FUNCTION_10_20(16);
  OUTLINED_FUNCTION_9_17(v16, sel_setFeaturedSuggestions_);

  if ((v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_restrictToSmartAlbumTypes + 8] & 1) == 0 && (*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_restrictToSmartAlbumTypes] & 0x10) == 0)
  {
    goto LABEL_21;
  }

  v31 = v1;
  if (v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_snapshotMode])
  {
    v17 = 5;
  }

  else
  {
    v17 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxAssets];
  }

  result = [v0 photoLibrary];
  if (!result)
  {
    goto LABEL_23;
  }

  v18 = result;
  v30 = objc_opt_self();
  v19 = [v30 fetchHighlightAssetsInPhotoLibrary:v18 limit:v17 randomSeed:v32];

  v20 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_featuredAssets;
  v21 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_featuredAssets];
  *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_featuredAssets] = v19;

  sub_1B3710718(0, &qword_1EB84F140);
  v22 = [swift_getObjCClassFromMetadata() sharedInstance];
  v23 = [v22 forceColdStart];

  if (v23)
  {
    sub_1B3C9CAA8();
    sub_1B3C9A438();
  }

  result = [v0 featuredSuggestions];
  if (!result)
  {
    goto LABEL_24;
  }

  v24 = result;
  v25 = [result count];

  if (v25 || (v26 = *&v0[v20]) != 0 && [v26 count])
  {
    v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_coldStartMode] = v23;
    v1 = v31;
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_coldStartMode] = 1;
    v1 = v31;
  }

  sub_1B3C9CAE8();
  sub_1B3C9A438();
  result = [v0 photoLibrary];
  if (result)
  {
    v27 = result;
    v28 = [v30 fetchMemoryKeyAssetsInPhotoLibrary:result limit:*&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxAssets] randomSeed:v32];

    v29 = *&v0[v20];
    *&v0[v20] = v28;

LABEL_21:
    sub_1B3C9CCF8();
    sub_1B3C9A478();
    OUTLINED_FUNCTION_14_19();

    return (v33)(v7, v1);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B380A398(uint64_t a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = objc_autoreleasePoolPush();
  sub_1B380A418(a1, v3, a2, a3, ObjectType, &v10);
  objc_autoreleasePoolPop(v8);
  return v10;
}

void sub_1B380A418(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v59 = a3;
  v55 = a5;
  v56 = a4;
  v61 = a2;
  v57 = a6;
  v7 = sub_1B3C9A488();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v60) = sub_1B3C9CD08();
  if (qword_1EB8500A0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB855DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CF6CE0;
  v13 = PFPosterShuffleSmartAlbumsDescription();
  v14 = sub_1B3C9C5E8();
  v16 = v15;

  v17 = v11;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1B3753408();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1B3C9A478();
  sub_1B3C9A448();

  v18 = *(v8 + 8);
  v18(v10, v7);
  v19 = v61;
  if ((*(v61 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_restrictToSmartAlbumTypes + 8) & 1) != 0 || (a1 & ~*(v61 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_restrictToSmartAlbumTypes)) == 0)
  {
    switch(a1)
    {
      case 1:
        v53 = v11;
        v54 = v7;
        v60 = v18;
        [v59 copy];
        sub_1B3C9D1E8();
        swift_unknownObjectRelease();
        sub_1B3710718(0, &qword_1EB855D18);
        swift_dynamicCast();
        v59 = v66;
        [v66 setFetchLimit_];
        v20 = *(v19 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_includePetsWithPeople);
        v21 = &unk_1F2AB3958;
        if (!*(v19 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_includePetsWithPeople))
        {
          v21 = &unk_1F2AB3980;
        }

        v22 = *v21;
        if (*v21)
        {
          v52 = v10;
          v62 = MEMORY[0x1E69E7CC0];
          sub_1B3C9D428();
          if (v20)
          {
            v23 = &unk_1F2AB3948;
          }

          else
          {
            v23 = &unk_1F2AB3970;
          }

          v24 = (v23 + 32);
          do
          {
            v25 = *v24++;
            [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
            sub_1B3C9D408();
            sub_1B3C9D438();
            sub_1B3C9D448();
            sub_1B3C9D418();
            --v22;
          }

          while (v22);

          v10 = v52;
        }

        else
        {
        }

        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_1B3710718(0, &qword_1EB852330);
        v47 = sub_1B3C9C778();

        v48 = ObjCClassFromMetadata;
        v49 = v59;
        v50 = [v48 fetchSuggestionsWithSubtypes:v47 options:v59];

        v36 = v50;
        goto LABEL_28;
      case 2:
        v29 = [swift_getObjCClassFromMetadata() fetchSuggestionsWithSubtype:803 options:v59];
        goto LABEL_20;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_33;
      case 4:
        v29 = [swift_getObjCClassFromMetadata() fetchSuggestionsWithSubtype:801 options:v59];
        goto LABEL_20;
      case 8:
        v29 = [swift_getObjCClassFromMetadata() fetchSuggestionsWithSubtype:802 options:v59];
LABEL_20:
        v36 = v29;
        goto LABEL_29;
      default:
        if (a1 != 16)
        {
          goto LABEL_33;
        }

        v54 = v7;
        v60 = v18;
        [v59 copy];
        sub_1B3C9D1E8();
        swift_unknownObjectRelease();
        sub_1B3710718(0, &qword_1EB855D18);
        swift_dynamicCast();
        v37 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1B3CFB680;
        v39 = [v37 internalPredicate];
        if (!v39)
        {
          goto LABEL_32;
        }

        v40 = v39;
        sub_1B3710718(0, &qword_1EB84F188);
        *(v38 + 32) = v40;
        v41 = objc_opt_self();
        *(v38 + 40) = [v41 predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
        v42 = sub_1B3809B44();
        [v37 setInternalPredicate_];

        v36 = [v41 fetchSuggestionsWithOptions_];
        v43 = sub_1B3C9CAA8();
        if (os_log_type_enabled(v17, v43))
        {
          v36 = v36;
          v44 = swift_slowAlloc();
          *v44 = 134217984;
          v45 = [v36 count];

          *(v44 + 4) = v45;
          _os_log_impl(&dword_1B36F3000, v17, v43, "[AmbientPhotoFrameDataSource] found %ld featured suggestions", v44, 0xCu);
          MEMORY[0x1B8C6EC70](v44, -1, -1);
        }

        else
        {
        }

LABEL_28:
        v18 = v60;
        v7 = v54;
LABEL_29:
        sub_1B380C24C(v36, v56, v30, v31, v32, v33, v34, v35, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        v28 = v51;

        sub_1B3C9CCF8();
        sub_1B3C9A478();
        sub_1B3C9A458();

        v18(v10, v7);
        break;
    }

    goto LABEL_30;
  }

  v26 = [v59 photoLibrary];
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() emptyFetchResultWithPhotoLibrary_];

LABEL_30:
    *v57 = v28;
    return;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B380ACF0()
{
  result = [v0 photoLibrary];
  if (result)
  {
    v2 = result;
    v3 = [result librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B3CFC360;
    *(v4 + 32) = sub_1B3C9C5E8();
    *(v4 + 40) = v5;
    *(v4 + 48) = sub_1B3C9C5E8();
    *(v4 + 56) = v6;
    *(v4 + 64) = sub_1B3C9C5E8();
    *(v4 + 72) = v7;
    sub_1B380D024(v4, v3);
    [v3 setIncludeGuestAssets_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B380AE20()
{
  v1 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  result = [v0 workQueue];
  if (result)
  {
    v16 = result;
    OUTLINED_FUNCTION_20();
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    aBlock[4] = sub_1B380D090;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B370C014;
    aBlock[3] = &block_descriptor_41;
    v18 = _Block_copy(aBlock);
    v19 = v0;
    sub_1B3C9C138();
    sub_1B37D49E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B37254F8();
    sub_1B3C9D278();
    MEMORY[0x1B8C6A210](0, v14, v7, v18);
    _Block_release(v18);

    (*(v3 + 8))(v7, v1);
    (*(v10 + 8))(v14, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B380B080(char *a1)
{
  v2 = sub_1B3C9A488();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxSuggestions];
  v86 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxAssets];
  sub_1B3C9CD08();
  if (qword_1EB8500A0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v7 = qword_1EB855DC0;
  sub_1B3C9A478();
  sub_1B3C9A458();
  v8 = v3[1];
  v91 = v2;
  v8(v5, v2);
  v9 = [a1 selectedTypes];
  v90 = v3 + 1;
  v89 = v5;
  v88 = v8;
  v84 = v6;
  if (v9 == 16)
  {
    sub_1B380CA2C();
    v11 = v10;
  }

  else
  {
    v8 = [a1 combineSuggestionsForSelectedTypes:v9 maxCount:v6];
    sub_1B3710718(0, &unk_1EB850C80);
    v12 = sub_1B3C9C788();

    v11 = sub_1B380C4D0(v12);
  }

  v13 = MEMORY[0x1E69E7CC0];
  v106 = MEMORY[0x1E69E7CD0];
  v107 = MEMORY[0x1E69E7CC0];
  v102 = v11[2];
  v83 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_snapshotMode;
  v101 = v11 + 4;

  v97 = 0;
  v87 = 0;
  v92 = 0;
  v85 = 0;
  v103 = 0;
  v6 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  *&v15 = 136315138;
  v94 = v15;
  v95 = v7;
  v96 = a1;
  v100 = v11;
LABEL_6:
  while (2)
  {
    v98 = v14;
    v93 = v13;
    while (1)
    {
      v16 = v106;
      a1 = (v106 + 56);
      v99 = (v6 ^ 0x8000000000000000) - v103;
LABEL_8:
      if (v6 == v102)
      {
        a1 = v96;
        v13 = v93;
LABEL_67:

        sub_1B3710718(0, &qword_1EB84F770);

        v70 = sub_1B3C9C778();

        [a1 setPreviewAssets_];

        [a1 notifyPreviewAssetsDidChange];
        v71 = sub_1B3C9CAA8();
        if (os_log_type_enabled(v7, v71))
        {

          v72 = swift_slowAlloc();
          *v72 = 134219520;
          *(v72 + 4) = sub_1B3711890(v13);
          *(v72 + 12) = 2048;
          v73 = v11[2];

          *(v72 + 14) = v73;

          *(v72 + 22) = 2048;
          *(v72 + 24) = v87;
          *(v72 + 32) = 2048;
          *(v72 + 34) = v92;
          *(v72 + 42) = 2048;
          *(v72 + 44) = v97;
          *(v72 + 52) = 2048;
          *(v72 + 54) = v84;
          *(v72 + 62) = 2048;
          *(v72 + 64) = v86;
          _os_log_impl(&dword_1B36F3000, v7, v71, "[AmbientPhotoFrameDataSource] Prepared %ld preview assets from %ld selected candidates, failed NSFW %ld, failed cropScore %ld, duped %ld, maxSuggestions %ld, maxAssets %ld", v72, 0x48u);
          MEMORY[0x1B8C6EC70](v72, -1, -1);
        }

        else
        {
        }

        v74 = v91;
        v75 = v89;
        v76 = v88;
        sub_1B3C9CCF8();
        sub_1B3C9A478();
        sub_1B3C9A458();
        v76(v75, v74);
      }

      if (v6 >= v11[2])
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:

        v11 = v100;
        goto LABEL_67;
      }

      v17 = &v101[2 * v6];
      v3 = *v17;
      v18 = v17[1];
      v104 = *v17;
      v8 = v18;
      v19 = sub_1B37FDBDC(v8);
      if (!v20)
      {
        goto LABEL_78;
      }

      v13 = v20;
      ++v6;
      if (*(v16 + 16))
      {
        v21 = v19;
        sub_1B3C9D7C8();
        sub_1B3C9C668();
        v22 = sub_1B3C9D7F8();
        v23 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v5 = v22 & v23;
          if (((*&a1[((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v24 = (*(v16 + 48) + 16 * v5);
          if (*v24 != v21 || v13 != v24[1])
          {
            v26 = sub_1B3C9D6A8();
            v22 = v5 + 1;
            if ((v26 & 1) == 0)
            {
              continue;
            }
          }

          v27 = sub_1B3C9CAA8();
          if (os_log_type_enabled(v7, v27))
          {
            v8 = v8;
            v28 = swift_slowAlloc();
            v5 = swift_slowAlloc();
            v105 = v5;
            *v28 = v94;
            v29 = sub_1B37FDBDC(v8);
            v13 = v30;

            v11 = v100;
            if (!v13)
            {
              goto LABEL_80;
            }

            v31 = sub_1B3749364(v29, v13, &v105);

            *(v28 + 4) = v31;
            v7 = v95;
            _os_log_impl(&dword_1B36F3000, v95, v27, "[AmbientPhotoFrameDataSource] Skip duplicate asset %s ", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v5);
            MEMORY[0x1B8C6EC70](v5, -1, -1);
            MEMORY[0x1B8C6EC70](v28, -1, -1);
          }

          else
          {

            v11 = v100;
          }

          v97 = ++v103;
          if (v6 != v99)
          {
            goto LABEL_8;
          }

          goto LABEL_72;
        }
      }

      v32 = [v8 sceneAnalysisProperties];
      if (!v32)
      {
        goto LABEL_79;
      }

      v33 = v32;
      v13 = [v32 sceneAnalysisVersion];

      v14 = v98;
      a1 = v96;
      if (v98[2] && (v34 = sub_1B371F0D0(v13), (v35 & 1) != 0))
      {
        v11 = *(v14[7] + 8 * v34);
      }

      else
      {
        v36 = [objc_allocWithZone(MEMORY[0x1E69C1530]) initWithSceneAnalysisVersion_];
        if (!v36)
        {
          goto LABEL_81;
        }

        v11 = v36;
        swift_isUniquelyReferenced_nonNull_native();
        v2 = v14;
        v105 = v14;
        v37 = sub_1B371F0D0(v13);
        v39 = v14[2];
        v40 = (v38 & 1) == 0;
        a1 = (v39 + v40);
        if (__OFADD__(v39, v40))
        {
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v41 = v37;
        v5 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855D08);
        v2 = &v105;
        if (sub_1B3C9D468())
        {
          v2 = v105;
          v42 = sub_1B371F0D0(v13);
          a1 = v96;
          if ((v5 & 1) != (v43 & 1))
          {
            goto LABEL_85;
          }

          v41 = v42;
        }

        else
        {
          a1 = v96;
        }

        v14 = v105;
        if (v5)
        {
          v44 = v105[7];
          v45 = *(v44 + 8 * v41);
          *(v44 + 8 * v41) = v11;
        }

        else
        {
          v105[(v41 >> 6) + 8] |= 1 << v41;
          *(v14[6] + 2 * v41) = v13;
          *(v14[7] + 8 * v41) = v11;
          v46 = v14[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_75;
          }

          v14[2] = v48;
        }

        v7 = v95;
      }

      v5 = v104;
      v49 = objc_opt_self();
      if (v3)
      {
        v50 = [v49 suggestionIsEligibleForDisplay:v5 asset:v8 modelSet:v11];
        if (!v50)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v50 = [v49 assetIsEligibleForDisplay:v8 modelSet:v11];
        if (!v50)
        {
LABEL_47:
          v8 = v8;
          MEMORY[0x1B8C69CE0]();
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B3C9C7E8();
          }

          sub_1B3C9C808();
          v13 = v107;
          v51 = sub_1B37FDBDC(v8);
          if (!v52)
          {
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          sub_1B3734AC0(&v105, v51, v52);

          if (a1[v83] != 1 || !sub_1B3711890(v13))
          {
            v53 = sub_1B3711890(v13);

            v11 = v100;
            if (v53 < v86)
            {
              goto LABEL_6;
            }

            goto LABEL_67;
          }

          goto LABEL_73;
        }
      }

      v98 = v14;
      if (v50 == 2)
      {
        v62 = sub_1B3C9CAA8();
        if (os_log_type_enabled(v7, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v105 = v64;
          *v63 = v94;
          v8 = v8;
          v65 = v5;
          v66 = sub_1B380CEB8(v3, v8);
          v5 = v67;

          v68 = sub_1B3749364(v66, v5, &v105);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_1B36F3000, v95, v62, "[AmbientPhotoFrameDataSource] Skip low cropScore candidate %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          v69 = v64;
          v7 = v95;
          MEMORY[0x1B8C6EC70](v69, -1, -1);
          MEMORY[0x1B8C6EC70](v63, -1, -1);

          v14 = v98;
        }

        else
        {
        }

        v13 = v93;
        v47 = __OFADD__(v92++, 1);
        v11 = v100;
        if (v47)
        {
          __break(1u);
          goto LABEL_77;
        }

        goto LABEL_6;
      }

      if (v50 == 1)
      {
        break;
      }

      v11 = v100;
    }

    v54 = sub_1B3C9CAA8();
    if (os_log_type_enabled(v7, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v105 = v56;
      *v55 = v94;
      v8 = v8;
      v57 = v5;
      v58 = sub_1B380CEB8(v3, v8);
      v5 = v59;

      v60 = sub_1B3749364(v58, v5, &v105);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1B36F3000, v95, v54, "[AmbientPhotoFrameDataSource] Skip NSFW candidate %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      v61 = v56;
      v7 = v95;
      MEMORY[0x1B8C6EC70](v61, -1, -1);
      MEMORY[0x1B8C6EC70](v55, -1, -1);

      v14 = v98;
    }

    else
    {
    }

    v13 = v93;
    v47 = __OFADD__(v85, 1);
    v87 = ++v85;
    v11 = v100;
    if (!v47)
    {
      continue;
    }

    break;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  v78 = sub_1B371F0D0(v13);
  if (v79)
  {
    v80 = v78;
    v81 = v98;
    swift_isUniquelyReferenced_nonNull_native();
    v105 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855D08);
    sub_1B3C9D468();

    sub_1B3710718(0, &qword_1EB855D10);
    sub_1B3C9D478();
    __break(1u);
    goto LABEL_83;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_1B3C9D718();
  __break(1u);
  return result;
}

id static AmbientPhotoFrameDataSource.areAssetsAvailableForSingleSmartAlbumType(library:smartAlbumType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [swift_getObjCClassFromMetadata() baseSuggestionFetchOptionsForPhotoLibrary_];
  [v5 setFetchLimit_];
  [v5 setShouldPrefetchCount_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B3CFB680;
  result = [v5 internalPredicate];
  if (result)
  {
    v8 = result;
    sub_1B3710718(0, &qword_1EB84F188);
    *(v6 + 32) = v8;
    *(v6 + 40) = [v3 suggestionPredicateForSmartAlbumTypes_];
    v9 = sub_1B3809B44();
    [v5 setInternalPredicate_];

    v10 = [objc_opt_self() fetchSuggestionsWithOptions_];
    v11 = [v10 count];

    return (v11 > 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B380BF18()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0;
  v11 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    sub_1B3710718(0, &qword_1EB84F210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
    v2 = OUTLINED_FUNCTION_15_19();
    v3 = OUTLINED_FUNCTION_12_18(v2, xmmword_1B3CF6CE0);
    OUTLINED_FUNCTION_4_28(v3, 804);
    MEMORY[0x1B8C69CE0]();
    OUTLINED_FUNCTION_1_35();
    if (v4)
    {
      OUTLINED_FUNCTION_3_31();
    }

    OUTLINED_FUNCTION_7_23();
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v0 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_1B3710718(0, &qword_1EB84F210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
  v5 = OUTLINED_FUNCTION_15_19();
  v6 = OUTLINED_FUNCTION_12_18(v5, xmmword_1B3CF6CE0);
  OUTLINED_FUNCTION_4_28(v6, 803);
  MEMORY[0x1B8C69CE0]();
  OUTLINED_FUNCTION_1_35();
  if (v4)
  {
    OUTLINED_FUNCTION_3_31();
  }

  OUTLINED_FUNCTION_7_23();
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  sub_1B3710718(0, &qword_1EB84F210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
  v7 = OUTLINED_FUNCTION_15_19();
  v8 = OUTLINED_FUNCTION_12_18(v7, xmmword_1B3CF6CE0);
  OUTLINED_FUNCTION_4_28(v8, 801);
  MEMORY[0x1B8C69CE0]();
  OUTLINED_FUNCTION_1_35();
  if (v4)
  {
    OUTLINED_FUNCTION_3_31();
  }

  OUTLINED_FUNCTION_7_23();
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  sub_1B3710718(0, &qword_1EB84F210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
  v9 = OUTLINED_FUNCTION_15_19();
  v10 = OUTLINED_FUNCTION_12_18(v9, xmmword_1B3CF6CE0);
  OUTLINED_FUNCTION_4_28(v10, 802);
  MEMORY[0x1B8C69CE0]();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B3C9C7E8();
  }

  sub_1B3C9C808();
  if ((v1 & 0x10) != 0)
  {
LABEL_19:
    [objc_opt_self() predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
    MEMORY[0x1B8C69CE0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B3C9C7E8();
    }

    sub_1B3C9C808();
  }

LABEL_22:
  sub_1B3710718(0, &qword_1EB84F188);
  sub_1B3809B44();
  OUTLINED_FUNCTION_7_6();
}

void sub_1B380C24C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  v51 = v23;
  if ([v23 count] > 1)
  {
    v24 = [v51 fetchedObjectIDs];
    if (v24)
    {
      v25 = v24;
      sub_1B3710718(0, &unk_1EB855530);
      v26 = sub_1B3C9C788();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1B370BA40(v26);
    v30 = sub_1B3C9C778();

    v31 = PFShuffledArrayWithRandomNumberGenerator();

    v32 = sub_1B3C9C788();
    v33 = *&v22[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxSuggestions];

    v34 = sub_1B37E9AAC(v33, v32);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (v39)
    {
      sub_1B3C9D6C8();
      swift_unknownObjectRetain_n();
      v43 = swift_dynamicCastClass();
      if (!v43)
      {
        swift_unknownObjectRelease();
        v43 = MEMORY[0x1E69E7CC0];
      }

      v44 = *(v43 + 16);

      if (__OFSUB__(v40 >> 1, v38))
      {
        __break(1u);
      }

      else if (v44 == (v40 >> 1) - v38)
      {
        v42 = swift_dynamicCastClass();
        if (!v42)
        {
          swift_unknownObjectRelease();
          v42 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    sub_1B37EAAE0(v34, v36, v38, v40);
    v42 = v41;
LABEL_16:
    v45 = [v22 photoLibrary];
    if (v45)
    {
      v46 = v45;

      v47 = sub_1B3C9C5E8();
      v49 = v48;
      v50 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      sub_1B37EA7FC(v42, v46, v47, v49, 0, 0, 0, 0);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_6();
    }

    else
    {
      __break(1u);
    }

    return;
  }

  OUTLINED_FUNCTION_7_6();

  v29 = v27;
}

uint64_t sub_1B380C4D0(uint64_t a1)
{
  v39 = sub_1B3711890(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v34 = MEMORY[0x1E69E7CC0];
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1;
  v35 = a1 & 0xC000000000000001;
  while (v39 != v3)
  {
    if (v4)
    {
      v5 = MEMORY[0x1B8C6A930](v3, v38);
    }

    else
    {
      if (v3 >= *(v37 + 16))
      {
        goto LABEL_26;
      }

      v5 = *(v38 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = sub_1B380D0DC(v36);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v1 = result;
    v8 = v6;
    v9 = [v6 uuid];
    v10 = sub_1B3C9C5E8();
    v12 = v11;

    if (*(v1 + 16) && (v13 = sub_1B371EF40(v10, v12), (v14 & 1) != 0))
    {
      v24 = *(*(v1 + 56) + 8 * v13);

      v25 = v34;
      v26 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B370FF00(0, *(v34 + 16) + 1, 1, v34);
        v25 = v30;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v1 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1B370FF00(v27 > 1, v28 + 1, 1, v25);
        v25 = v31;
      }

      *(v25 + 16) = v1;
      v34 = v25;
      v29 = v25 + 16 * v28;
      *(v29 + 32) = v8;
      *(v29 + 40) = v24;
      ++v3;
      v4 = v26;
    }

    else
    {

      v15 = sub_1B3C9CAC8();
      if (qword_1EB8500A0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      v16 = qword_1EB855DC0;
      if (os_log_type_enabled(qword_1EB855DC0, v15))
      {
        v17 = OUTLINED_FUNCTION_9_0();
        v18 = swift_slowAlloc();
        v40 = v18;
        *v17 = 136315138;
        v19 = [v8 uuid];
        v20 = sub_1B3C9C5E8();
        v22 = v21;

        v23 = sub_1B3749364(v20, v22, &v40);
        v4 = v35;

        *(v17 + 4) = v23;
        _os_log_impl(&dword_1B36F3000, v16, v15, "[AmbientPhotoFrameDataSource] Missing Key Asset for Suggestion %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_3_5();
      }

      ++v3;
    }
  }

  LOBYTE(v1) = sub_1B3C9CAA8();
  if (qword_1EB8500A0 == -1)
  {
    goto LABEL_22;
  }

LABEL_27:
  OUTLINED_FUNCTION_0_16();
  swift_once();
LABEL_22:
  v32 = qword_1EB855DC0;
  if (os_log_type_enabled(qword_1EB855DC0, v1))
  {

    v33 = swift_slowAlloc();
    *v33 = 134218240;
    *(v33 + 4) = *(v34 + 16);

    *(v33 + 12) = 2048;
    *(v33 + 14) = sub_1B3711890(v38);

    _os_log_impl(&dword_1B36F3000, v32, v1, "[AmbientPhotoFrameDataSource] Prepared %ld candidates from %ld suggestions", v33, 0x16u);
    OUTLINED_FUNCTION_3_5();
  }

  return v34;
}

uint64_t sub_1B380C884(void *a1)
{
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v2 + 16);
  v7[4] = sub_1B380D0D4;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B37D5B9C;
  v7[3] = &block_descriptor_18;
  v4 = _Block_copy(v7);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;

  return v5;
}

uint64_t sub_1B380C9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = a1;
  sub_1B370EB58();
  v7 = *(*(a4 + 16) + 16);
  sub_1B370EDE4();
  v8 = *(a4 + 16);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = v6;
  *(a4 + 16) = v8;
  return swift_endAccess();
}

void sub_1B380CA2C()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0;
  v38 = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_featuredAssets;
  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_featuredAssets];
  if (!v3)
  {
    goto LABEL_23;
  }

  if (v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_coldStartMode] == 1)
  {
    v4 = v3;
    v5 = sub_1B380C884(v4);

    v6 = sub_1B3C9CAA8();
    if (qword_1EB8500A0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v7 = qword_1EB855DC0;
    if (os_log_type_enabled(qword_1EB855DC0, v6))
    {

      v8 = OUTLINED_FUNCTION_9_0();
      *v8 = 134217984;
      v9 = *(v5 + 16);

      *(v8 + 4) = v9;

      _os_log_impl(&dword_1B36F3000, v7, v6, "[AmbientPhotoFrameDataSource] Created %ld cold start candidates", v8, 0xCu);
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    goto LABEL_23;
  }

  sub_1B3710718(0, &qword_1EB84F140);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v3;
  v12 = [ObjCClassFromMetadata sharedInstance];
  v13 = [v12 includeFeaturedPhotosInFeatured];

  v14 = &qword_1EB850000;
  v15 = &OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_symbol;
  if (v13)
  {
    v16 = [v1 combineSuggestionsForSelectedTypes:16 maxCount:*&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameDataSource_maxSuggestions]];
    sub_1B3710718(0, &unk_1EB850C80);
    v17 = sub_1B3C9C788();

    v18 = sub_1B380C4D0(v17);

    sub_1B37E76F4(v19);
    v20 = sub_1B3C9CAA8();
    if (qword_1EB8500A0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v21 = qword_1EB855DC0;
    if (os_log_type_enabled(qword_1EB855DC0, v20))
    {

      v22 = OUTLINED_FUNCTION_9_0();
      *v22 = 134217984;
      v23 = *(v18 + 16);

      *(v22 + 4) = v23;
      v14 = &qword_1EB850000;

      _os_log_impl(&dword_1B36F3000, v21, v20, "[AmbientPhotoFrameDataSource] Created %ld featured photos", v22, 0xCu);
      v15 = &OBJC_IVAR____TtCE15PhotosUIPrivateCSo43PUOneUpTitlePalettePlaygroundViewControllerP33_E18EC7BCF927120C42B36F5AF22A513826TitleSubtitleConfiguration_symbol;
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }
  }

  v24 = [ObjCClassFromMetadata sharedInstance];
  v25 = [v24 includeHighlightAssetsInFeatured];

  if (!v25)
  {
LABEL_22:
    v34 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    sub_1B370BD60(v38);

    v35 = sub_1B3C9C778();

    v36 = PFShuffledArrayWithRandomNumberGenerator();

    v37 = sub_1B3C9C788();
    sub_1B370BE30(v37);

LABEL_23:
    OUTLINED_FUNCTION_7_6();
    return;
  }

  v26 = *&v1[v2];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B380C884(v27);

    sub_1B37E76F4(v29);
    v30 = sub_1B3C9CAA8();
    if (v14[20] != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v31 = v15[440];
    if (os_log_type_enabled(v31, v30))
    {

      v32 = OUTLINED_FUNCTION_9_0();
      *v32 = 134217984;
      v33 = *(v28 + 16);

      *(v32 + 4) = v33;

      _os_log_impl(&dword_1B36F3000, v31, v30, "[AmbientPhotoFrameDataSource] Created %ld highlight summary candidates", v32, 0xCu);
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1B380CEB8(void *a1, void *a2)
{
  sub_1B3C9D378();

  result = sub_1B37FDBDC(a2);
  if (v5)
  {
    MEMORY[0x1B8C69C10](result);

    MEMORY[0x1B8C69C10](0x736567677573202CLL, 0xEE00203A6E6F6974);
    if (a1)
    {
      v6 = [a1 uuid];
      v7 = sub_1B3C9C5E8();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104846;
    }

    MEMORY[0x1B8C69C10](v7, v9);

    MEMORY[0x1B8C69C10](62, 0xE100000000000000);
    return 0x203A74657373613CLL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AmbientPhotoFrameDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFrameDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B380D024(uint64_t a1, void *a2)
{
  v3 = sub_1B3C9C778();

  [a2 setFetchPropertySets_];
}

uint64_t sub_1B380D0DC(void *a1)
{
  v1 = [a1 keyAssetBySuggestionUUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B3710718(0, &qword_1EB84F770);
  v3 = sub_1B3C9C4C8();

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_1B3C9C7E8();
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_1B3C9C808();
}

id OUTLINED_FUNCTION_9_17(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1)
{

  return sub_1B380A398(a1, v2, v1);
}

__n128 *OUTLINED_FUNCTION_12_18(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[3].n128_u64[1] = v2;
  result[4].n128_u64[0] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_1B3C9A458();
}

uint64_t OUTLINED_FUNCTION_15_19()
{

  return swift_allocObject();
}

uint64_t getEnumTagSinglePayload for PhotoEditToolbarItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotoEditToolbarItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B380D390(char a1)
{
  result = 0x6974616D656E6963;
  switch(a1)
  {
    case 1:
      v3 = 1701079414;
      goto LABEL_12;
    case 2:
      result = 0x746F68506576696CLL;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 0x7473756A6461;
      break;
    case 5:
      result = 0x737265746C6966;
      break;
    case 6:
      result = 0x73656C797473;
      break;
    case 7:
      result = 1886351971;
      break;
    case 8:
      v3 = 1768191329;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 9:
      result = 0x70756E61656C63;
      break;
    case 10:
      result = 0x657945646572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B380D4AC()
{
  v0 = sub_1B3C9D568();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B380D51C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B380D4AC();
  *a1 = result;
  return result;
}

unint64_t sub_1B380D550()
{
  result = qword_1EB855D20;
  if (!qword_1EB855D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855D20);
  }

  return result;
}

uint64_t sub_1B380D5A4(char a1)
{
  switch(a1)
  {
    case 2:
      goto LABEL_4;
    case 6:
      OUTLINED_FUNCTION_1_36();
      v1 = sub_1B3C9C5A8();
      v2 = PELocalizedString();
      goto LABEL_5;
    case 7:
    case 8:
      OUTLINED_FUNCTION_13_0();
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_1_36();
LABEL_4:
      v1 = sub_1B3C9C5A8();
      v2 = PULocalizedString(v1);
LABEL_5:
      v3 = v2;

      v4 = sub_1B3C9C5E8();
      return v4;
  }
}

uint64_t sub_1B380D6F8(char a1)
{
  if (a1 == 8)
  {
    OUTLINED_FUNCTION_13_0();
    v2 = sub_1B3C9C5A8();
    v3 = PULocalizedString(v2);

    v4 = sub_1B3C9C5E8();
    return v4;
  }

  else
  {

    return sub_1B380D5A4(a1);
  }
}

uint64_t sub_1B380D784(char a1)
{
  switch(a1)
  {
    case 6:
    case 8:
      OUTLINED_FUNCTION_0_35();
      v1 = sub_1B3C9C5A8();
      v2 = PELocalizedString();
      break;
    case 10:
      OUTLINED_FUNCTION_13_0();
      goto LABEL_3;
    default:
      OUTLINED_FUNCTION_0_35();
LABEL_3:
      v1 = sub_1B3C9C5A8();
      v2 = PULocalizedString(v1);
      break;
  }

  v3 = v2;

  v4 = sub_1B3C9C5E8();
  return v4;
}

unint64_t sub_1B380D8DC(char a1, char a2)
{
  v2 = 0x6F65646976;
  v3 = 0x69662E6F65646976;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x746F68706576696CLL;
      v2 = 0x746F68706576696CLL;
      break;
    case 3:
      v2 = 0xD000000000000010;
      goto LABEL_10;
    case 4:
      v3 = 0x776F6C2E6C616964;
      v2 = 0x776F6C2E6C616964;
      break;
    case 5:
      v3 = 0x662E6172656D6163;
      goto LABEL_13;
    case 6:
      v2 = 0xD000000000000010;
LABEL_10:
      v3 = 0xD000000000000015;
      break;
    case 7:
      v3 = 0x746F722E706F7263;
      goto LABEL_13;
    case 8:
      v3 = 0xD00000000000001ALL;
LABEL_13:
      v2 = v3;
      break;
    case 9:
      v2 = 0x726573617265;
      v3 = 0x662E726573617265;
      break;
    case 10:
      v2 = 0xD000000000000016;
      v3 = 0xD00000000000001BLL;
      break;
    default:
      v3 = 0xD000000000000014;
      v2 = 0x6974616D656E6963;
      break;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_1B380DB20()
{
  v1 = sub_1B380DE08(v0);
  if (!v2)
  {
    return 11;
  }

  v3 = v1;
  v4 = v2;
  v5 = v1 == 0x6974616D656E6963 && v2 == 0xEF6F656469762E63;
  if (v5 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 0;
  }

  v7 = v3 == 0x6F65646976 && v4 == 0xE500000000000000;
  if (v7 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 1;
  }

  v8 = v3 == 0x746F68706576696CLL && v4 == 0xE90000000000006FLL;
  if (v8 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 2;
  }

  OUTLINED_FUNCTION_13_0();
  v10 = v3 == 0xD000000000000010 && v9 == v4;
  if (v10 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 3;
  }

  v11 = v3 == 0x6E696D2E6C616964 && v4 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 4;
  }

  v12 = v3 == 0x662E6172656D6163 && v4 == 0xEE00737265746C69;
  if (v12 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 5;
  }

  OUTLINED_FUNCTION_13_0();
  v14 = v3 == 0xD000000000000010 && v13 == v4;
  if (v14 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 6;
  }

  v15 = v3 == 0x746F722E706F7263 && v4 == 0xEB00000000657461;
  if (v15 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 7;
  }

  OUTLINED_FUNCTION_13_0();
  v17 = v3 == 0xD00000000000001ALL && v16 == v4;
  if (v17 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 8;
  }

  v18 = v3 == 0x726573617265 && v4 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {

    return 9;
  }

  if (v3 == 0x73616C732E657965 && v4 == 0xE900000000000068)
  {
  }

  else
  {
    v20 = OUTLINED_FUNCTION_21_3();

    if ((v20 & 1) == 0)
    {
      return 11;
    }
  }

  return 10;
}

uint64_t sub_1B380DE08(void *a1)
{
  v1 = [a1 toolbarIconGlyphName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

id static OneUpTitleFormatter.attributedStringForSymbolName(_:shouldPrependSpace:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B3710718(0, &unk_1EB84FE20);

  v6 = sub_1B380E38C(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_opt_self() configurationWithScale_];
  v9 = [v7 imageWithRenderingMode_];
  v10 = [v9 imageWithConfiguration_];

  v11 = [objc_opt_self() textAttachmentWithImage_];
  v12 = [objc_opt_self() attributedStringWithAttachment_];
  if (a3)
  {
    sub_1B3710718(0, &qword_1EB853938);
    v13 = OUTLINED_FUNCTION_0_36();
    v14 = PULocalizedString(v13);

    sub_1B3C9C5E8();
    v15 = sub_1B37A5050();
    [v15 appendAttributedString_];

    v8 = v7;
    v7 = v12;
    v12 = v15;
  }

  return v12;
}

uint64_t static OneUpTitleFormatter.formattedStrings(forAssetCreationDate:localizedGeoDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1B3C98118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B380E3FC(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B380E46C(v8);
    if (a3)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v32 = a2;
    (*(v10 + 32))(v12, v8, v9);
    if (qword_1EB84F6E0 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB84F6E8;
    v15 = sub_1B3C980C8();
    v16 = [v14 stringFromDate_];

    v13 = sub_1B3C9C5E8();
    v18 = v17;

    if (qword_1EB84F6C8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EB84F6D0;
    v20 = sub_1B3C980C8();
    v21 = [v19 stringFromDate_];

    v22 = sub_1B3C9C5E8();
    v24 = v23;

    (*(v10 + 8))(v12, v9);
    if (a3)
    {
      if (v18 && v24)
      {
        v33 = v13;
        v34 = v18;
        v25 = OUTLINED_FUNCTION_0_36();
        v26 = PULocalizedString(v25);

        v27 = sub_1B3C9C5E8();
        v29 = v28;

        MEMORY[0x1B8C69C10](v27, v29);

        MEMORY[0x1B8C69C10](v22, v24);
      }

      v13 = v32;
    }
  }

  return v13;
}

id sub_1B380E38C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1B3C9C5A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_1B380E3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B380E46C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B380E4F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() autoupdatingFormatterWithPreset_];
  result = [v4 setUseLocalDates_];
  *a3 = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTitleFormatter(_BYTE *result, int a2, int a3)
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

id sub_1B380E600(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_1B3C983C8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v4[OBJC_IVAR___PUPickerSearchCoordinator_isVisible] = 1;
  [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  v23 = sub_1B3710718(0, &qword_1EB852A98);
  v24 = sub_1B3811660();
  v22 = a2;
  v15 = a2;
  sub_1B3811750(v15);
  sub_1B3C98DC8();
  OUTLINED_FUNCTION_36_0();
  v16 = sub_1B3C98D88();
  v17 = MEMORY[0x1E69C31A0];
  if ((a3 & 1) == 0)
  {
    v17 = MEMORY[0x1E69C3198];
  }

  (*(v10 + 104))(v14, *v17, v8);
  sub_1B3710718(0, &unk_1EB851C40);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  sub_1B3C9CFE8();
  sub_1B3C983B8();
  OUTLINED_FUNCTION_36_0();
  v22 = sub_1B3C98398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855D98);
  OUTLINED_FUNCTION_36_0();

  v18 = sub_1B3C984A8();
  *&v4[OBJC_IVAR___PUPickerSearchCoordinator_activeSearchViewModel] = v16;
  *&v4[OBJC_IVAR___PUPickerSearchCoordinator_coordinator] = v18;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for PickerSearchCoordinator();

  v19 = objc_msgSendSuper2(&v21, sel_init);
  OUTLINED_FUNCTION_8_19();
  sub_1B380EA5C();
  OUTLINED_FUNCTION_7_24();
  sub_1B380EA5C();
  OUTLINED_FUNCTION_6_23();
  sub_1B380EA5C();
  OUTLINED_FUNCTION_5_26();
  sub_1B380EA5C();

  return v19;
}

uint64_t sub_1B380E9B8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
    sub_1B3C98D68();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3C98DB8();
  }

  return result;
}

void sub_1B380EC2C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B3C9C778();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1B380EC98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B3C9C4A8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B380ED54()
{
  if (*(v0 + OBJC_IVAR___PUPickerSearchCoordinator_isVisible) == 1 && (sub_1B3C984C8() & 1) != 0)
  {
    return sub_1B3C984D8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B380EDBC()
{
  if (*(v0 + OBJC_IVAR___PUPickerSearchCoordinator_isVisible) == 1 && (sub_1B3C984C8() & 1) == 0)
  {
    return sub_1B3C98508();
  }

  else
  {
    return 0;
  }
}

id sub_1B380EE2C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1B3710718(0, &qword_1EB855D90);
    v6 = sub_1B3C9C778();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1B380EEB4()
{
  if (*(v0 + OBJC_IVAR___PUPickerSearchCoordinator_isVisible) == 1)
  {
    return sub_1B3C98508();
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B380F0CC()
{
  v0 = sub_1B3C983C8();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  sub_1B3C984B8();
  sub_1B3C983A8();

  v7 = (*(v2 + 88))(v6, v0);
  v8 = v7;
  v9 = *MEMORY[0x1E69C3198];
  if (v7 != *MEMORY[0x1E69C3198] && v7 != *MEMORY[0x1E69C31A0])
  {
    (*(v2 + 8))(v6, v0);
  }

  return v8 != v9;
}

uint64_t sub_1B380F244(char a1)
{
  v2 = sub_1B3C983C8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = MEMORY[0x1E69C31A0];
  if ((a1 & 1) == 0)
  {
    v9 = MEMORY[0x1E69C3198];
  }

  (*(v4 + 104))(v8, *v9, v2);
  sub_1B3C984E8();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1B380F51C(void *a1)
{
  type metadata accessor for PickerSuggestionResultFetcher.Result();
  sub_1B38116C8();
  v2 = a1;
  return sub_1B3C98D98();
}

uint64_t sub_1B380F5DC(void *a1)
{
  if ([a1 hasFilterablePHPickerFilter])
  {
    sub_1B3710718(0, &qword_1EB852A98);
    sub_1B3811660();
    v2 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_15_20();
  }

  return sub_1B3C98D98();
}

uint64_t sub_1B380F6D0()
{
  result = sub_1B3C98DA8();
  if (result)
  {
    if (*(v0 + OBJC_IVAR___PUPickerSearchCoordinator_isVisible) != 1)
    {
      return sub_1B3C98DB8();
    }

    result = sub_1B3C984C8();
    if (result)
    {
      return sub_1B3C98DB8();
    }
  }

  return result;
}

uint64_t sub_1B380F80C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855DA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1B3C98D58();
  v9 = [v8 string];

  v10 = sub_1B3C9C5E8();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_1B3C98D78();
    v14 = sub_1B3C98368();
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) != 1)
    {
      v15 = sub_1B3C98348();
      (*(*(v14 - 8) + 8))(v7, v14);
      if (a2)
      {
      }

      goto LABEL_7;
    }

    sub_1B370EEB0(v7, &qword_1EB855DA0);
  }

  v15 = 0;
  if ((a2 & 1) == 0)
  {
LABEL_7:
    a3(v15);
  }
}

uint64_t (*sub_1B380F9A8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  return sub_1B3811B2C;
}

uint64_t sub_1B380FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_1B3C9C888();
  v6[9] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B380FADC, v8, v7);
}

uint64_t sub_1B380FADC()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_3_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_8_19();
    sub_1B380EA5C();
  }

  OUTLINED_FUNCTION_1_37(Strong == 0);

  return v1();
}

uint64_t sub_1B380FB74(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855DA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1B3C98D58();
  v9 = [v8 string];

  v10 = sub_1B3C9C5E8();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_1B3C98D78();
    v14 = sub_1B3C98368();
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) != 1)
    {
      v15 = sub_1B3C98358();
      (*(*(v14 - 8) + 8))(v7, v14);
      if (a2)
      {
      }

      goto LABEL_7;
    }

    sub_1B370EEB0(v7, &qword_1EB855DA0);
  }

  v15 = 0;
  if ((a2 & 1) == 0)
  {
LABEL_7:
    a3(v15);
  }
}

uint64_t (*sub_1B380FD10(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  return sub_1B3811A00;
}

uint64_t sub_1B380FDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_1B3C9C888();
  v6[9] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B380FE44, v8, v7);
}

uint64_t sub_1B380FE44()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_3_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_7_24();
    sub_1B380EA5C();
  }

  OUTLINED_FUNCTION_1_37(Strong == 0);

  return v1();
}

uint64_t (*sub_1B380FEDC(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  return sub_1B3811914;
}

uint64_t sub_1B380FF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_1B3C9C888();
  v6[9] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B3810010, v8, v7);
}

uint64_t sub_1B3810010()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_3_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_6_23();
    sub_1B380EA5C();
  }

  OUTLINED_FUNCTION_1_37(Strong == 0);

  return v1();
}

uint64_t sub_1B38100A8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if ((a2 & 1) == 0)
  {
    return a3(result & 1);
  }

  return result;
}

uint64_t (*sub_1B3810100(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;

  return sub_1B3811800;
}

uint64_t sub_1B3810198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  OUTLINED_FUNCTION_20();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1B3C9C888();

  v11 = sub_1B3C9C878();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = a2;
  v12[6] = a3;

  sub_1B3850E50();
}

uint64_t sub_1B3810304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_1B3C9C888();
  v6[9] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B38103A0, v8, v7);
}

uint64_t sub_1B38103A0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_3_8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_5_26();
    sub_1B380EA5C();
  }

  OUTLINED_FUNCTION_1_37(Strong == 0);

  return v1();
}

id sub_1B3810438(void *a1)
{
  v43.super_class = swift_getObjectType();
  v3 = sub_1B3C99098();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = sub_1B3C98E98();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  v42 = v12 - v11;
  v13 = OBJC_IVAR___PUPickerSearchBar_updater;
  sub_1B3C98CA8();
  OUTLINED_FUNCTION_36_0();
  *&v1[v13] = sub_1B3C98C98();
  v43.receiver = v1;
  type metadata accessor for HostingViewReader();
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0x4024000000000000;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0x401A000000000000;
  *(v9 + 40) = 0;
  (*(v5 + 104))(v9, *MEMORY[0x1E69C1CE0], v3);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  v44 = a1;

  sub_1B3C98E88();
  v15 = objc_allocWithZone(type metadata accessor for HostingView());
  v16 = sub_1B38113B4(v42);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 tertiarySystemFillColor];
  v20 = [v19 colorWithAlphaComponent_];

  [v18 setBackgroundColor_];
  v21 = v18;
  v22 = [v21 layer];
  [v22 setCornerRadius_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v21[qword_1EB855D50] = v14;

  *(v43.receiver + OBJC_IVAR___PUPickerSearchBar_hostingView) = v21;
  v45 = v43;
  v23 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v23 addSubview_];
  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B3D001A0;
  v26 = [v21 leadingAnchor];
  v27 = [v23 safeAreaLayoutGuide];
  v28 = [v27 leadingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:18.0];
  *(v25 + 32) = v29;
  v30 = [v21 trailingAnchor];
  v31 = [v23 safeAreaLayoutGuide];

  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:-18.0];

  *(v25 + 40) = v33;
  v34 = [v21 topAnchor];
  v35 = [v23 topAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v25 + 48) = v36;
  v37 = [v21 bottomAnchor];

  v38 = [v23 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v25 + 56) = v39;
  sub_1B3710718(0, &qword_1EB84FE50);
  v40 = sub_1B3C9C778();

  [v24 activateConstraints_];

  return v23;
}

uint64_t sub_1B3810AC4(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_1B3810B1C(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = a1;
    *(result + 32) = a2;
    *(result + 40) = a3;
    *(result + 48) = a4;
    *(result + 56) = 0;
  }

  return result;
}

uint64_t sub_1B3810B94(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = a1;
    *(result + 72) = 0;
  }

  return result;
}

uint64_t sub_1B3810DC4(void *a1)
{
  v4[3] = type metadata accessor for PickerSuggestionResultFetcher.Result();
  v4[4] = sub_1B38116C8();
  v4[0] = a1;
  v2 = a1;
  sub_1B3C98C78();
  return sub_1B370EEB0(v4, &qword_1EB855D78);
}

uint64_t sub_1B3810E9C(void *a1)
{
  if ([a1 hasFilterablePHPickerFilter])
  {
    v1 = sub_1B3710718(0, &qword_1EB852A98);
    v2 = sub_1B3811660();
    v4 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_15_20();
  }

  v6[3] = v1;
  v6[4] = v2;
  v6[0] = a1;
  sub_1B3C98C78();
  return sub_1B370EEB0(v6, &qword_1EB855D78);
}

void sub_1B3811028()
{
  v1 = OBJC_IVAR___PUPickerSearchBar_updater;
  sub_1B3C98CA8();
  OUTLINED_FUNCTION_36_0();
  *(v0 + v1) = sub_1B3C98C98();
  sub_1B3C9D4C8();
  __break(1u);
}

uint64_t type metadata accessor for HostingView()
{
  result = qword_1EB855D68;
  if (!qword_1EB855D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B3811270(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for HostingView();
  if (objc_msgSendSuper2(&v11, sel_pointInside_withEvent_, a1, a2, a3))
  {
    return 1;
  }

  v8 = *&v3[qword_1EB855D50];
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9 == 2 || (v9 & 1) == 0)
  {
    return 0;
  }

  sub_1B38115D0(&v12);
  if (v13)
  {
    v7 = 0;
  }

  else
  {
    v14.x = a2;
    v14.y = a3;
    v7 = CGRectContainsPoint(v12, v14);
  }

  return v7;
}

uint64_t sub_1B3811348(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v9 = a5;
  v10 = a1;
  LOBYTE(v5) = sub_1B3811270(v5, a2, a3);

  return v5 & 1;
}

uint64_t sub_1B38113B4(uint64_t a1)
{
  v3 = sub_1B3C98E98();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  *(v1 + qword_1EB855D50) = 0;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  v7 = sub_1B3C9AAB8();
  (*(v4 + 8))(a1, v3);
  return v7;
}

id sub_1B38114B4(void *a1)
{
  *&v1[qword_1EB855D50] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1B3811580(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1B38115D0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  if ((v7 & 1) == 0)
  {
    v8 = *(v1 + 64);
    if (*(v1 + 72))
    {
      v8 = 0.0;
    }

    *&v3 = CGRectOffset(*&v3, v8, 0.0);
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

unint64_t sub_1B3811660()
{
  result = qword_1EB855D80;
  if (!qword_1EB855D80)
  {
    sub_1B3710718(255, &qword_1EB852A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855D80);
  }

  return result;
}

unint64_t sub_1B38116C8()
{
  result = qword_1EB855D88;
  if (!qword_1EB855D88)
  {
    type metadata accessor for PickerSuggestionResultFetcher.Result();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855D88);
  }

  return result;
}

uint64_t sub_1B3811750(void *a1)
{
  v1 = [a1 initialSearchText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t sub_1B381183C()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_6(v1);

  return sub_1B3810304(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B3811950()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_6(v1);

  return sub_1B380FF74(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B3811A3C()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_6(v1);

  return sub_1B380FDA8(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_56Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_60Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B3811BB0()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_6(v1);

  return sub_1B380FA40(v3, v4, v5, v6, v7, v8);
}

void sub_1B3811D24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855DA8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_1B38122CC();
  sub_1B3C98E38();

  v5 = sub_1B3C98388();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1B370EEB0(v4, &qword_1EB855DA8);
    v6 = 0;
  }

  else
  {
    sub_1B3C98378();
    v6 = v7;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  v8 = [v1 collectionsTabGroup];
  if (v8)
  {
    v9 = v8;
    if (v6)
    {
      v10 = sub_1B3C9C5A8();
    }

    else
    {
      v10 = 0;
    }

    [v9 setBadgeValue_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1B3811EA8())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1B3812210;
}

uint64_t sub_1B3811F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1B3C9C8B8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1B3C9C888();

  v6 = sub_1B3C9C878();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1B3850E50();
}

uint64_t sub_1B381205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1B3C9C888();
  v4[7] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B38120F4, v6, v5);
}

uint64_t sub_1B38120F4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong updateNotificationBadge];
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B3812218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B3728A4C;

  return sub_1B381205C(a1, v4, v5, v6);
}

id sub_1B38122CC()
{
  v1 = v0;
  if ([v0 _notificationsBadgeSource])
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1B3C98E58();
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1B370EEB0(v7, &qword_1EB850170);
  }

  result = [v0 photoLibrary];
  if (result)
  {
    result = [v0 libraryFilterState];
    if (result)
    {
      sub_1B3C98E58();
      swift_allocObject();
      v2 = sub_1B3C98E48();
      [v1 set:v2 notificationsBadgeSource:?];
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B3812420()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B381247C();
  }
}

uint64_t sub_1B381247C()
{
  v1 = sub_1B3C9C118();
  v22 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C9C168();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C9C188();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1B3739098();
  v14 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_1B381283C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_42;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37D49E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A1D0](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v19)(v13, v7);
}

id sub_1B38127E8(void *a1)
{
  v2 = [a1 lastSelectedContentModeExcludingSearch];

  return [a1 navigateToContentMode:v2 animated:1 completion:0];
}

unint64_t sub_1B381284C(uint64_t a1, uint64_t a2)
{
  sub_1B3C9D378();

  MEMORY[0x1B8C69C10](a1, a2);
  return 0xD000000000000029;
}

id sub_1B38128CC(id a1, char a2)
{
  v4 = sub_1B3C98158();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B377B7D8();
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  v9 = &selRef_componentsSeparatedByCharactersInSet_;
  if ((a2 & 1) != 0 || [a1 count] != 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v10 = [a1 objectAtIndexedSubscript_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B3CFB680;
    swift_unknownObjectRetain();
    sub_1B3C98148();
    sub_1B3C98128();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v13 = objc_allocWithZone(MEMORY[0x1E69C3AB0]);
    *(v11 + 32) = OUTLINED_FUNCTION_1_38();
    swift_unknownObjectRetain();
    sub_1B3C98148();
    sub_1B3C98128();
    v12(v7, v4);
    v14 = objc_allocWithZone(MEMORY[0x1E69C3AB0]);
    *(v11 + 40) = OUTLINED_FUNCTION_1_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E0);
    v15 = sub_1B3C9C778();

    a1 = PXDisplayAssetFetchResultFromArray();

    v9 = &selRef_componentsSeparatedByCharactersInSet_;
    swift_unknownObjectRelease();
  }

  if ([a1 v9[310]] < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = PXDisplayAssetFetchResultSubfetchResultWithRange();
  }

  v17 = objc_allocWithZone(MEMORY[0x1E69C3AA0]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1B3813144(0, a1, v16, 0, 0, 0, 0, 0, 0);
  v19 = sub_1B3C9C5E8();
  sub_1B3813270(v19, v20, v18);
  v22 = OUTLINED_FUNCTION_0_37(v21, sel_setUseLowMemoryMode_);
  OUTLINED_FUNCTION_0_37(v22, sel_setUseLowPowerMode_);
  [v18 setIsAllowedToPlayAnyMusicOrSound_];
  v23 = OUTLINED_FUNCTION_0_37([v18 setOptions_], sel_setPreferAssetLocationAndCreationDateForClipTitleAndSubtitle_);
  v24 = OUTLINED_FUNCTION_0_37(v23, sel_setForcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset_);
  v25 = OUTLINED_FUNCTION_0_37(v24, sel_setUsePreferredCropRectWhenVerticallyPanningLargeFaceAreasInPortraitAssets_);
  OUTLINED_FUNCTION_0_37(v25, sel_setPreferFaceCrops_);
  OUTLINED_FUNCTION_0_37([v18 setDisabledClipMotionStyles_], sel_setDisableVideoPlayback_);
  [v18 setDisableNUp_];
  [v8 fixedAssetDuration];
  CMTimeMakeWithSeconds(&v30, v26, *MEMORY[0x1E69C4180]);
  [v18 setFixedSegmentDuration_];
  sub_1B3C9CD28();
  v27 = [v8 disableLetterAndPillarBoxing];
  [v18 setKeyAssetAspectRatioOverride_];
  [v18 setOtherAssetsAspectRatioOverride_];
  [v8 kenBurnsPanSpeed];
  [v18 setKenBurnsPanSpeed_];
  [v8 kenBurnsScaleSpeed];
  [v18 setKenBurnsScaleSpeed_];
  [v18 setKeyAssetKenBurnsScaleDirection_];
  [v18 setKeyAssetKenBurnsPanDirection_];
  [v18 setNoncriticalBufferingTimeout_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v18;
}

id sub_1B3812D98()
{
  result = PLAmbientPhotoFrameGetLog();
  if (result)
  {
    qword_1EB855DC0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AmbientPhotoFrameLog.getter()
{
  if (qword_1EB8500A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB855DC0;

  return v1;
}

id sub_1B3813054()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B38130D4(uint64_t a1)
{
  v3 = sub_1B3C9C5A8();

  v4 = [v1 initWithDisplayAsset:a1 alternateUUID:v3];
  swift_unknownObjectRelease();

  return v4;
}

id sub_1B3813144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  v11 = a7;
  if (a4)
  {
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855E90);
    v19 = sub_1B3C9C778();

    v10 = v18;
    v11 = a7;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v10 initWithAssetCollection:a1 assets:a2 keyAsset:a3 referencePersons:v19 persistableRecipe:a5 musicCurationProvider:a6 errorRepository:v11 queue:a8 parentConfiguration:a9];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v20;
}

void sub_1B3813270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();

  [a3 setLaunchType_];
}

uint64_t sub_1B38132D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1B3813378(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) == 0))
  {
    OUTLINED_FUNCTION_0_38();
    OUTLINED_FUNCTION_5_20();
    v16 = v9;
    v17 = &block_descriptor_25_2;
    v10 = _Block_copy(v15);

    v11 = [a2 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v10);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_0_38();
    OUTLINED_FUNCTION_5_20();
    v16 = v12;
    v17 = &block_descriptor_28;
    v13 = _Block_copy(v15);
    swift_unknownObjectRetain();

    v14 = [a2 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v13);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = v5;
  swift_unknownObjectRetain();
  v7 = swift_unknownObjectRetain();
  sub_1B3813628(v7, a2, v6);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_1B3813628(uint64_t a1, void *a2, void *a3)
{
  v17 = sub_1B381336C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1B37E137C;
  v16 = &block_descriptor_43;
  v6 = _Block_copy(&v13);

  v7 = [a2 presentAlertWithConfigurationHandler_];
  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    sub_1B3710718(0, &qword_1EB855F00);
    v8 = sub_1B38138B4(a3, 0);
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v7;
    v17 = sub_1B3813CC4;
    v18 = v10;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1B38132D4;
    v16 = &block_descriptor_3;
    v11 = _Block_copy(&v13);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v12 = [v9 requestDebugInformationForAudioAsset:a1 assetContainer:v8 resultHandler:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

id sub_1B38138B4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssetCollection:a1 originalContainer:a2];

  return v4;
}

uint64_t sub_1B3813910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v9 = sub_1B3C9C118();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B3C9C168();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = 3026478;
  *(v15 + 24) = 0xE300000000000000;
  if (a2)
  {
    *(v14 + 16) = 0xD000000000000014;
    *(v14 + 24) = 0x80000001B3D1A640;
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
  }

  else
  {
    *(v14 + 16) = 0x726F727245;
    *(v14 + 24) = 0xE500000000000000;
    if (a3)
    {
      swift_getErrorValue();
      v17 = sub_1B3C9D748();
    }

    else
    {
      v18 = 0xEF3E726F72726520;
      v17 = 0x6E776F6E6B6E753CLL;
    }

    *(v16 + 16) = v17;
    *(v16 + 24) = v18;
  }

  sub_1B3710718(0, &qword_1EB84FE60);
  v19 = sub_1B3C9CC88();
  v20 = swift_allocObject();
  v21 = v25;
  v20[2] = a4;
  v20[3] = v21;
  v20[4] = v14;
  v20[5] = v16;
  aBlock[4] = sub_1B3813E48;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_13_0;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B37D49E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v13, v11, v22);
  _Block_release(v22);

  (*(v27 + 8))(v11, v9);
  (*(v24 + 8))(v13, v26);
}

uint64_t sub_1B3813CCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = a3 + 16;
  v6 = a4 + 16;
  [a1 dismissAlertWithToken:a2 completionHandler:0];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B3813EFC;
  *(v8 + 24) = v7;
  v12[4] = sub_1B37D355C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B37E137C;
  v12[3] = &block_descriptor_22;
  v9 = _Block_copy(v12);

  v10 = [v4 presentAlertWithConfigurationHandler_];
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1B3813E54(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  v7 = *a2;
  v6 = a2[1];

  sub_1B3813F1C(v7, v6, a1, &selRef_setTitle_);
  swift_beginAccess();
  v9 = *a3;
  v8 = a3[1];

  sub_1B3813F1C(v9, v8, a1, &selRef_setMessage_);
}

void sub_1B3813F1C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1B3C9C5A8();

  [a3 *a4];
}

_BYTE *storeEnumTagSinglePayload for StoryColorGradeEditorItemSelectionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B3814090()
{
  result = qword_1EB855F08;
  if (!qword_1EB855F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855F08);
  }

  return result;
}

id sub_1B38140E4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_titleLabel;
  *&v4[v10] = sub_1B3814564();
  v11 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_config];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  v11[24] = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = a1;

  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1B38141C4();
  sub_1B38142F8();

  return v13;
}

id sub_1B38141C4()
{
  v1 = [v0 layer];
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_config];
  v3 = [v2 CGColor];
  [v1 setBorderColor_];

  v4 = [v0 layer];
  [v4 setBorderWidth_];

  [v0 setUserInteractionEnabled_];
  v5 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_titleLabel];
  v6 = sub_1B3C9C5A8();
  [v5 setText_];

  [v5 setTextColor_];

  return [v0 addSubview_];
}

void sub_1B38142F8()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_config + 24];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v4 = swift_allocObject();
  v5 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_titleLabel];
  v6 = off_1E7B73A90[v2];
  v7 = dbl_1B3D06470[v2];
  v8 = off_1E7B73AB0[v2];
  *(v4 + 16) = xmmword_1B3CFB680;
  v9 = dbl_1B3D06490[v2];
  v10 = [v5 *v6];
  v11 = [v1 *v6];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v7];

  *(v4 + 32) = v12;
  v13 = [v5 *v8];
  v14 = [v1 *v8];
  v15 = [v13 constraintEqualToAnchor:v14 constant:v9];

  *(v4 + 40) = v15;
  sub_1B377E1D0();
  v16 = sub_1B3C9C778();

  [v3 activateConstraints_];
}

void sub_1B38144D8()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate26OneUpChromeDebugBorderView_titleLabel;
  *(v0 + v1) = sub_1B3814564();
  sub_1B3C9D4C8();
  __break(1u);
}

id sub_1B3814564()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B38146DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B381471C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeDebugBorderView.TitlePosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B3814850()
{
  result = qword_1EB855F20;
  if (!qword_1EB855F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB855F20);
  }

  return result;
}

uint64_t sub_1B38148A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1B3C99058();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  if (a1)
  {
    OneUpPhotosBadgeViewSpec.init(badgeInfo:)(a1, a2, a3, a5);
    sub_1B3C99038();
    if (v17 || (sub_1B3C99008(), v18))
    {

      (*(v12 + 32))(a4, v16, v10);
      sub_1B3C99238();
      OUTLINED_FUNCTION_0_1();
      v19 = OUTLINED_FUNCTION_12_19();
      v20(v19);
      v21 = OUTLINED_FUNCTION_5_27();
    }

    else
    {
      if (qword_1EB8500B0 != -1)
      {
        OUTLINED_FUNCTION_2_34();
      }

      v26 = sub_1B3C9A558();
      __swift_project_value_buffer(v26, qword_1EB855F38);
      v27 = sub_1B3C9A538();
      v28 = sub_1B3C9CAC8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = a1;
        _os_log_impl(&dword_1B36F3000, v27, v28, "Failed to create valid badge view spec for badgeInfo: %lu", v29, 0xCu);
        MEMORY[0x1B8C6EC70](v29, -1, -1);
      }

      (*(v12 + 8))(v16, v10);
      sub_1B3C99238();
      v21 = OUTLINED_FUNCTION_3_32();
    }
  }

  else
  {
    sub_1B3C99238();
    v21 = OUTLINED_FUNCTION_3_32();
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_1B3814B0C(unint64_t a1)
{
  OneUpPhotosBadgeViewSpec.init(badgeInfo:)(a1, 0, 0, 0.0);
  sub_1B3C99238();
  OUTLINED_FUNCTION_0_1();
  v1 = OUTLINED_FUNCTION_12_19();
  v2(v1);
  v3 = OUTLINED_FUNCTION_5_27();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1B3814B94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id DefaultOneUpBadgeContentProvider.__allocating_init(actionsDelegate:)()
{
  OUTLINED_FUNCTION_17_0();
  v1 = objc_allocWithZone(v0);
  return DefaultOneUpBadgeContentProvider.init(actionsDelegate:)();
}

uint64_t sub_1B3814C4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3C9AC08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B3814D38()
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  swift_beginAccess();
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B3814DA0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1B3814E2C;
}

void sub_1B3814E2C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

id DefaultOneUpBadgeContentProvider.init(actionsDelegate:)()
{
  OUTLINED_FUNCTION_17_0();
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_actionsDelegate];
  *v3 = v2;
  *(v3 + 1) = v0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DefaultOneUpBadgeContentProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B3814F48@<X0>(void (**a1)()@<X8>)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  OUTLINED_FUNCTION_10_22();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(v2, ObjectType, v5);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B3C99048();
      sub_1B38154D0(v8, v9, &v21);
      if (v22)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1B370EF10(&v21, v23);
        sub_1B370EF10(v23, a1);
LABEL_9:
        sub_1B3C995B8();
        OUTLINED_FUNCTION_0_1();
        v18 = OUTLINED_FUNCTION_12_19();
        v19(v18);
        v10 = OUTLINED_FUNCTION_5_27();
        return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
      }

      v14 = sub_1B3815714(&v21);
      v15 = sub_1B38152B0(v14, v9);
      v17 = v16;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v15)
      {
        *a1 = v15;
        a1[1] = v17;
        goto LABEL_9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1B3C995B8();
  v10 = OUTLINED_FUNCTION_3_32();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B38150CC(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSocialAttributionBadgeView(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (a1)
  {
    sub_1B3C9D378();

    v11 = sub_1B3C9D678();
    MEMORY[0x1B8C69C10](v11);

    result = sub_1B3C9D4C8();
    __break(1u);
  }

  else
  {
    type metadata accessor for OneUpSocialAttributionBadgeView.HighlightLoader(0);
    sub_1B3C9A758();
    v7 = v6 + *(type metadata accessor for OneUpSocialAttributionBadgeView.LoaderProperty(0) + 20);
    *v7 = swift_getKeyPath();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v8 = v6 + *(v2 + 20);
    *v8 = swift_getKeyPath();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    v9 = v6 + *(v2 + 24);
    *v9 = swift_getKeyPath();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    sub_1B3819774(&unk_1EB84F9D8, type metadata accessor for OneUpSocialAttributionBadgeView);
    return sub_1B3C9BDD8();
  }

  return result;
}

void (*sub_1B38152B0(uint64_t a1, uint64_t a2))()
{
  v2 = sub_1B3819AB8;
  if ((a2 & 8) == 0)
  {
    v2 = sub_1B3819A90;
    if ((a2 & 0x4000000000000) == 0)
    {
      return 0;
    }
  }

  v3 = v2;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return v3;
}

void sub_1B3815334(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1B3C995D8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_4_21();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*&Strong[OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_actionsDelegate])
    {
      swift_getObjectType();
      (*(v5 + 104))(v9, *a2, v3);
      swift_unknownObjectRetain();
      sub_1B3C99C38();
      swift_unknownObjectRelease();

      (*(v5 + 8))(v9, v3);
    }

    else
    {
    }
  }
}

double sub_1B38154D0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  sub_1B3C98158();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  if ((sub_1B381577C(a1, a2) & 1) != 0 || (objc_opt_self(), swift_dynamicCastObjCClass()) && (a2 & 0x2000000000) != 0)
  {
    sub_1B3C98148();
    sub_1B3C98128();
    v7 = OUTLINED_FUNCTION_13_18();
    v8(v7);
    sub_1B3C9D318();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_7_1();
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_20_14(v9);
    v11 = MEMORY[0x1E69C2DB0];
    *(a3 + 24) = v10;
    *(a3 + 32) = v11;
    __swift_allocate_boxed_opaque_existential_1(a3);
    OUTLINED_FUNCTION_15_21();
    sub_1B3C99BD8();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B3815714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B381577C(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (a2 & 0x2000) != 0)
  {
    return 1;
  }

  else
  {
    return (a2 >> 42) & 1;
  }
}

uint64_t sub_1B38157CC(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  result = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B381658C(a2, a3);
    if (v7)
    {
      sub_1B37E7564(v7);
    }

    sub_1B38171B4(a2, a3);
    if (v8)
    {
      v9 = v8;
      [objc_allocWithZone(MEMORY[0x1E69C4578]) init];
      MEMORY[0x1B8C69CE0]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      sub_1B3C9C808();
      sub_1B37E7564(v9);
    }

    return v10;
  }

  return result;
}

uint64_t sub_1B38158E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1B3815970(a2, a3);

    if (v8)
    {
      return v8;
    }
  }

  return v6;
}

uint64_t sub_1B3815970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = v2 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  OUTLINED_FUNCTION_10_22();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v7 = *(v6 + 8);
  v8 = swift_getObjectType();
  v9 = (*(v7 + 24))(v3, v8, v7);
  if (!v9)
  {
LABEL_13:
    swift_unknownObjectRelease();
    return 0;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v44 = ObjectType;
    v12 = objc_opt_self();
    swift_unknownObjectRetain();
    v13 = [v12 dataSourceManagerWithAsset_];
    v14 = [v13 dataSource];
    v15 = [v14 identifier];

    aBlock = v15;
    v50 = 0;
    v51 = 0;
    v52 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = [objc_opt_self() indexPathSetWithIndexPath_];
    v45 = v11;
    v17 = [objc_allocWithZone(MEMORY[0x1E69C45C8]) initWithDataSourceManager_];
    OUTLINED_FUNCTION_20();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v53 = sub_1B38199DC;
    v54 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1B372B6C8;
    v52 = &block_descriptor_91_0;
    v19 = _Block_copy(&aBlock);
    v46 = v16;

    [v17 performChanges_];
    _Block_release(v19);
    v47 = v17;
    v20 = [objc_allocWithZone(MEMORY[0x1E69C3798]) initWithSelectionManager_];
    v48 = v13;
    [v20 setDataSourceManager_];
    [v20 setPerformerDelegate_];
    if ((a2 & 0x4000000000) != 0)
    {
      OUTLINED_FUNCTION_13_0();
      v34 = sub_1B3C9C5A8();
      v35 = PXLocalizedSharedLibraryString();

      v36 = sub_1B3C9C5E8();
      v38 = v37;

      OUTLINED_FUNCTION_9_18();
      v26 = swift_allocObject();
      v26[2] = v20;
      v26[3] = v45;
      v26[4] = v10;
      v26[5] = v44;
      v39 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      OUTLINED_FUNCTION_15_21();
      v40 = v20;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_18_17();
      v29 = v41 & 0xFFFFFFFFFFFFLL | 0x322E000000000000;
      v31 = v36;
      v32 = v38;
      v33 = 0xE800000000000000;
    }

    else
    {
      if ((a2 & 0x8000000000) == 0)
      {
LABEL_12:
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v21 = sub_1B3C9C5A8();
      v22 = PXLocalizedSharedLibraryString();

      v23 = sub_1B3C9C5E8();
      v25 = v24;

      OUTLINED_FUNCTION_9_18();
      v26 = swift_allocObject();
      v26[2] = v20;
      v26[3] = v45;
      v26[4] = v10;
      v26[5] = v44;
      v27 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      OUTLINED_FUNCTION_15_21();
      v28 = v20;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_18_17();
      v31 = v23;
      v32 = v25;
      v33 = 0xE600000000000000;
    }

    v42 = sub_1B3728644(v31, v32, v29, v33, 0, v30, v26);
    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      OUTLINED_FUNCTION_7_1();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B3CF9810;
      *(v11 + 32) = v42;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  swift_unknownObjectRelease();
LABEL_11:
  swift_unknownObjectRelease();
  return v11;
}

void sub_1B3815E18(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 actionPerformerForActionType_];
  if (v7)
  {
    v8 = v7;
    [v7 setPresentationEnvironment_];
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a4;
    aBlock[4] = sub_1B3819A48;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B3814B94;
    aBlock[3] = &block_descriptor_103;
    v10 = _Block_copy(aBlock);
    v11 = a2;

    [v8 performActionWithCompletionHandler_];
    _Block_release(v10);
  }

  else
  {
    if (qword_1EB8500B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1B3C9A558();
    __swift_project_value_buffer(v12, qword_1EB855F38);
    v13 = a2;
    oslog = sub_1B3C9A538();
    v14 = sub_1B3C9CAC8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      v17 = v13;
      v18 = [v17 description];
      v19 = sub_1B3C9C5E8();
      v21 = v20;

      v22 = sub_1B3749364(v19, v21, aBlock);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1B36F3000, oslog, v14, "Failed to create performer for moving asset to shared library: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1B8C6EC70](v16, -1, -1);
      MEMORY[0x1B8C6EC70](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B38160C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 actionPerformerForActionType_];
  if (v7)
  {
    v8 = v7;
    [v7 setPresentationEnvironment_];
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a4;
    aBlock[4] = sub_1B3819A6C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B3814B94;
    aBlock[3] = &block_descriptor_109;
    v10 = _Block_copy(aBlock);
    v11 = a2;

    [v8 performActionWithCompletionHandler_];
    _Block_release(v10);
  }

  else
  {
    if (qword_1EB8500B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1B3C9A558();
    __swift_project_value_buffer(v12, qword_1EB855F38);
    v13 = a2;
    oslog = sub_1B3C9A538();
    v14 = sub_1B3C9CAC8();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      v17 = v13;
      v18 = [v17 description];
      v19 = sub_1B3C9C5E8();
      v21 = v20;

      v22 = sub_1B3749364(v19, v21, aBlock);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1B36F3000, oslog, v14, "Failed to create performer for moving asset to personal library: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1B8C6EC70](v16, -1, -1);
      MEMORY[0x1B8C6EC70](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B3816370(char a1, void *a2, void *a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    goto LABEL_6;
  }

  if (qword_1EB8500B0 != -1)
  {
    OUTLINED_FUNCTION_2_34();
  }

  v8 = sub_1B3C9A558();
  __swift_project_value_buffer(v8, qword_1EB855F38);
  v9 = a3;
  v10 = a2;
  oslog = sub_1B3C9A538();
  v11 = sub_1B3C9CAC8();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    v14 = v9;
    v15 = [v14 description];
    v16 = sub_1B3C9C5E8();
    v18 = v17;

    v19 = sub_1B3749364(v16, v18, &v27);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
    v21 = sub_1B3C9C608();
    v23 = sub_1B3749364(v21, v22, &v27);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_1B36F3000, oslog, v11, a5, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C6EC70](v13, -1, -1);
    MEMORY[0x1B8C6EC70](v12, -1, -1);

LABEL_6:
    OUTLINED_FUNCTION_19_14();
    return;
  }

  OUTLINED_FUNCTION_19_14();
}

void sub_1B381658C(void *a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = v2 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  OUTLINED_FUNCTION_10_22();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 16))(v3, v9, v8);
    if (!v10)
    {
      swift_unknownObjectRelease();
      return;
    }

    v11 = [a1 mediaSubtypes];
    if ((a2 & 0x2000) != 0)
    {
      if ((v11 & 0x10) != 0)
      {
        v16 = sub_1B3C9C5A8();
        OUTLINED_FUNCTION_13_0();
        v17 = sub_1B3C9C5A8();
        v18 = PLServicesLivePortraitLocalizedFrameworkString();

        if (!v18)
        {
          __break(1u);
          return;
        }

        v68 = sub_1B3C9C5E8();
        v66 = v19;

        v65 = 0x80000001B3D1ACA0;
        v15 = 0xD000000000000012;
        v71 = 0xD000000000000018;
        v74 = 0x80000001B3D1ACC0;
      }

      else
      {
        OUTLINED_FUNCTION_13_0();
        v12 = sub_1B3C9C5A8();
        v13 = PULocalizedString(v12);

        v68 = sub_1B3C9C5E8();
        v66 = v14;

        v65 = 0xE90000000000006FLL;
        v71 = 0x746F68706576696CLL;
        v74 = 0xEF6873616C732E6FLL;
        v15 = 0x746F68706576696CLL;
      }

      v20 = a2;
      OUTLINED_FUNCTION_7_1();
      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = v10;
      v21[4] = ObjectType;
      v22 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      swift_unknownObjectRetain();
      v23 = v10;
      v24 = sub_1B381937C(v68, v66, v15, v65, 0, (a2 & 0x1000040) == 64, sub_1B3819820, v21);
      v25 = sub_1B3C9C5A8();
      v26 = PULocalizedString(v25);

      v27 = sub_1B3C9C5E8();
      v29 = v28;

      OUTLINED_FUNCTION_7_1();
      v30 = swift_allocObject();
      v31 = ObjectType;
      v76 = ObjectType;
      v32 = v30;
      v30[2] = a1;
      v30[3] = v23;
      v30[4] = v31;
      v33 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      swift_unknownObjectRetain();
      v69 = v23;
      v75 = sub_1B381937C(v27, v29, v71, v74, 0, (v20 >> 24) & 1, sub_1B381982C, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855F90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B3D064B0;
      *(inited + 32) = v24;
      v67 = v24;
      v35 = sub_1B3C9C5A8();
      v36 = PULocalizedString(v35);

      v37 = sub_1B3C9C5E8();
      v72 = v38;

      OUTLINED_FUNCTION_20();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_9_18();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = a1;
      v40[4] = v69;
      v40[5] = v76;
      v41 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      swift_unknownObjectRetain();
      v42 = v69;
      *(inited + 40) = sub_1B381937C(v37, v72, 0x746F68706576696CLL, 0xEE00706F6F6C2E6FLL, 0, (v20 >> 7) & 1, sub_1B3819854, v40);
      v43 = sub_1B3C9C5A8();
      v44 = PULocalizedString(v43);

      v45 = sub_1B3C9C5E8();
      v70 = v46;
      v73 = v45;

      OUTLINED_FUNCTION_20();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_9_18();
      v48 = swift_allocObject();
      v48[2] = v47;
      v48[3] = a1;
      v48[4] = v42;
      v48[5] = v76;
      v49 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      swift_unknownObjectRetain();
      v50 = v42;
      *(inited + 48) = sub_1B381937C(v73, v70, 0xD000000000000010, 0x80000001B3D1ABD0, 0, (v20 >> 8) & 1, sub_1B3819890, v48);
      v51 = sub_1B3C9C5A8();
      v52 = PULocalizedString(v51);

      v53 = sub_1B3C9C5E8();
      v55 = v54;

      OUTLINED_FUNCTION_20();
      v56 = swift_allocObject();
      OUTLINED_FUNCTION_14_20();
      OUTLINED_FUNCTION_9_18();
      v57 = swift_allocObject();
      v57[2] = v56;
      v57[3] = a1;
      v57[4] = v50;
      v57[5] = v76;
      v58 = objc_allocWithZone(MEMORY[0x1E69C4450]);
      swift_unknownObjectRetain();
      v59 = v50;
      *(inited + 56) = sub_1B381937C(v53, v55, 0xD000000000000017, 0x80000001B3D1AC20, 0, (v20 >> 9) & 1, sub_1B381992C, v57);
      *(inited + 64) = v75;
      v60 = MEMORY[0x1E69E7CC0];
      v77 = MEMORY[0x1E69E7CC0];
      v61 = v75;
      for (i = 0; i != 5; ++i)
      {
        if (i > 4)
        {
          __break(1u);
          goto LABEL_21;
        }

        v63 = *(inited + 8 * i + 32);
        if (v63)
        {
          v64 = v63;
          MEMORY[0x1B8C69CE0]();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B3C9C7E8();
          }

          sub_1B3C9C808();
          v60 = v77;
        }
      }

      swift_setDeallocating();
      sub_1B389E800();
      if (!(v60 >> 62))
      {

        sub_1B3C9D6B8();

        swift_unknownObjectRelease();

        return;
      }

LABEL_21:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0);
      sub_1B3C9D4D8();

      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1B3816D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = PXAssetEditOperationTypeForVariationType();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() sharedManager];
    aBlock[6] = &unk_1F2C98510;
    v10 = swift_dynamicCastObjCProtocolUnconditional();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = v3;
    aBlock[4] = sub_1B3819974;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B3814B94;
    aBlock[3] = &block_descriptor_73_0;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v13 = [v9 performEditOperationWithType:v8 asset:v10 undoManager:a3 completionHandler:v12];
    _Block_release(v12);
  }
}

void sub_1B3816F00(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedManager];
  v6 = *MEMORY[0x1E69C3FD0];
  aBlock[6] = &unk_1F2C98510;
  v7 = swift_dynamicCastObjCProtocolUnconditional();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v2;
  aBlock[4] = sub_1B38199D4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3814B94;
  aBlock[3] = &block_descriptor_85;
  v9 = _Block_copy(aBlock);
  v10 = v6;
  swift_unknownObjectRetain();

  v11 = [v5 performEditOperationWithType:v10 asset:v7 undoManager:a2 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1B38170D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_4_21();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    OUTLINED_FUNCTION_7_1();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a4;
    swift_unknownObjectRetain();
    v13 = a3;
    sub_1B3818950(a2, a6, v12);
  }

  return result;
}

void sub_1B38171B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = v2 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  OUTLINED_FUNCTION_10_22();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 16))(v3, v9, v8);
    if (v10)
    {
      v11 = v10;
      if ((a2 & 0x40000000000) == 0 || (a2 & 0x380) != 0 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
      {
        swift_unknownObjectRelease();

        return;
      }

      v13 = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      swift_unknownObjectRetain();
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v43 = objc_opt_self();
      if (qword_1EB8500A8 != -1)
      {
        swift_once();
      }

      v41 = qword_1EB855F30;
      OUTLINED_FUNCTION_7_1();
      v17 = swift_allocObject();
      v17[2] = v14;
      v17[3] = v15;
      v17[4] = v16;
      aBlock[4] = sub_1B38196A4;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B3817740;
      aBlock[3] = &block_descriptor_21;
      v18 = _Block_copy(aBlock);
      v40 = v14;

      v46 = v15;

      v19 = v16;

      [v43 assetHasDepthEnabled:v13 queue:v41 handler:v18];
      _Block_release(v18);
      v20 = sub_1B3C9C5A8();
      v21 = PLServicesLivePortraitLocalizedFrameworkString();

      if (v21)
      {
        v22 = sub_1B3C9C5E8();
        v42 = v23;
        v44 = v22;

        v24 = sub_1B3C9C5A8();
        v25 = PLServicesLivePortraitLocalizedFrameworkString();

        if (v25)
        {
          v26 = sub_1B3C9C5E8();
          v38 = v27;
          v39 = v26;

          sub_1B3C9CC28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
          OUTLINED_FUNCTION_9_18();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1B3CFB680;
          OUTLINED_FUNCTION_4_21();
          v37 = *(v14 + 16);
          OUTLINED_FUNCTION_20();
          v29 = swift_allocObject();
          OUTLINED_FUNCTION_14_20();
          v30 = swift_allocObject();
          v30[2] = v40;
          v30[3] = v46;
          v30[4] = v29;
          v30[5] = a1;
          v30[6] = v11;
          v30[7] = ObjectType;
          v31 = objc_allocWithZone(MEMORY[0x1E69C4450]);
          swift_unknownObjectRetain();

          v32 = v11;
          *(v28 + 32) = sub_1B381937C(v44, v42, 0xD000000000000010, 0x80000001B3D19E30, 0, v37, sub_1B38196B0, v30);
          v45 = ~*(v40 + 16);
          OUTLINED_FUNCTION_20();
          v33 = swift_allocObject();
          OUTLINED_FUNCTION_14_20();
          v34 = swift_allocObject();
          v34[2] = v40;
          v34[3] = v46;
          v34[4] = v33;
          v34[5] = a1;
          v34[6] = v32;
          v34[7] = ObjectType;
          v35 = objc_allocWithZone(MEMORY[0x1E69C4450]);
          OUTLINED_FUNCTION_15_21();

          v36 = v32;
          *(v28 + 40) = sub_1B381937C(v39, v38, 0xD000000000000016, 0x80000001B3D1AA70, 0, v45 & 1, sub_1B3819720, v34);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1B38176C0(char a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_beginAccess();
  *(a4 + 16) = a2;
  dispatch_group_leave(a5);
}

uint64_t sub_1B3817740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1B38177A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = swift_beginAccess(), (*(a2 + 16) & 1) == 0))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = swift_allocObject();
      v13[2] = a4;
      v13[3] = a5;
      v13[4] = a6;
      swift_unknownObjectRetain();
      v14 = a5;
      sub_1B3818950(a4, sub_1B3819768, v13);
    }
  }

  return result;
}

void sub_1B38178D8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v7 = PXAssetEditOperationTypeForDepthToggle();
  if (!v7)
  {
    sub_1B3C9C5E8();
    v7 = sub_1B3C9C5A8();
  }

  v8 = [objc_opt_self() sharedManager];
  aBlock[6] = &unk_1F2C98510;
  v9 = swift_dynamicCastObjCProtocolUnconditional();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = a2;
  *(v10 + 32) = v3;
  aBlock[4] = sub_1B381975C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3814B94;
  aBlock[3] = &block_descriptor_40_0;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v12 = [v8 performEditOperationWithType:v7 asset:v9 undoManager:a3 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1B3817A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) != 0 || (result = swift_beginAccess(), (*(a2 + 16) & 1) == 0))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = swift_allocObject();
      v13[2] = a4;
      v13[3] = a5;
      v13[4] = a6;
      swift_unknownObjectRetain();
      v14 = a5;
      sub_1B3818950(a4, sub_1B3819750, v13);
    }
  }

  return result;
}

uint64_t sub_1B3817BA8()
{
  v0 = sub_1B3C9CC78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C9CC48();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B3710718(0, &qword_1EB84FE60);
  sub_1B3C9C148();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1B3819774(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
  sub_1B38197BC();
  sub_1B3C9D278();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1B3C9CCA8();
  qword_1EB855F30 = result;
  return result;
}

void sub_1B3817DF0(char a1, void *a2)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v3 = sub_1B3C9C5A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3CF6CE0;
    *(inited + 32) = sub_1B3C9C5E8();
    *(inited + 40) = v5;
    objc_opt_self();
    *(inited + 48) = swift_dynamicCastObjCClassUnconditional();
    sub_1B3710718(0, &qword_1EB854400);
    swift_unknownObjectRetain();
    sub_1B3C9C4D8();
    v6 = sub_1B3C9C4A8();

    [v2 sendEvent:v3 withPayload:v6];
  }

  else
  {
    if (qword_1EB8500B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B3C9A558();
    __swift_project_value_buffer(v8, qword_1EB855F38);
    swift_unknownObjectRetain();
    v9 = a2;
    oslog = sub_1B3C9A538();
    v10 = sub_1B3C9CAC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855F80);
      v13 = sub_1B3C9C608();
      v15 = sub_1B3749364(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
      v17 = sub_1B3C9C608();
      v19 = sub_1B3749364(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1B36F3000, oslog, v10, "Failed to disable live photo for asset %s. Error: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v12, -1, -1);
      MEMORY[0x1B8C6EC70](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B3818134(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = objc_opt_self();
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    sub_1B3C9D378();
    MEMORY[0x1B8C69C10](0xD00000000000002ALL, 0x80000001B3D1ACE0);
    v6 = PXAssetVariationTypeDescription();
    v7 = sub_1B3C9C5E8();
    v9 = v8;

    MEMORY[0x1B8C69C10](v7, v9);

    MEMORY[0x1B8C69C10](0xD000000000000017, 0x80000001B3D1AAC0);
    v10 = sub_1B3C9C5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3CF6CE0;
    *(inited + 32) = sub_1B3C9C5E8();
    *(inited + 40) = v12;
    objc_opt_self();
    *(inited + 48) = swift_dynamicCastObjCClassUnconditional();
    sub_1B3710718(0, &qword_1EB854400);
    swift_unknownObjectRetain();
    sub_1B3C9C4D8();
    v13 = sub_1B3C9C4A8();

    [v5 sendEvent:v10 withPayload:v13];
  }

  else
  {
    if (qword_1EB8500B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B3C9A558();
    __swift_project_value_buffer(v15, qword_1EB855F38);
    swift_unknownObjectRetain();
    v16 = a2;
    oslog = sub_1B3C9A538();
    v17 = sub_1B3C9CAC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136315650;
      v20 = PXAssetVariationTypeDescription();
      v21 = sub_1B3C9C5E8();
      v23 = v22;

      v24 = sub_1B3749364(v21, v23, v33);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v34 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855F80);
      v25 = sub_1B3C9C608();
      v27 = sub_1B3749364(v25, v26, v33);

      *(v18 + 14) = v27;
      *(v18 + 22) = 2080;
      v34 = a2;
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
      v29 = sub_1B3C9C608();
      v31 = sub_1B3749364(v29, v30, v33);

      *(v18 + 24) = v31;
      _os_log_impl(&dword_1B36F3000, oslog, v17, "Failed to apply live photo effect %s to asset %s. Error: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v19, -1, -1);
      MEMORY[0x1B8C6EC70](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B3818564(char a1, void *a2, char a3, void *a4)
{
  if (a1)
  {
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1B3C9D378();
    MEMORY[0x1B8C69C10](0xD00000000000002BLL, 0x80000001B3D1AA90);
    v6 = (a3 & 1) == 0;
    if (a3)
    {
      v7 = 0x6E4F6874706544;
    }

    else
    {
      v7 = 0x66664F6874706544;
    }

    if (v6)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    v9 = objc_opt_self();
    MEMORY[0x1B8C69C10](v7, v8);

    MEMORY[0x1B8C69C10](0xD000000000000017, 0x80000001B3D1AAC0);
    v10 = sub_1B3C9C5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3CF6CE0;
    *(inited + 32) = sub_1B3C9C5E8();
    *(inited + 40) = v12;
    objc_opt_self();
    *(inited + 48) = swift_dynamicCastObjCClassUnconditional();
    sub_1B3710718(0, &qword_1EB854400);
    swift_unknownObjectRetain();
    sub_1B3C9C4D8();
    v13 = sub_1B3C9C4A8();

    [v9 sendEvent:v10 withPayload:v13];
  }

  else
  {
    if (qword_1EB8500B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B3C9A558();
    __swift_project_value_buffer(v15, qword_1EB855F38);
    swift_unknownObjectRetain();
    v16 = a2;
    oslog = sub_1B3C9A538();
    v17 = sub_1B3C9CAC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315394;
      v29 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855F80);
      v20 = sub_1B3C9C608();
      v22 = sub_1B3749364(v20, v21, v28);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v29 = a2;
      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
      v24 = sub_1B3C9C608();
      v26 = sub_1B3749364(v24, v25, v28);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_1B36F3000, oslog, v17, "Failed to toggle depth effect for asset %s. Error: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v19, -1, -1);
      MEMORY[0x1B8C6EC70](v18, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B3818950(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && [v8 isSpatialMedia])
  {
    sub_1B3710718(0, &qword_1EB855F68);
    v9 = sub_1B3C9C5A8();
    v10 = PELocalizedString();

    v11 = sub_1B3C9C5E8();
    v13 = v12;

    v14 = sub_1B3C9C5A8();
    v15 = PELocalizedString();

    v16 = sub_1B3C9C5E8();
    v18 = v17;

    v19 = sub_1B3818CB4(v11, v13, v16, v18, 1);
    sub_1B3710718(0, &unk_1EB855F70);
    v20 = sub_1B3C9C5A8();
    v21 = PELocalizedString();

    v22 = sub_1B3C9C5E8();
    v24 = v23;

    OUTLINED_FUNCTION_7_1();
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = a3;
    v25[4] = ObjectType;

    v26 = sub_1B3818E60(v22, v24, 0, sub_1B3819688, v25);
    [v19 addAction_];

    v27 = sub_1B3C9C5A8();
    v28 = PELocalizedString();

    v29 = sub_1B3C9C5E8();
    v31 = v30;

    OUTLINED_FUNCTION_20();
    v32 = swift_allocObject();
    *(v32 + 16) = ObjectType;
    v33 = sub_1B3818E60(v29, v31, 1, sub_1B3819694, v32);
    [v19 addAction_];

    v34 = v4 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
    OUTLINED_FUNCTION_4_21();
    if (swift_unknownObjectWeakLoadStrong() && (v35 = *(v34 + 8), v36 = swift_getObjectType(), v37 = (*(v35 + 24))(v4, v36, v35), swift_unknownObjectRelease(), v37))
    {
      [v37 presentViewController:v19 animated:1 completionHandler:0];
      swift_unknownObjectRelease();
    }

    else
    {
      a2();
    }
  }

  else
  {
    a2();
  }

  OUTLINED_FUNCTION_19_14();
}

id sub_1B3818CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1B3C9C5A8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1B3C9C5A8();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

uint64_t sub_1B3818D6C(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1EB8500B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B3C9A558();
  __swift_project_value_buffer(v3, qword_1EB855F38);
  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAA8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B36F3000, v4, v5, "User approved 1up edit of spatial asset", v6, 2u);
    MEMORY[0x1B8C6EC70](v6, -1, -1);
  }

  return a2();
}

id sub_1B3818E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1B3C9C5A8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B37D2F2C;
  v12[3] = &block_descriptor_44;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_1B3818F68()
{
  if (qword_1EB8500B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B3C9A558();
  __swift_project_value_buffer(v0, qword_1EB855F38);
  oslog = sub_1B3C9A538();
  v1 = sub_1B3C9CAA8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B36F3000, oslog, v1, "User cancelled 1up edit of spatial asset", v2, 2u);
    MEMORY[0x1B8C6EC70](v2, -1, -1);
  }
}

uint64_t sub_1B3819050()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB855F38);
  __swift_project_value_buffer(v0, qword_1EB855F38);
  return sub_1B3C9A548();
}

id DefaultOneUpBadgeContentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultOneUpBadgeContentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultOneUpBadgeContentProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSUndoManager_optional __swiftcall DefaultOneUpBadgeContentProvider.undoManager(for:)(PXActionPerformer *a1)
{
  v6 = 0;
  sub_1B3C9C888();
  v4[2] = &v6;
  v5 = v1;
  sub_1B36FA788(sub_1B3819500, v4);
  v3 = v6;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

void sub_1B3819260(void **a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC15PhotosUIPrivate32DefaultOneUpBadgeContentProvider_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(a2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  *a1 = v7;
}

id sub_1B381937C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_1B3C9C5A8();

  if (a4)
  {
    v16 = sub_1B3C9C5A8();
  }

  else
  {
    v16 = 0;
  }

  v20[4] = a7;
  v20[5] = a8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1B370C014;
  v20[3] = &block_descriptor_43;
  v17 = _Block_copy(v20);
  v18 = [v9 initWithTitle:v15 systemImageName:v16 role:a5 state:a6 handler:v17];

  _Block_release(v17);

  return v18;
}

uint64_t sub_1B38194AC@<X0>(void *a1@<X8>)
{
  type metadata accessor for OneUpSocialAttributionBadgeView.HighlightLoader(0);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  result = sub_1B3C98308();
  *a1 = v2;
  return result;
}

uint64_t objectdestroy_26Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B3819774(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B38197BC()
{
  result = qword_1EB84FE80;
  if (!qword_1EB84FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB854940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84FE80);
  }

  return result;
}

uint64_t objectdestroy_17Tm_0()
{
  OUTLINED_FUNCTION_17_0();

  v2(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, v0, 7);
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_93Tm()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9_18();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_117Tm()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_20_14(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;

  return sub_1B3C99BE8();
}

char *OneUpGestureController.__allocating_init(view:actionsController:)()
{
  OUTLINED_FUNCTION_17_0();
  v1 = objc_allocWithZone(v0);
  return OneUpGestureController.init(view:actionsController:)();
}

char *OneUpGestureController.init(view:actionsController:)()
{
  OUTLINED_FUNCTION_17_0();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR___PUOneUpGestureController_interactionInsets];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  *(v3 + 1) = v4;
  *&v1[OBJC_IVAR___PUOneUpGestureController_view] = v2;
  *&v1[OBJC_IVAR___PUOneUpGestureController_actionsController] = v0;
  v5 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v6 = v2;
  swift_unknownObjectRetain();
  v7 = [v5 init];
  *&v1[OBJC_IVAR___PUOneUpGestureController_tapGestureRecognizer] = v7;
  [v6 addGestureRecognizer_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  *&v1[OBJC_IVAR___PUOneUpGestureController_doubleTapGestureRecognizer] = v8;
  [v6 addGestureRecognizer_];
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OneUpGestureController();
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v10 = OBJC_IVAR___PUOneUpGestureController_tapGestureRecognizer;
  v11 = *&v9[OBJC_IVAR___PUOneUpGestureController_tapGestureRecognizer];
  v12 = v9;
  [v11 setDelegate_];
  [*&v9[v10] addTarget:v12 action:sel_handleTapWithRecognizer_];
  v13 = OBJC_IVAR___PUOneUpGestureController_doubleTapGestureRecognizer;
  [*&v12[OBJC_IVAR___PUOneUpGestureController_doubleTapGestureRecognizer] setDelegate_];
  [*&v12[v13] setNumberOfTapsRequired_];
  [*&v12[v13] addTarget:v12 action:sel_handleDoubleTapWithRecognizer_];
  [*&v9[v10] requireGestureRecognizerToFail_];

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1B3819FA4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B381A030(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___PUOneUpGestureController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B37D9328;
}

double sub_1B381A0D8()
{
  OUTLINED_FUNCTION_1_39(OBJC_IVAR___PUOneUpGestureController_interactionInsets);
  swift_beginAccess();
  return *v0;
}

uint64_t sub_1B381A140(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_1_39(OBJC_IVAR___PUOneUpGestureController_interactionInsets);
  result = swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void sub_1B381A1A4(uint64_t a1@<X8>)
{
  *a1 = sub_1B381A0D8();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

id sub_1B381A2A4()
{
  [*(v0 + OBJC_IVAR___PUOneUpGestureController_tapGestureRecognizer) px_cancel];
  v1 = *(v0 + OBJC_IVAR___PUOneUpGestureController_doubleTapGestureRecognizer);

  return [v1 px_cancel];
}

id sub_1B381A340(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    OUTLINED_FUNCTION_3_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v4 = OUTLINED_FUNCTION_2_35(Strong, sel_oneUpGestureController_canPerformSelectionAtPoint_), swift_unknownObjectRelease(), v4))
    {
      return [*(v1 + OBJC_IVAR___PUOneUpGestureController_actionsController) performSimpleActionWithActionType_];
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v5 = OUTLINED_FUNCTION_2_35(result, sel_oneUpGestureController_canTapToToggleChromeAtPoint_);
        result = swift_unknownObjectRelease();
        if (v5)
        {
          return [*(v1 + OBJC_IVAR___PUOneUpGestureController_actionsController) toggleChromeVisibility];
        }
      }
    }
  }

  return result;
}

id sub_1B381A494(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    OUTLINED_FUNCTION_3_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return [*(v1 + OBJC_IVAR___PUOneUpGestureController_actionsController) performZoomAt_];
    }

    v5 = OUTLINED_FUNCTION_2_35(Strong, sel_oneUpGestureController_canDoubleTapToZoomAtPoint_);
    result = swift_unknownObjectRelease();
    if (v5)
    {
      return [*(v1 + OBJC_IVAR___PUOneUpGestureController_actionsController) performZoomAt_];
    }
  }

  return result;
}

void sub_1B381A598()
{
  [*(v0 + OBJC_IVAR___PUOneUpGestureController_view) bounds];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_39(OBJC_IVAR___PUOneUpGestureController_interactionInsets);
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_17();
  UIEdgeInsetsInsetRect(v1, v2, v3, v4, v5, v6);
}

id OneUpGestureController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpGestureController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpGestureController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall OneUpGestureController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  result = 1;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_2_35(Strong, sel_oneUpGestureController_canBeginGestureAt_);
    swift_unknownObjectRelease();
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall OneUpGestureController.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  OUTLINED_FUNCTION_17_0();
  sub_1B381A598();
  OUTLINED_FUNCTION_6();
  [v2 locationInView_];
  v9.origin.x = OUTLINED_FUNCTION_17();
  if (!CGRectContainsPoint(v9, v8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  if (*(v3 + OBJC_IVAR___PUOneUpGestureController_doubleTapGestureRecognizer) == v4)
  {
    v6 = OUTLINED_FUNCTION_2_35(Strong, sel_oneUpGestureController_canDoubleTapToZoomAtPoint_);
  }

  else
  {
    v6 = 1;
  }

  swift_unknownObjectRelease();
  return v6;
}

Swift::Bool __swiftcall OneUpGestureController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRecognizeSimultaneouslyWith)
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = [Strong oneUpGestureController:v3 shouldRecognizeGestureRecognizer:v4 simultaneouslyWithOtherGestureRecognizer:v2];
  swift_unknownObjectRelease();
  return v6;
}

Swift::Bool __swiftcall OneUpGestureController.gestureRecognizer(_:shouldBeRequiredToFailBy:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldBeRequiredToFailBy)
{
  result = 0;
  if (*(v2 + OBJC_IVAR___PUOneUpGestureController_doubleTapGestureRecognizer) == _)
  {
    sub_1B381AA8C();
    if (([(UIGestureRecognizer *)shouldBeRequiredToFailBy isKindOfClass:swift_getObjCClassFromMetadata()]& 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1B381AA8C()
{
  result = qword_1EB84F800;
  if (!qword_1EB84F800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F800);
  }

  return result;
}

id OUTLINED_FUNCTION_2_35(id a1, SEL a2)
{

  return [a1 a2];
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B381AD04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B381AD44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PhotosUIPrivate29StoryMusicEditorSongAlertTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B381ADBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1B381ADFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B381AE6C@<X0>(void *a1@<X8>)
{
  result = sub_1B3C9AC98();
  *a1 = v3;
  return result;
}

__n128 sub_1B381AEC0@<Q0>(uint64_t a1@<X8>)
{
  *a1 = sub_1B3C9AFF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560A0);
  sub_1B381AF9C(v1, (a1 + *(v3 + 44)));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560A8) + 36)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560B0);
  sub_1B3C9BCB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560B8);
  OUTLINED_FUNCTION_3_33();
  result = v6;
  *v5 = v6;
  v5[1].n128_u64[0] = v7;
  v5[1].n128_u64[1] = v8;
  v5[2].n128_u8[0] = v9;
  return result;
}

uint64_t sub_1B381AF9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B70);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560C8);
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = sub_1B3C9AF18();
  v17 = *(a1 + 64);
  *v10 = v16;
  *(v10 + 1) = v17;
  v10[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560D0);
  sub_1B381B500(a1, &v10[*(v18 + 44)]);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = sub_1B3C9B508();
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560D8) + 36)];
  *v24 = v23;
  *(v24 + 1) = v19;
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  *(v24 + 4) = v22;
  v24[40] = 0;
  v25 = sub_1B3C9AB28();
  LOBYTE(v22) = sub_1B3C9B508();
  v26 = sub_1B3C9C008();
  v28 = v27;
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560E0) + 36)];
  *v29 = 256;
  *(v29 + 1) = v25;
  v29[16] = v22;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v30 = &v10[*(v8 + 36)];
  v31 = *(sub_1B3C9AB78() + 20);
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_1B3C9AFA8();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  __asm { FMOV            V0.2D, #5.0 }

  *v30 = _Q0;
  v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560E8) + 36)] = 0;
  v66 = a1;
  type metadata accessor for StoryMusicFeedbackContextMenu();
  sub_1B381CC70();
  sub_1B3820CC0(&qword_1EB856130, type metadata accessor for StoryMusicFeedbackContextMenu);
  v39 = v15;
  sub_1B3C9B868();
  sub_1B371B36C(v10, &qword_1EB8560C0);
  if (*(a1 + 17))
  {
    v40 = v59;
    sub_1B3C9BE68();
    v41 = sub_1B3C9B538();
    sub_1B3C9A738();
    v42 = v63;
    v43 = v40 + *(v63 + 36);
    *v43 = v41;
    *(v43 + 8) = v44;
    *(v43 + 16) = v45;
    *(v43 + 24) = v46;
    *(v43 + 32) = v47;
    *(v43 + 40) = 0;
    v48 = v60;
    sub_1B381CE98(v40, v60);
    v49 = 0;
    v50 = v42;
  }

  else
  {
    v49 = 1;
    v48 = v60;
    v50 = v63;
  }

  __swift_storeEnumTagSinglePayload(v48, v49, 1, v50);
  v51 = v11;
  v52 = *(v11 + 16);
  v53 = v61;
  v54 = v62;
  v52(v62, v39, v61);
  v55 = v64;
  sub_1B38203A0();
  v52(v65, v54, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856138);
  sub_1B38203A0();
  sub_1B371B36C(v48, &qword_1EB854B78);
  v56 = *(v51 + 8);
  v56(v39, v53);
  sub_1B371B36C(v55, &qword_1EB854B78);
  return (v56)(v54, v53);
}

uint64_t sub_1B381B500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856148);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 56);
  type metadata accessor for StorySongViewModel();
  sub_1B3820CC0(&unk_1EB853800, type metadata accessor for StorySongViewModel);

  v11 = sub_1B3C9AA58();
  v13 = v12;
  KeyPath = swift_getKeyPath();
  *v9 = sub_1B3C9B008();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856150) + 44)];
  *v15 = sub_1B3C9AF18();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856158);
  sub_1B381B734(a1, &v15[*(v16 + 44)]);
  sub_1B38203A0();
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856160);
  sub_1B38203A0();

  sub_1B3820394(KeyPath, 0);
  sub_1B371B36C(v9, &qword_1EB856148);
  sub_1B371B36C(v6, &qword_1EB856148);

  return sub_1B37BA2E8(KeyPath, 0);
}

uint64_t sub_1B381B734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856168);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856178);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856180);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856188);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;
  *v25 = sub_1B3C9B008();
  *(v25 + 1) = 0;
  v26 = 1;
  v25[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856190);
  sub_1B381BBC8(a1, &v25[*(v27 + 44)]);
  if (*(a1 + 16))
  {
    *v13 = sub_1B3C9AF18();
    *(v13 + 1) = 0x4024000000000000;
    v13[16] = 0;
    v28 = sub_1B3723EEC();
    v36 = v11;
    if (v28)
    {
      v29 = v37;
      sub_1B381C2A8(v37);
      v30 = v39;
      (*(v38 + 32))(v10, v29, v39);
      v31 = 0;
    }

    else
    {
      v31 = 1;
      v30 = v39;
    }

    __swift_storeEnumTagSinglePayload(v10, v31, 1, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561A0);
    sub_1B38203A0();
    sub_1B38203A0();
    sub_1B371B36C(v10, &qword_1EB856170);
    sub_1B371B36C(v7, &qword_1EB856170);
    sub_1B3706620();
    v26 = 0;
    v11 = v36;
  }

  __swift_storeEnumTagSinglePayload(v19, v26, 1, v11);
  sub_1B38203A0();
  sub_1B38203A0();
  v32 = v40;
  sub_1B38203A0();
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856198) + 48);
  *v33 = 0x4024000000000000;
  *(v33 + 8) = 0;
  sub_1B38203A0();
  sub_1B371B36C(v19, &qword_1EB856180);
  sub_1B371B36C(v25, &qword_1EB856188);
  sub_1B371B36C(v16, &qword_1EB856180);
  return sub_1B371B36C(v22, &qword_1EB856188);
}

uint64_t sub_1B381BBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561C0) - 8;
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  *v11 = sub_1B3C9AF18();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v41 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561D0);
  sub_1B381BFAC(a1, &v11[*(v12 + 44)]);
  v46 = sub_1B3723E38();
  v47 = v13;
  sub_1B371B158();
  v14 = sub_1B3C9B7A8();
  v16 = v15;
  v18 = v17;
  v19 = sub_1B3C9B778();
  v21 = v20;
  LOBYTE(v11) = v22;
  v23 = MEMORY[0x1E69E7D48];
  sub_1B38211CC(v14, v16, v18 & 1, MEMORY[0x1E69E7D48]);

  sub_1B3C9BBC8();
  v24 = sub_1B3C9B758();
  v26 = v25;
  v28 = v27;
  v40 = v29;

  sub_1B38211CC(v19, v21, v11 & 1, v23);

  v30 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561D8) + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561E0) + 28);
  v32 = *MEMORY[0x1E6980FA8];
  v33 = sub_1B3C9B748();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v6 = v24;
  *(v6 + 1) = v26;
  v6[16] = v28 & 1;
  *(v6 + 3) = v40;
  KeyPath = swift_getKeyPath();
  v35 = v42;
  v36 = &v6[*(v43 + 44)];
  *v36 = KeyPath;
  *(v36 + 1) = 1;
  v36[16] = 0;
  v37 = v41;
  sub_1B38203A0();
  v38 = v44;
  sub_1B38203A0();
  sub_1B38203A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561E8);
  sub_1B38203A0();
  sub_1B371B36C(v6, &qword_1EB8561C0);
  sub_1B371B36C(v37, &qword_1EB8561C8);
  sub_1B371B36C(v38, &qword_1EB8561C0);
  return sub_1B371B36C(v35, &qword_1EB8561C8);
}

uint64_t sub_1B381BFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561C0) - 8;
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v35 = *(a1 + 8);
  v39 = sub_1B3723E2C();
  v40 = v7;
  sub_1B371B158();
  v8 = sub_1B3C9B7A8();
  v10 = v9;
  v12 = v11;
  sub_1B3C9B5E8();
  v13 = sub_1B3C9B778();
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E69E7D48];
  sub_1B38211CC(v8, v10, v12 & 1, MEMORY[0x1E69E7D48]);

  sub_1B3C9BBB8();
  v19 = sub_1B3C9B758();
  v21 = v20;
  LOBYTE(v8) = v22;
  v34 = v23;

  sub_1B38211CC(v13, v15, v17 & 1, v18);

  v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561D8) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561E0) + 28);
  v26 = *MEMORY[0x1E6980FA8];
  v27 = sub_1B3C9B748();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  *v6 = v19;
  *(v6 + 1) = v21;
  v6[16] = v8 & 1;
  *(v6 + 3) = v34;
  KeyPath = swift_getKeyPath();
  v29 = &v6[*(v36 + 44)];
  *v29 = KeyPath;
  *(v29 + 1) = 1;
  v29[16] = 0;
  LOBYTE(v8) = sub_1B3723EB0();
  v30 = v37;
  sub_1B38203A0();
  v31 = v38;
  sub_1B38203A0();
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561F0) + 48)) = (v8 & 1) == 0;
  sub_1B371B36C(v6, &qword_1EB8561C0);
  return sub_1B371B36C(v30, &qword_1EB8561C0);
}

uint64_t sub_1B381C2A8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1B3C9AB68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8561A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  memcpy((v10 + 16), v1, 0x80uLL);
  sub_1B3820428(v1, v13);
  sub_1B3820460();
  sub_1B3C9BCE8();
  sub_1B3C9AB58();
  sub_1B370ED54(&qword_1EB8561B8, &qword_1EB8561A8);
  sub_1B3820CC0(&unk_1EB854060, MEMORY[0x1E697C248]);
  sub_1B3C9B858();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B381C528@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560B0);
  sub_1B3C9BCB8();
  v5 = a1[9];
  v6 = a1[10];
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856140);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for StoryMusicFeedbackContextMenu();
  *(a2 + v7[5]) = v4;
  v8 = a2 + v7[6];
  *v8 = v11;
  *(v8 + 2) = v12;
  *(v8 + 3) = v13;
  v8[32] = v14;
  v9 = (a2 + v7[7]);
  *v9 = v5;
  v9[1] = v6;
  return sub_1B370A6FC(v5);
}

uint64_t sub_1B381C628()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8560B0);
  return sub_1B3C9BCA8();
}

double sub_1B381C690@<D0>(uint64_t a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  *&result = sub_1B381AEC0(a1).n128_u64[0];
  return result;
}

uint64_t sub_1B381C6D4@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v22);
  v2 = v22[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  sub_1B371B0F4(v22);
  sub_1B3C9B5E8();
  v8 = sub_1B3C9B778();
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x1E69E7D48];
  sub_1B38211CC(v3, v5, v7 & 1, MEMORY[0x1E69E7D48]);

  sub_1B3C9BBC8();
  v14 = sub_1B3C9B758();
  v16 = v15;
  v18 = v17;
  v21 = v19;

  sub_1B38211CC(v8, v10, v12 & 1, v13);

  result = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1B381C8C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      v7 = *(a4 + 32);
      v8 = *(a4 + 40);
      if (*(a1 + 32) != v7 || *(a1 + 40) != v8)
      {
        return sub_1B3C9D6A8();
      }

      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_6:
  if (a1 != a4 || a2 != a5)
  {
    return sub_1B3C9D6A8();
  }

  return 1;
}

uint64_t sub_1B381C944()
{
  OUTLINED_FUNCTION_2_36();
  if (!v0)
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (v0 == 1)
  {
    v1 = 1;
LABEL_5:
    MEMORY[0x1B8C6AD50](v1);
    goto LABEL_7;
  }

  MEMORY[0x1B8C6AD50](2);
LABEL_7:

  return sub_1B3C9C668();
}

uint64_t sub_1B381C9C0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B3C9D7C8();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x1B8C6AD50](2);
      goto LABEL_7;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1B8C6AD50](v4);
LABEL_7:
  sub_1B3C9C668();
  return sub_1B3C9D7F8();
}

uint64_t sub_1B381CA70()
{
  v1 = *(v0 + 16);
  sub_1B3C9D7C8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B8C6AD50](2);
      goto LABEL_7;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8C6AD50](v2);
LABEL_7:
  sub_1B3C9C668();
  return sub_1B3C9D7F8();
}

uint64_t sub_1B381CB00@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B381C888(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1B381CB54()
{
  result = qword_1EB856090;
  if (!qword_1EB856090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856090);
  }

  return result;
}

unint64_t sub_1B381CBAC()
{
  result = qword_1EB856098;
  if (!qword_1EB856098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856098);
  }

  return result;
}

uint64_t type metadata accessor for StoryMusicFeedbackContextMenu()
{
  result = qword_1EB856200;
  if (!qword_1EB856200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B381CC70()
{
  result = qword_1EB8560F0;
  if (!qword_1EB8560F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8560C0);
    sub_1B381CD28();
    sub_1B370ED54(&qword_1EB856128, &qword_1EB8560E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8560F0);
  }

  return result;
}

unint64_t sub_1B381CD28()
{
  result = qword_1EB8560F8;
  if (!qword_1EB8560F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8560E0);
    sub_1B381CDE0();
    sub_1B370ED54(&qword_1EB856118, &qword_1EB856120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8560F8);
  }

  return result;
}

unint64_t sub_1B381CDE0()
{
  result = qword_1EB856100;
  if (!qword_1EB856100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8560D8);
    sub_1B370ED54(&qword_1EB856108, &qword_1EB856110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856100);
  }

  return result;
}

uint64_t sub_1B381CE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B381CF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = a1;
  v3 = v2[1];
  v31 = *v2;
  v32 = v3;
  v33 = *(v2 + 32);
  v4 = v2[1];
  v28 = *v2;
  v29 = v4;
  v30 = *(v2 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562B8);
  MEMORY[0x1B8C69360](&v25);
  v6 = v25;
  v7 = v26;
  v8 = v27;
  switch(v27)
  {
    case 0u:
      v11 = 0xD000000000000014;
      v13 = 0x80000001B3D1A640;
      goto LABEL_7;
    case 1u:
      v13 = 0xE500000000000000;
      v11 = 0x726F727245;
      goto LABEL_7;
    case 2u:
      sub_1B3820578(v25, v26, 2u);
      v9 = sub_1B3C9C5A8();
      v10 = PXLocalizedString();

      v11 = sub_1B3C9C5E8();
      v13 = v12;

      sub_1B38211F0(v6, v7, 2u);
LABEL_7:
      sub_1B38211F0(v6, v7, v8);
      goto LABEL_9;
  }

  v11 = 0;
  v13 = 0xE000000000000000;
LABEL_9:
  v23 = v11;
  v24 = v13;
  v20 = v13;
  v28 = v31;
  v29 = v32;
  v30 = v33;
  MEMORY[0x1B8C69360](&v25, v5);
  v14 = v27;
  if (v27 != 255)
  {
    sub_1B38211F0(v25, v26, v27);
  }

  LOBYTE(v25) = v14 != 255;
  v15 = sub_1B3C9BE28();
  v19 = v18;
  v18[1] = v29;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521A0);
  sub_1B370ED54(&qword_1EB8562E8, &qword_1EB8562E0);
  sub_1B371B158();
  sub_1B370ED54(&qword_1EB8521B0, &qword_1EB8521A0);
  sub_1B3C9BA58();
}

uint64_t sub_1B381D258(uint64_t *a1)
{
  v2 = sub_1B3C9C5A8();
  v3 = PXLocalizedString();

  v4 = sub_1B3C9C5E8();
  v6 = v5;

  v12 = v4;
  v13 = v6;
  v7 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 32);
  v16 = v7;
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  sub_1B382120C(&v16, v11);

  sub_1B38203A0();
  sub_1B371B158();
  return sub_1B3C9BD18();
}

uint64_t sub_1B381D3E8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v23 = *a1;
  v24 = v3;
  v25 = *(a1 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562B8);
  MEMORY[0x1B8C69360](&v20, v4);
  v5 = v20;
  v6 = v21;
  if (!v22 || v22 == 1)
  {
    v15 = v21;
  }

  else if (v22 == 2)
  {
    sub_1B3820578(v20, v21, 2u);
    sub_1B3820578(v5, v6, 2u);
    v7 = sub_1B3C9C5A8();
    v8 = PXLocalizedString();

    sub_1B3C9C5E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B3CF6CE0;
    v10 = sub_1B3723E2C();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1B3753408();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v13 = sub_1B3C9C5F8();
    v15 = v14;

    sub_1B38211F0(v5, v6, 2u);
    sub_1B38211F0(v5, v6, 2u);
    sub_1B38203F8(v5, v6, 2u);
    v5 = v13;
  }

  else
  {
    v5 = 0;
    v15 = 0xE000000000000000;
  }

  *&v23 = v5;
  *(&v23 + 1) = v15;
  sub_1B371B158();
  result = sub_1B3C9B7A8();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

void sub_1B381D658(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_1B3C9BC38();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562C0) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562C8) + 28);
  v9 = *a1;
  sub_1B3C9BC68();
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 104))(v7 + v8, v9);
  *v7 = swift_getKeyPath();
  *a3 = v6;
  sub_1B3C9B6A8();
  sub_1B3C9B658();
  v11 = sub_1B3C9B698();

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562D0);
  OUTLINED_FUNCTION_3_33();
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = a2();
  v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562D8);
  OUTLINED_FUNCTION_3_33();
  *v16 = v15;
  v16[1] = v14;
}

uint64_t sub_1B381D7E8@<X0>(uint64_t a1@<X8>)
{
  sub_1B381D9F0(&v21);
  v3 = v21;
  v4 = v22;
  v5 = BYTE2(v22);
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  LOBYTE(v26) = v5;
  *&v20[5] = v21;
  *&v20[21] = v22;
  *&v20[37] = v23;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562F0) + 36));
  v7 = *(sub_1B3C9AB78() + 20);
  v8 = *MEMORY[0x1E697F468];
  sub_1B3C9AFA8();
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 104))(&v6[v7], v8);
  __asm { FMOV            V0.2D, #4.0 }

  *v6 = _Q0;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854570) + 36)] = 256;
  *(a1 + 19) = *v20;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 18) = v5;
  *(a1 + 35) = *&v20[16];
  *(a1 + 51) = *&v20[32];
  *(a1 + 64) = *&v20[45];
  *(a1 + 72) = 0;
  v26 = *v1;
  v15 = *(v1 + 2);
  v25 = *(v1 + 24);
  v24 = v15;
  v16 = swift_allocObject();
  v17 = v1[1];
  *(v16 + 16) = *v1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562F8);
  OUTLINED_FUNCTION_3_33();
  *v18 = sub_1B3821268;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  sub_1B38203A0();
  return sub_1B38203A0();
}

double sub_1B381D9F0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9BC48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B3C99108();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3723A8C();
  if (v10)
  {
    v11 = v10;
    (*(v7 + 104))(v9, *MEMORY[0x1E69C24B0], v6);
    v12 = v11;
    sub_1B3C9BC28();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v13 = sub_1B3C9BC78();

    (*(v3 + 8))(v5, v2);
    v19 = v13;
    v20 = 0;
    v21 = 257;
    v22 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854548);
    sub_1B37BA434();
    sub_1B3C9B168();
  }

  else
  {
    v14 = [objc_opt_self() placeholderTextColor];
    v19 = sub_1B3C9BAF8();
    v20 = 0;
    v21 = 0;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854548);
    sub_1B37BA434();
    sub_1B3C9B168();
  }

  result = *&v23;
  v16 = v24;
  v17 = v25;
  *a1 = v23;
  *(a1 + 16) = v16;
  *(a1 + 18) = v17;
  return result;
}

void sub_1B381DCC8(uint64_t a1)
{
  v2 = sub_1B3C9AE88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v6 = *(a1 + 16);
  v10 = v6;
  if (v11 == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_1B3C9CAD8();
    v8 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B371B36C(&v10, &qword_1EB854520);
    (*(v3 + 8))(v5, v2);
    v7 = *&v9[1];
  }

  sub_1B3723F64(*(a1 + 32) * v7);
}

uint64_t sub_1B381DE84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856258);
  sub_1B370ED54(&qword_1EB856260, &qword_1EB856258);
  return sub_1B3C9BED8();
}

uint64_t sub_1B381DF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856268);
  v70 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v69 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856278);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v65 - v9;
  v10 = type metadata accessor for StoryMusicFeedbackContextMenu();
  v11 = v10 - 8;
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = v12;
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533A0);
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v65 - v14;
  v15 = sub_1B3C98068();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856280);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v78 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v65 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v85 = &v65 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  v34 = *(v11 + 28);
  v82 = &v65 - v32;
  v83 = a1;
  if (*(*(a1 + v34) + 24))
  {
    v67 = *(a1 + v34);
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      swift_unknownObjectRetain();
      v37 = [v36 songURL];
      if (v37)
      {
        v38 = v37;
        sub_1B3C98038();

        v65 = *(v16 + 32);
        v66 = v24;
        v65(v24, v21, v15);
        v39 = v73;
        sub_1B3820AF4(v83, v73);
        (*(v16 + 16))(v18, v24, v15);
        v40 = (*(v71 + 80) + 16) & ~*(v71 + 80);
        v41 = (v72 + *(v16 + 80) + v40) & ~*(v16 + 80);
        v42 = swift_allocObject();
        sub_1B3820B58(v39, v42 + v40);
        v43 = v42 + v41;
        v33 = v82;
        v65(v43, v18, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562A0);
        sub_1B370ED54(&qword_1EB8562A8, &qword_1EB8562A0);
        v44 = v74;
        sub_1B3C9BCE8();
        swift_unknownObjectRelease();
        (*(v16 + 8))(v66, v15);
        v45 = v76;
        (*(v75 + 32))(v33, v44, v76);
        v46 = 0;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    v46 = 1;
    v45 = v76;
  }

  else
  {
    v46 = 1;
    v45 = v76;
  }

LABEL_8:
  v47 = 1;
  __swift_storeEnumTagSinglePayload(v33, v46, 1, v45);
  v48 = sub_1B37243B4();
  v49 = v79;
  v50 = v85;
  if (v48)
  {
    v51 = v79;
    v52 = v68;
    sub_1B3C9A6C8();
    v53 = sub_1B3C9A6F8();
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    v54 = v73;
    sub_1B3820AF4(v83, v73);
    v55 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v56 = swift_allocObject();
    sub_1B3820B58(v54, v56 + v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562A0);
    sub_1B370ED54(&qword_1EB8562A8, &qword_1EB8562A0);
    v57 = v74;
    v49 = v51;
    sub_1B3C9BCD8();
    (*(v75 + 32))(v50, v57, v45);
    v47 = 0;
  }

  v58 = 1;
  __swift_storeEnumTagSinglePayload(v50, v47, 1, v45);
  v59 = sub_1B3724454();
  if (v59)
  {
    MEMORY[0x1EEE9AC00](v59);
    *(&v65 - 2) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856290);
    sub_1B370ED54(&qword_1EB856298, &qword_1EB856290);
    v60 = v69;
    sub_1B3C9BED8();
    (*(v70 + 32))(v49, v60, v84);
    v58 = 0;
  }

  __swift_storeEnumTagSinglePayload(v49, v58, 1, v84);
  v61 = v77;
  sub_1B38203A0();
  v62 = v78;
  sub_1B38203A0();
  v63 = v80;
  sub_1B38203A0();
  sub_1B38203A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856288);
  sub_1B38203A0();
  sub_1B38203A0();
  sub_1B371B36C(v49, &qword_1EB856270);
  sub_1B371B36C(v85, &qword_1EB856280);
  sub_1B371B36C(v82, &qword_1EB856280);
  sub_1B371B36C(v63, &qword_1EB856270);
  sub_1B371B36C(v62, &qword_1EB856280);
  return sub_1B371B36C(v61, &qword_1EB856280);
}

uint64_t sub_1B381E8C4(uint64_t a1, uint64_t a2)
{
  v14[1] = a2;
  v14[0] = sub_1B3C9AE88();
  v2 = *(v14[0] - 8);
  MEMORY[0x1EEE9AC00](v14[0]);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856140);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  v8 = sub_1B3C9A9A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B38203A0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1B3C9CAD8();
    v12 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v14[0]);
  }

  sub_1B3C9A998();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B381EB48@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v12);
  v2 = v12[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B371B0F4(v12);
  v10 = sub_1B3C9BC58();
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 &= 1u;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  sub_1B370EFD4(v3, v5, v7);

  sub_1B38211CC(v3, v5, v7, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1B381EC84(uint64_t a1)
{
  v25 = a1;
  v27 = sub_1B3C9C118();
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B3C9C168();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoryMusicFeedbackContextMenu();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1B3C9C188();
  v26 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1B3710718(0, &qword_1EB84FE60);
  v24 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_1B3820AF4(v25, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_1B3820B58(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_1B3820CA0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_45;
  v19 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B3820CC0(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
  v20 = v27;
  sub_1B3C9D278();
  v21 = v24;
  MEMORY[0x1B8C6A1D0](v15, v5, v2, v19);
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v15, v26);
}

uint64_t sub_1B381F0EC(uint64_t a1)
{
  result = type metadata accessor for StoryMusicFeedbackContextMenu();
  v3 = (a1 + *(result + 28));
  if (*v3)
  {
    return (*v3)();
  }

  return result;
}

uint64_t sub_1B381F130@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v12);
  v2 = v12[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B371B0F4(v12);
  v10 = sub_1B3C9BC38();
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 &= 1u;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  sub_1B370EFD4(v3, v5, v7);

  sub_1B38211CC(v3, v5, v7, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1B381F27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856278);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v76 - v4;
  v6 = sub_1B3C9BE78();
  v7 = *(v6 - 8);
  v98 = v6;
  v99 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v76 - v14;
  v15 = type metadata accessor for StoryMusicFeedbackContextMenu();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8533A0);
  v94 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v95 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v88 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v76 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v91 = &v76 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v76 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v87 = &v76 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v84 = &v76 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v101 = &v76 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v86 = &v76 - v41;
  sub_1B3820AF4(a1, v18);
  v77 = *(v16 + 80);
  v42 = (v77 + 16) & ~v77;
  v83 = v42;
  v43 = swift_allocObject();
  sub_1B3820B58(v18, v43 + v42);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562A0);
  v81 = sub_1B370ED54(&qword_1EB8562A8, &qword_1EB8562A0);
  sub_1B3C9BCE8();
  sub_1B3C9BE68();
  v82 = sub_1B3C9A6F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v82);
  v44 = v78;
  sub_1B3820AF4(v78, v18);
  v45 = (v42 + v17 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v46 = swift_allocObject();
  v47 = v83;
  sub_1B3820B58(v18, v46 + v83);
  *(v46 + v45) = 1;
  v116 = 1;
  strcpy(v117, "hand.thumbsup");
  v117[7] = -4864;
  sub_1B3C9BCD8();
  sub_1B3C9BE68();
  sub_1B3C9A6C8();
  v48 = v82;
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v82);
  sub_1B3820AF4(v44, v18);
  v49 = swift_allocObject();
  sub_1B3820B58(v18, v49 + v47);
  *(v49 + v45) = 2;
  v113 = 2;
  v114 = 0x7568742E646E6168;
  v115 = 0xEF6E776F6473626DLL;
  sub_1B3C9BCD8();
  sub_1B3C9A6C8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v48);
  sub_1B3820AF4(v44, v18);
  v50 = swift_allocObject();
  v51 = v83;
  sub_1B3820B58(v18, v50 + v83);
  *(v50 + v45) = 3;
  v110 = 3;
  v111 = 0x7568742E646E6168;
  v112 = 0xEF6E776F6473626DLL;
  sub_1B3C9BCD8();
  sub_1B3C9A6C8();
  v52 = v82;
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v82);
  sub_1B3820AF4(v44, v18);
  v53 = swift_allocObject();
  sub_1B3820B58(v18, v53 + v51);
  *(v53 + v45) = 4;
  v107 = 4;
  v108 = 0x7568742E646E6168;
  v109 = 0xEF6E776F6473626DLL;
  sub_1B3C9BCD8();
  sub_1B3C9A6C8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v52);
  sub_1B3820AF4(v44, v18);
  v54 = swift_allocObject();
  sub_1B3820B58(v18, v54 + v51);
  *(v54 + v45) = 5;
  v104 = 5;
  v105 = 0x7568742E646E6168;
  v106 = 0xEF6E776F6473626DLL;
  sub_1B3C9BCD8();
  v55 = *(v94 + 16);
  v56 = v85;
  v57 = v79;
  v55(v85, v86, v79);
  v118[0] = v56;
  v58 = v98;
  v59 = *(v99 + 16);
  v60 = v96;
  v59(v96, v102, v98);
  v118[1] = v60;
  v61 = v88;
  v55(v88, v101, v57);
  v118[2] = v61;
  v62 = v97;
  v59(v97, v103, v58);
  v118[3] = v62;
  v63 = v90;
  v64 = v84;
  v65 = v57;
  v55(v90, v84, v57);
  v118[4] = v63;
  v66 = v92;
  v67 = v87;
  v55(v92, v87, v65);
  v118[5] = v66;
  v68 = v93;
  v69 = v89;
  v55(v93, v89, v65);
  v118[6] = v68;
  v70 = v95;
  v71 = v91;
  v55(v95, v91, v65);
  v118[7] = v70;
  sub_1B375F0A4(v118, v80);
  v72 = *(v94 + 8);
  v72(v71, v65);
  v72(v69, v65);
  v72(v67, v65);
  v72(v64, v65);
  v73 = v98;
  v74 = *(v99 + 8);
  v74(v103, v98);
  v72(v101, v65);
  v74(v102, v73);
  v72(v86, v65);
  v72(v95, v65);
  v72(v93, v65);
  v72(v92, v65);
  v72(v90, v65);
  v74(v97, v73);
  v72(v88, v65);
  v74(v96, v73);
  return (v72)(v85, v65);
}

uint64_t sub_1B381FDF0(uint64_t a1)
{
  v2 = type metadata accessor for StoryMusicFeedbackContextMenu();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B3820AF4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1B3820B58(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1B37244D8(sub_1B38210EC, v6);
}

void sub_1B381FEFC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562B0);
    if (a3)
    {
      sub_1B3821174(a1, a2, a3);
      sub_1B37ED090(a1, a2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
      sub_1B3710718(0, &unk_1EB855710);
      if (swift_dynamicCast())
      {
        v6 = [v7 localizedDescription];
        sub_1B3C9C5E8();

        type metadata accessor for StoryMusicFeedbackContextMenu();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562B8);
        sub_1B3C9BDF8();
        sub_1B382118C(a1, a2, a3);
      }

      else
      {
        sub_1B3C9D698();
        __break(1u);
      }
    }

    else
    {
      type metadata accessor for StoryMusicFeedbackContextMenu();
      sub_1B37ED090(a1, a2, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562B8);
      sub_1B3C9BDF8();
    }
  }
}

uint64_t sub_1B3820104@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v12);
  v2 = v12[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B371B0F4(v12);
  v10 = sub_1B3C9BC38();
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 &= 1u;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  sub_1B370EFD4(v3, v5, v7);

  sub_1B38211CC(v3, v5, v7, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1B3820290@<X0>(uint64_t a1@<X8>)
{
  v2 = PXStringForMemoryMusicQualityFeedbackType();
  sub_1B3C9C5E8();

  sub_1B371B158();
  v3 = sub_1B3C9B7A8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = sub_1B3C9BC38();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  sub_1B370EFD4(v3, v5, v7 & 1);

  sub_1B38211CC(v3, v5, v7 & 1, MEMORY[0x1E69E7D48]);
}

uint64_t sub_1B3820394(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B38203A0()
{
  OUTLINED_FUNCTION_2_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = OUTLINED_FUNCTION_87();
  v3(v2);
  return v0;
}

uint64_t sub_1B38203F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1B3820460()
{
  result = qword_1EB8561B0;
  if (!qword_1EB8561B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8561B0);
  }

  return result;
}

uint64_t sub_1B38204B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1B3820578(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B38205B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B38205F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B3820670()
{
  sub_1B382077C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StorySongViewModel();
    if (v1 <= 0x3F)
    {
      sub_1B38207D4(319, &qword_1EB856218, &unk_1EB854070, &unk_1B3D003F0, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1B38207D4(319, &qword_1EB853618, &qword_1EB853620, &unk_1B3CFC310, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B382077C()
{
  if (!qword_1EB856210)
  {
    sub_1B3C9A9A8();
    v0 = sub_1B3C9A7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB856210);
    }
  }
}

void sub_1B38207D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1B3820878()
{
  result = qword_1EB856220;
  if (!qword_1EB856220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8560B8);
    sub_1B3820904();
    sub_1B38209E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856220);
  }

  return result;
}

unint64_t sub_1B3820904()
{
  result = qword_1EB856228;
  if (!qword_1EB856228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8560A8);
    sub_1B370ED54(&qword_1EB856230, &qword_1EB856238);
    sub_1B370ED54(&qword_1EB856240, &qword_1EB856248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856228);
  }

  return result;
}

unint64_t sub_1B38209E8()
{
  result = qword_1EB856250;
  if (!qword_1EB856250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856250);
  }

  return result;
}

uint64_t sub_1B3820AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicFeedbackContextMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3820B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicFeedbackContextMenu();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3820BD4()
{
  v1 = *(type metadata accessor for StoryMusicFeedbackContextMenu() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1B3C98068() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1B381E8C4(v0 + v2, v5);
}

uint64_t sub_1B3820CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B3820D20(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for StoryMusicFeedbackContextMenu() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for StoryMusicFeedbackContextMenu();
  OUTLINED_FUNCTION_2_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B3C9A9A8();
    OUTLINED_FUNCTION_0_1();
    (*(v8 + 8))(v0 + v4);
  }

  else
  {
  }

  v9 = v7 + *(v1 + 24);

  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    sub_1B38203F8(*(v9 + 16), *(v9 + 24), v10);
  }

  if (*(v7 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + v4 + 1) & 0xFFFFFFFFFFFFFFFELL) + 2, v3 | 7);
}

void sub_1B3820F08()
{
  v1 = *(type metadata accessor for StoryMusicFeedbackContextMenu() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 1) & 0xFFFFFFFFFFFFFFFELL));

  sub_1B3820254(v0 + v2, v3);
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for StoryMusicFeedbackContextMenu();
  OUTLINED_FUNCTION_2_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B3C9A9A8();
    OUTLINED_FUNCTION_0_1();
    (*(v8 + 8))(v0 + v4);
  }

  else
  {
  }

  v9 = v7 + *(v1 + 24);

  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    sub_1B38203F8(*(v9 + 16), *(v9 + 24), v10);
  }

  if (*(v7 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

void sub_1B38210EC(void *a1, uint64_t a2, char a3)
{
  type metadata accessor for StoryMusicFeedbackContextMenu();

  sub_1B381FEFC(a1, a2, a3);
}

id sub_1B3821174(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B37ED090(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B382118C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B38211CC(result, a2, a3 & 1, MEMORY[0x1E69E7D20]);
  }

  return result;
}

uint64_t sub_1B38211CC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1B38211F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B38203F8(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1B3821270()
{
  result = qword_1EB856308;
  if (!qword_1EB856308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856310);
    sub_1B370ED54(&qword_1EB856260, &qword_1EB856258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856308);
  }

  return result;
}

unint64_t sub_1B382132C()
{
  result = qword_1EB856318;
  if (!qword_1EB856318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8562D8);
    sub_1B38213E4();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856318);
  }

  return result;
}

unint64_t sub_1B38213E4()
{
  result = qword_1EB856320;
  if (!qword_1EB856320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8562D0);
    sub_1B382149C();
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856320);
  }

  return result;
}

unint64_t sub_1B382149C()
{
  result = qword_1EB856328;
  if (!qword_1EB856328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8562C0);
    sub_1B370ED54(&qword_1EB856330, &qword_1EB8562C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856328);
  }

  return result;
}

unint64_t sub_1B3821554()
{
  result = qword_1EB856338;
  if (!qword_1EB856338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8562F8);
    sub_1B38215E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856338);
  }

  return result;
}

unint64_t sub_1B38215E0()
{
  result = qword_1EB856340;
  if (!qword_1EB856340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8562F0);
    sub_1B3821698();
    sub_1B370ED54(&qword_1EB8545A8, &qword_1EB854570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856340);
  }

  return result;
}

unint64_t sub_1B3821698()
{
  result = qword_1EB856348;
  if (!qword_1EB856348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856350);
    sub_1B3821750();
    sub_1B370ED54(&qword_1EB856388, &qword_1EB856390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856348);
  }

  return result;
}

unint64_t sub_1B3821750()
{
  result = qword_1EB856358;
  if (!qword_1EB856358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856360);
    sub_1B38217DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856358);
  }

  return result;
}

unint64_t sub_1B38217DC()
{
  result = qword_1EB856368;
  if (!qword_1EB856368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856370);
    sub_1B3821860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856368);
  }

  return result;
}

unint64_t sub_1B3821860()
{
  result = qword_1EB856378;
  if (!qword_1EB856378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856380);
    sub_1B37BA434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB856378);
  }

  return result;
}

uint64_t sub_1B3821920(uint64_t a1)
{
  if (a1 == 640)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 1280)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 320)
  {
    v2 = 3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B382196C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B3821920(*a1);
  *a2 = result;
  return result;
}

id sub_1B38219B4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1B38230E4(0xD000000000000017, 0x80000001B3D1B2A0);
  qword_1EB856398 = result;
  return result;
}

id sub_1B3821A84(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR___PUPickerAdditionalSelectionState_observable;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69C4590]) init];
  v5 = OBJC_IVAR___PUPickerAdditionalSelectionState_registerConfiguration;
  v6 = objc_allocWithZone(sub_1B3C98478());
  *&v2[v5] = sub_1B3C98468();
  v7 = sub_1B3823168(a1);
  v8 = &v2[OBJC_IVAR___PUPickerAdditionalSelectionState_pickerClientBundleIdentifier];
  *v8 = v7;
  v8[1] = v9;
  v10 = *&v2[v5];
  v11 = sub_1B3823168(a1);
  sub_1B3821CF0(v11, v12);

  sub_1B3C983E8();

  v13 = *&v2[v5];
  [a1 clientEncodingPolicy];
  sub_1B3C983F8();

  v14 = *&v2[v5];
  if ([a1 canIncludeLocationByDefault])
  {
    v15 = sub_1B3823168(a1);
    v17 = sub_1B3821E40(v15, v16);

    if (v17)
    {
      sub_1B3898FD4(0xD000000000000019, 0x80000001B3D1B2C0, v17);
    }
  }

  sub_1B3C98438();

  v18 = *&v2[v5];
  if ([a1 canIncludeCaptionByDefault])
  {
    v19 = sub_1B3823168(a1);
    v21 = sub_1B3821E40(v19, v20);

    if (v21)
    {
      sub_1B3898FD4(0xD000000000000018, 0x80000001B3D1B280, v21);
    }
  }

  sub_1B3C98418();

  v24.receiver = v2;
  v24.super_class = type metadata accessor for PickerAdditionalSelectionState();
  v22 = objc_msgSendSuper2(&v24, sel_init);

  return v22;
}

uint64_t sub_1B3821CF0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (qword_1EB8500B8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB856398;
  if (!qword_1EB856398 || (v5 = sub_1B3C9C5A8(), v6 = [v4 dictionaryForKey_], v5, !v6))
  {
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  v7 = sub_1B3C9C4C8();

  sub_1B3898DE0(a1, a2, v7, &v10);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_1B36FA490(&v10);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

  return 0;
}

uint64_t sub_1B3821E40(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (qword_1EB8500B8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB856398;
  if (!qword_1EB856398 || (v5 = sub_1B3C9C5A8(), v6 = [v4 dictionaryForKey_], v5, !v6))
  {
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  v7 = sub_1B3C9C4C8();

  sub_1B3898DE0(a1, a2, v7, &v10);

  if (!*(&v11 + 1))
  {
LABEL_11:
    sub_1B36FA490(&v10);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8563C8);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B382207C(uint64_t a1)
{
  swift_getObjectType();
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B3823090();
  OUTLINED_FUNCTION_1_40();
  sub_1B3C9A668();

  sub_1B3C983E8();
  sub_1B382214C(*(v1 + OBJC_IVAR___PUPickerAdditionalSelectionState_pickerClientBundleIdentifier), *(v1 + OBJC_IVAR___PUPickerAdditionalSelectionState_pickerClientBundleIdentifier + 8), a1);
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_28(v3);
  OUTLINED_FUNCTION_4_29();
}

void sub_1B382214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB8500B8 != -1)
  {
    swift_once();
  }

  if (qword_1EB856398 && a2)
  {
    v6 = qword_1EB856398;

    v7 = sub_1B3C9C5A8();
    v8 = [v6 dictionaryForKey_];

    if (v8)
    {
      v9 = sub_1B3C9C4C8();

      if (a3)
      {
LABEL_7:
        *(&v17 + 1) = MEMORY[0x1E69E6530];
        *&v16 = a3;
        sub_1B370ED44(&v16, v15);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B371FA70(v15, a1, a2);

LABEL_13:
        if (*(v9 + 16))
        {
          v13 = sub_1B3C9C4A8();

          v14 = sub_1B3C9C5A8();
          [v6 setObject:v13 forKey:v14];
        }

        else
        {

          v14 = sub_1B3C9C5A8();
          [v6 removeObjectForKey_];
        }

        return;
      }
    }

    else
    {
      v9 = sub_1B3C9C4D8();
      if (a3)
      {
        goto LABEL_7;
      }
    }

    v10 = sub_1B371EF40(a1, a2);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      *&v15[0] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851870);
      sub_1B3C9D468();

      sub_1B370ED44((*(v9 + 56) + 32 * v12), &v16);
      sub_1B3C9D478();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    sub_1B36FA490(&v16);
    goto LABEL_13;
  }
}

uint64_t sub_1B38224CC()
{
  swift_getObjectType();
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B3823090();
  OUTLINED_FUNCTION_1_40();
  sub_1B3C9A668();

  sub_1B3C98438();
  OUTLINED_FUNCTION_3_34();
  sub_1B38225AC(v0, v1, 0xD000000000000019, v2, v3);
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_28(v4);
  OUTLINED_FUNCTION_4_29();
}

void sub_1B38225AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_1EB8500B8 != -1)
  {
    swift_once();
  }

  if (qword_1EB856398 && a2)
  {
    v10 = qword_1EB856398;

    v11 = sub_1B3C9C5A8();
    v12 = [v10 dictionaryForKey_];

    if (v12)
    {
      v13 = sub_1B3C9C4C8();
    }

    else
    {
      v13 = sub_1B3C9C4D8();
    }

    sub_1B3898DE0(a1, a2, v13, &v22);
    if (*(&v23 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8563C8);
      if (swift_dynamicCast())
      {
        v14 = *&v21[0];
        if ((a5 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    else
    {
      sub_1B36FA490(&v22);
    }

    v14 = sub_1B3C9C4D8();
    if ((a5 & 1) == 0)
    {
LABEL_11:
      sub_1B371EF40(a3, a4);
      if (v15)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v22 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851880);
        sub_1B3C9D468();
        v14 = v22;

        sub_1B3C9D478();
      }

      goto LABEL_16;
    }

LABEL_15:
    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = v14;
    sub_1B371FB80();
    v14 = v22;
LABEL_16:
    if (*(v14 + 16))
    {
      *(&v23 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8563C8);
      *&v22 = v14;
      sub_1B370ED44(&v22, v21);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1B371FA70(v21, a1, a2);
    }

    else
    {

      v16 = sub_1B371EF40(a1, a2);
      if (v17)
      {
        v18 = v16;
        swift_isUniquelyReferenced_nonNull_native();
        *&v21[0] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851870);
        sub_1B3C9D468();

        sub_1B370ED44((*(v13 + 56) + 32 * v18), &v22);
        sub_1B3C9D478();
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
      }

      sub_1B36FA490(&v22);
    }

    if (*(v13 + 16))
    {
      v19 = sub_1B3C9C4A8();
      v20 = sub_1B3C9C5A8();
      [v10 setObject:v19 forKey:v20];
    }

    else
    {
      v20 = sub_1B3C9C5A8();
      [v10 removeObjectForKey_];
    }
  }
}

uint64_t sub_1B3822A9C()
{
  swift_getObjectType();
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B3823090();
  OUTLINED_FUNCTION_1_40();
  sub_1B3C9A668();

  sub_1B3C98418();
  OUTLINED_FUNCTION_3_34();
  sub_1B38225AC(v0, v1, 0xD000000000000018, v2, v3);
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_28(v4);
  OUTLINED_FUNCTION_4_29();
}

uint64_t sub_1B3822C48(void *a1)
{
  type metadata accessor for PickerAdditionalSelectionState();
  sub_1B3823090();
  OUTLINED_FUNCTION_1_40();
  sub_1B3C9A668();

  v2 = a1;
  sub_1B3C98458();
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_28(v3);
  OUTLINED_FUNCTION_4_29();
}

uint64_t sub_1B3822CFC()
{
  result = sub_1B3C98448();
  if (result)
  {
    v1 = result;
    if ([result integerValue] > 1279)
    {

      return 1;
    }

    else if ([v1 integerValue] >= 640)
    {

      return 2;
    }

    else
    {
      v2 = [v1 integerValue];

      if (v2 >= 320)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B3822D90(unint64_t a1)
{
  a1 = a1;
  v1 = 1280;
  switch(a1)
  {
    case 1:
      goto LABEL_4;
    case 2:
      v1 = 640;
      goto LABEL_4;
    case 3:
      v1 = 320;
LABEL_4:
      a1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      break;
    default:
      break;
  }

  return sub_1B3822C48(a1);
}

id sub_1B3822E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerAdditionalSelectionState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3822EE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickerAdditionalSelectionState();
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

uint64_t static PXPhotosFileProviderEncodingPolicy.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EB8563A0 = a1;
}

uint64_t sub_1B3823044@<X0>(uint64_t *a1@<X8>)
{
  result = static PXPhotosFileProviderEncodingPolicy.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1B3823090()
{
  result = qword_1EB852A68;
  if (!qword_1EB852A68)
  {
    type metadata accessor for PickerAdditionalSelectionState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB852A68);
  }

  return result;
}

id sub_1B38230E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1B3C9C5A8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1B3823168(void *a1)
{
  v1 = [a1 pickerClientBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for PickerAdditionalSelectionState.DownscalingTarget(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id sub_1B38232F8()
{
  v1 = [v0 extendedTraitCollection];
  v2 = [objc_allocWithZone(type metadata accessor for StoryColorGradeEditorConcreteLayoutSpec()) initWithExtendedTraitCollection:v1 options:{objc_msgSend(v0, sel_options)}];

  return v2;
}

uint64_t sub_1B38233E4()
{
  [v0 spec];
  sub_1B38234FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8563E0);
  return swift_dynamicCast();
}

id sub_1B38234A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryColorGradeEditorLayoutSpecManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B38234FC()
{
  result = qword_1EB8563D8;
  if (!qword_1EB8563D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8563D8);
  }

  return result;
}

uint64_t sub_1B3823540()
{
  v0 = sub_1B3C9A618();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  result = MEMORY[0x1B8C6D660](v1);
  if (result)
  {
    sub_1B3C9A608();
    v3[3] = sub_1B3C9A638();
    v3[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v3);
    sub_1B3C9A648();
    return sub_1B3C9CF28();
  }

  return result;
}

void sub_1B38235EC(void *a1)
{
  v1 = a1;
  sub_1B3823540();
}

unint64_t sub_1B382363C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1B382365C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B382363C(*a1);
  *a2 = result;
  return result;
}

void sub_1B3823688(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  v3 = HIBYTE(a1) + 1;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1B37EADC0(0, v3, 0);
  v4 = 0;
  v5 = v20;
  v6 = 1;
  do
  {
    v7 = v2;
    if ((v6 & 1) == 0)
    {
      v7 = v4 - 1;
      if (v4 < 1)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }
    }

    if (v7 > 4)
    {
      goto LABEL_17;
    }

    v9 = *(v20 + 16);
    v8 = *(v20 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1B37EADC0(v8 > 1, v9 + 1, 1);
    }

    *(v20 + 16) = v9 + 1;
    *(v20 + v9 + 32) = v7;
    v10 = v2;
    if ((v6 & 1) == 0)
    {
      v10 = v4 - 1;
      if (v4 < 1)
      {
        goto LABEL_16;
      }
    }

    v6 = 0;
    v4 = v10;
    --v3;
  }

  while (v3);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B37EADA0(0, v9 + 1, 0);
  v11 = v1 & 1;
  v12 = *(v21 + 16);
  v13 = 2 * v12;
  v14 = v9 + 1;
  v15 = 32;
  do
  {
    v16 = *(v5 + v15);
    v17 = *(v21 + 24);
    v18 = v12 + 1;
    if (v12 >= v17 >> 1)
    {
      sub_1B37EADA0((v17 > 1), v12 + 1, 1);
    }

    *(v21 + 16) = v18;
    v19 = v21 + v13;
    *(v19 + 32) = v11;
    *(v19 + 33) = v16;
    v13 += 2;
    ++v15;
    v12 = v18;
    --v14;
  }

  while (v14);
}