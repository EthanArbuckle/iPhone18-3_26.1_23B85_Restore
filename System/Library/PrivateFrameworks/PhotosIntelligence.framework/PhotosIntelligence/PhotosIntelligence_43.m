uint64_t sub_1C72924A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C7292584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42_25();
  a24 = v26;
  a25 = v27;
  a23 = v25;
  v28 = *(v25 + 112);
  v29 = *(v25 + 32);
  v30 = sub_1C754DD2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  sub_1C6FB5FC8(v29, &qword_1EC215BD8);
  v32 = v28;
  v33 = sub_1C754FEEC();
  sub_1C755118C();

  v34 = OUTLINED_FUNCTION_200();
  if (EnumTagSinglePayload == 1)
  {
    if (v34)
    {
      v35 = *(v25 + 152);
      v36 = *(v25 + 112);
      v37 = OUTLINED_FUNCTION_23_1();
      v38 = OUTLINED_FUNCTION_20_1();
      a12 = v38;
      *v37 = 134218242;
      *(v37 + 4) = v35;
      OUTLINED_FUNCTION_40_29();
      v39 = [v36 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v40, v41, v42, v43);
      OUTLINED_FUNCTION_80();
      *(v37 + 14) = v39;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    v50 = *(v25 + 136);
  }

  else
  {
    if (v34)
    {
      v51 = *(v25 + 152);
      v52 = *(v25 + 112);
      v53 = OUTLINED_FUNCTION_23_1();
      v54 = OUTLINED_FUNCTION_20_1();
      a12 = v54;
      *v53 = 134218242;
      *(v53 + 4) = v51;
      OUTLINED_FUNCTION_40_29();
      v55 = [v52 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v56, v57, v58, v59);
      OUTLINED_FUNCTION_80();
      *(v53 + 14) = v55;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v60, v61, v62, v63, v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    v50 = *(v25 + 136);
    static Spatial3DAssetResourceUtils.clearSpatial3DScene(for:with:)(*(v25 + 112), *(v25 + 152));
    if (v50)
    {
      v65 = *(v25 + 112);
      v67 = *(v25 + 72);
      v66 = *(v25 + 80);

LABEL_26:
      v103 = *(v25 + 24);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v104 + 8))(v103);
LABEL_27:

      OUTLINED_FUNCTION_6_0();
LABEL_28:
      OUTLINED_FUNCTION_6_68();

      v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
      return;
    }
  }

  v68 = *(v25 + 144) + 1;
  if (v68 == *(v25 + 120))
  {
    v69 = *(v25 + 112);
    *&v49 = 136315138;
    a9 = v49;
    v70 = &selRef_clsSceneClassifications;
    v71 = &selRef_mergedPersonIdentifiers;
    while (1)
    {
      v72 = v69;
      v73 = sub_1C754FEEC();
      v74 = sub_1C75511BC();

      v75 = os_log_type_enabled(v73, v74);
      v76 = *(v25 + 112);
      if (v75)
      {
        a11 = v50;
        v77 = OUTLINED_FUNCTION_41_0();
        v78 = OUTLINED_FUNCTION_20_1();
        a12 = v78;
        *v77 = a9;
        v79 = [v76 localIdentifier];
        v80 = v70;
        v81 = sub_1C755068C();
        a10 = v76;
        v82 = v71;
        v84 = v83;

        v85 = sub_1C6F765A4(v81, v84, &a12);
        v71 = v82;

        *(v77 + 4) = v85;
        v70 = v80;
        _os_log_impl(&dword_1C6F5C000, v73, v74, "Removed resources for asset %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        OUTLINED_FUNCTION_109();
        v50 = a11;
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v86 = *(v25 + 104);
      if (v86 == *(v25 + 96))
      {
        break;
      }

      *(v25 + 104) = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      [*(v25 + 80) v70[32]];
      sub_1C754F2DC();
      v87 = *(v25 + 80);
      if (v50)
      {
        v102 = *(v25 + 72);

        goto LABEL_26;
      }

      v88 = *(v25 + 64);
      v69 = [v87 v71[45]];
      *(v25 + 112) = v69;
      v89 = *(v88 + 16);
      *(v25 + 120) = v89;
      if (v89)
      {
        v90 = type metadata accessor for Spatial3DAssetResourceUtils();
        v50 = 0;
        v68 = 0;
        *(v25 + 128) = v90;
        goto LABEL_19;
      }
    }

    v101 = *(v25 + 72);
    v100 = *(v25 + 80);

    sub_1C754F2EC();

    if (v50)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_25();
    goto LABEL_28;
  }

LABEL_19:
  *(v25 + 136) = v50;
  *(v25 + 144) = v68;
  v91 = *(v25 + 64);
  if (v68 >= *(v91 + 16))
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    *(v25 + 152) = *(v91 + 8 * v68 + 32);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v25 + 160) = v92;
    *v92 = v93;
    OUTLINED_FUNCTION_9_62();
    OUTLINED_FUNCTION_6_68();

    static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v94, v95, v96, v97, v98);
  }
}

uint64_t sub_1C7292A5C(uint64_t a1)
{
  v2 = type metadata accessor for Spatial3DResourceGenerator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7292AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Spatial3DResourceGenerator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7292B1C()
{
  result = qword_1EC2192E8;
  if (!qword_1EC2192E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2192E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2192E8);
  }

  return result;
}

uint64_t sub_1C7292B80(uint64_t a1)
{
  v4 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C6F738F4;

  return sub_1C728FCE4(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_1C7292C94(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C7292D88;

  return v5(v2 + 32);
}

uint64_t sub_1C7292D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_14();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_1C7292E80()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C6F739D4;

  return sub_1C7292C94(v3, v4);
}

uint64_t sub_1C7292F30(uint64_t a1)
{
  v3 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v3);
  v12 = v1[2];
  v4 = v1[4];
  v11 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C6F738F4;

  return sub_1C7291480(a1, v12, v11, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_32_26()
{
}

uint64_t OUTLINED_FUNCTION_43_25()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_60_16()
{
}

uint64_t OUTLINED_FUNCTION_61_14()
{
  sub_1C6F61E88();
}

uint64_t OUTLINED_FUNCTION_62_15()
{
  sub_1C6F61E88();
}

void sub_1C7293288(double a1)
{
  if (a1 < -9.22337204e18 || a1 > 9.22337204e18)
  {
    sub_1C72933D0();
    swift_allocError();
    *v3 = a1;
    swift_willThrow();
    return;
  }

  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }
}

unint64_t sub_1C72933D0()
{
  result = qword_1EC219F50;
  if (!qword_1EC219F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219F50);
  }

  return result;
}

void FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_33();
  v47 = v0;
  v48 = v1;
  v3 = v2;
  v44 = v5;
  v45 = v4;
  v7 = v6;
  v49 = *v0;
  v50 = v8;
  v9 = type metadata accessor for StoryGenerationSession(0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v43 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v40 - v16;
  memcpy(v55, v7, 0x130uLL);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C754F17C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v40 = swift_allocBox();
  v18 = v17;
  sub_1C754F29C();
  v46 = sub_1C754F2FC();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v46);
  v42 = sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_1C7298170();
  sub_1C6FD7F70();
  sub_1C7055874(v54, v53);
  v23 = (v13 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 311) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1C7298118();
  v29 = v28 + v23;
  v30 = v51[1];
  *v29 = v51[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v52;
  *(v28 + v24) = v40;
  *(v28 + v25) = v47;
  memcpy((v28 + v26), v55, 0x130uLL);
  sub_1C6FD80E4(v53, v28 + v27);
  *(v28 + ((v27 + 47) & 0xFFFFFFFFFFFFFFF8)) = v49;

  sub_1C6FDE884(v55, v51);
  v31 = sub_1C7293AD4(0, 0, v41, &unk_1C757E510, v28);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v42);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v31;

  sub_1C729386C();
  v37 = v36;
  __swift_destroy_boxed_opaque_existential_1(v54);

  v38 = v50;
  *v50 = v31;
  v38[1] = v37;
  OUTLINED_FUNCTION_62_2();
  (*(v39 + 8))(v48);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C729386C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v7);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_27();
  sub_1C6FD7F70();
  v9 = sub_1C7550D5C();
  v10 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v0, &qword_1EC2158F8);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v13 + 8))(v0, v9);
  }

  v14 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FD7FC8(v4, &qword_1EC2158F8);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();

  swift_task_create();

  sub_1C6FD7FC8(v4, &qword_1EC2158F8);

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7293AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1C6FD7F70();
  v11 = sub_1C7550D5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v10, &qword_1EC2158F8);
  }

  else
  {
    sub_1C7550D4C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1C7550C8C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a2;
      v17 = sub_1C755071C() + 32;
      type metadata accessor for StoryMusicCuration();

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1C6FD7FC8(a3, &qword_1EC2158F8);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C6FD7FC8(a3, &qword_1EC2158F8);
  type metadata accessor for StoryMusicCuration();
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1C7293D94()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41_27();
  sub_1C6FD7F70();
  v11 = sub_1C7550D5C();
  v12 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v0, &qword_1EC2158F8);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v15 + 8))(v0, v11);
  }

  v16 = *(v4 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FD7FC8(v6, &qword_1EC2158F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(v2);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();

  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  swift_task_create();

  sub_1C6FD7FC8(v6, &qword_1EC2158F8);

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7294014()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v7);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41_27();
  sub_1C6FD7F70();
  v9 = sub_1C7550D5C();
  v10 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C6FD7FC8(v0, &qword_1EC2158F8);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v13 + 8))(v0, v9);
  }

  v14 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C6FD7FC8(v4, &qword_1EC2158F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C7550C8C();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C755071C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8);
  swift_task_create();
  OUTLINED_FUNCTION_24_2();

  sub_1C6FD7FC8(v4, &qword_1EC2158F8);

LABEL_9:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7294294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a8;
  v8[53] = v12;
  v8[50] = a5;
  v8[51] = a7;
  v8[48] = a1;
  v8[49] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v8[54] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[55] = v9;
  v8[56] = *(v9 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C72943B8, 0, 0);
}

uint64_t sub_1C72943B8()
{
  v1 = v0[49];
  v2 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v0[60] = v2;
  if (v2)
  {
    *(*(*(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56) + 33) = 1;
  }

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_1C754FF1C();
  v0[61] = __swift_project_value_buffer(v3, qword_1EDD28B68);
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    [objc_opt_self() storyMusicCurationTimeoutSeconds];
    *(v6 + 4) = v7;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  sub_1C6FD7F70();
  if (v0[43])
  {
    v13 = v0[44];
    __swift_project_boxed_opaque_existential_1(v0 + 40, v0[43]);
    v31 = (*(v13 + 48) + **(v13 + 48));
    v14 = swift_task_alloc();
    v0[62] = v14;
    *v14 = v0;
    v14[1] = sub_1C7294788;
    v15 = OUTLINED_FUNCTION_57_0();

    return v31(v15);
  }

  else
  {
    sub_1C6FD7FC8((v0 + 40), &qword_1EC215748);
    v0[65] = MEMORY[0x1E69E7CC0];
    v18 = v0[54];
    v17 = v0[55];
    swift_beginAccess();
    sub_1C7091CBC();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
    if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
    {
      v22 = v0[54];
      v23 = OUTLINED_FUNCTION_69_2();
      if (__swift_getEnumTagSinglePayload(v23, v24, v25) != 1)
      {
        sub_1C6FD7FC8(v22, &unk_1EC218C90);
      }

      OUTLINED_FUNCTION_54_23();
      return OUTLINED_FUNCTION_39_28();
    }

    else
    {
      v26 = v0[52];
      v27 = *(v0[56] + 32);
      (v27)(v0[58], v0[54], v0[55]);
      memcpy(v0 + 2, v26, 0x130uLL);
      v28 = OUTLINED_FUNCTION_90();
      v27(v28);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      v0[66] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_13_55(v29);

      return FreeformStoryGenerator.generateMusicCuration(from:traits:storySession:eventRecorder:progressReporter:)();
    }
  }
}

uint64_t sub_1C7294788()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 504) = v0;

  if (!v0)
  {
    *(v5 + 512) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7294898()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v0[65] = v0[64];
  v2 = v0[54];
  v1 = v0[55];
  swift_beginAccess();
  sub_1C7091CBC();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v6 = v0[54];
    v7 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
    {
      sub_1C6FD7FC8(v6, &unk_1EC218C90);
    }

    OUTLINED_FUNCTION_54_23();
    return OUTLINED_FUNCTION_39_28();
  }

  else
  {
    v12 = v0[57];
    v11 = v0[58];
    v13 = v0[55];
    v14 = v0[52];
    v15 = *(v0[56] + 32);
    v15(v11, v0[54], v13);
    memcpy(v0 + 2, v14, 0x130uLL);
    v15(v12, v11, v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[66] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_13_55(v16);

    return FreeformStoryGenerator.generateMusicCuration(from:traits:storySession:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C7294A54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7294B6C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v3 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v3);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v9 = *(v0 + 480);

  if (v9)
  {
    *(*(*(*(v0 + 480) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56) + 34) = 1;
  }

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_1C7294C4C()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7294CCC()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7294D44(uint64_t a1)
{
  v3 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v1 + v8);
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1C6F738F4;

  return sub_1C7294294(a1, v12, v13, v1 + v5, v1 + v7, v16, v11, v1 + v10);
}

uint64_t FreeformStoryGenerator.generateMusicCuration(from:traits:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 416) = v4;
  *(v1 + 424) = v0;
  *(v1 + 400) = v5;
  *(v1 + 408) = v6;
  *(v1 + 384) = v7;
  *(v1 + 392) = v8;
  v9 = sub_1C754F2FC();
  *(v1 + 432) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 440) = v10;
  *(v1 + 448) = OUTLINED_FUNCTION_81_0();
  *(v1 + 456) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 464) = OUTLINED_FUNCTION_77();
  v12 = type metadata accessor for StoryMusicCurationOptions();
  *(v1 + 472) = v12;
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 480) = OUTLINED_FUNCTION_81_0();
  *(v1 + 488) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  OUTLINED_FUNCTION_76(v13);
  *(v1 + 496) = OUTLINED_FUNCTION_81_0();
  *(v1 + 504) = swift_task_alloc();
  v14 = type metadata accessor for StoryMusicCuration();
  *(v1 + 512) = v14;
  OUTLINED_FUNCTION_76(v14);
  *(v1 + 520) = OUTLINED_FUNCTION_81_0();
  *(v1 + 528) = swift_task_alloc();
  *(v1 + 536) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2173A0);
  OUTLINED_FUNCTION_76(v15);
  *(v1 + 544) = OUTLINED_FUNCTION_77();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C28);
  OUTLINED_FUNCTION_76(v16);
  *(v1 + 552) = OUTLINED_FUNCTION_77();
  v17 = sub_1C754DF6C();
  *(v1 + 560) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 568) = v18;
  *(v1 + 576) = OUTLINED_FUNCTION_81_0();
  *(v1 + 584) = swift_task_alloc();
  v19 = sub_1C754F38C();
  *(v1 + 592) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v1 + 600) = v20;
  *(v1 + 608) = OUTLINED_FUNCTION_77();
  *(v1 + 761) = *v3;
  *(v1 + 616) = *(v3 + 8);
  *(v1 + 632) = *(v3 + 24);
  v21 = *(v3 + 136);
  *(v1 + 640) = *(v3 + 120);
  *(v1 + 656) = v21;
  *(v1 + 672) = *(v3 + 152);
  *(v1 + 762) = *(v3 + 160);
  *(v1 + 763) = *(v3 + 161);
  memcpy((v1 + 16), (v3 + 216), 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C7295194()
{
  v121 = v0;
  v1 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754DF5C();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = sub_1C754FF1C();
  *(v0 + 680) = __swift_project_value_buffer(v2, qword_1EDD28B68);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    *v5 = 0;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "StoryOrchestrator music curation started", v5, 2u);
    OUTLINED_FUNCTION_37();
  }

  v6 = *(v0 + 408);

  __swift_project_boxed_opaque_existential_1(v6, v1[3]);
  sub_1C754F15C();
  sub_1C754F2CC();
  v7 = *(v0 + 512);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  sub_1C754F2DC();
  v15 = *(v0 + 761);
  v16 = sub_1C754FEEC();
  v17 = sub_1C755118C();
  v18 = OUTLINED_FUNCTION_21_0(v17);
  if (v15 == 1)
  {
    if (v18)
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v19);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v25 = *(v0 + 616);
    v26 = *(v0 + 504);
    v27 = *(v0 + 424);

    v28 = [v25 string];
    v29 = sub_1C755068C();
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v29;
    *(inited + 40) = v31;
    v33 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
    sub_1C75504FC();
    v34 = static PromptSuggestionReader.promptSuggestionByPromptText(_:in:sources:)(inited, v33, &unk_1F46A8708);
    swift_setDeallocating();
    sub_1C6FDC9DC();
    sub_1C6FE149C(v29, v31, v34, v26);
    type metadata accessor for PromptSuggestion(0);
    v35 = OUTLINED_FUNCTION_24_2();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, inited);
    v37 = *(v0 + 504);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C6FD7FC8(*(v0 + 504), &qword_1EC2155A8);
    }

    else
    {
      v45 = *(v37 + *(inited + 112));
      sub_1C7224968(v45);
      OUTLINED_FUNCTION_19_48();
      sub_1C72981C8(v37, v46);
      if (v45)
      {
        v47 = sub_1C75504FC();
        sub_1C716A74C(v47);
        goto LABEL_16;
      }
    }

    v45 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v48 = *(v0 + 496);
    sub_1C6FE149C(v29, v31, v34, v48);

    v49 = __swift_getEnumTagSinglePayload(v48, 1, inited);
    v50 = *(v0 + 496);
    if (v49 == 1)
    {
      sub_1C6FD7FC8(*(v0 + 496), &qword_1EC2155A8);
    }

    else
    {
      v51 = (v50 + *(inited + 112));
      v52 = *v51;
      v44 = v51[1];
      v53 = OUTLINED_FUNCTION_57_3();
      sub_1C7224968(v53);
      OUTLINED_FUNCTION_19_48();
      sub_1C72981C8(v50, v54);
      if (v52)
      {
        sub_1C75504FC();
        v55 = OUTLINED_FUNCTION_57_3();
        sub_1C716A74C(v55);
LABEL_21:
        sub_1C75504FC();
        sub_1C75504FC();
        v56 = sub_1C754FEEC();
        v57 = sub_1C755117C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *v58 = 136315394;
          v59 = sub_1C75504FC();
          v60 = MEMORY[0x1E69E6158];
          v61 = MEMORY[0x1CCA5D090](v59, MEMORY[0x1E69E6158]);
          v63 = v62;

          v64 = sub_1C6F765A4(v61, v63, &v117);

          *(v58 + 4) = v64;
          *(v58 + 12) = 2080;
          v65 = sub_1C75504FC();
          v66 = MEMORY[0x1CCA5D090](v65, v60);
          v68 = v67;

          v69 = sub_1C6F765A4(v66, v68, &v117);

          *(v58 + 14) = v69;
          _os_log_impl(&dword_1C6F5C000, v56, v57, "(Pre-curated) StoryOrchestrator music curation suggested prompt has pre-curated moods: %s, keywords: %s", v58, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_10_1();
        }

        goto LABEL_24;
      }
    }

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  if (v18)
  {
    v38 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v38);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v44 = 0;
  v45 = 0;
LABEL_24:
  sub_1C754F2DC();
  v115 = v44;
  v116 = v45;
  v70 = *(v0 + 424);
  v72 = *(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v73 = *(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
  v117 = *(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  v71 = v117;
  v118 = v72;
  v119 = v73;
  sub_1C7055874(v70 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController, v0 + 344);
  type metadata accessor for StoryMusicCurator();
  v74 = swift_allocObject();
  v75 = *(v0 + 368);
  v76 = *(v0 + 376);
  v77 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 344, v75);
  v78 = *(v75 - 8);
  v79 = OUTLINED_FUNCTION_77();
  (*(v78 + 16))(v79, v77, v75);
  v80 = v71;

  *(v0 + 688) = sub_1C74CFFC8(&v117, v79, v74, v75, v76);
  __swift_destroy_boxed_opaque_existential_1(v0 + 344);

  sub_1C754F2DC();
  v81 = *(v0 + 664);
  v82 = *(v0 + 656);
  v83 = *(v0 + 640);
  v102 = v83;
  v103 = *(v0 + 648);
  v104 = *(v0 + 632);
  v107 = *(v0 + 624);
  v109 = *(v0 + 552);
  v110 = *(v0 + 672);
  v84 = *(v0 + 480);
  v85 = *(v0 + 472);
  v114 = *(v0 + 448);
  v112 = *(v0 + 440);
  v113 = *(v0 + 432);
  v111 = *(v0 + 456);
  v105 = *(v0 + 762) | (*(v0 + 763) << 8);
  v108 = *(v0 + 392);
  memcpy((v0 + 96), (v0 + 16), 0x50uLL);
  type metadata accessor for AppleMusicSubscriptionState();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  sub_1C75504FC();
  v90 = v83;
  v91 = v82;
  sub_1C71AACA4(v90);
  v92 = v81;
  sub_1C75504FC();
  sub_1C7027A20(v0 + 16, v0 + 176);
  v93 = MEMORY[0x1E69E7CC0];
  v106 = OUTLINED_FUNCTION_55_22();
  v94 = OUTLINED_FUNCTION_55_22();
  *(v84 + v85[19]) = 2;
  *v84 = &unk_1F46A9218;
  *(v84 + 8) = 5;
  memcpy(&v120[6], (v0 + 96), 0x50uLL);
  v95 = v84 + v85[22];
  *v95 = 0;
  *(v95 + 8) = v107;
  *(v95 + 16) = v104;
  *(v95 + 24) = v102;
  *(v95 + 32) = v103;
  *(v95 + 40) = v91;
  *(v95 + 48) = v92;
  *(v95 + 56) = v110;
  *(v95 + 64) = v105;
  memcpy((v95 + 66), v120, 0x56uLL);
  *(v95 + 152) = v108;
  *(v95 + 160) = v116;
  *(v95 + 168) = v115;
  *(v84 + 16) = 9;
  *(v84 + 32) = &unk_1F46A91F0;
  *(v84 + 40) = 0;
  sub_1C75504FC();
  if (static StoryMusicCurator.isUserAllowedExplicitContent()())
  {
    v96 = &unk_1F46A9240;
  }

  else
  {
    v96 = v93;
  }

  sub_1C6FD7FC8(v109, &qword_1EC217C28);
  *(v84 + 56) = v96;
  *(v84 + 24) = 0;
  *(v84 + 48) = 1;
  *(v84 + v85[20]) = 0;
  *(v84 + v85[21]) = 0;
  *(v84 + 64) = v93;
  *(v84 + 72) = v93;
  sub_1C7091CBC();
  *(v84 + v85[15]) = v106;
  *(v84 + v85[16]) = v94;
  v97 = (v84 + v85[17]);
  *v97 = 0;
  v97[1] = 0;
  *(v84 + v85[18]) = 1064849900;
  sub_1C7298118();
  OUTLINED_FUNCTION_57_3();
  sub_1C7298170();
  __swift_storeEnumTagSinglePayload(v109, 0, 1, v85);
  sub_1C754F2BC();
  (*(v112 + 32))(v114, v111, v113);
  *(v0 + 760) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 696) = v98;
  *v98 = v99;
  v98[1] = sub_1C7295E2C;
  OUTLINED_FUNCTION_45_23();

  return StoryMusicCurator.curateMusic(with:using:eventRecorder:progressReporter:)();
}

uint64_t sub_1C7295E2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 704) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7295F28()
{
  v39 = v0;
  v2 = v0[88];
  v3 = v0[68];
  v4 = v0[64];
  sub_1C6FD7FC8(v3, &qword_1EC2173A0);
  OUTLINED_FUNCTION_22_45();
  sub_1C7298170();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_1C754F2DC();
  v0[89] = v2;
  if (v2)
  {
    v5 = v0[66];
    v6 = v0[61];

    OUTLINED_FUNCTION_0_125();
    sub_1C72981C8(v5, v7);
    OUTLINED_FUNCTION_4_68();
    sub_1C72981C8(v6, v8);
    OUTLINED_FUNCTION_12_49();
    sub_1C754DEAC();
    v9 = OUTLINED_FUNCTION_14_46();
    v10(v9);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_5_64(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    }

    v11 = v2;
    v12 = sub_1C754FEEC();
    sub_1C755119C();

    if (OUTLINED_FUNCTION_262_0())
    {
      OUTLINED_FUNCTION_41_0();
      v13 = OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_59_18(5.7779e-34);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_53_26(v14);
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v15, v16, "StoryOrchestrator music curation failed and will use an empty curation. Error: %@");
      sub_1C6FD7FC8(v13, &qword_1EC215190);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    v17 = swift_task_alloc();
    v0[94] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_3_78();
  }

  else
  {
    OUTLINED_FUNCTION_22_45();
    sub_1C7298170();
    v20 = sub_1C754FEEC();
    v21 = sub_1C755118C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[65];
    if (v22)
    {
      v24 = OUTLINED_FUNCTION_41_0();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136642819;
      v26 = StoryMusicCuration.description.getter();
      v28 = v27;
      OUTLINED_FUNCTION_0_125();
      sub_1C72981C8(v23, v29);
      v30 = sub_1C6F765A4(v26, v28, &v38);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "StoryOrchestrator got music curation: %{sensitive}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_37();
    }

    else
    {

      OUTLINED_FUNCTION_0_125();
      sub_1C72981C8(v23, v31);
    }

    v32 = v0[50];
    v0[90] = *(v32 + *(type metadata accessor for StoryGenerationSession(0) + 24));
    v18 = swift_task_alloc();
    v0[91] = v18;
    *v18 = v0;
    v19 = sub_1C7296254;
  }

  v18[1] = v19;
  v33 = OUTLINED_FUNCTION_10_60();

  return sub_1C7297C2C(v33, v34, v35, v36);
}

uint64_t sub_1C7296254()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C729633C()
{
  v1 = v0[90];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[61];
  sub_1C754DF3C();
  sub_1C754DEAC();
  v7 = v6;

  v8 = *(v3 + 8);
  v8(v2, v4);
  OUTLINED_FUNCTION_4_68();
  sub_1C72981C8(v5, v9);
  if (v1)
  {
    v10 = v0[90];
    v11 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics;
    *(*(*(v10 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56) + 16) = 0;
    v12 = *(*(v10 + v11) + 56);
    *(v12 + 24) = v7;
    *(v12 + 32) = 0;
  }

  OUTLINED_FUNCTION_2_85();
  sub_1C7298118();
  v13 = v0[89];
  sub_1C754F2EC();
  v14 = v0[76];
  if (v13)
  {
    v15 = v0[69];
    v16 = v0[68];
    v17 = v0[51];
    OUTLINED_FUNCTION_0_125();
    sub_1C72981C8(v18, v19);
    sub_1C6FD7FC8(v16, &qword_1EC2173A0);
    sub_1C6FD7FC8(v15, &qword_1EC217C28);
    OUTLINED_FUNCTION_58_21();
    v20 = OUTLINED_FUNCTION_57_3();
    (v8)(v20);
    OUTLINED_FUNCTION_11_50(v17);
    v21 = v0[76];
    OUTLINED_FUNCTION_6_69();
    (*(v22 + 8))(v21);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v24 = v0[75];
    v25 = v0[73];
    v30 = v0[74];
    v26 = v0[70];
    v27 = v0[69];
    v28 = v0[51];
    sub_1C6FD7FC8(v0[68], &qword_1EC2173A0);
    sub_1C6FD7FC8(v27, &qword_1EC217C28);
    OUTLINED_FUNCTION_58_21();
    v8(v25, v26);
    OUTLINED_FUNCTION_2_85();
    sub_1C7298118();
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    OUTLINED_FUNCTION_24_2();
    sub_1C754F1AC();
    (*(v24 + 8))(v14, v30);

    OUTLINED_FUNCTION_25();
  }

  return v23();
}

uint64_t sub_1C7296710()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C72967F8()
{
  v1 = v0[92];
  v2 = v0[67];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v4 = [v3 UUIDString];

  v5 = sub_1C755068C();
  v7 = v6;

  v2[6] = v5;
  v2[7] = v7;

  v8 = MEMORY[0x1E69E7CC0];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v2[2] = v8;
  v2[3] = v8;
  v2[4] = v8;
  v2[5] = v8;
  type metadata accessor for StoryMusicCurationDiagnostics();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0[93];
  sub_1C754F2EC();
  v14 = v0[76];
  v15 = v0[75];
  v22 = v0[74];
  v16 = v0[70];
  v17 = v0[69];
  v21 = v0[73];
  v18 = v0[51];
  sub_1C6FD7FC8(v0[68], &qword_1EC2173A0);
  sub_1C6FD7FC8(v17, &qword_1EC217C28);
  OUTLINED_FUNCTION_58_21();
  v13(v21, v16);
  OUTLINED_FUNCTION_2_85();
  sub_1C7298118();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v22);

  OUTLINED_FUNCTION_25();

  return v19();
}

uint64_t sub_1C7296BC0()
{
  v2 = v0[61];

  OUTLINED_FUNCTION_4_68();
  sub_1C72981C8(v2, v3);
  v4 = v0[88];
  OUTLINED_FUNCTION_12_49();
  sub_1C754DEAC();
  v5 = OUTLINED_FUNCTION_14_46();
  v6(v5);
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    OUTLINED_FUNCTION_5_64(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
  }

  v7 = v4;
  v8 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_59_18(5.7779e-34);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_53_26(v10);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v11, v12, "StoryOrchestrator music curation failed and will use an empty curation. Error: %@");
    sub_1C6FD7FC8(v9, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_10_1();
  }

  v13 = swift_task_alloc();
  v0[94] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_3_78();
  *(v14 + 8) = v15;
  v16 = OUTLINED_FUNCTION_10_60();

  return sub_1C7297C2C(v16, v17, v18, v19);
}

uint64_t sub_1C7296D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[84] = a4;
  v5 = sub_1C75519CC();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7296DF8, 0, 0);
}

uint64_t sub_1C7296DF8()
{
  OUTLINED_FUNCTION_49_0();
  *(v0 + 720) = 0xE00000001;
  *(v0 + 728) = 1;
  *(v0 + 732) = getpid();
  bzero((v0 + 16), 0x200uLL);
  *(v0 + 664) = 648;
  *(v0 + 48) = 0;
  sysctl((v0 + 720), 4u, (v0 + 16), (v0 + 664), 0, 0);
  if ((*(v0 + 49) & 8) != 0)
  {

    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    [objc_opt_self() storyMusicCurationTimeoutSeconds];
    sub_1C755201C();
    sub_1C7551E7C();
    v1 = swift_task_alloc();
    *(v0 + 704) = v1;
    *v1 = v0;
    v1[1] = sub_1C7296F70;
    OUTLINED_FUNCTION_57_0();

    return sub_1C730A318();
  }
}

uint64_t sub_1C7296F70()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 712) = v0;

  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72970C4()
{
  OUTLINED_FUNCTION_42();
  type metadata accessor for StoryMusicCuration();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C7550E1C();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1C7297158()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72971B4()
{
  OUTLINED_FUNCTION_49_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_22(v1);

  return sub_1C7296D38(v3, v4, v5, v6);
}

uint64_t FreeformStoryGenerator.musicCurationResults(from:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  v7 = type metadata accessor for StoryMusicCuration();
  *(v1 + 32) = v7;
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 40) = OUTLINED_FUNCTION_77();
  *(v1 + 48) = *v4;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C72972FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[6];
  v13 = v12[7];
  v15 = v12[3];
  v16 = v12[2];
  v17 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v18 = [v17 UUIDString];

  v19 = sub_1C755068C();
  v21 = v20;

  v16[6] = v19;
  v16[7] = v21;
  v22 = MEMORY[0x1E69E7CC0];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v16[2] = v22;
  v16[3] = v22;
  v16[4] = v22;
  v16[5] = v22;
  type metadata accessor for StoryMusicCurationDiagnostics();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = swift_task_alloc();
  v12[8] = v27;
  v27[2] = v14;
  v27[3] = v13;
  v27[4] = v15;
  v28 = swift_task_alloc();
  v12[9] = v28;
  v28[2] = v14;
  v28[3] = v13;
  v28[4] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v12[10] = v29;
  *v29 = v30;
  v29[1] = sub_1C72974A0;
  v32 = v12[4];
  v31 = v12[5];

  return MEMORY[0x1EEE6DE18](v31, &unk_1C757E548, v27, sub_1C72982B8, v28, 0, 0, v32, a9, a10, a11, a12);
}

uint64_t sub_1C72974A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72975AC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_125();
  sub_1C72981C8(v1, v2);
  OUTLINED_FUNCTION_2_85();
  sub_1C7298118();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EDD28B68);
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    v6 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v6);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C72976A8()
{
  OUTLINED_FUNCTION_123();

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = *(v0 + 88);
  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EDD28B68);
  v3 = OUTLINED_FUNCTION_24_2();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "StoryMusicCuration task failed with error = %@", v8, 0xCu);
    sub_1C6FD7FC8(v9, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C7297828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729784C, 0, 0);
}

uint64_t sub_1C729784C()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EDD28B68);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v14 = *(v0 + 40);

  *(v0 + 16) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = sub_1C729796C;
  v12 = *(v0 + 32);

  return sub_1C7181B48(v12);
}

uint64_t sub_1C729796C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7297AAC()
{
  type metadata accessor for StoryMusicCuration();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C7550E1C();
  sub_1C7550E1C();
  if (qword_1EDD09CF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, qword_1EDD28B68);
  oslog = sub_1C754FEEC();
  v1 = sub_1C755119C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 134217984;
    [objc_opt_self() storyMusicCurationTimeoutSeconds];
    *(v2 + 4) = v3;
    _os_log_impl(&dword_1C6F5C000, oslog, v1, "StoryMusicCuration timed out after %f seconds!", v2, 0xCu);
    MEMORY[0x1CCA5F8E0](v2, -1, -1);
  }
}

uint64_t sub_1C7297C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_1C754F38C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7297CF0, 0, 0);
}

uint64_t sub_1C7297CF0()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_1C754FF1C();
  v0[8] = __swift_project_value_buffer(v1, qword_1EDD28B68);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v10 = v0[3];
  v11 = v0[4];

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1C754F1CC();
  if (v11)
  {
    type metadata accessor for MusicCurationDiagnosticsGenerator(0);
    swift_allocObject();

    v13 = MusicCurationDiagnosticsGenerator.init(storyGenerationDiagnosticContext:)(v12);
    v0[9] = v13;

    return MEMORY[0x1EEE6DFA0](sub_1C7297EB0, v13, 0);
  }

  else
  {
    OUTLINED_FUNCTION_11_50(v0[3]);
    v14 = OUTLINED_FUNCTION_57_0();
    v15(v14);

    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_1C7297EB0()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C70D55CC(*(v0 + 16));
  *(v0 + 80) = 0;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C7297F38()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_11_50(*(v0 + 24));
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7297FD0()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_1C754FEEC();
  sub_1C755119C();

  v4 = OUTLINED_FUNCTION_262_0();
  v5 = *(v0 + 80);
  if (v4)
  {
    OUTLINED_FUNCTION_41_0();
    v6 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_59_18(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_53_26(v7);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v8, v9, "Failed to save music curation diagnostics: %@");
    sub_1C6FD7FC8(v6, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_50(*(v0 + 24));
  v10 = OUTLINED_FUNCTION_57_0();
  v11(v10);

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C7298118()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7298170()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C72981C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7298220()
{
  OUTLINED_FUNCTION_49_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_22(v1);

  return sub_1C7297828(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_53_26(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_22()
{

  return sub_1C75504DC();
}

uint64_t PhotoAnalysisPhotoLibraryService.curatedAssets(from:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298338()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_161_4();

  return sub_1C729961C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C7298418()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C7298540()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

void sub_1C72985B8(void *a1@<X0>, Class *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C72993F8([objc_allocWithZone(*a2) initWithServiceProvider_], a3, a4);
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonGrounding(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298648()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  v8 = OUTLINED_FUNCTION_27_34(22);

  return sub_1C72998C4(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C729870C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalTraits(for:momentUUIDByAssetUUID:extendedTokenCollectionAsData:sharingFilter:configurationAsData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298854()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v13;
  *(v2 + 48) = v14;
  *(v2 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 104) = v3;
  *v3 = v4;
  v3[1] = sub_1C7298944;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C7298944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7298A44()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisPhotoLibraryService.extendedCuratedAssets(from:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298AB8()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_161_4();

  return sub_1C729961C(v4, v5, v6, v7, v8, v9);
}

void PhotoAnalysisExecutiveService.init(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 photoAnalysisClient];
  if (v4)
  {
    v5 = v4;
    sub_1C72993F8([objc_allocWithZone(MEMORY[0x1E69BE618]) initWithServiceProvider_], &qword_1EC219FC8, a2);
  }

  else
  {
    sub_1C72AA28C();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t PhotoAnalysisExecutiveService.keepPADActive()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;

  return sub_1C729A254(v1, 0x414441507065656BLL, 0xED00006576697463, &unk_1C757E5D0, 0, 0, 0);
}

uint64_t sub_1C7298D0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalEventMoments(for:associatedPersonUUID:scopedMomentUUIDs:momentUUIDByAssetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7298E24()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v14;
  *(v3 + 32) = v15;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_1C7298F0C;
  OUTLINED_FUNCTION_154_2();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C7298F0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729900C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisMomentGraphService.requestFilterLocationsByMomentLocationHierarchy(for:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7299080()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = OUTLINED_FUNCTION_138_4();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1C7299148;
  OUTLINED_FUNCTION_154_2();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C7299148()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7299264()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisService.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C7299364()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219F58);
  __swift_project_value_buffer(v0, qword_1EC219F58);
  return sub_1C754FEFC();
}

void sub_1C72993F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  v7 = __swift_project_value_buffer(v6, qword_1EC219F58);
  (*(*(v6 - 8) + 16))(a3, v7, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = (a3 + *(v8 + 28));
  v10 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v11 = [v10 processName];

  v12 = sub_1C755068C();
  v14 = v13;

  *v9 = v12;
  v9[1] = v14;
  *(a3 + *(v8 + 32)) = a1;
}

uint64_t sub_1C7299528()
{
  if (qword_1EC213FA0 != -1)
  {
LABEL_8:
    swift_once();
  }

  v1 = qword_1EC219F70;
  do
  {
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    v2 = v1;
    atomic_compare_exchange_strong_explicit(&qword_1EC219F70, &v2, v1 + 1, memory_order_relaxed, memory_order_relaxed);
    v3 = v2 == v1;
    v1 = v2;
  }

  while (!v3);
  v4 = OUTLINED_FUNCTION_0_11();
  v7 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v4) + 28));
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](58, 0xE100000000000000);
  v5 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v5);

  return v7;
}

uint64_t sub_1C729961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C729963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178E0);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C72997A4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C72997A4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C72998C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72998F0, 0, 0);
}

uint64_t sub_1C72998F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A120);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C72997A4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1C7299A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7299A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 96);
  *(v12 + 144) = sub_1C7299528();
  *(v12 + 152) = v14;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v17 = OUTLINED_FUNCTION_40_30(4.8151e-34, v16);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v17, v18);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v19, v20, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v21 = swift_task_alloc();
  *(v12 + 160) = v21;
  v22 = OUTLINED_FUNCTION_41_28(v21, *(v12 + 104));
  *(v12 + 168) = v22;
  OUTLINED_FUNCTION_32_27(v22);
  v23 = swift_task_alloc();
  *(v12 + 176) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A118);
  OUTLINED_FUNCTION_31_30();
  *v23 = v24;
  v23[1] = sub_1C7299C1C;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

void sub_1C7299C1C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C7299D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void), void (*a12)(void), unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26;
  v30 = *(v26 + 40);
  v31 = *(v26 + 48);
  v32 = v26 + 40;
  if (*(v32 + 16))
  {
    v33 = OUTLINED_FUNCTION_57_0();
    sub_1C72AD52C(v33, v34, 1);
    sub_1C75504FC();
    sub_1C75504FC();
    v35 = OUTLINED_FUNCTION_57_0();
    sub_1C72AD52C(v35, v36, 1);
    v37 = sub_1C754FEEC();
    v38 = sub_1C755119C();

    v39 = OUTLINED_FUNCTION_57_0();
    sub_1C72AD538(v39, v40, 1);
    v41 = os_log_type_enabled(v37, v38);
    v42 = *(v29 + 152);
    if (v41)
    {
      a10 = v32 - 24;
      v43 = *(v29 + 144);
      v44 = *(v29 + 88);
      v45 = *(v29 + 96);
      v46 = OUTLINED_FUNCTION_142_1();
      a11 = swift_slowAlloc();
      a12 = a11;
      *v46 = 136315906;
      *(v46 + 4) = sub_1C6F765A4(v44, v45, &a12);
      *(v46 + 12) = 2080;
      sub_1C6F765A4(v43, v42, &a12);
      OUTLINED_FUNCTION_159_3();
      *(v46 + 14) = v44;
      *(v46 + 22) = 2080;
      *(v29 + 64) = v30;
      v47 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v48 = sub_1C75506EC();
      OUTLINED_FUNCTION_134_7(v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_84_9();

      *(v46 + 24) = v42;
      *(v46 + 32) = 2080;
      swift_getErrorValue();
      v53 = sub_1C7551EAC();
      OUTLINED_FUNCTION_134_7(v53, v54, v55, v56, v57);
      OUTLINED_FUNCTION_84_9();

      *(v46 + 34) = v42;
      _os_log_impl(&dword_1C6F5C000, v37, v38, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s", v46, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    swift_willThrow();
    sub_1C72AD538(*(v29 + 40), *(v29 + 48), *(v29 + 56));
    OUTLINED_FUNCTION_123_7();
  }

  else
  {
    v58 = *(v29 + 120);
    v59 = *(v29 + 152);
    if (v58)
    {
      a12 = v30;
      a13 = v31;
      v60 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v60, v61, 0);
      v62 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v62, v63, 0);
      sub_1C75504FC();
      sub_1C75504FC();
      v64 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v64, v65, 0);
      sub_1C6F9EE84(v58);
      v66 = sub_1C754FEEC();
      v67 = sub_1C755117C();

      v68 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD538(v68, v69, 0);
      v70 = os_log_type_enabled(v66, v67);
      v71 = *(v29 + 152);
      if (v70)
      {
        a9 = *(v29 + 144);
        a10 = *(v29 + 128);
        a11 = *(v29 + 120);
        v72 = OUTLINED_FUNCTION_20_1();
        a14 = OUTLINED_FUNCTION_146_5();
        *v72 = 136315650;
        v73 = OUTLINED_FUNCTION_82();
        *(v72 + 4) = sub_1C6F765A4(v73, v74, v75);
        *(v72 + 12) = 2080;
        v76 = sub_1C6F765A4(a9, v71, &a14);

        *(v72 + 14) = v76;
        *(v72 + 22) = 2080;
        a11(&a12);
        sub_1C6FC1640(a12, a13);
        v77 = OUTLINED_FUNCTION_82();
        v80 = sub_1C6F765A4(v77, v78, v79);

        *(v72 + 24) = v80;
        _os_log_impl(&dword_1C6F5C000, v66, v67, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s", v72, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        sub_1C6F6E5B4(a11);
      }

      else
      {
        v91 = *(v29 + 120);

        sub_1C6F6E5B4(v91);

        v92 = OUTLINED_FUNCTION_57_0();
        sub_1C6FC1640(v92, v93);
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v81 = OUTLINED_FUNCTION_57_0();
      sub_1C72AD52C(v81, v82, 0);
      v83 = sub_1C754FEEC();
      sub_1C755117C();

      v84 = OUTLINED_FUNCTION_262_0();
      v85 = *(v29 + 152);
      if (v84)
      {
        a11 = *(v29 + 144);
        v86 = *(v29 + 88);
        v87 = *(v29 + 96);
        OUTLINED_FUNCTION_23_1();
        a12 = OUTLINED_FUNCTION_41_20();
        *v59 = 136315394;
        *(v59 + 4) = sub_1C6F765A4(v86, v87, &a12);
        *(v59 + 12) = 2080;
        v88 = sub_1C6F765A4(a11, v85, &a12);

        *(v59 + 14) = v88;
        OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v89, v90, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded");
        OUTLINED_FUNCTION_152_3();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_10_1();
      }

      else
      {
      }
    }

    sub_1C72AD538(*(v29 + 40), *(v29 + 48), *(v29 + 56));
    v94 = *(v29 + 80);
    *v94 = v30;
    v94[1] = v31;
    OUTLINED_FUNCTION_123_7();
  }

  OUTLINED_FUNCTION_94_1();

  return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C729A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C729A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A108);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C729A3DC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729A3DC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C729A528, 0, 0);
}

uint64_t sub_1C729A528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A108);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C729A3DC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1C729A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729A6BC, 0, 0);
}

uint64_t sub_1C729A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[5].n128_u64[1];
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_170_3(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = swift_task_alloc();
  v12[9].n128_u64[1] = v22;
  v23 = OUTLINED_FUNCTION_41_28(v22, v12[6]);
  v12[10].n128_u64[0] = v23;
  OUTLINED_FUNCTION_32_27(v23);
  v24 = swift_task_alloc();
  v12[10].n128_u64[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E8);
  OUTLINED_FUNCTION_31_30();
  *v24 = v25;
  v24[1] = sub_1C729A850;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729A850()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729A970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C729A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D0);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C729AAF8;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729AAF8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729AC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C729AC44, 0, 0);
}

uint64_t sub_1C729AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A108);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C729ADAC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729ADAC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1C729AECC()
{
  v1 = v0;
  v4 = v0[5];
  v3 = v0 + 5;
  v2 = v4;
  v5 = v3[12];
  if (v3[1])
  {
    v6 = OUTLINED_FUNCTION_15_6();
    sub_1C6F93E20(v6, v7);
    sub_1C75504FC();
    sub_1C75504FC();
    v8 = OUTLINED_FUNCTION_15_6();
    sub_1C6F93E20(v8, v9);
    v10 = sub_1C754FEEC();
    v11 = sub_1C755119C();

    v12 = OUTLINED_FUNCTION_15_6();
    sub_1C6F9EDA4(v12, v13);
    v14 = os_log_type_enabled(v10, v11);
    v15 = v1[17];
    if (v14)
    {
      OUTLINED_FUNCTION_142_1();
      v67 = OUTLINED_FUNCTION_137_7();
      v18 = OUTLINED_FUNCTION_115_10(4.8153e-34, v67, v16, v17);
      OUTLINED_FUNCTION_98_11(v18);
      v19 = OUTLINED_FUNCTION_55_0();
      sub_1C6F765A4(v19, v20, v21);
      OUTLINED_FUNCTION_159_3();
      OUTLINED_FUNCTION_155_1();
      v1[7] = v2;
      v22 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v23 = sub_1C75506EC();
      OUTLINED_FUNCTION_134_7(v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_84_9();

      OUTLINED_FUNCTION_153_3();
      swift_getErrorValue();
      v28 = sub_1C7551EAC();
      OUTLINED_FUNCTION_134_7(v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_84_9();

      *(v5 + 34) = v15;
      OUTLINED_FUNCTION_140_5(&dword_1C6F5C000, v33, v11, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s");
      OUTLINED_FUNCTION_152_3();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    swift_willThrow();
    v51 = OUTLINED_FUNCTION_15_6();
    sub_1C6F9EDA4(v51, v52);
    OUTLINED_FUNCTION_100_9();
  }

  else
  {
    v34 = v1[13];
    sub_1C75504FC();
    sub_1C75504FC();
    if (v34)
    {
      sub_1C6F9EE84(v34);
      v35 = sub_1C754FEEC();
      v36 = sub_1C755117C();

      v37 = os_log_type_enabled(v35, v36);
      v38 = v1[17];
      if (v37)
      {
        v66 = v1[13];
        v39 = OUTLINED_FUNCTION_20_1();
        v68 = OUTLINED_FUNCTION_146_5();
        v42 = OUTLINED_FUNCTION_115_10(4.8152e-34, v68, v40, v41);
        OUTLINED_FUNCTION_98_11(v42);
        v43 = OUTLINED_FUNCTION_55_0();
        sub_1C6F765A4(v43, v44, v45);
        OUTLINED_FUNCTION_159_3();
        OUTLINED_FUNCTION_155_1();
        v46 = v66();
        OUTLINED_FUNCTION_134_7(v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_84_9();

        *(v39 + 24) = v38;
        _os_log_impl(&dword_1C6F5C000, v35, v36, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s", v39, 0x20u);
        OUTLINED_FUNCTION_152_3();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_10_1();

        sub_1C6F6E5B4(v66);
      }

      else
      {
        v63 = v1[13];

        sub_1C6F6E5B4(v63);
      }
    }

    else
    {
      v53 = sub_1C754FEEC();
      v54 = sub_1C755117C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_23_1();
        swift_slowAlloc();
        *v55 = 136315394;
        v56 = OUTLINED_FUNCTION_55_0();
        *(v55 + 4) = sub_1C6F765A4(v56, v57, v58);
        *(v55 + 12) = 2080;
        v59 = OUTLINED_FUNCTION_282();
        v62 = sub_1C6F765A4(v59, v60, v61);

        *(v55 + 14) = v62;
        _os_log_impl(&dword_1C6F5C000, v53, v54, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_100_9();
  }

  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C729B2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729B31C, 0, 0);
}

uint64_t sub_1C729B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A100);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C729B484;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729B484()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_1C729B5A4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 136);
    sub_1C75504FC();
    sub_1C75504FC();
    v4 = OUTLINED_FUNCTION_15_6();
    sub_1C6FDE42C(v4, v5);
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 136);
    if (v8)
    {
      v10 = *(v0 + 128);
      OUTLINED_FUNCTION_142_1();
      v75[0] = OUTLINED_FUNCTION_137_7();
      v13 = OUTLINED_FUNCTION_115_10(4.8153e-34, v75[0], v11, v12);
      OUTLINED_FUNCTION_98_11(v13);
      sub_1C6F765A4(v10, v9, v75);
      OUTLINED_FUNCTION_159_3();
      OUTLINED_FUNCTION_155_1();
      *(v0 + 56) = v2;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v15 = sub_1C75506EC();
      OUTLINED_FUNCTION_134_7(v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_84_9();

      OUTLINED_FUNCTION_153_3();
      swift_getErrorValue();
      v20 = sub_1C7551EAC();
      OUTLINED_FUNCTION_134_7(v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_84_9();

      *(v3 + 34) = v9;
      OUTLINED_FUNCTION_140_5(&dword_1C6F5C000, v25, v7, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    swift_willThrow();
    v49 = OUTLINED_FUNCTION_15_6();
    sub_1C6FDE438(v49, v50);
    OUTLINED_FUNCTION_123_7();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(v0 + 104);
  if (v26)
  {
    v74 = *(v0 + 40);
    v27 = OUTLINED_FUNCTION_12_5();
    sub_1C6FDE42C(v27, v28);
    sub_1C75504FC();
    sub_1C75504FC();
    v29 = OUTLINED_FUNCTION_12_5();
    sub_1C6FDE42C(v29, v30);
    sub_1C6F9EE84(v26);
    v31 = sub_1C754FEEC();
    v32 = sub_1C755117C();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 136);
    if (v33)
    {
      v35 = *(v1 + 104);
      v73 = *(v1 + 128);
      v36 = OUTLINED_FUNCTION_20_1();
      v75[0] = OUTLINED_FUNCTION_146_5();
      *v36 = 136315650;
      v37 = OUTLINED_FUNCTION_140_4();
      *(v36 + 4) = sub_1C6F765A4(v37, v38, v39);
      *(v36 + 12) = 2080;
      v40 = sub_1C6F765A4(v73, v34, v75);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2080;
      v41 = v35(&v74);
      v43 = v42;
      v44 = OUTLINED_FUNCTION_12_5();
      sub_1C6FDE438(v44, v45);
      v46 = sub_1C6F765A4(v41, v43, v75);

      *(v36 + 24) = v46;
      OUTLINED_FUNCTION_169_4(&dword_1C6F5C000, v47, v48, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();

      sub_1C6F6E5B4(v35);
    }

    else
    {

      v66 = OUTLINED_FUNCTION_140_4();
      sub_1C6F6E5B4(v66);

      v67 = OUTLINED_FUNCTION_12_5();
      sub_1C6FDE438(v67, v68);
    }
  }

  else
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v53 = OUTLINED_FUNCTION_12_5();
    sub_1C6FDE42C(v53, v54);
    v55 = sub_1C754FEEC();
    v56 = sub_1C755117C();

    if (os_log_type_enabled(v55, v56))
    {
      v58 = *(v0 + 72);
      v57 = *(v0 + 80);
      v59 = OUTLINED_FUNCTION_23_1();
      v75[0] = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_1C6F765A4(v58, v57, v75);
      *(v59 + 12) = 2080;
      v60 = OUTLINED_FUNCTION_66_4();
      v63 = sub_1C6F765A4(v60, v61, v62);

      *(v59 + 14) = v63;
      OUTLINED_FUNCTION_165_2(&dword_1C6F5C000, v64, v65, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }
  }

  v69 = OUTLINED_FUNCTION_12_5();
  sub_1C6FDE438(v69, v70);
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C729BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729BA94, 0, 0);
}

uint64_t sub_1C729BA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0F8);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C72997A4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1C729BBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729BC28, 0, 0);
}

uint64_t sub_1C729BC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[5].n128_u64[1];
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_170_3(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = swift_task_alloc();
  v12[9].n128_u64[1] = v22;
  v23 = OUTLINED_FUNCTION_41_28(v22, v12[6]);
  v12[10].n128_u64[0] = v23;
  OUTLINED_FUNCTION_32_27(v23);
  v24 = swift_task_alloc();
  v12[10].n128_u64[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E8);
  OUTLINED_FUNCTION_31_30();
  *v24 = v25;
  v24[1] = sub_1C729BDBC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729BDBC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729BEDC()
{
  v74 = v0;
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (*(v0 + 56))
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v4 = OUTLINED_FUNCTION_112_5();
    sub_1C725C8BC(v4, v5, 1);
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 144);
    if (v8)
    {
      v10 = *(v0 + 136);
      v70 = v7;
      v12 = *(v0 + 80);
      v11 = *(v0 + 88);
      v13 = OUTLINED_FUNCTION_142_1();
      v72[0] = swift_slowAlloc();
      *v13 = 136315906;
      *(v13 + 4) = sub_1C6F765A4(v12, v11, v72);
      *(v13 + 12) = 2080;
      v14 = sub_1C6F765A4(v10, v9, v72);

      *(v13 + 14) = v14;
      *(v13 + 22) = 2080;
      *(v0 + 64) = v2;
      v15 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v16 = sub_1C75506EC();
      OUTLINED_FUNCTION_149_4(v16, v17, v18, v19, v20, v21, v22);
      OUTLINED_FUNCTION_84_9();

      *(v13 + 24) = 2080;
      *(v13 + 32) = 2080;
      swift_getErrorValue();
      v23 = sub_1C7551EAC();
      OUTLINED_FUNCTION_149_4(v23, v24, v25, v26, v27, v28, v29);
      OUTLINED_FUNCTION_84_9();

      *(v13 + 34) = 2080;
      _os_log_impl(&dword_1C6F5C000, v6, v70, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s", v13, 0x2Au);
      OUTLINED_FUNCTION_167_4();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();
    }

    else
    {
    }

    swift_willThrow();
    v49 = OUTLINED_FUNCTION_112_5();
    sub_1C725C8AC(v49, v50, 1);
    OUTLINED_FUNCTION_100_9();

    return v51();
  }

  else
  {
    v30 = *(v0 + 112);
    v31 = *(v0 + 144);
    if (v30)
    {
      v72[0] = *(v0 + 40);
      v72[1] = v3;
      v32 = OUTLINED_FUNCTION_112_5();
      sub_1C725C8BC(v32, v33, 0);
      sub_1C75504FC();
      sub_1C75504FC();
      v34 = OUTLINED_FUNCTION_112_5();
      sub_1C725C8BC(v34, v35, 0);
      sub_1C6F9EE84(v30);
      v36 = sub_1C754FEEC();
      v37 = sub_1C755117C();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 144);
      if (v38)
      {
        v68 = *(v0 + 136);
        v69 = *(v0 + 112);
        v40 = OUTLINED_FUNCTION_20_1();
        v73 = OUTLINED_FUNCTION_146_5();
        *v40 = 136315650;
        v41 = OUTLINED_FUNCTION_82();
        *(v40 + 4) = sub_1C6F765A4(v41, v42, v43);
        *(v40 + 12) = 2080;
        v44 = sub_1C6F765A4(v68, v39, &v73);

        *(v40 + 14) = v44;
        *(v40 + 22) = 2080;
        v69(v72);
        OUTLINED_FUNCTION_141_5();
        v45 = OUTLINED_FUNCTION_82();
        v48 = sub_1C6F765A4(v45, v46, v47);

        *(v40 + 24) = v48;
        _os_log_impl(&dword_1C6F5C000, v36, v37, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s", v40, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        sub_1C6F6E5B4(v69);
      }

      else
      {
        v65 = *(v0 + 112);

        sub_1C6F6E5B4(v65);

        OUTLINED_FUNCTION_141_5();
      }

      OUTLINED_FUNCTION_141_5();
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v53 = OUTLINED_FUNCTION_112_5();
      sub_1C725C8BC(v53, v54, 0);
      v55 = sub_1C754FEEC();
      v56 = sub_1C755117C();

      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 144);
      if (v57)
      {
        v71 = *(v0 + 136);
        v59 = v3;
        v60 = *(v1 + 80);
        v61 = *(v1 + 88);
        OUTLINED_FUNCTION_23_1();
        v72[0] = OUTLINED_FUNCTION_41_20();
        *v31 = 136315394;
        *(v31 + 4) = sub_1C6F765A4(v60, v61, v72);
        *(v31 + 12) = 2080;
        v62 = sub_1C6F765A4(v71, v58, v72);

        *(v31 + 14) = v62;
        _os_log_impl(&dword_1C6F5C000, v55, v56, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded", v31, 0x16u);
        OUTLINED_FUNCTION_152_3();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_10_1();

        v63 = v2;
        v64 = v59;
      }

      else
      {

        v63 = OUTLINED_FUNCTION_112_5();
      }

      sub_1C725C8AC(v63, v64, 0);
    }

    v66 = OUTLINED_FUNCTION_112_5();

    return v67(v66);
  }
}

uint64_t sub_1C729C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729C484, 0, 0);
}

uint64_t sub_1C729C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_99_10();
  v14 = sub_1C7299528();
  OUTLINED_FUNCTION_43_26(v14, v15);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_120_8();

  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_77_11();
    OUTLINED_FUNCTION_41_20();
    OUTLINED_FUNCTION_81_15();
    v18 = OUTLINED_FUNCTION_40_30(4.8151e-34, v17);
    *(v13 + 14) = OUTLINED_FUNCTION_22_46(v18, v19);
    OUTLINED_FUNCTION_9_1(&dword_1C6F5C000, v20, v21, "[PhotoAnalysisService] Requesting '%s' with operationID '%s'");
    OUTLINED_FUNCTION_67_16();
    OUTLINED_FUNCTION_66_19();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = OUTLINED_FUNCTION_76_13();
  v23 = OUTLINED_FUNCTION_19_49(v22);
  OUTLINED_FUNCTION_14_47(v23);
  v24 = swift_task_alloc();
  OUTLINED_FUNCTION_105_8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D0);
  OUTLINED_FUNCTION_31_30();
  *v12 = v25;
  v12[1] = sub_1C729C5EC;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DE18](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C729C5EC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = OUTLINED_FUNCTION_17_54();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C729C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(char *), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26;
  v32 = v26[5];
  v30 = v26 + 5;
  v31 = v32;
  if (v30[1])
  {
    v33 = v29[17];
    v34 = OUTLINED_FUNCTION_159_4();
    sub_1C6F93E20(v34, v35);
    sub_1C75504FC();
    sub_1C75504FC();
    v36 = OUTLINED_FUNCTION_159_4();
    sub_1C6F93E20(v36, v37);
    v38 = sub_1C754FEEC();
    v39 = sub_1C755119C();

    v40 = OUTLINED_FUNCTION_159_4();
    sub_1C6F9EDA4(v40, v41);
    v42 = os_log_type_enabled(v38, v39);
    v43 = v29[17];
    if (v42)
    {
      a11 = v30 - 3;
      v44 = v31;
      v45 = v29[9];
      v46 = v29[10];
      OUTLINED_FUNCTION_142_1();
      a12 = OUTLINED_FUNCTION_137_7();
      a14 = a12;
      *v33 = 136315906;
      v47 = sub_1C6F765A4(v45, v46, &a14);
      OUTLINED_FUNCTION_98_11(v47);
      v48 = OUTLINED_FUNCTION_55_0();
      sub_1C6F765A4(v48, v49, v50);
      OUTLINED_FUNCTION_159_3();
      OUTLINED_FUNCTION_155_1();
      v29[7] = v44;
      v51 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v52 = sub_1C75506EC();
      OUTLINED_FUNCTION_149_4(v52, v53, v54, v55, v56, v57, v58);
      OUTLINED_FUNCTION_84_9();

      *(v33 + 24) = v43;
      *(v33 + 32) = v46;
      swift_getErrorValue();
      v59 = sub_1C7551EAC();
      OUTLINED_FUNCTION_149_4(v59, v60, v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_84_9();

      *(v33 + 34) = v43;
      OUTLINED_FUNCTION_140_5(&dword_1C6F5C000, v66, v39, "[PhotoAnalysisService] '%s' request with operationID '%s' failed with error %s with description %s");
      OUTLINED_FUNCTION_167_4();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    swift_willThrow();
    v88 = OUTLINED_FUNCTION_159_4();
    sub_1C6F9EDA4(v88, v89);
  }

  else
  {
    v67 = v29[13];
    if (v67)
    {
      HIBYTE(a13) = v31 & 1;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6F9EE84(v67);
      v68 = sub_1C754FEEC();
      v69 = sub_1C755117C();

      v70 = os_log_type_enabled(v68, v69);
      v71 = v29[17];
      if (v70)
      {
        a12 = v31;
        v72 = v29[16];
        a10 = v29[13];
        a11 = v29[14];
        v73 = OUTLINED_FUNCTION_20_1();
        a14 = OUTLINED_FUNCTION_146_5();
        *v73 = 136315650;
        v74 = OUTLINED_FUNCTION_140_4();
        *(v73 + 4) = sub_1C6F765A4(v74, v75, v76);
        *(v73 + 12) = 2080;
        v77 = sub_1C6F765A4(v72, v71, &a14);

        *(v73 + 14) = v77;
        *(v73 + 22) = 2080;
        v78 = a10(&a13 + 7);
        v85 = OUTLINED_FUNCTION_149_4(v78, v79, v80, v81, v82, v83, v84);

        *(v73 + 24) = v85;
        OUTLINED_FUNCTION_169_4(&dword_1C6F5C000, v86, v87, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded with result %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_79();

        sub_1C6F6E5B4(a10);
      }

      else
      {

        v101 = OUTLINED_FUNCTION_140_4();
        sub_1C6F6E5B4(v101);
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      v90 = sub_1C754FEEC();
      v91 = sub_1C755117C();

      if (os_log_type_enabled(v90, v91))
      {
        v93 = v29[9];
        v92 = v29[10];
        v94 = OUTLINED_FUNCTION_23_1();
        a14 = swift_slowAlloc();
        *v94 = 136315394;
        *(v94 + 4) = sub_1C6F765A4(v93, v92, &a14);
        *(v94 + 12) = 2080;
        v95 = OUTLINED_FUNCTION_66_4();
        v98 = sub_1C6F765A4(v95, v96, v97);

        *(v94 + 14) = v98;
        OUTLINED_FUNCTION_165_2(&dword_1C6F5C000, v99, v100, "[PhotoAnalysisService] '%s' request with operationID '%s' succeeded");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_94_1();

  return v104(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C729CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729CBC0, 0, 0);
}

uint64_t sub_1C729CBC0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_156_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C729CC94;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729CC94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729CDB4, 0, 0);
}

uint64_t sub_1C729CDB4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_156_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C729CC94;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C729CEB0, 0, 0);
}

uint64_t sub_1C729CEB0()
{
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_1C729CF88;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729CF88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D080()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C7550E5C();
  v2 = v0[4];
  if (v1)
  {
    v3 = sub_1C7550CBC();
    sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_147_4();
    sub_1C6FC1640(v0[2], v0[3]);
    *v2 = v3;
  }

  else
  {
    *v2 = *(v0 + 1);
  }

  *(v2 + 16) = v1 & 1;
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1C729D120()
{
  v1 = *(v0 + 32);
  *v1 = *(v0 + 88);
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return OUTLINED_FUNCTION_12_50();
}

uint64_t sub_1C729D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D160, 0, 0);
}

uint64_t sub_1C729D160()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219FC8);
  OUTLINED_FUNCTION_1_91();
  v13 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_56_20(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_1C729D228()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D348, 0, 0);
}

uint64_t sub_1C729D348()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
  OUTLINED_FUNCTION_1_91();
  v13 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_56_20(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_1C729D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D438, 0, 0);
}

uint64_t sub_1C729D438()
{
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1C729D510;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729D510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D630, 0, 0);
}

uint64_t sub_1C729D630()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_8(v1);

  return v4(v3);
}

uint64_t sub_1C729D6F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729D818, 0, 0);
}

uint64_t sub_1C729D818()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  OUTLINED_FUNCTION_1_91();
  v13 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v10 = OUTLINED_FUNCTION_56_20(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);

  return v10();
}

uint64_t sub_1C729D8E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729D9D8()
{
  OUTLINED_FUNCTION_42();
  if (sub_1C7550E5C())
  {
    sub_1C7550CBC();
    sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_147_4();
  }

  v0 = OUTLINED_FUNCTION_75_10();

  return v1(v0);
}

uint64_t sub_1C729DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729DA84, 0, 0);
}

uint64_t sub_1C729DA84()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_156_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1C729DB58;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729DB58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729DC50()
{
  OUTLINED_FUNCTION_42();
  if (sub_1C7550E5C())
  {
    sub_1C7550CBC();
    sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_147_4();
  }

  v0 = OUTLINED_FUNCTION_75_10();

  return v1(v0);
}

uint64_t sub_1C729DCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729DD04, 0, 0);
}

uint64_t sub_1C729DD04()
{
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1C729DDDC;
  v3 = OUTLINED_FUNCTION_26_36();

  return v4(v3);
}

uint64_t sub_1C729DDDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729DED4()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1C7550E5C();
  if (v1)
  {
    v2 = sub_1C7550CBC();
    sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_147_4();

    v3 = 0;
  }

  else
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  v4 = v0[1];

  return v4(v2, v3, v1 & 1);
}

uint64_t sub_1C729DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C729DFB8, 0, 0);
}

uint64_t sub_1C729DFB8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_130_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  OUTLINED_FUNCTION_1_91();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_8(v1);

  return v4(v3);
}

uint64_t sub_1C729E080()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C729E178()
{
  OUTLINED_FUNCTION_42();
  if (sub_1C7550E5C())
  {
    sub_1C7550CBC();
    sub_1C72ACEAC();
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_147_4();
  }

  v0 = OUTLINED_FUNCTION_75_10();

  return v1(v0);
}

uint64_t sub_1C729E1F4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_416;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729E6BC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_399;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729EB84(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_384;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729F04C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FE8);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219FC8);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_363;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729F514(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_338;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729F9DC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_324;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C729FEA4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FA0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_295;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A036C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_274;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A0834(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_232;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A0CFC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_211;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A11C4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ADA8C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_170;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_1C72A168C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v53 = a3;
  v9 = sub_1C754FF1C();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (sub_1C755068C() == a1 && v15 == a2)
  {
  }

  else
  {
    v51 = a4;
    v17 = sub_1C7551DBC();

    if ((v17 & 1) == 0)
    {
      v19 = v52 + 16;
      v50 = *(v52 + 16);
      v50(v14, v53, v9);
      sub_1C75504FC();
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();

      LODWORD(v48) = v21;
      v22 = os_log_type_enabled(v20, v21);
      v49 = a5;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v47 = v19;
        v24 = v23;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v24 = 136315650;
        sub_1C6F65BE8(0, &qword_1EC219FC0);
        v25 = sub_1C755204C();
        v26 = a5;
        v45 = v20;
        v28 = sub_1C6F765A4(v25, v27, aBlock);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1C6F765A4(v51, v26, aBlock);
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_1C6F765A4(a1, a2, aBlock);
        v29 = v45;
        _os_log_impl(&dword_1C6F5C000, v45, v48, "[PhotoAnalysisService] %s cancelling '%s' request with operationID '%s'.", v24, 0x20u);
        v30 = v46;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      else
      {
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
      v53 = *&v53[*(v31 + 32)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;
      sub_1C75504FC();
      v48 = sub_1C7550B3C();

      v50(v11, v14, v9);
      v33 = v52;
      v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v34, v11, v9);
      v38 = (v37 + v35);
      v39 = v33;
      v40 = v49;
      *v38 = v51;
      v38[1] = v40;
      v41 = (v37 + v36);
      *v41 = a1;
      v41[1] = a2;
      aBlock[4] = sub_1C72ACEA8;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C72A1D18;
      aBlock[3] = &block_descriptor_26;
      v42 = _Block_copy(aBlock);
      sub_1C75504FC();
      sub_1C75504FC();

      v43 = v48;
      [v53 cancelOperationsWithIdentifiers:v48 reply:v42];
      _Block_release(v42);

      return (*(v39 + 8))(v14, v9);
    }
  }

  return result;
}

void sub_1C72A1B54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  oslog = sub_1C754FEEC();
  v10 = sub_1C75511BC();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1C6F765A4(a3, a4, &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1C6F765A4(a5, a6, &v17);
    *(v11 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    v13 = sub_1C75504BC();
    v15 = sub_1C6F765A4(v13, v14, &v17);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_1C6F5C000, oslog, v10, "[PhotoAnalysisService] Cancelled '%s' request with operationID '%s'. Error by operationID: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }
}

uint64_t sub_1C72A1D18(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  v2 = sub_1C75504AC();

  v1(v2);
}

uint64_t PhotoAnalysisPhotoLibraryService.updateKeyAssetOfSocialGroups(withUUIDs:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A1DBC()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729A4FC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A1E74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A1F74()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A1FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A1FF4, 0, 0);
}

uint64_t sub_1C72A1FF4()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v0[22] = sub_1C7550F7C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[23] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A20F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A21F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A224C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisPhotoLibraryService.keyAssetUUIDOfSocialGroup(with:candidateAssetUUIDs:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A22D4()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(25);

  return sub_1C729A690(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A2388()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_127_5();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_74_11();
    OUTLINED_FUNCTION_244_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C72A24B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A2550, 0, 0);
}

uint64_t sub_1C72A2550()
{
  OUTLINED_FUNCTION_115_0();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1C7550F7C();
  OUTLINED_FUNCTION_84_9();
  v5 = sub_1C7550F7C();
  OUTLINED_FUNCTION_0_11();
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v6 = [v4 keyAssetUUIDOfSocialGroupWithPersonUUIDs:v1 candidateAssetUUIDs:v5 operationID:v2 error:v3];

  v7 = *v3;
  if (v6)
  {
    v8 = v0[3];
    v9 = sub_1C755068C();
    v11 = v10;
    v12 = v7;

    *v8 = v9;
    v8[1] = v11;
  }

  else
  {
    v14 = v7;
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v13();
}

uint64_t PhotoAnalysisPhotoLibraryService.keyAsset(from:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A26D8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  OUTLINED_FUNCTION_61_15(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_101_9(v2);
  OUTLINED_FUNCTION_161_4();

  return sub_1C729A690(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A27AC()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_127_5();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_74_11();
    OUTLINED_FUNCTION_244_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C72A28DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A2904, 0, 0);
}

uint64_t sub_1C72A2904()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_28();
  v0[26] = sub_1C7550B3C();
  v0[27] = sub_1C7550B3C();
  OUTLINED_FUNCTION_66_4();
  v0[28] = sub_1C755065C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v1 = OUTLINED_FUNCTION_52_22();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910);
  OUTLINED_FUNCTION_62(v2);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_89_11();
  v0[13] = v3;
  v0[14] = v1;
  OUTLINED_FUNCTION_25_32();
  [v4 v5];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1C72A2A28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A2B24()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  *v4 = v0[18];
  v4[1] = v5;

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1C72A2B94()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C72A2C10(uint64_t *a1)
{
  v1 = *a1;
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C72A2C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A2C5C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_28();
  v0[25] = sub_1C7550B3C();
  sub_1C70C0EC0();
  v0[26] = sub_1C755048C();

  OUTLINED_FUNCTION_66_4();
  v0[27] = sub_1C755065C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_52_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A110);
  OUTLINED_FUNCTION_62(v1);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_82_13();
  OUTLINED_FUNCTION_25_32();
  [v2 v3];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1C72A2DA4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A2EA0()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  **(v0 + 152) = *(v0 + 144);

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1C72A2F0C()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C72A2F88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    v7 = sub_1C7550B5C();

    return sub_1C6FF5698(v4, v7);
  }
}

uint64_t sub_1C72A301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A3044, 0, 0);
}

uint64_t sub_1C72A3044()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_24_28();
  v0[25] = sub_1C7550B3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  v0[26] = sub_1C755048C();
  OUTLINED_FUNCTION_66_4();
  v0[27] = sub_1C755065C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_52_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A110);
  OUTLINED_FUNCTION_62(v1);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_82_13();
  OUTLINED_FUNCTION_25_32();
  [v2 v3];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1C72A3184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisPhotoLibraryService.hastingsCuration(from:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 62) = *(a2 + 46);
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A32AC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_138_4();
  v0[11] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1C72A3398;
  OUTLINED_FUNCTION_161_4();

  return sub_1C729961C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A3398()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C72A34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A34E8, 0, 0);
}

uint64_t sub_1C72A34E8()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 184);
  sub_1C754DBCC();
  swift_allocObject();
  *(v0 + 200) = sub_1C754DBBC();
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 126) = *(v1 + 46);
  *(v0 + 96) = v3;
  *(v0 + 112) = v2;
  *(v0 + 80) = v4;
  sub_1C716A2FC();
  *(v0 + 208) = sub_1C754DBAC();
  *(v0 + 216) = v5;
  *(v0 + 224) = sub_1C7550B3C();
  *(v0 + 232) = sub_1C754DDCC();
  OUTLINED_FUNCTION_55_0();
  *(v0 + 240) = sub_1C755065C();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C72A36E0;
  v6 = OUTLINED_FUNCTION_108_8();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A110);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C72A2F88;
  *(v0 + 104) = &block_descriptor_309;
  *(v0 + 112) = v6;
  OUTLINED_FUNCTION_25_32();
  [v7 v8];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1C72A36E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A37DC()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[19];
  sub_1C6FC1640(v0[26], v0[27]);

  *v4 = v0[18];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_244_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C72A3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[30];
  v13 = v10[28];
  v12 = v10[29];
  v14 = v10[26];
  v15 = v10[27];
  swift_willThrow();
  sub_1C6FC1640(v14, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C72A38F4()
{
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
  return v1;
}

uint64_t PhotoAnalysisPhotoLibraryService.computeCacheDidLoad()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C72A3A0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729A4FC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A3A0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A3B4C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_computeCacheDidLoad_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A3C18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisPhotoLibraryService.requestPersonalizedSensingRefresh()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C72A3DC4;
  v3 = OUTLINED_FUNCTION_157_1(33);

  return sub_1C729A970(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72A3DC4()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1C72A3EBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A3ED0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 21));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D8);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_86_9();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_requestPersonalizedSensingRefreshWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A3FA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A40AC()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A4110(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1C6FF5694(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1C6FF0CA0(v9, a2);
  }
}

uint64_t PhotoAnalysisPhotoLibraryService.exportMomentContextData()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C72A4244;
  v3 = OUTLINED_FUNCTION_157_1(23);

  return sub_1C729A690(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72A4244()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_0_11();
  }

  return v5(v4);
}

uint64_t sub_1C72A433C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A435C, 0, 0);
}

uint64_t sub_1C72A435C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_89_11();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_exportMomentContextDataWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A442C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A4528()
{
  v2 = v0[19];
  v1 = v0[20];
  *v1 = v0[18];
  v1[1] = v2;
  return OUTLINED_FUNCTION_12_50();
}

uint64_t sub_1C72A4538()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisMomentGraphService.performGraphRebuild(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A45B0()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A4668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A4768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A478C, 0, 0);
}

uint64_t sub_1C72A478C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  v0[22] = sub_1C755048C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[23] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A48A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.performGraphIncrementalUpdate(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A49B8()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A4A94, 0, 0);
}

uint64_t sub_1C72A4A94()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  v0[22] = sub_1C755048C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[23] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t PhotoAnalysisMomentGraphService.performMemoryNodesRebuild(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A4BC4()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A4C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A4CA0, 0, 0);
}

uint64_t sub_1C72A4CA0()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126_7();
  v0[22] = sub_1C755065C();
  v0[2] = v0;
  v0[3] = sub_1C72A4D7C;
  OUTLINED_FUNCTION_108_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_33_28(v1);
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_80_10();
  OUTLINED_FUNCTION_168_4(v2, sel_performMemoryNodesRebuildForCategory_operationID_reply_);
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C72A4D7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A4E78()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t PhotoAnalysisMomentGraphService.performLocalMemoryEventElection(withElectionMode:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A4EE8()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  OUTLINED_FUNCTION_124_7();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A4FA4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A50A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A50CC, 0, 0);
}

uint64_t sub_1C72A50CC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v0[23] = sub_1C755065C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[24] = v1;
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A51C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A52BC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A5318()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.requestSynonymsDictionaries()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729AC18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A54C8, 0, 0);
}

uint64_t sub_1C72A54C8()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v2 + 24);
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v4 = [v3 requestSynonymsDictionariesWithOperationID:v0 error:v1];

  v5 = *v1;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestGraphSearchMetadata(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A55DC()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A5694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1C72A5728, 0, 0);
}

uint64_t sub_1C72A5728()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = sub_1C755065C();
  *(v0 + 16) = 0;
  v4 = sub_1C72AC2D0(v1, v3, v0 + 16, v2);

  v5 = *(v0 + 16);
  if (v4)
  {
  }

  else
  {
    v7 = v5;
    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestSearchIndexKeywords(for:of:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A584C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  OUTLINED_FUNCTION_124_7();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A59A0, 0, 0);
}

uint64_t sub_1C72A59A0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_160_4();
  v2 = sub_1C7550B3C();
  OUTLINED_FUNCTION_0_11();
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v4 = OUTLINED_FUNCTION_139_3(v3, sel_requestSearchIndexKeywordsForAssetCollectionUUIDs_ofType_operationID_error_);

  v5 = *v1;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestAssetSearchKeywords(for:of:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A5AC4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_138_4();
  v4 = OUTLINED_FUNCTION_104_7(v3);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_101_9(v6);
  OUTLINED_FUNCTION_124_7();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A5B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A5D18, 0, 0);
}

uint64_t sub_1C72A5D18()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_160_4();
  v2 = sub_1C7550B3C();
  OUTLINED_FUNCTION_0_11();
  sub_1C755065C();
  OUTLINED_FUNCTION_103_7();
  v4 = OUTLINED_FUNCTION_139_3(v3, sel_requestAssetSearchKeywordsForAssetCollectionUUIDs_ofType_operationID_error_);

  v5 = *v1;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_42_26();

  return v6();
}

uint64_t PhotoAnalysisMomentGraphService.requestSearchableAssetUUIDsBySocialGroup(for:of:isFullAnalysis:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A5E40()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104_7(v4);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_102_9(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_101_9(v7);
  OUTLINED_FUNCTION_13_56();
  OUTLINED_FUNCTION_244_0();

  return sub_1C729AC18(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1C72A5F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 24) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C72A5FB0, 0, 0);
}

uint64_t sub_1C72A5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v26 = *MEMORY[0x1E69E9840];
  v10 = *(v9 + 64);
  v11 = *(v9 + 56);
  v12 = *(v9 + 24);
  v13 = sub_1C7550B3C();
  v14 = sub_1C755065C();
  *(v9 + 16) = 0;
  v15 = [v12 requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:v13 ofType:v11 isFullAnalysis:v10 operationID:v14 error:v9 + 16];

  v16 = *(v9 + 16);
  if (v15)
  {
  }

  else
  {
    OUTLINED_FUNCTION_145_4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t PhotoAnalysisMomentGraphService.performGraphSearchEntityRankingDonation()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729AC18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A61C0, 0, 0);
}

uint64_t sub_1C72A61C0()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v1 = sub_1C755065C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A629C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.requestExtendedTokenCollection(from:representativeMomentUUIDByAssetUUID:sharingFilter:personOrPetUUIDsWithNegativeFeedback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A63B4()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v15 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v15;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v5;
  *v5 = v6;
  v5[1] = sub_1C72A64B0;
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C72A64B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A65B0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[27] = a8;
  v9[28] = a9;
  v9[25] = a6;
  v9[26] = a7;
  v9[23] = a4;
  v9[24] = a5;
  v9[21] = a2;
  v9[22] = a3;
  v9[20] = a1;
  return OUTLINED_FUNCTION_37_25();
}

uint64_t sub_1C72A6634()
{
  v9 = v0[28];
  v1 = sub_1C754DDCC();
  v0[29] = v1;
  v2 = sub_1C755048C();
  v0[30] = v2;
  v3 = sub_1C7550F7C();
  v0[31] = v3;
  v4 = sub_1C755065C();
  v0[32] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72A67D8;
  v5 = OUTLINED_FUNCTION_108_8();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  v0[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_87_14();
  v0[13] = v6;
  v0[14] = v5;
  [v7 requestExtendedTokenCollectionFromQueryTokensAsData:v1 representativeMomentUUIDByAssetUUID:v2 personOrPetUUIDsWithNegativeFeedback:v3 sharingFilter:v9 operationID:v4 reply:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72A67D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A68D4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_97_8(*(v0 + 256));

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_1C72A6944()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C72A69C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C6FF5694(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = sub_1C754DDEC();
    v11 = v10;

    return sub_1C6FF0C9C(v5, v9, v11);
  }
}

uint64_t PhotoAnalysisMomentGraphService.requestMeanings(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A6A78()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(29);

  return sub_1C729B2F0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A6B30()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C72A6C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A6C80, 0, 0);
}

uint64_t sub_1C72A6C80()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550F7C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199B0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  v0[12] = sub_1C723F370;
  v0[13] = &block_descriptor_238;
  v0[14] = v3;
  v5 = OUTLINED_FUNCTION_28_25();
  [v5 v6];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1C72A6D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A6E84()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  **(v0 + 152) = *(v0 + 144);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1C72A6EE8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72A6F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v14;
  *(v8 + 224) = v13;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a3;
  *(v8 + 184) = a4;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72A6FA4()
{
  OUTLINED_FUNCTION_95_3();
  v1 = v0;
  v7 = v0[21];
  v0[31] = sub_1C7550B3C();
  v0[32] = sub_1C755048C();
  v0[33] = sub_1C754DDCC();
  OUTLINED_FUNCTION_55_0();
  v0[34] = sub_1C754DDCC();
  v0[35] = sub_1C755065C();
  v0[2] = v0;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v2 = OUTLINED_FUNCTION_52_22();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  v1[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v1[13] = v3;
  v1[14] = v2;
  [v7 requestPersonalTraitsForAssetUUIDs_momentUUIDByAssetUUID_extendedTokenCollectionAsData_configurationAsData_sharingFilter_operationID_reply_];
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1C72A7140()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A723C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  OUTLINED_FUNCTION_97_8(*(v0 + 280));

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C72A72B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[35];
  v13 = v10[33];
  v12 = v10[34];
  v15 = v10[31];
  v14 = v10[32];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C72A7334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[28] = a9;
  v10[29] = a10;
  v10[26] = a7;
  v10[27] = a8;
  v10[24] = a5;
  v10[25] = a6;
  v10[22] = a3;
  v10[23] = a4;
  v10[20] = a1;
  v10[21] = a2;
  return OUTLINED_FUNCTION_37_25();
}

uint64_t sub_1C72A735C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = v0[28];
  v2 = sub_1C754DDCC();
  v0[30] = v2;
  OUTLINED_FUNCTION_0_11();
  v3 = sub_1C755065C();
  v0[31] = v3;
  if (v1)
  {
    v1 = sub_1C7550F7C();
  }

  v0[32] = v1;
  v4 = v0[21];
  v5 = sub_1C755048C();
  v0[33] = v5;
  v6 = sub_1C755065C();
  v0[34] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72A7514;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C72A69C0;
  v0[13] = &block_descriptor_352;
  v0[14] = v7;
  [v4 requestPersonalEventMomentsForQueryTokenAsData:v2 associatedPersonUUID:v3 scopedMomentUUIDs:v1 momentUUIDByAssetUUID:v5 operationID:v6 reply:v0 + 10];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A7514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A7610()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  OUTLINED_FUNCTION_97_8(*(v0 + 272));

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C72A7688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[34];
  v13 = v10[32];
  v12 = v10[33];
  v15 = v10[30];
  v14 = v10[31];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t PhotoAnalysisMomentGraphService.requestCharacterCurationInfo(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A771C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  v2 = OUTLINED_FUNCTION_116_9();
  v0[6] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_1C72A77E4;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C72A77E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A78E4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A7940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A7968, 0, 0);
}

uint64_t sub_1C72A7968()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  v0[25] = sub_1C7550F7C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[26] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A7A6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A7B68()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_97_8(*(v0 + 208));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A7BC4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalTraitsForHighlights(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A7C48()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(34);

  return sub_1C729BA68(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A7D00()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C72A7E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A7E50, 0, 0);
}

uint64_t sub_1C72A7E50()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550B3C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  OUTLINED_FUNCTION_52_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0F0);
  OUTLINED_FUNCTION_62(v3);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_83_6();
  v4 = OUTLINED_FUNCTION_28_25();
  [v4 v5];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1C72A7F40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A803C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8);
    v7 = sub_1C7550B5C();

    return sub_1C6FF5698(v4, v7);
  }
}

uint64_t PhotoAnalysisMomentGraphService.requestPersonalTraitsForAssets(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A80F4()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(30);

  return sub_1C729BA68(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A81D4, 0, 0);
}

uint64_t sub_1C72A81D4()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550B3C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  OUTLINED_FUNCTION_52_22();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0F0);
  OUTLINED_FUNCTION_62(v3);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_83_6();
  v4 = OUTLINED_FUNCTION_28_25();
  [v4 v5];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t PhotoAnalysisMomentGraphService.performPromptSuggestionCaching()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  v1[1] = sub_1C7298D0C;
  OUTLINED_FUNCTION_150_5();
  OUTLINED_FUNCTION_35_19();

  return sub_1C729AC18(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8394, 0, 0);
}

uint64_t sub_1C72A8394()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v1 = sub_1C755065C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t PhotoAnalysisMomentGraphService.fetchUnvalidatedPromptSuggestions(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A8484()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  v2 = OUTLINED_FUNCTION_116_9();
  v0[6] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_1C72A854C;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C72A854C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a2;
  v5[22] = a5;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8670, 0, 0);
}

uint64_t sub_1C72A8670()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_55_23();
  v3 = v0[21];
  v2 = v0[22];
  v0[2] = v4;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v5 = OUTLINED_FUNCTION_52_22();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v6);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v7;
  v0[14] = v5;
  [v3 fetchUnvalidatedPromptSuggestionsWithFetchLimit:v2 reply:v1 + 80];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A874C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A8858()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PhotoAnalysisMomentGraphService.generateWhimsicalPromptSuggestions()()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1C72A8974;
  OUTLINED_FUNCTION_35_19();

  return sub_1C7299A58(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A8974()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A8A90(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8AB0, 0, 0);
}

uint64_t sub_1C72A8AB0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_generateWhimsicalPromptSuggestionsWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1C72A8B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.generateContextualPromptSuggestions()()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1C72A8D34;
  OUTLINED_FUNCTION_35_19();

  return sub_1C7299A58(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72A8D34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A8E2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A8E4C, 0, 0);
}

uint64_t sub_1C72A8E4C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_55_23();
  v0[2] = v2;
  OUTLINED_FUNCTION_118_7((v0 + 18));
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  OUTLINED_FUNCTION_144_5(v6, sel_generateContextualPromptSuggestionsWithReply_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t PhotoAnalysisMomentGraphService.requestPrewarmQueryAnnotator(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A8F30()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72A8FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72A900C, 0, 0);
}

uint64_t sub_1C72A900C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126_7();
  v0[22] = sub_1C755065C();
  v0[2] = v0;
  v0[3] = sub_1C72A90E8;
  OUTLINED_FUNCTION_108_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_33_28(v1);
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_80_10();
  OUTLINED_FUNCTION_168_4(v2, sel_requestPrewarmQueryAnnotatorForOriginatorPID_operationID_reply_);
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C72A90E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t PhotoAnalysisMomentGraphService.debugValidation(fromQueryTemplate:person:city:place:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[11] = a10;
  v11[12] = v10;
  v11[9] = a8;
  v11[10] = a9;
  v11[7] = a6;
  v11[8] = a7;
  v11[5] = a4;
  v11[6] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[2] = a1;
  return OUTLINED_FUNCTION_37_25();
}

uint64_t sub_1C72A9210()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v7 = *(v0 + 64);
  v6 = *(v0 + 80);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  *(v3 + 64) = v7;
  *(v3 + 80) = v6;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1C72A92F8;
  v9 = OUTLINED_FUNCTION_27_34(24);

  return sub_1C729BBFC(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C72A92F8()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_127_5();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_74_11();
    OUTLINED_FUNCTION_244_0();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C72A9428()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A9484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v12;
  *(v8 + 248) = v13;
  *(v8 + 208) = v10;
  *(v8 + 224) = v11;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A94C0, 0, 0);
}

uint64_t sub_1C72A94C0()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = v0[25];
  v2 = sub_1C755065C();
  v0[32] = v2;
  if (v1)
  {
    v1 = sub_1C755065C();
  }

  v0[33] = v1;
  if (v0[27])
  {
    v3 = sub_1C755065C();
  }

  else
  {
    v3 = 0;
  }

  v0[34] = v3;
  if (v0[29])
  {
    v4 = sub_1C755065C();
  }

  else
  {
    v4 = 0;
  }

  v0[35] = v4;
  if (v0[31])
  {
    v5 = sub_1C755065C();
  }

  else
  {
    v5 = 0;
  }

  v0[36] = v5;
  v6 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72A9670;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C73A3188;
  v0[13] = &block_descriptor_176;
  v0[14] = v7;
  [v6 debugValidationFromQueryTemplate:v2 person:v1 city:v3 place:v4 time:v5 reply:v0 + 10];
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A9670()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A976C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[19];
  v6 = v0[20];
  *v6 = v0[18];
  v6[1] = v7;

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_1C72A97F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[36];
  v13 = v10[34];
  v12 = v10[35];
  v15 = v10[32];
  v14 = v10[33];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t PhotoAnalysisMomentGraphService.requestQueryAnnotation(for:originatorPID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72A9888()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v13 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v13;
  *(v2 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v3;
  *v3 = v4;
  v3[1] = sub_1C72A9968;
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_13_56();

  return sub_1C7299A58(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C72A9968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72A9A68()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72A9AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72A9AF0, 0, 0);
}

uint64_t sub_1C72A9AF0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_126_7();
  v3 = v1[26];
  v4 = v1[21];
  v5 = sub_1C755065C();
  v1[27] = v5;
  OUTLINED_FUNCTION_66_4();
  v6 = sub_1C755065C();
  v1[28] = v6;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1C72A9C10;
  v7 = OUTLINED_FUNCTION_108_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_33_28(v8);
  OUTLINED_FUNCTION_162_4(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_87_14();
  v1[13] = v9;
  v1[14] = v7;
  [v4 requestQueryAnnotationForQuery:v5 originatorPID:v3 operationID:v6 reply:v2];

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1C72A9C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A9D0C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_97_8(*(v0 + 224));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72A9D68()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72A9DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72A9E00, 0, 0);
}

uint64_t sub_1C72A9E00()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_151_4();
  v0[26] = sub_1C755065C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[27] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72A9EEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72A9FE8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A128);
  sub_1C72AD5EC();
  OUTLINED_FUNCTION_0_11();
  sub_1C754DB5C();
  v4 = *(v0 + 160);

  sub_1C6FC1640(v2, v3);
  *v4 = *(v0 + 80);
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C72AA0F4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72AA164()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A9DD8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AA1F8()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A301C(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1C72AA28C()
{
  result = qword_1EC219F78;
  if (!qword_1EC219F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219F78);
  }

  return result;
}

uint64_t sub_1C72AA2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C72AA308, 0, 0);
}

uint64_t sub_1C72AA308()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_151_4();
  v0[26] = sub_1C754DDCC();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[27] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AA3F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AA4F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_97_8(*(v0 + 216));

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72AA54C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.validatePromptSuggestions(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72AA5D0()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_47_20();
  OUTLINED_FUNCTION_13_56();

  return sub_1C729AC18(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72AA688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72AA6AC, 0, 0);
}

uint64_t sub_1C72AA6AC()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_24_28();
  OUTLINED_FUNCTION_96_8();
  v0[24] = sub_1C7550B3C();
  OUTLINED_FUNCTION_282();
  sub_1C755065C();
  OUTLINED_FUNCTION_88_10();
  v0[25] = v1;
  v0[2] = v2;
  OUTLINED_FUNCTION_109_9();
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0E0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_6_70();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_28_25();
  [v6 v7];
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AA7A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AA89C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[24];
  v2 = v0[25];
  sub_1C6FC1640(v0[18], v0[19]);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t PhotoAnalysisMomentGraphService.generateMagicSlotSuggestions(options:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72AA914()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_116_9();
  OUTLINED_FUNCTION_34_26(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_91_10(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_90_13(v2);
  OUTLINED_FUNCTION_73_15();
  v4 = OUTLINED_FUNCTION_27_34(28);

  return sub_1C729C458(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C72AA9CC()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3 & 1);
  }
}

uint64_t sub_1C72AAB04()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1C72AAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72AAB8C, 0, 0);
}

uint64_t sub_1C72AAB8C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  v1 = sub_1C755048C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v0[7] = v0 + 23;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A0D8);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_86_9();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AAC98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AAD94()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 168);
  **(v0 + 144) = *(v0 + 184);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C72AADF8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C72AAE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C72AAE94()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_24_28();
  v1 = sub_1C755065C();
  OUTLINED_FUNCTION_95_12(v1);
  v0[2] = v2;
  v3 = OUTLINED_FUNCTION_52_22();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  OUTLINED_FUNCTION_57_23(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_5_65();
  v0[13] = v5;
  v0[14] = v3;
  v6 = OUTLINED_FUNCTION_69_17();
  [v6 v7];
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C72AAF70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C72AB06C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1C72AB0C4()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72AA2E0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB158()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A1FD0(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB1E8()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A24B8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB27C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A28DC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB310()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A34C0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C72AB3A4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A4768(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB434()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A4A70(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB4C4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_9_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_244_0();

  return sub_1C72A4C7C(v3, v4, v5, v6, v7);
}

uint64_t sub_1C72AB554()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_69(v1);
  OUTLINED_FUNCTION_62_16();
  OUTLINED_FUNCTION_142();

  return sub_1C72A50A4(v3, v4, v5, v6, v7, v8);
}