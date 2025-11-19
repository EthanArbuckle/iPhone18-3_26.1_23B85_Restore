uint64_t sub_19A4A27D0()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[21];
  sub_19A2F3FA0(v0[17], &qword_1EAFA0C30);
  sub_19A4AF7A4(v4, type metadata accessor for PipelineConfiguration);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  v5 = v0[1];

  return v5();
}

BOOL sub_19A4A290C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  if ((v10 & 1) == 0)
  {
    sub_19A33546C(a3, &v16, &qword_1EAFA0440);
    if (v18)
    {
      sub_19A2EA460(&v16, v20);
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      v13 = v21;
      v14 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v18 = &type metadata for ProgressInfo;
      v19 = &off_1F0DB3EB0;
      *&v16 = v11;
      *(&v16 + 1) = v12;
      v17 = 0;
      (*(v14 + 16))(a4, a2, &v16, v13, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(&v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {
      sub_19A2F3FA0(&v16, &qword_1EAFA0440);
    }
  }

  return (v10 & 1) == 0;
}

void sub_19A4A2A50(uint64_t a1@<X8>)
{
  static AppleDiffusionSketchConditioner.getInputImageDimensions()();
  *a1 = v2;
  *(a1 + 8) = v3;
  strcpy((a1 + 16), "ARGB");
}

uint64_t sub_19A4A2C1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - v3;
  sub_19A57119C();
  v5 = sub_19A57147C();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = static ModelCatalogHelpers.localizedCatalogBundleIdentifier(nonLocalizedIdentifier:)(v5, v7);
  if (v0)
  {
  }

  else if (v9)
  {
    v5 = v8;
  }

  return v5;
}

void sub_19A4A2D74(void *a1@<X8>)
{
  a1[3] = &type metadata for AppleDiffusionImageGenerator.Descriptor;
  a1[4] = &off_1F0DB3E58;
  *a1 = 0xD000000000000029;
  a1[1] = 0x800000019A596020;
}

uint64_t sub_19A4A2DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A2E78, v3, 0);
}

uint64_t sub_19A4A2E78()
{
  sub_19A4AF804(v0[4], v0[8], type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[2];
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2608) + 48);
    sub_19A2EA460(v2, v3);
    sub_19A3351B8(v2 + v4, v0[3], &unk_1EAFA2BF0);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[6];
    v8 = *v2;
    v0[9] = *v2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2600);
    sub_19A3351B8(v2 + *(v9 + 48), v7, &unk_1EAFA2BF0);
    v10 = swift_task_alloc();
    v0[10] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    *v10 = v0;
    v10[1] = sub_19A4A3068;
    v13 = v0[2];
    v14 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v13, v8, v11, v12, v14);
  }
}

uint64_t sub_19A4A3068()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_19A4A322C;
  }

  else
  {
    v4 = sub_19A4A3194;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A3194()
{

  sub_19A3351B8(v0[6], v0[3], &unk_1EAFA2BF0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A4A322C()
{
  v1 = *(v0 + 48);

  sub_19A2F3FA0(v1, &unk_1EAFA2BF0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A4A32BC(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = type metadata accessor for ConcreteAdapter();
  v3[46] = v4;
  v5 = *(v4 - 8);
  v3[47] = v5;
  v3[48] = *(v5 + 64);
  v3[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  v3[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2610);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v3[55] = swift_task_alloc();
  v6 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  v3[56] = v6;
  v7 = *(v6 - 8);
  v3[57] = v7;
  v3[58] = *(v7 + 64);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A3514, v2, 0);
}

uint64_t sub_19A4A3514()
{
  v1 = *(v0 + 360);
  v2 = **(v0 + 352);
  *(v0 + 656) = v2;
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (*(v3 + 16))
  {

    v4 = sub_19A31FBD4(v2);
    if (v5)
    {
      v7 = *(v0 + 496);
      v6 = *(v0 + 504);
      sub_19A4AF804(*(v3 + 56) + *(*(v0 + 456) + 72) * v4, v7, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);

      sub_19A4AF61C(v7, v6, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
      v8 = swift_task_alloc();
      *(v0 + 512) = v8;
      *v8 = v0;
      v8[1] = sub_19A4A40C8;
      v9 = *(v0 + 504);
      v10 = *(v0 + 440);

      return sub_19A4A2DA8(v0 + 136, v10, v9);
    }

    v90 = v2;

    v3 = *(v1 + 112);
  }

  else
  {
    v90 = v2;
  }

  *(v0 + 528) = v3;
  v91 = *(v0 + 456);
  v12 = -1;
  v13 = -1 << *(v3 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v3 + 64);
  v15 = (63 - v13) >> 6;

  v21 = 0;
  if (v14)
  {
    while (1)
    {
      v22 = v21;
LABEL_19:
      v25 = *(v0 + 488);
      v26 = *(v0 + 424);
      v27 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v28 = v27 | (v22 << 6);
      v29 = *(*(v3 + 48) + v28);
      sub_19A4AF804(*(v3 + 56) + *(v91 + 72) * v28, v25, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2618);
      v31 = *(v30 + 48);
      *v26 = v29;
      sub_19A4AF61C(v25, &v26[v31], type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
      (*(*(v30 - 8) + 56))(v26, 0, 1, v30);
      v24 = v22;
LABEL_20:
      v32 = *(v0 + 432);
      sub_19A3351B8(*(v0 + 424), v32, &qword_1EAFA2610);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2618);
      v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
      v35 = *(v0 + 448);
      if (v34 == 1)
      {
        break;
      }

      sub_19A4AF61C(*(v0 + 432) + *(v33 + 48), *(v0 + 480), type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = *(v0 + 352);
        v44 = *(v0 + 480);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2608);
        *(v0 + 536) = v45;
        v46 = *(v45 + 48);
        sub_19A2EA460(v44, v0 + 56);
        sub_19A2F3FA0(v44 + v46, &unk_1EAFA2BF0);
        v47 = sub_19A4AED60(v43, v0 + 56);
        *(v0 + 544) = v47;
        v67 = v47;
        v69 = *(v0 + 448);
        v68 = *(v0 + 456);
        v70 = *(v0 + 416);
        v71 = *(v0 + 368);
        v72 = *(v0 + 376);
        v73 = *(v0 + 352);
        v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2600) + 48);
        *v70 = v67;
        sub_19A4AF804(v73, v70 + v74, type metadata accessor for ConcreteAdapter);
        v75 = *(v72 + 56);
        *(v0 + 552) = v75;
        *(v0 + 560) = (v72 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v75(v70 + v74, 0, 1, v71);
        swift_storeEnumTagMultiPayload();
        v76 = *(v68 + 56);
        *(v0 + 568) = v76;
        *(v0 + 576) = (v68 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v76(v70, 0, 1, v69);
        swift_beginAccess();

        sub_19A49FF18(v70, v90);
        swift_endAccess();
        v77 = swift_task_alloc();
        *(v0 + 584) = v77;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
        *v77 = v0;
        v77[1] = sub_19A4A4324;
        v20 = MEMORY[0x1E69E7288];
        v16 = v0 + 96;
        v17 = v67;
        goto LABEL_30;
      }

      v16 = sub_19A4AF7A4(*(v0 + 480), type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
      v21 = v24;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    v38 = *(v0 + 456);
    v39 = *(v0 + 408);
    v40 = *(v0 + 360);

    v41 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
    swift_beginAccess();
    sub_19A33546C(v40 + v41, v39, &qword_1EAFA25F8);
    v42 = *(v38 + 48);
    if (v42(v39, 1, v35) == 1)
    {
      v79 = sub_19A4AF380();
      v80 = *(v0 + 472);
      v81 = *(v0 + 448);
      v82 = *(v0 + 408);
      v84 = *(v0 + 368);
      v83 = *(v0 + 376);
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2600) + 48);
      *v80 = v79;
      (*(v83 + 56))(v80 + v85, 1, 1, v84);
      swift_storeEnumTagMultiPayload();
      if (v42(v82, 1, v81) != 1)
      {
        sub_19A2F3FA0(*(v0 + 408), &qword_1EAFA25F8);
      }
    }

    else
    {
      sub_19A4AF61C(*(v0 + 408), *(v0 + 472), type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    }

    v48 = *(v0 + 488);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v51 = *(v0 + 416);
    v52 = *(v0 + 392);
    v53 = *(v0 + 400);
    v86 = v52;
    v87 = *(v0 + 464);
    v54 = *(v0 + 376);
    v55 = *(v0 + 360);
    v92 = *(v0 + 368);
    v93 = *(v0 + 448);
    v56 = *(v0 + 352);
    v88 = v53;
    v89 = v56;
    v57 = sub_19A5731CC();
    (*(*(v57 - 8) + 56))(v53, 1, 1, v57);
    sub_19A4AF804(v49, v48, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    sub_19A4AF804(v56, v52, type metadata accessor for ConcreteAdapter);
    v58 = sub_19A4AF86C(&qword_1EAF9EA00, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager);
    v59 = (*(v50 + 80) + 40) & ~*(v50 + 80);
    v60 = (v87 + *(v54 + 80) + v59) & ~*(v54 + 80);
    v61 = swift_allocObject();
    v61[2] = v55;
    v61[3] = v58;
    v61[4] = v55;
    sub_19A4AF61C(v48, v61 + v59, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    sub_19A4AF61C(v86, v61 + v60, type metadata accessor for ConcreteAdapter);
    swift_retain_n();
    v62 = sub_19A4A0418(0, 0, v88, &unk_19A58C140, v61);
    *(v0 + 600) = v62;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2600) + 48);
    *v51 = v62;
    sub_19A4AF804(v89, v51 + v63, type metadata accessor for ConcreteAdapter);
    v64 = *(v54 + 56);
    *(v0 + 608) = v64;
    *(v0 + 616) = (v54 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v64(v51 + v63, 0, 1, v92);
    swift_storeEnumTagMultiPayload();
    v65 = *(v50 + 56);
    *(v0 + 624) = v65;
    *(v0 + 632) = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v65(v51, 0, 1, v93);
    swift_beginAccess();

    sub_19A49FF18(v51, v90);
    swift_endAccess();
    v66 = swift_task_alloc();
    *(v0 + 640) = v66;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    *v66 = v0;
    v66[1] = sub_19A4A4644;
    v20 = MEMORY[0x1E69E7288];
    v16 = v0 + 16;
    v17 = v62;
LABEL_30:
    v18 = v78;
  }

  else
  {
LABEL_12:
    if (v15 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v15;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v15)
      {
        v36 = *(v0 + 424);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2618);
        (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
        v14 = 0;
        goto LABEL_20;
      }

      v14 = *(v3 + 64 + 8 * v22);
      ++v21;
      if (v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
}

uint64_t sub_19A4A40C8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 360);
    v4 = sub_19A4A4980;
  }

  else
  {
    v5 = *(v2 + 360);
    sub_19A2F3FA0(*(v2 + 440), &unk_1EAFA2BF0);
    v4 = sub_19A4A4200;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A4200()
{
  v1 = *(v0 + 344);
  sub_19A4AF7A4(*(v0 + 504), type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
  sub_19A2EA460((v0 + 136), v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A4A4324()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_19A4A4B00;
  }

  else
  {
    v4 = sub_19A4A4450;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A4450()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  v3 = *(v0 + 448);
  v4 = *(v0 + 416);
  v5 = *(v0 + 368);
  v6 = *(v0 + 352);
  v11 = *(v0 + 344);
  v7 = *(*(v0 + 536) + 48);
  v10 = *(v0 + 656);
  sub_19A2F3EF0(v0 + 96, v4);
  sub_19A4AF804(v6, v4 + v7, type metadata accessor for ConcreteAdapter);
  v2(v4 + v7, 0, 1, v5);
  swift_storeEnumTagMultiPayload();
  v1(v4, 0, 1, v3);
  swift_beginAccess();
  sub_19A49FF18(v4, v10);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  sub_19A2EA460((v0 + 96), v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19A4A4644()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_19A4A4C1C;
  }

  else
  {
    v4 = sub_19A4A4770;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A4770()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);
  v12 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 416);
  v5 = *(v0 + 368);
  v6 = *(v0 + 352);
  v11 = *(v0 + 344);
  v10 = *(v0 + 656);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2608) + 48);
  sub_19A2F3EF0(v0 + 16, v4);
  sub_19A4AF804(v6, v4 + v7, type metadata accessor for ConcreteAdapter);
  v2(v4 + v7, 0, 1, v5);
  swift_storeEnumTagMultiPayload();
  v1(v4, 0, 1, v3);
  swift_beginAccess();
  sub_19A49FF18(v4, v10);
  swift_endAccess();

  sub_19A4AF7A4(v12, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
  sub_19A2EA460((v0 + 16), v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19A4A4980()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 416);
  v3 = *(v0 + 656);
  (*(*(v0 + 456) + 56))(v2, 1, 1, *(v0 + 448));
  swift_beginAccess();
  sub_19A49FF18(v2, v3);
  swift_endAccess();
  swift_willThrow();
  sub_19A4AF7A4(v1, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A4A4B00()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4A4C1C()
{
  v1 = *(v0 + 472);

  sub_19A4AF7A4(v1, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A4A4D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a4;
  v6[17] = a6;
  v6[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F8);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v8 = swift_task_alloc();
  v6[19] = v8;
  v9 = swift_task_alloc();
  v6[20] = v9;
  *v9 = v6;
  v9[1] = sub_19A4A4E6C;

  return sub_19A4A2DA8((v6 + 7), v8, a5);
}

uint64_t sub_19A4A4E6C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_19A4A52D4;
  }

  else
  {
    sub_19A2F3FA0(*(v2 + 152), &unk_1EAFA2BF0);
    v4 = sub_19A4A4FB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A4FB8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  sub_19A2EA460((v0 + 56), v0 + 16);
  v3 = sub_19A4AED60(v2, v0 + 16);
  *(v0 + 176) = v3;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = v3;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    *v7 = v0;
    v7[1] = sub_19A4A5114;
    v10 = *(v0 + 120);
    v11 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v10, v6, v8, v9, v11);
  }
}

uint64_t sub_19A4A5114()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 128);

  if (v0)
  {
    v4 = sub_19A4A53E0;
  }

  else
  {
    v4 = sub_19A4A525C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A525C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4A52D4()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  swift_beginAccess();
  sub_19A4B0BD0(v1, v2 + v4, &qword_1EAFA25F8);
  swift_endAccess();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A4A53E0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4A5454(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A559C, v1, 0);
}

uint64_t sub_19A4A559C()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  v0[28] = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  swift_beginAccess();
  sub_19A33546C(v4 + v5, v1, &qword_1EAFA25F8);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_19A2F3FA0(v1, &qword_1EAFA25F8);
  if (v2 == 1)
  {
    v7 = sub_19A4AF380();
    v8 = v0[26];
    v9 = v0[22];
    v10 = v0[23];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2600) + 48);
    *v8 = v7;
    v12 = type metadata accessor for ConcreteAdapter();
    (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    sub_19A4B0BD0(v8, v4 + v5, &qword_1EAFA25F8);
    swift_endAccess();
  }

  v13 = v0[25];
  v14 = v0[22];
  sub_19A33546C(v4 + v5, v13, &qword_1EAFA25F8);
  if (v6(v13, 1, v14) == 1)
  {
    sub_19A2F3FA0(v0[25], &qword_1EAFA25F8);
    type metadata accessor for GeneratorError(0);
    sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v15 = 0xD00000000000001ELL;
    v15[1] = 0x800000019A59B630;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  else
  {
    sub_19A4AF61C(v0[25], v0[24], type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    v18 = swift_task_alloc();
    v0[29] = v18;
    *v18 = v0;
    v18[1] = sub_19A4A5934;
    v19 = v0[24];
    v20 = v0[21];

    return sub_19A4A2DA8((v0 + 2), v20, v19);
  }
}

uint64_t sub_19A4A5934()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_19A4A5C18;
  }

  else
  {
    v5 = *(v2 + 160);
    sub_19A2F3FA0(*(v2 + 168), &unk_1EAFA2BF0);
    v4 = sub_19A4A5A68;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_19A4A5A68()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  sub_19A4AF7A4(*(v0 + 192), type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
  sub_19A2EA460((v0 + 16), v5);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2608) + 48);
  sub_19A2F3EF0(v5, v2);
  v8 = type metadata accessor for ConcreteAdapter();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_19A4B0BD0(v2, v6 + v1, &qword_1EAFA25F8);
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_19A4A5C18()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[20];
  (*(v0[23] + 56))(v2, 1, 1, v0[22]);
  swift_beginAccess();
  sub_19A4B0BD0(v2, v4 + v1, &qword_1EAFA25F8);
  swift_endAccess();
  swift_willThrow();
  sub_19A4AF7A4(v3, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A4A5D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for AppleDiffusionPipeline(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A5E04, 0, 0);
}

uint64_t sub_19A4A5E04()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A2DE000, v2, v3, "Creating base AppleDiffusionPipeline", v4, 2u);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  sub_19A4AF804(v7, v5, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
  v8 = v6;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_19A4A5F90;
  v10 = v0[7];
  v12 = v0[4];
  v11 = v0[5];

  return AppleDiffusionPipeline.init(resources:configuration:reduceMemory:)(v10, v11, v12, 1);
}

uint64_t sub_19A4A5F90()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19A4A614C;
  }

  else
  {
    v2 = sub_19A4A60A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4A60A4()
{
  v1 = v0[7];
  v2 = v0[2];
  v2[3] = v0[6];
  v2[4] = &protocol witness table for AppleDiffusionPipeline;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  sub_19A4AF61C(v1, boxed_opaque_existential_1, type metadata accessor for AppleDiffusionPipeline);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4A614C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4A61BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for ConcreteAdapter();
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A6250, 0, 0);
}

uint64_t sub_19A4A6250()
{
  v24 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1ED82BCF0);
  sub_19A4AF804(v2, v1, type metadata accessor for ConcreteAdapter);
  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v10 = AppleDiffusionAdapter.rawValue.getter(*v7);
    v12 = v11;
    sub_19A4AF7A4(v7, type metadata accessor for ConcreteAdapter);
    v13 = sub_19A31F114(v10, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_19A2DE000, v4, v5, "Creating adapted AppleDiffusionPipeline copy for %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  else
  {

    sub_19A4AF7A4(v7, type metadata accessor for ConcreteAdapter);
  }

  v15 = v0[3];
  v14 = v0[4];
  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  (*(v17 + 16))(v15, v16, v17);
  v18 = v0[2];
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(*(v20 + 8) + 8))(v19);

  v22 = v0[1];

  return v22();
}

uint64_t sub_19A4A64F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_19A31FBD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19A32D7F4();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
    v18 = *(v11 - 8);
    sub_19A4AF61C(v10 + *(v18 + 72) * v7, a2, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    sub_19A4AD460(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_19A4A664C()
{

  sub_19A2F3FA0(v0 + OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline, &qword_1EAFA25F8);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19A4A66A4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 == 7 || a2 == 11)
  {
    goto LABEL_19;
  }

  v6 = 6;
  if (*a1 <= 1u || v5 == 2 || v5 == 3 || v5 == 5)
  {
    v8 = _s13DiffusionBase05AppleA13ModelMetadataV14StyleSelectionO8rawValueAESgSS_tcfC_0();
    if (v8 == 7)
    {
      v6 = 6;
    }

    else
    {
      v6 = v8;
    }
  }

  type metadata accessor for AppleDiffusionResourceFactory(0);
  v9 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (v3)
  {

LABEL_19:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  v10 = *(v9 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

  if (!*(v10 + 16) || (v11 = sub_19A31FBD4(a2), (v12 & 1) == 0))
  {

    goto LABEL_19;
  }

  memcpy(__dst, (*(v10 + 56) + 360 * v11), 0x168uLL);
  sub_19A4895B4(__dst, v44);

  v13 = *(&__dst[18] + 1);
  if (!*(&__dst[18] + 1))
  {
    sub_19A4B0CA8(__dst);
    goto LABEL_19;
  }

  if (*(*(&__dst[18] + 1) + 16))
  {

    v14 = sub_19A31FB90(v6);
    v16 = v15;
    if (v15)
    {
      v17 = (*(v13 + 56) + 48 * v14);
      v18 = v17[1];
      v40 = *v17;
      v19 = v17[2];
      v56 = v17[3];
      v20 = v17[4];
      v21 = v17[5];
    }

    else
    {
      v40 = 0;
      v18 = 0;
      v19 = 0;
      v56 = 0;
      v20 = 0;
      v21 = 0;
    }

    *v43 = __dst[10];
    *&v43[13] = *(&__dst[10] + 13);
    v42 = v16 ^ 1;
    v44[0] = __dst[0];
    v44[1] = __dst[1];
    v44[8] = __dst[8];
    v44[9] = __dst[9];
    v45[0] = *v43;
    *(v45 + 13) = *(&__dst[10] + 13);
    v44[4] = __dst[4];
    v44[5] = __dst[5];
    v44[6] = __dst[6];
    v44[7] = __dst[7];
    v44[2] = __dst[2];
    v44[3] = __dst[3];
    v45[2] = __dst[12];
    v45[3] = __dst[13];
    v45[4] = __dst[14];
    v45[5] = __dst[15];
    v45[6] = __dst[16];
    v45[7] = __dst[17];
    v46 = __dst[18];
    v47 = BYTE2(__dst[18]);
    v48 = v13;
    v49 = __dst[19];
    v50 = __dst[20];
    v51 = __dst[21];
    v52 = BYTE4(__dst[21]);
    v53 = *(&__dst[21] + 1);
    v54 = *&__dst[22];

    sub_19A4B0CA8(v44);
    v24 = v40;
    v25 = v19;
  }

  else
  {

    sub_19A4B0CA8(__dst);
    v24 = 0;
    v18 = 0;
    v25 = 0;
    v56 = 0;
    v20 = 0;
    v21 = 0;
    v42 = 1;
  }

  if (*(v13 + 16) && (v26 = sub_19A31FB90(5u), (v27 & 1) != 0))
  {
    v28 = (*(v13 + 56) + 48 * v26);
    v38 = v25;
    v39 = v21;
    v29 = *v28;
    v41 = v20;
    v30 = v28[2];
    v31 = v28[3];
    v32 = v28[4];
    v36 = v28[1];
    v37 = v28[5];

    if (v42)
    {
      v24 = v29;
    }

    v25 = v38;
    if (v42)
    {
      v18 = v36;
      v25 = v30;
    }

    v33 = v56;
    if (v42)
    {
      v33 = v31;
    }

    v21 = v39;
    v20 = v41;
    if (v42)
    {
      v20 = v32;
      v21 = v37;
    }
  }

  else
  {

    v33 = v56;
    if (v42)
    {
      goto LABEL_19;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_19A58BFA0;
  *(v34 + 32) = v25;
  *(v34 + 36) = v33;
  *(v34 + 40) = v18;
  *(v34 + 44) = v24;
  *(v34 + 48) = v20;
  *(v34 + 52) = v21;
  *&v44[0] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  sub_19A4B0CFC();
  sub_19A57264C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  return (*(*(v35 - 8) + 56))(a3, 0, 1, v35);
}

uint64_t sub_19A4A6BBC(uint64_t a1, uint64_t a2)
{
  v3[104] = v2;
  v3[103] = a2;
  v3[102] = a1;
  v3[105] = *v2;
  v3[106] = type metadata accessor for ConcreteAdapter();
  v3[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  v3[108] = swift_task_alloc();
  v4 = sub_19A570EAC();
  v3[109] = v4;
  v3[110] = *(v4 - 8);
  v3[111] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A6D14, 0, 0);
}

uint64_t sub_19A4A6D14()
{
  v0[112] = *(v0[104] + 16);
  v1 = swift_task_alloc();
  v0[113] = v1;
  *v1 = v0;
  v1[1] = sub_19A4A6DB4;

  return sub_19A4A5454((v0 + 92));
}

uint64_t sub_19A4A6DB4()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_19A4A7380;
  }

  else
  {
    v2 = sub_19A4A6EC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4A6EC8()
{
  v35 = v0;
  v1 = *(v0 + 824);
  v2 = type metadata accessor for GenerationRecipe(0);
  v3 = *(v1 + *(v2 + 24));
  if (*(v3 + 16))
  {
    v4 = v2;
    v5 = *(v0 + 912);
    LOBYTE(v33) = *(v3 + 32);
    v6 = sub_19A39BD48();
    v7 = sub_19A4AD7C8(&v33, v6 & 1, *(v1 + *(v4 + 84) + 24) != 0);
    *(v0 + 936) = v7;
    if (v5)
    {
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 736);

      v25 = *(v0 + 8);

      return v25();
    }

    v8 = v7;
    v9 = *(v0 + 880);
    v10 = *(v0 + 872);
    v11 = *(v0 + 864);
    sub_19A4A97CC(v7, v11);
    if ((*(v9 + 48))(v11, 1, v10) == 1)
    {
      sub_19A2F3FA0(*(v0 + 864), &qword_1EAFA02E8);
      type metadata accessor for GeneratorError(0);
      sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
      swift_allocError();
      v13 = v12;
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_19A57395C();

      v33 = 0xD000000000000015;
      v34 = 0x800000019A59B740;
      v14 = AppleDiffusionAdapter.rawValue.getter(v8);
      MEMORY[0x19A900A50](v14);

      v15 = v34;
      *v13 = v33;
      v13[1] = v15;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_10;
    }

    (*(*(v0 + 880) + 32))(*(v0 + 888), *(v0 + 864), *(v0 + 872));
    sub_19A4AEC40(v8, (v0 + 376));
    if (sub_19A489468(v0 + 376) == 1)
    {
      v18 = *(v0 + 888);
      v19 = *(v0 + 880);
      v20 = *(v0 + 872);
      type metadata accessor for GeneratorError(0);
      sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
      swift_allocError();
      v22 = v21;
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_19A57395C();

      v33 = 0xD00000000000001DLL;
      v34 = 0x800000019A59B760;
      v23 = AppleDiffusionAdapter.rawValue.getter(v8);
      MEMORY[0x19A900A50](v23);

      v24 = v34;
      *v22 = v33;
      v22[1] = v24;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v19 + 8))(v18, v20);
      goto LABEL_10;
    }

    v26 = *(v0 + 888);
    v27 = *(v0 + 880);
    v28 = *(v0 + 872);
    v29 = *(v0 + 856);
    v30 = *(v0 + 848);
    memcpy((v0 + 16), (v0 + 376), 0x168uLL);
    (*(v27 + 16))(&v29[*(v30 + 20)], v26, v28);
    *v29 = v8;
    memcpy(&v29[*(v30 + 24)], (v0 + 16), 0x168uLL);
    v31 = swift_task_alloc();
    *(v0 + 920) = v31;
    *v31 = v0;
    v31[1] = sub_19A4A7404;
    v32 = *(v0 + 856);

    return sub_19A4A32BC(v0 + 776, v32);
  }

  else
  {
    sub_19A2EA460((v0 + 736), *(v0 + 816));

    v16 = *(v0 + 8);

    return v16(11);
  }
}

uint64_t sub_19A4A7380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4A7404()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_19A4A75FC;
  }

  else
  {
    v2 = sub_19A4A7518;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4A7518()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 856);
  sub_19A2EA460((v0 + 776), *(v0 + 816));
  sub_19A4AF7A4(v4, type metadata accessor for ConcreteAdapter);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 736);
  v5 = *(v0 + 936);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_19A4A75FC()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  sub_19A4AF7A4(v0[107], type metadata accessor for ConcreteAdapter);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 92));

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4A76C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v202 = a2;
  v197 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v194 = &v190 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2638);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v199 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v193 = &v190 - v9;
  v201 = type metadata accessor for AppleDiffusionPipeline(0);
  v203 = *(v201 - 8);
  v10 = MEMORY[0x1EEE9AC00](v201);
  v205 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v192 = &v190 - v12;
  v204 = type metadata accessor for ResolvedTextPrompt(0);
  v13 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204 - 8);
  v15 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PipelineConfiguration(0);
  MEMORY[0x1EEE9AC00](v16);
  v211 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for AugmentedPrompt();
  v213 = *(v206 - 8);
  v18 = MEMORY[0x1EEE9AC00](v206);
  v196 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v190 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v190 - v23;
  v24 = type metadata accessor for GenerationRecipe(0);
  v25 = *&a1[*(v24 + 76)];
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v212 = a1;
  v209 = v16;
  v210 = v24;
  v207 = v13;
  if (v26)
  {
    *&v215 = MEMORY[0x1E69E7CC0];
    sub_19A322640(0, v26, 0);
    v28 = v204;
    v27 = v215;
    v29 = v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v30 = *(v13 + 72);
    do
    {
      sub_19A4AF804(v29, v15, type metadata accessor for ResolvedTextPrompt);
      sub_19A4AF804(&v15[*(v28 + 20)], v22, type metadata accessor for AugmentedPrompt);
      sub_19A4AF7A4(v15, type metadata accessor for ResolvedTextPrompt);
      *&v215 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_19A322640(v31 > 1, v32 + 1, 1);
        v28 = v204;
        v27 = v215;
      }

      *(v27 + 16) = v32 + 1;
      sub_19A4AF61C(v22, v27 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v32, type metadata accessor for AugmentedPrompt);
      v29 += v30;
      --v26;
    }

    while (v26);
    a1 = v212;
    v33 = v209;
    v34 = v210;
  }

  else
  {
    v34 = v24;
    v33 = v16;
  }

  v35 = v208;
  sub_19A4CC0E4(v27);

  v36 = sub_19A4AF86C(&qword_1ED824968, type metadata accessor for AugmentedPrompt);
  v37 = v206;
  v38 = sub_19A573EDC();
  v39 = v211;
  PipelineConfiguration.init(prompt:)(v38, v40, v211);
  v216 = v37;
  v217 = v36;
  v195 = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v215);
  sub_19A4AF804(v35, boxed_opaque_existential_1, type metadata accessor for AugmentedPrompt);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_19A2EA460(&v215, v39);
  *(v39 + *(v33 + 80)) = 20;
  v42 = *(v33 + 104);
  *(v39 + v42) = 0;
  *(v39 + *(v33 + 100)) = 1;
  v43 = &a1[*(v34 + 5)];
  *(v39 + *(v33 + 76)) = *(v43 + 5);
  v44 = &a1[*(v34 + 7)];
  v45 = v207;
  if (v44[8])
  {
    LODWORD(v46) = sub_19A489348(0x8000000000000000);
  }

  else
  {
    v46 = *v44;
  }

  *(v39 + *(v33 + 84)) = v46;
  v47 = _s23GenerationConfigurationVMa();
  sub_19A4AFB3C(&v43[*(v47 + 52)], v39 + *(v33 + 140), &qword_1EAFA3300);
  v48 = &a1[*(v34 + 21)];
  v49 = v48[3];
  if (v49)
  {
    v33 = *&a1[*(v34 + 6)];
    if (*(v33 + 16))
    {
      v50 = *(v33 + 32);
      if (!*(v33 + 32))
      {
        v193 = v43;
        v198 = v42;
        v51 = &unk_1F0DA8DE0;
        goto LABEL_24;
      }

      if (v50 == 3)
      {
        v193 = v43;
        v198 = v42;
        v51 = &unk_1F0DA8E40;
        goto LABEL_24;
      }

      if (v50 == 2)
      {
        v193 = v43;
        v198 = v42;
        v51 = &unk_1F0DA8E10;
LABEL_24:
        v192 = v51;
        LODWORD(v191) = *&a1[*(v34 + 23) + 24] != 0;
        v64 = &a1[*(v34 + 11)];
        if (v64[4])
        {
          v65 = 1065353216;
        }

        else
        {
          v65 = *v64;
        }

        v33 = v209;
        v66 = v39 + v209[15];
        v67 = *v66;
        v68 = *(v66 + 8);
        v69 = *(v66 + 16);
        v70 = *(v66 + 24);
        v71 = v49;
        v72 = v49;
        sub_19A4B0C38(v67, v68, v69, v70);
        *v66 = v71;
        *(v66 + 8) = v65;
        *(v66 + 16) = v192;
        *(v66 + 24) = v191;
        v45 = v207;
        v43 = v193;
LABEL_28:
        if (v43[32])
        {
          goto LABEL_32;
        }

LABEL_29:
        v73 = *(v43 + 3);
        if (v73 <= *(v43 + 2))
        {
          v73 = *(v43 + 2);
        }

        *(v211 + *(v33 + 128)) = v73;
LABEL_32:
        v74 = v210;
        a1 = v212;
        v75 = *&v212[*(v210 + 80)];
        v76 = *(v75 + 16);
        v77 = MEMORY[0x1E69E7CC0];
        if (v76)
        {
          *&v215 = MEMORY[0x1E69E7CC0];
          sub_19A322640(0, v76, 0);
          v77 = v215;
          v78 = v75 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
          v79 = *(v45 + 72);
          v80 = v204;
          v81 = v196;
          do
          {
            sub_19A4AF804(v78, v15, type metadata accessor for ResolvedTextPrompt);
            sub_19A4AF804(&v15[*(v80 + 20)], v81, type metadata accessor for AugmentedPrompt);
            sub_19A4AF7A4(v15, type metadata accessor for ResolvedTextPrompt);
            *&v215 = v77;
            v83 = *(v77 + 16);
            v82 = *(v77 + 24);
            if (v83 >= v82 >> 1)
            {
              sub_19A322640(v82 > 1, v83 + 1, 1);
              v80 = v204;
              v77 = v215;
            }

            *(v77 + 16) = v83 + 1;
            sub_19A4AF61C(v81, v77 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v83, type metadata accessor for AugmentedPrompt);
            v78 += v79;
            --v76;
          }

          while (v76);
          a1 = v212;
          v33 = v209;
          v74 = v210;
        }

        v45 = v205;
        v15 = v200;
        v84 = v199;
        if (*(v77 + 16))
        {
          v216 = v206;
          v217 = v195;
          __swift_allocate_boxed_opaque_existential_1(&v215);
          sub_19A4CC0E4(v77);

          v39 = v211;
          __swift_destroy_boxed_opaque_existential_0Tm(v211 + 40);
          sub_19A2EA460(&v215, v39 + 40);
        }

        else
        {

          v39 = v211;
        }

        v85 = v201;
        *(v39 + *(v33 + 108)) = 1;
        *(v39 + *(v33 + 116)) = 1065353216;
        *(v39 + *(v33 + 112)) = 1065353216;
        *(v39 + v198) = 514;
        v86 = &a1[v74[12]];
        if ((v86[4] & 1) == 0)
        {
          v87 = v39 + *(v33 + 48);
          *v87 = *v86;
          *(v87 + 4) = 0;
        }

        sub_19A2F3EF0(v202, &v215);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_19A4AF7A4(v208, type metadata accessor for AugmentedPrompt);
          (*(v203 + 56))(v84, 1, 1, v85);
          sub_19A2F3FA0(v84, &qword_1EAFA2638);
          goto LABEL_128;
        }

        (*(v203 + 56))(v84, 0, 1, v85);
        sub_19A4AF61C(v84, v45, type metadata accessor for AppleDiffusionPipeline);
        v88 = &a1[v74[22]];
        v89 = v88[3];
        if (!v89)
        {
LABEL_65:
          v34 = v218;
          v122 = *v45;
          if ((*v45 & 1) == 0 && *(v45 + 1) != 1 || (swift_beginAccess(), v123 = v39 + *(v33 + 48), (*(v123 + 4) & 1) == 0) && *v123 == 0.0)
          {
LABEL_121:
            v165 = *(v45 + 16);
            *v34 = *v45;
            *(v34 + 1) = v165;
            *(v34 + 2) = *(v45 + 32);
            v166 = v218[3];
            v167 = sub_19A4B0970(a1, v218);
            v170 = v168 | (v169 << 32);
            swift_beginAccess();
            *(v39 + *(v33 + 36)) = v167;
            v171 = v39 + *(v33 + 40);
            *v171 = v170;
            *(v171 + 8) = 0;
            *(v39 + 80) = (v166 & 0xFE) == 2;
            v74 = v210;
            v172 = *&a1[*(v210 + 24)];
            if (*(v172 + 16))
            {
              v173 = *(v172 + 32);
            }

            else
            {
              v173 = 7;
            }

            v174 = v194;
            LOBYTE(v215) = v173;
            sub_19A4A66A4(&v215, v166, v194);
            sub_19A4AF7A4(v208, type metadata accessor for AugmentedPrompt);
            if (v15)
            {
              v103 = type metadata accessor for AppleDiffusionPipeline;
              v104 = v45;
              goto LABEL_126;
            }

            sub_19A4B0BD0(v174, v39 + *(v33 + 28), &qword_1EAFA2630);
            sub_19A4AF7A4(v45, type metadata accessor for AppleDiffusionPipeline);
LABEL_128:
            v175 = v74[8];
            swift_beginAccess();
            sub_19A4AFB3C(&a1[v175], v39 + *(v33 + 32), &unk_1EAFA2F50);
            sub_19A4AF804(v39, v197, type metadata accessor for PipelineConfiguration);
            return sub_19A4AF7A4(v39, type metadata accessor for PipelineConfiguration);
          }

          v124 = *(v45 + 3);
          type metadata accessor for AppleDiffusionResourceFactory(0);
          v125 = static AppleDiffusionResourceFactory.shared(reset:)(0);
          if (v15)
          {

            v126 = 0;
          }

          else
          {
            v127 = *(v125 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata);

            if (*(v127 + 16) && (v128 = sub_19A31FCAC(0), (v129 & 1) != 0))
            {
              v130 = *(v127 + 56) + 360 * v128;
              v126 = *(v130 + 256);
              v131 = *(v130 + 290);

              if ((v131 & 1) == 0)
              {
                v132 = 0;
LABEL_78:
                LOBYTE(v215) = v132;
                v133 = sub_19A4A9250(0x65636E6164697567, 0xEE00656C61637320, v124, v126 | (v132 << 32), 1, 1, 1.5);
                *(v39 + v209[22]) = v133;
                v15 = 0;
                v134 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata);

                if (!*(v134 + 16) || (v135 = sub_19A31FCAC(0), (v136 & 1) == 0))
                {

                  sub_19A39C344();
                  v143 = 0;
                  LOBYTE(v139) = 1;
                  if (v124 != 11)
                  {
LABEL_99:
                    v147 = static AppleDiffusionResourceFactory.shared(reset:)(0);
                    if (v15)
                    {

                      v15 = 0;
                      a1 = v212;
LABEL_106:
                      sub_19A39C344();
LABEL_107:
                      if ((v139 & 1) == 0)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    }

                    v148 = *(v147 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

                    a1 = v212;
                    if (!*(v148 + 16) || (v149 = sub_19A31FBD4(v124), (v150 & 1) == 0))
                    {

                      goto LABEL_106;
                    }

                    v200 = 0;
                    v151 = *(v148 + 56) + 360 * v149;
                    LODWORD(v213) = *(v151 + 276);
                    v207 = *(v151 + 280);
                    v152 = *(v151 + 288);
                    v153 = *(v151 + 290);

                    v154 = sub_19A39C344();
                    if (v153)
                    {
                      v39 = v211;
                      v15 = v200;
                      a1 = v212;
                      goto LABEL_107;
                    }

                    if ((v152 & 0x100) != 0 || (v154 - 1) > 1u)
                    {
                      if ((v207 & 1) == 0)
                      {
                        v143 = v213;
                      }

                      v39 = v211;
                      a1 = v212;
                      if ((v207 & 1 & v139) != 0)
                      {
                        goto LABEL_147;
                      }
                    }

                    else
                    {
                      v179 = v213;
                      if (v207)
                      {
                        v179 = v143;
                      }

                      if (v152)
                      {
                        v143 = v179;
                      }

                      else
                      {
                        v143 = HIDWORD(v207);
                      }

                      a1 = v212;
                      if ((v207 & v152) & v139)
                      {
                        v39 = v211;
LABEL_147:
                        v15 = v200;
LABEL_108:
                        AppleDiffusionAdapter.rawValue.getter(v124);

                        v143 = 0;
                        goto LABEL_109;
                      }

                      v39 = v211;
                    }

                    v15 = v200;
LABEL_109:
                    v155 = v209;
                    v156 = v39 + v209[13];
                    *v156 = v143;
                    v33 = v155;
                    *(v156 + 4) = 0;
                    v45 = v205;
                    if ((v122 & 1) == 0)
                    {
LABEL_114:
                      if (*(v45 + 1) == 1)
                      {
                        if (qword_1ED824050 != -1)
                        {
                          swift_once();
                        }

                        v161 = sub_19A5723FC();
                        __swift_project_value_buffer(v161, qword_1ED82BCF0);
                        v162 = sub_19A5723DC();
                        v163 = sub_19A57356C();
                        if (os_log_type_enabled(v162, v163))
                        {
                          v164 = swift_slowAlloc();
                          *v164 = 0;
                          _os_log_impl(&dword_19A2DE000, v162, v163, "Choosing between LCM and LCM flow scheduler: LCMFlow!", v164, 2u);
                          MEMORY[0x19A902C50](v164, -1, -1);
                        }

                        *(v39 + *(v33 + 104)) = -32766;
                      }

                      *(v39 + *(v33 + 80)) = *(v45 + 32);
                      goto LABEL_121;
                    }

                    if (qword_1ED824050 == -1)
                    {
LABEL_111:
                      v157 = sub_19A5723FC();
                      __swift_project_value_buffer(v157, qword_1ED82BCF0);
                      v158 = sub_19A5723DC();
                      v159 = sub_19A57356C();
                      if (os_log_type_enabled(v158, v159))
                      {
                        v160 = swift_slowAlloc();
                        *v160 = 0;
                        _os_log_impl(&dword_19A2DE000, v158, v159, "Choosing between LCM and LCM flow scheduler: LCM!", v160, 2u);
                        MEMORY[0x19A902C50](v160, -1, -1);
                      }

                      *(v39 + *(v33 + 104)) = 16386;
                      goto LABEL_114;
                    }

LABEL_158:
                    swift_once();
                    goto LABEL_111;
                  }

LABEL_84:
                  if (v139)
                  {
                    v143 = 0;
                  }

                  a1 = v212;
                  goto LABEL_109;
                }

                v200 = 0;
                v137 = *(v134 + 56) + 360 * v135;
                v138 = *(v137 + 272);
                v139 = *(v137 + 280);
                v140 = *(v137 + 288);
                v141 = *(v137 + 290);

                v142 = sub_19A39C344();
                if (v141)
                {
                  v143 = 0;
                  LOBYTE(v139) = 1;
                }

                else
                {
                  if (v139)
                  {
                    v143 = 0;
                  }

                  else
                  {
                    v143 = HIDWORD(v138);
                  }

                  if ((v140 & 0x100) == 0)
                  {
                    v39 = v211;
                    if ((v142 - 1) <= 1u)
                    {
                      if ((v140 & 1) == 0)
                      {
                        v143 = HIDWORD(v139);
                      }

                      LOBYTE(v139) = v139 & v140;
                    }

LABEL_98:
                    v15 = v200;
                    if (v124 != 11)
                    {
                      goto LABEL_99;
                    }

                    goto LABEL_84;
                  }
                }

                v39 = v211;
                goto LABEL_98;
              }
            }

            else
            {
            }

            v126 = 0;
          }

          v132 = 1;
          goto LABEL_78;
        }

        v90 = v45;
        v92 = *v88;
        v91 = v88[1];
        v93 = v33;
        v94 = v88[2];
        v95 = *(v93 + 56);
        v96 = *(v39 + v95);
        *(v39 + v95) = v89;
        v97 = v89;
        sub_19A331BEC(v92, v91, v94, v89);

        v98 = *(v90 + 3);
        if (v98 != 11)
        {
          type metadata accessor for AppleDiffusionResourceFactory(0);
          v105 = static AppleDiffusionResourceFactory.shared(reset:)(0);
          if (v15)
          {

            sub_19A331C90(v92, v91, v94, v89);
            v15 = 0;
            goto LABEL_63;
          }

          v109 = *(v105 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

          if (!*(v109 + 16) || (v110 = sub_19A31FBD4(v98), (v111 & 1) == 0))
          {
            sub_19A331C90(v92, v91, v94, v89);

            goto LABEL_63;
          }

          v200 = 0;
          v112 = *(v109 + 56) + 360 * v110;
          v113 = *(v112 + 336);
          v114 = *(v112 + 340);
          v115 = *(v112 + 344);

          v116 = v209[16];
          if (v114)
          {
            *(v39 + v116) = 1065353216;
            if (qword_1ED824050 != -1)
            {
              swift_once();
            }

            v117 = sub_19A5723FC();
            __swift_project_value_buffer(v117, qword_1ED82BCF0);
            v118 = sub_19A5723DC();
            v119 = sub_19A57355C();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              *v120 = 134217984;
              *(v120 + 4) = 0x3FF0000000000000;
              _os_log_impl(&dword_19A2DE000, v118, v119, "starting_image_strength unavailable in adapter metadata, using default value of %f.", v120, 0xCu);
              v121 = v120;
              v39 = v211;
              MEMORY[0x19A902C50](v121, -1, -1);
            }
          }

          else
          {
            *(v39 + v116) = v113;
          }

          if (v115)
          {
            sub_19A331C90(v92, v91, v94, v89);
            swift_beginAccess();
            v33 = v209;
            *(v39 + v209[17]) = v115;

            v15 = v200;
            goto LABEL_64;
          }

          v177 = v200;
          v178 = static AppleDiffusionSketchConditioner.modelIsv7OrLater()();
          v15 = v177;
          if (v177)
          {
            sub_19A4AF7A4(v208, type metadata accessor for AugmentedPrompt);
            sub_19A331C90(v92, v91, v94, v89);
            v103 = type metadata accessor for AppleDiffusionPipeline;
            v104 = v205;
            goto LABEL_126;
          }

          if (v178)
          {
            v200 = 0;
            swift_beginAccess();
            *(v39 + v209[17]) = &unk_1F0DA8EA0;

            if (qword_1ED824050 != -1)
            {
              swift_once();
            }

            v180 = sub_19A5723FC();
            __swift_project_value_buffer(v180, qword_1ED82BCF0);
            v181 = sub_19A5723DC();
            v182 = sub_19A57355C();
            if (os_log_type_enabled(v181, v182))
            {
              v183 = swift_slowAlloc();
              v207 = v183;
              v213 = swift_slowAlloc();
              *&v215 = v213;
              *v183 = 136315138;
              v184 = MEMORY[0x19A900C10](&unk_1F0DA8EA0, MEMORY[0x1E69E6448]);
              v186 = sub_19A31F114(v184, v185, &v215);
              v39 = v211;

              v187 = v207;
              *(v207 + 4) = v186;
              v188 = v187;
              _os_log_impl(&dword_19A2DE000, v181, v182, "scheduler_timesteps_overwrite unavailable in adapter metadata, using default override values of %s.", v187, 0xCu);
              v189 = v213;
              __swift_destroy_boxed_opaque_existential_0Tm(v213);
              MEMORY[0x19A902C50](v189, -1, -1);
              MEMORY[0x19A902C50](v188, -1, -1);
            }

            sub_19A331C90(v92, v91, v94, v89);
            v15 = v200;
            goto LABEL_63;
          }
        }

        sub_19A331C90(v92, v91, v94, v89);
LABEL_63:
        v33 = v209;
LABEL_64:
        swift_beginAccess();
        *(v39 + *(v33 + 104)) = 2;
        a1 = v212;
        v45 = v205;
        goto LABEL_65;
      }

      v213 = *v48;
      v34 = v48[2];
      v212 = v48[1];
      a1 = v49;
      v45 = type metadata accessor for GeneratorError(0);
      sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
      v15 = swift_allocError();
      v100 = v99;
      *&v215 = 0;
      *(&v215 + 1) = 0xE000000000000000;
      v101 = a1;

      sub_19A57395C();
      MEMORY[0x19A900A50](0x20656C797473, 0xE600000000000000);
      if (*(v33 + 16))
      {
        v214 = *(v33 + 32);
        sub_19A573ACC();
        MEMORY[0x19A900A50](0xD000000000000036, 0x800000019A59B700);
        v102 = *(&v215 + 1);
        *v100 = v215;
        v100[1] = v102;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_19A331C90(v213, v212, v34, a1);
        v103 = type metadata accessor for AugmentedPrompt;
        v104 = v208;
LABEL_126:
        sub_19A4AF7A4(v104, v103);
        return sub_19A4AF7A4(v39, type metadata accessor for PipelineConfiguration);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_158;
  }

  v198 = v42;
  v52 = &a1[*(v34 + 30)];
  if (*(v52 + 2) == 1)
  {
    goto LABEL_28;
  }

  v53 = *(v52 + 4);
  if (!v53)
  {
    goto LABEL_28;
  }

  v54 = v43;
  v191 = *(v52 + 3);
  v55 = v52[44];
  v56 = *(v52 + 10);
  sub_19A2F3EF0(v202, &v215);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
  v57 = v193;
  v58 = v201;
  v59 = swift_dynamicCast();
  v60 = *(v203 + 56);
  if (v59)
  {
    v60(v57, 0, 1, v58);
    v61 = v57;
    v62 = v192;
    sub_19A4AF61C(v61, v192, type metadata accessor for AppleDiffusionPipeline);
    v63 = *(v62 + 3);
    if (v63 == 11)
    {
      sub_19A4AF7A4(v62, type metadata accessor for AppleDiffusionPipeline);
    }

    else
    {
      v144 = sub_19A33FA50(v63, v191, v53);
      sub_19A4AF7A4(v62, type metadata accessor for AppleDiffusionPipeline);
      if (v144)
      {
        v145 = v56 | (v55 << 32);

        v146 = v211 + *(v33 + 60);
        sub_19A4B0C38(*v146, *(v146 + 8), *(v146 + 16), *(v146 + 24));
        *v146 = v144;
        *(v146 + 8) = v145 & 0x1FFFFFFFFLL;
        *(v146 + 16) = 0;
        *(v146 + 24) = 0x80;
        v43 = v54;
        if (v54[32])
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    v60(v57, 1, 1, v58);
    sub_19A2F3FA0(v57, &qword_1EAFA2638);
  }

  type metadata accessor for GeneratorError(0);
  sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
  swift_allocError();
  v107 = v106;
  *&v215 = 0;
  *(&v215 + 1) = 0xE000000000000000;
  sub_19A57395C();

  *&v215 = 0xD000000000000020;
  *(&v215 + 1) = 0x800000019A59B6D0;
  MEMORY[0x19A900A50](v191, v53);

  v108 = *(&v215 + 1);
  *v107 = v215;
  v107[1] = v108;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_19A4AF7A4(v208, type metadata accessor for AugmentedPrompt);
  v39 = v211;
  return sub_19A4AF7A4(v39, type metadata accessor for PipelineConfiguration);
}

float sub_19A4A9250(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, float a7)
{
  if (a3 != 11)
  {
    v13 = a3;
    sub_19A4A9624(a3, &v38);
    if ((v38 & 0x100000000) == 0)
    {
      return *&v38;
    }

    if ((a4 & 0x100000000) == 0)
    {
      a7 = *&a4;
      if ((a5 & 1) == 0)
      {
        return a7;
      }

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v14 = sub_19A5723FC();
      __swift_project_value_buffer(v14, qword_1ED82BCF0);

      v15 = sub_19A5723DC();
      v16 = sub_19A57355C();

      if (!os_log_type_enabled(v15, v16))
      {
LABEL_23:

        return a7;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 136446722;
      v19 = AppleDiffusionAdapter.rawValue.getter(v13);
      v21 = sub_19A31F114(v19, v20, &v38);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_19A31F114(a1, a2, &v38);
      *(v17 + 22) = 2082;
      v22 = sub_19A57335C();
      v24 = sub_19A31F114(v22, v23, &v38);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_19A2DE000, v15, v16, "%{public}s adapter is loaded, no %s found. Falling back to base model value (%{public}s).", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v18, -1, -1);
      v25 = v17;
LABEL_21:
      MEMORY[0x19A902C50](v25, -1, -1);
      goto LABEL_23;
    }

    v27 = AppleDiffusionAdapter.rawValue.getter(v13);
    v26 = v28;
    if (a6)
    {
LABEL_17:
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v29 = sub_19A5723FC();
      __swift_project_value_buffer(v29, qword_1ED82BCF0);

      v15 = sub_19A5723DC();
      v30 = sub_19A57355C();

      if (!os_log_type_enabled(v15, v30))
      {

        goto LABEL_23;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136446722;
      v33 = sub_19A31F114(v27, v26, &v38);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_19A31F114(a1, a2, &v38);
      *(v31 + 22) = 2080;
      v34 = sub_19A57335C();
      v36 = sub_19A31F114(v34, v35, &v38);

      *(v31 + 24) = v36;
      _os_log_impl(&dword_19A2DE000, v15, v30, "Loaded adapter is %{public}s, no value for %{public}s found. Falling back to framework default (%s).", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v32, -1, -1);
      v25 = v31;
      goto LABEL_21;
    }

LABEL_15:
    if ((a5 & 1) == 0)
    {

      return a7;
    }

    goto LABEL_17;
  }

  if ((a4 & 0x100000000) != 0)
  {
    v26 = 0xE300000000000000;
    v27 = 7104878;
    if (a6)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  return *&a4;
}

uint64_t sub_19A4A9624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v4 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

  if (!*(v4 + 16) || (v5 = sub_19A31FBD4(a1), (v6 & 1) == 0))
  {

    goto LABEL_6;
  }

  v7 = *(v4 + 56) + 360 * v5;
  v8 = *(v7 + 256);
  v9 = *(v7 + 290);

  if (v9)
  {
LABEL_6:
    LODWORD(v8) = 0;
    v11 = 1;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  *a2 = v8;
  *(a2 + 4) = v11;
  return result;
}

uint64_t sub_19A4A96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19A2F759C;

  return sub_19A4A13E4(a1, a2, a3, a4);
}

uint64_t sub_19A4A97CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_19A570EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(a2, 1, 1, v7);
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v10 = static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs;
  v11 = *(v10 + *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 28));
  if (*(v11 + 16) && (v12 = sub_19A31FBD4(a1), (v13 & 1) != 0))
  {
    (*(v8 + 16))(v6, *(v11 + 56) + *(v8 + 72) * v12, v7);

    v14 = 0;
  }

  else
  {

    v14 = 1;
  }

  sub_19A2F3FA0(a2, &qword_1EAFA02E8);
  v9(v6, v14, 1, v7);
  return sub_19A3351B8(v6, a2, &qword_1EAFA02E8);
}

uint64_t sub_19A4A99D4(uint64_t a1, uint64_t a2)
{
  v3[107] = v2;
  v3[106] = a2;
  v3[105] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F8);
  v3[108] = swift_task_alloc();
  v3[109] = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v3[110] = swift_task_alloc();
  v3[111] = type metadata accessor for ConcreteAdapter();
  v3[112] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  v3[113] = swift_task_alloc();
  v4 = sub_19A570EAC();
  v3[114] = v4;
  v3[115] = *(v4 - 8);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4A9B78, 0, 0);
}

uint64_t sub_19A4A9B78()
{
  v1 = v0[106];
  v2 = v0[105];

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  LOBYTE(v4) = AppleDiffusionAdapter.init(modelCatalogInferenceAssetIdentifier:)(v3);
  if (v4 == 11)
  {
    v5 = sub_19A4B032C();
    if (v6)
    {
      if (v5 == v0[105] && v6 == v0[106])
      {

        goto LABEL_11;
      }

      v20 = sub_19A573F1C();

      if (v20)
      {
LABEL_11:
        v0[120] = type metadata accessor for AppleDiffusionResourceFactory(0);
        *(v0[107] + 24) = static AppleDiffusionResourceFactory.shared(reset:)(0);

        v30 = swift_task_alloc();
        v0[121] = v30;
        *v30 = v0;
        v30[1] = sub_19A4AA5B0;

        return sub_19A4A5454((v0 + 92));
      }
    }

    goto LABEL_12;
  }

  v7 = v4;
  v8 = v0[115];
  v9 = v0[114];
  v10 = v0[113];
  type metadata accessor for AppleDiffusionImageGenerator();
  sub_19A4A97CC(v7, v10);
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    sub_19A2F3FA0(v0[113], &qword_1EAFA02E8);
    type metadata accessor for GeneratorError(0);
    sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    v12 = v11;
    sub_19A57395C();

    v13 = AppleDiffusionAdapter.rawValue.getter(v7);
    MEMORY[0x19A900A50](v13);

    *v12 = 0xD000000000000015;
    v12[1] = 0x800000019A59B740;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:

    v21 = v0[1];

    return v21();
  }

  (*(v0[115] + 32))(v0[117], v0[113], v0[114]);
  sub_19A4AEC40(v7, v0 + 47);
  if (sub_19A489468((v0 + 47)) == 1)
  {
    v14 = v0[117];
    v15 = v0[115];
    v16 = v0[114];
    type metadata accessor for GeneratorError(0);
    sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    v18 = v17;
    sub_19A57395C();

    v19 = AppleDiffusionAdapter.rawValue.getter(v7);
    MEMORY[0x19A900A50](v19);

    *v18 = 0xD00000000000001DLL;
    v18[1] = 0x800000019A59B760;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    goto LABEL_12;
  }

  v23 = v0[117];
  v24 = v0[115];
  v25 = v0[114];
  v26 = v0[112];
  v27 = v0[111];
  memcpy(v0 + 2, v0 + 47, 0x168uLL);
  (*(v24 + 16))(&v26[*(v27 + 20)], v23, v25);
  *v26 = v7;
  memcpy(&v26[*(v27 + 24)], v0 + 2, 0x168uLL);
  v28 = swift_task_alloc();
  v0[118] = v28;
  *v28 = v0;
  v28[1] = sub_19A4AA398;
  v29 = v0[112];

  return sub_19A4A32BC((v0 + 97), v29);
}

uint64_t sub_19A4AA398()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {
    v3 = sub_19A4AAECC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 776);
    v3 = sub_19A4AA4B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A4AA4B4()
{
  v1 = v0[112];
  sub_19A4AFBA4(v0[105], v0[106], v0[117]);
  sub_19A4AF7A4(v1, type metadata accessor for ConcreteAdapter);
  (*(v0[115] + 8))(v0[117], v0[114]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A4AA5B0()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_19A4AAB80;
  }

  else
  {
    v2 = sub_19A4AA6C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4AA6C4()
{
  v1 = v0[122];
  v2 = v0[95];
  v3 = v0[96];
  __swift_project_boxed_opaque_existential_1(v0 + 92, v2);
  (*(*(v3 + 8) + 8))(v2);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 92));
    v0[123] = v1;
    if (*(v0[107] + 24))
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v4 = sub_19A5723FC();
      __swift_project_value_buffer(v4, qword_1ED82BCF0);
      v5 = v1;
      v6 = sub_19A5723DC();
      v7 = sub_19A57355C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v1;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_19A2DE000, v6, v7, "LoadIn failure. Unable to create base pipeline: %{public}@", v8, 0xCu);
        sub_19A2F3FA0(v9, &qword_1EAF9FD28);
        MEMORY[0x19A902C50](v9, -1, -1);
        MEMORY[0x19A902C50](v8, -1, -1);
      }

      v12 = v0[107];

      v13 = *(v12 + 16);
      v0[124] = v13;

      return MEMORY[0x1EEE6DFA0](sub_19A4AAFBC, v13, 0);
    }

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v22 = sub_19A5723FC();
    __swift_project_value_buffer(v22, qword_1ED82BCF0);
    v23 = v1;
    v24 = sub_19A5723DC();
    v25 = sub_19A57355C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_19A2DE000, v24, v25, "LoadIn failure. Unable to initialize model metadata cache: %{public}@.", v26, 0xCu);
      sub_19A2F3FA0(v27, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v27, -1, -1);
      MEMORY[0x19A902C50](v26, -1, -1);
    }

    swift_willThrow();

    v21 = v0[1];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 92));
    v14 = static AppleDiffusionResourceFactory.shared(reset:)(0);
    v15 = v0[116];
    v16 = v0[110];
    v17 = v0[109];
    v18 = v0[106];
    v19 = v0[105];
    sub_19A4AF804(v14 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v16, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

    v20 = *(v16 + *(v17 + 24));

    sub_19A4AF7A4(v16, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
    v20(0);

    sub_19A4AFBA4(v19, v18, v15);
    (*(v0[115] + 8))(v0[116], v0[114]);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_19A4AAB80()
{
  v1 = v0[122];
  v0[123] = v1;
  if (*(v0[107] + 24))
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v2 = sub_19A5723FC();
    __swift_project_value_buffer(v2, qword_1ED82BCF0);
    v3 = v1;
    v4 = sub_19A5723DC();
    v5 = sub_19A57355C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_19A2DE000, v4, v5, "LoadIn failure. Unable to create base pipeline: %{public}@", v6, 0xCu);
      sub_19A2F3FA0(v7, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v7, -1, -1);
      MEMORY[0x19A902C50](v6, -1, -1);
    }

    v10 = v0[107];

    v11 = *(v10 + 16);
    v0[124] = v11;

    return MEMORY[0x1EEE6DFA0](sub_19A4AAFBC, v11, 0);
  }

  else
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v12 = sub_19A5723FC();
    __swift_project_value_buffer(v12, qword_1ED82BCF0);
    v13 = v1;
    v14 = sub_19A5723DC();
    v15 = sub_19A57355C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_19A2DE000, v14, v15, "LoadIn failure. Unable to initialize model metadata cache: %{public}@.", v16, 0xCu);
      sub_19A2F3FA0(v17, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v16, -1, -1);
    }

    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_19A4AAECC()
{
  v1 = v0[117];
  v2 = v0[115];
  v3 = v0[114];
  sub_19A4AF7A4(v0[112], type metadata accessor for ConcreteAdapter);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4AAFBC()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 864);
  v3 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  v4 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_beginAccess();
  sub_19A4B0BD0(v2, v1 + v3, &qword_1EAFA25F8);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_19A4AB0AC, 0, 0);
}

uint64_t sub_19A4AB0AC()
{
  *(*(v0 + 856) + 24) = 0;

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4AB17C(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4AB2E0, 0, 0);
}

uint64_t sub_19A4AB2E0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  v4.value = AppleDiffusionAdapter.init(modelCatalogInferenceAssetIdentifier:)(v3).value;
  *(v0 + 416) = v4;
  if (v4.value != DiffusionBase_AppleDiffusionAdapter_unknownDefault)
  {
    v7 = *(v0 + 304);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    v8 = *(v7 + 16);
    *(v0 + 384) = v8;
    v9 = sub_19A4AB478;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v9, v8, 0);
  }

  v5 = sub_19A4B032C();
  if (v6)
  {
    if (v5 == *(v0 + 288) && v6 == *(v0 + 296))
    {

LABEL_8:
      v8 = *(*(v0 + 304) + 16);
      *(v0 + 392) = v8;
      v9 = sub_19A4AB8B4;
      goto LABEL_9;
    }

    v10 = sub_19A573F1C();

    if (v10)
    {
      goto LABEL_8;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_19A4AB478()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 416);
  swift_beginAccess();
  sub_19A4A64F0(v2, v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_19A4AB518, 0, 0);
}

uint64_t sub_19A4AB518()
{
  v1 = *(v0 + 360);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) == 1)
  {
    v2 = *(v0 + 376);
    sub_19A2F3FA0(v1, &qword_1EAFA25F8);
    v3 = type metadata accessor for ConcreteAdapter();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  else
  {
    sub_19A33546C(v1, *(v0 + 352), &qword_1EAFA25F8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(v0 + 376);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2608) + 48);
      sub_19A2EA460(v7, v0 + 96);
      sub_19A3351B8(v7 + v8, v5, &unk_1EAFA2BF0);
      v9 = *(v0 + 120);
      v10 = __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
      *(v0 + 192) = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 168));
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
      sub_19A2F3FA0(v0 + 136, &qword_1EAFA0228);
      *(v0 + 136) = *(v0 + 168);
      *(v0 + 152) = *(v0 + 184);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
    }

    else
    {
      v12 = *v7;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2600);
      sub_19A3351B8(v7 + *(v13 + 48), v5, &unk_1EAFA2BF0);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25E8);
      sub_19A2F3FA0(v0 + 136, &qword_1EAFA0228);
      *(v0 + 136) = v12;
      *(v0 + 160) = v14;
    }

    sub_19A2F3FA0(v6, &qword_1EAFA25F8);
  }

  sub_19A4ABF6C(*(v0 + 376));
  v15 = *(v0 + 376);
  sub_19A2F3FA0(v0 + 136, &qword_1EAFA0228);
  sub_19A2F3FA0(v15, &unk_1EAFA2BF0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_19A4AB8B4()
{
  v1 = v0[49];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v6 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  swift_beginAccess();
  sub_19A33546C(v1 + v6, v3, &qword_1EAFA25F8);
  (*(v5 + 56))(v2, 1, 1, v4);
  swift_beginAccess();
  sub_19A4B0BD0(v2, v1 + v6, &qword_1EAFA25F8);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_19A4AB9C8, 0, 0);
}

uint64_t sub_19A4AB9C8()
{
  v1 = v0[43];
  if ((*(v0[40] + 48))(v1, 1, v0[39]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAFA25F8);
    type metadata accessor for GeneratorError(0);
    sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v2 = 0xD00000000000003ALL;
    v2[1] = 0x800000019A59B890;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[38];
    sub_19A4AF61C(v1, v0[41], type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
    *(v5 + 24) = 0;

    v6 = swift_task_alloc();
    v0[50] = v6;
    *v6 = v0;
    v6[1] = sub_19A4ABC00;
    v7 = v0[46];
    v8 = v0[41];

    return sub_19A4A2DA8((v0 + 7), v7, v8);
  }
}

uint64_t sub_19A4ABC00()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_19A4ABE8C;
  }

  else
  {
    sub_19A2F3FA0(*(v2 + 368), &unk_1EAFA2BF0);
    v3 = sub_19A4ABD2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A4ABD2C()
{
  sub_19A2EA460((v0 + 56), v0 + 16);
  sub_19A4AC294(v0 + 16);
  sub_19A4AF7A4(*(v0 + 328), type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4ABE8C()
{
  v1 = *(v0 + 328);
  swift_willThrow();
  sub_19A4AF7A4(v1, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A4ABF6C(uint64_t a1)
{
  v2 = sub_19A570EAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2BF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-v10];
  sub_19A33546C(a1, &v19[-v10], &unk_1EAFA2BF0);
  v12 = type metadata accessor for ConcreteAdapter();
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    return sub_19A2F3FA0(v11, &unk_1EAFA2BF0);
  }

  (*(v3 + 16))(v8, &v11[*(v12 + 20)], v2);
  sub_19A4AF7A4(v11, type metadata accessor for ConcreteAdapter);
  (*(v3 + 32))(v6, v8, v2);
  if (MEMORY[0x1E6985FB0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000019A59B780;
    v15 = sub_19A570E4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v15;
    *(inited + 56) = v16;
    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00);
    v17 = sub_19A572CCC();
    v18 = sub_19A572ADC();

    sendAneSignal();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_19A4AC294(uint64_t a1)
{
  v2 = sub_19A570EAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2638);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7 - 8];
  v9 = type metadata accessor for AppleDiffusionPipeline(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_19A2F3EF0(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    sub_19A4AF61C(v8, v12, type metadata accessor for AppleDiffusionPipeline);
    v15 = *(v12 + 3);
    if (*(v15 + 16))
    {
      (*(v3 + 16))(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
      sub_19A4B0488();
      (*(v3 + 8))(v5, v2);
    }

    return sub_19A4AF7A4(v12, type metadata accessor for AppleDiffusionPipeline);
  }

  else
  {
    v14(v8, 1, 1, v9);
    return sub_19A2F3FA0(v8, &qword_1EAFA2638);
  }
}

uint64_t sub_19A4AC548()
{
}

uint64_t sub_19A4AC578()
{

  return swift_deallocClassInstance();
}

void sub_19A4AC624()
{
  sub_19A4AC6CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A4AC6CC()
{
  if (!qword_1EAF9EA08)
  {
    type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(255);
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9EA08);
    }
  }
}

void sub_19A4AC744()
{
  sub_19A4AC7E8(319, &qword_1EAF9E820, &qword_1EAFA25E8);
  if (v0 <= 0x3F)
  {
    sub_19A4AC7E8(319, &qword_1EAF9EF50, &qword_1EAFA25F0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_19A4AC7E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAFA2BF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_19A4AC868@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_19A31FA78(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19A32C05C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_19A573AFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_19A3355EC((*(v9 + 56) + 32 * v7), a2);
    sub_19A4AC944(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_19A4AC944(int64_t a1, uint64_t a2)
{
  v4 = sub_19A573AFC();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_19A5738AC();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_19A572B3C();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4ACBF8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4ACED8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4AD0D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    do
    {
      sub_19A5740BC();

      sub_19A572E4C();
      v9 = sub_19A57410C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19A4AD280(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_19A5740BC();
      MEMORY[0x19A901C40](v10);
      MEMORY[0x19A901C40](v11);
      result = sub_19A57410C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v3);
      v15 = (v13 + 16 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for GeneratedImage() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19A4AD460(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19A5738AC() + 1) & ~v5;
    while (1)
    {
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19A4AD7C8(_BYTE *a1, char a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      return 9;
    }

    else
    {
      return 8;
    }
  }

  v4 = *a1;
  if (a2)
  {
    if (*a1 > 2u)
    {
      if ((v4 - 3) < 2)
      {
        return 7;
      }

LABEL_26:
      type metadata accessor for GeneratorError(0);
      sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
      swift_allocError();
      *v7 = v4;
      *(v7 + 8) = 0xD000000000000029;
      *(v7 + 16) = 0x800000019A596020;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    if (v4 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }

    if (*a1)
    {
      return v5;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (*a1 > 2u)
    {
      if ((v4 - 3) < 2)
      {
        return 6;
      }

      if (v4 == 5)
      {
        return 10;
      }

      goto LABEL_26;
    }

    if (v4 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 4;
    }

    if (*a1)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _s13DiffusionBase05AppleA13ModelMetadataV14StyleSelectionO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_19A4AD974(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = 6;
  if (v6 <= 1)
  {
    if (!*a1 || v6 == 1)
    {
      goto LABEL_8;
    }
  }

  else if (v6 == 2 || v6 == 3 || v6 == 5)
  {
LABEL_8:
    v8 = _s13DiffusionBase05AppleA13ModelMetadataV14StyleSelectionO8rawValueAESgSS_tcfC_0();
    if (v8 == 7)
    {
      v7 = 6;
    }

    else
    {
      v7 = v8;
    }
  }

  type metadata accessor for AppleDiffusionResourceFactory(0);
  v9 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (!v3)
  {
    v12 = *(v9 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

    if (*(v12 + 16))
    {
      v13 = sub_19A31FBD4(a2);
      if (v14)
      {
        v15 = *(*(v12 + 56) + 360 * v13 + 320);

        if (!v15)
        {
LABEL_20:
          v38 = 0;
          v42 = 0;
          v39 = 0;
          v10 = 0;
          v11 = 1;
          goto LABEL_21;
        }

        if (*(v15 + 16))
        {
          v16 = sub_19A31FB90(v7);
          if (v17)
          {
            v18 = (*(v15 + 56) + 40 * v16);
            v19 = v18[1];
            v38 = *v18;
            v20 = v18[2];
            v21 = v18[3];
            v10 = v18[4];

            v11 = v19;

            v42 = v20;

            v39 = v21;

            goto LABEL_21;
          }
        }
      }
    }

    goto LABEL_20;
  }

  v38 = 0;
  v42 = 0;
  v39 = 0;
  v10 = 0;
  v11 = 1;
LABEL_21:
  v22 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

  if (!*(v22 + 16) || (v23 = sub_19A31FBD4(a2), (v24 & 1) == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  v25 = *(*(v22 + 56) + 360 * v23 + 320);

  if (v25)
  {
    if (*(v25 + 16))
    {
      v26 = sub_19A31FB90(5u);
      if (v27)
      {
        v28 = (*(v25 + 56) + 40 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[2];
        v32 = v28[3];
        v33 = v28[4];

        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 1;
LABEL_29:
  if (v11 != 1)
  {
    v41[5] = v38;
    v41[6] = v11;
    v41[7] = v42;
    v41[8] = v39;
    v41[9] = v10;
    if (v30 == 1)
    {
      v29 = v38;
      v30 = v11;
      v31 = v42;
      v32 = v39;
      v33 = v10;
    }

    else
    {
      v41[0] = v29;
      v41[1] = v30;
      v41[2] = v31;
      v41[3] = v32;
      v41[4] = v33;
      AppleDiffusionModelMetadata.Adapter_StyleSpecificAugmentations.merge(overriding:)(v41, v40);
      v29 = v40[0];
      v34 = v40[1];
      v36 = v40[3];
      v37 = v40[2];
      v35 = v40[4];

      v31 = v37;
      v30 = v34;
      v32 = v36;
      v33 = v35;
    }
  }

  *a3 = v29;
  a3[1] = v30;
  a3[2] = v31;
  a3[3] = v32;
  a3[4] = v33;
}

uint64_t sub_19A4ADDA8(_BYTE *a1, char a2, unsigned __int8 a3)
{
  v3 = a3;
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    if (*a1 <= 3u)
    {
      if (*a1 > 1u)
      {
        if (v4 == 2)
        {
          if (a3 == 1)
          {
            v5 = 5;
          }

          else
          {
            v5 = 4;
          }
        }

        else if (a3 == 1)
        {
          v5 = 7;
        }

        else
        {
          v5 = 6;
        }
      }

      else if (*a1)
      {
        if (a3 == 1)
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = a3 == 1;
      }

      goto LABEL_33;
    }

    v6 = (v4 - 6) < 2 || v4 == 4;
    if (v6 || a3 == 1)
    {
      return 0;
    }

    v5 = 10;
LABEL_20:

LABEL_34:
    v8 = 0;
    goto LABEL_35;
  }

  if (a3 == 1)
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  if (*a1 <= 3u)
  {
    goto LABEL_33;
  }

  if (*a1 <= 5u)
  {
    if (v4 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (v4 != 6)
  {
    if (a3 == 1)
    {

      v5 = 9;
      goto LABEL_61;
    }

    if (a3 == 2)
    {

      v5 = 8;
      goto LABEL_61;
    }

    v5 = 8;
LABEL_83:

    type metadata accessor for AppleDiffusionResourceFactory(0);
    v42 = static AppleDiffusionResourceFactory.shared(reset:)(0);
    goto LABEL_62;
  }

LABEL_33:
  v7 = sub_19A573F1C();

  v8 = v4;
  if (v7)
  {
    goto LABEL_34;
  }

LABEL_35:
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v9 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

  if (!*(v9 + 16))
  {
    goto LABEL_42;
  }

  v10 = sub_19A31FBD4(v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_42;
  }

  v12 = *(*(v9 + 56) + 360 * v10 + 312);

  if (!v12)
  {
    goto LABEL_43;
  }

  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v13 = 0xE500000000000000;
        v14 = 0x696A6F6D65;
      }

      else
      {
        v14 = 0x61727473756C6C69;
        v13 = 0xEC0000006E6F6974;
      }
    }

    else
    {
      v14 = 0x6F6974616D696E61;
      v13 = 0xE90000000000006ELL;
    }
  }

  else if (v8 > 4)
  {
    v13 = 0xE800000000000000;
    v14 = 0x6C616E7265747865;
  }

  else if (v8 == 3)
  {
    v13 = 0xE600000000000000;
    v14 = 0x686374656B73;
  }

  else
  {
    v13 = 0xE700000000000000;
    v14 = 0x747241656E696CLL;
  }

  if (!*(v12 + 16))
  {

LABEL_42:

LABEL_43:
    if ((v3 - 1) < 2)
    {

      v15 = 6;
      if (v4 < 4 || v4 == 5)
      {
        v16 = _s13DiffusionBase05AppleA13ModelMetadataV14StyleSelectionO8rawValueAESgSS_tcfC_0();
        if (v16 == 7)
        {
          v15 = 6;
        }

        else
        {
          v15 = v16;
        }
      }

      v17 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

      if (!*(v17 + 16))
      {
        goto LABEL_60;
      }

      v18 = sub_19A31FBD4(v5);
      if ((v19 & 1) == 0)
      {
        goto LABEL_60;
      }

      v20 = *(*(v17 + 56) + 360 * v18 + 320);

      if (!v20)
      {
        goto LABEL_61;
      }

      if (!*(v20 + 16) || (v21 = sub_19A31FB90(v15), (v22 & 1) == 0))
      {
LABEL_60:

        goto LABEL_61;
      }

      v23 = (*(v20 + 56) + 40 * v21);
      v25 = *v23;
      v24 = v23[1];

      if (v24)
      {
        return v25;
      }

LABEL_61:
      type metadata accessor for AppleDiffusionResourceFactory(0);
      v33 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

      if (*(v33 + 16))
      {
        v34 = sub_19A31FBD4(v5);
        if (v35)
        {
          v36 = *(*(v33 + 56) + 360 * v34 + 320);

          if (!v36)
          {
LABEL_80:
            v42 = static AppleDiffusionResourceFactory.shared(reset:)(0);
LABEL_62:
            v27 = *(v42 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

            if (*(v27 + 16) && (v28 = sub_19A31FBD4(v5), (v29 & 1) != 0))
            {
              v30 = *(v27 + 56) + 360 * v28;
              v31 = *(v30 + 200);
              v32 = *(v30 + 192);
              sub_19A4B0DCC(v32, v31);

              if (v31 != 1)
              {

                return v32;
              }
            }

            else
            {
            }

            return 0;
          }

          if (*(v36 + 16))
          {
            v37 = sub_19A31FB90(5u);
            if (v38)
            {
              v39 = (*(v36 + 56) + 40 * v37);
              v41 = *v39;
              v40 = v39[1];

              if (v40)
              {
                return v41;
              }

              goto LABEL_80;
            }
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_83;
  }

  v43 = sub_19A31F6BC(v14, v13);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    goto LABEL_42;
  }

  v46 = *(*(v12 + 56) + 16 * v43);

  return v46;
}

unint64_t sub_19A4AE4E4()
{
  result = static AppleDiffusionPipeline.supportedImageResolutions()();
  v1 = result;
  v13 = 0;
  if (result >> 62)
  {
    result = sub_19A573B4C();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x19A901520](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 pixelsWide];
    v8 = [v6 pixelsHigh];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_19A31D080(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = sub_19A31D080((v9 > 1), v10 + 1, 1, v4);
    }

    ++v3;

    *(v4 + 2) = v10 + 1;
    v11 = &v4[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v8;
  }

  while (v2 != v3);
LABEL_16:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_19A32E448(v4);
  }

  v12 = *(v4 + 2);
  v14[0] = (v4 + 32);
  v14[1] = v12;
  sub_19A34D620(v14);
  return v4;
}

uint64_t sub_19A4AE6A4()
{
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v0 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata);

  if (*(v0 + 16) && (v1 = sub_19A31FCAC(0), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 360 * v1);
    v4 = v3[25];
    v5 = v3[27];
    sub_19A4B0DCC(v3[24], v4);

    if (v4 != 1)
    {

      return v5;
    }
  }

  else
  {
  }

  return 0;
}

char *sub_19A4AE77C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = 0;
  v29 = &v27 - v7;
  v30 = MEMORY[0x1E69E7CC0];
  v31 = v5;
  do
  {
    v9 = byte_1F0DA7A48[v6 + 32];
    if (v9 <= 2)
    {
      v10 = byte_1F0DA7A48[v6 + 32];
      if (byte_1F0DA7A48[v6 + 32])
      {
        if (v9 == 1)
        {
          v10 = 2;
        }

        else
        {
          v10 = 4;
        }
      }
    }

    else if (v9 - 3 >= 2)
    {
      if (v9 != 5)
      {
        goto LABEL_4;
      }

      v10 = 10;
    }

    else
    {
      v10 = 6;
    }

    v11 = sub_19A570EAC();
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v13(v5, 1, 1, v11);
    type metadata accessor for AppleDiffusionResourceFactory(0);
    v14 = static AppleDiffusionResourceFactory.shared(reset:)(0);
    v28 = v13;
    v15 = v14 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs;
    v16 = *(v15 + *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) + 28));
    if (*(v16 + 16) && (v17 = sub_19A31FBD4(v10), (v18 & 1) != 0))
    {
      (*(v12 + 16))(v27, *(v16 + 56) + *(v12 + 72) * v17, v11);

      v19 = v31;
      sub_19A2F3FA0(v31, &qword_1EAFA02E8);
      v20 = 0;
    }

    else
    {
      v19 = v31;
      sub_19A2F3FA0(v31, &qword_1EAFA02E8);

      v20 = 1;
    }

    v21 = v27;
    v28(v27, v20, 1, v11);
    sub_19A3351B8(v21, v19, &qword_1EAFA02E8);
    v22 = v19;
    v23 = v29;
    sub_19A3351B8(v22, v29, &qword_1EAFA02E8);
    LODWORD(v21) = (*(v12 + 48))(v23, 1, v11);
    sub_19A2F3FA0(v23, &qword_1EAFA02E8);
    if (v21 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_19A31D27C(0, *(v30 + 2) + 1, 1, v30);
      }

      v25 = *(v30 + 2);
      v24 = *(v30 + 3);
      if (v25 >= v24 >> 1)
      {
        v30 = sub_19A31D27C((v24 > 1), v25 + 1, 1, v30);
      }

      v8 = v30;
      *(v30 + 2) = v25 + 1;
      v8[v25 + 32] = v9;
    }

    v5 = v31;
LABEL_4:
    ++v6;
  }

  while (v6 != 5);
  return v30;
}

uint64_t sub_19A4AEB44(char a1, uint64_t a2)
{
  v5 = type metadata accessor for AppleDiffusionResourceFactory(0);
  v6 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (!v2)
  {
    v7 = *(v6 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

    if (*(v7 + 16))
    {
      v8 = sub_19A31FBD4(a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 360 * v8 + 328);

        if (!v10)
        {
          return 0;
        }

        if (*(v10 + 16))
        {
          v11 = sub_19A31FEBC(a1 & 1);
          if (v12)
          {
            v5 = *(*(v10 + 56) + 8 * v11);

            return v5;
          }
        }
      }
    }

    return 0;
  }

  return v5;
}

void *sub_19A4AEC40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19A489428(__src);
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v4 = *(static AppleDiffusionResourceFactory.shared(reset:)(0) + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);

  if (*(v4 + 16) && (v5 = sub_19A31FBD4(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 360 * v5);
    memcpy(__dst, v7, sizeof(__dst));
    memmove(v12, v7, 0x168uLL);
    nullsub_2(v12);
    sub_19A4895B4(__dst, &v10);

    v8 = v12;
  }

  else
  {

    v8 = __src;
  }

  memcpy(v13, v8, sizeof(v13));
  return memcpy(a2, v13, 0x168uLL);
}

uint64_t *sub_19A4AED60(unsigned __int8 *a1, uint64_t a2)
{
  v52 = a1;
  v4 = sub_19A570D4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v37 - v8;
  v9 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for ConcreteAdapter();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  sub_19A2F3EF0(a2, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA25F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    sub_19A2F3FA0(v45, &qword_1EAFA2628);
LABEL_8:
    type metadata accessor for GeneratorError(0);
    sub_19A4AF86C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    v27 = v26;
    v48 = 0;
    v49 = 0xE000000000000000;
    v25 = &v48;
    sub_19A57395C();
    sub_19A573ACC();
    MEMORY[0x19A900A50](0xD00000000000001DLL, 0x800000019A59B650);
    v28 = v49;
    *v27 = v48;
    v27[1] = v28;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v25;
  }

  v38 = v5;
  v39 = v4;
  v40 = v2;
  sub_19A2EA460(v45, &v48);
  v15 = v50;
  v16 = v51;
  __swift_project_boxed_opaque_existential_1(&v48, v50);
  if (((*(v16 + 24))(v15, v16) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    goto LABEL_8;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v18 = v52;
  sub_19A570E4C();
  v19 = sub_19A572CCC();

  v20 = [v17 fileExistsAtPath_];

  if (v20)
  {
    v21 = sub_19A5731CC();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = v42;
    sub_19A4AF804(v18, v42, type metadata accessor for ConcreteAdapter);
    sub_19A2F3EF0(&v48, v47);
    v23 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_19A4AF61C(v22, v24 + v23, type metadata accessor for ConcreteAdapter);
    sub_19A2EA460(v47, v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v25 = sub_19A4A0418(0, 0, v14, &unk_19A58C168, v24);
  }

  else
  {
    sub_19A572C8C();
    sub_19A572C7C();
    AppleDiffusionAdapter.rawValue.getter(*v18);
    sub_19A572C6C();

    sub_19A572C7C();
    v30 = v44;
    sub_19A570D3C();
    sub_19A379E50();
    swift_allocError();
    v32 = v31;
    v33 = v38;
    v34 = v39;
    (*(v38 + 16))(v43, v30, v39);
    v25 = sub_19A572D8C();
    v36 = v35;
    (*(v33 + 8))(v30, v34);
    *v32 = v25;
    v32[1] = v36;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v48);
  return v25;
}

char *sub_19A4AF380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v11 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (!v0)
  {
    sub_19A4AF804(v11 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v10, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

    v12 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v12 setComputeUnits_];
    v13 = sub_19A5731CC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_19A4AF804(v10, v8, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_19A4AF61C(v8, v16 + v14, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
    *(v16 + v15) = v12;
    v3 = sub_19A4A0418(0, 0, v3, &unk_19A58C120, v16);
    sub_19A4AF7A4(v10, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
  }

  return v3;
}

uint64_t sub_19A4AF61C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4AF684(uint64_t a1)
{
  v4 = *(type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A33558C;

  return sub_19A4A5D40(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_19A4AF7A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A4AF804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4AF86C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A4AF8B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ConcreteAdapter() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_19A33558C;

  return sub_19A4A4D44(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_19A4AFA14(uint64_t a1)
{
  v4 = *(type metadata accessor for ConcreteAdapter() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A33558C;

  return sub_19A4A61BC(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_19A4AFB3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_19A4AFBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v56 = a2;
  if (MEMORY[0x1E6985FB0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E20;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000019A59B780;
    v5 = sub_19A570E4C();
    v6 = MEMORY[0x1E69E6158];
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    *(inited + 72) = v6;
    *(inited + 80) = 0xD000000000000020;
    *(inited + 88) = 0x800000019A59B7A0;
    v8 = sub_19A57313C();
    type metadata accessor for CFBoolean(0);
    *(inited + 120) = v9;
    *(inited + 96) = v8;
    sub_19A330370(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
    swift_arrayDestroy();
    v10 = sub_19A572CCC();
    v11 = sub_19A572ADC();

    v12 = sendAneSessionSignal();

    if (v12)
    {
      v13 = sub_19A572AFC();

      v57 = 0xD000000000000016;
      v58 = 0x800000019A59B7F0;
      sub_19A5738EC();
      if (!*(v13 + 16))
      {
        goto LABEL_13;
      }

      v14 = sub_19A31F918(v59);
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_19A334618(*(v13 + 56) + 32 * v14, v60);
      sub_19A3345C4(v59);
      sub_19A4B0D60();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_19:

        return;
      }

      v54 = [v57 integerValue];

      v57 = 0xD000000000000013;
      v58 = 0x800000019A59B810;
      sub_19A5738EC();
      if (*(v13 + 16) && (v16 = sub_19A31F918(v59), (v17 & 1) != 0))
      {
        sub_19A334618(*(v13 + 56) + 32 * v16, v60);
        sub_19A3345C4(v59);

        if (swift_dynamicCast())
        {
          v18 = [v57 integerValue];

          v19 = v18;
          if (qword_1ED824050 != -1)
          {
            swift_once();
            v19 = v18;
          }

          v20 = v54 / v19;
          v21 = sub_19A5723FC();
          __swift_project_value_buffer(v21, qword_1ED82BCF0);
          v22 = sub_19A570EAC();
          v53 = &v49;
          v23 = *(v22 - 8);
          MEMORY[0x1EEE9AC00](v22);
          v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v23 + 16))(v25, a3, v22);
          v26 = sub_19A5723DC();
          v27 = sub_19A57356C();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v51 = v27;
            v29 = v28;
            v52 = swift_slowAlloc();
            v59[0] = v52;
            *v29 = 134218498;
            *(v29 + 4) = v54;
            *(v29 + 12) = 2048;
            *(v29 + 14) = v18;
            *(v29 + 22) = 2082;
            v50 = v26;
            v30 = sub_19A570E4C();
            v54 = v18;
            v32 = v31;
            (*(v23 + 8))(v25, v22);
            v33 = sub_19A31F114(v30, v32, v59);
            v18 = v54;

            *(v29 + 24) = v33;
            v34 = v50;
            _os_log_impl(&dword_19A2DE000, v50, v51, "ANE Session resident pages: %ld / %ld for asset at %{public}s", v29, 0x20u);
            v35 = v52;
            __swift_destroy_boxed_opaque_existential_0Tm(v52);
            MEMORY[0x19A902C50](v35, -1, -1);
            MEMORY[0x19A902C50](v29, -1, -1);
          }

          else
          {

            (*(v23 + 8))(v25, v22);
          }

          v36 = v56;
          v37 = swift_initStackObject();
          *(v37 + 16) = xmmword_19A57A9D0;
          *(v37 + 32) = 0xD000000000000019;
          v38 = v55;
          *(v37 + 40) = 0x800000019A59B830;
          *(v37 + 48) = v38;
          *(v37 + 56) = v36;
          *(v37 + 72) = MEMORY[0x1E69E6158];
          *(v37 + 80) = 0xD000000000000011;
          *(v37 + 88) = 0x800000019A59B850;
          v39 = MEMORY[0x1E69E6448];
          *(v37 + 96) = v20;
          *(v37 + 120) = v39;
          strcpy((v37 + 128), "memoryCostKB");
          *(v37 + 141) = 0;
          *(v37 + 142) = -5120;
          if ((v18 - 0x800000000000000) >> 60 == 15)
          {
            v40 = MEMORY[0x1E69E6530];
            *(v37 + 144) = 16 * v18;
            *(v37 + 168) = v40;
            strcpy((v37 + 176), "timestampValue");
            *(v37 + 191) = -18;
            v41 = v37;
            v42 = sub_19A570FBC();
            v43 = *(v42 - 8);
            MEMORY[0x1EEE9AC00](v42);
            v45 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);

            sub_19A570F9C();
            sub_19A570F8C();
            v47 = v46;
            (*(v43 + 8))(v45, v42);
            *(v41 + 216) = MEMORY[0x1E69E63B0];
            *(v41 + 192) = v47;
            v48 = sub_19A330370(v41);
            swift_setDeallocating();
            swift_arrayDestroy();
            if (PowerLog.fileResidentInfoLogger.unsafeMutableAddressor()[1])
            {

              PowerLog.CategoryReporter.report(payload:)(v48);
            }

            goto LABEL_19;
          }

          __break(1u);
        }
      }

      else
      {
LABEL_13:

        sub_19A3345C4(v59);
      }
    }
  }
}

uint64_t sub_19A4B032C()
{
  v8[3] = &type metadata for AppleDiffusionImageGenerator.Descriptor;
  v8[4] = &off_1F0DB3E58;
  v8[0] = 0xD000000000000029;
  v8[1] = 0x800000019A596020;
  sub_19A2F3EF0(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1340);
  if (swift_dynamicCast())
  {
    v0 = *(&v6 + 1);
    v1 = v7;
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    __swift_destroy_boxed_opaque_existential_0Tm(&v5);
    return v2;
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    sub_19A2F3FA0(&v5, &qword_1EAFA1348);
    return 0;
  }
}

void sub_19A4B0488()
{
  if (MEMORY[0x1E6985FB0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000019A59B780;
    v1 = sub_19A570E4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v1;
    *(inited + 56) = v2;
    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00);
    v3 = sub_19A572CCC();
    v4 = sub_19A572ADC();

    sendAneSignal();
  }
}

uint64_t sub_19A4B05C0(uint64_t a1, void *a2)
{
  v35 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v4 = MEMORY[0x1EEE9AC00](v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = sub_19A570EAC();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;

  v18._countAndFlagsBits = a1;
  v18._object = a2;
  LOBYTE(v19) = AppleDiffusionAdapter.init(modelCatalogInferenceAssetIdentifier:)(v18);
  if (v19 != 11)
  {
    v20 = v19;
    type metadata accessor for AppleDiffusionResourceFactory(0);
    v21 = v36;
    result = static AppleDiffusionResourceFactory.shared(reset:)(0);
    if (v21)
    {
      return result;
    }

    v36 = 0;
    sub_19A4AF804(result + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v8, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

    v23 = *&v8[*(v35 + 28)];

    sub_19A4AF7A4(v8, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
    if (*(v23 + 16))
    {
      v24 = sub_19A31FBD4(v20);
      if (v25)
      {
        v27 = v33;
        v26 = v34;
        (*(v33 + 16))(v15, *(v23 + 56) + *(v33 + 72) * v24, v34);

        (*(v27 + 32))(v17, v15, v26);
LABEL_14:
        sub_19A4B0488();
        return (*(v27 + 8))(v17, v26);
      }
    }
  }

  result = sub_19A4B032C();
  if (!v28)
  {
    return result;
  }

  if (result == a1 && v28 == a2)
  {
  }

  else
  {
    v29 = sub_19A573F1C();

    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  type metadata accessor for AppleDiffusionResourceFactory(0);
  v30 = v36;
  result = static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (!v30)
  {
    v36 = 0;
    sub_19A4AF804(result + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v6, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

    v31 = *&v6[*(v35 + 24)];

    sub_19A4AF7A4(v6, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
    v31(0);

    v17 = v12;
    v27 = v33;
    v26 = v34;
    goto LABEL_14;
  }

  return result;
}

float sub_19A4B0970(uint64_t a1, uint64_t a2)
{
  v4 = 0.0;
  if (sub_19A39BD48())
  {
    return v4;
  }

  if (sub_19A39E69C())
  {
    v5 = *(a2 + 8);
    if (*(v5 + 16))
    {
      v6 = sub_19A3200C0(1);
      if (v7)
      {
        v4 = *(*(v5 + 56) + 4 * v6);
      }
    }

    v8 = *(a2 + 16);
    if (*(v8 + 16))
    {
      sub_19A3200C0(5);
    }

    v9 = *(a1 + *(type metadata accessor for GenerationRecipe(0) + 24));
    if (*(v9 + 16))
    {
      v10 = *(v9 + 32);
      if (v10 >= 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 0x120E050Au >> (8 * v10);
      }

      if (*(v5 + 16))
      {
        if (v10 >= 4)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0x130F010Bu >> (8 * v10);
        }

        goto LABEL_40;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v13 = type metadata accessor for GenerationRecipe(0);
    v14 = v13;
    if (*(a1 + *(v13 + 84) + 24))
    {
      v15 = *(a1 + *(v13 + 92) + 24);
      if (v15)
      {
        v11 = 6;
      }

      else
      {
        v11 = 7;
      }

      v16 = *(a2 + 8);
      if (*(v16 + 16))
      {
        v17 = v15 ? 2 : 3;
        v18 = sub_19A3200C0(v17);
        if (v19)
        {
          v4 = *(*(v16 + 56) + 4 * v18);
        }
      }

      v8 = *(a2 + 16);
      goto LABEL_42;
    }

    v5 = *(a2 + 8);
    if (*(v5 + 16))
    {
      v20 = sub_19A3200C0(0);
      if (v21)
      {
        v4 = *(*(v5 + 56) + 4 * v20);
      }
    }

    v8 = *(a2 + 16);
    if (*(v8 + 16))
    {
      sub_19A3200C0(4);
    }

    v22 = *(a1 + *(v14 + 24));
    if (*(v22 + 16))
    {
      v23 = *(v22 + 32);
      if (v23 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 0x100C0408u >> (8 * v23);
      }

      if (*(v5 + 16))
      {
        if (v23 >= 4)
        {
          v12 = 0;
        }

        else
        {
          v12 = 0x110D0009u >> (8 * v23);
        }

LABEL_40:
        v24 = sub_19A3200C0(v12);
        if (v25)
        {
          v4 = *(*(v5 + 56) + 4 * v24);
        }
      }

LABEL_42:
      if (*(v8 + 16))
      {
        sub_19A3200C0(v11);
      }
    }
  }

  return v4;
}

uint64_t sub_19A4B0BD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_19A4B0C38(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 < 0xFFFFFFFE00000000 || (a4 & 0xFE) != 2)
  {
    sub_19A4B0C5C(a1, a2, a3, a4);
  }
}

void sub_19A4B0C5C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }
}

unint64_t sub_19A4B0CFC()
{
  result = qword_1EAF9E868;
  if (!qword_1EAF9E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAFA32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E868);
  }

  return result;
}

unint64_t sub_19A4B0D60()
{
  result = qword_1ED823EA8;
  if (!qword_1ED823EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED823EA8);
  }

  return result;
}

uint64_t sub_19A4B0DCC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_19A4B0E14(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (v5 = sub_19A43950C(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v6 + 24));
    sub_19A4B10D8((v6 + 16), &v8);
    os_unfair_lock_unlock((v6 + 24));
    return v8;
  }

  else
  {
  }

  return v3;
}

uint64_t sub_19A4B0EDC()
{
  MecabraRelease();

  return swift_deallocClassInstance();
}

void *sub_19A4B0F6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    type metadata accessor for HiraganaConverterEngine();
    v8 = swift_allocObject();
    v9 = MecabraCreateWithOptions();
    if (!v9)
    {
      swift_deallocPartialClassInstance();
      *a1 = 0;
      *a4 = a2;
      a4[1] = a3;
    }

    *(v8 + 16) = v9;
    *a1 = v8;
  }

  v10 = sub_19A572CCC();
  v11 = MecabraAnalyzeString();

  if (v11 && MecabraGetNextCandidate())
  {
    result = MecabraCandidateGetSurface();
    if (result)
    {
      v13 = result;
      v14 = sub_19A572CFC();
      v16 = v15;

      *a4 = v14;
      a4[1] = v16;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t sub_19A4B10F4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *sub_19A4B1174(void *a1)
{
  v1 = a1;
  v9 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C50);
  if (swift_dynamicCast())
  {
    sub_19A2EA460(v7, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v1 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_19A2F3FA0(v7, &unk_1EAFA26D0);
    v5 = v1;
  }

  return v1;
}

uint64_t sub_19A4B127C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  sub_19A4B1880(a1, a2, a3, v25 - v9);
  v11 = sub_19A571CAC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19A2F3FA0(v10, &qword_1EAFA2670);
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1ED82BCF0);
    sub_19A4B3B10(a1, a2, a3);
    v14 = sub_19A5723DC();
    v15 = sub_19A57355C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315138;
      v25[0] = a1;
      v25[1] = a2;
      v26 = a3;
      v18 = sub_19A572DAC();
      v20 = sub_19A31F114(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_19A2DE000, v14, v15, "%s could not be represented as a meaningful ModelManagerServices.InferenceError", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v16, -1, -1);
    }

    else
    {
      sub_19A3689E8(a1, a2, a3);
    }

    v21 = MEMORY[0x1E69B25E0];
  }

  else
  {
    (*(v12 + 32))(a4, v10, v11);
    v21 = MEMORY[0x1E69B25C8];
  }

  v22 = *v21;
  v23 = sub_19A571CBC();
  return (*(*(v23 - 8) + 104))(a4, v22, v23);
}

uint64_t sub_19A4B154C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GeneratorError(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2670);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  sub_19A4B1A00(&v27 - v10);
  v12 = sub_19A571CAC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_19A2F3FA0(v11, &qword_1EAFA2670);
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v14 = sub_19A5723FC();
    __swift_project_value_buffer(v14, qword_1ED82BCF0);
    sub_19A4B3A08(v1, v8);
    v15 = sub_19A5723DC();
    v16 = sub_19A57355C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      sub_19A4B3A08(v8, v6);
      v19 = sub_19A572DAC();
      v21 = v20;
      sub_19A4B3A6C(v8);
      v22 = sub_19A31F114(v19, v21, &v28);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_19A2DE000, v15, v16, "%s could not be represented as a meaningful ModelManagerServices.InferenceError", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x19A902C50](v18, -1, -1);
      MEMORY[0x19A902C50](v17, -1, -1);
    }

    else
    {

      sub_19A4B3A6C(v8);
    }

    v23 = MEMORY[0x1E69B25E0];
  }

  else
  {
    (*(v13 + 32))(a1, v11, v12);
    v23 = MEMORY[0x1E69B25C8];
  }

  v24 = *v23;
  v25 = sub_19A571CBC();
  return (*(*(v25 - 8) + 104))(a1, v24, v25);
}

uint64_t sub_19A4B1880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (sub_19A4B1DD0(a1, a2, a3))
  {
    v14 = &type metadata for FrameworkError;
    v15 = sub_19A4B3B28();
    v12[0] = a1;
    v12[1] = a2;
    v13 = a3;
    __swift_project_boxed_opaque_existential_1(v12, &type metadata for FrameworkError);
    sub_19A4B3B10(a1, a2, a3);
    FrameworkError.errorDescription.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    sub_19A571C7C();
    v8 = sub_19A571CAC();
    return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
  }

  else
  {
    v10 = sub_19A571CAC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a4, 1, 1, v10);
  }
}

uint64_t sub_19A4B1A00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_19A572D6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAF9F990 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for GeneratorError(0);
  sub_19A4B3AC8(&qword_1EAFA22E0, type metadata accessor for GeneratorError);
  v9 = sub_19A57083C();
  v11 = v10;
  if (qword_1EAF9F988 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_1EAFA2648);
  (*(v5 + 16))(v7, v12, v4);
  v13 = sub_19A572D1C();
  if (v14)
  {
    v15 = v14;
    v26 = v13;
    v27[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2678);
    v16 = sub_19A572DDC();
    v17 = a1;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E20;
    *(inited + 32) = 0x54726F7272655F5FLL;
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = v16;
    *(inited + 56) = v19;
    *(inited + 64) = 0xD000000000000017;
    a1 = v17;
    v21 = v26;
    *(inited + 72) = 0x800000019A59BAA0;
    *(inited + 80) = v21;
    *(inited + 88) = v15;
    sub_19A330D28(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2688);
    swift_arrayDestroy();
    sub_19A33EFC4(v9, v11);
    v28 = v8;
    v29 = sub_19A4B3AC8(&qword_1EAFA2690, type metadata accessor for GeneratorError);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    sub_19A4B3A08(v2, boxed_opaque_existential_1);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    GeneratorError.errorDescription.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    sub_19A571C7C();
    v23 = 0;
  }

  else
  {
    sub_19A33EFC4(v9, v11);
    v23 = 1;
  }

  v24 = sub_19A571CAC();
  return (*(*(v24 - 8) + 56))(a1, v23, 1, v24);
}

unint64_t sub_19A4B1DD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_19A572D6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[15] = a1;
  v24[16] = a2;
  v25 = a3;
  if (qword_1EAF9F990 != -1)
  {
    swift_once();
  }

  sub_19A451A10();
  v10 = sub_19A57083C();
  v12 = v11;
  if (qword_1EAF9F988 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EAFA2648);
  (*(v7 + 16))(v9, v13, v6);
  v14 = sub_19A572D1C();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v24[13] = &type metadata for FrameworkError;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26A0);
    v18 = sub_19A572DDC();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E20;
    *(inited + 32) = 0x54726F7272655F5FLL;
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = v18;
    *(inited + 56) = v20;
    *(inited + 64) = 0xD000000000000017;
    *(inited + 72) = 0x800000019A59BAA0;
    *(inited + 80) = v16;
    *(inited + 88) = v17;
    v22 = sub_19A330D28(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2688);
    swift_arrayDestroy();
    sub_19A33EFC4(v10, v12);
    return v22;
  }

  else
  {
    sub_19A33EFC4(v10, v12);
    return 0;
  }
}

uint64_t sub_19A4B207C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A571CBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v66 - v9;
  v11 = sub_19A571CAC();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v75 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19A57413C();
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v77 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26A8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v66 - v16;
  *&v86 = a1;
  v18 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  v20 = swift_dynamicCast();
  v21 = *(v5 + 56);
  if (v20)
  {
    v21(v17, 0, 1, v4);
    return (*(v5 + 32))(a2, v17, v4);
  }

  v21(v17, 1, 1, v4);
  sub_19A2F3FA0(v17, &qword_1EAFA26A8);
  v79 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26B0);
  if (swift_dynamicCast())
  {
    sub_19A2EA460(&v82, &v86);
    v24 = *(&v87 + 1);
    v25 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    (*(v25 + 16))(v24, v25);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v86);
  }

  v66[1] = v19;
  v71 = v11;
  v72 = v10;
  v69 = v5;
  v73 = v4;
  v70 = a2;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_19A2F3FA0(&v82, &qword_1EAFA26B8);
  v67 = a1;
  swift_getErrorValue();
  v26 = v90;
  v27 = v91;
  *(&v87 + 1) = v91;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v26, v27);
  sub_19A57411C();
  sub_19A57412C();
  v29 = sub_19A573ABC();

  v78 = v29;
  sub_19A573C0C();
  v68 = v13;
  v30 = MEMORY[0x1E69E7CC8];
  if (v89)
  {
    while (1)
    {
      v82 = v86;
      sub_19A3355EC(&v87, &v83);
      sub_19A4B3B7C(&v82, &v79);
      v35 = v80;
      if (v80)
      {
        break;
      }

      sub_19A2F3FA0(&v82, &qword_1EAFA26C8);
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
LABEL_10:
      sub_19A573C0C();
      if (!v89)
      {
        goto LABEL_6;
      }
    }

    v48 = v8;
    v31 = v79;
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    sub_19A4B3B7C(&v82, &v79);

    v49 = sub_19A572DAC();
    v34 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v30;
    v53 = sub_19A31F6BC(v31, v35);
    v54 = v30[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v8 = v52;
    if (v30[3] < v56)
    {
      sub_19A32B730(v56, isUniquelyReferenced_nonNull_native);
      v57 = sub_19A31F6BC(v31, v35);
      if ((v8 & 1) != (v58 & 1))
      {
        result = sub_19A57404C();
        __break(1u);
        return result;
      }

      v53 = v57;
      if ((v8 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_19:

      v30 = v79;
      v59 = (v79[7] + 16 * v53);
      *v59 = v49;
      v59[1] = v34;

      sub_19A2F3FA0(&v82, &qword_1EAFA26C8);
LABEL_23:
      v8 = v48;
      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v52)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_19A32D67C();
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v30 = v79;
    v79[(v53 >> 6) + 8] |= 1 << v53;
    v60 = (v30[6] + 16 * v53);
    *v60 = v31;
    v60[1] = v35;
    v61 = (v30[7] + 16 * v53);
    *v61 = v49;
    v61[1] = v34;
    sub_19A2F3FA0(&v82, &qword_1EAFA26C8);
    v62 = v30[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_27;
    }

    v30[2] = v64;
    goto LABEL_23;
  }

LABEL_6:

  v31 = v67;
  swift_getErrorValue();
  *&v86 = swift_getDynamicType();
  *(&v86 + 1) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26C0);
  sub_19A572DDC();
  *&v86 = v31;
  v32 = v31;
  sub_19A572DAC();
  v33 = v75;
  sub_19A571C7C();
  v34 = v72;
  (*(v76 + 16))(v72, v33, v71);
  v35 = v69;
  v30 = v73;
  (*(v69 + 104))(v34, *MEMORY[0x1E69B25C8], v73);
  if (qword_1ED824050 != -1)
  {
LABEL_28:
    swift_once();
  }

  v36 = sub_19A5723FC();
  __swift_project_value_buffer(v36, qword_1ED82BCF0);
  v37 = *(v35 + 16);
  v37(v8, v34, v30);
  v38 = v31;
  v39 = sub_19A5723DC();
  v40 = sub_19A57354C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v31;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412546;
    v44 = v41;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v45;
    *v43 = v45;
    *(v42 + 12) = 2112;
    sub_19A4B3AC8(&qword_1EAF9E958, MEMORY[0x1E69B2638]);
    swift_allocError();
    v37(v46, v8, v73);
    v47 = _swift_stdlib_bridgeErrorToNSError();
    (*(v35 + 8))(v8, v73);
    *(v42 + 14) = v47;
    v43[1] = v47;
    v30 = v73;
    _os_log_impl(&dword_19A2DE000, v39, v40, "mapped %@ to %@", v42, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD28);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v43, -1, -1);
    MEMORY[0x19A902C50](v42, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v8, v30);
  }

  v65 = v70;
  (*(v76 + 8))(v75, v71);
  (*(v74 + 8))(v77, v68);
  return (*(v35 + 32))(v65, v72, v30);
}

uint64_t sub_19A4B2ABC()
{
  v0 = sub_19A572D6C();
  __swift_allocate_value_buffer(v0, qword_1EAFA2648);
  __swift_project_value_buffer(v0, qword_1EAFA2648);
  return sub_19A572D4C();
}

uint64_t sub_19A4B2B70(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_19A4B2BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69B2610];
  v3 = sub_19A571CBC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_19A4B2C38()
{
  v1 = v0;
  v2 = sub_19A571CAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A571CBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, v1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x1E69B25C8])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    if (sub_19A571C8C() == 0xD00000000000001ALL && 0x800000019A596E30 == v12)
    {
    }

    else
    {
      v14 = sub_19A573F1C();

      if ((v14 & 1) == 0)
      {
        (*(v3 + 8))(v5, v2);
LABEL_14:
        sub_19A4B3AC8(&qword_1EAF9E958, MEMORY[0x1E69B2638]);
        v15 = swift_allocError();
        v10(v17, v1, v6);
        return v15;
      }
    }

    v16 = sub_19A571C9C();
    v15 = sub_19A4B3554(v16);

    (*(v3 + 8))(v5, v2);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v11 != *MEMORY[0x1E69B2610])
    {
      (*(v7 + 8))(v9, v6);
      goto LABEL_14;
    }

    sub_19A57317C();
    sub_19A4B3AC8(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    v15 = swift_allocError();
    sub_19A572ACC();
  }

  return v15;
}

uint64_t sub_19A4B2F98()
{
  v1 = v0;
  v2 = sub_19A571CAC();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A571CBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = sub_19A571C1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 16);
  v15(v14, v1, v11);
  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == *MEMORY[0x1E69B2578])
  {
    (*(v12 + 96))(v14, v11);
    v17 = *(v5 + 32);
    v17(v10, v14, v4);
    (*(v5 + 16))(v8, v10, v4);
    v18 = (*(v5 + 88))(v8, v4);
    v19 = v10;
    if (v18 == *MEMORY[0x1E69B25C8])
    {
      v30 = v17;
      (*(v5 + 96))(v8, v4);
      v21 = v31;
      v20 = v32;
      (*(v31 + 32))(v33, v8, v32);
      if (sub_19A571C8C() == 0xD00000000000001ALL && 0x800000019A596E30 == v22)
      {
      }

      else
      {
        v25 = sub_19A573F1C();

        if ((v25 & 1) == 0)
        {
          (*(v21 + 8))(v33, v20);
          v17 = v30;
          goto LABEL_16;
        }
      }

      v26 = v33;
      v27 = sub_19A571C9C();
      v23 = sub_19A4B3554(v27);

      (*(v21 + 8))(v26, v20);
      v17 = v30;
      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v18 == *MEMORY[0x1E69B2610])
      {
        sub_19A57317C();
        sub_19A4B3AC8(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
        v23 = swift_allocError();
        sub_19A572ACC();
LABEL_13:
        (*(v5 + 8))(v19, v4);
        return v23;
      }

      (*(v5 + 8))(v8, v4);
    }

LABEL_16:
    sub_19A4B3AC8(&qword_1EAF9E958, MEMORY[0x1E69B2638]);
    v23 = swift_allocError();
    v17(v28, v19, v4);
    return v23;
  }

  if (v16 == *MEMORY[0x1E69B2590])
  {
    sub_19A57317C();
    sub_19A4B3AC8(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    v23 = swift_allocError();
    sub_19A572ACC();
  }

  else
  {
    sub_19A4B3AC8(&qword_1EAF9E960, MEMORY[0x1E69B25A8]);
    v23 = swift_allocError();
    v15(v24, v1, v11);
    (*(v12 + 8))(v14, v11);
  }

  return v23;
}

uint64_t sub_19A4B3554(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_19A31F6BC(0x54726F7272655F5FLL, 0xEB00000000657079);
  if ((v3 & 1) == 0 || !*(a1 + 16))
  {
    return 0;
  }

  v4 = (*(a1 + 56) + 16 * v2);
  v6 = *v4;
  v5 = v4[1];

  sub_19A31F6BC(0xD000000000000017, 0x800000019A59BAA0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = qword_1EAF9F988;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_19A572D6C();
  __swift_project_value_buffer(v9, qword_1EAFA2648);
  v10 = sub_19A572D0C();
  v12 = v11;

  if (v12 >> 60 == 15)
  {
LABEL_8:

    return 0;
  }

  if (v6 == 0xD00000000000001FLL && 0x800000019A59BAC0 == v5 || (sub_19A573F1C() & 1) != 0)
  {

    if (qword_1EAF9F998 != -1)
    {
      swift_once();
    }

    sub_19A2F1130();
    v14 = swift_allocError();
    sub_19A4519BC();
    sub_19A5707BC();
LABEL_30:
    sub_19A33EFB0(v10, v12);
    return v14;
  }

  if ((v6 != 0xD00000000000001FLL || 0x800000019A59BAE0 != v5) && (sub_19A573F1C() & 1) == 0)
  {
    if (v6 == 0xD00000000000002ALL && 0x800000019A59BB00 == v5)
    {
    }

    else
    {
      v16 = sub_19A573F1C();

      if ((v16 & 1) == 0)
      {
        sub_19A33EFB0(v10, v12);
        return 0;
      }
    }

    if (qword_1EAF9F998 != -1)
    {
      swift_once();
    }

    sub_19A379E50();
    v14 = swift_allocError();
    sub_19A47A330();
    sub_19A5707BC();
    goto LABEL_30;
  }

  if (qword_1EAF9F998 != -1)
  {
    swift_once();
  }

  type metadata accessor for GeneratorError(0);
  sub_19A4B3AC8(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
  v15 = swift_allocError();
  sub_19A4B3AC8(&qword_1EAFA22D8, type metadata accessor for GeneratorError);
  sub_19A5707BC();
  sub_19A33EFB0(v10, v12);
  return v15;
}

uint64_t sub_19A4B3A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratorError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4B3A6C(uint64_t a1)
{
  v2 = type metadata accessor for GeneratorError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A4B3AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A4B3B10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_19A4B3B28()
{
  result = qword_1EAFA2698;
  if (!qword_1EAFA2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2698);
  }

  return result;
}

uint64_t sub_19A4B3B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19A4B3BEC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = sub_19A5723DC();
  v8 = sub_19A57355C();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_19A31F114(a1, a2, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_19A31F114(a3, a4, &v12);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v10, -1, -1);
    MEMORY[0x19A902C50](v9, -1, -1);
  }
}

void sub_19A4B3D48(uint64_t a1, unint64_t a2)
{

  oslog = sub_19A5723DC();
  v4 = sub_19A57355C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_19A31F114(a1, a2, &v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }
}

uint64_t sub_19A4B3E58()
{
  v0 = sub_19A5723FC();
  __swift_allocate_value_buffer(v0, qword_1ED82BCF0);
  __swift_project_value_buffer(v0, qword_1ED82BCF0);
  return sub_19A5723EC();
}

uint64_t sub_19A4B3ED4()
{
  v0 = sub_19A57236C();
  __swift_allocate_value_buffer(v0, qword_1ED82BD30);
  __swift_project_value_buffer(v0, qword_1ED82BD30);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  v2 = __swift_project_value_buffer(v1, qword_1ED82BCF0);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_19A57233C();
}

void sub_19A4B4064(uint64_t a1@<X8>)
{
  if (*(v1 + 8) != 2)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  IOSurface = CVPixelBufferGetIOSurface(v3);
  if (!IOSurface)
  {

LABEL_5:
    v8 = 0;
    v7 = 1;
    goto LABEL_6;
  }

  v5 = IOSurface;

  ID = IOSurfaceGetID(v5);
  v7 = 0;
  v8 = ID;
LABEL_6:
  *(a1 + 4) = 0;
  *a1 = v8;
  *(a1 + 5) = v7;
}

void sub_19A4B4120(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2708);
  sub_19A57244C();
  if (v7)
  {
    v2 = swift_unknownObjectRetain();
    v3 = IOSurfaceLookupFromXPCObject(v2);
    if (v3)
    {
      v4 = v3;
      sub_19A336C84(v3, a1);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_19A336E90();
      swift_allocError();
      *v6 = 1;
      *(v6 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_19A336E90();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    swift_willThrow();
  }
}

void sub_19A4B4280(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2708);
  sub_19A57244C();
  if (v7)
  {
    v2 = swift_unknownObjectRetain();
    v3 = IOSurfaceLookupFromXPCObject(v2);
    if (v3)
    {
      v4 = v3;
      sub_19A356914(v3, a1);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_19A336E90();
      swift_allocError();
      *v6 = 1;
      *(v6 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_19A336E90();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    swift_willThrow();
  }
}

void sub_19A4B4400(uint64_t a1, void *a2, char a3)
{
  if (a3 == 2)
  {
    v3 = a2;
    IOSurface = CVPixelBufferGetIOSurface(v3);
    if (IOSurface)
    {
      v5 = IOSurface;

      IOSurfaceGetID(v5);
      XPCObject = IOSurfaceCreateXPCObject(v5);
      MEMORY[0x1EEE9AC00](XPCObject);
      sub_19A57244C();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_19A4B4520(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E78);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = sub_19A573AFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A573AEC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = &qword_1EAFA1E78;
    v14 = v8;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = a3(a1, a2);
    if (*(v15 + 16))
    {
      v16 = sub_19A31FA78(v12);
      if (v17)
      {
        sub_19A334618(*(v15 + 56) + 32 * v16, v19);
        (*(v10 + 8))(v12, v9);

        sub_19A2F3FA0(v19, &qword_1EAFA0228);
        return 1;
      }
    }

    (*(v10 + 8))(v12, v9);
    memset(v19, 0, sizeof(v19));
    v13 = &qword_1EAFA0228;
    v14 = v19;
  }

  sub_19A2F3FA0(v14, v13);
  return 0;
}

void sub_19A4B4764(uint64_t a1@<X8>)
{
  IOSurface = CVPixelBufferGetIOSurface(*(v1 + 24));
  v4 = IOSurface;
  if (IOSurface)
  {
    v5 = IOSurface;
    ID = IOSurfaceGetID(v5);

    v7 = ID;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 4) = 0;
  *a1 = v7;
  *(a1 + 5) = v4 == 0;
}

void sub_19A4B4804()
{
  IOSurface = CVPixelBufferGetIOSurface(*(v0 + 24));
  if (IOSurface)
  {
    v2 = IOSurface;
    IOSurfaceGetID(v2);
    XPCObject = IOSurfaceCreateXPCObject(v2);
    MEMORY[0x1EEE9AC00](XPCObject);
    sub_19A57244C();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A4B48D4(uint64_t a1)
{
  v2 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if ((a1 & 0x100000000) != 0)
  {
    sub_19A572C4C();
  }

  else
  {
    sub_19A572C8C();
    sub_19A572C7C();
    sub_19A572C5C();
    sub_19A572C7C();
    sub_19A572CAC();
  }

  sub_19A5710EC();
  return sub_19A572D7C();
}

uint64_t sub_19A4B4AC8(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2760);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2768);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2770);
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2778);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4B84EC();
  v16 = v26;
  sub_19A5741AC();
  if ((v16 & 0x100000000) != 0)
  {
    v19 = (v13 + 8);
    if (v16)
    {
      v28 = 1;
      sub_19A4B8594();
      sub_19A573DAC();
      (*(v22 + 8))(v8, v23);
    }

    else
    {
      v27 = 0;
      sub_19A4B85E8();
      sub_19A573DAC();
      (*(v20 + 8))(v11, v21);
    }

    return (*v19)(v15, v12);
  }

  else
  {
    v29 = 2;
    sub_19A4B8540();
    sub_19A573DAC();
    v17 = v25;
    sub_19A573E8C();
    (*(v24 + 8))(v5, v17);
    return (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_19A4B4E7C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_19A4B4ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4B7DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4B4EFC(uint64_t a1)
{
  v2 = sub_19A4B84EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4B4F38(uint64_t a1)
{
  v2 = sub_19A4B84EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4B4F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E72757465527663 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A4B5014(uint64_t a1)
{
  v2 = sub_19A4B8540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4B5050(uint64_t a1)
{
  v2 = sub_19A4B8540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4B508C(uint64_t a1)
{
  v2 = sub_19A4B8594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4B50C8(uint64_t a1)
{
  v2 = sub_19A4B8594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4B5104(uint64_t a1)
{
  v2 = sub_19A4B85E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4B5140(uint64_t a1)
{
  v2 = sub_19A4B85E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_19A4B519C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_19A4B7EF8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_19A4B5204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 56))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t sub_19A4B53DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = (*(a2 + 64))();
  if (!v3)
  {
    return (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }

  return result;
}

uint64_t sub_19A4B5458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a2);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return (*(v6 + 8))(v8, a2);
  }

  (*(a3 + 72))(a1, v10, a3);
  return (*(v11 + 8))(v8, v10);
}

uint64_t sub_19A4B5628(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A4B56BC()
{
  result = sub_19A57378C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A4B573C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 4) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_19A4B58D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 4) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 4] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t sub_19A4B5B3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A4B5BAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_19A4B5CEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_19A4B5F0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v72 = sub_19A5739FC();
  v64 = *(v72 - 8);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA26E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v53 - v13;
  v61 = sub_19A57246C();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_19A573AFC();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E78);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v76 = a2;
  v73 = a3;
  v24 = type metadata accessor for XPCReferenceShareableWrapper();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v80;
  sub_19A57415C();
  if (v28)
  {
    v49 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v55 = v27;
  v56 = v25;
  v57 = v24;
  v80 = a1;
  sub_19A573AEC();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v29 = v73;
  v30 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v31 = v75;
  sub_19A573F8C();
  v32 = v29;
  sub_19A4B7B50(v23, v21);
  v34 = v66;
  v33 = v67;
  if ((*(v66 + 48))(v21, 1, v67) == 1)
  {
    (*(v65 + 8))(v31, v30);
    sub_19A2F3FA0(v23, &qword_1EAFA1E78);
    sub_19A2F3FA0(v21, &qword_1EAFA1E78);
    v36 = v70;
    v35 = v71;
    v37 = v76;
    v38 = v68;
  }

  else
  {
    v39 = v63;
    (*(v34 + 32))(v63, v21, v33);
    __swift_project_boxed_opaque_existential_1(v80, v80[3]);
    v40 = sub_19A57416C();
    if (*(v40 + 16) && (v41 = sub_19A31FA78(v39), (v42 & 1) != 0))
    {
      v54 = v23;
      sub_19A334618(*(v40 + 56) + 32 * v41, v77);

      v43 = v62;
      v44 = v61;
      v45 = swift_dynamicCast();
      v46 = v60;
      (*(v60 + 56))(v43, v45 ^ 1u, 1, v44);
      v47 = (*(v46 + 48))(v43, 1, v44);
      v38 = v68;
      if (v47 != 1)
      {
        v51 = v58;
        (*(v46 + 32))(v58, v43, v44);
        v52 = v75;
        (*(v32 + 64))(v75, v51);
        (*(v46 + 8))(v51, v44);
        (*(v66 + 8))(v63, v67);
        (*(v65 + 8))(v52, AssociatedTypeWitness);
        sub_19A2F3FA0(v54, &qword_1EAFA1E78);
        v36 = v70;
        v35 = v71;
        v37 = v76;
        v38 = v59;
        goto LABEL_11;
      }

      (*(v66 + 8))(v63, v67);
      (*(v65 + 8))(v75, AssociatedTypeWitness);
      sub_19A2F3FA0(v54, &qword_1EAFA1E78);
    }

    else
    {

      (*(v66 + 8))(v39, v67);
      (*(v65 + 8))(v75, v30);
      sub_19A2F3FA0(v23, &qword_1EAFA1E78);
      v43 = v62;
      (*(v60 + 56))(v62, 1, 1, v61);
      v38 = v68;
    }

    sub_19A2F3FA0(v43, &unk_1EAFA26E0);
    v36 = v70;
    v35 = v71;
    v37 = v76;
  }

  __swift_project_boxed_opaque_existential_1(v78, v79);
  sub_19A573F8C();
LABEL_11:
  v48 = v55;
  (*(v36 + 32))(v55, v38, v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  (*(v56 + 32))(v35, v48, v57);
  v49 = v80;
  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_19A4B6AC0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v61 = *(a2 + 24);
  v60 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = sub_19A57378C();
  v49 = *(v50 - 8);
  v5 = MEMORY[0x1EEE9AC00](v50);
  v51 = &v46 - v6;
  v54 = AssociatedTypeWitness;
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA26E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v46 - v9;
  v10 = sub_19A57246C();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19A573AFC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E78);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  sub_19A573AEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v12;
  v23 = v13;
  sub_19A57418C();
  sub_19A4B7B50(v21, v19);
  if ((*(v13 + 48))(v19, 1, v22) == 1)
  {
    sub_19A2F3FA0(v19, &qword_1EAFA1E78);
LABEL_9:
    __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    sub_19A573FDC();
    goto LABEL_10;
  }

  (*(v13 + 32))(v15, v19, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_19A57419C();
  if (!*(v24 + 16) || (v25 = sub_19A31FA78(v15), (v26 & 1) == 0))
  {

    (*(v13 + 8))(v15, v22);
    v27 = v56;
    (*(v57 + 56))(v56, 1, 1, v58);
    goto LABEL_8;
  }

  v47 = v22;
  v48 = v15;
  sub_19A334618(*(v24 + 56) + 32 * v25, v62);

  v27 = v56;
  v28 = v58;
  v29 = swift_dynamicCast();
  v30 = v57;
  (*(v57 + 56))(v27, v29 ^ 1u, 1, v28);
  v31 = (*(v30 + 48))(v27, 1, v28);
  v33 = v60;
  v32 = v61;
  if (v31 == 1)
  {
    (*(v23 + 8))(v48, v47);
LABEL_8:
    sub_19A2F3FA0(v27, &unk_1EAFA26E0);
    goto LABEL_9;
  }

  (*(v30 + 32))(v55, v27, v28);
  v35 = v51;
  (*(v32 + 56))(v33, v32);
  v36 = v30;
  v38 = v53;
  v37 = v54;
  if ((*(v53 + 48))(v35, 1, v54) == 1)
  {
    (*(v36 + 8))(v55, v58);
    (*(v23 + 8))(v48, v47);
    (*(v49 + 8))(v35, v50);
    goto LABEL_9;
  }

  (*(v38 + 32))(v52, v35, v37);
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  swift_getAssociatedConformanceWitness();
  v39 = v59;
  sub_19A573FDC();
  if (v39)
  {
    v40 = v23;
    v41 = v55;
    v43 = v58;
    v44 = v48;
    v45 = v47;
    (*(v53 + 8))(v52, v54);
    (*(v57 + 8))(v41, v43);
    (*(v40 + 8))(v44, v45);
  }

  else
  {
    v42 = v55;
    (*(v32 + 72))(v55, v33, v32);
    (*(v53 + 8))(v52, v54);
    (*(v57 + 8))(v42, v58);
    (*(v23 + 8))(v48, v47);
  }

LABEL_10:
  sub_19A2F3FA0(v21, &qword_1EAFA1E78);
  return __swift_destroy_boxed_opaque_existential_0Tm(v63);
}

uint64_t sub_19A4B72DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965636166727573 && a2 == 0xE900000000000044;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250746E65696C63 && a2 == 0xEF6174614479786FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_19A4B73F0(char a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1 & 1);
  return sub_19A57410C();
}

uint64_t sub_19A4B7438(char a1)
{
  if (a1)
  {
    return 0x7250746E65696C63;
  }

  else
  {
    return 0x4965636166727573;
  }
}

uint64_t sub_19A4B7480(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v10[0] = *(a2 + 32);
  v10[1] = v3;
  v11 = v3;
  v12 = v10[0];
  type metadata accessor for ProxyWithAnIOSurface.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_19A573EAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A5741AC();
  LOBYTE(v11) = 0;
  v8 = v13;
  sub_19A573E9C();
  if (!v8)
  {
    LOBYTE(v11) = 1;
    sub_19A573E1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_19A4B7630@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_19A57378C();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v23 - v12;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  type metadata accessor for ProxyWithAnIOSurface.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_19A573D9C();
  v27 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v23 - v13;
  v28 = a2;
  v33 = a2;
  v34 = a3;
  v30 = a3;
  v35 = a4;
  v36 = a5;
  v15 = type metadata accessor for ProxyWithAnIOSurface();
  v23 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v14;
  v18 = v37;
  sub_19A57417C();
  if (v18)
  {
    v22 = a1;
  }

  else
  {
    v19 = v27;
    v37 = a1;
    v20 = v29;
    LOBYTE(v33) = 0;
    *v17 = sub_19A573D6C();
    LOBYTE(v33) = 1;
    sub_19A573CDC();
    (*(v19 + 8))(v31, v32);
    (*(v24 + 32))(&v17[*(v15 + 52)], v20, v25);
    (*(v23 + 32))(v26, v17, v15);
    v22 = v37;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_19A4B79A4()
{
  sub_19A5740BC();
  sub_19A4B73C8(v2, *v0);
  return sub_19A57410C();
}

uint64_t sub_19A4B7A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4B72DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4B7A38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A4B84E4();
  *a1 = result;
  return result;
}

uint64_t sub_19A4B7A6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_19A4B7AC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_19A4B7B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4B7BC0(void *a1, uint64_t a2, void *a3)
{
  sub_19A573EDC();
  v5 = sub_19A572DEC();

  xpc_dictionary_set_value(a1, (v5 + 32), a3);
}

uint64_t sub_19A4B7C7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_19A573EDC();
  v4 = sub_19A572DEC();

  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  *a2 = v5;
  return result;
}

uint64_t sub_19A4B7D2C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A4B7D48(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_19A4B7DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x800000019A59BB90 == a2;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59BBB0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000024 && 0x800000019A59BBD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_19A4B7EF8(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2720);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v31 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2728);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2730);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2738);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_19A4B84EC();
  v13 = v39;
  sub_19A57417C();
  if (!v13)
  {
    v32 = v5;
    v39 = 0;
    v14 = v37;
    v15 = v38;
    v16 = v9;
    v17 = sub_19A573D7C();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_19A344198();
    if (v19 == 3 || v43 != v44 >> 1)
    {
      v23 = sub_19A5739FC();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
      *v25 = &type metadata for XPCReferenceShareableDecodingError;
      sub_19A573C7C();
      sub_19A5739DC();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v45 = 1;
        sub_19A4B8594();
        v20 = v39;
        sub_19A573C5C();
        if (!v20)
        {
          (*(v33 + 8))(v4, v35);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v21 = 1;
          v22 = 1;
LABEL_16:
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          return v21 | (v22 << 32);
        }
      }

      else
      {
        v45 = 2;
        sub_19A4B8540();
        v28 = v39;
        sub_19A573C5C();
        if (!v28)
        {
          v29 = v34;
          v30 = sub_19A573D5C();
          (*(v36 + 8))(v15, v29);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v22 = 0;
          v21 = v30;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v45 = 0;
      sub_19A4B85E8();
      v27 = v39;
      sub_19A573C5C();
      if (!v27)
      {
        (*(v14 + 8))(v7, v32);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v21 = 0;
        v22 = 1;
        goto LABEL_16;
      }
    }

    (*(v16 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

unint64_t sub_19A4B84EC()
{
  result = qword_1EAFA2740;
  if (!qword_1EAFA2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2740);
  }

  return result;
}

unint64_t sub_19A4B8540()
{
  result = qword_1EAFA2748;
  if (!qword_1EAFA2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2748);
  }

  return result;
}

unint64_t sub_19A4B8594()
{
  result = qword_1EAFA2750;
  if (!qword_1EAFA2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2750);
  }

  return result;
}

unint64_t sub_19A4B85E8()
{
  result = qword_1EAFA2758;
  if (!qword_1EAFA2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2758);
  }

  return result;
}

unint64_t sub_19A4B8680()
{
  result = qword_1EAFA2780;
  if (!qword_1EAFA2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2780);
  }

  return result;
}

unint64_t sub_19A4B86D8()
{
  result = qword_1EAFA2788;
  if (!qword_1EAFA2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2788);
  }

  return result;
}

unint64_t sub_19A4B8730()
{
  result = qword_1EAFA2790;
  if (!qword_1EAFA2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2790);
  }

  return result;
}

unint64_t sub_19A4B8788()
{
  result = qword_1EAFA2798;
  if (!qword_1EAFA2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2798);
  }

  return result;
}

unint64_t sub_19A4B87E0()
{
  result = qword_1EAFA27A0;
  if (!qword_1EAFA27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA27A0);
  }

  return result;
}

unint64_t sub_19A4B8838()
{
  result = qword_1EAFA27A8;
  if (!qword_1EAFA27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA27A8);
  }

  return result;
}

unint64_t sub_19A4B8890()
{
  result = qword_1EAFA27B0;
  if (!qword_1EAFA27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA27B0);
  }

  return result;
}

unint64_t sub_19A4B88E8()
{
  result = qword_1EAFA27B8;
  if (!qword_1EAFA27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA27B8);
  }

  return result;
}

unint64_t sub_19A4B8940()
{
  result = qword_1EAFA27C0;
  if (!qword_1EAFA27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA27C0);
  }

  return result;
}

unint64_t sub_19A4B8998()
{
  result = qword_1EAFA27C8;
  if (!qword_1EAFA27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA27C8);
  }

  return result;
}

uint64_t sub_19A4B8A1C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  v73 = a4;
  v69 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v70 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v66 - v10;
  v12 = *a1;
  v71 = a1[1];
  v67 = a1[2];
  v68 = v12;
  v13 = type metadata accessor for DefinitionSession();
  *(a5 + v13[6]) = 0;
  v14 = v13[7];
  v15 = sub_19A57102C();
  v16 = *(*(v15 - 8) + 56);
  v16(a5 + v14, 1, 1, v15);
  sub_19A435A18(a5 + v13[8]);
  v17 = (a5 + v13[9]);
  *v17 = 257;
  v18 = _s17AssignmentOptionsVMa();
  v16(v17 + v18[6], 1, 1, v15);
  *(v17 + v18[7]) = 1;
  *(v17 + v18[9]) = 1;
  *(v17 + v18[10]) = 0;
  *(v17 + v18[11]) = 1;
  *(v17 + v18[12]) = 1;
  *(v17 + v18[13]) = 4;
  *(v17 + v18[14]) = 4;
  v19 = v17 + v18[15];
  *v19 = 0;
  v19[8] = 1;
  *(v17 + v18[16]) = 3;
  v20 = v17 + v18[17];
  *v20 = 0;
  v20[8] = 1;
  *(v17 + v18[18]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
  v21 = sub_19A57112C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_19A576E10;
  sub_19A474D68(v24 + v23);
  v25 = v17 + v18[8];
  *v25 = v24;
  *(v25 + 1) = 5;
  *(v25 + 4) = 1064514355;
  v26 = (a5 + v13[10]);
  *v26 = 0;
  v26[1] = 0;
  v27 = v13[11];
  v28 = type metadata accessor for SmileyAnalyzer.ClassifierState();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28B0);
  v29 = swift_allocObject();
  *(v29 + ((*(*v29 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_19A3351B8(v11, v29 + *(*v29 + *MEMORY[0x1E69E6B68] + 16), &qword_1EAFA1AE0);
  *(a5 + v27) = v29;
  v30 = a5 + v13[12];
  *v30 = 0;
  *(v30 + 8) = -1;
  v31 = a5 + v13[14];
  *v31 = xmmword_19A577080;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = 0;
  *(v31 + 40) = 0;
  v32 = v13[15];
  v33 = [objc_opt_self() service];
  *(a5 + v32) = v33;
  *(a5 + v13[16]) = 0;
  v34 = v13[17];
  v35 = type metadata accessor for TextSanitizer();
  (*(*(v35 - 8) + 56))(a5 + v34, 1, 1, v35);
  v36 = v13[18];
  v37 = type metadata accessor for MessagesBackgroundEstimator();
  (*(*(v37 - 8) + 56))(a5 + v36, 1, 1, v37);
  v38 = v13[20];
  type metadata accessor for GoalValidator();
  v39 = swift_allocObject();
  v40 = v70;
  (*(v22 + 56))(v70, 1, 1, v21);
  type metadata accessor for EntityExtractor(0);
  swift_allocObject();
  v41 = v33;
  *(v39 + 16) = sub_19A3B2348(v40);
  type metadata accessor for LexiconUtility();
  swift_allocObject();
  *(v39 + 24) = LexiconUtility.init()();
  *(a5 + v38) = v39;
  type metadata accessor for ImageChecker();
  v42 = swift_allocObject();
  v76 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA28B8);
  v43 = swift_allocObject();
  *(v43 + 80) = 0;
  v44 = (v43 + 80);
  v70 = xmmword_19A57FCB0;
  *(v43 + 16) = xmmword_19A57FCB0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  *(v43 + 48) = 0xE000000000000000;
  *(v43 + 56) = 0;
  *(v43 + 60) = v76;
  *(v43 + 61) = v74;
  *(v43 + 63) = v75;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v42 + 16) = v43;
  os_unfair_lock_lock((v43 + 80));
  if (*(v43 + 24) != 1)
  {
    v45 = *(v43 + 16);
    *(v43 + 16) = v70;
  }

  v46 = v13[21];
  os_unfair_lock_unlock(v44);
  *(a5 + v46) = v42;
  *(a5 + v13[23]) = 0;
  *(a5 + v13[24]) = 0;
  v47 = v71;
  if (v71 == 1)
  {
    v48 = [objc_opt_self() processInfo];
    v52 = [v48 processName];
    v49 = sub_19A572CFC();
    v47 = v50;

    v51 = [v48 processIdentifier];
    LODWORD(v52) = getuid();

    v54 = v72;
    v53 = v73;
    if (v73)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v51 = v67;
    v49 = v68;
    v52 = HIDWORD(v67);
    v54 = v72;
    v53 = v73;
    if (v73)
    {
      goto LABEL_9;
    }
  }

  v55 = sub_19A34F5C4();
  if (*(v55 + 16))
  {
    v56 = *(v55 + 32);

    v54 = (*(v56 + 88))(v57);
    v53 = v58;
LABEL_9:
    sub_19A57101C();
    v59 = a5 + v13[5];
    *v59 = v49;
    *(v59 + 8) = v47;
    *(v59 + 16) = v51;
    *(v59 + 20) = v52;
    v60 = (a5 + v13[22]);
    v61 = v69;
    sub_19A3A2F20(v69, v54, v53, v60);
    if (v61)
    {
      if (v61 != 1)
      {
LABEL_14:
        v64 = v13[13];
        type metadata accessor for InputConditioner();
        swift_allocObject();
        *(a5 + v13[19]) = sub_19A3BA638(v41);
        *(a5 + v64) = MEMORY[0x1E69E7CC0];
        return sub_19A4C64E0();
      }

      v62 = &unk_1F0DA7A20;
    }

    else
    {
      v62 = &unk_1F0DA79F8;
    }

    v63 = *(type metadata accessor for GenerationRecipe(0) + 24);

    *&v60[v63] = v62;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t DefinitionSession.imageGeneratorIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for DefinitionSession() + 88);
  v2 = *(v1 + *(type metadata accessor for GenerationRecipe(0) + 20));

  return v2;
}

uint64_t type metadata accessor for DefinitionSession()
{
  result = qword_1EAF9F688;
  if (!qword_1EAF9F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A4B9270@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ImageGenerator();
  v3 = v1 + *(type metadata accessor for DefinitionSession() + 88);
  v4 = type metadata accessor for GenerationRecipe(0);
  sub_19A34F314(*(v3 + *(v4 + 20)), *(v3 + *(v4 + 20) + 8), v11);
  v5 = v12;
  if (!v12)
  {
    result = sub_19A2F3FA0(v11, &qword_1EAF9FDA8);
    v8 = 0uLL;
    v14 = 0u;
    v15 = 0;
    goto LABEL_5;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 48))(&v14, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v11);
  v8 = v14;
  if (v16)
  {
LABEL_5:
    v10 = v15;
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1278226488;
LABEL_6:
  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 20) = v9;
  return result;
}

uint64_t sub_19A4B9374()
{
  v1 = type metadata accessor for ResolvedTextPrompt(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v8 = type metadata accessor for GenerationRecipe(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DefinitionSession();
  sub_19A4CC000(v0 + *(v12 + 88), v11, type metadata accessor for GenerationRecipe);
  v13 = *&v11[*(v9 + 84)];

  sub_19A4CC068(v11, type metadata accessor for GenerationRecipe);
  if (*(v13 + 16) == 1)
  {
    sub_19A4CC000(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for ResolvedTextPrompt);

    sub_19A4CBF58(v5, v7, type metadata accessor for ResolvedTextPrompt);
    v14 = *v7;

    sub_19A4CC068(v7, type metadata accessor for ResolvedTextPrompt);
  }

  else
  {

    return 0;
  }

  return v14;
}

uint64_t sub_19A4B958C()
{
  v1 = v0 + *(type metadata accessor for DefinitionSession() + 88);
  v2 = type metadata accessor for GenerationRecipe(0);
  v3 = *(v2 + 76);

  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + v3) = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 96);

  *(v1 + v5) = v4;
  if (qword_1ED8248B0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v6 = qword_1ED82BD08;
    v7 = unk_1ED82BD10;
    v8 = qword_1ED82BD18;
    v9 = unk_1ED82BD20;
    v10 = (v1 + *(v2 + 104));
    v25 = v1;

    *v10 = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    *(v1 + *(v2 + 108)) = 0;
    *(v1 + *(v2 + 116)) = 0;
    v11 = (v1 + *(v2 + 120));
    sub_19A331DC8(*v11, v11[1], v11[2]);
    *v11 = 0;
    v11[1] = 0;
    v11[3] = 0;
    v11[4] = 0;
    v11[2] = 1;
    *(v11 + 37) = 0;
    v12 = *(v2 + 100);
    v2 = *(v1 + v12);
    v13 = *(v2 + 16);
    if (!v13)
    {
      break;
    }

    v24 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19A32E550(v2);
    }

    v1 = 0;
    v14 = v2 + 72;
    while (v1 != v13)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v15 = *(v14 + 72 * v1);
      v16 = *(v15 + 2);
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        while (v1 < *(v2 + 16))
        {
          if (v18 >= *(v15 + 2))
          {
            goto LABEL_29;
          }

          v20 = v15[v17 + 75];
          if (v20 != 2 && (v20 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v14 + 72 * v1) = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v15 = sub_19A32E53C(v15);
              *(v14 + 72 * v1) = v15;
            }

            if (v18 >= *(v15 + 2))
            {
              goto LABEL_30;
            }

            v19 = &v15[v17];
            v19[74] = 0;
            *(v19 + 36) = 3;
            *(v14 + 72 * v1) = v15;
          }

          ++v18;
          v17 += 48;
          if (v16 == v18)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_6:
      if (++v1 == v13)
      {
        *(v25 + v24) = v2;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_25:

  return sub_19A4C64E0();
}

unint64_t sub_19A4B9828(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for DefinitionSession();
  sub_19A4CBE58(a1, v1 + v7[9]);
  v8 = _s17AssignmentOptionsVMa();
  v40 = v8[16];
  v9 = *(a1 + v40);
  v10 = (v2 + v7[22]);
  v11 = type metadata accessor for GenerationRecipe(0);
  v10[v11[10]] = v9;
  type metadata accessor for ImageGenerator();
  sub_19A34F314(*&v10[v11[5]], *&v10[v11[5] + 8], v41);
  v12 = v42;
  v39 = v6;
  if (v42)
  {
    v13 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v14 = (*(v13 + 72))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    if (v14)
    {

      v15 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    sub_19A2F3FA0(v41, &qword_1EAF9FDA8);
  }

  v15 = 0;
LABEL_6:
  v10[v11[17]] = v15;
  v16 = (v2 + v7[5]);
  v18 = *v16;
  v17 = v16[1];
  v19 = v2 + v7[8];
  v20 = type metadata accessor for UserPromptRewriter();
  v21 = (v19 + v20[18]);

  v22 = v16[2];

  *v21 = v18;
  v21[1] = v17;
  v21[2] = v22;
  *(v19 + v20[15]) = *(a1 + v8[10]);
  *(v19 + v20[17]) = *(a1 + v8[11]);
  *(v19 + v20[16]) = *(a1 + v8[12]);
  v23 = *(a1 + v8[8]);
  v24 = *(v23 + 16);
  v25 = sub_19A57112C();
  v26 = *(v25 - 8);
  if (v24)
  {
    v27 = v39;
    (*(*(v25 - 8) + 16))(v39, v23 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)), v25);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v39;
  }

  v29 = 0xD000000000000025;
  (*(v26 + 56))(v27, v28, 1, v25);
  sub_19A4361F4(v27);
  if (*v10 > 1u)
  {
    if (*v10 == 2)
    {
      v30 = "Generation.AppleDiffusion";
    }

    else
    {
      v30 = &unk_19A58D010;
      v29 = 0xD000000000000010;
    }
  }

  else if (*v10)
  {
    v30 = ".KeyboardEmojiGenerator";
  }

  else
  {
    v30 = ".PhotosGenerativeEdit";
    v29 = 0xD000000000000027;
  }

  v31 = v30 | 0x8000000000000000;
  v32 = (v19 + v20[19]);

  *v32 = v29;
  v32[1] = v31;
  *(v19 + v20[20]) = *(a1 + v40);
  v34 = a1 + v8[17];
  v35 = *v34;
  LODWORD(v34) = *(v34 + 8);
  v36 = v19 + v20[13];
  *v36 = v35;
  *(v36 + 8) = v34;
  if (v34)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  if (v37 < 0)
  {
    __break(1u);
  }

  else
  {
    v41[0] = v37 + 0x14057B7EF767814FLL;
    result = sub_19A475DE8();
    *(v19 + v20[14]) = v41[0];
  }

  return result;
}

uint64_t DefinitionSession.assignedImageStyles.getter()
{
  type metadata accessor for DefinitionSession();
  type metadata accessor for GenerationRecipe(0);
}

uint64_t sub_19A4B9C10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A4B9C30, 0, 0);
}

uint64_t sub_19A4B9C30()
{
  v1 = v0[2];
  v32 = *(v1 + 16);
  if (v32)
  {
    v2 = v0[3];
    v3 = v2 + *(type metadata accessor for DefinitionSession() + 88);
    v28 = type metadata accessor for GenerationRecipe(0);
    v29 = v3;
    v27 = *(v28 + 24);
    v4 = *(v3 + v27);

    v5 = 0;
    v30 = v4;
    while (1)
    {
      v6 = *(v1 + 32 + v5++);
      v7 = *(v4 + 2);
      v33 = v4;
      v8 = v4 + 32;
      while (v7)
      {
        v11 = *v8;
        if (v11 <= 2)
        {
          v15 = 0x61727473756C6C69;
          if (v11 == 1)
          {
            v15 = 0x696A6F6D65;
          }

          v16 = 0xEC0000006E6F6974;
          if (v11 == 1)
          {
            v16 = 0xE500000000000000;
          }

          if (*v8)
          {
            v12 = v15;
          }

          else
          {
            v12 = 0x6F6974616D696E61;
          }

          if (*v8)
          {
            v13 = v16;
          }

          else
          {
            v13 = 0xE90000000000006ELL;
          }

          if (v6 > 2)
          {
LABEL_40:
            v17 = 0xD000000000000013;
            if (v6 != 5)
            {
              v17 = 0x6C616E7265747865;
            }

            v18 = 0xE800000000000000;
            if (v6 == 5)
            {
              v18 = 0x800000019A595400;
            }

            v19 = 0x747241656E696CLL;
            if (v6 == 3)
            {
              v19 = 0x686374656B73;
              v20 = 0xE600000000000000;
            }

            else
            {
              v20 = 0xE700000000000000;
            }

            if (v6 <= 4)
            {
              v21 = v19;
            }

            else
            {
              v21 = v17;
            }

            if (v6 <= 4)
            {
              v9 = v20;
            }

            else
            {
              v9 = v18;
            }

            if (v12 != v21)
            {
              goto LABEL_9;
            }

            goto LABEL_8;
          }
        }

        else if (*v8 > 4u)
        {
          if (v11 == 5)
          {
            v12 = 0xD000000000000013;
            v13 = 0x800000019A595400;
            if (v6 > 2)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v13 = 0xE800000000000000;
            v12 = 0x6C616E7265747865;
            if (v6 > 2)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (v11 == 3)
          {
            v12 = 0x686374656B73;
          }

          else
          {
            v12 = 0x747241656E696CLL;
          }

          if (v11 == 3)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xE700000000000000;
          }

          if (v6 > 2)
          {
            goto LABEL_40;
          }
        }

        if (v6)
        {
          if (v6 == 1)
          {
            v14 = 0x696A6F6D65;
          }

          else
          {
            v14 = 0x61727473756C6C69;
          }

          if (v6 == 1)
          {
            v9 = 0xE500000000000000;
          }

          else
          {
            v9 = 0xEC0000006E6F6974;
          }

          if (v12 != v14)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = 0xE90000000000006ELL;
          if (v12 != 0x6F6974616D696E61)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        if (v13 == v9)
        {

LABEL_4:
          v4 = v33;
          goto LABEL_5;
        }

LABEL_9:
        v10 = sub_19A573F1C();

        ++v8;
        --v7;
        if (v10)
        {
          goto LABEL_4;
        }
      }

      v4 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_19A31D27C(0, *(v33 + 2) + 1, 1, v33);
      }

      v23 = *(v4 + 2);
      v22 = *(v4 + 3);
      if (v23 >= v22 >> 1)
      {
        v4 = sub_19A31D27C((v22 > 1), v23 + 1, 1, v4);
      }

      *(v4 + 2) = v23 + 1;
      v4[v23 + 32] = v6;
LABEL_5:
      if (v5 == v32)
      {
        if (sub_19A4D4414(v30, v4))
        {

          v0 = v31;
        }

        else
        {
          v0 = v31;
          v24 = (v29 + *(v28 + 120));
          sub_19A331DC8(*v24, v24[1], v24[2]);
          *v24 = 0;
          v24[1] = 0;
          v24[3] = 0;
          v24[4] = 0;
          v24[2] = 1;
          *(v24 + 37) = 0;
          sub_19A4340A4(v4);

          *(v29 + v27) = v4;
          sub_19A4C64E0();
        }

        break;
      }
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_19A4BA068(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A4BA088, 0, 0);
}

uint64_t sub_19A4BA088()
{
  v1 = *(v0 + 16);
  v49 = *(v1 + 16);
  if (!v49 || (v2 = *(v0 + 24), v3 = v2 + *(type metadata accessor for DefinitionSession() + 88), v4 = type metadata accessor for GenerationRecipe(0), v5 = *(v4 + 24), v6 = *(v3 + v5), !*(v6 + 16)))
  {
LABEL_93:
    v41 = *(v0 + 8);

    return v41();
  }

  v46 = v4;

  v8 = sub_19A415FDC(v7, v1);
  v9 = v6;
  v11 = v10;

  if (v11)
  {
    v13 = *(v9 + 16);
    v14 = v9;
    v15 = v9;
    v16 = v13;
    goto LABEL_5;
  }

  v44 = v3;
  v45 = v9;
  v43 = v5;
  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_103;
  }

  v16 = v8;
  v42 = v0;
  v47 = *(v0 + 16) + 32;
  v5 = 0x800000019A595400;
  v3 = 0xE600000000000000;
  v19 = 0xE700000000000000;
  v14 = v45;
LABEL_18:
  v21 = *(v14 + 2);
  if (v13 == v21)
  {
    if (v13 < v16)
    {
      __break(1u);
LABEL_89:
      v19 = v5;
      v40 = (v3 + *(v46 + 120));
      sub_19A331DC8(*v40, v40[1], v40[2]);
      *v40 = 0;
      v40[1] = 0;
      v40[3] = 0;
      v40[4] = 0;
      v40[2] = 1;
      *(v40 + 37) = 0;
      sub_19A4340A4(v14);
LABEL_92:

      *(v3 + v19) = v14;
      sub_19A4C64E0();
      goto LABEL_93;
    }

    v0 = v42;
    v5 = v43;
    v3 = v44;
    v15 = v45;
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_92;
    }

LABEL_5:
    if (__OFADD__(v13, v16 - v13))
    {
      goto LABEL_102;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v16 > *(v14 + 3) >> 1)
    {
      if (v13 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v13;
      }

      v14 = sub_19A31D27C(isUniquelyReferenced_nonNull_native, v18, 1, v14);
    }

    sub_19A415C0C(v16, v13, 0);
    if (sub_19A4D4414(v15, v14))
    {

      goto LABEL_93;
    }

    goto LABEL_89;
  }

  if (v13 >= v21)
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v50 = v16;
  v51 = v14;
  v48 = v14 + 32;
  v22 = v14[v13 + 32];
  v23 = v49;
  v0 = v47;
  while (v23)
  {
    v25 = *v0;
    if (v25 <= 2)
    {
      v28 = 0x61727473756C6C69;
      if (v25 == 1)
      {
        v28 = 0x696A6F6D65;
      }

      v29 = 0xEC0000006E6F6974;
      if (v25 == 1)
      {
        v29 = 0xE500000000000000;
      }

      if (*v0)
      {
        v26 = v28;
      }

      else
      {
        v26 = 0x6F6974616D696E61;
      }

      if (*v0)
      {
        v27 = v29;
      }

      else
      {
        v27 = 0xE90000000000006ELL;
      }

      if (v22 > 2)
      {
LABEL_47:
        v30 = 0xD000000000000013;
        if (v22 != 5)
        {
          v30 = 0x6C616E7265747865;
        }

        v31 = 0xE800000000000000;
        if (v22 == 5)
        {
          v31 = 0x800000019A595400;
        }

        v32 = 0x747241656E696CLL;
        if (v22 == 3)
        {
          v32 = 0x686374656B73;
          v33 = 0xE600000000000000;
        }

        else
        {
          v33 = 0xE700000000000000;
        }

        if (v22 <= 4)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

        if (v22 <= 4)
        {
          v35 = v33;
        }

        else
        {
          v35 = v31;
        }

        if (v26 != v34)
        {
          goto LABEL_21;
        }

        goto LABEL_73;
      }
    }

    else if (*v0 > 4u)
    {
      if (v25 == 5)
      {
        v26 = 0xD000000000000013;
        v27 = 0x800000019A595400;
        if (v22 > 2)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v27 = 0xE800000000000000;
        v26 = 0x6C616E7265747865;
        if (v22 > 2)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (v25 == 3)
      {
        v26 = 0x686374656B73;
      }

      else
      {
        v26 = 0x747241656E696CLL;
      }

      if (v25 == 3)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xE700000000000000;
      }

      if (v22 > 2)
      {
        goto LABEL_47;
      }
    }

    if (v22)
    {
      if (v22 == 1)
      {
        v36 = 0x696A6F6D65;
      }

      else
      {
        v36 = 0x61727473756C6C69;
      }

      if (v22 == 1)
      {
        v35 = 0xE500000000000000;
      }

      else
      {
        v35 = 0xEC0000006E6F6974;
      }

      if (v26 != v36)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v35 = 0xE90000000000006ELL;
      if (v26 != 0x6F6974616D696E61)
      {
        goto LABEL_21;
      }
    }

LABEL_73:
    if (v27 == v35)
    {

LABEL_16:
      v16 = v50;
      v14 = v51;
LABEL_17:
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_97;
      }

      goto LABEL_18;
    }

LABEL_21:
    v24 = sub_19A573F1C();

    ++v0;
    --v23;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  if (v50 == v13)
  {
    v14 = v51;
    v16 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_98;
    }

    goto LABEL_17;
  }

  v14 = v51;
  if ((v50 & 0x8000000000000000) != 0)
  {
    goto LABEL_99;
  }

  v37 = *(v51 + 16);
  if (v50 < v37)
  {
    if (v13 >= v37)
    {
      goto LABEL_101;
    }

    v38 = v48[v50];
    v0 = v48[v13];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A32E564(v51);
      v14 = result;
    }

    v39 = v14 + 32;
    v39[v50] = v0;
    v39[v13] = v38;
    v16 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
      goto LABEL_17;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}