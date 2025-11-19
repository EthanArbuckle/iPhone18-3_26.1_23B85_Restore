uint64_t sub_1C727CC1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *(v1 + 432);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  sub_1C6FD7FC8(v2, &qword_1EC217AD0);
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C727D504()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *(v1 + 432);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  sub_1C6FD7FC8(v2, &qword_1EC217AD0);
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C727DDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_63_0();
  v25 = OUTLINED_FUNCTION_101_8();
  v24(v25);
  v26 = OUTLINED_FUNCTION_57_3();
  v24(v26);
  __swift_destroy_boxed_opaque_existential_1(v22 + 16);
  v27 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v27, v28);
  sub_1C754F1AC();
  v29 = OUTLINED_FUNCTION_133_6();
  v30(v29, a19);
  (v24)(a18, v23);
  v40 = *(v22 + 728);
  OUTLINED_FUNCTION_41_26();
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_15_52();

  OUTLINED_FUNCTION_22_43();
  OUTLINED_FUNCTION_128_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, a20, a21, a22);
}

uint64_t sub_1C727DF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_63_0();
  v25 = OUTLINED_FUNCTION_101_8();
  v24(v25);
  v26 = OUTLINED_FUNCTION_57_3();
  v24(v26);
  __swift_destroy_boxed_opaque_existential_1(v22 + 16);
  v27 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v27, v28);
  sub_1C754F1AC();
  v29 = OUTLINED_FUNCTION_133_6();
  v30(v29, a19);
  (v24)(a18, v23);
  v40 = *(v22 + 760);
  OUTLINED_FUNCTION_41_26();
  OUTLINED_FUNCTION_3_76();
  OUTLINED_FUNCTION_15_52();

  OUTLINED_FUNCTION_22_43();
  OUTLINED_FUNCTION_128_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, a20, a21, a22);
}

unint64_t GlobalTraitGenerator.Error.errorDescription.getter()
{
  type metadata accessor for GlobalTraitGenerator.Error(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = OUTLINED_FUNCTION_66_2();
  sub_1C72853C8(v3, v4, v5);
  OUTLINED_FUNCTION_57_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C7285288(v2);
    return 0xD000000000000034;
  }

  else
  {
    v7 = *v2;
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000033, 0x80000001C75A7F70);
    v8 = MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E6158]);
    v10 = v9;

    MEMORY[0x1CCA5CD70](v8, v10);

    return v11[0];
  }
}

uint64_t GlobalTraitGenerator.init(configuration:storyPhotoLibraryContext:storyAssetsFetcher:safetyController:storyAssetManager:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  memcpy(__dst, __src, 0x59uLL);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  sub_1C754FEFC();
  memcpy((v6 + 16), __src, 0x59uLL);
  *(v6 + 112) = v12;
  *(v6 + 120) = v13;
  *(v6 + 128) = v14;
  sub_1C72850EC(a4, v6 + 152);
  memcpy(v20, __src, 0x59uLL);
  type metadata accessor for GlobalTraitPromptGenerator();
  swift_allocObject();
  sub_1C7117834(__dst, &v19);
  v15 = v12;

  *(v6 + 136) = sub_1C730B730(v20);
  sub_1C6FB5E28(a3, v20);
  type metadata accessor for TraitCompletionProcessor();
  swift_allocObject();
  v16 = v15;
  *(v6 + 144) = TraitCompletionProcessor.init(with:storyAssetsFetcher:)(v16, v20);
  *&v20[0] = v16;
  WORD4(v20[0]) = v13;
  *&v20[1] = v14;
  type metadata accessor for MomentExpansionProcessor();
  swift_allocObject();
  v17 = MomentExpansionProcessor.init(storyPhotoLibraryContext:)(v20);
  sub_1C6FD7FC8(a4, &unk_1EC219E90);
  __swift_destroy_boxed_opaque_existential_1(a3);
  *(v6 + 192) = v17;
  *(v6 + 200) = a5;
  return v6;
}

void sub_1C727E78C(uint64_t a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(a1 + 56);
  v3 = sub_1C6F78124(0x54206C61626F6C47, 0xED00007374696172);
  if (__OFADD__(*(v2 + 16), (v4 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_5:
    *(a1 + 56) = v2;
    if ((v6 & 1) == 0)
    {
      sub_1C6FC6D3C(v5, 0x54206C61626F6C47, 0xED00007374696172, 0, v2);
    }

    v9 = *(v2 + 56);
    v10 = *(v9 + 8 * v5);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      *(v9 + 8 * v5) = v12;
      return;
    }

    goto LABEL_10;
  }

  v7 = sub_1C6F78124(0x54206C61626F6C47, 0xED00007374696172);
  if ((v6 & 1) == (v8 & 1))
  {
    v5 = v7;
    goto LABEL_5;
  }

LABEL_11:
  sub_1C7551E4C();
  __break(1u);
}

PhotosIntelligence::GlobalTraitCompletion __swiftcall GlobalTraitGenerator.removeUninterestingOrEmptyTraits(from:)(PhotosIntelligence::GlobalTraitCompletion from)
{
  v3 = v2;
  v21 = v1;
  v4 = 0;
  v5 = *from.collectionTraits._rawValue;
  v20 = *(from.collectionTraits._rawValue + 1);
  v6 = *(v2 + 48);
  v7 = *(v5 + 16);
  v8 = (v5 + 40);
  v9 = MEMORY[0x1E69E7CC0];
  v22 = v6;
  v23 = v3;
  while (1)
  {
    if (v7 == v4)
    {
      MEMORY[0x1EEE9AC00](from.collectionTraits._rawValue);
      v19[2] = v3;
      v19[3] = v6;
      from.collectionTraits._rawValue = sub_1C728542C(v20, sub_1C7285424, v19);
      v18 = v21;
      *v21 = v9;
      v18[1] = from.collectionTraits._rawValue;
      return from;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    v10 = *(v8 - 1);
    v11 = *v8;
    v24 = v10;
    v25 = v11;
    sub_1C75504FC();
    OUTLINED_FUNCTION_231_1();
    if (sub_1C72839CC(v12, v13, v14))
    {
      from.collectionTraits._rawValue = swift_isUniquelyReferenced_nonNull_native();
      v26 = v9;
      if ((from.collectionTraits._rawValue & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6F7ED9C();
        v9 = v26;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_15(v15);
        sub_1C6F7ED9C();
        v9 = v26;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      v6 = v22;
      v3 = v23;
    }

    else
    {
    }

    v8 += 2;
    ++v4;
  }

  __break(1u);
  return from;
}

uint64_t sub_1C727EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a1;
  v9 = type metadata accessor for GlobalTrait();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C727EB08, 0, 0);
}

uint64_t sub_1C727EB08()
{
  OUTLINED_FUNCTION_191_1();
  v1 = v0;
  v2 = v0[8];
  v3 = *(v2 + 16);
  if (v3)
  {
    v69 = v1[15];
    v68 = v1[12];
    v75 = MEMORY[0x1E69E7CC0];
    sub_1C716E538();
    v4 = v75;
    result = sub_1C70D4544(v2);
    v8 = result;
    v9 = 0;
    v10 = v2 + 64;
    v63 = v6;
    v64 = v3;
    v62 = v2 + 72;
    v65 = v2 + 64;
    v66 = v1;
    v67 = v2;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v2 + 36) != v6)
      {
        goto LABEL_36;
      }

      v73 = v8 >> 6;
      v71 = v9;
      v72 = v6;
      v70 = v7;
      v11 = v1[15];
      v12 = (*(v2 + 48) + 16 * v8);
      v13 = v4;
      v15 = *v12;
      v14 = v12[1];
      v16 = (*(v2 + 56) + 16 * v8);
      v17 = *v16;
      v18 = v16[1];
      sub_1C75504FC();
      sub_1C75504FC();
      v19 = MEMORY[0x1E69E7CC0];
      sub_1C754DFEC();
      v20 = v68[9];
      v21 = v68[10];
      *v11 = v15;
      v4 = v13;
      v69[1] = v14;
      v69[2] = v17;
      v69[3] = v18;
      *(v11 + v68[7]) = 1;
      *(v11 + v68[8]) = v19;
      *(v11 + v20) = 0;
      *(v11 + v21) = 0;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_15(v22);
        sub_1C716E538();
        v4 = v13;
      }

      v1 = v66;
      *(v4 + 16) = v23 + 1;
      OUTLINED_FUNCTION_191();
      result = sub_1C7285088(v26, v4 + v24 + *(v25 + 72) * v23);
      v2 = v67;
      v27 = 1 << *(v67 + 32);
      if (v8 >= v27)
      {
        goto LABEL_37;
      }

      v10 = v65;
      v28 = *(v65 + 8 * v73);
      if ((v28 & (1 << v8)) == 0)
      {
        goto LABEL_38;
      }

      if (*(v67 + 36) != v72)
      {
        goto LABEL_39;
      }

      v29 = v28 & (-2 << (v8 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v30 = v64;
      }

      else
      {
        v31 = v73 << 6;
        v32 = (v62 + 8 * v73);
        v33 = v73 + 1;
        v30 = v64;
        while (v33 < (v27 + 63) >> 6)
        {
          v35 = *v32++;
          v34 = v35;
          v31 += 64;
          ++v33;
          if (v35)
          {
            result = sub_1C6F9ED50(v8, v72, v70 & 1);
            v27 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = sub_1C6F9ED50(v8, v72, v70 & 1);
      }

LABEL_19:
      v7 = 0;
      v9 = v71 + 1;
      v8 = v27;
      v6 = v63;
      if (v71 + 1 == v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C72850EC(v1[9], (v1 + 2));
    v36 = v1[5];
    if (v36)
    {
      v37 = v1[10];
      v38 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_1C75504FC();
      sub_1C6FD32D4();
      v1[16] = v37;
      v74 = (*(v38 + 80) + **(v38 + 80));
      v39 = swift_task_alloc();
      v1[17] = v39;
      *v39 = v1;
      v39[1] = sub_1C727F090;
      v40 = v1[11];

      return v74(v37, v40, v36, v38);
    }

    else
    {

      sub_1C6FD7FC8((v1 + 2), &unk_1EC219E90);
      v41 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v41)
      {
        v42 = v1[13];
        v43 = v1[14];
        v44 = MEMORY[0x1E69E7CC0];
        v76 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v45 = v76;
        OUTLINED_FUNCTION_191();
        v47 = v44 + v46;
        v48 = v43;
        v49 = *(v42 + 72);
        do
        {
          v50 = v1;
          v51 = v1[14];
          OUTLINED_FUNCTION_0_120();
          v52 = OUTLINED_FUNCTION_112_1();
          sub_1C72853C8(v52, v53, v54);
          v55 = *v51;
          v56 = *(v48 + 8);
          sub_1C75504FC();
          sub_1C7285288(v51);
          v58 = *(v76 + 16);
          v57 = *(v76 + 24);
          if (v58 >= v57 >> 1)
          {
            OUTLINED_FUNCTION_15(v57);
            OUTLINED_FUNCTION_186();
            sub_1C6F7ED9C();
          }

          *(v76 + 16) = v58 + 1;
          v59 = v76 + 16 * v58;
          *(v59 + 32) = v55;
          *(v59 + 40) = v56;
          v47 += v49;
          --v41;
          v1 = v50;
        }

        while (v41);
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      v60 = v1[7];
      *v60 = sub_1C706D154(v45);

      v61 = v1[1];

      return v61();
    }
  }

  return result;
}

uint64_t sub_1C727F090()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C727F190()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[14];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = v21;
    OUTLINED_FUNCTION_191();
    v7 = v1 + v6;
    v8 = *(v3 + 72);
    do
    {
      v9 = v0[14];
      OUTLINED_FUNCTION_0_120();
      v10 = OUTLINED_FUNCTION_455();
      sub_1C72853C8(v10, v11, v12);
      v13 = *v9;
      v14 = *(v4 + 8);
      sub_1C75504FC();
      sub_1C7285288(v9);
      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_15(v15);
        OUTLINED_FUNCTION_89_5();
        sub_1C6F7ED9C();
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v18 = v0[7];
  *v18 = sub_1C706D154(v5);

  OUTLINED_FUNCTION_43();

  return v19();
}

uint64_t GlobalTraitGenerator.generateSpeculativeGlobalTraits(from:scopingAssets:assetPertinenceFilter:diagnosticContext:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = v0;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A20);
  OUTLINED_FUNCTION_76(v9);
  *(v1 + 72) = OUTLINED_FUNCTION_77();
  v10 = type metadata accessor for GlobalTrait();
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 88) = v11;
  *(v1 + 96) = OUTLINED_FUNCTION_81_0();
  *(v1 + 104) = swift_task_alloc();
  v12 = sub_1C754F2FC();
  *(v1 + 112) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v1 + 120) = v13;
  *(v1 + 128) = OUTLINED_FUNCTION_81_0();
  *(v1 + 136) = swift_task_alloc();
  v14 = sub_1C754F38C();
  *(v1 + 144) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v1 + 152) = v15;
  *(v1 + 160) = OUTLINED_FUNCTION_77();
  v16 = v3[1];
  *(v1 + 168) = *v3;
  *(v1 + 184) = v16;
  v17 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C727FD24()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 256) = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C727FE68()
{
  v183 = v0;
  v1 = *(v0 + 256);
  v2 = v1 + 64;
  v3 = -1 << *(v1 + 32);
  v170 = *(v0 + 264);
  v171 = *(v0 + 216);
  v4 = *(v0 + 40);
  if (-v3 < 64)
  {
    v5 = ~(-1 << -v3);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (63 - v3) >> 6;
  v177 = *(v0 + 224);
  sub_1C75504FC();
  v8 = 0;
  v172 = MEMORY[0x1E69E7CC0];
  v174 = v4;
  v173 = v1;
LABEL_5:
  v9 = v8;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    v8 = v9;
LABEL_10:
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v1 + 48) + v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(v1 + 56) + v10;
    v175 = *(v14 + 8);
    v176 = *v14;
    if (v175)
    {
      if (v4)
      {
        v179 = 0;
        v180 = 0xE000000000000000;
        v15 = OUTLINED_FUNCTION_69_2();
        sub_1C6FDE42C(v15, v16);
        sub_1C75504FC();
        sub_1C755180C();

        OUTLINED_FUNCTION_76_12();
        v179 = v17;
        v180 = 0x80000001C75A7EE0;
        v18 = OUTLINED_FUNCTION_34_20();
        MEMORY[0x1CCA5CD70](v18);
        MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A7FB0);
        sub_1C7161CDC(v179, v180);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_69_2();
        sub_1C6FDE42C(v39, v40);
        sub_1C75504FC();
      }

      v41 = v175;
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);

      goto LABEL_40;
    }

    if (!*(v177 + 16))
    {
      v46 = OUTLINED_FUNCTION_200_1();
      sub_1C6FDE42C(v46, v47);
      v48 = OUTLINED_FUNCTION_200_1();
      sub_1C6FDE42C(v48, v49);
      sub_1C75504FC();
LABEL_38:
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      v61 = OUTLINED_FUNCTION_200_1();
      sub_1C6FDE438(v61, v62);

LABEL_39:
      v41 = v175;
      goto LABEL_40;
    }

    sub_1C7551F3C();
    v19 = OUTLINED_FUNCTION_200_1();
    sub_1C6FDE42C(v19, v20);
    v21 = OUTLINED_FUNCTION_200_1();
    sub_1C6FDE42C(v21, v22);
    sub_1C75504FC();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_38_7();
    do
    {
      OUTLINED_FUNCTION_186_2();
      if (((*(v177 + 56 + v23) >> v177) & 1) == 0)
      {
        v1 = v173;
        goto LABEL_38;
      }

      v24 = (*(v177 + 48) + 16 * v177);
      v25 = *v24 == v13 && v24[1] == v12;
    }

    while (!v25 && (sub_1C7551DBC() & 1) == 0);
    if (!*(v171 + 16) || (v26 = OUTLINED_FUNCTION_34_20(), v28 = sub_1C6F78124(v26, v27), (v29 & 1) == 0))
    {
      OUTLINED_FUNCTION_262_2();
      v50 = sub_1C754FEEC();
      v51 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v51))
      {
        v52 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v52);
        _os_log_impl(&dword_1C6F5C000, v50, v51, "Unable to get title from retrieval query!", v177, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      v53 = *(v0 + 80);

      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);

      goto LABEL_36;
    }

    v30 = (*(v171 + 56) + 16 * v28);
    v31 = v30[1];
    v168 = *v30;
    if (*(v0 + 273) != 1 || (*(v0 + 274) & 1) == 0)
    {
      if (*(v0 + 208))
      {
        sub_1C75504FC();
        v161 = v176;
        v65 = v31;
      }

      else
      {
        v70 = *(v0 + 200);
        v162 = *(v0 + 48);
        sub_1C75504FC();
        v71 = sub_1C706D154(v176);
        StoryAsset.Manager.collection(with:)(v71, &v179);

        v146 = v180;
        v149 = v181;
        v152 = v182;
        v72 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v179, v70, v162);
        v144 = v170;
        if (v170)
        {
LABEL_69:

          goto LABEL_71;
        }

        v161 = sub_1C71CD85C(v72);

        v170 = 0;
        v65 = v31;
      }

      v73 = *(v0 + 72);
      v156 = *(v0 + 80);
      v74 = sub_1C754DFEC();
      OUTLINED_FUNCTION_230_2(v74, v75, v76, v77, v78, v79, v80, v81, v139, v140, v141, v142, v143, v144, v146, v149, v152, v156, v161, v168);
      *(v82 + 8) = v65;
      *(v82 + 16) = v13;
      OUTLINED_FUNCTION_194_2();
      *(v73 + v83) = v163;
      *(v73 + v84) = 0;
      *(v73 + v85) = 0;
      __swift_storeEnumTagSinglePayload(v73, 0, 1, v157);
LABEL_36:
      v1 = v173;
      goto LABEL_39;
    }

    v1 = v173;
    v32 = *(v173 + 16);
    sub_1C75504FC();
    if (v32)
    {
      v33 = sub_1C6F78124(v168, v31);
      if (v34)
      {
        v35 = *(v173 + 56) + 16 * v33;
        if ((*(v35 + 8) & 1) == 0)
        {
          v158 = v31;
          v86 = *v35;
          if (*(v0 + 208))
          {
            sub_1C75504FC();
            v153 = sub_1C706D154(v176);
            v87 = sub_1C706D154(v86);
LABEL_54:
            v97 = *(v0 + 72);
            v151 = *(v0 + 80);
            v165 = v87;
            sub_1C75504FC();
            sub_1C75504FC();
            v98 = sub_1C70738FC(v165, v153);
            v148 = sub_1C71CD85C(v98);
            v166 = sub_1C71CD85C(v165);
            v155 = sub_1C71CD85C(v153);
            v99 = sub_1C754DFEC();
            OUTLINED_FUNCTION_230_2(v99, v100, v101, v102, v103, v104, v105, v106, v139, v140, v141, v142, v143, v144, v148, v151, v155, v158, v166, v168);
            *(v107 + 8) = v159;
            *(v107 + 16) = v13;
            OUTLINED_FUNCTION_194_2();
            *(v97 + v108) = v146;
            *(v97 + v109) = v167;
            *(v97 + v110) = v152;
            __swift_storeEnumTagSinglePayload(v97, 0, 1, v149);
            goto LABEL_39;
          }

          v145 = *(v0 + 200);
          v139 = *(v0 + 48);
          sub_1C75504FC();
          v88 = sub_1C706D154(v176);
          StoryAsset.Manager.collection(with:)(v88, &v179);

          v150 = v179;
          v154 = v180;
          v164 = v181;
          v89 = v86;
          v90 = v182;
          v91 = sub_1C706D154(v89);
          StoryAsset.Manager.collection(with:)(v91, &v179);

          v141 = v179;
          v142 = v180;
          v143 = v181;
          v147 = v182;
          v179 = v150;
          v180 = v154;
          v181 = v164;
          v182 = v90;
          v140 = v90;
          v92 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v179, v145, v139);
          if (!v170)
          {
            v93 = v92;
            v94 = *(v0 + 200);
            v95 = *(v0 + 48);
            v179 = v141;
            v180 = v142;
            v181 = v143;
            v182 = v147;
            v144 = 0;
            v96 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v179, v94, v95);

            v87 = v96;
            v170 = 0;
            v1 = v173;
            v153 = v93;
            goto LABEL_54;
          }

LABEL_71:

          v133 = *(v0 + 120);
          v178 = *(v0 + 112);
          v134 = *(v0 + 56);
          sub_1C6FDE438(v176, 0);

          v135 = OUTLINED_FUNCTION_323();
          OUTLINED_FUNCTION_0_22(v135, v136);
          sub_1C754F1AC();
          v137 = OUTLINED_FUNCTION_457();
          v138(v137);
          (*(v133 + 8))(v134, v178);
LABEL_62:

          OUTLINED_FUNCTION_43();

          return v128();
        }
      }
    }

    OUTLINED_FUNCTION_262_2();
    sub_1C75504FC();
    v36 = sub_1C754FEEC();
    v37 = sub_1C755119C();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_41_0();
      v160 = v36;
      v38 = OUTLINED_FUNCTION_103_6();
      v179 = v38;
      *v31 = 136315138;
      v169 = sub_1C6F765A4(v168, v31, &v179);

      *(v31 + 4) = v169;
      _os_log_impl(&dword_1C6F5C000, v160, v37, "Unable to get retrieved assets for title: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_90_2();
    }

    else
    {
    }

    v41 = v175;
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);

    v1 = v173;
LABEL_40:
    v6 &= v6 - 1;
    v63 = *(v0 + 72);
    v64 = *(v0 + 80);
    sub_1C6FDE438(v176, v41);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) != 1)
    {
      sub_1C7285088(*(v0 + 72), *(v0 + 104));
      v111 = OUTLINED_FUNCTION_66_2();
      sub_1C7285088(v111, v112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = OUTLINED_FUNCTION_99();
        sub_1C6FB1D60(v119, v120, v121, v122);
        v172 = v123;
      }

      v114 = *(v172 + 16);
      v113 = *(v172 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_1C6FB1D60(v113 > 1, v114 + 1, 1, v172);
        v172 = v124;
      }

      *(v172 + 16) = v114 + 1;
      OUTLINED_FUNCTION_191();
      sub_1C7285088(v118, v116 + v115 + *(v117 + 72) * v114);
      v4 = v174;
      goto LABEL_5;
    }

    sub_1C6FD7FC8(*(v0 + 72), &unk_1EC217A20);
    v9 = v8;
    v4 = v174;
  }

  while (v6);
  while (1)
  {
LABEL_7:
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  sub_1C754F2EC();
  if (v170)
  {
    v125 = *(v0 + 48);

    OUTLINED_FUNCTION_0_22(v125, v125[3]);
    sub_1C754F1AC();
    v126 = OUTLINED_FUNCTION_457();
    v127(v126);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_0_22(*(v0 + 48), *(*(v0 + 48) + 24));
  sub_1C754F1AC();
  v130 = OUTLINED_FUNCTION_457();
  v131(v130);

  OUTLINED_FUNCTION_116();

  return v132(v172);
}

uint64_t sub_1C7280A74()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[7];

  OUTLINED_FUNCTION_0_22(v3, v3[3]);
  sub_1C754F1AC();
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  (*(v2 + 8))(v4, v1);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C7280B88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *v5 = v2;
  v5[1] = sub_1C7280C4C;

  return MEMORY[0x1EEE6DA40](a1, a2, v6);
}

uint64_t sub_1C7280C4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1C7280D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);

  return sub_1C7550E1C();
}

uint64_t sub_1C7280D88(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  v7 = type metadata accessor for GlobalTrait();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v8 = a2[1];
  *(v5 + 184) = *a2;
  *(v5 + 200) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C7280E8C, 0, 0);
}

void sub_1C7280E8C()
{
  v174 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  *(v0 + 216) = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 96);
    v7 = OUTLINED_FUNCTION_41_0();
    v8 = OUTLINED_FUNCTION_20_1();
    *&v172 = v8;
    *v7 = 136642819;
    v9 = MEMORY[0x1CCA5D090](v6, v5);
    v11 = sub_1C6F765A4(v9, v10, &v172);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_23_3();
  }

  if (*(*(v0 + 120) + 56) == 1)
  {
    v17 = *(v0 + 104);
    sub_1C75504FC();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v0 + 200);
  v172 = *(v0 + 184);
  v173 = v18;
  v19 = sub_1C754F41C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
  *(v0 + 40) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *(v0 + 48) = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  MEMORY[0x1CCA5B6D0]();
  *(v0 + 224) = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v172, v17, v0 + 16);
  v158 = OpaqueTypeConformance2;
  v168 = v17;
  v22 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v23 = *(v22 + 16);
  *(v0 + 232) = v23;
  v24 = MEMORY[0x1E69E7CC0];
  v161 = v0;
  v162 = v20;
  v164 = v19;
  v165 = v23;
  v156 = v2;
  if (v23)
  {
    v25 = *(v0 + 128);
    v26 = *(v0 + 176);
    v27 = *(v25 + 32);
    OUTLINED_FUNCTION_152_2();
    v30 = v29 + v28;
    v1 = *(v31 + 72);
    do
    {
      v32 = *(v161 + 176);
      OUTLINED_FUNCTION_0_120();
      v33 = OUTLINED_FUNCTION_49_3();
      sub_1C72853C8(v33, v34, v35);
      v36 = *(v26 + v27);
      sub_1C75504FC();
      sub_1C7285288(v32);
      v37 = *(v36 + 16);
      v38 = *(v24 + 16);
      if (__OFADD__(v38, v37))
      {
        goto LABEL_91;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v38 + v37 > *(v24 + 24) >> 1)
      {
        sub_1C6FB1814();
        v24 = v39;
      }

      if (*(v36 + 16))
      {
        if ((*(v24 + 24) >> 1) - *(v24 + 16) < v37)
        {
          goto LABEL_93;
        }

        swift_arrayInitWithCopy();

        if (v37)
        {
          v40 = *(v24 + 16);
          v41 = __OFADD__(v40, v37);
          v42 = v40 + v37;
          if (v41)
          {
            goto LABEL_94;
          }

          *(v24 + 16) = v42;
        }
      }

      else
      {

        if (v37)
        {
          goto LABEL_92;
        }
      }

      v30 += v1;
      --v23;
    }

    while (v23);
  }

  v43 = sub_1C706D154(v24);
  StoryAsset.Manager.collection(with:)(v43, &v172);

  v45 = *(&v172 + 1);
  v44 = v172;
  v46 = v161;
  *(v161 + 240) = v172;
  *(v161 + 248) = v45;
  v47 = v173;
  *(v161 + 256) = v173;
  v172 = __PAIR128__(v45, v44);
  v173 = v47;
  *(v161 + 80) = v162;
  *(v161 + 88) = v158;
  __swift_allocate_boxed_opaque_existential_0((v161 + 56));
  MEMORY[0x1CCA5B6D0]();
  v48 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v172, v168, v161 + 56);
  v49 = *(v161 + 120);

  __swift_destroy_boxed_opaque_existential_1(v161 + 56);
  v50 = *(v49 + 112);
  v51 = *(v49 + 120);
  v52 = *(v49 + 128);
  *&v172 = v50;
  WORD4(v172) = v51;
  *&v173 = v52;
  v53 = v50;

  v54 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v48, &v172);
  *(v161 + 272) = v54;

  v55 = objc_opt_self();
  *(v161 + 280) = v55;
  v56 = [v55 globalTraitsUseSemanticSimilarity];
  v57 = sub_1C754FEEC();
  v58 = sub_1C75511BC();
  v59 = OUTLINED_FUNCTION_128(v58);
  if (v56)
  {
    if (v59)
    {
      v60 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v60);
      _os_log_impl(&dword_1C6F5C000, v57, v58, "globalTraitsUseSemanticSimilarity is TRUE - counting semantically similar traits as 1 trait for moment frequency", 0, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v61 = swift_task_alloc();
    *(v161 + 288) = v61;
    *v61 = v161;
    v61[1] = sub_1C7281B4C;
    OUTLINED_FUNCTION_61_3(*(v161 + 96));
    OUTLINED_FUNCTION_188_1();

    sub_1C72827A8(v62, v63, v64);
    return;
  }

  if (v59)
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v66, v67, v68, v69, v70, 2u);
    OUTLINED_FUNCTION_109();
  }

  *&v172 = MEMORY[0x1E69E7CC8];
  if (!v165)
  {
LABEL_43:
    v94 = [*(v46 + 280) globalTraitsNumberOfTraitsForMomentOverlap];
    v95 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_58_20();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_41_0();
      *v97 = 134217984;
      *(v97 + 4) = v94;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v98, v99, v100, v101, v97, 0xCu);
      OUTLINED_FUNCTION_79();
    }

    v102 = *(v46 + 232);

    v103 = OUTLINED_FUNCTION_145_2();
    v105 = sub_1C72857E8(v103, v104);

    v106 = sub_1C7080ED4(v105);
    if (v102)
    {
      v160 = *(v46 + 272);
      v107 = *(v46 + 224);
      v108 = *(v46 + 136);
      v109 = *(v46 + 96);
      OUTLINED_FUNCTION_265_1();
      v110 = v171;
      OUTLINED_FUNCTION_191();
      v154 = v112;
      v167 = v106 + 56;
      v170 = v106;
      v113 = *(v108 + 72);
      v153 = v113;
      do
      {
        v116 = v46 + 144;
        v115 = *(v46 + 144);
        v114 = *(v116 + 8);
        v157 = v111 + 1;
        OUTLINED_FUNCTION_100_8();
        sub_1C72853C8(v117, v114, v118);
        sub_1C72853C8(v114, v115, v113);
        OUTLINED_FUNCTION_148_6();
        v119 = MEMORY[0x1E69E7CC0];
LABEL_48:
        while (v164)
        {
          if (!*(v165 + 16))
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_201_1();
          if (v120)
          {
            sub_1C7551F3C();
            sub_1C75504FC();
            sub_1C75505AC();
            sub_1C7551FAC();
            OUTLINED_FUNCTION_38_7();
            while (1)
            {
              OUTLINED_FUNCTION_38_23();
              if ((v121 & 1) == 0)
              {
                break;
              }

              if (OUTLINED_FUNCTION_222_0(*(v107 + 48)) != v45 || v122 != v1)
              {
                sub_1C7551DBC();
                OUTLINED_FUNCTION_220_1();
                if ((v124 & 1) == 0)
                {
                  continue;
                }
              }

LABEL_73:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_99();
                sub_1C6F7ED9C();
              }

              v109 = *(v119 + 16);
              OUTLINED_FUNCTION_242_1();
              if (v133)
              {
                OUTLINED_FUNCTION_15(v132);
                OUTLINED_FUNCTION_143_0();
                sub_1C6F7ED9C();
              }

              *(v119 + 16) = v113;
              v134 = v119 + 16 * v109;
              *(v134 + 32) = v45;
              *(v134 + 40) = v1;
              goto LABEL_48;
            }
          }

          else
          {
            sub_1C75504FC();
          }

          v113 = v160;
          if (*(v160 + 16) && (v125 = OUTLINED_FUNCTION_2_56(), sub_1C6F78124(v125, v126), (v127 & 1) != 0))
          {
            OUTLINED_FUNCTION_255_2();
          }

          else
          {
            v106 = 0;
            v113 = 0xE000000000000000;
          }

          if (*(v170 + 16))
          {
            sub_1C7551F3C();
            sub_1C75505AC();
            sub_1C7551FAC();
            while (1)
            {
              OUTLINED_FUNCTION_186_2();
              if (((*(v167 + v129) >> v109) & 1) == 0)
              {
                break;
              }

              v130 = (*(v128 + 48) + 16 * v109);
              v131 = *v130 == v106 && v130[1] == v113;
              if (v131 || (sub_1C7551DBC() & 1) != 0)
              {

                goto LABEL_73;
              }
            }
          }
        }

        v106 = v161;
        v135 = *(v161 + 144);
        sub_1C7285288(*(v161 + 152));

        *(v156 + v155) = v119;
        v136 = OUTLINED_FUNCTION_90();
        sub_1C7285088(v136, v137);
        v109 = *(v171 + 16);
        OUTLINED_FUNCTION_242_1();
        if (v133)
        {
          OUTLINED_FUNCTION_15(v138);
          OUTLINED_FUNCTION_143_0();
          sub_1C716E538();
        }

        v139 = *(v161 + 232);
        v140 = *(v161 + 160);
        *(v171 + 16) = v135;
        v113 = v153;
        sub_1C7285088(v140, v171 + v154 + v109 * v153);
        v111 = v157;
        v46 = v161;
      }

      while (v157 != v139);
    }

    else
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v141 = sub_1C754FEEC();
    v142 = v110;
    v143 = sub_1C75511BC();

    if (os_log_type_enabled(v141, v143))
    {
      v144 = *(v46 + 128);
      OUTLINED_FUNCTION_41_0();
      v145 = OUTLINED_FUNCTION_103_6();
      *&v172 = v145;
      *v142 = 136642819;
      v146 = MEMORY[0x1CCA5D090](v142, v144);
      v148 = sub_1C6F765A4(v146, v147, &v172);

      *(v142 + 4) = v148;
      OUTLINED_FUNCTION_258_1(&dword_1C6F5C000, v149, v150, "Global traits after, with updated assets: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v145);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_188_1();

    __asm { BRAA            X2, X16 }
  }

  v71 = 0;
  v72 = 0;
  v163 = *(v161 + 168);
  v159 = *(*(v161 + 128) + 32);
  OUTLINED_FUNCTION_152_2();
LABEL_29:
  v169 = v71;
  OUTLINED_FUNCTION_0_120();
  sub_1C72853C8(v73, v74, v75);
  v1 = 0;
  v166 = v72 + 1;
  v45 = *(v163 + v159);
  v76 = *(v45 + 16);
  v77 = v45 + 40;
  v78 = MEMORY[0x1E69E7CC0];
LABEL_30:
  for (i = (v77 + 16 * v1); ; i += 2)
  {
    if (v76 == v1)
    {
      v46 = v161;
      v92 = *(v161 + 168);
      v93 = sub_1C706D154(v78);
      sub_1C72738F0(v93, &v172);
      v71 = v169;

      sub_1C7285288(v92);
      v72 = v166;
      if (v166 == v165)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    if (v1 >= *(v45 + 16))
    {
      break;
    }

    if (*(v54 + 16))
    {
      v80 = *(i - 1);
      v81 = *i;
      sub_1C75504FC();
      v82 = sub_1C6F78124(v80, v81);
      if (v83)
      {
        v164 = v77;
        v84 = (*(v54 + 56) + 16 * v82);
        v86 = *v84;
        v85 = v84[1];
        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6FB1814();
          v78 = v90;
        }

        v88 = *(v78 + 16);
        v87 = *(v78 + 24);
        if (v88 >= v87 >> 1)
        {
          OUTLINED_FUNCTION_15(v87);
          OUTLINED_FUNCTION_89_5();
          sub_1C6FB1814();
          v78 = v91;
        }

        ++v1;
        *(v78 + 16) = v88 + 1;
        v89 = v78 + 16 * v88;
        *(v89 + 32) = v86;
        *(v89 + 40) = v85;
        v77 = v164;
        goto LABEL_30;
      }
    }

    ++v1;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
}

uint64_t sub_1C7281B4C()
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
  *(v5 + 296) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C7281C6C()
{
  v69 = v0;
  v3 = [v0[35] globalTraitsNumberOfTraitsForMomentOverlap];
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "globalTraitsNumberOfTraitsForMomentOverlap = %ld", v6, 0xCu);
    OUTLINED_FUNCTION_79();
  }

  v7 = v0[29];

  v8 = OUTLINED_FUNCTION_457();
  v10 = sub_1C72857E8(v8, v9);

  v11 = sub_1C7080ED4(v10);
  if (!v7)
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_42:
    sub_1C75504FC();
    v45 = sub_1C754FEEC();
    v46 = sub_1C75511BC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v0[16];
      OUTLINED_FUNCTION_41_0();
      v48 = OUTLINED_FUNCTION_103_6();
      v68[0] = v48;
      *v15 = 136642819;
      v49 = MEMORY[0x1CCA5D090](v15, v47);
      v51 = sub_1C6F765A4(v49, v50, v68);

      *(v15 + 4) = v51;
      OUTLINED_FUNCTION_258_1(&dword_1C6F5C000, v52, v53, "Global traits after, with updated assets: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_188_1();

    __asm { BRAA            X2, X16 }
  }

  v63 = v0[34];
  v12 = v0[28];
  v13 = v0[17];
  v14 = v0[12];
  OUTLINED_FUNCTION_265_1();
  v15 = v67;
  OUTLINED_FUNCTION_191();
  v57 = v17;
  v18 = *(v13 + 72);
  v62 = v0;
  v56 = v18;
LABEL_5:
  v21 = v0 + 18;
  v20 = v0[18];
  v19 = v21[1];
  v60 = v16 + 1;
  v61 = v15;
  OUTLINED_FUNCTION_100_8();
  sub_1C72853C8(v22, v19, v23);
  sub_1C72853C8(v19, v20, v18);
  OUTLINED_FUNCTION_148_6();
  for (i = MEMORY[0x1E69E7CC0]; ; i = v66)
  {
LABEL_6:
    if (!v64)
    {
      v0 = v62;
      v39 = v62[18];
      sub_1C7285288(v62[19]);

      *(v59 + v58) = i;
      v40 = OUTLINED_FUNCTION_90();
      sub_1C7285088(v40, v41);
      v15 = v61;
      v14 = *(v61 + 16);
      OUTLINED_FUNCTION_242_1();
      if (v37)
      {
        OUTLINED_FUNCTION_15(v42);
        OUTLINED_FUNCTION_143_0();
        sub_1C716E538();
        v15 = v61;
      }

      v43 = v62[29];
      v44 = v62[20];
      *(v15 + 16) = v39;
      v18 = v56;
      sub_1C7285088(v44, v15 + v57 + v14 * v56);
      v16 = v60;
      if (v60 == v43)
      {

        goto LABEL_42;
      }

      goto LABEL_5;
    }

    if (!*(v65 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_201_1();
    if (v25)
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_7();
      while (1)
      {
        OUTLINED_FUNCTION_38_23();
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (OUTLINED_FUNCTION_222_0(*(v12 + 48)) != v2 || v27 != v1)
        {
          sub_1C7551DBC();
          OUTLINED_FUNCTION_220_1();
          if ((v29 & 1) == 0)
          {
            continue;
          }
        }

LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6F7ED9C();
        }

        v14 = *(i + 16);
        OUTLINED_FUNCTION_242_1();
        if (v37)
        {
          OUTLINED_FUNCTION_15(v36);
          OUTLINED_FUNCTION_143_0();
          sub_1C6F7ED9C();
        }

        *(i + 16) = v18;
        v38 = i + 16 * v14;
        *(v38 + 32) = v2;
        *(v38 + 40) = v1;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    v18 = v63;
    v66 = i;
    if (*(v63 + 16) && (v30 = OUTLINED_FUNCTION_2_56(), sub_1C6F78124(v30, v31), (v32 & 1) != 0))
    {
      OUTLINED_FUNCTION_255_2();
    }

    else
    {
      i = 0;
      v18 = 0xE000000000000000;
    }

    if (*(v11 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_7();
      while (1)
      {
        OUTLINED_FUNCTION_186_2();
        if (((*(v11 + 56 + v33) >> v14) & 1) == 0)
        {
          break;
        }

        v34 = (*(v11 + 48) + 16 * v14);
        v35 = *v34 == i && v34[1] == v18;
        if (v35 || (sub_1C7551DBC() & 1) != 0)
        {

          i = v66;
          goto LABEL_31;
        }
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C72821F8()
{

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for GlobalTrait();
  if (*(a1 + *(result + 28)) != 1)
  {
    return 1;
  }

  v6 = ceil(*(v2 + 40) * a2);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = v6;
  if (*(v2 + 32) < v6)
  {
    v7 = *(v2 + 32);
  }

  if (v7 <= *(v2 + 24))
  {
    v7 = *(v2 + 24);
  }

  return *(*(a1 + *(result + 32)) + 16) >= v7;
}

uint64_t sub_1C728237C(uint64_t a1, uint64_t a2)
{
  sub_1C6FB0848();
  v4 = *(*(a1 + 112) + 16);
  sub_1C6FB10D4();
  v5 = *(a1 + 112);
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for GlobalTrait() - 8);
  result = sub_1C72853C8(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, type metadata accessor for GlobalTrait);
  *(a1 + 112) = v5;
  return result;
}

uint64_t sub_1C728244C(uint64_t a1, uint64_t a2)
{
  sub_1C6FB0848();
  v4 = *(*(a1 + 120) + 16);
  sub_1C6FB10D4();
  v5 = *(a1 + 120);
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for GlobalTrait() - 8);
  result = sub_1C72853C8(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, type metadata accessor for GlobalTrait);
  *(a1 + 120) = v5;
  return result;
}

uint64_t sub_1C728251C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  result = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v10, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

void static GlobalTraitGenerator.computeNumberOfTokens(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 || a2 != 0xE000000000000000)
  {
    OUTLINED_FUNCTION_103();
    if ((sub_1C7551DBC() & 1) == 0)
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v6 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
      if (v2)
      {
      }

      else
      {
        v7 = v6;
        if (v6)
        {
          v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v9 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
          v11 = v9;
          if (v9)
          {
            sub_1C6FB5E8C();
            v17 = *(sub_1C755152C() + 16);

            OUTLINED_FUNCTION_103();
            v12 = sub_1C75507FC();
            OUTLINED_FUNCTION_103();
            v13 = sub_1C755065C();
            v14 = [v7 numberOfMatchesInString:v13 options:0 range:{0, v12, 32, 0xE100000000000000, a1, a2}];

            OUTLINED_FUNCTION_103();
            v15 = sub_1C755065C();
            v16 = [v11 numberOfMatchesInString:v15 options:0 range:{0, v12}];

            if (!__OFADD__(v17, v14))
            {
              if (!__OFADD__(&v14[v17], v16))
              {
                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
          }
        }
      }

      sub_1C7196EF4();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C72827A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for GlobalTrait();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72828D4, 0, 0);
}

uint64_t sub_1C72828D4()
{
  OUTLINED_FUNCTION_63_0();
  v1 = [objc_opt_self() globalTraitsMaximumTextSimilarityScore];
  sub_1C7550F1C();
  v3 = v2;
  v0[31] = v2;

  v0[32] = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    v6 = OUTLINED_FUNCTION_41_0();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  v12 = v0[19];

  v13 = *(v12 + 16);
  v0[33] = v13;
  if (v13)
  {
    v14 = 0;
    v15 = v0[20];
    v59 = *(v0[23] + 32);
    v60 = v0[30];
    OUTLINED_FUNCTION_152_2();
    v18 = v17 + v16;
    v62 = *(v19 + 72);
    v63 = MEMORY[0x1E69E7CC8];
    v57 = v17 + v16;
    v58 = v13;
    do
    {
      sub_1C72853C8(v18 + v14 * v62, v0[30], type metadata accessor for GlobalTrait);
      v61 = v14 + 1;
      v20 = OUTLINED_FUNCTION_82();
      sub_1C72853C8(v20, v21, type metadata accessor for GlobalTrait);
      v22 = 0;
      v23 = *(v60 + v59);
      v24 = *(v23 + 16);
      v25 = v23 + 40;
      v26 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v27 = v25 + 16 * v22;
      while (v24 != v22)
      {
        if (v22 >= *(v23 + 16))
        {
          __break(1u);
        }

        if (*(v15 + 16))
        {
          sub_1C75504FC();
          v28 = OUTLINED_FUNCTION_66_4();
          v30 = sub_1C6F78124(v28, v29);
          if (v31)
          {
            v32 = (*(v15 + 56) + 16 * v30);
            v34 = *v32;
            v33 = v32[1];
            sub_1C75504FC();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_99();
              sub_1C6FB1814();
              v26 = v38;
            }

            v36 = *(v26 + 16);
            v35 = *(v26 + 24);
            if (v36 >= v35 >> 1)
            {
              OUTLINED_FUNCTION_15(v35);
              OUTLINED_FUNCTION_89_5();
              sub_1C6FB1814();
              v26 = v39;
            }

            ++v22;
            *(v26 + 16) = v36 + 1;
            v37 = v26 + 16 * v36;
            *(v37 + 32) = v34;
            *(v37 + 40) = v33;
            v25 = v23 + 40;
            goto LABEL_6;
          }
        }

        v27 += 16;
        ++v22;
      }

      v41 = v0[29];
      v40 = v0[30];
      sub_1C706D154(v26);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FC8F1C();
      sub_1C7285288(v41);
      sub_1C7285288(v40);
      v18 = v57;
      v42 = v58;
      v14 = v61;
    }

    while (v61 != v58);
    v43 = v0[28];
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v44 = v64;
    do
    {
      v45 = v0[28];
      OUTLINED_FUNCTION_0_120();
      sub_1C72853C8(v18, v45, v46);
      v47 = *v45;
      v48 = *(v43 + 8);
      sub_1C75504FC();
      sub_1C7285288(v45);
      v50 = *(v64 + 16);
      v49 = *(v64 + 24);
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_15(v49);
        OUTLINED_FUNCTION_89_5();
        sub_1C6F7ED9C();
      }

      *(v64 + 16) = v50 + 1;
      v51 = v64 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      v18 += v62;
      --v42;
    }

    while (v42);
    v52 = v63;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
    v52 = MEMORY[0x1E69E7CC8];
  }

  v0[34] = v52;
  v0[35] = v44;
  v53 = v0[21];
  v54 = sub_1C7550B3C();
  v0[36] = v54;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C7282D84;
  v55 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_23;
  v0[14] = v55;
  [v53 requestTextEmbeddings:v54 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C7282D84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C7282EB8()
{
  v130 = v0;
  v129[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);
  v116 = v0 + 144;
  v2 = sub_1C6FB6304();
  if (v2)
  {
    v3 = v2;
    v129[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E518();
    if (v3 < 0)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v4 = 0;
    v5 = v129[0];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_145_2();
        MEMORY[0x1CCA5DDD0](v6);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v7 = PNTextEmbeddingResult.embeddingFloatValues.getter();
      swift_unknownObjectRelease();
      v129[0] = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_15(v8);
        sub_1C716E518();
        v5 = v129[0];
      }

      ++v4;
      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
    }

    while (v3 != v4);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = (v0 + 304);
  v11 = (v0 + 308);
  v125 = v5 + 32;
  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v122 = *(v0 + 192);

  v14 = 0;
  v123 = *(v5 + 16);
  v15 = *(v0 + 272);
  v117 = v12;
  v16 = v12 + 40;
  v114 = v0;
  v113 = v12 + 40;
  while (2)
  {
    for (i = v16 + 16 * v14; ; i += 16)
    {
      if (v123 == v14)
      {

        v129[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_10();
        v79 = v78 & v77;
        v81 = (63 - v80) >> 6;
        swift_bridgeObjectRetain_n();
        v82 = 0;
        if (!v79)
        {
          goto LABEL_63;
        }

        do
        {
LABEL_67:
          v79 &= v79 - 1;
          v84 = sub_1C75504FC();
          sub_1C6FD25FC(v84);
        }

        while (v79);
LABEL_63:
        while (1)
        {
          v83 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            break;
          }

          if (v83 >= v81)
          {

            v85 = 0;
            v126 = *(v129[0] + 16);
            v86 = MEMORY[0x1E69E7CC8];
            v128 = v129[0];
            for (j = (v129[0] + 40); ; j += 2)
            {
              if (v126 == v85)
              {

                OUTLINED_FUNCTION_116();
                OUTLINED_FUNCTION_276_2();

                __asm { BRAA            X2, X16 }
              }

              if (v85 >= *(v128 + 16))
              {
                break;
              }

              v88 = v15;
              v90 = *(j - 1);
              v89 = *j;
              sub_1C75504FC();
              swift_isUniquelyReferenced_nonNull_native();
              v129[0] = v86;
              v91 = OUTLINED_FUNCTION_66_4();
              v93 = sub_1C6F78124(v91, v92);
              if (__OFADD__(v86[2], (v94 & 1) == 0))
              {
                goto LABEL_91;
              }

              v95 = v93;
              v96 = v94;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
              v97 = sub_1C7551A2C();
              v86 = v129[0];
              if (v97)
              {
                v98 = OUTLINED_FUNCTION_66_4();
                v100 = sub_1C6F78124(v98, v99);
                if ((v96 & 1) != (v101 & 1))
                {
                  goto LABEL_84;
                }

                v95 = v100;
              }

              if ((v96 & 1) == 0)
              {
                OUTLINED_FUNCTION_1_3(&v86[v95 >> 6]);
                v102 = (v86[6] + 16 * v95);
                *v102 = v90;
                v102[1] = v89;
                *(v86[7] + 8 * v95) = 0;
                v103 = v86[2];
                v65 = __OFADD__(v103, 1);
                v104 = v103 + 1;
                if (v65)
                {
                  goto LABEL_93;
                }

                v86[2] = v104;
                sub_1C75504FC();
              }

              v105 = v86[7];
              v106 = *(v105 + 8 * v95);
              v65 = __OFADD__(v106, 1);
              v107 = v106 + 1;
              if (v65)
              {
                goto LABEL_92;
              }

              *(v105 + 8 * v95) = v107;

              ++v85;
              v15 = v88;
            }

LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_84:
            OUTLINED_FUNCTION_276_2();

            sub_1C7551E4C();
            return;
          }

          v79 = *(v15 + 64 + 8 * v83);
          ++v82;
          if (v79)
          {
            v82 = v83;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v14 >= *(v5 + 16))
      {
        goto LABEL_88;
      }

      if (v14 >= *(v0 + 264))
      {
        goto LABEL_89;
      }

      v17 = *(v125 + 8 * v14);
      v18 = *(v0 + 152);
      v19 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v124 = *(v122 + 72);
      OUTLINED_FUNCTION_0_120();
      sub_1C72853C8(v20, v21, v22);
      v23 = *(v15 + 16);
      sub_1C75504FC();
      v24 = *(v0 + 216);
      if (!v23)
      {
        goto LABEL_22;
      }

      v25 = sub_1C6FC2FA4();
      if (v26)
      {
        break;
      }

      v24 = *(v0 + 216);
LABEL_22:
      sub_1C7285288(v24);
LABEL_23:

      ++v14;
    }

    v27 = *(*(v15 + 56) + 8 * v25);
    if (!*(v27 + 16))
    {
      v28 = *(v0 + 216);
      sub_1C75504FC();
      sub_1C7285288(v28);

      goto LABEL_23;
    }

    v112 = v27;
    sub_1C75504FC();
    v29 = v18 + v19;
    v111 = v18 + v19;
    v30 = v14 + 1;
    v115 = v11;
LABEL_25:
    v120 = (v113 + 16 * v30);
    v121 = v29 + v124 * v30;
    v31 = v30;
    v118 = v30;
LABEL_26:
    v32 = *(v0 + 264);
    if (v31 == v32)
    {
      sub_1C7285288(*(v0 + 216));

      v16 = v113;
      ++v14;
      continue;
    }

    break;
  }

  if (v30 <= v14 || v31 >= v32)
  {
    goto LABEL_94;
  }

  if (v31 >= *(v5 + 16))
  {
    goto LABEL_95;
  }

  v34 = *(v125 + 8 * v31);
  v35 = *(v17 + 16);
  if (v35 != *(v34 + 16))
  {
    goto LABEL_96;
  }

  v119 = v31;
  *v10 = NAN;
  sub_1C75504FC();
  vDSP_svesq((v17 + 32), 1, v10, v35);
  v36 = *v10;
  v37 = *(v34 + 16);
  *v11 = NAN;
  v38 = sqrtf(v36);
  vDSP_svesq((v34 + 32), 1, v11, v37);
  v39 = v38 * sqrtf(*v11);
  if (v39 == 0.0)
  {

    if (v13 > 0.0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v40 = *(v17 + 16);
    if (v40 != *(v34 + 16))
    {
      goto LABEL_97;
    }

    v41 = *(v0 + 248);
    *(v0 + 312) = 0;
    vDSP_dotpr((v17 + 32), 1, (v34 + 32), 1, (v116 + 168), v40);
    v42 = *(v0 + 312);

    if (v41 > (v42 / v39))
    {
      goto LABEL_47;
    }
  }

  sub_1C75504FC();
  v43 = sub_1C754FEEC();
  v44 = sub_1C75511BC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v15;
    v46 = swift_slowAlloc();
    v129[0] = swift_slowAlloc();
    *v46 = 136643075;
    if (v14 >= *(v117 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    sub_1C75504FC();
    v47 = OUTLINED_FUNCTION_34_20();
    v50 = sub_1C6F765A4(v47, v48, v49);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2085;
    if (v119 >= *(v117 + 16))
    {
      goto LABEL_100;
    }

    v51 = *(v120 - 1);
    v52 = *v120;
    sub_1C75504FC();
    v53 = sub_1C6F765A4(v51, v52, v129);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_1C6F5C000, v43, v44, "Traits %{sensitive}s and %{sensitive}s are too similar, only keeping moment for one", v46, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_90_2();

    v15 = v45;
    v10 = (v116 + 160);
    v0 = v114;
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_120();
  sub_1C72853C8(v121, v54, v55);
  v11 = v115;
  if (!*(v15 + 16) || (v56 = sub_1C6FC2FA4(), (v57 & 1) == 0))
  {
    sub_1C7285288(*(v0 + 208));
LABEL_47:
    v120 += 2;
    v121 += v124;
    v31 = v119 + 1;
    v30 = v118;
    goto LABEL_26;
  }

  if (*(v112 + 16) <= *(*(*(v15 + 56) + 8 * v56) + 16) >> 3)
  {
    v129[0] = *(*(v15 + 56) + 8 * v56);
    sub_1C75504FC();
    sub_1C7420F88();
    v59 = v129[0];
  }

  else
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_90();
    sub_1C74C35FC();
    v59 = v58;
  }

  v60 = *(v0 + 200);
  OUTLINED_FUNCTION_0_120();
  sub_1C72853C8(v61, v60, v62);
  swift_isUniquelyReferenced_nonNull_native();
  v129[0] = v15;
  sub_1C6FC2FA4();
  OUTLINED_FUNCTION_183_0();
  if (!v65)
  {
    v66 = v63;
    v67 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EB0);
    v68 = sub_1C7551A2C();
    v15 = v129[0];
    if (v68)
    {
      v69 = sub_1C6FC2FA4();
      if ((v67 & 1) != (v70 & 1))
      {
        goto LABEL_84;
      }

      v66 = v69;
    }

    if (v67)
    {
      *(*(v15 + 56) + 8 * v66) = v59;
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v15 + 8 * (v66 >> 6));
      OUTLINED_FUNCTION_0_120();
      sub_1C72853C8(v71, v72, v73);
      *(*(v15 + 56) + 8 * v66) = v59;
      v74 = *(v15 + 16);
      v65 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v65)
      {
        goto LABEL_103;
      }

      *(v15 + 16) = v75;
    }

    v10 = (v116 + 160);
    v11 = v115;
    v76 = *(v0 + 208);
    sub_1C7285288(*(v0 + 200));
    sub_1C7285288(v76);
    v30 = v119 + 1;
    v29 = v111;
    goto LABEL_25;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
}

uint64_t sub_1C72838D4()
{
  v1 = *(v0 + 288);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C72839CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (sub_1C73BF00C(*a1, v5))
  {
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Global traits completion included an empty collection trait title.", v8, 2u);
      v9 = v8;
LABEL_7:
      MEMORY[0x1CCA5F8E0](v9, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = sub_1C75506FC();
  v12 = sub_1C7009C30(v10, v11, a3);

  if (v12)
  {
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v13 = sub_1C75511BC();

    if (os_log_type_enabled(v6, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1C6F765A4(v4, v5, &v17);
      _os_log_impl(&dword_1C6F5C000, v6, v13, "Global traits deny list contained the trait title %s, removed it.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
      v9 = v14;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  return 1;
}

uint64_t sub_1C7283B94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1C73BF00C(a1, a2))
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C755119C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Global traits completion included an empty speculative trait title.";
LABEL_7:
      _os_log_impl(&dword_1C6F5C000, v11, v12, v14, v13, 2u);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (sub_1C73BF00C(a3, a4))
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C755119C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Global traits completion included an empty speculative trait query.";
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  v16 = sub_1C75506FC();
  v18 = sub_1C7009C30(v16, v17, a6);

  if ((v18 & 1) == 0)
  {
    return 1;
  }

  sub_1C75504FC();
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1C6F765A4(a1, a2, &v23);
    _os_log_impl(&dword_1C6F5C000, v19, v20, "Global traits deny list contained the trait title %s, removed it.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1CCA5F8E0](v22, -1, -1);
    MEMORY[0x1CCA5F8E0](v21, -1, -1);
  }

  return 0;
}

uint64_t GlobalTraitGenerator.deinit()
{

  v1 = *(v0 + 112);

  sub_1C6FD7FC8(v0 + 152, &unk_1EC219E90);

  v2 = OBJC_IVAR____TtC18PhotosIntelligence20GlobalTraitGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t GlobalTraitGenerator.__deallocating_deinit()
{
  GlobalTraitGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C7283ED8(uint64_t *a1)
{
  v2 = *(type metadata accessor for GlobalTrait() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D74();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C7283F80(v6);
  *a1 = v3;
}

void sub_1C7283F80(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GlobalTrait();
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for GlobalTrait() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C72842DC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C72840B0(0, v2, 1, a1);
  }
}

void sub_1C72840B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C72853C8(v22, v16, type metadata accessor for GlobalTrait);
        sub_1C72853C8(v19, v12, type metadata accessor for GlobalTrait);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C7285288(v12);
        sub_1C7285288(v16);
        if (v24)
        {
          if (!v17)
          {
            __break(1u);
            return;
          }

          sub_1C7285088(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7285088(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C7285288(v12);
      sub_1C7285288(v16);
LABEL_14:
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C72842DC(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v121 = a1;
  v136 = type metadata accessor for GlobalTrait();
  v128 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v124 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v137 = (&v116 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v116 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v133 = (&v116 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v132 = (&v116 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v120 = (&v116 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v119 = (&v116 - v21);
  v130 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v26 = *v121;
    if (!*v121)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v108 = (v24 + 16);
      for (i = *(v24 + 2); i >= 2; *v108 = i)
      {
        if (!*v130)
        {
          goto LABEL_149;
        }

        v110 = &v24[16 * i];
        v111 = *v110;
        v112 = &v108[2 * i];
        v113 = *(v112 + 1);
        v114 = v134;
        sub_1C7284C10(*v130 + *(v128 + 72) * *v110, *v130 + *(v128 + 72) * *v112, *v130 + *(v128 + 72) * v113, v26);
        v134 = v114;
        if (v114)
        {
          break;
        }

        if (v113 < v111)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v108)
        {
          goto LABEL_138;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        v115 = *v108 - i;
        if (*v108 < i)
        {
          goto LABEL_139;
        }

        i = *v108 - 1;
        sub_1C7423CF4(v112 + 16, v115, v112);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v24 = sub_1C7420830();
    goto LABEL_114;
  }

  v117 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v125 = v13;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v122 = v23;
    if (v23 + 1 < v22)
    {
      v27 = *v130;
      v28 = *(v128 + 72);
      v29 = v119;
      sub_1C72853C8(*v130 + v28 * v26, v119, type metadata accessor for GlobalTrait);
      v129 = v28;
      v30 = v27 + v28 * v25;
      v31 = v120;
      sub_1C72853C8(v30, v120, type metadata accessor for GlobalTrait);
      if (*v29 == *v31 && v29[1] == v31[1])
      {
        LODWORD(v127) = 0;
      }

      else
      {
        LODWORD(v127) = sub_1C7551DBC();
      }

      v118 = v24;
      sub_1C7285288(v120);
      sub_1C7285288(v119);
      v33 = v25 + 2;
      v34 = v129 * (v25 + 2);
      v35 = v27 + v34;
      v36 = v26;
      v37 = v129 * v26;
      v38 = v27 + v129 * v26;
      v126 = v22;
      do
      {
        v39 = v33;
        v40 = v36;
        v41 = v37;
        v26 = v34;
        if (v33 >= v22)
        {
          break;
        }

        v131 = v33;
        v42 = v132;
        sub_1C72853C8(v35, v132, type metadata accessor for GlobalTrait);
        v43 = v133;
        sub_1C72853C8(v38, v133, type metadata accessor for GlobalTrait);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_1C7551DBC();
        v39 = v131;
        sub_1C7285288(v133);
        sub_1C7285288(v132);
        v33 = v39 + 1;
        v35 += v129;
        v38 += v129;
        v36 = v40 + 1;
        v37 = v41 + v129;
        v34 = v26 + v129;
        v13 = v125;
        v22 = v126;
      }

      while (((v127 ^ v45) & 1) == 0);
      if (v127)
      {
        v25 = v122;
        if (v39 < v122)
        {
          goto LABEL_143;
        }

        if (v122 >= v39)
        {
          v26 = v39;
          v24 = v118;
          goto LABEL_37;
        }

        v46 = v122 * v129;
        do
        {
          if (v25 != v40)
          {
            v47 = *v130;
            if (!*v130)
            {
              goto LABEL_150;
            }

            sub_1C7285088(v47 + v46, v124);
            v48 = v46 < v41 || v47 + v46 >= (v47 + v26);
            if (v48)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7285088(v124, v47 + v41);
          }

          ++v25;
          v41 -= v129;
          v26 -= v129;
          v46 += v129;
        }

        while (v25 < v40--);
      }

      v26 = v39;
      v24 = v118;
      v25 = v122;
    }

LABEL_37:
    v50 = v130[1];
    if (v26 < v50)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_142;
      }

      if (v26 - v25 < v117)
      {
        break;
      }
    }

LABEL_59:
    if (v26 < v25)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v24 = v106;
    }

    v63 = *(v24 + 2);
    v64 = v63 + 1;
    if (v63 >= *(v24 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v24 = v107;
    }

    *(v24 + 2) = v64;
    v65 = v24 + 32;
    v66 = &v24[16 * v63 + 32];
    *v66 = v122;
    *(v66 + 1) = v26;
    v129 = *v121;
    if (!v129)
    {
      goto LABEL_151;
    }

    v131 = v26;
    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        v68 = &v65[16 * v64 - 16];
        v69 = &v24[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v24 + 4);
          v71 = *(v24 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_128;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_131;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_136;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v64 < 2)
        {
          goto LABEL_130;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_94:
        if (v88)
        {
          goto LABEL_133;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v95 < v87)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v67 - 1 >= v64)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v130)
        {
          goto LABEL_148;
        }

        v99 = v24;
        v100 = &v65[16 * v67 - 16];
        v101 = *v100;
        v102 = v65;
        v103 = &v65[16 * v67];
        v104 = *(v103 + 1);
        v105 = v134;
        sub_1C7284C10(*v130 + *(v128 + 72) * *v100, *v130 + *(v128 + 72) * *v103, *v130 + *(v128 + 72) * v104, v129);
        v134 = v105;
        if (v105)
        {
          goto LABEL_110;
        }

        if (v104 < v101)
        {
          goto LABEL_123;
        }

        v26 = *(v99 + 2);
        if (v67 > v26)
        {
          goto LABEL_124;
        }

        *v100 = v101;
        *(v100 + 1) = v104;
        if (v67 >= v26)
        {
          goto LABEL_125;
        }

        v64 = v26 - 1;
        sub_1C7423CF4(v103 + 16, v26 - 1 - v67, v103);
        v24 = v99;
        *(v99 + 2) = v26 - 1;
        v65 = v102;
        if (v26 <= 2)
        {
          goto LABEL_108;
        }
      }

      v74 = &v65[16 * v64];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_126;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_127;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_129;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_132;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_140;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v23 = v131;
    v22 = v130[1];
    if (v131 >= v22)
    {
      goto LABEL_112;
    }
  }

  v51 = v25 + v117;
  if (__OFADD__(v25, v117))
  {
    goto LABEL_144;
  }

  if (v51 >= v50)
  {
    v51 = v130[1];
  }

  if (v51 < v25)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v26 == v51)
  {
    goto LABEL_59;
  }

  v118 = v24;
  v52 = *v130;
  v53 = *(v128 + 72);
  v54 = *v130 + v53 * (v26 - 1);
  v55 = -v53;
  v56 = v25 - v26;
  v123 = v53;
  v57 = v52 + v26 * v53;
  v126 = v51;
LABEL_46:
  v131 = v26;
  v58 = v57;
  v127 = v56;
  v129 = v54;
  while (1)
  {
    sub_1C72853C8(v58, v13, type metadata accessor for GlobalTrait);
    v59 = v137;
    sub_1C72853C8(v54, v137, type metadata accessor for GlobalTrait);
    if (*v13 == *v59 && v13[1] == v59[1])
    {
      sub_1C7285288(v137);
      sub_1C7285288(v13);
LABEL_57:
      v26 = v131 + 1;
      v54 = v129 + v123;
      v56 = v127 - 1;
      v57 += v123;
      if (v131 + 1 == v126)
      {
        v26 = v126;
        v24 = v118;
        v25 = v122;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v61 = sub_1C7551DBC();
    sub_1C7285288(v137);
    sub_1C7285288(v13);
    if ((v61 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v52)
    {
      break;
    }

    v62 = v135;
    sub_1C7285088(v58, v135);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7285088(v62, v54);
    v54 += v55;
    v58 += v55;
    v48 = __CFADD__(v56++, 1);
    if (v48)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_1C7284C10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v52);
  v51 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v50 = (&v46 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v46 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v23 = v19 / v18;
  v55 = a1;
  v54 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E3B0(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v53 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_71;
      }

      sub_1C72853C8(a2, v16, type metadata accessor for GlobalTrait);
      sub_1C72853C8(a4, v13, type metadata accessor for GlobalTrait);
      if (*v16 == *v13 && v16[1] == v13[1])
      {
        sub_1C7285288(v13);
        sub_1C7285288(v16);
      }

      else
      {
        v28 = sub_1C7551DBC();
        sub_1C7285288(v13);
        sub_1C7285288(v16);
        if (v28)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v54 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v55 = a1;
    }
  }

  sub_1C741E3B0(a2, v21 / v18, a4);
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
LABEL_42:
  v48 = a2;
  v49 = a2 + v32;
  v34 = a3;
  v46 = v33;
  while (1)
  {
    if (v31 <= a4)
    {
      v55 = a2;
      v53 = v33;
      goto LABEL_71;
    }

    if (a2 <= a1)
    {
      break;
    }

    v47 = v33;
    v35 = v32;
    v36 = v31 + v32;
    v37 = v31 + v32;
    v38 = v50;
    sub_1C72853C8(v37, v50, type metadata accessor for GlobalTrait);
    v39 = v51;
    sub_1C72853C8(v49, v51, type metadata accessor for GlobalTrait);
    if (*v38 == *v39 && v38[1] == v39[1])
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1C7551DBC();
    }

    v32 = v35;
    a3 = v34 + v35;
    sub_1C7285288(v51);
    sub_1C7285288(v50);
    if (v41)
    {
      if (v34 < v48 || a3 >= v48)
      {
        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        v33 = v47;
      }

      else
      {
        v33 = v47;
        v44 = v49;
        a2 = v49;
        if (v34 != v48)
        {
          v45 = v47;
          swift_arrayInitWithTakeBackToFront();
          a2 = v44;
          v33 = v45;
        }
      }

      goto LABEL_42;
    }

    v42 = v34 < v31 || a3 >= v31;
    a2 = v48;
    if (v42)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v33 = v36;
    v20 = v31 == v34;
    v34 = a3;
    v31 = v36;
    if (!v20)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v34 = a3;
      v31 = v36;
      v33 = v36;
    }
  }

  v55 = a2;
  v53 = v46;
LABEL_71:
  sub_1C74208CC(&v55, &v54, &v53);
}

uint64_t sub_1C7285088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalTrait();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72850EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C728515C()
{
  OUTLINED_FUNCTION_236_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_111_6(v1);

  return sub_1C727EA34(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72851FC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_237_0(v1);

  return sub_1C7280B88(v3, v4);
}

uint64_t sub_1C7285288(uint64_t a1)
{
  v2 = type metadata accessor for GlobalTrait();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C72852E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

unint64_t sub_1C7285360()
{
  result = qword_1EDD0A1D0;
  if (!qword_1EDD0A1D0)
  {
    type metadata accessor for GlobalTraitGenerator.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A1D0);
  }

  return result;
}

uint64_t sub_1C72853C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

void *sub_1C728542C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C7285BC4(v12, v8, v6, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v9);
  sub_1C7285958(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1C7285600()
{
  result = sub_1C754FF1C();
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

void sub_1C72856F0()
{
  sub_1C728579C(319, &qword_1EDD06AB8, sub_1C704303C);
  if (v0 <= 0x3F)
  {
    sub_1C728579C(319, qword_1EDD0C538, type metadata accessor for GlobalTrait);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C728579C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1C72857E8(uint64_t a1, void *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C7285C54(v10, v6, v4, a2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  sub_1C7285AD4(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void sub_1C7285958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];
    sub_1C75504FC();
    sub_1C75504FC();
    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483F80();
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C7285AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= a4)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C74849E8();
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C7285BC4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C7285958(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1C7285C54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C7285AD4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  OUTLINED_FUNCTION_199_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C7285D40()
{
  OUTLINED_FUNCTION_236_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_111_6(v1);

  return sub_1C727EA34(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7285DE0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_237_0(v1);

  return sub_1C7280B88(v3, v4);
}

uint64_t OUTLINED_FUNCTION_43_24()
{
}

uint64_t OUTLINED_FUNCTION_53_24()
{

  return sub_1C7285288(v0);
}

uint64_t OUTLINED_FUNCTION_54_22()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return __swift_destroy_boxed_opaque_existential_1(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_56_18()
{
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_68_18()
{

  return sub_1C754F17C();
}

uint64_t OUTLINED_FUNCTION_69_16()
{
  v2 = v0[66];
  v3 = v0[59] + *(v0[56] + 48);

  return sub_1C7285088(v3, v2);
}

void OUTLINED_FUNCTION_70_15()
{
  *(v0 + 272) = 0xD000000000000013;
  *(v0 + 280) = v1;

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_74_10()
{
  *(v1 - 96) = v0;

  sub_1C716E538();
}

uint64_t OUTLINED_FUNCTION_87_13()
{
}

uint64_t OUTLINED_FUNCTION_103_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_106_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_108_7()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_110_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{
  *(v22 + 192) = a17;
  *(v22 + 176) = a22;
  return v23;
}

void OUTLINED_FUNCTION_116_8()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  sub_1C7161CDC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_118_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 256) = 0;
  *(v1 + 264) = a1;

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_119_9()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  sub_1C7161CDC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_128_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22)
{
  *(v23 + 192) = a21;
  *(v23 + 176) = a22;
  return v22;
}

void OUTLINED_FUNCTION_132_5()
{
  v4 = (*(v0 + 48) + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
  v5 = (*(v0 + 56) + 16 * v3);
  *v5 = v2;
  v5[1] = v1;
}

void OUTLINED_FUNCTION_149_3(uint64_t a1@<X8>)
{
  *(v5 + v2) = v3;
  *(v5 + a1) = 0;
  *(v5 + v1) = 0;
  *(v6 - 96) = v4;
}

void OUTLINED_FUNCTION_150_4()
{
  *v0 = v2;
  v3[1] = v1;
  v3[2] = v2;
  v3[3] = v1;
  *(v0 + *(v4 + 28)) = 0;
}

void OUTLINED_FUNCTION_151_3(uint64_t a1@<X8>)
{
  *(v4 + v2) = v3;
  *(v4 + a1) = 0;
  *(v4 + v1) = 0;
  *(v6 - 96) = v5;
}

void OUTLINED_FUNCTION_153_2()
{
  *v0 = v1;
  v3[1] = v2;
  v3[2] = v1;
  v3[3] = v2;
  *(v0 + *(v4 + 28)) = 0;
}

unint64_t OUTLINED_FUNCTION_156_3()
{
  type metadata accessor for GlobalTraitGenerator.Error(0);

  return sub_1C7285360();
}

uint64_t OUTLINED_FUNCTION_159_3()
{
}

uint64_t OUTLINED_FUNCTION_160_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v20;
  *(a1 + 40) = a19;
  v22 = *(v21 + 112);
  *(a1 + 48) = *(v21 + 96);
  *(a1 + 64) = v22;
  *(a1 + 80) = *(v21 + 128);
  *(a1 + 88) = v19;
  sub_1C6FD80E4((v21 + 136), a1 + 96);

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_161_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a21;
  *(a1 + 40) = a20;
  v23 = *(v22 + 112);
  *(a1 + 48) = *(v22 + 96);
  *(a1 + 64) = v23;
  *(a1 + 80) = *(v22 + 128);
  *(a1 + 88) = v21;
  sub_1C6FD80E4((v22 + 136), a1 + 96);

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_162_3()
{
}

void OUTLINED_FUNCTION_164_2()
{
  *(v0 - 96) = 7;

  StoryGenerationDiagnosticContext.generationStage.setter((v0 - 96));
}

uint64_t OUTLINED_FUNCTION_167_3(float a1)
{
  *v3 = a1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_168_3()
{
}

uint64_t OUTLINED_FUNCTION_170_2()
{

  return sub_1C754F15C();
}

uint64_t OUTLINED_FUNCTION_179_2()
{
}

unint64_t OUTLINED_FUNCTION_185_2()
{
  type metadata accessor for GlobalTraitGenerator.Error(0);

  return sub_1C7285360();
}

uint64_t OUTLINED_FUNCTION_187_2()
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_189_0()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_202_1()
{
  *(v0 + 12) = 2048;
}

void OUTLINED_FUNCTION_203_2()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_204_3()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_205_1()
{
  v2 = *(v0 + 920);
  v3 = *(v0 + 528);

  return GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(v3, v2);
}

uint64_t OUTLINED_FUNCTION_206_3()
{

  return sub_1C754F1AC();
}

void OUTLINED_FUNCTION_208_2()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_209_2()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_210_1()
{

  return sub_1C754F2DC();
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_212_2()
{
  v2 = *(v0 + 912);
  v3 = *(v0 + 504);

  return GlobalTraitGenerator.isValid(globalTrait:numberOfAssetsInExpandedPool:)(v3, v2);
}

uint64_t OUTLINED_FUNCTION_255_2()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_256_2()
{
  v5 = (*(v0 + 56) + 16 * v3);
  *v5 = v2;
  v5[1] = v1;
}

uint64_t OUTLINED_FUNCTION_257_2()
{

  return sub_1C7551A2C();
}

void OUTLINED_FUNCTION_258_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_259_0()
{

  return sub_1C754F2BC();
}

void OUTLINED_FUNCTION_260_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_261_2()
{
  *(v0 - 81) = 6;

  StoryGenerationDiagnosticContext.generationStage.setter((v0 - 81));
}

void OUTLINED_FUNCTION_262_2()
{
  v2 = *(v0 - 176);

  sub_1C6FDE438(v2, 0);
}

uint64_t OUTLINED_FUNCTION_263_0()
{
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_264_1()
{
  *(v0 + 288) = 0;
  *(v0 + 296) = 0xE000000000000000;

  return sub_1C755180C();
}

void OUTLINED_FUNCTION_265_1()
{

  sub_1C716E538();
}

void OUTLINED_FUNCTION_266_2(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

BOOL OUTLINED_FUNCTION_267_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_268_2()
{
}

uint64_t OUTLINED_FUNCTION_270_2()
{

  return sub_1C754F2DC();
}

void OUTLINED_FUNCTION_271_1()
{

  StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(v0);
}

uint64_t OUTLINED_FUNCTION_272_1@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C72853C8(a2 + v2, v4 + v3, a1);
}

uint64_t OUTLINED_FUNCTION_273_1()
{

  return sub_1C7550E1C();
}

BOOL OUTLINED_FUNCTION_274_2()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_275_1(uint64_t a1, uint64_t a2)
{

  v4 = v2 - 96;
  return GlobalTraitGenerator.removeUninterestingOrEmptyTraits(from:)(*(&a2 - 1)).collectionTraits._rawValue;
}

uint64_t MagicSlotSuggestionPersisterRecipe.curationRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t MagicSlotSuggestionPersisterRecipe.underlyingCollection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MagicSlotSuggestionPersisterRecipe(0) + 24);

  return sub_1C7286E30(v3, a1);
}

uint64_t sub_1C7286E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggeredCollection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MagicSlotSuggestionPersisterRecipe.init(curationRecipe:assetFetchResult:underlyingCollection:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 8);
  v10 = *(a1 + 18);
  v11 = a1[3];
  v12 = a1[4];
  v13 = type metadata accessor for MagicSlotSuggestionPersisterRecipe(0);
  *(a4 + *(v13 + 28)) = 10;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 18) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  *(a4 + 40) = a2;
  v14 = a4 + *(v13 + 24);

  return sub_1C7286F54(a3, v14);
}

uint64_t sub_1C7286F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggeredCollection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C7286FE4()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1C7287014(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1C72870A4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EDD28BB0 = result;
  return result;
}

uint64_t SuggestionPersister.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SuggestionPersister.init(photoLibrary:)(a1);
  return v2;
}

uint64_t SuggestionPersister.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0x4144103900000000;
  if (qword_1EDD0A500 != -1)
  {
    OUTLINED_FUNCTION_2_83();
  }

  v9 = qword_1EDD28BB0;
  sub_1C754FF2C();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_logger, v8, v3);
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_photoLibrary) = a1;
  return v1;
}

uint64_t sub_1C7287270(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_1C754DF6C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v2[24] = *(v4 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7287344, 0, 0);
}

uint64_t sub_1C7287344()
{
  if (qword_1EDD0A500 != -1)
  {
    OUTLINED_FUNCTION_2_83();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[22];
  v24 = v0[21];
  v25 = v0[24];
  v5 = qword_1EDD28BB0;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  sub_1C754DF5C();
  v27 = sub_1C7287FE4(10);
  OUTLINED_FUNCTION_40_0();
  v23 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_40_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  (*(v3 + 16))(v1, v2, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v9, v1, v4);
  *(v12 + v10) = v24;
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v0[6] = sub_1C7288B78;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C7067B48;
  v0[5] = &block_descriptor_24;
  v13 = _Block_copy(v0 + 2);

  [v27 enumerateObjectsUsingBlock_];
  _Block_release(v13);

  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    *(v16 + 4) = sub_1C6FB6304();

    *(v16 + 12) = 2048;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    *(v16 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v14, v15, "Found %ld Magic Slot suggestions to retire, %ld suggestions to delete", v16, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  sub_1C71BB580();
  v18 = v17;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v19 = *(v23 + 16);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v20 = *(v8 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  v26 = sub_1C72879A4(v18, v19, v20);
  (*(v0[23] + 8))(v0[26], v0[22]);

  sub_1C6F85170();

  v21 = v0[1];

  return v21(v26);
}

id sub_1C72877A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1C754DF6C();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 state] != 2)
  {
    goto LABEL_5;
  }

  result = [a1 creationDate];
  if (result)
  {
    v17 = result;
    sub_1C754DF2C();

    sub_1C754DEAC();
    v19 = v18;
    (*(v12 + 8))(v15, v11);
    swift_beginAccess();
    if (*(a5 + 16) < v19)
    {
      swift_beginAccess();
      a1;
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
LABEL_6:
      sub_1C7550BEC();
      return swift_endAccess();
    }

LABEL_5:
    swift_beginAccess();
    a1;
    MEMORY[0x1CCA5D040]();
    sub_1C6FB6328(*((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72879A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v8 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_photoLibrary);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v3;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = v7;
  aBlock[4] = sub_1C7288C44;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_14;
  v10 = _Block_copy(aBlock);
  sub_1C75504FC();

  sub_1C75504FC();
  sub_1C75504FC();

  aBlock[0] = 0;
  v11 = [v8 performChangesAndWait:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  if (v11)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v13 = v12;
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218496;
      v17 = *(a1 + 16);

      *(v16 + 4) = v17;

      *(v16 + 12) = 2048;
      v18 = sub_1C6FB6304();

      *(v16 + 14) = v18;

      *(v16 + 22) = 2048;
      *(v16 + 24) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v14, v15, "Created %ld, Deleted %ld, Retired %ld suggestions", v16, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v3 = *(v7 + 16);
    sub_1C75504FC();
  }

  else
  {
    v19 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

  return v3;
}

void sub_1C7287CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C6FB6304();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x1CCA5DDD0](v9, a1);
      }

      else
      {
        if (v9 >= *(v41 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v8 changeRequestForSuggestion_];
      if (v14)
      {
        v15 = v14;
        [v14 markRetired];
        [v15 setFeaturedState:0];
      }

      else
      {
        v16 = v10;
        v15 = sub_1C754FEEC();
        v17 = sub_1C755119C();
        if (os_log_type_enabled(v15, v17))
        {
          v18 = v7;
          v19 = v8;
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1C6F5C000, v15, v17, "Failed to initialize PHSuggestionChangeRequest", v20, 2u);
          v21 = v20;
          v8 = v19;
          v7 = v18;
          a1 = v40;
          MEMORY[0x1CCA5F8E0](v21, -1, -1);
        }

        v10 = v16;
      }

      ++v9;
      if (v13 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_14:
    v22 = objc_opt_self();
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    v23 = sub_1C7550B3C();
    [v22 deleteSuggestions_];

    v24 = *(a4 + 16);
    if (v24)
    {
      v25 = (a4 + 32);
      do
      {
        v26 = sub_1C7288320(v25);
        v27 = [v26 placeholderForCreatedSuggestion];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 localIdentifier];

          v30 = sub_1C755068C();
          v32 = v31;

          swift_beginAccess();
          v33 = *(a5 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 16) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB1814();
            v33 = v37;
            *(a5 + 16) = v37;
          }

          v35 = *(v33 + 16);
          if (v35 >= *(v33 + 24) >> 1)
          {
            sub_1C6FB1814();
            v33 = v38;
          }

          *(v33 + 16) = v35 + 1;
          v36 = v33 + 16 * v35;
          *(v36 + 32) = v30;
          *(v36 + 40) = v32;
          *(a5 + 16) = v33;
          swift_endAccess();
        }

        v25 += 5;
        --v24;
      }

      while (v24);
    }
  }
}

id sub_1C7287FE4(__int16 a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_photoLibrary) librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C75604F0;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1C6F6D524();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0x6574617473;
  *(v4 + 40) = 0xE500000000000000;
  v7 = MEMORY[0x1E69E75F8];
  v8 = MEMORY[0x1E69E7660];
  *(v4 + 96) = MEMORY[0x1E69E75F8];
  *(v4 + 104) = v8;
  *(v4 + 72) = 4;
  *(v3 + 32) = sub_1C755112C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  v10 = v2;
  *(v9 + 32) = 1701869940;
  *(v9 + 40) = 0xE400000000000000;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *(v9 + 72) = a1;
  *(v3 + 40) = sub_1C755112C();
  v11 = sub_1C6F6E5C4();
  [v2 setPredicate_];

  v12 = [objc_opt_self() fetchSuggestionsWithOptions_];
  v13 = sub_1C754FEEC();
  v14 = sub_1C755117C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 134218242;
    *(v15 + 4) = [v12 count];

    *(v15 + 12) = 2080;
    type metadata accessor for PHSuggestionType(0);
    v17 = sub_1C75506EC();
    v19 = sub_1C6F765A4(v17, v18, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "Found %ld existing %s suggestions", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C7288320(void *a1)
{
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v66 = v5;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for TriggeredCollection();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = OUTLINED_FUNCTION_6_67();
  v17 = *(v2 + 40);
  v58 = v16;
  v59 = v17;
  v61 = v2;
  v62 = v1;
  v60 = v2 + 40;
  v17(v1, v2);
  v18 = *v15;
  sub_1C7288C54(v15);
  LOBYTE(v68) = v18;
  LOWORD(v15) = FeaturedCollectionKind.phSuggestionSubtype.getter();
  sub_1C754DF5C();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  sub_1C754DEBC();
  v19 = objc_opt_self();
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 48))(v20, v21);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = (*(v24 + 32))(v23, v24);
  v64 = v10;
  v26 = sub_1C754DECC();
  v65 = v7;
  v27 = sub_1C754DECC();
  v28 = [v19 creationRequestForSuggestionWithType:v22 subtype:v15 keyAssets:v25 representativeAssets:0 creationDate:v26 relevantUntilDate:v27 version:3];

  OUTLINED_FUNCTION_6_67();
  v29 = OUTLINED_FUNCTION_5_62();
  OUTLINED_FUNCTION_3_0();
  v31 = v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v58 - v34;
  v26[3](v22, v26, v33);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(AssociatedConformanceWitness + 48))(v29, AssociatedConformanceWitness) != 10)
  {
    (*(v31 + 8))(v35, v29);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000020, 0x80000001C75A80B0);
    MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A80E0);
    v47 = a1[3];
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v47);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3_0();
    v51 = v50;
    v53 = MEMORY[0x1EEE9AC00](v52);
    v55 = &v58 - v54;
    (*(v48 + 24))(v47, v48, v53);
    v56 = swift_getAssociatedConformanceWitness();
    v57 = (*(v56 + 48))(AssociatedTypeWitness, v56);
    (*(v51 + 8))(v55, AssociatedTypeWitness);
    v70 = v57;
    type metadata accessor for PHSuggestionType(0);
    sub_1C75519EC();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_6_67();
  v37 = OUTLINED_FUNCTION_5_62();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v26[3](v22, v26, v38);
  if (!swift_dynamicCast())
  {
LABEL_8:
    result = sub_1C7551AAC();
    __break(1u);
    return result;
  }

  (*(v31 + 8))(v35, v29);

  v39 = sub_1C755065C();
  [v28 setContext_];

  [v28 setFeaturedState_];
  v40 = v63;
  v59(v62, v61);
  v41 = *(v40 + 24);
  sub_1C7288C54(v40);
  sub_1C6FCA214(v41);
  if (v42)
  {
    v43 = sub_1C755065C();
  }

  else
  {
    v43 = 0;
  }

  [v28 setRelatedCollectionUUID_];

  v44 = *(v66 + 8);
  v45 = v67;
  v44(v65, v67);
  v44(v64, v45);
  return v28;
}

uint64_t SuggestionPersister.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SuggestionPersister.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19SuggestionPersister_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

id sub_1C7288B78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1C754DF6C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v9);
  v12 = *(v3 + v10);
  v13 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C72877A0(a1, a2, a3, v3 + v8, v11, v12, v13);
}

uint64_t sub_1C7288C54(uint64_t a1)
{
  v2 = type metadata accessor for TriggeredCollection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7288CB4()
{
  result = qword_1EDD0C0B8;
  if (!qword_1EDD0C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0B8);
  }

  return result;
}

void sub_1C7288D80()
{
  sub_1C6F65BE8(319, &qword_1EDD0CEA0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TriggeredCollection();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PHSuggestionType(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C7288E64()
{
  result = sub_1C754FF1C();
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

uint64_t dispatch thunk of SuggestionPersister.persist(magicSlotRecipes:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C70E8468;

  return v6(a1);
}

uint64_t sub_1C7289150(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C75504FC();
  return sub_1C72891CC(v1, v2);
}

uint64_t sub_1C7289190()
{
  OUTLINED_FUNCTION_0_121();
  v1 = *(v0 + 96);
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C72891CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1C7289270()
{
  OUTLINED_FUNCTION_0_121();
  if (*(v0 + 104) && (OUTLINED_FUNCTION_1_90(), v1))
  {
    return *(v0 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C72892AC()
{
  if (v0[5])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = v0[6];
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v1;
}

BOOL sub_1C7289300()
{
  OUTLINED_FUNCTION_0_121();
  if (!*(v0 + 104))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_90();
  return v1 != 0;
}

uint64_t sub_1C728933C()
{
  OUTLINED_FUNCTION_0_121();
  if (!*(v0 + 104))
  {
    return 0;
  }

  sub_1C75504FC();
  v1 = sub_1C755065C();

  return v1;
}

uint64_t FeatureSurveyStringQuestion.deinit()
{
  v0 = FeatureSurveyQuestion.deinit();

  return v0;
}

uint64_t FeatureSurveyStringQuestion.__deallocating_deinit()
{
  FeatureSurveyQuestion.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C72894C4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EDD0FFB0 = result;
  return result;
}

uint64_t sub_1C7289540()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0FF88);
  __swift_project_value_buffer(v0, qword_1EDD0FF88);
  if (qword_1EDD0FFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD0FFB0;
  return sub_1C754FF2C();
}

uint64_t static KeyAssetFetcher.fetchKeyAsset(for:options:)(void *a1, void *a2)
{
  if (qword_1EDD0FF80 != -1)
  {
    swift_once();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EDD0FF88);
  v5 = a1;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    v10 = [v5 localIdentifier];
    v11 = sub_1C755068C();
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, &v55);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start fetching key assets for collection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0FFA8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDD0FFB0;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v16 = v15;
  PerformanceMeasure.init(name:log:)();
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    [a2 copy];
    sub_1C75515CC();
    sub_1C6F65BE8(0, &qword_1EDD0FAC8);
    if (swift_dynamicCast())
    {
      v5 = v54;
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

LABEL_13:
    v21 = [v5 photoLibrary];
    if (!v21)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v22 = v21;
    swift_unknownObjectRelease();
    v5 = [v22 librarySpecificFetchOptions];

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C7565670;
    v24 = [v18 detectionType];
    *(v23 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    sub_1C7082AAC(v23, v5);
    v25 = [objc_opt_self() fetchKeyAssetForPerson:v18 options:v5];
    if (v25)
    {
LABEL_16:
      v26 = v25;

LABEL_20:
      sub_1C6F85170();

      return v26;
    }

    __break(1u);
    goto LABEL_26;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v18 = v19;
    v20 = [objc_opt_self() fetchKeyAssetForSocialGroup:v19 options:a2];
    if (!v20)
    {
      __break(1u);
      goto LABEL_13;
    }

LABEL_19:
    v26 = v20;
    goto LABEL_20;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = objc_opt_self();
    v20 = [v29 fetchKeyAssetsInAssetCollection:v28 options:a2];
    if (!v20)
    {
      v5 = v5;
      v31 = sub_1C754FEEC();
      v32 = sub_1C755119C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v33 = 136315138;
        v34 = [v28 localIdentifier];
        v35 = sub_1C755068C();
        v36 = v29;
        v37 = v5;
        v39 = v38;

        v40 = sub_1C6F765A4(v35, v39, &v55);
        v5 = v37;
        v29 = v36;

        *(v33 + 4) = v40;
        _os_log_impl(&dword_1C6F5C000, v31, v32, "Fallback has been used for %s since no key assets were available", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v41 = [v5 photoLibrary];
      if (v41)
      {
        v42 = v41;
        v5 = [v41 librarySpecificFetchOptions];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1C75604F0;
        v44 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v45 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, 0);
        v46 = sub_1C6F65BE8(0, &qword_1EDD108F0);
        *(v43 + 56) = v46;
        *(v43 + 32) = v45;
        v47 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v48 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
        *(v43 + 88) = v46;
        *(v43 + 64) = v48;
        sub_1C70E7F40(v43, v5);
        [v5 setFetchLimit_];
        v25 = [v29 fetchAssetsInAssetCollection:v28 options:v5];
        goto LABEL_16;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_28:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1C755180C();

  v55 = 0xD00000000000002ELL;
  v56 = 0x80000001C75A8210;
  v49 = [v5 description];
  v50 = sub_1C755068C();
  v52 = v51;

  MEMORY[0x1CCA5CD70](v50, v52);

  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for KeyAssetFetcher(_BYTE *result, int a2, int a3)
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

uint64_t PersonalizationProfileBuilderError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t PersonalizationUserProfile.init(sceneAnalysisVersion:medoidIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static PersonalizationUserProfile.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1C70020D4(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7289E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C75A82A0 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C75A82C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C7289F58(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1C7289F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7289E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7289FC0(uint64_t a1)
{
  v2 = sub_1C728A1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7289FFC(uint64_t a1)
{
  v2 = sub_1C728A1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizationUserProfile.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219EC0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728A1F0();
  sub_1C755200C();
  v13 = 0;
  sub_1C7551D3C();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C728A1F0()
{
  result = qword_1EC219EC8;
  if (!qword_1EC219EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219EC8);
  }

  return result;
}

uint64_t PersonalizationUserProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219ED0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728A1F0();
  sub_1C7551FFC();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1C7551C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v15 = 1;
    sub_1C6FF60E4(&qword_1EDD0CF50);
    sub_1C7551C1C();
    (*(v7 + 8))(v10, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonalizationProfileBuilder.__allocating_init(with:numCentroids:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PersonalizationProfileBuilder.init(with:numCentroids:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_1C728A4B0(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = [*(v1 + 16) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAA0;
  *(v4 + 32) = sub_1C755068C();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_1C755068C();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_1C755068C();
  *(v4 + 72) = v7;
  sub_1C70B81C8(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C7565670;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  sub_1C71F8834(v8, v3);
  [v3 setFetchLimit_];
  v10 = objc_opt_self();
  v11 = sub_1C7550B3C();
  v99 = v3;
  v12 = [v10 fetchAssetsWithLocalIdentifiers:v11 options:v3];

  v119 = MEMORY[0x1E69E7CD0];
  v13 = [v12 count];
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    v108 = v12;
    if (v13)
    {
      v102 = v2;
      v16 = 0;
      v105 = *MEMORY[0x1E69C0C38];
      v17 = &selRef_mergedPersonIdentifiers;
      v107 = MEMORY[0x1E69E7CC0];
      v113 = MEMORY[0x1E69E7CC0];
      do
      {
        v18 = objc_autoreleasePoolPush();
        v19 = [v12 v17[45]];
        v20 = [v19 sceneAnalysisProperties];
        if (v20 && (v21 = v20, v22 = [v20 sceneAnalysisVersion], v21, v22) && v105 != v22 && (sub_1C73C6BB8(), v23))
        {
          v24 = v23;
          v25 = v19;
          sub_1C70F5F1C(&v118, v22);
          v26 = v107;
          v115 = v18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB441C();
            v26 = v48;
          }

          v27 = *(v26 + 16);
          if (v27 >= *(v26 + 24) >> 1)
          {
            sub_1C6FB441C();
            v26 = v49;
          }

          *(v26 + 16) = v27 + 1;
          v107 = v26;
          *(v26 + 8 * v27 + 32) = v24;
          v28 = v25;
          v29 = [v25 localIdentifier];
          v30 = sub_1C755068C();
          v32 = v31;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v113 = v50;
          }

          v12 = v108;
          v33 = *(v113 + 16);
          if (v33 >= *(v113 + 24) >> 1)
          {
            sub_1C6FB1814();
            v113 = v51;
          }

          *(v113 + 16) = v33 + 1;
          v34 = v113 + 16 * v33;
          *(v34 + 32) = v30;
          *(v34 + 40) = v32;
          v18 = v115;
        }

        else
        {
          v35 = sub_1C755119C();
          sub_1C7047818();
          v36 = sub_1C755145C();
          if (os_log_type_enabled(v36, v35))
          {
            v109 = v35;
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v39 = v19;
            v111 = v19;
            v40 = v38;
            v118 = v38;
            *v37 = 136315138;
            v41 = v17;
            v42 = v14;
            v43 = [v39 localIdentifier];
            v44 = sub_1C755068C();
            v116 = v18;
            v46 = v45;

            v14 = v42;
            v17 = v41;
            v47 = sub_1C6F765A4(v44, v46, &v118);
            v18 = v116;

            *(v37 + 4) = v47;
            v12 = v108;
            _os_log_impl(&dword_1C6F5C000, v36, v109, "PersonalizationProfileBuilder: Sceneprint not processed for asset %s.", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            MEMORY[0x1CCA5F8E0](v40, -1, -1);
            MEMORY[0x1CCA5F8E0](v37, -1, -1);
          }

          else
          {
          }
        }

        ++v16;
        objc_autoreleasePoolPop(v18);
      }

      while (v14 != v16);
      v52 = v119;
      v53 = v107;
      v15 = v113;
      v2 = v102;
    }

    else
    {
      v52 = MEMORY[0x1E69E7CD0];
      v53 = MEMORY[0x1E69E7CC0];
    }

    if (*(v52 + 16) != 1)
    {
      sub_1C728AE38();
      swift_allocError();
      swift_willThrow();

      return;
    }

    v97 = v52;
    v54 = sub_1C705FFB0(v53, *(v2 + 24));
    v55 = v54 + 64;
    v56 = 1 << *(v54 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v54 + 64);
    v59 = (v56 + 63) >> 6;
    v117 = v15 + 32;
    v104 = v54;
    sub_1C75504FC();
    v60 = v58;
    v61 = v59;
    v62 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v114 = v15;
    v101 = v59;
    v103 = v55;
    while (1)
    {
      v112 = v63;
      if (!v60)
      {
        break;
      }

      v64 = v104;
LABEL_34:
      v110 = v60;
      v106 = v62;
      v66 = (v62 << 9) | (8 * __clz(__rbit64(v60)));
      v67 = *(*(v64 + 48) + v66);
      v68 = *(*(v64 + 56) + v66);
      v69 = *(v68 + 16);
      if (v69)
      {
        v100 = *(*(v64 + 48) + v66);
        v118 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C();
        v15 = v114;
        v70 = v118;
        v71 = 32;
        while (1)
        {
          v72 = *(v68 + v71);
          if ((v72 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v72 >= *(v15 + 16))
          {
            goto LABEL_61;
          }

          v73 = (v117 + 16 * v72);
          v75 = *v73;
          v74 = v73[1];
          v118 = v70;
          v77 = *(v70 + 16);
          v76 = *(v70 + 24);
          sub_1C75504FC();
          if (v77 >= v76 >> 1)
          {
            sub_1C6F7ED9C();
            v15 = v114;
            v70 = v118;
          }

          *(v70 + 16) = v77 + 1;
          v78 = v70 + 16 * v77;
          *(v78 + 32) = v75;
          *(v78 + 40) = v74;
          v71 += 8;
          if (!--v69)
          {

            v67 = v100;
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v70 = MEMORY[0x1E69E7CC0];
LABEL_43:
      v63 = v112;
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (v67 >= *(v15 + 16))
      {
        goto LABEL_64;
      }

      v79 = (v117 + 16 * v67);
      v81 = *v79;
      v80 = v79[1];
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB434C();
        v63 = v85;
      }

      v82 = v63[2];
      v61 = v101;
      v55 = v103;
      v83 = v110;
      if (v82 >= v63[3] >> 1)
      {
        sub_1C6FB434C();
        v83 = v110;
        v61 = v101;
        v55 = v103;
        v63 = v86;
      }

      v60 = (v83 - 1) & v83;
      v63[2] = v82 + 1;
      v84 = &v63[3 * v82];
      v84[4] = v70;
      v84[5] = v81;
      v84[6] = v80;
      v12 = v108;
      v15 = v114;
      v62 = v106;
    }

    v64 = v104;
    while (1)
    {
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v65 >= v61)
      {

        v87 = sub_1C710DDB0(v97);
        if ((v87 & 0x10000) != 0)
        {
          goto LABEL_66;
        }

        v88 = v87;

        v89 = v63[2];
        if (v89)
        {
          v118 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v90 = v118;
          v91 = v63 + 6;
          do
          {
            v93 = *(v91 - 1);
            v92 = *v91;
            v118 = v90;
            v95 = *(v90 + 16);
            v94 = *(v90 + 24);
            sub_1C75504FC();
            if (v95 >= v94 >> 1)
            {
              sub_1C6F7ED9C();
              v90 = v118;
            }

            *(v90 + 16) = v95 + 1;
            v96 = v90 + 16 * v95;
            *(v96 + 32) = v93;
            *(v96 + 40) = v92;
            v91 += 3;
            --v89;
          }

          while (v89);
        }

        else
        {

          v90 = MEMORY[0x1E69E7CC0];
        }

        *a1 = v88;
        *(a1 + 8) = v90;
        return;
      }

      v60 = *(v55 + 8 * v65);
      ++v62;
      if (v60)
      {
        v62 = v65;
        goto LABEL_34;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t PersonalizationProfileBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C728AE38()
{
  result = qword_1EC219ED8;
  if (!qword_1EC219ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219ED8);
  }

  return result;
}

unint64_t sub_1C728AE90()
{
  result = qword_1EC219EE0;
  if (!qword_1EC219EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219EE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizationProfileBuilderError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalizationUserProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C728B100()
{
  result = qword_1EC219EE8;
  if (!qword_1EC219EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219EE8);
  }

  return result;
}

unint64_t sub_1C728B158()
{
  result = qword_1EC219EF0;
  if (!qword_1EC219EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219EF0);
  }

  return result;
}

unint64_t sub_1C728B1B0()
{
  result = qword_1EC219EF8;
  if (!qword_1EC219EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219EF8);
  }

  return result;
}

uint64_t MusicMobileAssetsConfig.description.getter()
{
  OUTLINED_FUNCTION_7_55();
  sub_1C755180C();
  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](0x725565736162202CLL, 0xEB00000000203A6CLL);
  MEMORY[0x1CCA5CD70](v0[2], v0[3]);
  MEMORY[0x1CCA5CD70](0x6F5065746164202CLL, 0xEE00203A64657473);
  type metadata accessor for MusicMobileAssetsConfig();
  sub_1C754DF6C();
  sub_1C728C2C8(&qword_1EDD0F9D8);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x737465737361202CLL, 0xEF203A746E756F43);
  OUTLINED_FUNCTION_8_57();
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_8_57();
  v3 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v3);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_0_122();
  v4 = OUTLINED_FUNCTION_3_77();
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v6, v7);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000014);
  v8 = MusicMobileAssetsConfig.dateForAnalytics.getter();
  MEMORY[0x1CCA5CD70](v8);

  return v10;
}

uint64_t MusicMobileAssetsConfig.shortDescription.getter()
{
  OUTLINED_FUNCTION_7_55();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x6F43737465737361, 0xED0000203A746E75);
  type metadata accessor for MusicMobileAssetsConfig();
  OUTLINED_FUNCTION_8_57();
  v0 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v0);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_8_57();
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70]();
  OUTLINED_FUNCTION_0_122();
  v2 = OUTLINED_FUNCTION_3_77();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v4, v5);

  OUTLINED_FUNCTION_547();
  MEMORY[0x1CCA5CD70](0xD000000000000014);
  v6 = MusicMobileAssetsConfig.dateForAnalytics.getter();
  MEMORY[0x1CCA5CD70](v6);

  return v8;
}

uint64_t MusicMobileAssetsConfig.assetType.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t MusicMobileAssetsConfig.baseUrl.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t MusicMobileAssetsConfig.datePosted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicMobileAssetsConfig() + 24);
  v4 = sub_1C754DF6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MusicMobileAssetsConfig.dateForAnalytics.getter()
{
  v0 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C754E03C();
  v8 = sub_1C754E09C();
  (*(v2 + 8))(v6, v0);
  [v7 setLocale_];

  sub_1C7069CE4(0x2D4D4D2D79797979, 0xEA00000000006464, v7);
  type metadata accessor for MusicMobileAssetsConfig();
  v9 = sub_1C754DECC();
  v10 = [v7 stringFromDate_];

  v11 = sub_1C755068C();
  return v11;
}

uint64_t sub_1C728B948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C725565736162 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74736F5065746164 && a2 == 0xEA00000000006465;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F43737465737361 && a2 == 0xEB00000000746E75;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001CLL && 0x80000001C75A8380 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C728BB04(char a1)
{
  result = 0x7079547465737361;
  switch(a1)
  {
    case 1:
      result = 0x6C725565736162;
      break;
    case 2:
      result = 0x74736F5065746164;
      break;
    case 3:
      result = 0x6F43737465737361;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C728BBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C728B948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C728BBE4(uint64_t a1)
{
  v2 = sub_1C728C274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C728BC20(uint64_t a1)
{
  v2 = sub_1C728C274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicMobileAssetsConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219F00);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728C274();
  sub_1C755200C();
  v10[15] = 0;
  OUTLINED_FUNCTION_442();
  sub_1C7551CCC();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_442();
    sub_1C7551CCC();
    type metadata accessor for MusicMobileAssetsConfig();
    v10[13] = 2;
    sub_1C754DF6C();
    sub_1C728C2C8(&qword_1EDD0F9E8);
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    v10[12] = 3;
    OUTLINED_FUNCTION_442();
    sub_1C7551D0C();
    v10[11] = 4;
    OUTLINED_FUNCTION_442();
    sub_1C7551D0C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t MusicMobileAssetsConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v28 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219F10);
  OUTLINED_FUNCTION_3_0();
  v27 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for MusicMobileAssetsConfig();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v16 = (v15 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C728C274();
  v29 = v12;
  v17 = v31;
  sub_1C7551FFC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v28;
  v36 = 0;
  OUTLINED_FUNCTION_9_61();
  *v16 = sub_1C7551BBC();
  v16[1] = v19;
  v31 = v19;
  v35 = 1;
  OUTLINED_FUNCTION_9_61();
  v16[2] = sub_1C7551BBC();
  v16[3] = v20;
  v34 = 2;
  sub_1C728C2C8(&qword_1EDD100B8);
  v25[1] = 0;
  sub_1C7551C1C();
  (*(v18 + 32))(v16 + v13[6], v8, v3);
  v33 = 3;
  OUTLINED_FUNCTION_9_61();
  *(v16 + v13[7]) = sub_1C7551BFC();
  v32 = 4;
  OUTLINED_FUNCTION_9_61();
  v21 = sub_1C7551BFC();
  v22 = OUTLINED_FUNCTION_5_63();
  v23(v22);
  *(v16 + v13[8]) = v21;
  sub_1C728C30C(v16, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C70D7D88(v16);
}

uint64_t type metadata accessor for MusicMobileAssetsConfig()
{
  result = qword_1EDD09918;
  if (!qword_1EDD09918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C728C274()
{
  result = qword_1EC219F08;
  if (!qword_1EC219F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219F08);
  }

  return result;
}

uint64_t sub_1C728C2C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C754DF6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C728C30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMobileAssetsConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C728C398()
{
  result = sub_1C754DF6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicMobileAssetsConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C728C504()
{
  result = qword_1EC219F18;
  if (!qword_1EC219F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219F18);
  }

  return result;
}

unint64_t sub_1C728C55C()
{
  result = qword_1EC219F20;
  if (!qword_1EC219F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219F20);
  }

  return result;
}

unint64_t sub_1C728C5B4()
{
  result = qword_1EC219F28;
  if (!qword_1EC219F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219F28);
  }

  return result;
}

uint64_t Calendar.lastWeekend(for:)(uint64_t a1)
{
  v2 = sub_1C754E1CC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  (*(v10 + 16))(&v19 - v16, a1, v8, v15);
  if (sub_1C754E1DC())
  {
    sub_1C754DEBC();
    (*(v10 + 8))(v17, v8);
    (*(v10 + 32))(v17, v13, v8);
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69699A0], v2);
  sub_1C754E19C();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v17, v8);
}

uint64_t Calendar.enclosingInterval(for:intervalSize:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1C754DF5C();
  v13[1] = 0;
  sub_1C754E1AC();
  (*(v4 + 16))(v7, v10, v2);
  sub_1C754D88C();
  (*(v4 + 8))(v10, v2);
  v11 = sub_1C754D8BC();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
}

uint64_t Calendar.intervalForPreceedingPeriod(for:intervalSize:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E1FC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C70D7CB8(v4);
    v11 = sub_1C754D8BC();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    Calendar.enclosingInterval(for:intervalSize:)(a1);
    return (*(v7 + 8))(v10, v5);
  }
}

id static SuggestionCollectionFetcher.predicateForFavorites(_:)(int a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v5) = a1;
  v6 = sub_1C754FF1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 8);
  (*(v11 + 16))(a2, v11, v8);
  v12 = sub_1C754FEEC();
  v13 = sub_1C755119C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    HIDWORD(v22) = v5;
    v5 = v14;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v5 = 136315138;
    v16 = (*(*(v11 + 8) + 16))(a2);
    v18 = sub_1C6F765A4(v16, v17, &v23);

    *(v5 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
    v19 = v5;
    LOBYTE(v5) = BYTE4(v22);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v20 = [objc_opt_self() predicateWithValue_];

  return v20;
}

uint64_t static SuggestionCollectionFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C7564A90;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  return v2;
}

uint64_t sub_1C728CE08(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = (v2 + 16);
  v7[4] = sub_1C728D404;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C7067B48;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;
  sub_1C75504FC();

  return v5;
}

uint64_t static SuggestionCollectionFetcher.describe(collections:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v11[4] = sub_1C728D3F8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C7067B48;
  v11[3] = &block_descriptor_25;
  v8 = _Block_copy(v11);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v6 + 16);
  sub_1C75504FC();

  return v9;
}

uint64_t sub_1C728D06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C728D40C();
  v20 = sub_1C755204C();
  v21 = v6;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](0x6465727574616546, 0xEF736F746F685020);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v7 = [a1 uuid];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C755068C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v11);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  [a1 subtype];
  v12 = PHSuggestionStringWithSubtype();
  v13 = sub_1C755068C();
  v15 = v14;

  MEMORY[0x1CCA5CD70](v13, v15);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v16 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v17 = *(a4 + 16);
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  *(a4 + 16) = v17;
  return swift_endAccess();
}

uint64_t sub_1C728D214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C728D40C();
  v25 = sub_1C755204C();
  v26 = v10;
  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  v11 = (*(*(*(a6 + 8) + 8) + 16))(a5);
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v12 = [a1 uuid];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C755068C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v16);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  [a1 subtype];
  v17 = PHSuggestionStringWithSubtype();
  v18 = sub_1C755068C();
  v20 = v19;

  MEMORY[0x1CCA5CD70](v18, v20);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v21 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v22 = *(a4 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 16 * v21;
  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  *(a4 + 16) = v22;
  return swift_endAccess();
}

unint64_t sub_1C728D40C()
{
  result = qword_1EDD0CEB0;
  if (!qword_1EDD0CEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CEB0);
  }

  return result;
}

uint64_t QueryUnderstandingResult.sensitiveFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  return sub_1C75504FC();
}

uint64_t QueryUnderstandingResult.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v44 = *(v0 + 33);
  v45 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C757E2F0;
  OUTLINED_FUNCTION_3_1();
  v6 = 0xD000000000000018;
  *(v7 + 32) = 0xD000000000000018;
  *(v7 + 40) = v8;
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  __dst[0] = 0xD000000000000012;
  __dst[1] = v9;
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  v11 = __dst[1];
  *(v5 + 48) = 0xD000000000000012;
  *(v5 + 56) = v11;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 64) = 0xD000000000000023;
  *(v5 + 72) = v12;
  v50 = 0;
  v51 = 0xE000000000000000;
  v13 = *(v1 + 16);
  if (v13)
  {
    v42 = v2;
    v43 = v4;
    v48 = 91;
    v49 = 0xE100000000000000;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v14 = v47;
    v15 = (v1 + 32);
    do
    {
      memcpy(__dst, v15, sizeof(__dst));
      QueryToken.description.getter();
      v17 = v16;
      v19 = v18;
      v47 = v14;
      v20 = *(v14 + 16);
      if (v20 >= *(v14 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v14 = v47;
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      v15 += 120;
      --v13;
    }

    while (v13);
    __dst[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v22 = sub_1C75505FC();
    v24 = v23;

    MEMORY[0x1CCA5CD70](v22, v24);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    v6 = v48;
    v25 = v49;
    v4 = v43;
    v2 = v42;
  }

  else
  {
    v25 = 0x80000001C75A8410;
  }

  MEMORY[0x1CCA5CD70](v6, v25);

  v26 = v51;
  *(v5 + 80) = v50;
  *(v5 + 88) = v26;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 96) = 0xD00000000000001ELL;
  *(v5 + 104) = v27;
  v28 = [v2 description];
  v29 = sub_1C755068C();
  v31 = v30;

  *(v5 + 112) = v29;
  *(v5 + 120) = v31;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 128) = 0xD000000000000017;
  *(v5 + 136) = v32;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v50 = v3;
  LOBYTE(v51) = v45;
  BYTE1(v51) = v44;
  sub_1C75519EC();
  v33 = __dst[1];
  *(v5 + 144) = __dst[0];
  *(v5 + 152) = v33;
  OUTLINED_FUNCTION_3_1();
  *(v5 + 160) = 0xD00000000000002DLL;
  *(v5 + 168) = v34;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  __dst[0] = 0xD000000000000017;
  __dst[1] = v35;
  if (v4)
  {
    v50 = *(v4 + 16);
    sub_1C7025C9C();
    v36 = sub_1C75515BC();
    v38 = v37;
  }

  else
  {
    v38 = 0xE300000000000000;
    v36 = 7104878;
  }

  MEMORY[0x1CCA5CD70](v36, v38);

  v39 = __dst[1];
  *(v5 + 176) = __dst[0];
  *(v5 + 184) = v39;
  __dst[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v40 = sub_1C75505FC();

  return v40;
}

uint64_t QueryUnderstandingResult.init(retrievedAssetUUIDs:queryTokens:attributedUserPrompt:sensitiveFlags:consolidatedPersonAssetUUIDs:llmQULatency:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 9);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v8;
  *(a8 + 32) = v9;
  *(a8 + 33) = v10;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C728D8F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C728D934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C728D994@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_1C728D9D0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC219F30 = result;
  return result;
}

uint64_t sub_1C728DA48()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219F38);
  __swift_project_value_buffer(v0, qword_1EC219F38);
  if (qword_1EC213F88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC219F30;
  return sub_1C754FF2C();
}

void FeaturedPhotosSpatial3DGeneration.init(photoLibrary:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  a2[1] = sub_1C728DB30(1, v3);
  v4 = sub_1C728DB30(0, v3);

  a2[2] = v4;
}

id sub_1C728DB30(int a1, void *a2)
{
  v31 = a1;
  v3 = sub_1C754E24C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v28 - v15;
  v17 = [a2 librarySpecificFetchOptions];
  [v17 setFetchLimit_];
  [v17 setWantsIncrementalChangeDetails_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C7564A90;
  v19 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v18 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v18 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v18, v17);
  sub_1C754E21C();
  sub_1C754DF3C();
  Calendar.nearestMidnight(for:)(v12);
  v21 = *(v7 + 8);
  v21(v9, v6);
  (*(v29 + 8))(v5, v30);
  v22 = v31;
  sub_1C754DEFC();
  v21(v12, v6);
  if ((v22 & 1) == 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C75604F0;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C6F6D524();
    strcpy((v23 + 32), "creationDate");
    *(v23 + 45) = 0;
    *(v23 + 46) = -5120;
    v24 = sub_1C754DECC();
    *(v23 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28);
    *(v23 + 104) = sub_1C706700C();
    *(v23 + 72) = v24;
    v25 = sub_1C755112C();
    [v17 setPredicate_];
  }

  v26 = [objc_opt_self() fetchWidgetSuggestionsWithFeaturedState:v22 & 1 withOptions:v17];

  v21(v16, v6);
  return v26;
}

uint64_t FeaturedPhotosSpatial3DGeneration.execute(with:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = *v2;
  v4 = *(v0 + 16);
  v5 = 0x30201u >> ((*v2 >> 3) & 0x18);
  *(v1 + 16) = *v0;
  *(v1 + 56) = v3;
  *(v1 + 32) = v4;
  *(v1 + 57) = v5;
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  v6[1] = sub_1C728E028;

  return FeaturedPhotosSpatial3DGeneration.execute(with:generationMode:progressReporter:)();
}

uint64_t sub_1C728E028()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    v9 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12(v3);
  }
}

uint64_t FeaturedPhotosSpatial3DGeneration.execute(with:generationMode:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 232) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 256) = swift_task_alloc();
  v9 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 264) = v10;
  *(v1 + 272) = *(v11 + 64);
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 489) = *v5;
  *(v1 + 490) = *v3;
  *(v1 + 312) = *v0;
  *(v1 + 328) = *(v0 + 16);
  v12 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C728E2E8()
{
  v75 = v0;
  if (qword_1EC213F88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC219F30;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v2 = v1;
  *(v0 + 336) = PerformanceMeasure.init(name:log:)();
  sub_1C754F2CC();
  if ([*(v0 + 320) count] < 1)
  {
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123();
    }

    v24 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v24, qword_1EC219F38);
    v25 = sub_1C754FEEC();
    v26 = sub_1C755119C();
    if (os_log_type_enabled(v25, v26))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_57_22(&dword_1C6F5C000, v27, v28, "No suggestions to alchemize");
      OUTLINED_FUNCTION_10_1();
    }

    sub_1C754F2EC();
    goto LABEL_23;
  }

  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 489);
  v6 = *(v0 + 304);
  LOBYTE(v73[0]) = *(v0 + 490);
  Spatial3DResourceGenerator.init(with:processInBackground:)(v73, 1, v6);
  v74[0] = v5;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  static AssetGating.EligibilityChecker<>.buildSpatial3DEligibilityChecker(for:suggestionContext:)(v74, v0 + 64, v73);
  sub_1C6FB5FC8(v0 + 64, &unk_1EC219240);
  *(v0 + 344) = v73[1];
  v7 = [v4 librarySpecificFetchOptions];
  *(v0 + 352) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAA0;
  *(v8 + 32) = sub_1C755068C();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_1C755068C();
  *(v8 + 56) = v10;
  *(v8 + 64) = sub_1C755068C();
  *(v8 + 72) = v11;
  sub_1C6FCA0EC(v8, v7);
  v12 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v3 options:v7];
  if (!v12)
  {
LABEL_19:

    if (qword_1EC213F90 == -1)
    {
LABEL_20:
      v30 = *(v0 + 320);
      v29 = *(v0 + 328);
      v31 = *(v0 + 312);
      v32 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v32, qword_1EC219F38);
      v33 = v31;
      v34 = v30;
      v35 = v29;
      v36 = sub_1C754FEEC();
      v37 = sub_1C755119C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 320);
        v39 = OUTLINED_FUNCTION_41_0();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v38;
        *v40 = v3;
        v41 = v38;
        _os_log_impl(&dword_1C6F5C000, v36, v37, "No key assets found for suggestions: %@", v39, 0xCu);
        sub_1C6FB5FC8(v40, &qword_1EC215190);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_79();
      }

      sub_1C754F2EC();
      sub_1C7292A5C(*(v0 + 304));

LABEL_23:
      sub_1C6F85170();

      goto LABEL_24;
    }

LABEL_36:
    OUTLINED_FUNCTION_0_123();
    goto LABEL_20;
  }

  v13 = v12;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v14 = sub_1C75504AC();
  *(v0 + 360) = v14;

  if (!*(v14 + 16))
  {

    goto LABEL_19;
  }

  *(v0 + 200) = MEMORY[0x1E69E7CC8];
  sub_1C728D994(v14, (v0 + 16));
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  *(v0 + 368) = v16;
  *(v0 + 376) = v15;
  v3 = *(v0 + 32);
  v7 = *(v0 + 40);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  *(v0 + 384) = v3;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  sub_1C75504FC();
  v19 = v17;
  v20 = v7;
  if (!v17)
  {
    v21 = v7;
    while (1)
    {
      v20 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v20 >= ((v3 + 64) >> 6))
      {
        OUTLINED_FUNCTION_66_2();
        sub_1C6F61E88();

        if (qword_1EC213F90 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_38;
      }

      v19 = *(v15 + 8 * v20);
      ++v21;
      if (v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_11:
  *(v0 + 416) = v19;
  *(v0 + 424) = v20;
  v22 = *(*(v16 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
  *(v0 + 432) = v22;
  *(v0 + 440) = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_0_123();
LABEL_31:
    v53 = sub_1C754FF1C();
    v54 = __swift_project_value_buffer(v53, qword_1EC219F38);
    sub_1C75504FC();
    v55 = sub_1C754FEEC();
    v56 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v56))
    {
      v58 = *(v0 + 392);
      v57 = *(v0 + 400);
      v59 = *(v0 + 360);
      v60 = swift_slowAlloc();
      v61 = OUTLINED_FUNCTION_20_1();
      v73[0] = v61;
      *v60 = 134218754;
      *(v60 + 4) = v57;
      *(v60 + 12) = 2048;
      v62 = *(v59 + 16);

      *(v60 + 14) = v62;

      *(v60 + 22) = 2080;
      OUTLINED_FUNCTION_33_27();
      v63 = *(v0 + 200);
      sub_1C70E2254();
      sub_1C75504FC();
      sub_1C75504BC();
      OUTLINED_FUNCTION_59();

      OUTLINED_FUNCTION_58_0(v64, v65, v66, v67);
      OUTLINED_FUNCTION_80();
      *(v60 + 24) = v63;
      *(v60 + 32) = 2048;
      *(v60 + 34) = v58;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v68, v69, v70, v71, v72, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_1C754F2EC();
    OUTLINED_FUNCTION_44_23();

    sub_1C6F85170();

LABEL_24:
    OUTLINED_FUNCTION_31_29();

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X2, X16 }
  }

  v23 = v22;
  sub_1C754F2DC();
  *(v0 + 448) = 0;
  type metadata accessor for Spatial3DAssetResourceUtils();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 456) = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_2_84(v44);
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_12_1();

  return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v46, v47, v48, v49, v50);
}

uint64_t sub_1C728EB44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C728EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_42_25();
  v21 = *(v19 + 256);
  v22 = sub_1C754DD2C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    if (qword_1EC213F90 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

  v23 = *(v19 + 344);
  v24 = MEMORY[0x1E69E7CD0];
  *(v19 + 208) = MEMORY[0x1E69E7CD0];
  v25 = *(v23 + 16);
  if (v25)
  {
    sub_1C75504FC();
    v26 = 32;
    do
    {
      v27 = *(v19 + 432);
      sub_1C6FB5E28(*(v19 + 344) + v26, v19 + 104);
      v28 = *(v19 + 128);
      v18 = *(v19 + 136);
      __swift_project_boxed_opaque_existential_1((v19 + 104), v28);
      v29 = (*(v18 + 32))(v27, v28, v18);
      sub_1C7397F54(v29);
      __swift_destroy_boxed_opaque_existential_1(v19 + 104);
      v26 += 40;
      --v25;
    }

    while (v25);

    v24 = *(v19 + 208);
  }

  if (*(v24 + 16))
  {
    v18 = *(v19 + 448);
    v30 = sub_1C75504FC();
    sub_1C7205098(v30, (v19 + 200));
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123();
    }

    v31 = *(v19 + 432);
    v32 = *(v19 + 304);
    v33 = *(v19 + 288);
    v34 = sub_1C754FF1C();
    __swift_project_value_buffer(v34, qword_1EC219F38);
    sub_1C7292AB8(v32, v33);
    v20 = v31;
    sub_1C75504FC();
    v35 = sub_1C754FEEC();
    v36 = sub_1C75511BC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = 0x7055656E6FLL;
      v38 = *(v19 + 288);
      v39 = OUTLINED_FUNCTION_20_1();
      v40 = swift_slowAlloc();
      *(v19 + 216) = v40;
      *v39 = 136315650;
      v41 = 0xE500000000000000;
      v20 = v40;
      a12 = v18;
      switch(*v38)
      {
        case 1:
          v37 = 0x657061706C6C6177;
          v41 = 0xEF72656B63695072;
          break;
        case 2:
          OUTLINED_FUNCTION_50_22();
          v41 = 0xE900000000000031;
          break;
        case 3:
          OUTLINED_FUNCTION_50_22();
          v41 = 0xE900000000000032;
          break;
        default:
          break;
      }

      v89 = *(v19 + 432);
      a11 = v89;
      sub_1C7292A5C(*(v19 + 288));
      v90 = sub_1C6F765A4(v37, v41, (v19 + 216));

      *(v39 + 4) = v90;
      *(v39 + 12) = 2080;
      v91 = [v89 localIdentifier];
      v92 = sub_1C755068C();
      v94 = v93;

      v95 = sub_1C6F765A4(v92, v94, (v19 + 216));

      *(v39 + 14) = v95;
      *(v39 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2192E0);
      sub_1C7292B1C();
      v96 = sub_1C7550F9C();
      v98 = v97;

      v99 = sub_1C6F765A4(v96, v98, (v19 + 216));

      *(v39 + 24) = v99;
      _os_log_impl(&dword_1C6F5C000, v35, v36, "Not generating Spatial3D %s resource for asset %s because %s", v39, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
      v70 = *(v19 + 432);
      v71 = *(v19 + 288);
      swift_bridgeObjectRelease_n();

      sub_1C7292A5C(v71);
    }

    while (1)
    {
      sub_1C6FB5FC8(*(v19 + 256), &qword_1EC215BD8);
      if (((*(v19 + 416) - 1) & *(v19 + 416)) == 0)
      {
        v100 = *(v19 + 424);
        while (1)
        {
          v101 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v101 >= ((*(v19 + 384) + 64) >> 6))
          {
            break;
          }

          ++v100;
          if (*(*(v19 + 376) + 8 * v101))
          {
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_61_14();
        if (qword_1EC213F90 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_52;
      }

LABEL_42:
      OUTLINED_FUNCTION_27_33();
      *(v19 + 432) = v102;
      *(v19 + 440) = v103;
      if (!v104)
      {
        break;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      OUTLINED_FUNCTION_0_123();
LABEL_13:
      v42 = *(v19 + 432);
      v43 = sub_1C754FF1C();
      __swift_project_value_buffer(v43, qword_1EC219F38);
      v44 = OUTLINED_FUNCTION_66_2();
      sub_1C7292AB8(v44, v45);
      v46 = v42;
      v47 = sub_1C754FEEC();
      v48 = sub_1C75511BC();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v19 + 296);
        v50 = OUTLINED_FUNCTION_23_1();
        *(v19 + 224) = OUTLINED_FUNCTION_49_1();
        *v50 = 136315394;
        v51 = 0xE500000000000000;
        switch(*v49)
        {
          case 1:
            OUTLINED_FUNCTION_56_19();
            v51 = 0xEF72656B63695072;
            break;
          case 2:
            OUTLINED_FUNCTION_7_56();
            v51 = 0xE900000000000031;
            break;
          case 3:
            OUTLINED_FUNCTION_7_56();
            v51 = 0xE900000000000032;
            break;
          default:
            break;
        }

        v83 = *(v19 + 432);
        sub_1C7292A5C(*(v19 + 296));
        v84 = sub_1C6F765A4(0x7055656E6FLL, v51, (v19 + 224));

        *(v50 + 4) = v84;
        *(v50 + 12) = 2080;
        v85 = [v83 localIdentifier];
        v86 = sub_1C755068C();
        v88 = v87;

        v20 = sub_1C6F765A4(v86, v88, (v19 + 224));

        *(v50 + 14) = v20;
        _os_log_impl(&dword_1C6F5C000, v47, v48, "Not generating Spatial3D %s resource for asset %s because a resource already exists", v50, 0x16u);
        OUTLINED_FUNCTION_43_25();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_109();
      }

      else
      {
        v52 = *(v19 + 296);

        sub_1C7292A5C(v52);
      }

      v18 = *(v19 + 448);
    }

    v105 = OUTLINED_FUNCTION_39_27();
    sub_1C754F2DC();
    *(v19 + 448) = v18;
    if (v18)
    {
      OUTLINED_FUNCTION_30_30();

      OUTLINED_FUNCTION_62_15();
      sub_1C6F85170();

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v106 + 8))(a12);
      goto LABEL_45;
    }

    type metadata accessor for Spatial3DAssetResourceUtils();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v19 + 456) = v115;
    *v115 = v116;
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_22_44();
    OUTLINED_FUNCTION_6_68();

    return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v117, v118, v119, v120, v121);
  }

  else
  {
    v53 = *(v19 + 400);

    *(v19 + 464) = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_0_123();
LABEL_52:
      v123 = sub_1C754FF1C();
      v124 = __swift_project_value_buffer(v123, qword_1EC219F38);
      sub_1C75504FC();
      v125 = sub_1C754FEEC();
      v126 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_21_0(v126))
      {
        v128 = *(v19 + 392);
        v127 = *(v19 + 400);
        v129 = *(v19 + 360);
        v130 = swift_slowAlloc();
        a13 = OUTLINED_FUNCTION_20_1();
        *v130 = 134218754;
        *(v130 + 4) = v127;
        *(v130 + 12) = 2048;
        v131 = *(v129 + 16);

        *(v130 + 14) = v131;

        *(v130 + 22) = 2080;
        OUTLINED_FUNCTION_33_27();
        sub_1C70E2254();
        sub_1C75504FC();
        sub_1C75504BC();
        OUTLINED_FUNCTION_59();

        v136 = OUTLINED_FUNCTION_58_0(v132, v133, v134, v135);

        *(v130 + 24) = v136;
        *(v130 + 32) = 2048;
        *(v130 + 34) = v128;
        OUTLINED_FUNCTION_145();
        _os_log_impl(v137, v138, v139, v140, v130, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(a13);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_37();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_1C754F2EC();
      OUTLINED_FUNCTION_44_23();

      sub_1C6F85170();

      if (v18)
      {
LABEL_45:
        OUTLINED_FUNCTION_32_26();

        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_68();

        return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      else
      {
        OUTLINED_FUNCTION_31_29();

        OUTLINED_FUNCTION_0_89();
        OUTLINED_FUNCTION_6_68();

        return v143(v141, v142, v143, v144, v145, v146, v147, v148, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    else
    {
      v54 = *(v19 + 432);
      v55 = *(v19 + 304);
      v56 = *(v19 + 272);
      v57 = *(v19 + 280);
      v58 = *(v19 + 264);
      v60 = *(v19 + 240);
      v59 = *(v19 + 248);
      v61 = sub_1C7550D5C();
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
      sub_1C7292AB8(v55, v57);
      v65 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v66 = (v56 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      sub_1C70CB390(v57, v67 + v65);
      *(v67 + v66) = v54;
      sub_1C70A3CFC(v59, v60);
      LODWORD(v57) = __swift_getEnumTagSinglePayload(v60, 1, v61);
      v68 = v54;

      v69 = *(v19 + 240);
      if (v57 == 1)
      {
        sub_1C6FB5FC8(*(v19 + 240), &qword_1EC2158F8);
      }

      else
      {
        sub_1C7550D4C();
        OUTLINED_FUNCTION_62_2();
        (*(v72 + 8))(v69, v61);
      }

      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      swift_unknownObjectRetain();

      if (v74)
      {
        swift_getObjectType();
        v75 = v74;
        sub_1C7550C8C();
        OUTLINED_FUNCTION_45_22();
      }

      else
      {
        v75 = 0;
        v73 = 0;
      }

      sub_1C6FB5FC8(*(v19 + 248), &qword_1EC2158F8);
      v76 = swift_allocObject();
      *(v76 + 16) = &unk_1C757E3D8;
      *(v76 + 24) = v67;
      if (v73 | v75)
      {
        *(v19 + 144) = 0;
        *(v19 + 152) = 0;
        *(v19 + 160) = v75;
        *(v19 + 168) = v73;
      }

      *(v19 + 472) = swift_task_create();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v19 + 480) = v77;
      *v77 = v78;
      v77[1] = sub_1C728F7CC;
      OUTLINED_FUNCTION_6_68();

      return MEMORY[0x1EEE6DA40](v79, v80, v81);
    }
  }
}

uint64_t sub_1C728F7CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C728F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_25();
  a25 = v29;
  a26 = v30;
  a24 = v27;

  v31 = *(v27 + 408);
  if (*(v27 + 488))
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_123();
      goto LABEL_20;
    }

    ++v31;
  }

  else
  {
    v32 = *(v27 + 392);
  }

  sub_1C6FB5FC8(*(v27 + 256), &qword_1EC215BD8);
  v26 = *(v27 + 448);
  v33 = *(v27 + 416);
  v34 = *(v27 + 424);
  *(v27 + 400) = *(v27 + 464);
  *(v27 + 408) = v31;
  *(v27 + 392) = v32;
  if (((v33 - 1) & v33) != 0)
  {
LABEL_10:
    OUTLINED_FUNCTION_27_33();
    *(v27 + 432) = v37;
    *(v27 + 440) = v38;
    if (!v39)
    {
      v40 = OUTLINED_FUNCTION_39_27();
      sub_1C754F2DC();
      *(v27 + 448) = v26;
      if (!v26)
      {
        type metadata accessor for Spatial3DAssetResourceUtils();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v27 + 456) = v51;
        *v51 = v52;
        OUTLINED_FUNCTION_2_84();
        OUTLINED_FUNCTION_22_44();
        OUTLINED_FUNCTION_6_68();

        return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v53, v54, v55, v56, v57);
      }

      OUTLINED_FUNCTION_30_30();

      OUTLINED_FUNCTION_62_15();
      sub_1C6F85170();

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v41 + 8))(a12);
LABEL_13:
      OUTLINED_FUNCTION_32_26();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_68();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v34;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v36 >= ((*(v27 + 384) + 64) >> 6))
    {
      break;
    }

    ++v35;
    if (*(*(v27 + 376) + 8 * v36))
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_61_14();
  if (qword_1EC213F90 != -1)
  {
    goto LABEL_30;
  }

LABEL_20:
  v59 = sub_1C754FF1C();
  v60 = __swift_project_value_buffer(v59, qword_1EC219F38);
  sub_1C75504FC();
  v61 = sub_1C754FEEC();
  v62 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v62))
  {
    v64 = *(v27 + 392);
    v63 = *(v27 + 400);
    v65 = *(v27 + 360);
    v66 = swift_slowAlloc();
    v67 = OUTLINED_FUNCTION_20_1();
    a13 = v67;
    *v66 = 134218754;
    *(v66 + 4) = v63;
    *(v66 + 12) = 2048;
    v68 = *(v65 + 16);

    *(v66 + 14) = v68;

    *(v66 + 22) = 2080;
    OUTLINED_FUNCTION_33_27();
    sub_1C70E2254();
    sub_1C75504FC();
    v69 = sub_1C75504BC();
    v71 = v70;

    v72 = sub_1C6F765A4(v69, v71, &a13);

    *(v66 + 24) = v72;
    *(v66 + 32) = 2048;
    *(v66 + 34) = v64;
    OUTLINED_FUNCTION_145();
    _os_log_impl(v73, v74, v75, v76, v66, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_1C754F2EC();
  OUTLINED_FUNCTION_44_23();

  sub_1C6F85170();

  if (v26)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_31_29();

  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_6_68();

  return v79(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C728FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for Spatial3DResourceGenerator(0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C728FD9C, 0, 0);
}

uint64_t sub_1C728FD9C()
{
  v23 = v0;
  if (qword_1EC213F90 != -1)
  {
    OUTLINED_FUNCTION_0_123();
  }

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_1C754FF1C();
  v0[13] = __swift_project_value_buffer(v5, qword_1EC219F38);
  sub_1C7292AB8(v3, v2);
  sub_1C7292AB8(v3, v1);
  v6 = v4;
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_20_1();
    v22 = OUTLINED_FUNCTION_49_1();
    *v11 = 134218498;
    v12 = *&aT_0[8 * *v10];
    v13 = v0[11];
    sub_1C7292A5C(v0[12]);
    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    v14 = 0xE500000000000000;
    switch(*v13)
    {
      case 1:
        v14 = 0xEF72656B63695072;
        OUTLINED_FUNCTION_56_19();
        break;
      case 2:
        OUTLINED_FUNCTION_7_56();
        v14 = 0xE900000000000031;
        break;
      case 3:
        OUTLINED_FUNCTION_7_56();
        v14 = 0xE900000000000032;
        break;
      default:
        break;
    }

    v16 = v0[8];
    sub_1C7292A5C(v0[11]);
    v17 = sub_1C6F765A4(0x7055656E6FLL, v14, &v22);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = [v16 localIdentifier];
    sub_1C755068C();
    OUTLINED_FUNCTION_59();

    sub_1C6F765A4(v17, v16, &v22);
    OUTLINED_FUNCTION_80();
    *(v11 + 24) = v18;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Generating Spatial3D resource with type %ld (%s) for asset %s", v11, 0x20u);
    OUTLINED_FUNCTION_43_25();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v15 = v0[11];
    sub_1C7292A5C(v0[12]);

    sub_1C7292A5C(v15);
  }

  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1C729005C;
  v20 = v0[8];

  return Spatial3DResourceGenerator.generateSpatial3DResourceInBackground(for:)(v20);
}

uint64_t sub_1C729005C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C72901E4;
  }

  else
  {
    v7 = sub_1C729015C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C729015C()
{
  OUTLINED_FUNCTION_49_0();
  **(v0 + 48) = 1;

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C72901E4()
{
  v57 = v0;
  v1 = *(v0 + 120);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    if (v5 == 2 && v3 == 2 && v4 == 0)
    {
      v34 = *(v0 + 80);
      v35 = *(v0 + 56);
      v36 = *(v0 + 64);

      sub_1C7292AB8(v35, v34);
      v37 = v36;
      v38 = sub_1C754FEEC();
      sub_1C75511BC();

      v39 = OUTLINED_FUNCTION_200();
      v40 = *(v0 + 80);
      if (v39)
      {
        v41 = *(v0 + 64);
        v42 = *(v0 + 48);
        v43 = OUTLINED_FUNCTION_23_1();
        v56 = OUTLINED_FUNCTION_49_1();
        *v43 = 136315394;
        *(v0 + 34) = *v40;
        v44 = sub_1C75506EC();
        v46 = v45;
        sub_1C7292A5C(v40);
        v47 = sub_1C6F765A4(v44, v46, &v56);

        *(v43 + 4) = v47;
        OUTLINED_FUNCTION_40_29();
        v48 = [v41 localIdentifier];
        sub_1C755068C();
        OUTLINED_FUNCTION_59();

        sub_1C6F765A4(v44, v41, &v56);
        OUTLINED_FUNCTION_80();
        *(v43 + 14) = v48;
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
        OUTLINED_FUNCTION_43_25();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_23_3();

        *v42 = 0;
      }

      else
      {
        v54 = *(v0 + 48);

        sub_1C7292A5C(v40);
        *v54 = 0;
      }

      goto LABEL_14;
    }

    sub_1C6FE0E78(v3, v4, v5);
  }

  v8 = *(v0 + 120);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);

  sub_1C7292AB8(v11, v9);
  v12 = v10;
  v13 = v8;
  v14 = sub_1C754FEEC();
  v15 = sub_1C755119C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 120);
  v18 = *(v0 + 72);
  if (v16)
  {
    v55 = *(v0 + 64);
    v19 = OUTLINED_FUNCTION_20_1();
    v20 = swift_slowAlloc();
    v56 = OUTLINED_FUNCTION_49_1();
    *v19 = 136315650;
    *(v0 + 33) = *v18;
    v21 = sub_1C75506EC();
    v23 = v22;
    sub_1C7292A5C(v18);
    v24 = sub_1C6F765A4(v21, v23, &v56);

    *(v19 + 4) = v24;
    OUTLINED_FUNCTION_40_29();
    v25 = [v55 localIdentifier];
    v26 = sub_1C755068C();
    v28 = v27;

    v29 = sub_1C6F765A4(v26, v28, &v56);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2112;
    v30 = v17;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v31;
    *v20 = v31;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Error generating Spatial3D resource with type %s for asset %s: %@", v19, 0x20u);
    sub_1C6FB5FC8(v20, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {

    sub_1C7292A5C(v18);
  }

  **(v0 + 48) = 0;
LABEL_14:

  OUTLINED_FUNCTION_43();

  return v32();
}

uint64_t FeaturedPhotosSpatial3DGeneration.runPostgating(with:progressReporter:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 72) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v5);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 96) = v7;
  *(v1 + 104) = *(v8 + 64);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 232) = *v3;
  *(v1 + 128) = *v0;
  *(v1 + 144) = *(v0 + 16);
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7290744()
{
  v63 = v0;
  v1 = 0;
  sub_1C754F2CC();
  if ([*(v0 + 136) count] < 1)
  {
    if (qword_1EC213F90 == -1)
    {
LABEL_12:
      v30 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v30, qword_1EC219F38);
      v31 = sub_1C754FEEC();
      v32 = sub_1C755119C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_127();
        *v33 = 0;
        _os_log_impl(&dword_1C6F5C000, v31, v32, "No suggestions to postgate", v33, 2u);
        OUTLINED_FUNCTION_37();
      }

      sub_1C754F2EC();
      if (v1)
      {

        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_329();

        __asm { BRAA            X1, X16 }
      }

      goto LABEL_21;
    }

LABEL_35:
    OUTLINED_FUNCTION_0_123();
    goto LABEL_12;
  }

  v4 = *(v0 + 136);
  v5 = [*(v0 + 128) librarySpecificFetchOptions];
  *(v0 + 152) = v5;
  [v5 setIncludeGuestAssets_];
  v6 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v4 options:v5];
  if (!v6)
  {
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123();
    }

    v34 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v34, qword_1EC219F38);
    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (os_log_type_enabled(v35, v36))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_57_22(&dword_1C6F5C000, v37, v38, "Unable to fetch assets");
      OUTLINED_FUNCTION_10_1();
    }

    sub_1C754F2EC();
LABEL_21:

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_329();

    __asm { BRAA            X2, X16 }
  }

  v7 = v6;
  v8 = *(v0 + 136);
  v9 = *(v0 + 232);
  v1 = *(v0 + 120);
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  *(v0 + 160) = sub_1C75504AC();

  v62[0] = v9;
  Spatial3DResourceGenerator.init(with:processInBackground:)(v62, 1, v1);
  v10 = swift_allocObject();
  *(v0 + 168) = v10;
  *(v10 + 16) = MEMORY[0x1E69E7CD0];
  v11 = [v8 count];
  *(v0 + 176) = v11;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (!v11)
  {

    sub_1C754F2EC();
    v41 = *(v0 + 152);
    sub_1C7292A5C(*(v0 + 120));

    swift_beginAccess();
    sub_1C75504FC();

    goto LABEL_21;
  }

  *(v0 + 184) = 1;
  v61 = *(v0 + 168);
  v12 = *(v0 + 136);
  v57 = *(v0 + 144);
  v58 = *(v0 + 160);
  v60 = *(v0 + 232);
  v13 = *(v0 + 120);
  v14 = *(v0 + 112);
  v55 = *(v0 + 104);
  v56 = *(v0 + 128);
  v53 = *(v0 + 88);
  v54 = *(v0 + 96);
  v59 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v15 = swift_allocBox();
  v17 = v16;
  *(v0 + 192) = v15;
  [v12 count];
  sub_1C754F2AC();
  v18 = sub_1C754F2FC();
  *(v0 + 200) = v18;
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v19 = sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  sub_1C7292AB8(v13, v14);
  v23 = (*(v54 + 80) + 80) & ~*(v54 + 80);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v15;
  v24[5] = v56;
  v24[6] = v12;
  v24[7] = v57;
  v24[8] = 0;
  v24[9] = v58;
  sub_1C70CB390(v14, v24 + v23);
  *(v24 + v23 + v55) = v60;
  v25 = v19;
  *(v24 + ((v23 + v55) & 0xFFFFFFFFFFFFFFF8) + 8) = v61;
  sub_1C70A3CFC(v53, v59);
  LODWORD(v19) = __swift_getEnumTagSinglePayload(v59, 1, v19);

  v26 = v56;
  v27 = v12;
  v28 = v57;
  sub_1C75504FC();

  v29 = *(v0 + 80);
  if (v19 == 1)
  {
    sub_1C6FB5FC8(*(v0 + 80), &qword_1EC2158F8);
  }

  else
  {
    sub_1C7550D4C();
    OUTLINED_FUNCTION_62_2();
    (*(v42 + 8))(v29, v25);
  }

  v44 = v24[2];
  v43 = v24[3];
  swift_unknownObjectRetain();

  if (v44)
  {
    swift_getObjectType();
    v45 = v44;
    sub_1C7550C8C();
    OUTLINED_FUNCTION_45_22();
  }

  else
  {
    v45 = 0;
    v43 = 0;
  }

  sub_1C6FB5FC8(*(v0 + 88), &qword_1EC2158F8);
  if (v43 | v45)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v45;
    *(v0 + 40) = v43;
  }

  *(v0 + 208) = OUTLINED_FUNCTION_18_38();
  v46 = swift_task_alloc();
  *(v0 + 216) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  *v46 = v0;
  OUTLINED_FUNCTION_17_53();
  OUTLINED_FUNCTION_53_25();
  OUTLINED_FUNCTION_329();

  return MEMORY[0x1EEE6DA10](v47, v48, v49, v50, v51);
}

uint64_t sub_1C7290E04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {

    v7 = sub_1C7291398;
  }

  else
  {
    v7 = sub_1C7290F18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C7290F18()
{

  v6 = *(v0 + 184);
  if (v6 == *(v0 + 176))
  {
    v7 = *(v0 + 224);

    sub_1C754F2EC();
    if (v7)
    {
      v8 = *(v0 + 152);
      sub_1C7292A5C(*(v0 + 120));

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_329();

      __asm { BRAA            X1, X16 }
    }

    v33 = *(v0 + 152);
    sub_1C7292A5C(*(v0 + 120));

    swift_beginAccess();
    sub_1C75504FC();

    OUTLINED_FUNCTION_329();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 184) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v47 = *(v0 + 168);
    v11 = *(v0 + 136);
    v43 = *(v0 + 144);
    v44 = *(v0 + 160);
    v46 = *(v0 + 232);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v41 = *(v0 + 96);
    v42 = *(v0 + 128);
    v39 = *(v0 + 88);
    v45 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
    v40 = swift_allocBox();
    v16 = v15;
    *(v0 + 192) = v40;
    [v11 count];
    sub_1C754F2AC();
    v17 = sub_1C754F2FC();
    *(v0 + 200) = v17;
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    v18 = sub_1C7550D5C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    sub_1C7292AB8(v12, v13);
    v22 = (*(v41 + 80) + 80) & ~*(v41 + 80);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v40;
    v23[5] = v42;
    v23[6] = v11;
    v23[7] = v43;
    v23[8] = v6;
    v23[9] = v44;
    sub_1C70CB390(v13, v23 + v22);
    *(v23 + v22 + v14) = v46;
    v24 = v18;
    *(v23 + ((v22 + v14) & 0xFFFFFFFFFFFFFFF8) + 8) = v47;
    sub_1C70A3CFC(v39, v45);
    LODWORD(v18) = __swift_getEnumTagSinglePayload(v45, 1, v18);

    v25 = v42;
    v26 = v11;
    v27 = v43;
    sub_1C75504FC();

    v28 = *(v0 + 80);
    if (v18 == 1)
    {
      sub_1C6FB5FC8(*(v0 + 80), &qword_1EC2158F8);
    }

    else
    {
      sub_1C7550D4C();
      OUTLINED_FUNCTION_62_2();
      (*(v29 + 8))(v28, v24);
    }

    v31 = v23[2];
    v30 = v23[3];
    swift_unknownObjectRetain();

    if (v31)
    {
      swift_getObjectType();
      v32 = v31;
      sub_1C7550C8C();
      OUTLINED_FUNCTION_45_22();
    }

    else
    {
      v32 = 0;
      v30 = 0;
    }

    sub_1C6FB5FC8(*(v0 + 88), &qword_1EC2158F8);
    if (v30 | v32)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v32;
      *(v0 + 40) = v30;
    }

    *(v0 + 208) = OUTLINED_FUNCTION_18_38();
    v36 = swift_task_alloc();
    *(v0 + 216) = v36;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    *v36 = v0;
    OUTLINED_FUNCTION_17_53(v37);
    OUTLINED_FUNCTION_53_25();
    OUTLINED_FUNCTION_329();
  }

  return MEMORY[0x1EEE6DA10](v1, v2, v3, v4, v5);
}

uint64_t sub_1C7291398()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);

  sub_1C7292A5C(v2);

  OUTLINED_FUNCTION_62_2();
  (*(v4 + 8))(v3, v1);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C7291480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v14;
  *(v8 + 74) = v13;
  *(v8 + 96) = v12;
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_1C754F2FC();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C72915A4, 0, 0);
}

uint64_t sub_1C72915A4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  swift_beginAccess();
  sub_1C705544C(v1, v3);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v2);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v7 = *(v0 + 120);
    if (__swift_getEnumTagSinglePayload(v7, 1, *(v0 + 128)) != 1)
    {
      sub_1C6FB5FC8(v7, &unk_1EC218C90);
    }

    return sub_1C7551AAC();
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
    sub_1C754F2CC();
    v9 = [*(v0 + 80) objectAtIndexedSubscript_];
    *(v0 + 160) = v9;
    v10 = v9;
    v11 = sub_1C6FCA214(v10);
    if (v12 && (v13 = sub_1C6FE376C(v11, v12, *(v0 + 96)), *(v0 + 168) = v13, , v13))
    {
      v14 = [v13 localIdentifier];
      v15 = sub_1C755068C();
      v17 = v16;

      *(v0 + 176) = v15;
      *(v0 + 184) = v17;
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 192) = v18;
      *v18 = v19;
      v18[1] = sub_1C7291864;
      v20 = *(v0 + 104);

      return static Spatial3DCuration.Postgating.persistDisparityScore(for:with:)(v0 + 64, v10, v20);
    }

    else
    {
      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = *(v0 + 128);

      (*(v22 + 8))(v21, v23);
      OUTLINED_FUNCTION_60_16();

      OUTLINED_FUNCTION_25();

      return v24();
    }
  }
}

uint64_t sub_1C7291864()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {

    v7 = sub_1C7291DB8;
  }

  else
  {
    v7 = sub_1C729196C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C729196C()
{
  v53 = v0;
  if (*(v0 + 73))
  {
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123();
    }

    v1 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v1, qword_1EC219F38);
    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    sub_1C75511BC();

    v3 = OUTLINED_FUNCTION_200();
    v4 = *(v0 + 184);
    if (v3)
    {
      v5 = *(v0 + 176);
      v6 = OUTLINED_FUNCTION_41_0();
      v7 = OUTLINED_FUNCTION_20_1();
      v50 = v7;
      *v6 = 136315138;
      v8 = sub_1C6F765A4(v5, v4, &v50);

      *(v6 + 4) = v8;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v9, v10, v11, v12, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    v31 = *(v0 + 200);
  }

  else
  {
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    if (qword_1EC213F90 != -1)
    {
      OUTLINED_FUNCTION_0_123();
    }

    v15 = sub_1C754FF1C();
    __swift_project_value_buffer(v15, qword_1EC219F38);
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v49 = *(v0 + 74);
      v20 = OUTLINED_FUNCTION_20_1();
      v52[0] = OUTLINED_FUNCTION_49_1();
      *v20 = 136315650;
      *(v20 + 4) = sub_1C6F765A4(v19, v18, v52);
      *(v20 + 12) = 2080;
      v50 = v13;
      LOBYTE(v51) = v14 & 1;
      v21 = Spatial3DCuration.Postgating.Result.FailureReason.description.getter();
      v23 = sub_1C6F765A4(v21, v22, v52);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2048;
      *(v20 + 24) = *&aT_0[8 * v49];
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Asset %s failed gating for reason: %s. Removing %ld resource...", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_10_1();
    }

    v24 = *&aT_0[8 * *(v0 + 74)];
    v25 = *(v0 + 200);
    v26 = *(v0 + 168);
    type metadata accessor for Spatial3DAssetResourceUtils();
    static Spatial3DAssetResourceUtils.clearSpatial3DScene(for:with:)(v26, v24);
    if (v25)
    {
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);

      v29 = OUTLINED_FUNCTION_66_2();
      v30(v29);
LABEL_18:
      OUTLINED_FUNCTION_60_16();

      OUTLINED_FUNCTION_6_0();
      goto LABEL_20;
    }

    sub_1C75504FC();
    v32 = sub_1C754FEEC();
    sub_1C75511BC();

    if (OUTLINED_FUNCTION_200())
    {
      v33 = *(v0 + 74);
      v34 = OUTLINED_FUNCTION_23_1();
      v35 = OUTLINED_FUNCTION_20_1();
      v50 = v35;
      v36 = *&aT_0[8 * v33];
      *v34 = 134218242;
      *(v34 + 4) = v36;
      OUTLINED_FUNCTION_40_29();
      *(v34 + 14) = sub_1C6F765A4(v37, v38, &v50);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_23_3();
    }

    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    swift_beginAccess();
    sub_1C70F082C(&v50, v45, v44);
    swift_endAccess();

    v31 = 0;
  }

  sub_1C754F2EC();
  v46 = *(v0 + 168);

  if (v31)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_60_16();

  OUTLINED_FUNCTION_25();
LABEL_20:

  return v47();
}

uint64_t sub_1C7291DB8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);

  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t FeaturedPhotosSpatial3DGeneration.removeExpiredResources(with:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  OUTLINED_FUNCTION_76(v4);
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 40) = *v0;
  *(v1 + 56) = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7291EEC()
{
  v65 = v0;
  sub_1C754F2CC();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C716EA70();
    v4 = v64;
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      v7 = *&aT_0[8 * v6];
      v64 = v4;
      v8 = *(v4 + 16);
      if (v8 >= *(v4 + 24) >> 1)
      {
        sub_1C716EA70();
        v4 = v64;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + 8 * v8 + 32) = v7;
      --v3;
    }

    while (v3);
  }

  *(v0 + 64) = v4;
  v9 = *(v0 + 56);
  v10 = [*(v0 + 40) librarySpecificFetchOptions];
  *(v0 + 72) = v10;
  v11 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v9 options:v10];
  *(v0 + 80) = v11;
  if (!v11)
  {

    if (qword_1EC213F90 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v12 = v11;
  if (qword_1EC213F90 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_123();
  }

  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 40);
  v16 = sub_1C754FF1C();
  *(v0 + 88) = OUTLINED_FUNCTION_23_2(v16, qword_1EC219F38);
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  v21 = os_log_type_enabled(v20, v10);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = &selRef_clsSceneClassifications;
  if (v21)
  {
    v25 = *(v0 + 40);
    v26 = OUTLINED_FUNCTION_41_0();
    *v26 = 134217984;
    *(v26 + 4) = [v22 count];

    _os_log_impl(&dword_1C6F5C000, v20, v10, "Removing resources for %ld suggestions", v26, 0xCu);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {

    v20 = *(v0 + 40);
  }

  v38 = [v12 count];
  *(v0 + 96) = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_0_123();
LABEL_15:
    v27 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v27, qword_1EC219F38);
    v28 = sub_1C754FEEC();
    v29 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v29))
    {
      v30 = OUTLINED_FUNCTION_127();
      *v30 = 0;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v31, v32, v33, v34, v30, 2u);
      OUTLINED_FUNCTION_37();
    }

    v35 = *(v0 + 24);

    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v36 + 8))(v35);
LABEL_18:

    OUTLINED_FUNCTION_25();

    return v37();
  }

  for (i = 0; ; i = *(v0 + 104))
  {
    if (i == v38)
    {
      v55 = *(v0 + 72);
      v54 = *(v0 + 80);

      sub_1C754F2EC();

      goto LABEL_18;
    }

    *(v0 + 104) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    [*(v0 + 80) v24[32]];
    sub_1C754F2DC();
    v40 = *(v0 + 64);
    v41 = [*(v0 + 80) objectAtIndexedSubscript_];
    *(v0 + 112) = v41;
    v42 = *(v40 + 16);
    *(v0 + 120) = v42;
    if (v42)
    {
      break;
    }

    v43 = v41;
    v44 = sub_1C754FEEC();
    v45 = sub_1C75511BC();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 112);
    if (v46)
    {
      v48 = OUTLINED_FUNCTION_41_0();
      v49 = OUTLINED_FUNCTION_20_1();
      v64 = v49;
      *v48 = 136315138;
      v50 = [v47 localIdentifier];
      v51 = sub_1C755068C();
      v12 = v52;

      v53 = sub_1C6F765A4(v51, v12, &v64);

      *(v48 + 4) = v53;
      v24 = &selRef_clsSceneClassifications;
      _os_log_impl(&dword_1C6F5C000, v44, v45, "Removed resources for asset %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();
    }

    else
    {
    }

    v38 = *(v0 + 96);
  }

  result = type metadata accessor for Spatial3DAssetResourceUtils();
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = result;
  v56 = *(v0 + 64);
  if (*(v56 + 16))
  {
    *(v0 + 152) = *(v56 + 32);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 160) = v57;
    *v57 = v58;
    v59 = OUTLINED_FUNCTION_9_62(v57);

    return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v59, v60, v61, v62, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}