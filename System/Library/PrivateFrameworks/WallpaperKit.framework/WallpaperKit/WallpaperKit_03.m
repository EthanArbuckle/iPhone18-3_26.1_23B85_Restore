uint64_t sub_1E4A80D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A80D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E8B0, &qword_1E4AB2F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A80DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A80E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4A80EC0()
{
  result = qword_1EE042300;
  if (!qword_1EE042300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E8B8, &unk_1E4AB3020);
    sub_1E4A80F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042300);
  }

  return result;
}

unint64_t sub_1E4A80F44()
{
  result = qword_1EE042308;
  if (!qword_1EE042308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E8B0, &qword_1E4AB2F90);
    sub_1E4A80D40(qword_1EE042D40, type metadata accessor for WKWallpaperPreviewImage);
    sub_1E4A80D40(&qword_1EE042CF8, type metadata accessor for WKBokehViewRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042308);
  }

  return result;
}

uint64_t sub_1E4A810E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E4AAA0E0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_1E4AAA0D0();
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

uint64_t sub_1E4A81234(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E4AAA0E0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E4AAA0D0();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4A812C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A812E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

double sub_1E4A81370@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  sub_1E4AAA530();
  sub_1E4AAA510();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA520();
  sub_1E4AAA500();
  result = *&v12;
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  return result;
}

__n128 sub_1E4A81438@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_1E4A8144C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

void (*sub_1E4A81460(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *v3 = *v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  return sub_1E4A814D4;
}

void sub_1E4A814D4(void **a1)
{
  v1 = *a1;
  v2 = v1[8];
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  *v2 = *v1;
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;
  free(v1);
}

uint64_t sub_1E4A814F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A816A4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1E4A81554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A816A4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1E4A815B8(uint64_t a1)
{
  v2 = sub_1E4A816A4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1E4A8164C()
{
  result = qword_1EE042920[0];
  if (!qword_1EE042920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE042920);
  }

  return result;
}

unint64_t sub_1E4A816A4()
{
  result = qword_1EE042910;
  if (!qword_1EE042910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042910);
  }

  return result;
}

uint64_t sub_1E4A81708()
{
  *v0;
  v1 = sub_1E4AAA8B0();

  return v1;
}

unint64_t sub_1E4A817A8()
{
  result = qword_1ECF8E8E8;
  if (!qword_1ECF8E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E8E8);
  }

  return result;
}

unint64_t sub_1E4A81800()
{
  result = qword_1ECF8E8F0;
  if (!qword_1ECF8E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E8F0);
  }

  return result;
}

uint64_t sub_1E4A81854@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v16[8] = v3[10];
  v7 = v3[8];
  v16[7] = v3[9];
  v8 = v3[3];
  v10 = v3[5];
  v9 = v3[6];
  v16[2] = v3[4];
  v16[3] = v10;
  v16[5] = v4;
  v16[6] = v5;
  v16[4] = v9;
  v16[0] = v3[2];
  v16[1] = v8;
  a2[6] = v7;
  a2[7] = v6;
  a2[8] = v3[10];
  v11 = v3[5];
  a2[2] = v3[4];
  a2[3] = v11;
  v12 = v3[7];
  a2[4] = v3[6];
  a2[5] = v12;
  v13 = v3[3];
  *a2 = v3[2];
  a2[1] = v13;
  return sub_1E4A49D24(v16, &v15);
}

uint64_t sub_1E4A8195C(float64x2_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a1[7];
  v19 = a1[6];
  v20 = v3;
  v4 = a1[7];
  v21 = a1[8];
  v5 = a1[1];
  v6 = a1[3];
  v15 = a1[2];
  v16 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v17 = a1[4];
  v18 = v8;
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v13[6] = v19;
  v13[7] = v4;
  v13[8] = a1[8];
  v13[2] = v15;
  v13[3] = v7;
  v13[4] = v17;
  v13[5] = v2;
  v10 = *a2;
  v13[0] = v14[0];
  v13[1] = v5;
  sub_1E4A49D24(v14, &v12);
  return sub_1E4A74D30(v13);
}

uint64_t sub_1E4A819E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  *a2 = *(v3 + 184);
  return result;
}

void sub_1E4A81AB8(uint64_t a1, uint64_t a2)
{
  v60 = sub_1E4AA9FE0();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA60, &unk_1E4AB33A0);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v19 = v2[5];
  v57 = v2;
  if (v19)
  {
    v54 = v16;
    v20 = a2;
    v21 = a1;
    v22 = v2[6];
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 8);
    v25 = *(v24 + 40);
    swift_unknownObjectRetain();
    v25(ObjectType, v24);
    a1 = v21;
    v26 = v60;
    a2 = v20;
    v16 = v54;
    swift_unknownObjectRelease();
    v27 = *(v5 + 56);
    v27(v18, 0, 1, v26);
  }

  else
  {
    v27 = *(v5 + 56);
    v27(&v54 - v17, 1, 1, v60);
  }

  v28 = v5;
  if (a1)
  {
    v29 = swift_getObjectType();
    (*(*(a2 + 8) + 40))(v29);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v32 = v59;
  v31 = v60;
  v27(v16, v30, 1, v60);
  v33 = *(v58 + 48);
  sub_1E4A48054(v18, v32);
  sub_1E4A48054(v16, v32 + v33);
  v34 = *(v5 + 48);
  if (v34(v32, 1, v31) == 1)
  {
    sub_1E4A4DC88(v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v18, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v34(v32 + v33, 1, v60) == 1)
    {
      sub_1E4A4DC88(v32, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return;
    }
  }

  else
  {
    v35 = v56;
    sub_1E4A48054(v32, v56);
    if (v34(v32 + v33, 1, v60) != 1)
    {
      v47 = *(v5 + 32);
      v48 = v32 + v33;
      v49 = v55;
      v50 = v60;
      v47(v55, v48, v60);
      sub_1E4A865D8(&qword_1EE043978, MEMORY[0x1E6968FB0]);
      v51 = v35;
      v52 = sub_1E4AAA860();
      v53 = *(v28 + 8);
      v53(v49, v50);
      sub_1E4A4DC88(v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      sub_1E4A4DC88(v18, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v53(v51, v50);
      sub_1E4A4DC88(v32, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v36 = v57;
      if (v52)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1E4A4DC88(v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v18, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    (*(v5 + 8))(v35, v60);
  }

  sub_1E4A4DC88(v32, &qword_1ECF8EA60, &unk_1E4AB33A0);
  v36 = v57;
LABEL_13:
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v37 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v37, qword_1EE048B58);

  v38 = sub_1E4AAA0C0();
  v39 = sub_1E4AAAA20();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v61 = v41;
    *v40 = 136446466;
    v42 = *v36;
    v43 = sub_1E4AAAE90();
    v45 = sub_1E4A85938(v43, v44, &v61);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    *(v40 + 14) = sub_1E4A85938(0xD00000000000001ALL, 0x80000001E4AB96A0, &v61);
    _os_log_impl(&dword_1E4A23000, v38, v39, "(%{public}s.%{public}s): sourceAssetDirectory differ, loading contents from environment…", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v41, -1, -1);
    MEMORY[0x1E691FE80](v40, -1, -1);
  }

  sub_1E4A8215C();
  if (v36[4])
  {
    v46 = v36[4];

    sub_1E4A7440C();
  }
}

void sub_1E4A8215C()
{
  v1 = v0;
  v2 = sub_1E4AAA030();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424A8 != -1)
  {
LABEL_40:
    swift_once();
  }

  v7 = sub_1E4AAA0E0();
  v8 = __swift_project_value_buffer(v7, qword_1EE048B58);

  v83 = v8;
  v9 = sub_1E4AAA0C0();
  v10 = sub_1E4AAAA20();

  v11 = os_log_type_enabled(v9, v10);
  v82 = v6;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    v14 = *v1;
    v15 = sub_1E4AAAE90();
    v17 = sub_1E4A85938(v15, v16, &aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &aBlock);
    _os_log_impl(&dword_1E4A23000, v9, v10, "Start (%{public}s.%{public}s)…", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v13, -1, -1);
    MEMORY[0x1E691FE80](v12, -1, -1);
  }

  if (!v1[5])
  {
    goto LABEL_42;
  }

  v18 = v1[6];
  v19 = v1[5];
  ObjectType = swift_getObjectType();
  v21 = *(v18 + 8);
  swift_unknownObjectRetain();
  sub_1E4A5FD94(ObjectType, v21, &aBlock);
  swift_unknownObjectRelease();
  if (!v1[4])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v80 = v3;
  v81 = v2;
  v22 = aBlock;
  v23 = v86;
  v79 = v87;

  v84 = v22;

  sub_1E4A74BA0(&aBlock);

  v24 = v1[4];
  if (!v24)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  swift_getKeyPath();
  aBlock = v24;
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

  sub_1E4AAA060();

  aBlock = v24;
  swift_getKeyPath();
  sub_1E4AAA080();

  v25 = *(v24 + 192);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v24 + 192) = v27;
  aBlock = v24;
  swift_getKeyPath();
  sub_1E4AAA070();

  v28 = v84;

  sub_1E4A87AC0(v29);
  v30 = sub_1E4AAA870();

  WKSetApplicationSpecificInformation(v30);

  v1[7] = v23;
  sub_1E4A8313C();
  v31 = v1[2];
  v32 = [v31 backgroundView];
  [v32 setOverrideUserInterfaceStyle_];

  v33 = [v31 foregroundView];
  [v33 setOverrideUserInterfaceStyle_];

  v34 = [v31 floatingView];
  [v34 setOverrideUserInterfaceStyle_];

  LODWORD(v30) = [v28[2] wantsDeviceMotion];
  v35 = sub_1E4AAA0C0();
  v36 = sub_1E4AAAA20();
  v37 = os_log_type_enabled(v35, v36);
  v78 = v1;
  if (v30)
  {
    if (v37)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1E4A23000, v35, v36, "requesting device motion", v38, 2u);
      MEMORY[0x1E691FE80](v38, -1, -1);
    }

    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      v89 = sub_1E4A83398;
      v90 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v86 = 1107296256;
      v87 = sub_1E4A833A8;
      v88 = &block_descriptor_2;
      v41 = _Block_copy(&aBlock);

      [v40 updatePreferences_];
      _Block_release(v41);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);

LABEL_36:
        sub_1E4A82F74(v1);
        return;
      }
    }
  }

  else
  {
    if (v37)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1E4A23000, v35, v36, "not requesting device motion", v42, 2u);
      MEMORY[0x1E691FE80](v42, -1, -1);
    }
  }

  v43 = [objc_opt_self() defaultManager];
  type metadata accessor for WKWallpaperRepresentingCollectionsManager();
  inited = swift_initStackObject();
  type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
  v45 = swift_initStackObject();
  *(v45 + 16) = v43;
  v77 = inited;
  *(inited + 16) = v45;
  v1 = &selRef_currentDevice;
  if ([v43 numberOfWallpaperCollections])
  {
    v3 = 0;
    v6 = &unk_1E8767000;
    while (1)
    {
      v46 = [v43 wallpaperCollectionAtIndex_];
      if (v3 >= [v43 numberOfWallpaperCollections])
      {
        __break(1u);
        goto LABEL_40;
      }

      v47 = [v84[2] identifierString];
      if (!v47)
      {
        sub_1E4AAA8A0();
        v47 = sub_1E4AAA870();
      }

      v48 = v46;
      v2 = [v48 containsWallpaperRepresentingWithIdentifier_];

      if (v2)
      {
        break;
      }

      v3 = (v3 + 1);

      if (v3 == [v43 numberOfWallpaperCollections])
      {
        goto LABEL_24;
      }
    }

    v72 = [v48 disableRotation];
    v1 = v78;
    v49 = v81;
    v50 = v80;
    if (v72)
    {
      v73 = sub_1E4AAA0C0();
      v74 = sub_1E4AAAA20();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1E4A23000, v73, v74, "Renderer will NOT support rotation", v75, 2u);
        MEMORY[0x1E691FE80](v75, -1, -1);
      }

      else
      {
      }

      v76 = v1[3];
      v1[3] = 0;

      goto LABEL_36;
    }

    if (!v1[3])
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_24:

  v1 = v78;
  v49 = v81;
  v50 = v80;
  if (v78[3])
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_25:
  v51 = type metadata accessor for WKDynamicRotationManager();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  *(v54 + 16) = MEMORY[0x1E69E7CC0];
  v55 = v54 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  v56 = v82;
  sub_1E4AAA020();
  (v50[4])(v55, v56, v49);
  v57 = type metadata accessor for WKPosterDynamicRotationState();
  *(v55 + v57[5]) = 0;
  *(v55 + v57[6]) = 0x3FF0000000000000;
  *(v55 + v57[7]) = 0;
  *(v55 + v57[8]) = 0;
  *(v54 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
  v58 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  v59 = type metadata accessor for WKPosterDynamicRotationAnimationState();
  (*(*(v59 - 8) + 56))(v54 + v58, 1, 1, v59);
  *(v54 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v60 = v1[3];
  v1[3] = v54;

  v61 = v1[3];
  if (!v61)
  {
    goto LABEL_35;
  }

  *(v61 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BC90;
  swift_unknownObjectWeakAssign();
  v62 = v1[3];
  if (!v62)
  {
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E970, &qword_1E4AB1828);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1E4AB3280;
  v64 = v1[4];
  if (!v64)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v63 + 32) = v64;
  *(v63 + 40) = &off_1F5E9B728;
  v65 = *(v62 + 16);
  *(v62 + 16) = v63;

  if (!v1[3])
  {
    goto LABEL_35;
  }

  if (v1[5])
  {
    v66 = v1[6];
    v67 = v1[5];
    v68 = swift_getObjectType();
    v69 = *(v66 + 8);
    v70 = *(v69 + 8);

    swift_unknownObjectRetain();
    v71 = v70(v68, v69);
    swift_unknownObjectRelease();
    sub_1E4A6C954(v71);

    goto LABEL_35;
  }

LABEL_46:
  __break(1u);
}

uint64_t WKWallpaperPosterRenderController.__allocating_init(renderer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WKWallpaperPosterRenderController.init(renderer:)(a1);
  return v2;
}

uint64_t WKWallpaperPosterRenderController.init(renderer:)(uint64_t a1)
{
  v3 = sub_1E4AAA030();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 64) = 3;
  type metadata accessor for WKWallpaperPosterRendererTokenManager();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC8];
  *(v1 + 72) = v8;
  *(v1 + 16) = a1;
  *(v1 + 56) = 0;
  v9 = type metadata accessor for WKDynamicRotationManager();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  sub_1E4AAA020();
  (*(v4 + 32))(v13, v7, v3);
  v14 = type metadata accessor for WKPosterDynamicRotationState();
  *(v13 + v14[5]) = 0;
  *(v13 + v14[6]) = 0x3FF0000000000000;
  *(v13 + v14[7]) = 0;
  *(v13 + v14[8]) = 0;
  *(v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
  v15 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  v16 = type metadata accessor for WKPosterDynamicRotationAnimationState();
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  *(v12 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = *(v1 + 24);
  *(v1 + 24) = v12;

  return v1;
}

void sub_1E4A82F74(uint64_t *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8313C()
{
  v1 = v0;
  v2 = v0[7];
  if (!v2)
  {
    if (!v0[5])
    {
      goto LABEL_18;
    }

    v3 = v0[6];
    v4 = v0[5];
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    v7 = *(v6 + 16);
    swift_unknownObjectRetain();
    v2 = v7(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = WKWallpaperAppearanceDark;
  if (v2 != 2)
  {
    v8 = WKWallpaperAppearanceDefault;
  }

  v9 = *v8;
  v10 = v0[4];
  if (v10)
  {
    v11 = v9;
    swift_getKeyPath();
    sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

    sub_1E4AAA060();

    v12 = *(v10 + 16);

    if (v12)
    {
      v13 = [*(v12 + 16) preferredProminentColors];
      if (v13)
      {
        v14 = v13;
        type metadata accessor for WKWallpaperAppearance(0);
        sub_1E4A47A2C(0, &qword_1EE042130, 0x1E69DC888);
        sub_1E4A865D8(&qword_1EE042190, type metadata accessor for WKWallpaperAppearance);
        v15 = sub_1E4AAA810();

        if (*(v15 + 16))
        {
          v16 = sub_1E4A9308C(v11);
          if (v17)
          {
            v18 = *(*(v15 + 56) + 8 * v16);

LABEL_15:
            [v1[2] wk:v18 setPreferredProminentColor:?];

            return;
          }
        }
      }

      else
      {
      }

      v18 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1E4A833A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E4A83410(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v65 = a1[6];
  v66 = v5;
  v6 = a1[7];
  v67 = a1[8];
  v7 = a1[1];
  v8 = a1[3];
  v61 = a1[2];
  v62 = v8;
  v9 = a1[3];
  v10 = a1[5];
  v63 = a1[4];
  v64 = v10;
  v11 = a1[1];
  v59 = *a1;
  v60 = v11;
  v74 = v65;
  v75 = v6;
  v76 = a1[8];
  v70 = v61;
  v71 = v9;
  v12 = *(a2 + 8);
  v72 = v63;
  v73 = v4;
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  v68 = v59;
  v69 = v7;
  if (sub_1E4A86648(&v68) == 1 || *&v69 == v13)
  {
    v17 = *(v3 + 64);
    v16 = (v3 + 64);
    v18 = v17 == 3;
    v19 = 3;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    v19 = *&v69 >= v13;
    v32 = *(v3 + 64);
    v16 = (v3 + 64);
    v33 = v32;
    v18 = v32 != 3 && v33 == v19;
  }

  v56 = v65;
  v57 = v66;
  v58 = v67;
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v50 = v59;
  v51 = v60;
  if (sub_1E4A86648(&v50) == 1)
  {
    result = v15 ^ 1u;
LABEL_14:
    *v16 = v19;
    return result;
  }

  if (BYTE8(v50) != 1 && v12 == 1)
  {
    v47 = v65;
    v48 = v66;
    v49 = v67;
    v43 = v61;
    v44 = v62;
    v45 = v63;
    v46 = v64;
    v41 = v59;
    v42 = v60;
    sub_1E4A49D24(&v41, v40);
    if (qword_1EE0424A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v22, qword_1EE048B58);
    v23 = sub_1E4AAA0C0();
    v24 = sub_1E4AAAA20();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_13;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Screen is off, pausing animation";
LABEL_12:
    _os_log_impl(&dword_1E4A23000, v23, v24, v26, v25, 2u);
    MEMORY[0x1E691FE80](v25, -1, -1);
LABEL_13:

    sub_1E4A4DC88(&v59, &unk_1ECF8E990, &qword_1E4AB36D0);
    result = 0;
    goto LABEL_14;
  }

  if ((v20 | v18) == 1)
  {
    v27 = BYTE8(v51);
    goto LABEL_17;
  }

  v27 = BYTE8(v51);
  if (v19 || BYTE8(v51))
  {
LABEL_17:
    if (v27)
    {
      if (!v14 && !v12)
      {
        v47 = v65;
        v48 = v66;
        v49 = v67;
        v43 = v61;
        v44 = v62;
        v45 = v63;
        v46 = v64;
        v41 = v59;
        v42 = v60;
        sub_1E4A49D24(&v41, v40);
        if (qword_1EE0424A8 != -1)
        {
          swift_once();
        }

        v28 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v28, qword_1EE048B58);
        v29 = sub_1E4AAA0C0();
        v30 = sub_1E4AAAA20();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_1E4A23000, v29, v30, "Settling on lock screen from home screen and screen is on, restarting animation", v31, 2u);
          MEMORY[0x1E691FE80](v31, -1, -1);
        }

        sub_1E4A4DC88(&v59, &unk_1ECF8E990, &qword_1E4AB36D0);
        *v16 = v19;
        return 1;
      }
    }

    else if (v14)
    {
      v47 = v65;
      v48 = v66;
      v49 = v67;
      v43 = v61;
      v44 = v62;
      v45 = v63;
      v46 = v64;
      v41 = v59;
      v42 = v60;
      sub_1E4A49D24(&v41, v40);
      if (qword_1EE0424A8 != -1)
      {
        swift_once();
      }

      v39 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v39, qword_1EE048B58);
      v23 = sub_1E4AAA0C0();
      v24 = sub_1E4AAAA20();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_13;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Starting to move from lock screen to home screen, pausing animation";
      goto LABEL_12;
    }

    *v16 = v19;
    return 2;
  }

  v47 = v65;
  v48 = v66;
  v49 = v67;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v46 = v64;
  v41 = v59;
  v42 = v60;
  sub_1E4A49D24(&v41, v40);
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v35 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v35, qword_1EE048B58);
  v36 = sub_1E4AAA0C0();
  v37 = sub_1E4AAAA20();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1E4A23000, v36, v37, "Screen was turned on and settled on lock screen, starting animation", v38, 2u);
    MEMORY[0x1E691FE80](v38, -1, -1);
  }

  sub_1E4A4DC88(&v59, &unk_1ECF8E990, &qword_1E4AB36D0);
  *v16 = 0;
  return 1;
}

void sub_1E4A83978(char a1)
{
  v2 = v1;
  v4 = sub_1E4AAA760();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1E4AAA780();
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4AAA750();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1E4AAA7C0();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v44 - v19;
  v20 = *(v1 + 72);
  sub_1E4A9E2CC(0);
  sub_1E4A9E588(0, *(v2 + 16));
  if (a1)
  {
    if (qword_1EE0424A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v21, qword_1EE048B58);
    v22 = sub_1E4AAA0C0();
    v23 = sub_1E4AAAA20();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1E4A23000, v22, v23, "Enabling animations based on playbackKind.", v24, 2u);
      MEMORY[0x1E691FE80](v24, -1, -1);
    }

    v25 = *(v2 + 32);
    if (!v25)
    {
      __break(1u);
      return;
    }

    if (*(v25 + 184) == 1)
    {
      *(v25 + 184) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v44 = &v44;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v44 - 2) = v25;
      *(&v44 - 8) = 1;
      aBlock[0] = v25;
      sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
      v45 = v9;

      v9 = v45;
      sub_1E4AAA050();
    }
  }

  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v45 = v2;
  v27 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v27, qword_1EE048B58);
  v28 = sub_1E4AAA0C0();
  v29 = sub_1E4AAAA20();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v30;
    *v30 = 134349056;
    v32 = a1;
    if (a1)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    *(v30 + 4) = v33;
    _os_log_impl(&dword_1E4A23000, v28, v29, "Disabling animations based on playbackKind (waiting duration %{public}ld).", v30, 0xCu);
    MEMORY[0x1E691FE80](v31, -1, -1);
  }

  else
  {

    v32 = a1;
    if (a1)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }
  }

  sub_1E4A47A2C(0, &qword_1EE0421E0, 0x1E69E9610);
  v44 = sub_1E4AAAA50();
  sub_1E4AAA7B0();
  *v13 = v33;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E7F48], v9);
  v34 = v46;
  MEMORY[0x1E691EBC0](v18, v13);
  (*(v10 + 8))(v13, v9);
  v35 = v48;
  v36 = *(v47 + 8);
  v36(v18, v48);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v32 & 1;
  aBlock[4] = sub_1E4A865CC;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E4A6E8B8;
  aBlock[3] = &block_descriptor_17;
  v39 = _Block_copy(aBlock);

  v40 = v49;
  sub_1E4AAA770();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E4A865D8(&qword_1EE042230, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E720, &qword_1E4AB33E0);
  sub_1E4A6ED78();
  v41 = v51;
  v42 = v54;
  sub_1E4AAAB40();
  v43 = v44;
  MEMORY[0x1E691EE00](v34, v40, v41, v39);
  _Block_release(v39);

  (*(v53 + 8))(v41, v42);
  (*(v50 + 8))(v40, v52);
  v36(v34, v35);
}

void sub_1E4A840F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);
    if (v4)
    {
      if (*(v4 + 184))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

        sub_1E4AAA050();
      }

      else
      {
        *(v4 + 184) = 0;
      }

      if (qword_1EE0424A8 != -1)
      {
        swift_once();
      }

      v6 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v6, qword_1EE048B58);
      v7 = sub_1E4AAA0C0();
      v8 = sub_1E4AAAA20();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = v9;
        *v9 = 134349056;
        v11 = 4;
        if ((a2 & 1) == 0)
        {
          v11 = 0;
        }

        *(v9 + 4) = v11;
        _os_log_impl(&dword_1E4A23000, v7, v8, "Disabled animations based on playbackKind after waiting duration %{public}ld.", v9, 0xCu);
        MEMORY[0x1E691FE80](v10, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *WKWallpaperPosterRenderController.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[9];

  return v0;
}

uint64_t WKWallpaperPosterRenderController.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[9];

  return swift_deallocClassInstance();
}

void sub_1E4A843CC(uint64_t *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB97C0, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void WKWallpaperPosterRenderController.renderer(_:didUpdate:with:using:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v6 = v5;
  v60 = a5;
  v65 = a2;
  v66 = a3;
  v62 = a1;
  v8 = sub_1E4AAA4C0();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4[7];
  v111 = a4[6];
  v112 = v12;
  v113 = a4[8];
  v13 = a4[3];
  v107 = a4[2];
  v108 = v13;
  v14 = a4[5];
  v109 = a4[4];
  v110 = v14;
  v15 = a4[1];
  v105 = *a4;
  v106 = v15;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v16, qword_1EE048B58);

  v17 = sub_1E4AAA0C0();
  v18 = sub_1E4AAAA20();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v96 = v20;
    *v19 = 136446466;
    v21 = *v6;
    v22 = sub_1E4AAAE90();
    v24 = sub_1E4A85938(v22, v23, &v96);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1E4A85938(0xD000000000000021, 0x80000001E4AB9620, &v96);
    _os_log_impl(&dword_1E4A23000, v17, v18, "Start (%{public}s.%{public}s)…", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v20, -1, -1);
    MEMORY[0x1E691FE80](v19, -1, -1);
  }

  if (!v6[5])
  {
    __break(1u);
    goto LABEL_23;
  }

  v25 = v6[6];
  v26 = v6[5];
  ObjectType = swift_getObjectType();
  v28 = *(v25 + 8);
  v29 = *(v28 + 16);
  swift_unknownObjectRetain();
  v30 = v29(ObjectType, v28);
  swift_unknownObjectRelease();
  v31 = v6[4];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v61 = v30;
  swift_getKeyPath();
  *&v96 = v31;
  sub_1E4A865D8(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

  sub_1E4AAA060();

  v32 = v31[8];
  v101 = v31[7];
  v102 = v32;
  v33 = v31[10];
  v103 = v31[9];
  v104 = v33;
  v34 = v31[3];
  v35 = v31[5];
  v36 = v31[6];
  v98 = v31[4];
  v99 = v35;
  v100 = v36;
  v96 = v31[2];
  v97 = v34;
  sub_1E4A49D24(&v96, v95);

  v37 = v6[4];
  if (!v37)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_getKeyPath();
  *&v95[0] = v37;

  sub_1E4AAA060();

  v38 = v37[8];
  v82 = v37[7];
  v83 = v38;
  v39 = v37[10];
  v84 = v37[9];
  v85 = v39;
  v40 = v37[3];
  v41 = v37[5];
  v42 = v37[6];
  v79 = v37[4];
  v80 = v41;
  v81 = v42;
  v77 = v37[2];
  v78 = v40;
  sub_1E4A49D24(&v77, v95);

  v92 = v83;
  v93 = v84;
  v94 = v85;
  v88 = v79;
  v89 = v80;
  v90 = v81;
  v91 = v82;
  v86 = v77;
  v87 = v78;
  nullsub_1(&v86);
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v69 = v87;
  v70 = v88;
  v71 = v89;
  v72 = v90;
  v67[6] = v111;
  v67[7] = v112;
  v67[8] = v113;
  v68 = v86;
  v67[2] = v107;
  v67[3] = v108;
  v67[4] = v109;
  v67[5] = v110;
  v67[0] = v105;
  v67[1] = v106;
  v43 = sub_1E4A83410(&v68, v67);
  v95[6] = v74;
  v95[7] = v75;
  v95[8] = v76;
  v95[2] = v70;
  v95[3] = v71;
  v95[4] = v72;
  v95[5] = v73;
  v95[0] = v68;
  v95[1] = v69;
  v44 = sub_1E4A4DC88(v95, &unk_1ECF8E990, &qword_1E4AB36D0);
  *&v68 = 0;
  v45 = v65;
  if (BYTE8(v96) != BYTE8(v105) || *&v97 != *&v106 || BYTE8(v97) != BYTE8(v106) || *&v98 != *&v107 || BYTE8(v98) != (BYTE8(v107) & 1))
  {
    v46 = v6[9];
    sub_1E4A9E588(1u, v62);
    swift_allocObject();
    swift_weakInit();

    sub_1E4AAA4B0();
    sub_1E4AAA220();

    (*(v63 + 8))(v11, v64);
  }

  if (*(&v100 + 1) != *(&v109 + 1) && v6[3])
  {
    v47 = swift_getObjectType();
    v48 = *(v66 + 8);
    v49 = *(v48 + 8);

    v50 = v49(v47, v48);
    sub_1E4A6D014(v50, v60);
  }

  MEMORY[0x1EEE9AC00](v44);
  *(&v60 - 4) = v6;
  *(&v60 - 3) = &v105;
  *(&v60 - 16) = v43;
  sub_1E4AAA2A0();
  v52 = v6[5];
  v51 = v6[6];
  v53 = v66;
  v6[5] = v45;
  v6[6] = v53;
  swift_unknownObjectRetain();
  sub_1E4A81AB8(v52, v51);
  swift_unknownObjectRelease();
  if (v6[7])
  {
    goto LABEL_21;
  }

  if (v6[5])
  {
    v54 = v6[6];
    v55 = v6[5];
    v56 = swift_getObjectType();
    v57 = *(v54 + 8);
    v58 = *(v57 + 16);
    swift_unknownObjectRetain();
    v59 = v58(v56, v57);
    swift_unknownObjectRelease();
    if (v61 != v59)
    {
      sub_1E4A8313C();
    }

LABEL_21:
    sub_1E4A49CD0(&v96);

    sub_1E4A84CE0(v6);
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1E4A84CE0(uint64_t *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000021, 0x80000001E4AB9620, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t sub_1E4A84EA8()
{
  v0 = sub_1E4AAA760();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4AAA780();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4AAA750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1E4AAA7A0();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v28);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4A47A2C(0, &qword_1EE0421E0, 0x1E69E9610);
    v27 = sub_1E4AAAA50();
    sub_1E4AAA790();
    *v12 = 500;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E7F38], v8);
    MEMORY[0x1E691EBA0](v17, v12);
    (*(v9 + 8))(v12, v8);
    v26 = *(v13 + 8);
    v21 = v28;
    v26(v17, v28);
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E4A86640;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4A6E8B8;
    aBlock[3] = &block_descriptor_26;
    v23 = _Block_copy(aBlock);

    sub_1E4AAA770();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E4A865D8(&qword_1EE042230, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E720, &qword_1E4AB33E0);
    sub_1E4A6ED78();
    v24 = v32;
    sub_1E4AAAB40();
    v25 = v27;
    MEMORY[0x1E691EE10](v19, v7, v3, v23);
    _Block_release(v23);

    (*(v31 + 8))(v3, v24);
    (*(v29 + 8))(v7, v30);
    return (v26)(v19, v21);
  }

  return result;
}

uint64_t sub_1E4A85344()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 72);

    sub_1E4A9E2CC(1u);
  }

  return result;
}

void sub_1E4A853B4(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 32))
  {
    v5 = *(a2 + 112);
    v10[6] = *(a2 + 96);
    v10[7] = v5;
    v10[8] = *(a2 + 128);
    v6 = *(a2 + 48);
    v10[2] = *(a2 + 32);
    v10[3] = v6;
    v7 = *(a2 + 80);
    v10[4] = *(a2 + 64);
    v10[5] = v7;
    v8 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v8;

    sub_1E4A49D24(a2, &v9);
    sub_1E4A74D30(v10);

    if (a3 != 2)
    {
      sub_1E4A83978(a3 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E4A85470(uint64_t *a1)
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9730, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t sub_1E4A85650()
{
  v1 = v0;
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B40);
  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4A23000, v3, v4, "Renderer will start rotation.", v5, 2u);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v6 = *(v1 + 72);
  sub_1E4A9E588(3u, *(v1 + 16));
  return 1;
}

void sub_1E4A85740()
{
  v1 = v0;
  v2 = *(v0 + 72);
  sub_1E4A9E2CC(3u);
  [*(v1 + 16) wk_noteContentSignificantlyChanged];
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v3, qword_1EE048B40);
  oslog = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4A23000, oslog, v4, "Renderer did complete rotation.", v5, 2u);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }
}

uint64_t sub_1E4A85868(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1E4A858DC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1E4A85938(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1E4A85938(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E4A85A04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E4A479C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1E4A85A04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E4A85B10(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1E4AAAC00();
    a6 = v11;
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

uint64_t sub_1E4A85B10(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E4A85B5C(a1, a2);
  sub_1E4A85C8C(&unk_1F5E998F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E4A85B5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E4A85D78(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E4AAAC00();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E4AAA8E0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E4A85D78(v10, 0);
        result = sub_1E4AAABB0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E4A85C8C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E4A85DEC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E4A85D78(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E960, &qword_1E4AB3370);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E4A85DEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E960, &qword_1E4AB3370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_1E4A85EE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1E4A85EF0(void (*a1)(void))
{
  a1();

  return sub_1E4AAAE90();
}

void sub_1E4A85F2C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v7 = a3[7];
  v50 = a3[6];
  v51 = v7;
  v52 = a3[8];
  v8 = a3[3];
  v46 = a3[2];
  v47 = v8;
  v9 = a3[5];
  v48 = a3[4];
  v49 = v9;
  v10 = a3[1];
  v44 = *a3;
  v45 = v10;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v11, qword_1EE048B58);

  v12 = sub_1E4AAA0C0();
  v13 = sub_1E4AAAA20();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v43[0] = v15;
    *v14 = 136446466;
    v16 = *v4;
    v17 = sub_1E4AAAE90();
    v19 = sub_1E4A85938(v17, v18, v43);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB97C0, v43);
    _os_log_impl(&dword_1E4A23000, v12, v13, "Start (%{public}s.%{public}s)…", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v15, -1, -1);
    MEMORY[0x1E691FE80](v14, -1, -1);
  }

  v43[6] = v50;
  v43[7] = v51;
  v43[8] = v52;
  v43[2] = v46;
  v43[3] = v47;
  v43[4] = v48;
  v43[5] = v49;
  v43[0] = v44;
  v43[1] = v45;
  v20 = BYTE8(v46);
  v21 = type metadata accessor for WKWallpaperPosterLayerViewModel();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1E4A49D24(&v44, &v42);
  v24 = sub_1E4A7578C(v43, (v20 & 1) == 0);
  v25 = v4[4];
  v4[4] = v24;
  if (v25)
  {
  }

  else
  {
    v26 = v4[2];
    v27 = v24;

    v28 = [v26 backgroundView];
    v29 = [v26 foregroundView];
    v30 = [v26 floatingView];
    sub_1E4A524E8(v27, v28, v29, v30);
  }

  v32 = v4[5];
  v31 = v4[6];
  v4[5] = a1;
  v4[6] = a2;
  swift_unknownObjectRetain();
  sub_1E4A81AB8(v32, v31);
  swift_unknownObjectRelease();
  v33 = v4[3];
  if (!v33)
  {
    goto LABEL_13;
  }

  *(v33 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BC90;
  swift_unknownObjectWeakAssign();
  v34 = v4[3];
  if (!v34)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E970, &qword_1E4AB1828);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E4AB3280;
  v36 = v4[4];
  if (v36)
  {
    *(v35 + 32) = v36;
    *(v35 + 40) = &off_1F5E9B728;
    v37 = *(v34 + 16);
    *(v34 + 16) = v35;

    if (v4[3])
    {
      ObjectType = swift_getObjectType();
      v39 = *(a2 + 8);
      v40 = *(v39 + 8);

      v41 = v40(ObjectType, v39);
      sub_1E4A6C954(v41);
    }

LABEL_13:
    sub_1E4A843CC(v4);
    return;
  }

  __break(1u);
}

void _s12WallpaperKit33WKWallpaperPosterRenderControllerC21rendererDidInvalidateyySo0cD8Renderer_pF_0()
{
  v1 = v0;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B58);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = *v1;
    v8 = sub_1E4AAAE90();
    v10 = sub_1E4A85938(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9730, &v13);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  if (v1[3])
  {
    v11 = v1[3];

    sub_1E4A6D7E8();
  }

  v12 = v1[9];
  sub_1E4A9EAA0();

  sub_1E4A85470(v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4A865D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A86648(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unsigned __int8 *WKPosterEnvironmentSnapshot.init(environmentMode:wakeState:unlockState:environmentRequiresImmediateRendering:animationDuration:timingFunction:animation:interfaceOrientation:floatingObscurableBounds:deviceMotionRotation:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, __n128 a14@<Q5>, __n128 a15@<Q6>)
{
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *a3;
  v18 = *(a3 + 8);
  a8->n128_u8[0] = *result;
  a8->n128_u8[8] = v15;
  a8[1].n128_u64[0] = v16;
  a8[1].n128_u8[8] = v17;
  a8[2].n128_u64[0] = v18;
  a8[2].n128_u8[8] = a4;
  a8[3].n128_f64[0] = a9;
  a8[3].n128_u64[1] = a5;
  a8[4].n128_u64[0] = a6;
  a8[4].n128_u64[1] = a7;
  a8[5].n128_f64[0] = a10;
  a8[5].n128_f64[1] = a11;
  a8[6].n128_f64[0] = a12;
  a8[6].n128_f64[1] = a13;
  a8[7] = a14;
  a8[8] = a15;
  return result;
}

uint64_t WKPosterEnvironmentSnapshot.description.getter()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = *(v0 + 2);
  v4 = v0[24];
  v5 = *(v0 + 4);
  v6 = v0[40];
  v7 = *(v0 + 6);
  v9 = *(v0 + 7);
  v8 = *(v0 + 8);
  v10 = *(v0 + 9);
  v11 = *(v0 + 10);
  v12 = *(v0 + 11);
  v13 = *(v0 + 12);
  v14 = *(v0 + 13);
  sub_1E4AAABC0();
  MEMORY[0x1E691ECA0](0xD00000000000001BLL, 0x80000001E4AB3400);
  MEMORY[0x1E691ECA0](0xD000000000000016, 0x80000001E4AB97E0);
  if (v1)
  {
    v15 = 0x676E6974696465;
  }

  else
  {
    v15 = 0x6E697265646E6572;
  }

  if (v1)
  {
    v16 = 0xE700000000000000;
  }

  else
  {
    v16 = 0xE900000000000067;
  }

  MEMORY[0x1E691ECA0](v15, v16);

  MEMORY[0x1E691ECA0](0x53656B6177202C27, 0xEF27203A65746174);
  v17 = WKPosterWakeState.description.getter();
  MEMORY[0x1E691ECA0](v17);

  MEMORY[0x1E691ECA0](0xD000000000000010, 0x80000001E4AB9800);
  LOBYTE(v34) = v4;
  v18 = WKPosterUnlockState.description.getter();
  MEMORY[0x1E691ECA0](v18);

  MEMORY[0x1E691ECA0](0xD000000000000029, 0x80000001E4AB9820);
  if (v6)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v6)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1E691ECA0](v19, v20);

  MEMORY[0x1E691ECA0](0xD000000000000015, 0x80000001E4AB9850);
  sub_1E4AAA9A0();
  MEMORY[0x1E691ECA0](0xD000000000000012, 0x80000001E4AB9870);
  v21 = [v9 description];
  v22 = sub_1E4AAA8A0();
  v24 = v23;

  MEMORY[0x1E691ECA0](v22, v24);

  MEMORY[0x1E691ECA0](0x74616D696E61202CLL, 0xED0000203A6E6F69);
  if (v8)
  {
    v25 = sub_1E4AAA700();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  MEMORY[0x1E691ECA0](v25, v27);

  MEMORY[0x1E691ECA0](0xD000000000000018, 0x80000001E4AB9890);
  v28 = WKStringForInterfaceOrientation(v10);
  v29 = sub_1E4AAA8A0();
  v31 = v30;

  MEMORY[0x1E691ECA0](v29, v31);

  MEMORY[0x1E691ECA0](0xD00000000000001CLL, 0x80000001E4AB98B0);
  v32 = sub_1E4AAAAA0();
  MEMORY[0x1E691ECA0](v32);

  MEMORY[0x1E691ECA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t WKPosterEnvironmentSnapshot.PosterEnvironmentMode.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

double WKPosterEnvironmentSnapshot.wakeState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

double WKPosterEnvironmentSnapshot.wakeState.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *(v1 + 8) = *a1;
  *(v1 + 16) = result;
  return result;
}

double WKPosterEnvironmentSnapshot.unlockState.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

double WKPosterEnvironmentSnapshot.unlockState.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t WKPosterEnvironmentSnapshot.animation.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

double WKPosterEnvironmentSnapshot.floatingObscurableBounds.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  return result;
}

void WKPosterEnvironmentSnapshot.floatingObscurableBounds.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

__n128 WKPosterEnvironmentSnapshot.deviceMotionRotation.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 128);
  return result;
}

uint64_t WKPosterEnvironmentSnapshot.PosterEnvironmentMode.description.getter()
{
  if (*v0)
  {
    result = 0x676E6974696465;
  }

  else
  {
    result = 0x6E697265646E6572;
  }

  *v0;
  return result;
}

uint64_t sub_1E4A86DD4()
{
  if (*v0)
  {
    result = 0x676E6974696465;
  }

  else
  {
    result = 0x6E697265646E6572;
  }

  *v0;
  return result;
}

unint64_t _s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, double *a2)
{
  result = 0;
  if (((LOBYTE(a1->f64[0]) ^ *a2) & 1) != 0 || LOBYTE(a1->f64[1]) != *(a2 + 8) || a1[1].f64[0] != a2[2] || LOBYTE(a1[1].f64[1]) != *(a2 + 24) || a1[2].f64[0] != a2[4] || ((LOBYTE(a1[2].f64[1]) ^ *(a2 + 40)) & 1) != 0 || a1[3].f64[0] != a2[6])
  {
    return result;
  }

  v42 = v11;
  v43 = v10;
  v44 = v9;
  v45 = v8;
  v46 = v7;
  v47 = v6;
  v48 = v5;
  v49 = v4;
  v50 = v2;
  v51 = v3;
  v14 = a1[4].f64[1];
  v15 = a1[5].f64[0];
  v16 = a1[5].f64[1];
  v17 = a1[6].f64[0];
  v18 = a1[6].f64[1];
  v34 = a1[8].f64[0];
  v35 = a1[8].f64[1];
  v33 = a1[7];
  v19 = *(a2 + 8);
  v20 = *(a2 + 9);
  v21 = a2[10];
  v22 = a2[11];
  v23 = a2[12];
  v24 = a2[13];
  v26 = *(a2 + 16);
  v25 = *(a2 + 17);
  v28 = a2[14];
  v27 = a2[15];
  v29 = *(a2 + 7);
  v31 = a1[3].f64[1];
  v30 = a1[4].f64[0];
  sub_1E4A5634C();
  if ((sub_1E4AAAAD0() & 1) == 0)
  {
    return 0;
  }

  if (v30 == 0.0)
  {
    result = 0;
    if (v19)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v19)
  {
    return 0;
  }

  v32 = sub_1E4AAA710();

  result = 0;
  if ((v32 & 1) == 0)
  {
    return result;
  }

LABEL_16:
  if (*&v14 == v20)
  {
    v52.origin.x = v15;
    v52.origin.y = v16;
    v52.size.width = v17;
    v52.size.height = v18;
    v53.origin.x = v21;
    v53.origin.y = v22;
    v53.size.width = v23;
    v53.size.height = v24;
    result = CGRectEqualToRect(v52, v53);
    if (result)
    {
      v39 = v33;
      v40 = v34;
      v41 = v35;
      v37 = v26;
      v38 = v25;
      v36.f64[0] = v28;
      v36.f64[1] = v27;
      return SPRotation3DEqualToRotation(&v39, &v36);
    }
  }

  return result;
}

unint64_t sub_1E4A86FF0()
{
  result = qword_1ECF8E978;
  if (!qword_1ECF8E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E978);
  }

  return result;
}

uint64_t destroy for WKPosterEnvironmentSnapshot(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t initializeWithCopy for WKPosterEnvironmentSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  v7 = v3;

  return a1;
}

uint64_t assignWithCopy for WKPosterEnvironmentSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  v6 = v4;

  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v9 = *(a2 + 112);
  v8 = *(a2 + 120);
  v10 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v10;
  *(a1 + 112) = v9;
  *(a1 + 120) = v8;
  return a1;
}

__n128 __swift_memcpy144_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t assignWithTake for WKPosterEnvironmentSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  v4 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  v6 = *(a2 + 112);
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  *(a1 + 112) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for WKPosterEnvironmentSnapshot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WKPosterEnvironmentSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id WKLayeredStripeWallpaperInput.backgroundColor.getter()
{
  v1 = [*(*v0 + 16) backgroundColor];

  return v1;
}

uint64_t WKLayeredStripeWallpaperInput.init(backgroundColor:stripeAngleDegrees:stripeHeightFactor:firstStripeOffsetScaleFactor:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v7 = [objc_allocWithZone(WKLayeredStripeWallpaperInput) initWithBackgroundColor:a1 stripeAngleDegrees:a3 stripeHeightFactor:a4 firstStripeOffsetScaleFactor:a5];

  type metadata accessor for WKLayeredStripeWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v7;
  *a2 = result;
  return result;
}

uint64_t WKLayeredStripeWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStripeWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredStripeWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A875B8()
{
  result = qword_1ECF8E980;
  if (!qword_1ECF8E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E980);
  }

  return result;
}

uint64_t sub_1E4A87644(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v22 = a1;
    sub_1E4AAAC30();
    v4 = v22 + 64;
    v5 = -1 << *(v22 + 32);
    result = sub_1E4AAAB50();
    v6 = v22;
    v7 = result;
    v8 = 0;
    v9 = *(v22 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v23 = v8;
      v12 = v4;
      v13 = *(*(*(v6 + 56) + 8 * v7) + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);

      sub_1E4AAAC10();
      v14 = *(v24 + 16);
      sub_1E4AAAC40();
      sub_1E4AAAC50();
      result = sub_1E4AAAC20();
      v6 = v22;
      v10 = 1 << *(v22 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v15 = *(v12 + 8 * v11);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v10 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v19 = (v22 + 72 + 8 * v11);
        while (v18 < (v10 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1E4A93064(v7, v9, 0);
            v6 = v22;
            v10 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_1E4A93064(v7, v9, 0);
        v6 = v22;
      }

LABEL_4:
      v8 = v23 + 1;
      v7 = v10;
      if (v23 + 1 == v2)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_1E4A87888(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1E4AAAB50();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1E4A8FD70(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1E4A87908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  *a2 = *(v3 + 16);
}

uint64_t sub_1E4A879B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_1E4A74BA0(&v4);
}

uint64_t sub_1E4A879F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  sub_1E4AAA060();

  *a2 = *(v3 + 192);
  return result;
}

uint64_t sub_1E4A87AC0(uint64_t a1)
{
  sub_1E4AAABC0();
  MEMORY[0x1E691ECA0](0xD000000000000018, 0x80000001E4AB9440);
  v2 = *(a1 + 16);
  v3 = [v2 identifierString];
  v4 = sub_1E4AAA8A0();
  v6 = v5;

  MEMORY[0x1E691ECA0](v4, v6);

  MEMORY[0x1E691ECA0](0x203A656D616E202CLL, 0xE800000000000000);
  v7 = [v2 name];
  v8 = sub_1E4AAA8A0();
  v10 = v9;

  MEMORY[0x1E691ECA0](v8, v10);

  MEMORY[0x1E691ECA0](0xD000000000000012, 0x80000001E4AB9460);
  v11 = [v2 contentVersion];
  [v11 floatValue];

  sub_1E4AAA9B0();
  MEMORY[0x1E691ECA0](0xD000000000000016, 0x80000001E4AB9480);
  v13 = [v2 logicalScreenClass];
  type metadata accessor for WKWallpaperRepresentingLogicalScreenClass(0);
  sub_1E4AAAC60();

  MEMORY[0x1E691ECA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_1E4A87CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v89 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v89 - v13;
  if (!a1)
  {
    return 0;
  }

  v15 = *(a1 + 16);
  result = [v15 valueBasedWallpaperForLocation_];
  if (!result)
  {
    return result;
  }

  sub_1E4A57768(v91);
  swift_unknownObjectRelease();
  sub_1E4A2732C(v91, v92);
  v17 = v93;
  v18 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  (*(v18 + 24))(v91, v17, v18);
  v19 = *&v91[0];
  v20 = BYTE8(v91[0]);
  if (BYTE8(v91[0]) <= 4u)
  {
    if (BYTE8(v91[0]) != 1)
    {
      if (BYTE8(v91[0]) == 2)
      {
        if (qword_1EE0424B8 != -1)
        {
          swift_once();
        }

        v21 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v21, qword_1EE048B70);

        v22 = sub_1E4AAA0C0();
        v23 = sub_1E4AAAA20();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v90 = v25;
          *v24 = 136446210;
          v26 = [v15 identifierString];
          v27 = sub_1E4AAA8A0();
          v29 = v28;

          v30 = sub_1E4A85938(v27, v29, &v90);

          *(v24 + 4) = v30;
          _os_log_impl(&dword_1E4A23000, v22, v23, "Adding toggle depth action since '%{public}s' has floating layer content (LayeredStripe).", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
          MEMORY[0x1E691FE80](v25, -1, -1);
          MEMORY[0x1E691FE80](v24, -1, -1);

          v31 = v19;
          v32 = 2;
LABEL_42:
          sub_1E4A4EF3C(v31, v32);
LABEL_46:
          __swift_destroy_boxed_opaque_existential_1Tm(v92);
          return 1;
        }

        v51 = v19;
        v52 = 2;
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    v43 = *(*&v91[0] + 16);

    v44 = [v43 floatingFullSizeImageURL];
    if (v44)
    {
      v45 = v44;
      sub_1E4AA9FC0();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v53 = sub_1E4AA9FE0();
    v54 = *(v53 - 8);
    (*(v54 + 56))(v12, v46, 1, v53);
    sub_1E4A4EF94(v12, v14);
    v55 = (*(v54 + 48))(v14, 1, v53);
    sub_1E4A4DC88(v14, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v55 != 1)
    {
      if (qword_1EE0424B8 != -1)
      {
        swift_once();
      }

      v56 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v56, qword_1EE048B70);

      v57 = sub_1E4AAA0C0();
      v58 = sub_1E4AAAA20();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v90 = v60;
        *v59 = 136446210;
        v61 = [v15 identifierString];
        v62 = sub_1E4AAA8A0();
        v64 = v63;

        v65 = sub_1E4A85938(v62, v64, &v90);

        *(v59 + 4) = v65;
        _os_log_impl(&dword_1E4A23000, v57, v58, "Adding toggle depth action since '%{public}s' has floating layer content (LayeredStill).", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x1E691FE80](v60, -1, -1);
        MEMORY[0x1E691FE80](v59, -1, -1);
        sub_1E4A4EF3C(v19, 1u);

        v31 = v19;
        v32 = 1;
        goto LABEL_42;
      }

      sub_1E4A4EF3C(v19, 1u);

      v51 = v19;
      v52 = 1;
      goto LABEL_45;
    }

LABEL_31:
    sub_1E4A4EF3C(v19, v20);
    goto LABEL_32;
  }

  if (BYTE8(v91[0]) == 5)
  {
    v47 = *(*&v91[0] + 16);

    v48 = [v47 floatingAnimationFileURL];
    if (v48)
    {
      v49 = v48;
      sub_1E4AA9FC0();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v66 = sub_1E4AA9FE0();
    v67 = *(v66 - 8);
    (*(v67 + 56))(v6, v50, 1, v66);
    sub_1E4A4EF94(v6, v9);
    v68 = (*(v67 + 48))(v9, 1, v66);
    sub_1E4A4DC88(v9, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v68 != 1)
    {
      if (qword_1EE0424B8 != -1)
      {
        swift_once();
      }

      v79 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v79, qword_1EE048B70);

      v80 = sub_1E4AAA0C0();
      v81 = sub_1E4AAAA20();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v90 = v83;
        *v82 = 136446210;
        v84 = [v15 identifierString];
        v85 = sub_1E4AAA8A0();
        v87 = v86;

        v88 = sub_1E4A85938(v85, v87, &v90);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_1E4A23000, v80, v81, "Adding toggle depth action since '%{public}s' has floating layer content (LayeredAnimation).", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x1E691FE80](v83, -1, -1);
        MEMORY[0x1E691FE80](v82, -1, -1);
        sub_1E4A4EF3C(v19, 5u);

        v31 = v19;
        v32 = 5;
        goto LABEL_42;
      }

      sub_1E4A4EF3C(v19, 5u);

      v51 = v19;
      v52 = 5;
      goto LABEL_45;
    }

    goto LABEL_31;
  }

  if (BYTE8(v91[0]) == 6)
  {
    if (qword_1EE0424B8 != -1)
    {
      swift_once();
    }

    v33 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v33, qword_1EE048B70);

    v34 = sub_1E4AAA0C0();
    v35 = sub_1E4AAAA20();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v90 = v37;
      *v36 = 136446210;
      v38 = [v15 identifierString];
      v39 = sub_1E4AAA8A0();
      v41 = v40;

      v42 = sub_1E4A85938(v39, v41, &v90);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1E4A23000, v34, v35, "Adding toggle depth action since '%{public}s' has floating layer content (ParameterizedCA).", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E691FE80](v37, -1, -1);
      MEMORY[0x1E691FE80](v36, -1, -1);

      v31 = v19;
      v32 = 6;
      goto LABEL_42;
    }

    v51 = v19;
    v52 = 6;
LABEL_45:
    sub_1E4A4EF3C(v51, v52);

    goto LABEL_46;
  }

LABEL_32:
  sub_1E4A4EF3C(v19, v20);
  if (qword_1EE0424B8 != -1)
  {
    swift_once();
  }

  v69 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v69, qword_1EE048B70);

  v70 = sub_1E4AAA0C0();
  v71 = sub_1E4AAAA20();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v73;
    *v72 = 136446210;
    v74 = [v15 identifierString];
    v75 = sub_1E4AAA8A0();
    v77 = v76;

    v78 = sub_1E4A85938(v75, v77, &v90);

    *(v72 + 4) = v78;
    _os_log_impl(&dword_1E4A23000, v70, v71, "No need to add toggle depth action for '%{public}s'.", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x1E691FE80](v73, -1, -1);
    MEMORY[0x1E691FE80](v72, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  return 0;
}

uint64_t sub_1E4A887C4(SEL **a1)
{
  v2 = v1;
  v4 = sub_1E4AAA030();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = MEMORY[0x1E69E7CC8];
  if (*(v2 + 7))
  {
    v9 = qword_1EE0424C0;

    if (v9 != -1)
    {
LABEL_49:
      swift_once();
    }

    v11 = sub_1E4AAA0E0();
    v97 = __swift_project_value_buffer(v11, qword_1EE048B88);
    v12 = sub_1E4AAA0C0();
    v13 = sub_1E4AAAA20();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E4A23000, v12, v13, "Removing all items.", v14, 2u);
      MEMORY[0x1E691FE80](v14, -1, -1);
    }

    v98 = v7;

    swift_beginAccess();
    v15 = *(v2 + 4);
    *(v2 + 4) = v8;

    v8 = &selRef_currentDevice;
    if ([*(v10 + 16) numberOfWallpapers])
    {
      v16 = 0;
      v7 = &unk_1E8767000;
      v100 = v2;
      v101 = v10;
      do
      {
        *&v105[0] = [*(v10 + 16) v7[372]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
        if (!swift_dynamicCast())
        {
          goto LABEL_53;
        }

        sub_1E4A2732C(&v106, &v115);
        v17 = *(&v116 + 1);
        v18 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
        (*(v18 + 8))(v125, v17, v18);
        __swift_destroy_boxed_opaque_existential_1Tm(&v115);
        if (v16 >= [*(v10 + 16) numberOfWallpapers])
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
        if (swift_dynamicCast())
        {
          v19 = *(v2 + 10);
          v20 = *(v2 + 12);
          v112 = *(v2 + 11);
          v113 = v20;
          v21 = *(v2 + 12);
          v114 = *(v2 + 13);
          v22 = *(v2 + 6);
          v23 = *(v2 + 8);
          v108 = *(v2 + 7);
          v109 = v23;
          v24 = *(v2 + 8);
          v25 = *(v2 + 10);
          v110 = *(v2 + 9);
          v111 = v25;
          v26 = *(v2 + 6);
          v106 = *(v2 + 5);
          v107 = v26;
          v121 = v112;
          v122 = v21;
          v123 = *(v2 + 13);
          v117 = v108;
          v118 = v24;
          v119 = v110;
          v120 = v19;
          v27 = v124;
          v115 = v106;
          v116 = v22;
          if (sub_1E4A86648(&v115) == 1)
          {
            __break(1u);
            goto LABEL_51;
          }

          v104[6] = v121;
          v104[7] = v122;
          v104[8] = v123;
          v104[2] = v117;
          v104[3] = v118;
          v104[4] = v119;
          v104[5] = v120;
          v104[0] = v115;
          v104[1] = v116;
          v28 = type metadata accessor for WKWallpaperPosterLayerViewModel();
          v29 = *(v28 + 48);
          v30 = *(v28 + 52);
          swift_allocObject();
          v105[6] = v112;
          v105[7] = v113;
          v105[8] = v114;
          v105[2] = v108;
          v105[3] = v109;
          v105[4] = v110;
          v105[5] = v111;
          v105[0] = v106;
          v105[1] = v107;
          sub_1E4A49D24(v105, v103);
          v31 = sub_1E4A7578C(v104, 1);
          v32 = *(v31 + 16);

          v33 = sub_1E4A76F94(v32, v27);

          if (v33)
          {
            KeyPath = swift_getKeyPath();
            v99 = &v94;
            MEMORY[0x1EEE9AC00](KeyPath);
            *&v104[0] = v31;
            sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
            sub_1E4AAA050();
          }

          else
          {
            v35 = *(v31 + 16);
            *(v31 + 16) = v27;
          }

          swift_getKeyPath();
          v10 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterLayerViewModel___observationRegistrar;
          *&v104[0] = v31;
          v2 = &unk_1E4AB3860;
          v7 = sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
          sub_1E4AAA060();

          *&v104[0] = v31;
          v8 = swift_getKeyPath();
          sub_1E4AAA080();

          v36 = *(v31 + 192);
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_48;
          }

          *(v31 + 192) = v38;
          *&v104[0] = v31;
          swift_getKeyPath();
          sub_1E4AAA070();

          v39 = type metadata accessor for WKWallpaperPosterEditorLookItem();
          v40 = objc_allocWithZone(v39);
          *&v40[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views] = 0;
          *&v40[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel] = v31;
          v102.receiver = v40;
          v102.super_class = v39;

          v41 = objc_msgSendSuper2(&v102, sel_init);
          v42 = [*(v27 + 16) identifierString];
          v43 = sub_1E4AAA8A0();
          v45 = v44;

          v2 = v100;
          swift_beginAccess();
          v46 = v41;
          v47 = *(v2 + 4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103[0] = *(v2 + 4);
          *(v2 + 4) = 0x8000000000000000;
          sub_1E4A959C8(v46, v43, v45, isUniquelyReferenced_nonNull_native);

          *(v2 + 4) = v103[0];
          swift_endAccess();

          v10 = v101;
          v8 = &selRef_currentDevice;
          v7 = &unk_1E8767000;
        }
      }

      while (++v16 != [*(v10 + 16) numberOfWallpapers]);
    }

    v49 = sub_1E4AAA0C0();
    v50 = sub_1E4AAAA20();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134349056;
      *(v51 + 4) = *(*(v2 + 4) + 16);

      _os_log_impl(&dword_1E4A23000, v49, v50, "Created %{public}ld items.", v51, 0xCu);
      MEMORY[0x1E691FE80](v51, -1, -1);
    }

    else
    {
    }

    v7 = v98;
    v57 = *(v2 + 7);
    if (v98)
    {
LABEL_28:
      if (!v57)
      {
        goto LABEL_30;
      }

      v58 = v7[2];
      v59 = *(v57 + 16);
      swift_retain_n();

      v60 = v58;
      v61 = v59;
      v62 = [v60 isEqual_];

      if ((v62 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1EE0424C0 != -1)
    {
      swift_once();
    }

    v52 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v52, qword_1EE048B88);
    v53 = sub_1E4AAA0C0();
    v54 = sub_1E4AAAA20();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1E4A23000, v53, v54, "Removing all items (no collection).", v55, 2u);
      MEMORY[0x1E691FE80](v55, -1, -1);
    }

    swift_beginAccess();
    v56 = *(v2 + 4);
    *(v2 + 4) = v8;

    v57 = *(v2 + 7);
    if (v7)
    {
      goto LABEL_28;
    }
  }

  if (v57)
  {
LABEL_30:
    [*(v2 + 2) updateActions];
  }

LABEL_31:
  swift_beginAccess();
  v63 = *(v2 + 4);

  v65 = sub_1E4A87644(v64);

  v66 = *(v2 + 7);
  if (!v66)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ([*(v66 + 16) disableRotation])
  {
    if (qword_1EE0424C0 != -1)
    {
      swift_once();
    }

    v67 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v67, qword_1EE048B88);
    v68 = sub_1E4AAA0C0();
    v69 = sub_1E4AAAA20();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1E4A23000, v68, v69, "Renderer will NOT support rotation", v70, 2u);
      MEMORY[0x1E691FE80](v70, -1, -1);
    }

    v71 = *(v2 + 3);
    *(v2 + 3) = 0;
    goto LABEL_38;
  }

  if (!*(v2 + 3))
  {
    v77 = type metadata accessor for WKDynamicRotationManager();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    v80 = swift_allocObject();
    *(v80 + 16) = MEMORY[0x1E69E7CC0];
    v81 = v80 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
    v82 = v94;
    sub_1E4AAA020();
    (*(v95 + 32))(v81, v82, v96);
    v83 = type metadata accessor for WKPosterDynamicRotationState();
    *(v81 + v83[5]) = 0;
    *(v81 + v83[6]) = 0x3FF0000000000000;
    *(v81 + v83[7]) = 0;
    *(v81 + v83[8]) = 0;
    *(v80 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
    v84 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
    v85 = type metadata accessor for WKPosterDynamicRotationAnimationState();
    (*(*(v85 - 8) + 56))(v80 + v84, 1, 1, v85);
    *(v80 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v86 = *(v2 + 3);
    *(v2 + 3) = v80;

    v87 = *(v2 + 3);
    if (v87)
    {
      *(v87 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BF68;
      swift_unknownObjectWeakAssign();
      if (*(v2 + 3))
      {
        if (*(v2 + 29))
        {
          v88 = *(v2 + 30);
          v89 = *(v2 + 29);
          ObjectType = swift_getObjectType();
          v91 = *(v88 + 8);
          v92 = *(v91 + 8);

          swift_unknownObjectRetain();
          v93 = v92(ObjectType, v91);
          swift_unknownObjectRelease();
          sub_1E4A6C954(v93);
LABEL_38:

          goto LABEL_40;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        *&v108 = 0;
        v106 = 0u;
        v107 = 0u;
        sub_1E4A4DC88(&v106, &unk_1ECF8EB30, &unk_1E4AB0E40);
        result = sub_1E4AAACB0();
        __break(1u);
        return result;
      }
    }
  }

LABEL_40:
  v72 = *(v2 + 3);
  if (v72)
  {
    v73 = *(v2 + 3);

    v74 = sub_1E4A8943C(v65);

    v75 = *(v72 + 16);
    *(v72 + 16) = v74;
  }
}

void *sub_1E4A8943C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4AAAC80();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1E4A689EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E691EFA0](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_1E4A689EC((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &off_1F5E9B728;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v17 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v17 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_1E4A689EC((v15 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v16 = v17 + v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = &off_1F5E9B728;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E4A895D4(uint64_t a1)
{
  if (*(v1 + 64) != a1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v1 + 32);
    v6 = *(v3 + 64);
    v5 = v3 + 64;
    v4 = v6;
    v7 = 1 << *(*(v1 + 32) + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4;
    v10 = (v7 + 63) >> 6;
    v34 = *(v1 + 32);

    v11 = 0;
    v33 = v1;
    if (v9)
    {
      while (1)
      {
        v12 = v11;
LABEL_9:
        v13 = __clz(__rbit64(v9)) | (v12 << 6);
        v14 = (*(v34 + 48) + 16 * v13);
        v15 = v14[1];
        v35 = *v14;
        v16 = *(*(v34 + 56) + 8 * v13);
        v17 = qword_1EE0424C0;

        v18 = v16;
        if (v17 != -1)
        {
          swift_once();
        }

        v19 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v19, qword_1EE048B88);

        v20 = sub_1E4AAA0C0();
        v21 = sub_1E4AAAA20();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v36 = v23;
          *v22 = 136446210;
          *(v22 + 4) = sub_1E4A85938(v35, v15, &v36);
          _os_log_impl(&dword_1E4A23000, v20, v21, "Updating overrideUserInterfaceStyle on %{public}s.", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          v24 = v23;
          v2 = v33;
          MEMORY[0x1E691FE80](v24, -1, -1);
          MEMORY[0x1E691FE80](v22, -1, -1);
        }

        v25 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views;
        v26 = *&v18[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views];
        if (!v26)
        {
          break;
        }

        v27 = [v26 backgroundView];
        [v27 setOverrideUserInterfaceStyle_];

        v28 = *&v18[v25];
        if (!v28)
        {
          goto LABEL_21;
        }

        v29 = [v28 foregroundView];
        [v29 setOverrideUserInterfaceStyle_];

        v30 = *&v18[v25];
        if (!v30)
        {
          goto LABEL_23;
        }

        v9 &= v9 - 1;
        v31 = *&v18[v25];
        swift_unknownObjectRetain();

        v32 = [v30 floatingView];
        swift_unknownObjectRelease();
        [v32 setOverrideUserInterfaceStyle_];

        v11 = v12;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          return;
        }

        v9 = *(v5 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1E4A898E4(float64x2_t *a1)
{
  v2 = v1;
  v4 = a1[5];
  v5 = a1[7];
  v142 = a1[6];
  v143 = v5;
  v6 = a1[7];
  v144 = a1[8];
  v7 = a1[1];
  v8 = a1[3];
  v138 = a1[2];
  v139 = v8;
  v9 = a1[3];
  v10 = a1[4];
  v11 = v10;
  v141 = a1[5];
  v140 = v10;
  v12 = *a1;
  v13 = *a1;
  v137[1] = a1[1];
  v137[0] = v12;
  v14 = *(v2 + 160);
  v15 = *(v2 + 192);
  v150 = *(v2 + 176);
  v151 = v15;
  v16 = *(v2 + 192);
  v152 = *(v2 + 208);
  v17 = *(v2 + 96);
  v18 = *(v2 + 128);
  v146 = *(v2 + 112);
  v147 = v18;
  v20 = *(v2 + 128);
  v19 = *(v2 + 144);
  v21 = v19;
  v149 = *(v2 + 160);
  v148 = v19;
  v22 = *(v2 + 80);
  v145[1] = *(v2 + 96);
  v145[0] = v22;
  v23 = *(v2 + 160);
  v24 = *(v2 + 192);
  v136[6] = *(v2 + 176);
  v136[7] = v24;
  v26 = *(v2 + 80);
  v25 = *(v2 + 96);
  v27 = *(v2 + 128);
  v136[2] = *(v2 + 112);
  v136[3] = v27;
  v28 = *(v2 + 144);
  v136[5] = v23;
  v136[4] = v28;
  v29 = *(v2 + 80);
  v136[1] = v25;
  v136[0] = v29;
  v136[14] = v4;
  v136[15] = v142;
  v30 = a1[8];
  v136[16] = v6;
  v136[17] = v30;
  v136[10] = v7;
  v136[11] = v138;
  v136[12] = v9;
  v136[13] = v11;
  v136[8] = *(v2 + 208);
  v136[9] = v13;
  v153[6] = v150;
  v153[7] = v16;
  v153[8] = *(v2 + 208);
  v153[2] = v146;
  v153[3] = v20;
  v153[4] = v21;
  v153[5] = v14;
  v153[0] = v26;
  v153[1] = v17;
  if (sub_1E4A86648(v153) == 1)
  {
    v31 = a1[7];
    v126[6] = a1[6];
    v126[7] = v31;
    v126[8] = a1[8];
    v32 = a1[3];
    v126[2] = a1[2];
    v126[3] = v32;
    v33 = a1[5];
    v126[4] = a1[4];
    v126[5] = v33;
    v34 = a1[1];
    v126[0] = *a1;
    v126[1] = v34;
    if (sub_1E4A86648(v126) == 1)
    {
      v133 = v136[6];
      v134 = v136[7];
      v135 = v136[8];
      v129 = v136[2];
      v130 = v136[3];
      v131 = v136[4];
      v132 = v136[5];
      v127 = v136[0];
      v128 = v136[1];
      sub_1E4A52D40(v145, &v117, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A52D40(v137, &v117, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A4DC88(&v127, &unk_1ECF8E990, &qword_1E4AB36D0);
      return;
    }

    sub_1E4A52D40(v145, &v127, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A52D40(v137, &v127, &unk_1ECF8E990, &qword_1E4AB36D0);
  }

  else
  {
    v133 = v136[6];
    v134 = v136[7];
    v135 = v136[8];
    v129 = v136[2];
    v130 = v136[3];
    v131 = v136[4];
    v132 = v136[5];
    v127 = v136[0];
    v128 = v136[1];
    v123 = v136[6];
    v124 = v136[7];
    v125 = v136[8];
    v119 = v136[2];
    v120 = v136[3];
    v121 = v136[4];
    v122 = v136[5];
    v117 = v136[0];
    v118 = v136[1];
    v35 = a1[7];
    v126[6] = a1[6];
    v126[7] = v35;
    v126[8] = a1[8];
    v36 = a1[3];
    v126[2] = a1[2];
    v126[3] = v36;
    v37 = a1[5];
    v126[4] = a1[4];
    v126[5] = v37;
    v38 = a1[1];
    v126[0] = *a1;
    v126[1] = v38;
    if (sub_1E4A86648(v126) != 1)
    {
      v89 = a1[7];
      v114 = a1[6];
      v115 = v89;
      v116 = a1[8];
      v90 = a1[3];
      v110 = a1[2];
      v111 = v90;
      v91 = a1[5];
      v112 = a1[4];
      v113 = v91;
      v92 = a1[1];
      v108 = *a1;
      v109 = v92;
      sub_1E4A52D40(v145, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A52D40(v137, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
      sub_1E4A52D40(&v127, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
      v93 = _s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v117, v108.f64);
      v98[6] = v114;
      v98[7] = v115;
      v98[8] = v116;
      v98[2] = v110;
      v98[3] = v111;
      v98[4] = v112;
      v98[5] = v113;
      v98[0] = v108;
      v98[1] = v109;
      sub_1E4A49CD0(v98);
      v105 = v123;
      v106 = v124;
      v107 = v125;
      v101 = v119;
      v102 = v120;
      v103 = v121;
      v104 = v122;
      v99 = v117;
      v100 = v118;
      sub_1E4A49CD0(&v99);
      v114 = v136[6];
      v115 = v136[7];
      v116 = v136[8];
      v110 = v136[2];
      v111 = v136[3];
      v112 = v136[4];
      v113 = v136[5];
      v108 = v136[0];
      v109 = v136[1];
      sub_1E4A4DC88(&v108, &unk_1ECF8E990, &qword_1E4AB36D0);
      if (v93)
      {
        return;
      }

      goto LABEL_8;
    }

    v114 = v136[6];
    v115 = v136[7];
    v116 = v136[8];
    v110 = v136[2];
    v111 = v136[3];
    v112 = v136[4];
    v113 = v136[5];
    v108 = v136[0];
    v109 = v136[1];
    sub_1E4A52D40(v145, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A52D40(v137, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A52D40(&v127, &v99, &unk_1ECF8E990, &qword_1E4AB36D0);
    sub_1E4A49CD0(&v108);
  }

  memcpy(v126, v136, sizeof(v126));
  sub_1E4A4DC88(v126, &unk_1ECF8EA80, &qword_1E4AB3890);
LABEL_8:
  swift_beginAccess();
  v39 = *(v2 + 32);
  v42 = *(v39 + 64);
  v41 = v39 + 64;
  v40 = v42;
  v43 = 1 << *(*(v2 + 32) + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v40;
  v46 = (v43 + 63) >> 6;
  v97 = *(v2 + 32);

  v47 = 0;
  v95 = v46;
  v96 = v41;
  while (v45)
  {
    v60 = v47;
LABEL_18:
    v61 = __clz(__rbit64(v45)) | (v60 << 6);
    v62 = (*(v97 + 48) + 16 * v61);
    v63 = *v62;
    v64 = v62[1];
    v65 = *(*(v97 + 56) + 8 * v61);
    v66 = qword_1EE0424C0;

    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    v68 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v68, qword_1EE048B88);

    v69 = sub_1E4AAA0C0();
    v70 = sub_1E4AAAA20();

    if (os_log_type_enabled(v69, v70))
    {
      v94 = v67;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v126[0] = v72;
      *v71 = 136446210;
      *(v71 + 4) = sub_1E4A85938(v63, v64, v126);
      _os_log_impl(&dword_1E4A23000, v69, v70, "Updating posterEnvironmentSnapshot on %{public}s.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x1E691FE80](v72, -1, -1);
      v73 = v71;
      v67 = v94;
      MEMORY[0x1E691FE80](v73, -1, -1);
    }

    v74 = *&v67[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel];
    v75 = *(v2 + 160);
    v76 = *(v2 + 192);
    v133 = *(v2 + 176);
    v134 = v76;
    v77 = *(v2 + 192);
    v135 = *(v2 + 208);
    v78 = *(v2 + 96);
    v79 = *(v2 + 128);
    v129 = *(v2 + 112);
    v130 = v79;
    v80 = *(v2 + 128);
    v81 = *(v2 + 160);
    v131 = *(v2 + 144);
    v132 = v81;
    v82 = *(v2 + 96);
    v127 = *(v2 + 80);
    v128 = v82;
    v126[6] = v133;
    v126[7] = v77;
    v126[8] = *(v2 + 208);
    v126[2] = v129;
    v126[3] = v80;
    v126[4] = v131;
    v126[5] = v75;
    v126[0] = v127;
    v126[1] = v78;
    if (sub_1E4A86648(v126) == 1)
    {
      goto LABEL_29;
    }

    v45 &= v45 - 1;
    v136[6] = v126[6];
    v136[7] = v126[7];
    v136[8] = v126[8];
    v136[2] = v126[2];
    v136[3] = v126[3];
    v136[5] = v126[5];
    v136[4] = v126[4];
    v136[1] = v126[1];
    v136[0] = v126[0];
    v123 = v133;
    v124 = v134;
    v125 = v135;
    v119 = v129;
    v120 = v130;
    v121 = v131;
    v122 = v132;
    v117 = v127;
    v118 = v128;
    sub_1E4A49D24(&v117, &v108);

    v83 = *(*&v74 + 128);
    v113 = *(*&v74 + 112);
    v114 = v83;
    v84 = *(*&v74 + 160);
    v115 = *(*&v74 + 144);
    v116 = v84;
    v85 = *(*&v74 + 48);
    v86 = *(*&v74 + 80);
    v87 = *(*&v74 + 96);
    v110 = *(*&v74 + 64);
    v111 = v86;
    v112 = v87;
    v108 = *(*&v74 + 32);
    v109 = v85;
    v105 = v136[6];
    v106 = v136[7];
    v107 = v136[8];
    v101 = v136[2];
    v102 = v136[3];
    v103 = v136[4];
    v104 = v136[5];
    v99 = v136[0];
    v100 = v136[1];
    if (_s12WallpaperKit27WKPosterEnvironmentSnapshotV2eeoiySbAC_ACtFZ_0(&v108, v99.f64))
    {
      v48 = *(*&v74 + 48);
      v50 = *(*&v74 + 80);
      v49 = *(*&v74 + 96);
      v110 = *(*&v74 + 64);
      v111 = v50;
      v51 = *(*&v74 + 112);
      v52 = *(*&v74 + 128);
      v53 = *(*&v74 + 160);
      v115 = *(*&v74 + 144);
      v116 = v53;
      v113 = v51;
      v114 = v52;
      v112 = v49;
      v108 = *(*&v74 + 32);
      v109 = v48;
      v54 = v136[1];
      *(*&v74 + 32) = v136[0];
      v55 = v136[2];
      *(*&v74 + 80) = v136[3];
      v56 = v136[5];
      *(*&v74 + 96) = v136[4];
      v57 = v136[8];
      v58 = v136[7];
      v59 = v136[6];
      *(*&v74 + 112) = v56;
      *(*&v74 + 128) = v59;
      *(*&v74 + 144) = v58;
      *(*&v74 + 160) = v57;
      *(*&v74 + 48) = v54;
      *(*&v74 + 64) = v55;
      sub_1E4A49CD0(&v108);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v108.f64[0] = v74;
      sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
      sub_1E4AAA050();
      sub_1E4A4DC88(&v127, &unk_1ECF8E990, &qword_1E4AB36D0);
    }

    v47 = v60;
    v46 = v95;
    v41 = v96;
  }

  while (1)
  {
    v60 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v60 >= v46)
    {

      return;
    }

    v45 = *(v41 + 8 * v60);
    ++v47;
    if (v45)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id sub_1E4A8A28C(id result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 224);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    swift_getKeyPath();
    sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);

    sub_1E4AAA060();

    v6 = *(v5 + 16);

    if (v6)
    {
      v7 = [*(v6 + 16) identifierString];
      v8 = sub_1E4AAA8A0();
      v10 = v9;

      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = *(v3 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
      swift_getKeyPath();
      sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
      sub_1E4AAA060();

      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v13 + 16);

        v15 = [v14 identifierString];
        v3 = sub_1E4AAA8A0();
        v11 = v16;

        if (!v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v3 = 0;
        v11 = 0;
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_9;
    }
  }

  v8 = 0;
  v10 = 0;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = 0;
  if (!v10)
  {
LABEL_14:
    if (!v11)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_9:
  if (!v11)
  {
LABEL_15:

    return [*(v2 + 16) updateActions];
  }

  if (v8 == v3 && v10 == v11)
  {
  }

  v17 = sub_1E4AAADA0();

  if ((v17 & 1) == 0)
  {
    return [*(v2 + 16) updateActions];
  }

  return result;
}

void sub_1E4A8A50C(uint64_t a1, uint64_t a2)
{
  v58 = sub_1E4AA9FE0();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA60, &unk_1E4AB33A0);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52 - v17;
  v19 = v2[29];
  v55 = v2;
  if (v19)
  {
    v52 = v16;
    v20 = a2;
    v21 = a1;
    v22 = v2[30];
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 8);
    v25 = *(v24 + 40);
    swift_unknownObjectRetain();
    v25(ObjectType, v24);
    a1 = v21;
    v26 = v58;
    a2 = v20;
    v16 = v52;
    swift_unknownObjectRelease();
    v27 = *(v5 + 56);
    v27(v18, 0, 1, v26);
  }

  else
  {
    v27 = *(v5 + 56);
    v27(&v52 - v17, 1, 1, v58);
  }

  v28 = v5;
  if (a1)
  {
    v29 = swift_getObjectType();
    (*(*(a2 + 8) + 40))(v29);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v32 = v57;
  v31 = v58;
  v27(v16, v30, 1, v58);
  v33 = *(v56 + 48);
  sub_1E4A52D40(v18, v32, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  sub_1E4A52D40(v16, v32 + v33, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  v34 = *(v28 + 48);
  if (v34(v32, 1, v31) == 1)
  {
    sub_1E4A4DC88(v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v18, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v34(v32 + v33, 1, v58) == 1)
    {
      sub_1E4A4DC88(v32, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return;
    }
  }

  else
  {
    v35 = v54;
    sub_1E4A52D40(v32, v54, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    if (v34(v32 + v33, 1, v58) != 1)
    {
      v46 = v32 + v33;
      v47 = v53;
      v48 = v58;
      (*(v28 + 32))(v53, v46, v58);
      sub_1E4A93000(&qword_1EE043978, MEMORY[0x1E6968FB0]);
      v49 = v35;
      v50 = sub_1E4AAA860();
      v51 = *(v28 + 8);
      v51(v47, v48);
      sub_1E4A4DC88(v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      sub_1E4A4DC88(v18, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v51(v49, v48);
      sub_1E4A4DC88(v32, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      v36 = v55;
      if (v50)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_1E4A4DC88(v16, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    sub_1E4A4DC88(v18, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    (*(v28 + 8))(v35, v58);
  }

  sub_1E4A4DC88(v32, &qword_1ECF8EA60, &unk_1E4AB33A0);
  v36 = v55;
LABEL_13:
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v37 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v37, qword_1EE048B88);

  v38 = sub_1E4AAA0C0();
  v39 = sub_1E4AAAA20();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = v41;
    *v40 = 136446466;
    v42 = *v36;
    v43 = sub_1E4AAAE90();
    v45 = sub_1E4A85938(v43, v44, &v59);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    *(v40 + 14) = sub_1E4A85938(0xD000000000000018, 0x80000001E4AB9AA0, &v59);
    _os_log_impl(&dword_1E4A23000, v38, v39, "(%{public}s.%{public}s): sourceAssetDirectory differ, loading contents from environment…", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v41, -1, -1);
    MEMORY[0x1E691FE80](v40, -1, -1);
  }

  sub_1E4A8ABAC();
}

void sub_1E4A8ABAC()
{
  v1 = v0;
  v2 = sub_1E4AAA030();
  v3 = *(v2 - 1);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0424C0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v7 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v7, qword_1EE048B88);

    v8 = sub_1E4AAA0C0();
    v9 = sub_1E4AAAA20();

    v10 = os_log_type_enabled(v8, v9);
    v122 = v2;
    v123 = v1;
    v120 = v6;
    v121 = v3;
    if (v10)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v142 = v12;
      *v11 = 136446466;
      v13 = *v1;
      v14 = sub_1E4AAAE90();
      v16 = sub_1E4A85938(v14, v15, &v142);

      *(v11 + 4) = v16;
      v1 = v123;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &v142);
      _os_log_impl(&dword_1E4A23000, v8, v9, "Start (%{public}s.%{public}s)…", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691FE80](v12, -1, -1);
      MEMORY[0x1E691FE80](v11, -1, -1);
    }

    v17 = v1[29];
    if (!v17)
    {
      v22 = sub_1E4AAA0C0();
      v23 = sub_1E4AAAA20();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1E4A23000, v22, v23, "No poster environment set, bailing.", v24, 2u);
        MEMORY[0x1E691FE80](v24, -1, -1);
      }

      goto LABEL_10;
    }

    v18 = v1[30];
    v19 = v1[29];
    ObjectType = swift_getObjectType();
    v21 = *(v18 + 1);
    swift_unknownObjectRetain();
    sub_1E4A5FD94(ObjectType, v21, &v142);
    v26 = v142;
    v25 = v143;
    v27 = v144;
    v28 = v1[8];
    v1[8] = v143;
    sub_1E4A895D4(v28);
    *(v1 + 248) = [*(v26 + 2) disableAdaptiveTime];
    [*(v26 + 2) maximumAdaptiveTimeMultiplier];
    v30 = v29;
    v31 = 0;
    if (v30 != 2.22507386e-308)
    {
      [*(v26 + 2) maximumAdaptiveTimeMultiplier];
    }

    v1[32] = v31;
    *(v1 + 264) = v30 == 2.22507386e-308;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v32 = sub_1E4AAA0C0();
    v33 = sub_1E4AAAA20();
    v34 = os_log_type_enabled(v32, v33);
    v119 = v26;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v116 = v25;
      v37 = v36;
      v142 = v36;
      *v35 = 136446466;

      v38 = sub_1E4AAA820();
      v40 = v39;

      v41 = sub_1E4A85938(v38, v40, &v142);
      v1 = v123;

      *(v35 + 4) = v41;
      *(v35 + 12) = 2050;

      *(v35 + 14) = v116;

      _os_log_impl(&dword_1E4A23000, v32, v33, "Loaded source contents: '%{public}s' + '%{public}ld'.", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E691FE80](v37, -1, -1);
      v42 = v35;
      v26 = v119;
      MEMORY[0x1E691FE80](v42, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v43 = 0xD00000000000002ALL;
    v135 = 0xD00000000000001ELL;
    v136 = 0x80000001E4AB95B0;
    sub_1E4AAAB90();
    v44 = *(v27 + 16);
    v117 = v27;
    v118 = v17;
    if (!v44)
    {
      goto LABEL_28;
    }

    v45 = sub_1E4A8F330(&v142);
    if (v46)
    {
      sub_1E4A479C0(*(v27 + 56) + 32 * v45, &v139);
      sub_1E4A60E2C(&v142);
      if (swift_dynamicCast())
      {
        v47 = sub_1E4A701C4();
        if (v47 != 2)
        {
          v48 = v47;
          v49 = [objc_allocWithZone(MEMORY[0x1E69B7DE8]) init];
          v50 = WKWallpaperLocationHomeScreen;
          if ((v48 & 1) == 0)
          {
            v50 = WKWallpaperLocationCoverSheet;
          }

          v51 = *v50;
          sub_1E4A7760C(v51, &v139);

          if (v140)
          {
            sub_1E4A2732C(&v139, &v142);
            v52 = v145;
            v53 = v146;
            __swift_project_boxed_opaque_existential_1(&v142, v145);
            v54 = sub_1E4A7E6DC(v52, v53);
            *&v139 = 0x646574617267694DLL;
            *(&v139 + 1) = 0xEB00000000203A20;
            MEMORY[0x1E691ECA0](v54);

            v55 = sub_1E4AAA870();

            WKSetApplicationSpecificInformation(v55);

            v56 = v120;
            sub_1E4AAA020();
            sub_1E4AA9FF0();
            (v121[1])(v56, v122);
            v57 = sub_1E4AAA870();

            v58 = v145;
            v59 = v146;
            __swift_project_boxed_opaque_existential_1(&v142, v145);
            (*(v59 + 56))(v58, v59);
            sub_1E4A4D9A0(&v142, &v139);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA68, &unk_1E4AB3840);
            v60 = swift_allocObject();
            sub_1E4A4D9A0(&v142, v60 + 32);
            sub_1E4A4D9A0(&v139, &v132);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
            if (!swift_dynamicCast())
            {
              goto LABEL_55;
            }

            sub_1E4A2732C(&v129, &v135);
            v126 = MEMORY[0x1E69E7CC0];
            sub_1E4A4D9A0(v60 + 32, &v132);
            sub_1E4A4D9A0(&v132, v127);
            if (swift_dynamicCast())
            {
              sub_1E4A2732C(v124, &v129);
              v61 = *(&v130 + 1);
              v62 = v131;
              __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
              (*(v62 + 8))(v61, v62);
              __swift_destroy_boxed_opaque_existential_1Tm(&v132);
              v63 = __swift_destroy_boxed_opaque_existential_1Tm(&v129);
              MEMORY[0x1E691ED00](v63);
              if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v110 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1E4AAA960();
              }

              sub_1E4AAA970();
              swift_setDeallocating();
              __swift_destroy_boxed_opaque_existential_1Tm((v60 + 32));
              swift_deallocClassInstance();
              v64 = v137;
              v65 = v138;
              __swift_project_boxed_opaque_existential_1(&v135, v137);
              v66 = (*(v65 + 8))(v64, v65);
              v67 = objc_allocWithZone(WKWallpaperRepresentingCollection);
              v68 = sub_1E4AAA870();

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
              v69 = sub_1E4AAA940();

              LOWORD(v115) = 0;
              v70 = [v67 initWithWallpaperCollectionIdentifier:v57 displayName:v68 previewWallpaperRepresenting:v66 wallpapersShareBaseAppearance:0 hiddenFromPicker:0 depthEffectDisabled:1 motionEffectsDisabled:v115 disableRotation:v69 wallpaperRepresentingCollection:0 downloadManager:?];

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1Tm(&v139);
              type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
              v71 = swift_allocObject();
              *(v71 + 16) = v70;
              __swift_destroy_boxed_opaque_existential_1Tm(&v135);
              v1 = v123;
              v72 = v123[7];
              v123[7] = v71;
              *&v139 = v72;
              sub_1E4A887C4(&v139);

              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_1Tm(&v142);
              goto LABEL_10;
            }

            v125 = 0;
            memset(v124, 0, sizeof(v124));
            sub_1E4A4DC88(v124, &unk_1ECF8E550, &qword_1E4AB3ED0);
            *&v129 = 0;
            *(&v129 + 1) = 0xE000000000000000;
            sub_1E4AAABC0();
            MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
            MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
            MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
            __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
            swift_getDynamicType();
            v114 = sub_1E4AAAE90();
            MEMORY[0x1E691ECA0](v114);

            MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
            while (1)
            {
LABEL_54:
              sub_1E4AAACB0();
              __break(1u);
LABEL_55:
              v131 = 0;
              v129 = 0u;
              v130 = 0u;
              sub_1E4A4DC88(&v129, &unk_1ECF8E550, &qword_1E4AB3ED0);
              v135 = 0;
              v136 = 0xE000000000000000;
              sub_1E4AAABC0();
              MEMORY[0x1E691ECA0](v43 + 25, 0x80000001E4AB9E10);
              MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
              MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
              __swift_project_boxed_opaque_existential_1(&v139, v140);
              swift_getDynamicType();
              v113 = sub_1E4AAAE90();
              MEMORY[0x1E691ECA0](v113);

              MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
            }
          }

          sub_1E4A4DC88(&v139, &qword_1ECF8E5A8, &qword_1E4AB12B0);
          if (qword_1ECF8DD10 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v7, qword_1ECF92330);
          v106 = sub_1E4AAA0C0();
          v107 = sub_1E4AAAA00();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&dword_1E4A23000, v106, v107, "Migration failed (see previous fault log for failure case).", v108, 2u);
            MEMORY[0x1E691FE80](v108, -1, -1);
          }

          swift_unknownObjectRelease();

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_28:
      sub_1E4A60E2C(&v142);
    }

    v73 = [*(v26 + 2) identifierString];
    v74 = sub_1E4AAA8A0();
    v75 = v26;
    v77 = v76;

    v78 = v1[6];
    v1[5] = v74;
    v1[6] = v77;

    sub_1E4A87AC0(v75);
    v79 = sub_1E4AAA870();

    WKSetApplicationSpecificInformation(v79);

    v80 = [objc_opt_self() defaultManager];
    type metadata accessor for WKWallpaperRepresentingCollectionsManager.ImplementationWrapper();
    v116 = swift_allocObject();
    *(v116 + 16) = v80;
    v43 = &selRef_currentDevice;
    if (![v80 numberOfWallpaperCollections])
    {
      break;
    }

    v81 = 0;
    v3 = &unk_1E8767000;
    while (1)
    {
      v2 = [v80 wallpaperCollectionAtIndex_];
      type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
      v6 = swift_allocObject();
      *(v6 + 2) = v2;
      if (v81 >= [v80 numberOfWallpaperCollections])
      {
        break;
      }

      if (!v1[6])
      {
        __break(1u);
        goto LABEL_52;
      }

      v82 = v1[5];
      v83 = *(v6 + 2);

      v84 = v83;
      v85 = sub_1E4AAA870();

      v86 = [v84 containsWallpaperRepresentingWithIdentifier_];

      if (v86)
      {

        v1 = v123;
        v105 = v123[7];
        v123[7] = v6;

        v142 = v105;
        sub_1E4A887C4(&v142);

        goto LABEL_43;
      }

      ++v81;

      v87 = [v80 numberOfWallpaperCollections];
      v1 = v123;
      if (v81 == v87)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_35:

  v88 = v120;
  sub_1E4AAA020();
  sub_1E4AA9FF0();
  (v121[1])(v88, v122);
  v89 = sub_1E4AAA870();

  v90 = v119;
  v1 = [*(v119 + 2) name];
  if (!v1)
  {
    sub_1E4AAA8A0();
    v1 = sub_1E4AAA870();
  }

  v145 = &type metadata for WKWallpaperBundle;
  v91 = sub_1E4A50754();
  v146 = v91;
  v142 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA68, &unk_1E4AB3840);
  v92 = swift_allocObject();
  v92[4] = v90;
  v93 = v92 + 4;
  v92[7] = &type metadata for WKWallpaperBundle;
  v92[8] = v91;
  sub_1E4A4D9A0(&v142, &v135);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E540, &unk_1E4AB3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EB40, qword_1E4AB0E10);
  if (!swift_dynamicCast())
  {
LABEL_52:

    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    sub_1E4A4DC88(&v132, &unk_1ECF8E550, &qword_1E4AB3ED0);
    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    sub_1E4AAABC0();
    MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
    MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
    MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(&v142, v145);
    swift_getDynamicType();
    v111 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v111);

    MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
    goto LABEL_54;
  }

  sub_1E4A2732C(&v132, &v139);
  *&v124[0] = MEMORY[0x1E69E7CC0];
  sub_1E4A4D9A0(v93, &v135);
  sub_1E4A4D9A0(&v135, &v129);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v128 = 0;
    memset(v127, 0, sizeof(v127));
    sub_1E4A4DC88(v127, &unk_1ECF8E550, &qword_1E4AB3ED0);
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;
    sub_1E4AAABC0();
    MEMORY[0x1E691ECA0](0xD000000000000043, 0x80000001E4AB9E10);
    MEMORY[0x1E691ECA0](0xD00000000000002ALL, 0x80000001E4AB9E60);
    MEMORY[0x1E691ECA0](0x20646E756F662820, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(&v135, v137);
    swift_getDynamicType();
    v112 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v112);

    MEMORY[0x1E691ECA0](8489, 0xE200000000000000);
    goto LABEL_54;
  }

  sub_1E4A2732C(v127, &v132);
  v94 = *(&v133 + 1);
  v95 = v134;
  __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
  (*(v95 + 8))(v94, v95);
  __swift_destroy_boxed_opaque_existential_1Tm(&v135);
  v96 = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
  MEMORY[0x1E691ED00](v96);
  if (*((*&v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v124[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v109 = *((*&v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E4AAA960();
  }

  sub_1E4AAA970();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  swift_deallocClassInstance();
  v97 = v140;
  v98 = v141;
  __swift_project_boxed_opaque_existential_1(&v139, v140);
  v99 = (*(v98 + 8))(v97, v98);
  v100 = objc_allocWithZone(WKWallpaperRepresentingCollection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
  v101 = sub_1E4AAA940();

  LOWORD(v115) = 0;
  v102 = [v100 initWithWallpaperCollectionIdentifier:v89 displayName:v1 previewWallpaperRepresenting:v99 wallpapersShareBaseAppearance:0 hiddenFromPicker:0 depthEffectDisabled:1 motionEffectsDisabled:v115 disableRotation:v101 wallpaperRepresentingCollection:0 downloadManager:?];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(&v142);
  type metadata accessor for WKWallpaperRepresentingCollection.ImplementationWrapper();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  __swift_destroy_boxed_opaque_existential_1Tm(&v139);
  v1 = v123;
  v104 = v123[7];
  v123[7] = v103;
  v142 = v104;
  sub_1E4A887C4(&v142);

LABEL_43:
  swift_unknownObjectRelease();
LABEL_10:
  sub_1E4A8C3B0(v1);
}

uint64_t WKWallpaperPosterEditorController.__allocating_init(editor:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WKWallpaperPosterEditorController.init(editor:)(a1);
  return v2;
}

uint64_t WKWallpaperPosterEditorController.init(editor:)(uint64_t a1)
{
  v3 = sub_1E4AAA030();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = sub_1E4A9070C(MEMORY[0x1E69E7CC0]);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  sub_1E4A90810(v23);
  v9 = v23[7];
  *(v1 + 176) = v23[6];
  *(v1 + 192) = v9;
  *(v1 + 208) = v23[8];
  v10 = v23[3];
  *(v1 + 112) = v23[2];
  *(v1 + 128) = v10;
  v11 = v23[5];
  *(v1 + 144) = v23[4];
  *(v1 + 160) = v11;
  v12 = v23[1];
  *(v1 + 80) = v23[0];
  *(v1 + 96) = v12;
  *(v1 + 256) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 224) = 0;
  *(v1 + 248) = 0;
  *(v1 + 264) = 1;
  *(v1 + 16) = a1;
  *(v1 + 64) = 0;
  v13 = type metadata accessor for WKDynamicRotationManager();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v17 = v16 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_rotationState;
  sub_1E4AAA020();
  (*(v4 + 32))(v17, v7, v3);
  v18 = type metadata accessor for WKPosterDynamicRotationState();
  *(v17 + v18[5]) = 0;
  *(v17 + v18[6]) = 0x3FF0000000000000;
  *(v17 + v18[7]) = 0;
  *(v17 + v18[8]) = 0;
  *(v16 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_displayLink) = 0;
  v19 = OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_animationState;
  v20 = type metadata accessor for WKPosterDynamicRotationAnimationState();
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  *(v16 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v21 = *(v1 + 24);
  *(v1 + 24) = v16;

  return v1;
}

void sub_1E4A8C3B0(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB97A0, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 192);
  v12[6] = *(v0 + 176);
  v12[7] = v6;
  v12[8] = *(v0 + 208);
  v7 = *(v0 + 128);
  v12[2] = *(v0 + 112);
  v12[3] = v7;
  v8 = *(v0 + 160);
  v12[4] = *(v0 + 144);
  v12[5] = v8;
  v9 = *(v0 + 96);
  v12[0] = *(v0 + 80);
  v12[1] = v9;
  sub_1E4A4DC88(v12, &unk_1ECF8E990, &qword_1E4AB36D0);

  v10 = *(v0 + 232);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WKWallpaperPosterEditorController.__deallocating_deinit()
{
  WKWallpaperPosterEditorController.deinit();

  return swift_deallocClassInstance();
}

void WKWallpaperPosterEditorController.editor(_:didInitialize:with:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v9 = a4[7];
  v68 = a4[6];
  v69 = v9;
  v70 = a4[8];
  v10 = a4[3];
  v64 = a4[2];
  v65 = v10;
  v11 = a4[5];
  v66 = a4[4];
  v67 = v11;
  v12 = a4[1];
  v62 = *a4;
  v63 = v12;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v13, qword_1EE048B88);

  v14 = sub_1E4AAA0C0();
  v15 = sub_1E4AAAA20();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v61[0] = v17;
    *v16 = 136446466;
    v18 = *v5;
    v19 = sub_1E4AAAE90();
    v21 = sub_1E4A85938(v19, v20, v61);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB9920, v61);
    _os_log_impl(&dword_1E4A23000, v14, v15, "Start (%{public}s.%{public}s)…", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v17, -1, -1);
    MEMORY[0x1E691FE80](v16, -1, -1);
  }

  v49 = v68;
  v50 = v69;
  v51 = v70;
  v45 = v64;
  v46 = v65;
  v47 = v66;
  v48 = v67;
  v43 = v62;
  v44 = v63;
  nullsub_1(&v43);
  v22 = *(v5 + 160);
  v23 = *(v5 + 192);
  v58 = *(v5 + 176);
  v59 = v23;
  v24 = *(v5 + 192);
  v60 = *(v5 + 208);
  v25 = *(v5 + 96);
  v26 = *(v5 + 128);
  v54 = *(v5 + 112);
  v55 = v26;
  v27 = *(v5 + 128);
  v28 = *(v5 + 160);
  v56 = *(v5 + 144);
  v57 = v28;
  v29 = *(v5 + 96);
  v52 = *(v5 + 80);
  v53 = v29;
  v61[6] = v58;
  v61[7] = v24;
  v61[8] = *(v5 + 208);
  v61[2] = v54;
  v61[3] = v27;
  v61[4] = v56;
  v61[5] = v22;
  v61[0] = v52;
  v61[1] = v25;
  v30 = v48;
  *(v5 + 144) = v47;
  *(v5 + 160) = v30;
  v31 = v50;
  *(v5 + 176) = v49;
  *(v5 + 192) = v31;
  *(v5 + 208) = v51;
  v32 = v46;
  *(v5 + 112) = v45;
  *(v5 + 128) = v32;
  v33 = v44;
  *(v5 + 80) = v43;
  *(v5 + 96) = v33;
  sub_1E4A49D24(&v62, v42);
  sub_1E4A52D40(&v52, v42, &unk_1ECF8E990, &qword_1E4AB36D0);
  sub_1E4A4DC88(v61, &unk_1ECF8E990, &qword_1E4AB36D0);
  v42[6] = v58;
  v42[7] = v59;
  v42[8] = v60;
  v42[2] = v54;
  v42[3] = v55;
  v42[4] = v56;
  v42[5] = v57;
  v42[0] = v52;
  v42[1] = v53;
  sub_1E4A898E4(v42);
  sub_1E4A4DC88(&v52, &unk_1ECF8E990, &qword_1E4AB36D0);
  v35 = *(v5 + 232);
  v34 = *(v5 + 240);
  *(v5 + 232) = a2;
  *(v5 + 240) = a3;
  swift_unknownObjectRetain();
  sub_1E4A8A50C(v35, v34);
  swift_unknownObjectRelease();
  v36 = *(v5 + 24);
  if (v36)
  {
    *(v36 + OBJC_IVAR____TtC12WallpaperKit24WKDynamicRotationManager_delegate + 8) = &off_1F5E9BF68;
    swift_unknownObjectWeakAssign();
    if (*(v5 + 24))
    {
      ObjectType = swift_getObjectType();
      v38 = *(a3 + 8);
      v39 = *(v38 + 8);

      v40 = v39(ObjectType, v38);
      sub_1E4A6C954(v40);
    }
  }

  if (*(v5 + 248))
  {
    v41 = 3;
  }

  else
  {
    v41 = 1;
  }

  [a1 wk:v41 setAdaptiveTimeMode:?];
  sub_1E4A8CA38(v5);
}

void sub_1E4A8CA38(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001DLL, 0x80000001E4AB9920, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8CC14(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9DF0, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8CDE0(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0x6F6628736B6F6F6CLL, 0xEB00000000293A72, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

id sub_1E4A8CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1E4A8D030(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB9D40, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.trailingMenuElements(for:)(void *a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446466;
    v9 = *v2;
    v10 = sub_1E4AAAE90();
    v12 = sub_1E4A85938(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD00000000000001ALL, 0x80000001E4AB9940, &v18);
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v13 = v2[28];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    swift_getKeyPath();
    v18 = v14;
    sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    v15 = v13;
    sub_1E4AAA060();

    v16 = *(v14 + 16);
    if (v16 && ([*(v16 + 16) isAppearanceAware] & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1E4AAFB00;
      *(v13 + 32) = [a1 appearanceMenu];
    }

    else
    {

      v13 = 0;
    }
  }

  sub_1E4A8D4D0(v2);
  return v13;
}

void sub_1E4A8D4D0(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD00000000000001ALL, 0x80000001E4AB9940, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.leadingMenuElements(for:)(void *a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446466;
    v9 = *v2;
    v10 = sub_1E4AAAE90();
    v12 = sub_1E4A85938(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9960, &v20);
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v13 = v2[28];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel);
    swift_getKeyPath();
    v20 = v14;
    sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
    v15 = v13;
    sub_1E4AAA060();

    v16 = *(v14 + 16);

    v18 = sub_1E4A87CD0(v17);

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1E4AAFB00;
      *(v13 + 32) = [a1 depthEffectMenu];
    }

    else
    {

      v13 = 0;
    }
  }

  sub_1E4A8D974(v2);
  return v13;
}

void sub_1E4A8D974(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9960, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8DB40(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000023, 0x80000001E4AB9CF0, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8DD10(uint64_t *a1, uint64_t a2)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v5 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446722;
    v8 = *a1;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, &v13);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_1E4A85938(0xD00000000000002FLL, 0x80000001E4AB9CC0, &v13);
    *(v6 + 22) = 2048;
    *(v6 + 24) = a2;
    _os_log_impl(&dword_1E4A23000, oslog, v5, "…Complete (%{public}s.%{public}s) userInterfaceStyle: '%ld'", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v7, -1, -1);
    MEMORY[0x1E691FE80](v6, -1, -1);
  }
}

void WKWallpaperPosterEditorController.editor(_:populateViews:for:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v8, qword_1EE048B88);

  swift_unknownObjectRetain();
  v9 = sub_1E4AAA0C0();
  v10 = sub_1E4AAAA20();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v55 = a1;
    v56[0] = swift_slowAlloc();
    v12 = v56[0];
    *v11 = 136446722;
    v13 = *v4;
    v14 = sub_1E4AAAE90();
    v54 = a2;
    v16 = sub_1E4A85938(v14, v15, v56);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1E4A85938(0xD00000000000001CLL, 0x80000001E4AB9980, v56);
    *(v11 + 22) = 2082;
    v17 = [a3 identifier];
    v18 = sub_1E4AAA8A0();
    v20 = v19;

    v21 = v18;
    a2 = v54;
    v22 = sub_1E4A85938(v21, v20, v56);

    *(v11 + 24) = v22;
    _os_log_impl(&dword_1E4A23000, v9, v10, "Start (%{public}s.%{public}s) look: '%{public}s'…", v11, 0x20u);
    swift_arrayDestroy();
    v23 = v12;
    a1 = v55;
    MEMORY[0x1E691FE80](v23, -1, -1);
    MEMORY[0x1E691FE80](v11, -1, -1);
  }

  v24 = [a3 identifier];
  v25 = sub_1E4AAA8A0();
  v27 = v26;

  swift_beginAccess();
  v28 = *(v4 + 32);
  if (!*(v28 + 16))
  {

LABEL_13:
    swift_endAccess();
    swift_unknownObjectRetain();
    v33 = sub_1E4AAA0C0();
    v46 = sub_1E4AAAA20();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v33, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56[0] = v48;
      *v47 = 136446210;
      v49 = [a3 &selRef_set_catalogDownloadResult_];
      v50 = sub_1E4AAA8A0();
      v52 = v51;

      v53 = sub_1E4A85938(v50, v52, v56);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_1E4A23000, v33, v46, "No 'wallpaperPosterEditorLookItem' found for look: '%{public}s'", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1E691FE80](v48, -1, -1);
      MEMORY[0x1E691FE80](v47, -1, -1);
    }

    goto LABEL_15;
  }

  v29 = sub_1E4A55B0C(v25, v27);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_13;
  }

  v32 = *(*(v28 + 56) + 8 * v29);
  swift_endAccess();
  v33 = v32;
  v34 = swift_unknownObjectRetain();
  sub_1E4A5BDB4(v34);
  v35 = OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views;
  v36 = *(&v33->isa + OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_views);
  if (!v36)
  {
    __break(1u);
    goto LABEL_17;
  }

  v37 = [v36 backgroundView];
  [v37 setOverrideUserInterfaceStyle_];

  v38 = *(&v33->isa + v35);
  if (!v38)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = [v38 foregroundView];
  [v39 setOverrideUserInterfaceStyle_];

  v40 = *(&v33->isa + v35);
  if (v40)
  {
    v41 = [v40 floatingView];
    [v41 setOverrideUserInterfaceStyle_];

    if ((*(v4 + 264) & 1) == 0)
    {
      v42 = *(v4 + 256);
      v43 = [a2 backgroundView];
      [v43 bounds];
      v45 = v44;

      [a1 wk:v42 * v45 setMaximumAdaptiveTimeHeight:?];
    }

LABEL_15:

    sub_1E4A8E3E4(v4, a3);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1E4A8E3E4(uint64_t *a1, void *a2)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  swift_unknownObjectRetain();
  oslog = sub_1E4AAA0C0();
  v5 = sub_1E4AAAA20();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446722;
    v8 = *a1;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_1E4A85938(0xD00000000000001CLL, 0x80000001E4AB9980, &v18);
    *(v6 + 22) = 2082;
    v12 = [a2 identifier];
    v13 = sub_1E4AAA8A0();
    v15 = v14;

    v16 = sub_1E4A85938(v13, v15, &v18);

    *(v6 + 24) = v16;
    _os_log_impl(&dword_1E4A23000, oslog, v5, "…Complete (%{public}s.%{public}s) look: '%{public}s'", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v7, -1, -1);
    MEMORY[0x1E691FE80](v6, -1, -1);
  }
}

void sub_1E4A8E618(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000020, 0x80000001E4AB9C90, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8E7E4(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9C70, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t WKWallpaperPosterEditorController.editorFinalize(_:with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E4A5ECA0;

  return sub_1E4A91FC4();
}

void sub_1E4A8EA4C(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9C50, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

void sub_1E4A8EC18(uint64_t *a1)
{
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  oslog = sub_1E4AAA0C0();
  v3 = sub_1E4AAAA20();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446466;
    v6 = *a1;
    v7 = sub_1E4AAAE90();
    v9 = sub_1E4A85938(v7, v8, &v11);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9BF0, &v11);
    _os_log_impl(&dword_1E4A23000, oslog, v3, "…Complete (%{public}s.%{public}s)", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v5, -1, -1);
    MEMORY[0x1E691FE80](v4, -1, -1);
  }
}

uint64_t sub_1E4A8EE24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E4A5ED9C;

  return sub_1E4A91FC4();
}

id sub_1E4A8F0B0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1E4AAA870();

  return v6;
}

uint64_t sub_1E4A8F118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E4AAA8A0();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

uint64_t sub_1E4A8F1F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1E4A8F224(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E4AAAAC0();
  return sub_1E4A8F59C(a1, v5, &qword_1EE042150, 0x1E6979398);
}

unint64_t sub_1E4A8F274(double *a1)
{
  v3 = *(v1 + 40);
  sub_1E4AAAE00();
  sub_1E4A763B8();
  v4 = sub_1E4AAAE40();

  return sub_1E4A8F470(a1, v4);
}

unint64_t sub_1E4A8F2E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E4AAAAC0();
  return sub_1E4A8F59C(a1, v5, &unk_1EE0421C0, 0x1E69DD1B8);
}

unint64_t sub_1E4A8F330(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E4AAAB70();

  return sub_1E4A8F668(a1, v5);
}

unint64_t sub_1E4A8F374(unsigned __int8 *a1)
{
  v3 = *(v1 + 40);
  sub_1E4AAAE00();
  sub_1E4A72838();
  v4 = sub_1E4AAAE40();

  return sub_1E4A8F730(a1, v4);
}

unint64_t sub_1E4A8F3E0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E4AAA8A0();
  sub_1E4AAAE00();
  sub_1E4AAA8C0();
  v4 = sub_1E4AAAE40();

  return sub_1E4A8FC6C(a1, v4);
}

unint64_t sub_1E4A8F470(double *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    v19 = a1[6];
    v20 = a1[5];
    v17 = a1[8];
    v18 = a1[7];
    do
    {
      v11 = *(v2 + 48) + 72 * v4;
      if (*v11 == *&v6)
      {
        v12 = *(v11 + 40);
        v13 = *(v11 + 48);
        v14 = *(v11 + 56);
        v15 = *(v11 + 64);
        v22.origin.x = v7;
        v22.origin.y = v8;
        v22.size.width = v9;
        v22.size.height = v10;
        if (CGRectEqualToRect(*(v11 + 8), v22))
        {
          v21.origin.x = v12;
          v21.origin.y = v13;
          v21.size.width = v14;
          v21.size.height = v15;
          v23.origin.y = v19;
          v23.origin.x = v20;
          v23.size.height = v17;
          v23.size.width = v18;
          if (CGRectEqualToRect(v21, v23))
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4A8F59C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1E4A47A2C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1E4AAAAD0();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1E4A8F668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E4A4DC2C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E691EF50](v9, a1);
      sub_1E4A60E2C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4A8F730(unsigned __int8 *a1, uint64_t a2)
{
  v54 = sub_1E4AAA1C0();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA30, &qword_1E4AB1F78);
  v11 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v39 - v12;
  v49 = type metadata accessor for WKAnimationPackageLayerState();
  v14 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v2;
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  if ((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = v2 + 64;
    v50 = ~v18;
    v52 = *a1;
    v45 = v2 + 64;
    v46 = (v5 + 48);
    v40 = (v5 + 32);
    v43 = (v5 + 8);
    v51 = *(v15 + 72);
    v48 = a1;
    v21 = v44;
    do
    {
      sub_1E4A68864(*(v53 + 48) + v51 * v19, v17);
      if (*v17 == v52)
      {
        v22 = *(v49 + 20);
        v23 = *(v47 + 48);
        sub_1E4A52D40(&v17[v22], v13, &qword_1ECF8E678, qword_1E4AB1DF0);
        sub_1E4A52D40(&v48[v22], &v13[v23], &qword_1ECF8E678, qword_1E4AB1DF0);
        v24 = *v46;
        if ((*v46)(v13, 1, v54) == 1)
        {
          if (v24(&v13[v23], 1, v54) != 1)
          {
            sub_1E4A688C8(v17);
            goto LABEL_12;
          }

          sub_1E4A4DC88(v13, &qword_1ECF8E678, qword_1E4AB1DF0);
        }

        else
        {
          v25 = v13;
          sub_1E4A52D40(v13, v21, &qword_1ECF8E678, qword_1E4AB1DF0);
          if (v24(&v13[v23], 1, v54) == 1)
          {
            sub_1E4A688C8(v17);
            (*v43)(v21, v54);
            v20 = v45;
LABEL_12:
            sub_1E4A4DC88(v13, &unk_1ECF8EA30, &qword_1E4AB1F78);
            goto LABEL_4;
          }

          v26 = v41;
          v27 = v54;
          (*v40)(v41, v25 + v23, v54);
          sub_1E4A93000(&qword_1EE043A20, MEMORY[0x1E697DBD0]);
          v42 = sub_1E4AAA860();
          v28 = *v43;
          v29 = v26;
          v30 = v44;
          (*v43)(v29, v27);
          v21 = v30;
          v28(v30, v27);
          sub_1E4A4DC88(v25, &qword_1ECF8E678, qword_1E4AB1DF0);
          v13 = v25;
          if ((v42 & 1) == 0)
          {
            sub_1E4A688C8(v17);
            v20 = v45;
            goto LABEL_4;
          }
        }

        v31 = v49;
        v32 = &v17[*(v49 + 24)];
        v33 = *v32;
        v34 = v32[8];
        sub_1E4A688C8(v17);
        v35 = &v48[*(v31 + 24)];
        v36 = v35[8];
        if (v34 == 255)
        {
          v20 = v45;
          if (v36 == 255)
          {
            return v19;
          }
        }

        else
        {
          v20 = v45;
          if (v36 != 255)
          {
            v37 = *v35;
            if (v34)
            {
              if ((v36 & 1) != 0 && v33 == v37)
              {
                return v19;
              }
            }

            else if ((v36 & 1) == 0 && ((v37 ^ v33) & 1) == 0)
            {
              return v19;
            }
          }
        }
      }

      else
      {
        sub_1E4A688C8(v17);
      }

LABEL_4:
      v19 = (v19 + 1) & v50;
    }

    while (((*(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

unint64_t sub_1E4A8FC6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1E4AAA8A0();
      v9 = v8;
      if (v7 == sub_1E4AAA8A0() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E4AAADA0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1E4A8FD70(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1E4A8FE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA90, &qword_1E4AB38C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E698, &qword_1E4AB17E0);
    v8 = sub_1E4AAAD00();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E4A52D40(v10, v6, &qword_1ECF8EA90, &qword_1E4AB38C8);
      result = sub_1E4A8F374(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for WKAnimationPackageLayerState();
      result = sub_1E4A68988(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A8FFD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA40, &unk_1E4AB3820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E680, &unk_1E4AB17D0);
    v8 = sub_1E4AAAD00();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E4A52D40(v10, v6, &qword_1ECF8EA40, &unk_1E4AB3820);
      result = sub_1E4A8F374(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for WKAnimationPackageLayerState();
      result = sub_1E4A68988(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A901A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8EA20, &unk_1E4AB17B0);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E4A8F224(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A90298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E660, &unk_1E4AB3810);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1E4A55B0C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A9039C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E6E8, &unk_1E4AB1838);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 120); ; i += 12)
    {
      v5 = *(i - 9);
      v6 = *(i - 5);
      v21 = *(i - 7);
      v22 = v6;
      v23 = *(i - 3);
      v19 = *(i - 11);
      v20 = v5;
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1E4A8F274(&v19);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 72 * result;
      v13 = v22;
      *(v12 + 32) = v21;
      *(v12 + 48) = v13;
      *(v12 + 64) = v23;
      v14 = v20;
      *v12 = v19;
      *(v12 + 16) = v14;
      v15 = (v3[7] + 24 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A904E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6C0, &qword_1E4AB1810);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E4A8F3E0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A905E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA70, &qword_1E4AB1818);
    v3 = sub_1E4AAAD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4A52D40(v4, &v11, &qword_1ECF8EA78, &unk_1E4AB3850);
      v5 = v11;
      result = sub_1E4A8F3E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1E4A2732C(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4A9070C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6D0, &qword_1E4AB1820);
    v3 = sub_1E4AAAD00();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1E4A55B0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double sub_1E4A90810(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1E4A9082C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EA50, &qword_1E4AB3830);
    v3 = sub_1E4AAAD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4A52D40(v4, v13, &qword_1ECF8EA58, &qword_1E4AB3838);
      result = sub_1E4A8F330(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1E4A4DCE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E4A90968()
{
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v0, qword_1EE048B40);
  v1 = sub_1E4AAA0C0();
  v2 = sub_1E4AAAA20();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E4A23000, v1, v2, "Editor will start rotation.", v3, 2u);
    MEMORY[0x1E691FE80](v3, -1, -1);
  }

  return 1;
}

void sub_1E4A90A44()
{
  if (qword_1EE0424A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v0, qword_1EE048B40);
  oslog = sub_1E4AAA0C0();
  v1 = sub_1E4AAAA20();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1E4A23000, oslog, v1, "Editor did complete rotation.", v2, 2u);
    MEMORY[0x1E691FE80](v2, -1, -1);
  }
}

void sub_1E4A90B2C(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v5 = v4;
  v9 = a3[7];
  v66 = a3[6];
  v67 = v9;
  v68 = a3[8];
  v10 = a3[3];
  v62 = a3[2];
  v63 = v10;
  v11 = a3[5];
  v64 = a3[4];
  v65 = v11;
  v12 = a3[1];
  v60 = *a3;
  v61 = v12;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v13, qword_1EE048B88);

  v14 = sub_1E4AAA0C0();
  v15 = sub_1E4AAAA20();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v59[0] = v17;
    *v16 = 136446466;
    v18 = *v5;
    v19 = sub_1E4AAAE90();
    v21 = sub_1E4A85938(v19, v20, v59);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9DF0, v59);
    _os_log_impl(&dword_1E4A23000, v14, v15, "Start (%{public}s.%{public}s)…", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v17, -1, -1);
    MEMORY[0x1E691FE80](v16, -1, -1);
  }

  v47 = v66;
  v48 = v67;
  v49 = v68;
  v43 = v62;
  v44 = v63;
  v45 = v64;
  v46 = v65;
  v41 = v60;
  v42 = v61;
  nullsub_1(&v41);
  v22 = *(v5 + 160);
  v23 = *(v5 + 192);
  v56 = *(v5 + 176);
  v57 = v23;
  v24 = *(v5 + 192);
  v58 = *(v5 + 208);
  v25 = *(v5 + 96);
  v26 = *(v5 + 128);
  v52 = *(v5 + 112);
  v53 = v26;
  v27 = *(v5 + 128);
  v28 = *(v5 + 160);
  v54 = *(v5 + 144);
  v55 = v28;
  v29 = *(v5 + 96);
  v50 = *(v5 + 80);
  v51 = v29;
  v59[6] = v56;
  v59[7] = v24;
  v59[8] = *(v5 + 208);
  v59[2] = v52;
  v59[3] = v27;
  v59[4] = v54;
  v59[5] = v22;
  v59[0] = v50;
  v59[1] = v25;
  v30 = v46;
  *(v5 + 144) = v45;
  *(v5 + 160) = v30;
  v31 = v48;
  *(v5 + 176) = v47;
  *(v5 + 192) = v31;
  *(v5 + 208) = v49;
  v32 = v44;
  *(v5 + 112) = v43;
  *(v5 + 128) = v32;
  v33 = v42;
  *(v5 + 80) = v41;
  *(v5 + 96) = v33;
  sub_1E4A49D24(&v60, v40);
  sub_1E4A52D40(&v50, v40, &unk_1ECF8E990, &qword_1E4AB36D0);
  sub_1E4A4DC88(v59, &unk_1ECF8E990, &qword_1E4AB36D0);
  v40[6] = v56;
  v40[7] = v57;
  v40[8] = v58;
  v40[2] = v52;
  v40[3] = v53;
  v40[4] = v54;
  v40[5] = v55;
  v40[0] = v50;
  v40[1] = v51;
  sub_1E4A898E4(v40);
  sub_1E4A4DC88(&v50, &unk_1ECF8E990, &qword_1E4AB36D0);
  v35 = *(v5 + 232);
  v34 = *(v5 + 240);
  *(v5 + 232) = a1;
  *(v5 + 240) = a2;
  swift_unknownObjectRetain();
  sub_1E4A8A50C(v35, v34);
  swift_unknownObjectRelease();
  if (*(v5 + 24))
  {
    ObjectType = swift_getObjectType();
    v37 = *(a2 + 8);
    v38 = *(v37 + 8);

    v39 = v38(ObjectType, v37);
    sub_1E4A6D014(v39, a4);
  }

  sub_1E4A8CC14(v5);
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC5looks3forSaySo0cD11EditingLook_pGSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v51 = v6;
    *v5 = 136446466;
    v7 = *v1;
    v8 = sub_1E4AAAE90();
    v10 = sub_1E4A85938(v8, v9, &v51);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0x6F6628736B6F6F6CLL, 0xEB00000000293A72, &v51);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v11 = *(v1 + 7);
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E4AAFB00;
    v34 = [objc_opt_self() mainBundle];
    v35 = sub_1E4AAA870();
    v36 = [v34 localizedStringForKey:v35 value:0 table:0];

    v37 = sub_1E4AAA8A0();
    v39 = v38;

    v40 = type metadata accessor for WKWallpaperPosterLook();
    v41 = objc_allocWithZone(v40);
    v42 = &v41[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier];
    *v42 = 0xD000000000000018;
    *(v42 + 1) = 0x80000001E4AB9D20;
    v43 = &v41[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName];
    *v43 = v37;
    v43[1] = v39;
    v55.receiver = v41;
    v55.super_class = v40;
    *(v33 + 32) = objc_msgSendSuper2(&v55, sel_init);
    goto LABEL_16;
  }

  v12 = *(v11 + 16);
  v13 = *(v1 + 7);

  v14 = [v12 numberOfWallpapers];
  if (([v12 numberOfWallpapers] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = [v12 numberOfWallpapers];
    if ((v14 & 0x8000000000000000) == 0 && v15 >= v14)
    {
      if (v14)
      {
        v45 = v1;
        v54 = MEMORY[0x1E69E7CC0];
        sub_1E4AAAC30();
        v16 = 0;
        while (1)
        {
          v47 = [v12 wallpaperBundleAtIndex_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E568, &qword_1E4AB0E30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E570, &qword_1E4AB0E38);
          if (!swift_dynamicCast())
          {
            goto LABEL_21;
          }

          sub_1E4A2732C(&v51, v48);
          v17 = v49;
          v18 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          (*(v18 + 8))(&v51, v17, v18);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          v19 = *(&v52 + 1);
          v20 = v53;
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          v21 = (*(v20 + 48))(v19, v20);
          v23 = v22;
          v24 = *(&v52 + 1);
          v25 = v53;
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          v26 = (*(v25 + 56))(v24, v25);
          v28 = v27;
          v1 = type metadata accessor for WKWallpaperPosterLook();
          v29 = objc_allocWithZone(v1);
          v30 = &v29[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier];
          *v30 = v21;
          v30[1] = v23;
          v31 = &v29[OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName];
          *v31 = v26;
          v31[1] = v28;
          v46.receiver = v29;
          v46.super_class = v1;
          objc_msgSendSuper2(&v46, sel_init);
          __swift_destroy_boxed_opaque_existential_1Tm(&v51);
          sub_1E4AAAC10();
          v32 = *(v54 + 16);
          sub_1E4AAAC40();
          sub_1E4AAAC50();
          sub_1E4AAAC20();
          if (v16 >= [v12 numberOfWallpapers])
          {
            __break(1u);
            goto LABEL_18;
          }

          if (v14 == ++v16)
          {

            v33 = v54;
            v1 = v45;
            goto LABEL_16;
          }
        }
      }

      v33 = MEMORY[0x1E69E7CC0];
LABEL_16:
      sub_1E4A8CDE0(v1);
      return v33;
    }
  }

  __break(1u);
LABEL_21:
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  sub_1E4A4DC88(&v51, &unk_1ECF8EB30, &unk_1E4AB0E40);
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC21initialLookIdentifier3forSSSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36[0] = v6;
    *v5 = 136446466;
    v7 = *v1;
    v8 = sub_1E4AAAE90();
    v10 = sub_1E4A85938(v8, v9, v36);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB9D40, v36);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v11 = v1[6];
  if (v11)
  {
    v12 = v1[5];
    swift_beginAccess();
    v13 = v1[4];
    v14 = *(v13 + 16);

    if (v14 && (v15 = sub_1E4A55B0C(v12, v11), (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v15);
      v18 = v17;
    }

    else
    {
      v17 = 0;
    }

    swift_endAccess();
    v19 = v1[28];
    v1[28] = v17;
    v20 = v17;
    sub_1E4A8A28C(v19);

    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(v1[4] + 16) != 1)
  {
    v12 = 0xD000000000000018;
    goto LABEL_16;
  }

  v21 = v1[4];

  sub_1E4A87888(v22);
  v24 = v23;
  v26 = v25;

  if (v24)
  {

    v28 = v1[28];
    v1[28] = v26;
    v29 = v26;
    sub_1E4A8A28C(v28);

    v30 = v1[4];

    v12 = sub_1E4A87888(v31);
    v33 = v32;
    v35 = v34;

    if (v33)
    {

LABEL_16:
      sub_1E4A8D030(v1);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC29activeAppearanceMenuSelection3forSo20UIUserInterfaceStyleVSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = *v1;
    v8 = sub_1E4AAAE90();
    v10 = sub_1E4A85938(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000023, 0x80000001E4AB9CF0, &v13);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  v11 = v1[8];
  sub_1E4A8DB40(v1);
  return v11;
}

void sub_1E4A91980(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446722;
    v9 = *v2;
    v10 = sub_1E4AAAE90();
    v12 = sub_1E4A85938(v10, v11, &v14);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD00000000000002FLL, 0x80000001E4AB9CC0, &v14);
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s) userInterfaceStyle: '%ld'…", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v13 = v2[8];
  v2[8] = a1;
  sub_1E4A895D4(v13);

  sub_1E4A8DD10(v2, a1);
}

void sub_1E4A91B78(void *a1)
{
  v2 = v1;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v4, qword_1EE048B88);

  v5 = sub_1E4AAA0C0();
  v6 = sub_1E4AAAA20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 136446466;
    v9 = *v2;
    v10 = sub_1E4AAAE90();
    v12 = sub_1E4A85938(v10, v11, v25);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1E4A85938(0xD000000000000020, 0x80000001E4AB9C90, v25);
    _os_log_impl(&dword_1E4A23000, v5, v6, "Start (%{public}s.%{public}s)…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v8, -1, -1);
    MEMORY[0x1E691FE80](v7, -1, -1);
  }

  v13 = [a1 identifier];
  v14 = sub_1E4AAA8A0();
  v16 = v15;

  swift_beginAccess();
  v17 = v2[4];
  if (!*(v17 + 16))
  {

    goto LABEL_9;
  }

  v18 = sub_1E4A55B0C(v14, v16);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v21 = *(*(v17 + 56) + 8 * v18);
  v22 = v21;
LABEL_10:
  swift_endAccess();
  v23 = v2[28];
  v2[28] = v21;
  v24 = v21;
  sub_1E4A8A28C(v23);

  sub_1E4A8E618(v2);
}

uint64_t _s12WallpaperKit33WKWallpaperPosterEditorControllerC19timeScrollsWithLook3forSbSo0cdE0_p_tF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = *v1;
    v8 = sub_1E4AAAE90();
    v10 = sub_1E4A85938(v8, v9, &v12);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000019, 0x80000001E4AB9C70, &v12);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  sub_1E4A8E7E4(v1);
  return 0;
}

uint64_t sub_1E4A91FC4()
{
  v1[52] = v0;
  v2 = sub_1E4AA9FE0();
  v1[53] = v2;
  v3 = *(v2 - 8);
  v1[54] = v3;
  v4 = *(v3 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4A92090, 0, 0);
}

uint64_t sub_1E4A92090()
{
  v88 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 416);
  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 416);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v87[0] = v7;
    *v6 = 136446466;
    v8 = *v5;
    v9 = sub_1E4AAAE90();
    v11 = sub_1E4A85938(v9, v10, v87);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9C50, v87);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v7, -1, -1);
    MEMORY[0x1E691FE80](v6, -1, -1);
  }

  v12 = *(*(v0 + 416) + 224);
  if (!v12)
  {
    v23 = sub_1E4AAA0C0();
    v24 = sub_1E4AAAA00();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v87[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9C10, v87);
      _os_log_impl(&dword_1E4A23000, v23, v24, "Could not find '%{public}s' to finalize editor session", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E691FE80](v26, -1, -1);
      MEMORY[0x1E691FE80](v25, -1, -1);
    }

    v27 = sub_1E4AAA0C0();
    v28 = sub_1E4AAAA10();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v87[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1E4A85938(0xD00000000000001FLL, 0x80000001E4AB9C10, v87);
      _os_log_impl(&dword_1E4A23000, v27, v28, "Could not find '%{public}s' to finalize editor session", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1E691FE80](v30, -1, -1);
      MEMORY[0x1E691FE80](v29, -1, -1);
    }

    goto LABEL_28;
  }

  v13 = *&v12[OBJC_IVAR____TtC12WallpaperKit31WKWallpaperPosterEditorLookItem_wallpaperPosterLayerViewModel];
  swift_getKeyPath();
  *(v0 + 400) = v13;
  sub_1E4A93000(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel);
  v14 = v12;
  sub_1E4AAA060();

  v16 = *(v13 + 16);
  if (!v16)
  {
    v31 = sub_1E4AAA0C0();
    v32 = sub_1E4AAAA00();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v87[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1E4A85938(0xD000000000000011, 0x80000001E4AB9C30, v87);
      _os_log_impl(&dword_1E4A23000, v31, v32, "Could not find '%{public}s' to finalize editor session.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E691FE80](v34, -1, -1);
      MEMORY[0x1E691FE80](v33, -1, -1);
    }

    v35 = sub_1E4AAA0C0();
    v36 = sub_1E4AAAA10();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v87[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_1E4A85938(0xD000000000000011, 0x80000001E4AB9C30, v87);
      _os_log_impl(&dword_1E4A23000, v35, v36, "Could not find '%{public}s' to finalize editor session.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E691FE80](v38, -1, -1);
      MEMORY[0x1E691FE80](v37, -1, -1);
    }

    goto LABEL_28;
  }

  v86 = v14;
  v17 = *(v0 + 416);
  if (!*(v17 + 232))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v18 = *(v17 + 240);
  v19 = *(v17 + 232);
  ObjectType = swift_getObjectType();
  v21 = *(v18 + 8);
  v22 = *(v21 + 48);

  swift_unknownObjectRetain();
  v39 = v22(ObjectType, v21);
  swift_unknownObjectRelease();
  result = v39;
  v85 = v39;
  v87[0] = v16;
  if (!*(v17 + 232))
  {
    goto LABEL_32;
  }

  v40 = v16;
  v42 = *(v0 + 440);
  v41 = *(v0 + 448);
  v43 = *(v17 + 240);
  v44 = *(v17 + 232);
  v45 = swift_getObjectType();
  v46 = *(v43 + 16);
  swift_unknownObjectRetain();
  v46(v45, v43);
  swift_unknownObjectRelease();
  WKWallpaperBundle.copyWallpaperRepresenting(to:)();
  v47 = *(v0 + 448);
  v48 = *(v0 + 416);
  v49 = *(*(v0 + 432) + 8);
  v49(*(v0 + 440), *(v0 + 424));
  v83 = sub_1E4AA9F90();
  v84 = v50;
  v51 = sub_1E4AA9EE0();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_1E4AA9ED0();
  v54 = *(v48 + 64);
  if (v54 == 2)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2;
  }

  if (v54 == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  *(v0 + 456) = v56;
  sub_1E4A92F58();
  v57 = sub_1E4AA9EC0();
  v58 = v40;
  v82 = v49;
  *(v0 + 352) = 0xD00000000000001ALL;
  *(v0 + 360) = 0x80000001E4AB8DD0;
  v59 = MEMORY[0x1E69E6158];
  v60 = v57;
  v62 = v61;
  sub_1E4AAAB90();
  *(v0 + 160) = MEMORY[0x1E6969080];
  *(v0 + 136) = v60;
  *(v0 + 144) = v62;
  sub_1E4A4DCE8((v0 + 136), (v0 + 168));
  v80 = v62;
  v81 = v60;
  sub_1E4A92FAC(v60, v62);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v85;
  sub_1E4A95B40((v0 + 168), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_1E4A60E2C(v0 + 16);
  v64 = v87[0];
  *(v0 + 368) = 0xD00000000000001DLL;
  *(v0 + 376) = 0x80000001E4AB8DF0;
  sub_1E4AAAB90();
  *(v0 + 224) = v59;
  *(v0 + 200) = v83;
  *(v0 + 208) = v84;
  sub_1E4A4DCE8((v0 + 200), (v0 + 232));

  v65 = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v64;
  sub_1E4A95B40((v0 + 232), v0 + 56, v65);
  sub_1E4A60E2C(v0 + 56);
  v66 = v87[0];
  *(v0 + 384) = 0xD00000000000001FLL;
  *(v0 + 392) = 0x80000001E4AB8E10;
  v67 = v59;
  sub_1E4AAAB90();
  v68 = [*(v58 + 16) identifierString];
  v69 = sub_1E4AAA8A0();
  v71 = v70;

  *(v0 + 288) = v67;
  *(v0 + 264) = v69;
  *(v0 + 272) = v71;
  sub_1E4A4DCE8((v0 + 264), (v0 + 296));
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v66;
  sub_1E4A95B40((v0 + 296), v0 + 96, v72);
  result = sub_1E4A60E2C(v0 + 96);
  if (!*(v17 + 232))
  {
    goto LABEL_33;
  }

  v73 = v87[0];
  v74 = *(v17 + 240);
  v75 = *(v17 + 232);
  swift_unknownObjectRetain();

  v76 = swift_getObjectType();
  (*(v74 + 24))(v73, v76, v74);
  v82(*(v0 + 448), *(v0 + 424));
  sub_1E4A60F3C(v81, v80);

  swift_unknownObjectRelease();

LABEL_28:
  sub_1E4A8EA4C(*(v0 + 416));
  v78 = *(v0 + 440);
  v77 = *(v0 + 448);

  v79 = *(v0 + 8);

  return v79();
}

void _s12WallpaperKit33WKWallpaperPosterEditorControllerC19editorDidInvalidateyySo0cdE0_pF_0()
{
  v1 = v0;
  if (qword_1EE0424C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v2, qword_1EE048B88);

  v3 = sub_1E4AAA0C0();
  v4 = sub_1E4AAAA20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v39[0] = v6;
    *v5 = 136446466;
    v7 = *v1;
    v8 = sub_1E4AAAE90();
    v10 = sub_1E4A85938(v8, v9, v39);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1E4A85938(0xD000000000000017, 0x80000001E4AB9BF0, v39);
    _os_log_impl(&dword_1E4A23000, v3, v4, "Start (%{public}s.%{public}s)…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v6, -1, -1);
    MEMORY[0x1E691FE80](v5, -1, -1);
  }

  if (*(v1 + 24))
  {
    v11 = *(v1 + 24);

    sub_1E4A6D7E8();
  }

  swift_beginAccess();
  v12 = *(v1 + 32);
  *(v1 + 32) = MEMORY[0x1E69E7CC8];

  v14 = *(v1 + 232);
  v13 = *(v1 + 240);
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  sub_1E4A8A50C(v14, v13);
  swift_unknownObjectRelease();
  sub_1E4A90810(v29);
  v15 = *(v1 + 160);
  v16 = *(v1 + 192);
  v36 = *(v1 + 176);
  v37 = v16;
  v17 = *(v1 + 192);
  v38 = *(v1 + 208);
  v18 = *(v1 + 96);
  v19 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v19;
  v20 = *(v1 + 128);
  v21 = *(v1 + 160);
  v34 = *(v1 + 144);
  v35 = v21;
  v22 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v22;
  v39[6] = v36;
  v39[7] = v17;
  v39[8] = *(v1 + 208);
  v39[2] = v32;
  v39[3] = v20;
  v39[4] = v34;
  v39[5] = v15;
  v39[0] = v30;
  v39[1] = v18;
  v23 = v29[5];
  *(v1 + 144) = v29[4];
  *(v1 + 160) = v23;
  v24 = v29[7];
  *(v1 + 176) = v29[6];
  *(v1 + 192) = v24;
  *(v1 + 208) = v29[8];
  v25 = v29[3];
  *(v1 + 112) = v29[2];
  *(v1 + 128) = v25;
  v26 = v29[1];
  *(v1 + 80) = v29[0];
  *(v1 + 96) = v26;
  sub_1E4A52D40(&v30, v28, &unk_1ECF8E990, &qword_1E4AB36D0);
  sub_1E4A4DC88(v39, &unk_1ECF8E990, &qword_1E4AB36D0);
  v28[6] = v36;
  v28[7] = v37;
  v28[8] = v38;
  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v28[5] = v35;
  v28[0] = v30;
  v28[1] = v31;
  sub_1E4A898E4(v28);
  sub_1E4A4DC88(&v30, &unk_1ECF8E990, &qword_1E4AB36D0);
  v27 = *(v1 + 224);
  *(v1 + 224) = 0;
  sub_1E4A8A28C(v27);

  sub_1E4A8EC18(v1);
}

unint64_t sub_1E4A92F58()
{
  result = qword_1ECF8EA48;
  if (!qword_1ECF8EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8EA48);
  }

  return result;
}

uint64_t sub_1E4A92FAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E4A93000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4A93064(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_1E4A93090(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 180.0;
    case 3:
      v6 = [objc_opt_self() sharedApplication];
      v7 = [v6 userInterfaceLayoutDirection];

      v3 = v7 == 1;
      result = 90.0;
      v5 = 270.0;
      break;
    case 4:
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection];

      v3 = v2 == 1;
      result = 270.0;
      v5 = 90.0;
      break;
    default:
      return 0.0;
  }

  if (v3)
  {
    return v5;
  }

  return result;
}

double sub_1E4A93188(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1E4A93090(a2);
  if (a1 <= 1)
  {
    if (a1 > 1 || a2 != 4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    if (a2 != 3)
    {
      goto LABEL_10;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  if (a1 == 4)
  {
    if (a2 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a1 != 3)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = a2 > 1;
LABEL_11:
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 userInterfaceLayoutDirection];

  if (((v7 ^ (v9 != 1)) & 1) != 0 && v6 > a3)
  {
    return a3 + 360.0;
  }

  return a3;
}

uint64_t sub_1E4A932B0(uint64_t a1, uint64_t (**a2)(__CFString *, uint64_t, char *))
{
  v5 = sub_1E4AA9FE0();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v56 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v56 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v56 - v20;
  v22 = a2[15](@"WKWallpaperLocationCoverSheet", a1, a2);
  result = 0;
  if (!v22)
  {
    v60 = v13;
    v61 = v16;
    v62 = v8;
    v68 = MEMORY[0x1E69E7CC8];
    v57 = a2[19];
    v58 = (a2 + 19);
    (v57)(v65, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
    v24 = v66;
    v63 = v21;
    v56[1] = v2;
    v25 = a1;
    v26 = a2;
    if (v66)
    {
      v27 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v28 = *(v27 + 16);
      v29 = v27;
      v21 = v63;
      v28(v24, v29);
      v30 = v64;
      v31 = v5;
      v59 = *(v64 + 56);
      v59(v21, 0, 1, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
    }

    else
    {
      sub_1E4A4DC88(v65, &qword_1ECF8EAA0, qword_1E4AB38D8);
      v30 = v64;
      v31 = v5;
      v59 = *(v64 + 56);
      v59(v21, 1, 1, v5);
    }

    v32 = v62;
    v62 = v26;
    sub_1E4A48054(v21, v19);
    v33 = *(v30 + 48);
    if (v33(v19, 1, v31) == 1)
    {
      v34 = 0;
    }

    else
    {
      (*(v30 + 32))(v32, v19, v31);
      v35 = objc_opt_self();
      v36 = sub_1E4AA9FA0();
      v34 = [v35 wk:v36 imageWithContentsOfURL:?];

      (*(v30 + 8))(v32, v31);
    }

    if (qword_1EE0421D0 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE048B18;
    if (v34)
    {
      v38 = v34;
      if (MEMORY[0x1E69E7CC8] >> 62)
      {
        result = sub_1E4AAAC80();
        if (__OFADD__(result, 1))
        {
          goto LABEL_37;
        }

        v39 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
      }

      else
      {
        v39 = v68;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v39;
      sub_1E4A95590(v38, v37, isUniquelyReferenced_nonNull_native);
      v30 = v64;
      v68 = v65[0];
    }

    else
    {
    }

    (v57)(v65, @"WKWallpaperLocationCoverSheet", @"dark", v25, v62);
    v41 = v66;
    if (v66)
    {
      v42 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v43 = *(v42 + 16);
      v44 = v61;
      v45 = v42;
      v30 = v64;
      v43(v41, v45);
      v59(v44, 0, 1, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
    }

    else
    {
      sub_1E4A4DC88(v65, &qword_1ECF8EAA0, qword_1E4AB38D8);
      v44 = v61;
      v59(v61, 1, 1, v31);
    }

    v46 = v60;
    sub_1E4A48054(v44, v60);
    if (v33(v46, 1, v31) == 1)
    {
      v47 = 0;
    }

    else
    {
      (*(v30 + 32))(v32, v46, v31);
      v48 = objc_opt_self();
      v49 = sub_1E4AA9FA0();
      v47 = [v48 wk:v49 imageWithContentsOfURL:?];

      (*(v30 + 8))(v32, v31);
    }

    if (qword_1EE0421D8 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE048B20;
    if (!v47)
    {

LABEL_34:
      v53 = objc_opt_self();
      sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
      sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
      sub_1E4A507A8();
      v54 = sub_1E4AAA800();

      v55 = [v53 wk:v54 dynamicImageWithTraitCollectionToImageMap:v34 baseImage:?];

      sub_1E4A4DC88(v44, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      sub_1E4A4DC88(v63, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return v55;
    }

    v51 = v68;
    if ((v68 & 0xC000000000000001) == 0)
    {
      v47 = v47;
      goto LABEL_33;
    }

    if (v68 >= 0)
    {
      v51 = v68 & 0xFFFFFFFFFFFFFF8;
    }

    v47 = v47;
    result = sub_1E4AAAC80();
    if (!__OFADD__(result, 1))
    {
      v51 = sub_1E4A950AC(v51, result + 1);
LABEL_33:
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v51;
      sub_1E4A95590(v47, v50, v52);
      v68 = v65[0];
      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

id sub_1E4A93A28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  v4(v12, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
  v5 = v13;
  if (v13)
  {
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = (*(v6 + 16))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_1E4A4DC88(v12, &qword_1ECF8EA98, &qword_1E4AB38D0);
  }

  v4(v12, @"WKWallpaperLocationCoverSheet", @"dark", a1, a2);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v9 = (*(v8 + 16))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    sub_1E4A4DC88(v12, &qword_1ECF8EA98, &qword_1E4AB38D0);
    v9 = 0;
  }

  v10 = [objc_opt_self() wk:v5 imageWithLightAppearanceImage:v9 darkAppearanceImage:?];

  return v10;
}

void sub_1E4A93BE8(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_1E4A4EF3C(a1, a2);
  }
}

id sub_1E4A93BFC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1E4A562F4(result, a2);
  }

  return result;
}

id sub_1E4A93C1C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v100 = a3;
  v5 = sub_1E4AA9FE0();
  v98 = *(v5 - 8);
  v99 = v5;
  v6 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v92 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v89 = (&v89 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v90 = &v89 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v89 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v89 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v91 = &v89 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v89 - v27;
  v28 = *(a2 + 168);
  v28(v103, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
  v29 = v104;
  if (v104)
  {
    v30 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v30 + 24))(&v101, v29, v30);
    v31 = v101;
    v32 = v102;
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
  }

  else
  {
    sub_1E4A4DC88(v103, &qword_1ECF8E830, &qword_1E4AB29C0);
    v31 = 0;
    v32 = 255;
  }

  v28(v103, @"WKWallpaperLocationCoverSheet", @"dark", a1, a2);
  v33 = v104;
  if (v104)
  {
    v34 = v31;
    v35 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v36 = *(v35 + 24);
    v37 = v35;
    v31 = v34;
    v36(&v101, v33, v37);
    v38 = v101;
    v39 = v102;
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    if (v32 != 255)
    {
      goto LABEL_6;
    }

LABEL_14:
    v55 = v31;
    v56 = -1;
LABEL_19:
    sub_1E4A93BE8(v55, v56);
    sub_1E4A93BE8(v38, v39);
    return 0;
  }

  sub_1E4A4DC88(v103, &qword_1ECF8E830, &qword_1E4AB29C0);
  v38 = 0;
  v39 = 255;
  if (v32 == 255)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v32 != 1)
  {
    v55 = v31;
    v56 = v32;
    goto LABEL_19;
  }

  if (v39 == 255)
  {
    v57 = v38;
    v58 = v31;
    v59 = [v31[2] *v100];
    v61 = v98;
    v60 = v99;
    if (v59)
    {
      v62 = v89;
      v63 = v59;
      sub_1E4AA9FC0();

      v64 = 0;
    }

    else
    {
      v64 = 1;
      v62 = v89;
    }

    v65 = v90;
    (*(v61 + 56))(v62, v64, 1, v60);
    sub_1E4A4EF94(v62, v65);
    v84 = v92;
    sub_1E4A48054(v65, v92);
    if ((*(v61 + 48))(v84, 1, v60) != 1)
    {
      v85 = v95;
      (*(v61 + 32))(v95, v84, v60);
      v86 = objc_opt_self();
      v87 = sub_1E4AA9FA0();
      v88 = [v86 wk:v87 imageWithContentsOfURL:?];

      sub_1E4A93BE8(v58, 1u);
      sub_1E4A93BE8(v57, 0xFFu);
      (*(v61 + 8))(v85, v60);
      sub_1E4A4DC88(v65, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      return v88;
    }

    sub_1E4A93BE8(v58, 1u);
    sub_1E4A93BE8(v57, 0xFFu);
    sub_1E4A4DC88(v65, &qword_1ECF8E7C0, &qword_1E4AAEA40);
    return 0;
  }

  v41 = v98;
  v40 = v99;
  if (v39 != 1)
  {
    v55 = v31;
    v56 = 1;
    goto LABEL_19;
  }

  v42 = v31;
  v43 = v31[2];
  v92 = v42;
  sub_1E4A93BFC(v42, 1u);
  sub_1E4A93BFC(v38, 1u);
  v44 = [v43 *v100];
  if (v44)
  {
    v45 = v44;
    sub_1E4AA9FC0();

    v39 = 0;
  }

  v46 = *(v41 + 56);
  v46(v26, v39, 1, v40);
  v47 = objc_opt_self();
  v48 = v26;
  v49 = v97;
  sub_1E4A4EF94(v48, v97);
  v50 = v49;
  v51 = v91;
  sub_1E4A48054(v50, v91);
  v52 = *(v41 + 48);
  v53 = v52(v51, 1, v40);
  v90 = v47;
  if (v53 == 1)
  {
    v54 = 0;
  }

  else
  {
    v67 = *(v41 + 32);
    v89 = v38;
    v68 = v95;
    v67(v95, v51, v40);
    v69 = sub_1E4AA9FA0();
    v54 = [v47 wk:v69 imageWithContentsOfURL:?];

    v70 = v68;
    v38 = v89;
    (*(v41 + 8))(v70, v40);
  }

  v71 = v93;
  v72 = v96;
  sub_1E4A4DC88(v97, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  v73 = [v38[2] *v100];
  if (v73)
  {
    v74 = v73;
    sub_1E4AA9FC0();

    v72 = v96;
    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v46(v72, v75, 1, v40);
  v76 = v94;
  sub_1E4A4EF94(v72, v94);
  sub_1E4A48054(v76, v71);
  if (v52(v71, 1, v40) == 1)
  {
    v77 = 0;
    v78 = v90;
  }

  else
  {
    v79 = v95;
    (*(v41 + 32))(v95, v71, v40);
    v80 = v38;
    v81 = sub_1E4AA9FA0();
    v78 = v90;
    v77 = [v90 wk:v81 imageWithContentsOfURL:?];

    v38 = v80;
    (*(v41 + 8))(v79, v40);
  }

  sub_1E4A4DC88(v76, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  v82 = [v78 wk:v54 imageWithLightAppearanceImage:v77 darkAppearanceImage:?];

  sub_1E4A93BE8(v38, 1u);
  v83 = v92;
  sub_1E4A93BE8(v92, 1u);
  sub_1E4A93BE8(v83, 1u);
  sub_1E4A93BE8(v38, 1u);

  return v82;
}

uint64_t sub_1E4A944C4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v114 = a3;
  v5 = sub_1E4AA9FE0();
  v6 = *(v5 - 8);
  v115 = v5;
  v116 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v110 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v103 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v109 = &v103 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v103 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v113 = &v103 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v106 = &v103 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v108 = &v103 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v103 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v112 = &v103 - v28;
  v29 = *(a2 + 168);
  v29(v119, @"WKWallpaperLocationCoverSheet", @"default", a1, a2);
  v30 = v120;
  if (v120)
  {
    v31 = v121;
    __swift_project_boxed_opaque_existential_1(v119, v120);
    (*(v31 + 24))(&v117, v30, v31);
    v32 = v117;
    v33 = v118;
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
  }

  else
  {
    sub_1E4A4DC88(v119, &qword_1ECF8E830, &qword_1E4AB29C0);
    v32 = 0;
    v33 = 255;
  }

  v29(v119, @"WKWallpaperLocationCoverSheet", @"dark", a1, a2);
  v34 = v120;
  if (v120)
  {
    v35 = v121;
    __swift_project_boxed_opaque_existential_1(v119, v120);
    (*(v35 + 24))(&v117, v34, v35);
    v36 = v117;
    v37 = v118;
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
    if (v33 != 255)
    {
      goto LABEL_6;
    }

LABEL_14:
    v50 = v32;
    v51 = -1;
    goto LABEL_19;
  }

  sub_1E4A4DC88(v119, &qword_1ECF8E830, &qword_1E4AB29C0);
  v36 = 0;
  v37 = 255;
  if (v33 == 255)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v33 != 1)
  {
    v50 = v32;
    v51 = v33;
    goto LABEL_19;
  }

  if (v37 != 255)
  {
    v38 = v116;
    if (v37 == 1)
    {
      v39 = MEMORY[0x1E69E7CC8];
      v119[0] = MEMORY[0x1E69E7CC8];
      v40 = v32[2];
      sub_1E4A93BFC(v32, 1u);
      sub_1E4A93BFC(v36, 1u);
      v41 = [v40 *v114];
      v104 = v36;
      v42 = v32;
      if (v41)
      {
        v43 = v41;
        sub_1E4AA9FC0();

        v37 = 0;
      }

      v44 = v108;
      v45 = *(v38 + 56);
      v46 = v115;
      v45(v27, v37, 1, v115);
      v47 = v112;
      sub_1E4A4EF94(v27, v112);
      sub_1E4A48054(v47, v44);
      v48 = *(v38 + 48);
      if (v48(v44, 1, v46) == 1)
      {
        v49 = 0;
      }

      else
      {
        v62 = v44;
        v63 = v111;
        (*(v38 + 32))(v111, v62, v46);
        v64 = objc_opt_self();
        v65 = sub_1E4AA9FA0();
        v66 = [v64 wk:v65 imageWithContentsOfURL:?];
        v67 = v38;
        v49 = v66;

        v47 = v112;
        (*(v67 + 8))(v63, v115);
      }

      sub_1E4A4DC88(v47, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      if (qword_1EE0421D0 != -1)
      {
        swift_once();
      }

      v68 = qword_1EE048B18;
      if (v49)
      {
        v69 = v49;
        if (v39 >> 62)
        {
          result = sub_1E4AAAC80();
          if (__OFADD__(result, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v70 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
        }

        else
        {
          v70 = v119[0];
        }

        v71 = v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v70;
        sub_1E4A95590(v69, v68, isUniquelyReferenced_nonNull_native);
        v119[0] = v117;
      }

      else
      {

        v71 = v106;
      }

      v81 = [v104[2] *v114];
      v82 = v115;
      v83 = v113;
      if (v81)
      {
        v84 = v81;
        sub_1E4AA9FC0();

        v83 = v113;
        v85 = 0;
      }

      else
      {
        v85 = 1;
      }

      v45(v83, v85, 1, v82);
      sub_1E4A4EF94(v83, v71);
      v86 = v105;
      sub_1E4A48054(v71, v105);
      if (v48(v86, 1, v82) == 1)
      {
        v87 = 0;
      }

      else
      {
        v88 = v116;
        v89 = v111;
        (*(v116 + 32))(v111, v86, v82);
        v90 = objc_opt_self();
        v91 = sub_1E4AA9FA0();
        v87 = [v90 wk:v91 imageWithContentsOfURL:?];

        (*(v88 + 8))(v89, v82);
      }

      sub_1E4A4DC88(v71, &qword_1ECF8E7C0, &qword_1E4AAEA40);
      if (qword_1EE0421D8 != -1)
      {
        swift_once();
      }

      v92 = qword_1EE048B20;
      if (!v87)
      {

LABEL_61:
        v101 = objc_opt_self();
        sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
        sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
        sub_1E4A507A8();
        v96 = sub_1E4AAA800();

        v97 = [v101 wk:v96 dynamicImageWithTraitCollectionToImageMap:v49 baseImage:?];

        v102 = v104;
        sub_1E4A93BE8(v104, 1u);
        sub_1E4A93BE8(v42, 1u);
        sub_1E4A93BE8(v42, 1u);
        v98 = v102;
        v99 = 1;
        goto LABEL_62;
      }

      v93 = v119[0];
      if ((v119[0] & 0xC000000000000001) == 0)
      {
        v87 = v87;
        goto LABEL_60;
      }

      if (v119[0] >= 0)
      {
        v93 = v119[0] & 0xFFFFFFFFFFFFFF8;
      }

      v87 = v87;
      result = sub_1E4AAAC80();
      if (!__OFADD__(result, 1))
      {
        v93 = sub_1E4A950AC(v93, result + 1);
LABEL_60:
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v93;
        sub_1E4A95590(v87, v92, v100);
        v119[0] = v117;
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_64;
    }

    v50 = v32;
    v51 = 1;
LABEL_19:
    sub_1E4A93BE8(v50, v51);
    sub_1E4A93BE8(v36, v37);
    return 0;
  }

  v52 = MEMORY[0x1E69E7CC8];
  v119[0] = MEMORY[0x1E69E7CC8];
  v53 = v32[2];

  v54 = [v53 *v114];
  v55 = v116;
  if (v54)
  {
    v56 = v107;
    v57 = v54;
    sub_1E4AA9FC0();

    v58 = 0;
    v59 = v115;
    v60 = v109;
  }

  else
  {
    v58 = 1;
    v59 = v115;
    v60 = v109;
    v56 = v107;
  }

  (*(v55 + 56))(v56, v58, 1, v59);
  sub_1E4A4EF94(v56, v60);
  v72 = v110;
  sub_1E4A48054(v60, v110);
  if ((*(v55 + 48))(v72, 1, v59) == 1)
  {
    v73 = 0;
  }

  else
  {
    v74 = v111;
    (*(v55 + 32))(v111, v72, v59);
    v75 = objc_opt_self();
    v76 = v59;
    v77 = sub_1E4AA9FA0();
    v73 = [v75 wk:v77 imageWithContentsOfURL:?];

    (*(v55 + 8))(v74, v76);
  }

  sub_1E4A4DC88(v60, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  if (qword_1EE0421D0 != -1)
  {
    swift_once();
  }

  v78 = qword_1EE048B18;
  if (!v73)
  {

LABEL_58:
    v95 = objc_opt_self();
    sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
    sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
    sub_1E4A507A8();
    v96 = sub_1E4AAA800();

    v97 = [v95 wk:v96 dynamicImageWithTraitCollectionToImageMap:v73 baseImage:?];

    sub_1E4A93BE8(v32, 1u);
    sub_1E4A93BE8(v32, 1u);
    v98 = v36;
    v99 = -1;
LABEL_62:
    sub_1E4A93BE8(v98, v99);

    return v97;
  }

  v73 = v73;
  if (!(v52 >> 62))
  {
    v79 = v119[0];
LABEL_57:
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v79;
    sub_1E4A95590(v73, v78, v94);
    v119[0] = v117;
    goto LABEL_58;
  }

  result = sub_1E4AAAC80();
  if (!__OFADD__(result, 1))
  {
    v79 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
    goto LABEL_57;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1E4A950AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6B0, &unk_1E4AB1800);
    v2 = sub_1E4AAACF0();
    v20 = v2;
    sub_1E4AAAC70();
    v3 = sub_1E4AAACA0();
    if (v3)
    {
      v4 = v3;
      sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1E4A65A10(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1E4AAAAC0();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1E4AAACA0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1E4A952F8(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E4A2732C(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1E4A95364(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1E4A953A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1E4A4DCE8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1E4A95424(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1E4A8F274(a1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a2 & 1) == 0)
  {
    v21 = result;
    sub_1E4A67840();
    result = v21;
    goto LABEL_8;
  }

  sub_1E4A65720(v18, a2 & 1);
  v22 = *v6;
  result = sub_1E4A8F274(a1);
  if ((v19 & 1) == (v23 & 1))
  {
LABEL_8:
    v24 = *v6;
    if (v19)
    {
      v25 = (v24[7] + 24 * result);
      *v25 = a3;
      v25[1] = a4;
      v25[2] = a5;
      return result;
    }

    v24[(result >> 6) + 8] |= 1 << result;
    v26 = v24[6] + 72 * result;
    v27 = *(a1 + 48);
    *(v26 + 32) = *(a1 + 32);
    *(v26 + 48) = v27;
    *(v26 + 64) = *(a1 + 64);
    v28 = *(a1 + 16);
    *v26 = *a1;
    *(v26 + 16) = v28;
    v29 = (v24[7] + 24 * result);
    *v29 = a3;
    v29[1] = a4;
    v29[2] = a5;
    v30 = v24[2];
    v17 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v17)
    {
      v24[2] = v31;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

id sub_1E4A95590(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E4A8F2E0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1E4A65A10(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1E4A8F2E0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
        sub_1E4AAADB0();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1E4A679D8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1E4A95708(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E4A55B0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4A66A78(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E4A55B0C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E4AAADB0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E4A680B8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}